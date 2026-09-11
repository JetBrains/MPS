# Issue Fields to Extract

After `get_issue`, extract and display:

- **Summary** (title)
- **Description**
- **Type** (Bug / Exception / etc.)
- **State**
- **Current Fix Version(s)** (if any)
- **Affected Version(s)** (if any)
- **Assignee**
- **Reporter**
- **Any attachments or linked issues** (mention them; read attachments if they seem relevant)
- **Linked VCS commits** — `commitsCount` in the `get_issue` response. If it is non-zero, re-fetch with `recentCommitsCount` and read them: existing commits usually mean the issue is already partly or fully fixed.
- **Prior art in the repository** — scan the comments for "fixed in branch …" notes and cross-check with `git branch -a --list '*<issue-id>*'` and `git log --all --grep '<issue-id>'`.

A ticket that already carries a root-cause comment, a `Fixed in builds` value, or linked commits changes the job: say so before Phase 2 instead of re-deriving the analysis (see `SKILL.md` Phase 2 step 0).

Keep the raw issue data available for later phases.
