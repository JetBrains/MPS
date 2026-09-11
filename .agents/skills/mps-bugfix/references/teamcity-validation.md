# TeamCity Validation — Definitive Confirmation of Success

Local builds and locally run test suites are **necessary but not sufficient**. A bugfix is only
confirmed once the TeamCity build chain for the pushed branch is green, or every remaining failure
has been positively identified as pre-existing on the base branch.

- CLI mechanics: `teamcity-cli` skill
- Project IDs, prefix, branch-name translation, which job to start, what the composite aggregates:
  `.agents/tools.md`

---

## 1. Validation workflow

Run this after the branch has been pushed. Pushing is an outward-facing action — get the user's
go-ahead first (`.agents/git.md`).

### Step 1 — confirm authentication and locate the run

```bash
teamcity auth status
teamcity run list --project MPS_<ver>_FeatureBranches --branch "$TC_BRANCH" --limit 20
```

`$TC_BRANCH` is the git name with the numeric prefix stripped (`.agents/tools.md`). If nothing
appears after a few minutes: the VCS root polls every 120 s, so allow ~5 minutes. If still
nothing, verify the branch matches the prefix spec, then start the composite by hand as in
`.agents/tools.md` (`--no-push`).

### Step 2 — watch until finished

```bash
teamcity run watch <compositeRunId>          # or --watch on run start
```

A chain takes 45–60 minutes. Prefer a background watch over blocking the session if the host
allows it. Do not report the task complete while a build is still running, and never predict a
running build's outcome.

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
2. **Pre-existing on the base branch** → prove it (§2), then report it as out of scope.
3. **Infrastructure / flaky** → prove it (§2), then report it. Do not paper over it.

Never assume a bucket. Never dismiss a failure as "unrelated" without the evidence from §2.

### Step 5 — iterate

After pushing a fix, a new chain is triggered. Re-run steps 1–4 against the **new** run ID.
Cap at 3 fix attempts; if the same failure survives three distinct fixes, stop and report to the
user with the diagnosis rather than continuing to churn.

---

## 2. Proving a failure is pre-existing

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

**e) Check whether the failing job builds an external repository.** `Extensions` and
`Test Mbeddr Build` check out `mps-extensions` / `mbeddr` at branches pinned by project
parameters (`mps.extensions.git.branch`, `mbeddr.git.branch`). These break for reasons
entirely outside this repository:

```bash
teamcity project param list MPS_<ver>_FeatureBranches | grep git.branch
```

A pinned branch may itself be somebody's work-in-progress (other pins such as
`iets3.git.branch` can look the same even when there is no matching job in this project).
Say so explicitly rather than treating those failures as yours.

**f) Suspect flakiness only with evidence.** Re-run the single failing job, do not re-run the
chain:

```bash
teamcity run start MPS_<ver>_FeatureBranches_<Job> --branch "$TC_BRANCH" --no-push
```

Passing on a re-run of identical sources is evidence of flakiness; a single green re-run of a
test that fails deterministically elsewhere is not.

---

## 3. Optional pre-push validation

To get CI signal without publishing a branch, run a personal build with uncommitted changes:

```bash
teamcity run start MPS_<ver>_FeatureBranches_TestBinaries --local-changes --personal --no-push
```

Useful for a quick check of one test job. It does not replace the full chain on the pushed branch.

---

## 4. Hazards

Most TeamCity hazards (auto-push, `--no-push`, empty composite logs, do not touch `Distribution`)
are in `.agents/tools.md`. Additional rules for this phase:

- **Never disable, mute, skip, or delete a failing test** to make a build green, and never
  force-push (stricter than `.agents/git.md`).
- **`--local-changes` ignores Kotlin DSL / `.teamcity/` changes.**
- **Report faithfully.** If any failure remains, say so with the run URL, the job, the test
  names, and the bucket you assigned it to. "All tests pass in TeamCity" may only be stated
  when the composite run is green, or when every failure is documented as pre-existing with the
  evidence attached.

---

## 5. Report template

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
