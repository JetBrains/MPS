# Phase 1 — Version-Clarification Prompt

Present findings and ask. Derive the in-development version from TeamCity `mps.git.branch` / HEAD; do not hardcode it.

> **Which MPS version should this fix target?**
>
> Available release branches: _[list them]_
> Master branch (in-development): _[version currently on master]_
>
> Options:
> - A **released version** → fix will be backported (base branch: e.g. `2025.1`)
> - The **next release** currently in development → fix goes to `master`
>
> Please confirm or specify the target version.

Wait for the user's explicit answer.
