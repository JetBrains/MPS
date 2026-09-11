# Phase 8 — YouTrack Completion Comment

If the user says yes to posting a closing comment, compose and post via `add_issue_comment`:

```
Fixed in branch `<branch-name>` (targeting <MPS version>).

**Root cause**: <one sentence>
**Fix**: <one sentence describing what was changed>
**Files changed**: <comma-separated list of key files>
**CI**: TeamCity <compositeRunId> — <SUCCESS | SUCCESS except pre-existing failures> (<web URL>)
```

The `CI` line is mandatory: it is the record that the fix was validated. If failures remained,
name them and say why they are pre-existing (see `teamcity-validation.md` §3). If TeamCity could
not be used at all, write `**CI**: not validated — <reason>` rather than omitting the line.

Remind the user to:
- Open a PR / code review
- Update the YouTrack issue state if needed (e.g. mark as Fixed)
- Backport to other affected versions if required — each backport branch needs its own
  TeamCity validation in that version's feature-branch project
