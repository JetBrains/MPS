# Branch Naming and Metadata Derivation

Once the user answers the version-clarification prompt, compute:

| Field | Value |
|---|---|
| **Target MPS version** | e.g. `2025.1` or `2026.1` |
| **Base branch** | the version's git branch — `2025.1`, `2026.1`, … or `master` for the version currently in development |
| **Branch version prefix** | `251` (2025.1), `261` (2026.1), etc. |
| **Git username** | from `git config user.name` (lowercase, spaces → hyphens) |
| **Proposed branch name** | `<prefix>/<username>/MPS-NNNNN-short-description` |
| **YouTrack fix version** | e.g. `2025.1.x` or `2026.1` |
| **TeamCity feature-branch project** | `MPS_<20YYN>_FeatureBranches`, e.g. `MPS_20261_FeatureBranches` |

Do not assume which version `master` holds — it advances every release (for example `master` was
2026.2 while `2026.1` was still a live branch). Confirm base branch and prefix against TeamCity,
which stores both authoritatively:

```
teamcity project param list MPS_<20YYN> | grep -E "mps.git.branch|mps.idea.platform.number"
# mps.git.branch          = base git branch
# mps.idea.platform.number = branch prefix
```

The prefix matters beyond naming: TeamCity's feature-branch VCS spec is
`+:refs/heads/<prefix>/*`, so a branch that does not start with the right prefix **never gets
built**. See `teamcity-validation.md` §1.

Present the proposed branch name, base branch, and YouTrack fix version to the user for
confirmation before creating them.
