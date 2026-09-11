---
name: mps-bugfix
description: Structured MPS bugfix workflow driven by a YouTrack issue ID — preflight tool checks, version/branch derivation, parallel-agent problem analysis, solution design, branch creation, implementation, review, TeamCity feature-branch validation, and YouTrack updates. Use when the user invokes "/bugfix", asks to "fix a bug", "work on a bug", "investigate an issue", or provides a YouTrack issue ID.
argument-hint: <YouTrack issue ID, e.g. MPS-12345>
type: reference
---

# MPS Bugfix Workflow

You are guiding a structured bugfix process for the JetBrains MPS project. Follow each phase in order. Never skip phases or start implementation before the user gives an explicit command to do so.

The issue to fix: **$ARGUMENTS**

## Critical Directives

- **Never start implementing code before the user gives explicit approval.** Wait for "implement", "go ahead", "start coding", "do it", etc.
- **Never skip Phase 0 preflight.** Missing YouTrack MCP, IDEA MCP, or the platform project changes how you should proceed; surface the gap before touching code.
- **Prefer fixing the true source of truth (MPS model/generator) over patching generated code.**
- **Use IDEA MCP for Java/Kotlin navigation and inspection; use MPS MCP for MPS model edits.**
- **Validate after each logical change** — `mcp_idea_get_file_problems` on modified files, build affected module, run smallest relevant test suite.
- **A fix is not done until TeamCity is green.** Local builds and local test runs are necessary but not sufficient. The definitive confirmation of success is the TeamCity feature-branch build chain for the pushed branch: all tests must pass, or every remaining failure must be proven pre-existing on the base branch. Never report the task complete on local evidence alone, and never predict the outcome of a build that is still running. See Phase 7 and `references/teamcity-validation.md`.

## Phase 0 — Pre-flight Checks

Verify all required tools and inputs before doing any work.

### 0.1 — Issue ID

If `$ARGUMENTS` is empty, stop immediately and ask:

> Which YouTrack issue should I work on? Please provide the issue ID (e.g. `MPS-12345`).

Do not continue until a valid-looking issue ID is supplied.

### 0.2 — YouTrack MCP

Check that the YouTrack MCP server tools are available in this session (by attempting to call `get_issue`).

If they are not available:
> **YouTrack MCP is not connected.** Please start the YouTrack MCP server and retry.

Stop until the tools are available.

### 0.3 — Fetch the issue

Call `get_issue` with the provided issue ID. If the issue does not exist, report the error and stop. If it exists, extract and display the fields listed in `references/issue-fields.md`. Keep the raw issue data available for later phases.

### 0.4 — IDEA MCP (MPS project)

Check that the `mcp_idea_*` tools are available.

If not available:
> **IDEA MCP is not connected.** Please open the MPS project in IntelliJ IDEA with the MCP plugin running and retry.

Do not continue without the IDEA MCP tools.

### 0.5 — IDEA MCP (platform project)

Call `mcp_idea_get_project_modules` or `mcp_idea_get_repositories` to verify that the IntelliJ platform project (`../intellij-community`) is also open/accessible via the IDEA MCP. If not, ask whether to proceed with MPS-only sources or wait. See `references/platform-prompt.md` for the exact prompt.

### 0.6 — TeamCity CLI

Run `teamcity auth status` to confirm the `teamcity` CLI is installed and authenticated against `https://teamcity.jetbrains.com`.

If it is missing or unauthenticated, do not stop — analysis and implementation can proceed. Warn the user now, so the gap is known before Phase 7:

> **TeamCity CLI is not available/authenticated** (`teamcity auth status` failed). I can implement and locally validate the fix, but I will not be able to confirm it against CI. Please run `teamcity auth login` when convenient.

Load the `teamcity-cli` skill for CLI mechanics whenever you interact with TeamCity.

## Phase 1 — Version Clarification

Determine which MPS version the fix targets and derive the correct branch and YouTrack fix version.

1. **Identify available release branches**: run `git branch -r --list 'origin/20*'` and inspect master HEAD.
2. **Ask the user** which version to target — see `references/version-prompt.md` for the exact wording.
3. **Derive branch metadata** — see `references/branch-naming.md` for the full table.
4. **Derive the TeamCity coordinates** for the chosen version and record them for Phase 7 — the version project (`MPS_<ver>`), its feature-branch project (`MPS_<ver>_FeatureBranches`), the branch prefix, and the base git branch. Verify rather than guess:
   ```
   teamcity project param list MPS_<ver> | grep -E "mps.git.branch|mps.idea.platform.number"
   ```
   The `mps.idea.platform.number` value **is** the branch prefix, and `mps.git.branch` **is** the base branch — they must match what `references/branch-naming.md` produced. See `references/teamcity-validation.md` §1.
5. **Update YouTrack fix version** with `update_issue` after the user confirms.

## Phase 2 — Problem Analysis

Deeply understand the bug by reading relevant source code in both MPS and the platform.

1. **MPS source analysis**: launch 2–3 parallel Explore agents (reproduction path, similar code/existing handling, test coverage). Prompts in `references/explore-prompts.md`.
2. **Platform analysis** (if accessible): a fourth Explore agent against the platform sources.
3. **Root cause identification**: present the structured RCA. Template in `references/root-cause-template.md`.

## Phase 3 — Solution Design

1. **Propose 2–3 distinct fix approaches** with trade-offs.
2. **State your recommendation.**
3. **Detailed implementation plan** for the recommended approach — files, line-level precision, generation steps, validation.
4. **Offer to post the RCA + plan as a YouTrack comment** via `add_issue_comment`.

## Phase 4 — Branch Creation

After the user explicitly approves moving forward, run:

```
git checkout <base-branch>
git pull origin <base-branch>
git checkout -b <proposed-branch-name>
```

**Do not start implementing code until the user gives an explicit command.**

## Phase 5 — Implementation

**Only begin after explicit user command.**

Follow AGENTS.md rules throughout:

- Use IDEA MCP for Java/Kotlin code navigation and inspection.
- Use MPS MCP for MPS model edits (if required).
- Prefer fixing the source of truth (MPS model/generator) over patching generated code.
- Keep changes minimal — touch only what the fix requires.
- Match conventions of surrounding code.
- Validate after each logical change: `mcp_idea_get_file_problems`, module build, smallest relevant test.

Commit each logical unit of change with a clear message following project format, including a `Co-Authored-By` trailer.

## Phase 6 — Review

Once implementation is complete, offer:

> The implementation is done. Shall I run an agent-performed code review of the changes? (yes / no)

If yes, invoke `/review` scoped to `git diff <base-branch>...HEAD`. Checks listed in `references/review-checklist.md`.

Present the findings and ask the user how to proceed (fix issues, ignore, or proceed as-is).

## Phase 7 — TeamCity Validation

**This phase is mandatory and it is what determines whether the task succeeded.** Local green tests are not the criterion; a green TeamCity feature-branch chain is. Full details, commands, and the report template are in `references/teamcity-validation.md` — read it before starting this phase.

1. **Ask for the go-ahead to push.** Pushing is outward-facing and it is what triggers CI:
   > Ready to validate on CI. Shall I push `<branch>` to `origin`? That triggers the TeamCity chain in `MPS_<ver>_FeatureBranches`.

   Reuse that approval for the later fix → push → re-validate iterations on the same branch.
2. **Locate the triggered chain.** Remember TeamCity strips the numeric prefix: git `261/vaclav/MPS-12345-fix` is TeamCity branch `vaclav/MPS-12345-fix`. Filtering by the full git name (or `--branch @this`) silently returns "No runs found".
   ```
   teamcity run list --project MPS_<ver>_FeatureBranches --branch <tc-branch> --limit 20
   ```
   Allow ~5 minutes for the VCS trigger (120 s poll interval). Only start the chain manually — on the composite `..._DownloadableArtifactsNoInstallers` job, with `--no-push` — if it genuinely did not start.
3. **Wait for completion** — `teamcity run watch <compositeRunId>`, or hand the composite run ID to the `babysit-build` agent for long waits. A chain takes 45–60 minutes. Do not report completion while it is running.
4. **Read the result** — `teamcity run view` / `run tree` for the chain; for each failed child `run tests <id> --failed` and `run log <id> --failed --raw`. The composite build's own log is empty by design, and chains fail bottom-up, so the deepest failed dependency is the root cause.
5. **Classify every failure** into exactly one bucket, with evidence: (a) caused by my change → fix and re-validate; (b) pre-existing on the base branch → prove it against the `MPS_<ver>_Distribution` twin job, `currentlyFailing` tests, mutes/investigations, or another feature branch off the same base; (c) infrastructure/flaky → prove it by re-running the single job. Jobs that build external repositories (`Extensions`, `Test Mbeddr Build`, `Test iets3`) frequently fail for reasons outside this repository — check their pinned branch parameters before blaming the fix.
6. **Iterate**, up to 3 fix attempts. Each attempt must be a genuinely different fix; if the same failure survives three, stop and report the diagnosis instead of churning.
7. **Report** using the template in `references/teamcity-validation.md` §6. State "all tests pass in TeamCity" only when the composite run is green, or when every remaining failure is documented as pre-existing with its evidence.

Never mute, skip, disable, or delete a test to turn a build green, and never force-push.

## Phase 8 — Completion

Once TeamCity confirms the fix and the user agrees the issue is resolved, offer to post a short YouTrack summary comment via `add_issue_comment`. Template in `references/completion-comment.md`. Remind the user to open the PR / code review, update issue state, and consider backports (each backport branch needs its own TeamCity validation in that version's feature-branch project).

## Reference Index

- `references/issue-fields.md` — fields to extract from the fetched issue.
- `references/platform-prompt.md` — prompt when platform sources are not accessible.
- `references/version-prompt.md` — Phase 1 version-clarification prompt.
- `references/branch-naming.md` — branch-name derivation table (prefix, username, version).
- `references/explore-prompts.md` — Phase 2 parallel Explore-agent prompts.
- `references/root-cause-template.md` — structured RCA markdown template.
- `references/review-checklist.md` — what the agent reviewer must check.
- `references/teamcity-validation.md` — Phase 7 TeamCity project layout, branch-name translation, validation workflow, pre-existing-failure evidence, hazards, report template.
- `references/completion-comment.md` — Phase 8 YouTrack closing-comment template.
