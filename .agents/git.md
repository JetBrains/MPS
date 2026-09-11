# Git conventions

## Protected branch

`master` is the protected branch. Never push directly to `master`.
Release branches (e.g. `2025.1`, `2025.3`, etc.) - branches named with full release version names are protected. Never push directly to release branches.

## Branch naming

* `<MPS_VERSION>/<user_name>/<topic>`, for example `261/vaclav/MPS-39848-short-topic`.
* `user_name` is the current Git user name in lower case. Use the OS user name if the Git user name is not suitable.
* `MPS_VERSION` is derived from the MPS version number: `2026.1` -> `261`, `2026.2` -> `262`, `2026.3` -> `263`. The last digit is only allowed to be `1`, `2`, or `3`.
* When branching off `master`, use the MPS version that follows the greatest available release branch. For example, use `271` for work after release branch `2026.3`. Confirm the prefix against TeamCity `mps.idea.platform.number` when the `teamcity` CLI is available (see `.agents/tools.md`); do not assume which version `master` currently holds.
* When branching off a feature branch that already follows `<MPS_VERSION>/<user_name>/<topic>`, use the same `MPS_VERSION`.

## Branching

Branches named with a full release version, such as `2024.3`, represent release branches of past or upcoming releases.

Derive a new branch of the current `master` or the current release branch in order to make changes.

Before deriving a branch, check the current branch and recent local and remote release branches. If the task is tied to a YouTrack fix version or a user-named release branch, use that release as the base. Otherwise use `master` unless the user says otherwise.

If the current branch already follows `<MPS_VERSION>/<user_name>/<topic>` and the task is a continuation of that work, stay on it. Create a new branch only when the user asks or when the task clearly requires isolating a new change.

## Git worktrees

Use Git worktrees for new branches only when asked explicitly.

## Commit format

* **Subject line:** `<Area> - <summary>`, where `<Area>` is a short component/topic tag and `<summary>`
  briefly describes the change. Examples: `MPSCLI - create build script`, `MPSCLI - Switch to Gson`,
  `MPSCLI - fix tests`. Keep the subject to a single concise line.
* **Body (optional):** after a blank line, explain the *what/why* — bullet points are fine for
  multi-part changes. Wrap prose at a sensible width.
* **Trailers last:** any trailers (`Co-Authored-By`, issue/MR references, etc.) go in a final,
  separate paragraph after a blank line, not mixed into the body.

## AI co-authorship

Every commit produced with AI assistance must include this trailer:

`Co-Authored-By: <identity of the AI agent>`

For Codex, use `Co-Authored-By: Codex <codex@openai.com>`.

## Pushing

* Feature branches following the `<MPS_VERSION>/<user_name>/<...>` pattern are pushed to `origin`;
  set the upstream on first push with `git push -u origin <branch>`.
* Ask before the first push of a new branch — it publishes work. Reuse that approval for later
  pushes of the same branch unless the user says otherwise.
* Never push to the protected `master` or release branches (see above).

## Commit hygiene

- One logical change per commit.
- Amend only the last commit and only if it has not been pushed.
- After a PR is under review: add new commits; never amend or rebase pushed history.
- Keep the branch up to date by merging its **base** (`git merge origin/<base>`), not by rebasing.
  For work off `master`, merge `origin/master`. For work off a release branch, merge that release —
  never merge `origin/master` into a release-based branch.
- If a force-push is unavoidable, use `--force-with-lease`. Do not force-push to rewrite CI history
  or to make a build look green.
