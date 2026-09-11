---
name: mps-bugfix
description: Structured MPS bugfix workflow driven by a YouTrack issue ID — preflight tool checks, version/branch derivation, parallel-agent problem analysis, solution design, branch creation, implementation, review, TeamCity feature-branch validation, and YouTrack updates. Use when the user invokes "/bugfix", asks to "fix a bug", "work on a bug", "investigate an issue", or provides a YouTrack issue ID.
argument-hint: <YouTrack issue ID, e.g. MPS-12345>
type: reference
---

# MPS Bugfix Workflow

You are guiding a structured bugfix process for the JetBrains MPS project. Follow each phase in order. Never skip phases or start implementation before the user gives an explicit command to do so.

The issue to fix is the YouTrack ID supplied with this request (`$ARGUMENTS` when the host substitutes it).

Always-on project rules apply throughout: `AGENTS.md` and `.agents/git.md`, `conventions.md`, `tools.md`, `workflow.md`, `quality-gates.md`. This skill is only the bugfix process and a few stricter overlays. Load `teamcity-cli` for TeamCity CLI syntax.

## Critical Directives

- **Never start implementing code before the user gives explicit approval.** Wait for "implement", "go ahead", "start coding", "do it", etc.
- **Never skip Phase 0 preflight.** Missing YouTrack MCP, IDEA MCP, or the platform project changes how you should proceed; surface the gap before touching code.
- **A fix is not done until TeamCity is green.** Local builds and tests are necessary but not sufficient. The definitive confirmation is the TeamCity feature-branch chain for the pushed branch: all tests must pass, or every remaining failure must be proven pre-existing on the base branch. Never report the task complete on local evidence alone, and never predict the outcome of a build that is still running. See Phase 7 and `references/teamcity-validation.md`.

## Phase 0 — Pre-flight Checks

Verify all required tools and inputs before doing any work.

### 0.1 — Issue ID

If no valid-looking issue ID was supplied (empty `$ARGUMENTS`, or the host left `$ARGUMENTS` unsubstituted), stop immediately and ask:

> Which YouTrack issue should I work on? Please provide the issue ID (e.g. `MPS-12345`).

Do not continue until a valid-looking issue ID is supplied.

### 0.2 — YouTrack MCP

Check that the YouTrack MCP tools are available in this session (the tool list includes `get_issue`). Do not fetch the issue yet.

If they are not available:
> **YouTrack MCP is not connected.** Please start the YouTrack MCP server and retry.

Stop until the tools are available.

### 0.3 — Fetch the issue

Call `get_issue` with the provided issue ID. If the issue does not exist, report the error and stop. If it exists, extract and display the fields listed in `references/issue-fields.md`. Keep the raw issue data available for later phases.

### 0.4 — IDEA MCP (MPS project)

Check that the IDEA MCP tools are available (`get_file_problems`, `search_symbol`, `build_project`, …).

If not available:
> **IDEA MCP is not connected.** Please open the MPS project in IntelliJ IDEA with the MCP plugin running and retry.

Do not continue without the IDEA MCP tools. This is stricter than `.agents/tools.md`, which allows docs-only work to proceed without IDEA.

### 0.5 — IDEA MCP (platform project)

If analysis may need IntelliJ platform sources, follow `AGENTS.md` and `.agents/tools.md` (ask for the exact path, have the user open that project in IDEA, verify with `search_symbol`). If they are not accessible, ask whether to proceed with MPS-only sources or wait. See `references/platform-prompt.md`.

### 0.6 — TeamCity CLI

Run `teamcity auth status` to confirm the `teamcity` CLI is installed and authenticated against `https://teamcity.jetbrains.com`.

If it is missing or unauthenticated, do not stop — analysis and implementation can proceed. Warn the user now, so the gap is known before Phase 7:

> **TeamCity CLI is not available/authenticated** (`teamcity auth status` failed). I can implement and locally validate the fix, but I will not be able to confirm it against CI. Please run `teamcity auth login` when convenient.

Load the `teamcity-cli` skill for CLI mechanics whenever you interact with TeamCity.

## Phase 1 — Version Clarification

Determine which MPS version the fix targets and derive the correct branch and YouTrack fix version.

1. **Identify available release branches**: run `git branch -r --list 'origin/20*'` and inspect master HEAD.
2. **Ask the user** which version to target — see `references/version-prompt.md` for the exact wording.
3. **Derive git metadata** from `.agents/git.md` (prefix, username, base branch). The topic segment for this ticket is `MPS-NNNNN-short-description` — see `references/branch-naming.md`.
4. **Derive TeamCity coordinates** from `.agents/tools.md` and record them for Phase 7. Verify with:
   ```
   teamcity project param list MPS_<ver> | grep -E "mps.git.branch|mps.idea.platform.number"
   ```
   so the prefix and base branch match.
5. **Offer to set the YouTrack `Fix versions` field** after the user confirms the target version. YouTrack writes need that yes and a `Co-Authored-By` trailer (`.agents/tools.md`).

## Phase 2 — Problem Analysis

Deeply understand the bug by reading relevant source code in both MPS and the platform.

1. **MPS source analysis**: launch 2–3 parallel Explore agents (reproduction path, similar code/existing handling, test coverage). Prompts in `references/explore-prompts.md`.
2. **Platform analysis** (if accessible): a fourth Explore agent against the platform sources.
3. **Root cause identification**: present the structured RCA. Template in `references/root-cause-template.md`.

## Phase 3 — Solution Design

1. **Propose 2–3 distinct fix approaches** with trade-offs.
2. **State your recommendation.**
3. **Detailed implementation plan** for the recommended approach — files, line-level precision, generation steps, validation.
4. **Offer to post the RCA + plan as a YouTrack comment** via `add_issue_comment`. Wait for a yes; include the `Co-Authored-By` trailer (`.agents/tools.md`).

## Phase 4 — Branch Creation

After the user explicitly approves moving forward, create a **new** branch for this ticket from the Phase 1 base (this isolates the fix; it is an exception to `.agents/git.md`'s "stay on the current topic branch" rule):

```
git checkout <base-branch>
git pull origin <base-branch>
git checkout -b <proposed-branch-name>
```

**Do not start implementing code until the user gives an explicit command.**

## Phase 5 — Implementation

**Only begin after explicit user command.**

Follow `AGENTS.md` and the always-on `.agents/*.md` files. Commit each logical unit per `.agents/git.md`.

## Phase 6 — Review

Once implementation is complete, offer:

> The implementation is done. Shall I run an agent-performed code review of the changes? (yes / no)

If yes, review `git diff <base-branch>...HEAD` against `.agents/workflow.md` (Reviews) and `references/review-checklist.md`. Present the findings and ask the user how to proceed (fix issues, ignore, or proceed as-is).

## Phase 7 — TeamCity Validation

**This phase is mandatory and it is what determines whether the task succeeded.** Local green tests are not the criterion; a green TeamCity feature-branch chain is. Coordinates and which job to start: `.agents/tools.md`. CLI: `teamcity-cli`. Procedure, classification, and report template: `references/teamcity-validation.md` — read it before starting this phase.

1. **Ask for the go-ahead to push** (`.agents/git.md`). Reuse that approval for later fix → push → re-validate iterations on the same branch.
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
