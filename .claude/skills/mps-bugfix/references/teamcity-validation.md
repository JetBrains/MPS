# TeamCity Validation — Definitive Confirmation of Success

Local builds and locally run test suites are **necessary but not sufficient**. A bugfix is only
confirmed once the TeamCity build chain for the pushed branch is green, or every remaining failure
has been positively identified as pre-existing on the base branch.

Use the `teamcity-cli` skill for CLI mechanics (flags, output formats, log dumping). This file
covers only what is specific to the MPS project's TeamCity layout.

---

## 1. How MPS TeamCity is organised

Every MPS version has its own TeamCity project with three relevant sub-projects:

| Sub-project | Purpose | Branch built |
|---|---|---|
| `Distribution` | the official per-version build | the version's default git branch (baseline) |
| `Feature Branches` | **what validates your bugfix** | any non-default branch matching the branch spec |
| `IDEA Platform` | platform-integration CI | default branch |

Feature-branch builds are triggered automatically by a VCS trigger on the top-level
**Downloadable Artifacts (no installers)** build, with branch filter `+:*` / `-:<default>`.
So pushing a feature branch starts the whole chain; you normally do **not** need to start it manually.

### Version → project mapping

The branch prefix is the IDEA platform number (`251`, `261`, …). Never hardcode this table —
it changes every release. Derive it:

```bash
# which prefix / git base branch does a version project use?
teamcity project param list MPS_20261 | grep -E "mps.git.branch|mps.idea.platform.number"
# → mps.git.branch=2026.1   mps.idea.platform.number=261
```

Snapshot at the time of writing (verify before use):

| MPS version | TC project | Prefix | Base git branch | Feature-branch project |
|---|---|---|---|---|
| 2025.1 | `MPS_20251` | `251` | `2025.1` | `MPS_20251_FeatureBranches` |
| 2025.2 | `MPS_20252` | `252` | `2025.2` | `MPS_20252_FeatureBranches` |
| 2025.3 | `MPS_20253` | `253` | `2025.3` | `MPS_20253_FeatureBranches` |
| 2026.1 | `MPS_20261` | `261` | `2026.1` | `MPS_20261_FeatureBranches` |
| 2026.2 | `MPS_20262` | `262` | `master` | `MPS_20262_FeatureBranches` |

Web UI: `https://teamcity.jetbrains.com/project/MPS_<version>_FeatureBranches?mode=builds`

> Do **not** trust the `mps.version` parameter — it is stale in some projects
> (`MPS_20261_FeatureBranches` still says `2025.1`). Use `mps.git.branch` and
> `mps.idea.platform.number` instead.

### ⚠️ Branch-name translation (most common mistake)

The VCS root's branch spec is `+:refs/heads/%mps.idea.platform.number%/*`, which means TeamCity
strips the numeric prefix from the logical branch name:

| Git branch | TeamCity logical branch |
|---|---|
| `261/vaclav/MPS-12345-fix` | `vaclav/MPS-12345-fix` |
| `251/mikev/bugfix2` | `mikev/bugfix2` |

Consequences:

- `teamcity run list --branch 261/vaclav/MPS-12345-fix` → **"No runs found"** (wrong)
- `teamcity run list --branch @this` → **"No runs found"** (`@this` passes the full git branch name)
- `teamcity run list --branch vaclav/MPS-12345-fix` → correct

Always strip the `<prefix>/` segment before passing a branch to the CLI:

```bash
BRANCH=$(git rev-parse --abbrev-ref HEAD)      # 261/vaclav/MPS-12345-fix
TC_BRANCH=${BRANCH#*/}                          # vaclav/MPS-12345-fix
PREFIX=${BRANCH%%/*}                            # 261
```

Never conclude "the build did not start" from an empty result until you have retried with the
stripped name.

### The build chain

`Downloadable Artifacts (no installers)` is a **composite** build that aggregates the chain — its
own log is empty by design. Its single run ID is the one status to report. Typical chain
(2026.1 feature branches):

```
Downloadable Artifacts (no installers)   ← composite aggregator, VCS-triggered
├── Binaries                             ← compiles + generates MPS
├── Test Binaries                        ← MPS's own test suites
├── Tests from IDEA Project              ← tests run from the IDEA project model
├── Test Typesystem
├── MPS Project Consistency Test
├── Extensions                           ← builds the external mps-extensions repo
├── Test Mbeddr Build                    ← builds the external mbeddr repo
├── Linux distribution / Mac Installer / Windows Installer
└── BuildNumber                          ← from the Distribution project
```

A full chain takes roughly **45–60 minutes**; individual test jobs 10–50 minutes. Some jobs
(`Statistics`, `Test Parallel Generation`, `Windows Installer`) may be paused or only
scheduled — a missing job is not a failure.

---

## 2. Validation workflow

Run this after the branch has been pushed. Pushing is an outward-facing action — get the user's
go-ahead first (see the hazards section).

### Step 1 — confirm authentication and locate the run

```bash
teamcity auth status
teamcity run list --project MPS_<ver>_FeatureBranches --branch "$TC_BRANCH" --limit 20
```

If nothing appears after a few minutes: the VCS root polls every 120 s, so allow ~5 minutes.
If still nothing, verify the branch name really matches the spec (`git push` used the
`<prefix>/…` form; the prefix matches the target version's platform number). Only then start the
chain manually:

```bash
teamcity run start MPS_<ver>_FeatureBranches_DownloadableArtifactsNoInstallers \
  --branch "$TC_BRANCH" --no-push
```

### Step 2 — watch until finished

```bash
teamcity run watch <compositeRunId>          # or --watch on run start
```

For long waits, prefer the `babysit-build` agent (`/loop`-free, background, already carries the
`teamcity-cli` skill) over polling in the foreground:

> Use the `babysit-build` agent with the composite run ID. It monitors, diagnoses, and reports;
> keep its 3-attempt limit in mind and review any fix it proposes.

Do not report the task complete while a build is still running, and never predict a running
build's outcome.

### Step 3 — read the result

```bash
teamcity run view <compositeRunId>           # chain summary, test counts
teamcity run tree <compositeRunId>           # which children failed
```

For each failed child (the composite's own log is empty):

```bash
teamcity run tests <childRunId> --failed
teamcity run log  <childRunId> --failed --raw > /tmp/tc-<childRunId>.log
```

Remember the chain fails bottom-up: the **deepest** failed dependency is the root cause. A failed
`Extensions` will drag `Test Mbeddr Build` and the composite down with it.

### Step 4 — classify every failure

Each failure must land in exactly one bucket before the task can be called done:

1. **Caused by my change** → fix it, push, and re-validate. This is the only acceptable
   outcome to act on.
2. **Pre-existing on the base branch** → prove it (§3), then report it as out of scope.
3. **Infrastructure / flaky** → prove it (§3), then report it. Do not paper over it.

Never assume a bucket. Never dismiss a failure as "unrelated" without the evidence from §3.

### Step 5 — iterate

After pushing a fix, a new chain is triggered. Re-run steps 1–4 against the **new** run ID.
Cap at 3 fix attempts; if the same failure survives three distinct fixes, stop and report to the
user with the diagnosis rather than continuing to churn.

---

## 3. Proving a failure is pre-existing

A feature-branch failure very often originates in the base branch, not in the fix. Establish this
with evidence, not intuition.

**a) Compare against the base-branch build of the same job.** Every feature-branch job has a
`Distribution` twin with the same suffix:

```bash
# base-branch history for the same job
teamcity run list --job MPS_<ver>_Distribution_TestsFromIdeaProject --limit 10
# its failed tests
teamcity run tests <baselineRunId> --failed
```

If the same test name fails on the base branch at a comparable build number, it is pre-existing.

**b) Ask TeamCity what is currently failing project-wide.**

```bash
teamcity api "/app/rest/testOccurrences?locator=affectedProject:(id:MPS_<ver>),currentlyFailing:true,count:50&fields=count,testOccurrence(name,build(id,buildTypeId,branchName))"
```

Check `build.branchName` — an entry on `refs/heads/<base>` means the base branch is red there.

**c) Check mutes and investigations** — a muted or already-investigated test is known-bad:

```bash
teamcity api "/app/rest/mutes?locator=affectedProject:(id:MPS_<ver>),count:50&fields=count,mute(id,assignment(text),target(tests(test(name))))"
teamcity api "/app/rest/investigations?locator=affectedProject:(id:MPS_<ver>),count:20&fields=count,investigation(id,state,assignee(username),target(tests(test(name))))"
```

**d) Compare against another feature branch off the same base.** If a colleague's recent branch
on the same prefix fails the same job identically, the base branch is the cause:

```bash
teamcity run list --project MPS_<ver>_FeatureBranches --limit 30
```

**e) Check whether the failing job builds an external repository.** `Extensions`,
`Test Mbeddr Build`, and `Test iets3` check out `mps-extensions` / `mbeddr` / `iets3` at branches
pinned by project parameters (`mps.extensions.git.branch`, `mbeddr.git.branch`,
`iets3.git.branch`). These break for reasons entirely outside this repository:

```bash
teamcity project param list MPS_<ver>_FeatureBranches | grep git.branch
```

Note that a pinned branch may itself be somebody's work-in-progress (e.g.
`iets3.git.branch = mikev/build-integration-with-mps`), which makes those jobs unreliable
signals — say so explicitly rather than treating them as your failure.

**f) Suspect flakiness only with evidence.** Re-run the single failing job, do not re-run the
chain:

```bash
teamcity run start MPS_<ver>_FeatureBranches_<Job> --branch "$TC_BRANCH" --no-push
```

Passing on a re-run of identical sources is evidence of flakiness; a single green re-run of a
test that fails deterministically elsewhere is not.

---

## 4. Optional pre-push validation

To get CI signal without publishing a branch, run a personal build with uncommitted changes:

```bash
teamcity run start MPS_<ver>_FeatureBranches_TestBinaries --local-changes --personal --no-push
```

Useful for a quick check of one test job. It does not replace the full chain on the pushed branch.

---

## 5. Hazards

- **`teamcity run start` auto-pushes the current branch** unless `--no-push` is given. Pushing
  publishes work and triggers builds for everyone watching; always pass `--no-push` unless the
  user has explicitly asked you to push.
- **Ask before the first push.** Pushing the bugfix branch is what triggers CI; treat it as an
  outward-facing action needing the user's go-ahead, then reuse that approval for the
  fix → push → re-validate iterations of the same branch.
- **Never disable, mute, skip, or delete a failing test** to make a build green, and never
  force-push to make history look clean.
- **`--local-changes` ignores Kotlin DSL / `.teamcity/` changes.**
- **Do not touch `Distribution` jobs.** Never start, cancel, or re-run base-branch builds;
  feature-branch validation happens only in the `Feature Branches` project.
- **Composite logs are empty** — always drill into children.
- **Report faithfully.** If any failure remains, say so with the run URL, the job, the test
  names, and the bucket you assigned it to. "All tests pass in TeamCity" may only be stated
  when the composite run is green, or when every failure is documented as pre-existing with the
  evidence attached.

---

## 6. Report template

Present this to the user at the end of the validation phase:

```
**TeamCity validation** — branch `<prefix>/<user>/<desc>` → TC branch `<user>/<desc>`
Project: MPS_<ver>_FeatureBranches
Chain: <compositeRunId> — <SUCCESS | FAILURE> (<web URL>)

| Job | Status | Notes |
|---|---|---|
| Binaries | ✓ | |
| Test Binaries | ✓ | |
| Tests from IDEA Project | ✗ | 1 failed: <test> — pre-existing, also fails in Distribution #<runId> |
| Extensions | ✗ | external mps-extensions repo, fails on base branch too |

**Verdict**: <green / green modulo pre-existing failures / not yet validated — build running>
**Evidence for pre-existing failures**: <baseline run IDs, mute/investigation IDs>
```
