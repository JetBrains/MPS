# Editing strategy

- Keep changes minimal — only touch what the task requires.
- Don't introduce new abstractions when existing patterns already solve the problem.
- Follow `.agents/conventions.md` for style, naming, module boundaries, and source of truth.
- When changing public behavior, update the nearest relevant documentation.

## Merge conflicts

- Before resolving conflicts, inspect both versions and identify which side owns the behavior.
- Preserve user or upstream changes that are unrelated to the task.
- After resolving a conflict in MPS-generated or generated-adjacent code, check whether the real fix belongs in the MPS model or generator.
- Re-run the smallest validation that covers the conflicted area.

## Reviews

- Start with the change itself: which line changes the behavior that was reported, and which test would have failed without it. A clean, minimal diff that does not address the report is still a defect.
- For review requests, lead with concrete findings ordered by severity.
- Cite file and line references for each finding.
- Focus on bugs, regressions, missing tests, API compatibility, generated-source drift, and validation gaps.
- If no issues are found, say so and list any residual validation risk.
