---
name: mps-bugfix
description: Structured MPS bugfix workflow driven by a YouTrack issue ID — preflight tool checks, version/branch derivation, parallel-agent problem analysis, solution design, branch creation, implementation, review, TeamCity feature-branch validation, and YouTrack updates. Use when the user invokes "/bugfix", asks to "fix a bug", "work on a bug", "investigate an issue", or provides a YouTrack issue ID.
argument-hint: <YouTrack issue ID, e.g. MPS-12345>
type: reference
---

# MPS Bugfix Workflow

You are guiding a structured bugfix process for the JetBrains MPS project. Follow each phase in order. Never skip phases or start implementation before the user gives an explicit command to do so.

The issue to fix is the YouTrack ID supplied with this request (`$ARGUMENTS` when the host substitutes it).

Always-on project rules apply throughout: `AGENTS.md` and `.agents/git.md`, `conventions.md`, `tools.md`, `workflow.md`, `quality-gates.md`. This skill is only the bugfix process and a few stricter overlays — it deliberately does not restate what other skills own.

**Required companion skills — load both in Phase 0, before any analysis:**

| Skill | Owns | Why it is mandatory here |
|---|---|---|
| `mps-mcp-workflow` | the MPS MCP contract: tool naming and prefixes, project resolution, node editing, model validation, and the index of every other `mps-*` skill | a fix that looks like plain Java routinely turns out to live in a model, aspect or generator; without this skill you will guess tool names and misjudge whether MPS is even reachable |
| `teamcity-cli` | TeamCity CLI syntax | Phase 7 decides whether the fix is done |

Route from `mps-mcp-workflow` into the specific `mps-aspect-*` / `mps-language-*` skill for whatever the fix turns out to touch.

## Critical Directives

- **Never start implementing code before the user gives explicit approval.** Wait for "implement", "go ahead", "start coding", "do it", etc.
- **Never skip Phase 0 preflight.** Missing YouTrack MCP, IDEA MCP, or the platform project changes how you should proceed; surface the gap before touching code.
- **A fix is not done until TeamCity is green.** Local builds and tests are necessary but not sufficient. The definitive confirmation is the TeamCity feature-branch chain for the pushed branch: all tests must pass, or every remaining failure must be proven pre-existing on the base branch. Never report the task complete on local evidence alone, and never predict the outcome of a build that is still running. See Phase 7 and `references/teamcity-validation.md`.
- **The only other legal ending is an explicit `not validated — <reason>` verdict** (the user declined the push, TeamCity is unreachable, …), naming what was and was not run. Silence, or local-only evidence presented as success, is never acceptable.

## Phase 0 — Pre-flight Checks

Verify all required tools and inputs before doing any work.

### 0.1 — Issue ID

If no valid-looking issue ID was supplied (empty `$ARGUMENTS`, or the host left `$ARGUMENTS` unsubstituted), stop immediately and ask:

> Which YouTrack issue should I work on? Please provide the issue ID (e.g. `MPS-12345`).

Do not continue until a valid-looking issue ID is supplied.

### 0.2 — YouTrack MCP

Check that the YouTrack MCP tools are available in this session (the tool list includes `get_issue`). Do not fetch the issue yet.

If they are not available, say so:
> **YouTrack MCP is not connected.** Please start the YouTrack MCP server and retry.

Do not stop the whole run over it: read the issue through the sanctioned read-only REST fallback in `.agents/tools.md` (§YouTrack), state that you used it, and remember that every later YouTrack *write* offered by this skill is off the table until the MCP tools are back.

### 0.3 — Fetch the issue

Call `get_issue` with the provided issue ID. If the issue does not exist, report the error and stop. If it exists, extract and display the fields listed in `references/issue-fields.md`. Keep the raw issue data available for later phases.

### 0.4 — IDEA MCP (MPS project)

Check that the IDEA MCP tools are available (`get_file_problems`, `search_symbol`, `build_project`, …). Hosts differ: some expose them as top-level tools, others only behind a generic `execute_tool` (`.agents/tools.md` §IDEA). Try both before declaring them missing — a reduced surface is not an absent one.

If not available:
> **IDEA MCP is not connected.** Please open the MPS project in IntelliJ IDEA with the MCP plugin running and retry.

Do not continue without the IDEA MCP tools. This is stricter than `.agents/tools.md`, which allows docs-only work to proceed without IDEA.

### 0.4b — MPS MCP (models, languages, generators)

Load `mps-mcp-workflow` now if you have not already — it is required, not optional. Heed in particular its **Tool name note**: your client wraps the tools with its own prefix, so match them by the stable `mps_mcp_*` suffix. Never conclude the toolset is missing because a name you guessed for it is absent; the full inventory is `mps-mcp-workflow/references/mcp-tools-index.md`.

The preflight itself is one read-only call: `mps_mcp_list_open_projects`. Pass the returned `mpsProjectBaseDirectory` as `projectPath` in later calls. Do not probe with `mps_mcp_initialize_project_for_agents` — it *writes* the skill catalog and agent guides into the repository.

If `mps_mcp_list_open_projects` is absent or fails:

> **MPS MCP is not available.** I cannot inspect or edit MPS models, and editing `.mps` / `.mpl` as text is forbidden (`.agents/conventions.md`). Please start or enable the MPS MCP server in the MPS instance that has this project open.

If the issue's subsystem suggests the fix will touch models, languages or generators, that is a hard stop. If the fix is plainly in hand-written Java/Kotlin, record the gap and continue.

### 0.5 — IDEA MCP (platform project)

If analysis may need IntelliJ platform sources, follow `AGENTS.md` and `.agents/tools.md`. Look before you ask: check for a sibling checkout (`../intellij-community` and similar) and probe it with one IDEA call — the error message lists the projects that are actually open, which answers "is it open?" for free. Only then ask the user for the exact path and to open it in IDEA. If it stays inaccessible, ask whether to proceed with MPS-only sources or wait. See `references/platform-prompt.md`.

### 0.6 — TeamCity CLI

Run `~/.local/bin/teamcity auth status` to confirm the `teamcity` CLI is installed and authenticated against `https://teamcity.jetbrains.com`. The binary is often not on `PATH`, and every shell invocation is a fresh shell — either use the absolute path or prepend `export PATH="$HOME/.local/bin:$PATH";` to each call.

If it is missing or unauthenticated, do not stop — analysis and implementation can proceed. Warn the user now, so the gap is known before Phase 7:

> **TeamCity CLI is not available/authenticated** (`teamcity auth status` failed). I can implement and locally validate the fix, but I will not be able to confirm it against CI. Please run `teamcity auth login` when convenient.

Load the `teamcity-cli` skill for CLI mechanics whenever you interact with TeamCity.

## Phase 1 — Version Clarification

Determine which MPS version the fix targets and derive the correct branch and YouTrack fix version.

1. **Identify available release branches**: run `git branch -r --list 'origin/20[0-9][0-9].[0-9]'` — the looser `origin/20*` also matches ~150 legacy `201/…`, `202/…`, `203/…` topic branches and buries the answer. For the in-development version on `master`, read `git show origin/master:build.txt` (e.g. `262.9437.SNAPSHOT` → `2026.2`, prefix `262`) and cross-check it against the highest `MPS_<ver>` TeamCity project; never trust `mps.version`.
2. **Ask the user** which version to target — see `references/version-prompt.md` for the exact wording.
3. **Derive git metadata** from `.agents/git.md` (prefix, username, base branch). The topic segment for this ticket is `MPS-NNNNN-short-description` — see `references/branch-naming.md`.
4. **Derive TeamCity coordinates** from `.agents/tools.md` and record them for Phase 7. Verify with:
   ```
   teamcity project param list MPS_<ver> | grep -E "mps.git.branch|mps.idea.platform.number"
   ```
   so the prefix and base branch match. `<ver>` is the compact digits-only release (`2026.1` → `20261`), never `2026.1` itself.
5. **Offer to set the YouTrack `Fix versions` field** after the user confirms the target version — but first compare it with the value already on the issue and skip the offer when it matches. A fix for an already-released version normally gets a bugfix fix-version (`2026.1.2`) while the git prefix stays `261`; state both explicitly so the user can correct you. YouTrack writes need that yes and a `Co-Authored-By` trailer (`.agents/tools.md`).

## Phase 2 — Problem Analysis

Deeply understand the bug by reading relevant source code in both MPS and the platform.

0. **Check for prior art first.** Many issues are already diagnosed, already being fixed, or already fixed. Spending the analysis budget re-deriving a root cause that is sitting in the ticket is the most common way to waste this phase.
   - Read the issue's comments for a root cause or a "fixed in branch X" note; if `commitsCount` is non-zero, re-fetch with `recentCommitsCount` and read the linked commits.
   - `git log --all --grep '<issue-id>' --oneline`, `git branch -a --list '*<issue-id>*'`, `git worktree list`.
   - If `Fix versions` / `Fixed in builds` are already set, ask the user whether this is a new fix, a verification, or a backport before starting an RCA. (A released-version fix normally shows `Fix versions: 2026.1.2` while the git prefix stays `261` — that combination is consistent, not a contradiction.)
   **If prior art already contains a complete fix** — commits on another branch, or a comment stating the root cause and the change — stop and report it with branch and commit IDs, then ask which of these the user wants: cherry-pick onto a new branch, continue on the existing branch, re-implement independently, or only verify. Do not silently re-derive or duplicate an existing fix.
   Otherwise report what you found and build on it instead of starting from zero.
1. **MPS source analysis**: launch 2–3 parallel Explore agents (reproduction path, similar code/existing handling, test coverage). Prompts in `references/explore-prompts.md`. If your host cannot spawn subagents, run the same three investigations yourself, sequentially and time-boxed (roughly 5–8 tool calls each), and state in the RCA that the analysis was single-threaded and therefore narrower than intended.
2. **Platform analysis** (if accessible): a fourth Explore agent against the platform sources.
3. **Root cause identification**: present the structured RCA. Template in `references/root-cause-template.md`.

## Phase 3 — Solution Design

1. **Propose 2–3 distinct fix approaches** with trade-offs. If the root cause admits only one sensible fix, say so in one sentence and go straight to the plan rather than inventing alternatives.
2. **State your recommendation.**
3. **Detailed implementation plan** for the recommended approach — files, line-level precision, generation steps, validation.
4. **Offer to post the RCA + plan as a YouTrack comment** via `add_issue_comment`. Wait for a yes; include the `Co-Authored-By` trailer (`.agents/tools.md`).

## Phase 4 — Branch Creation

After the user explicitly approves moving forward, create a **new** branch for this ticket from the Phase 1 base (this isolates the fix; it is an exception to `.agents/git.md`'s "stay on the current topic branch" rule):

```
git fetch origin <base-branch>
git checkout -b <proposed-branch-name> origin/<base-branch>
```

Do **not** `git checkout <base-branch>` first: this repository is routinely used with several worktrees (`git worktree list`), and the checkout fails outright when a sibling worktree already holds that branch. The form above works in any worktree and does not move the local base branch.

If the user asks you to branch off the current HEAD instead (e.g. a topic branch that is ahead of the release), use `git checkout -b <name>` with no base and **record the actual base commit** — every later `git diff <base>...HEAD` and every TeamCity baseline comparison must use that commit, not the release branch.

**Do not start implementing code until the user gives an explicit command.**

## Phase 5 — Implementation

**Only begin after explicit user command.**

Follow `AGENTS.md` and the always-on `.agents/*.md` files. Commit each logical unit per `.agents/git.md`.

Decide *where* the fix belongs before writing anything — that decides the toolset (`.agents/conventions.md`):

| The fix belongs in | Edit with | Validate with |
|---|---|---|
| hand-written Java/Kotlin | IDEA MCP | `get_file_problems`, then the nearest test or `build_project` |
| an MPS model, language aspect, or generator | `mps_mcp_*` — route through `mps-mcp-workflow` into the matching `mps-aspect-*` skill before editing | `mps_mcp_check_root_node_problems` on every root you touched, then regenerate the affected module |
| generated `source_gen` output | nothing — this is never the source of truth; fix the model or generator that produces it | — |

- `source_gen` is checked into this repository. If a model or generator change alters generated output, regenerate and commit the regenerated sources **in the same commit** as the model change, and say so in the commit body.
- Add or update a test that fails without the fix whenever the bug is reproducible in one; if you do not add one, state why in the Phase 6 report.

## Phase 6 — Review

Once implementation is complete, offer:

> The implementation is done. Shall I run an agent-performed code review of the changes? (yes / no)

If yes, review `git diff <base-branch>...HEAD` against `.agents/workflow.md` (Reviews) and `references/review-checklist.md`. Open with the sanity question — *does this diff plausibly change the behaviour the ticket complains about, and would the added test have failed before it?* — and only then go through the detailed checks. Present the findings and ask the user how to proceed (fix issues, ignore, or proceed as-is).

## Phase 7 — TeamCity Validation

**This phase is mandatory and it is what determines whether the task succeeded.** Local green tests are not the criterion; a green TeamCity feature-branch chain is. Coordinates and which job to start: `.agents/tools.md`. CLI: `teamcity-cli`. Procedure, classification, and report template: `references/teamcity-validation.md` — read it before starting this phase.

1. **Ask for the go-ahead to push** (`.agents/git.md`). Reuse that approval for later fix → push → re-validate iterations on the same branch.
   **If the user declines or defers the push**, do not silently drop the gate and do not push anyway: offer the personal pre-push build instead (`teamcity run start MPS_<ver>_FeatureBranches_TestBinaries --local-changes --personal --no-push`, see `references/teamcity-validation.md` §3), report its result as partial signal only, and close the task with the explicit verdict **"not validated — push declined"**, naming what was and was not run.
2. **Locate the triggered chain** in `MPS_<ver>_FeatureBranches` (branch-name translation and VCS trigger: `.agents/tools.md`). Allow ~5 minutes. Only start the composite by hand if it genuinely did not start.
3. **Wait for completion** with `teamcity run watch <compositeRunId>`. A chain takes 45–60 minutes. Do not report completion while it is running.
4. **Read and classify** every failure with evidence (own change / pre-existing / infrastructure). Iterate up to 3 distinct fixes. Jobs that build external repositories (`Extensions`, `Test Mbeddr Build`) frequently fail for reasons outside this repository.
5. **Report** using the template in `references/teamcity-validation.md`. State "all tests pass in TeamCity" only when the composite run is green, or when every remaining failure is documented as pre-existing with its evidence.

During this phase, never mute, skip, disable, or delete a test to turn a build green, and never force-push (stricter than `.agents/git.md`).

## Phase 8 — Completion

Once TeamCity confirms the fix and the user agrees the issue is resolved, offer to post a short YouTrack summary comment via `add_issue_comment`. Template in `references/completion-comment.md`. Remind the user to open the PR / code review, update issue state, and consider backports (each backport branch needs its own TeamCity validation in that version's feature-branch project).

## Reference Index

- `references/issue-fields.md` — fields to extract from the fetched issue.
- `references/platform-prompt.md` — prompt when platform sources are not accessible.
- `references/version-prompt.md` — Phase 1 version-clarification prompt.
- `references/branch-naming.md` — bugfix topic form, YouTrack fix version, confirmation table.
- `references/explore-prompts.md` — Phase 2 parallel Explore-agent prompts.
- `references/root-cause-template.md` — structured RCA markdown template.
- `references/review-checklist.md` — additional checks on top of `.agents/workflow.md`.
- `references/teamcity-validation.md` — Phase 7 procedure, pre-existing-failure evidence, report template.
- `references/completion-comment.md` — Phase 8 YouTrack closing-comment template.
