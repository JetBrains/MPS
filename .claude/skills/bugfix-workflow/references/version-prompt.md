# Phase 1 — Version-Clarification Prompt

Present findings and ask. Read the in-development version from `git show origin/master:build.txt` (e.g. `262.9437.SNAPSHOT` → `2026.2`) and confirm it against the highest `MPS_<ver>` TeamCity project's `mps.idea.platform.number`. Do not hardcode it, and do not use `mps.version` — it is stale in some projects (`.agents/tools.md`).

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
