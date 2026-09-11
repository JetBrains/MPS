# Branch Naming — Bugfix Topic Form

Git prefix, username, and base branch come from `.agents/git.md`. TeamCity coordinates come from `.agents/tools.md`. Once the user answers the version-clarification prompt, fill in this ticket-specific table:

| Field | Value |
|---|---|
| **Target MPS version** | e.g. `2025.1` or `2026.1` |
| **Base branch** | from `.agents/git.md` / TeamCity `mps.git.branch` |
| **Branch version prefix** | from TeamCity `mps.idea.platform.number` |
| **Git username** | from `.agents/git.md` |
| **Proposed branch name** | `<prefix>/<username>/MPS-NNNNN-short-description` |
| **YouTrack fix version** | e.g. `2025.1.x` or `2026.1` |
| **TeamCity feature-branch project** | `MPS_<ver>_FeatureBranches` |

The topic segment is `MPS-NNNNN-short-description` — that issue ID is what makes this a bugfix branch rather than a generic topic branch.

A branch that does not start with the right prefix **never gets built** (TeamCity feature-branch VCS spec is `+:refs/heads/<prefix>/*`; see `.agents/tools.md`).

Present the proposed branch name, base branch, and YouTrack fix version to the user for confirmation before creating them.
