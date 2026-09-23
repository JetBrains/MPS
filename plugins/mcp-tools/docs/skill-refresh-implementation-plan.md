# Plan: safe skill-catalog refresh for `mps_mcp_initialize_project_for_agents`

Status: proposal, not implemented. Revised 2026-09-17 after readiness review. The user is assessing
complexity and usefulness; this document does not authorize implementation or a subagent launch.
Origin: round-2 skill study, D16 — `plugins/mcp-tools/study/HOTSPOT_REPORT_round2.md` §4, §6 (N6).

## Problem and value

The tool installs the bundled `mps-*` catalog but aborts when an incoming skill folder exists.
Its documented delete-then-reinstall refresh can discard user edits and provides no provenance
for the next refresh. Copying can also fail after partially updating a tree.

The improvement provides a preview, automatic updates when ownership is known, explicit conflicts,
and verified recovery copies before replacing existing content. Agents can explain what changes
instead of treating every `mps-*` folder as disposable.

## Decisions and boundaries

1. `refresh` is `"off"` (default), `"safe"`, or `"force"`; `dryRun` defaults to false. Existing callers
   retain collision-abort behavior. Fresh installs additionally write manifests and return additive
   fields; “unchanged default” does not mean byte-identical output or filesystem state.
2. With a valid manifest, neither mode overwrites unowned files. `safe` aborts on modified or
   deleted owned files; `force` may restore, replace, or remove them after backup.
3. Legacy installs without manifests require `force` for adoption. This is an explicit, narrow
   exception to the unowned-file rule: current catalog file paths may be replaced after backing up
   their whole existing skill folders. Unknown extra files and folders survive.
4. Both destinations are preflighted together. Conflicts in either abort before any writes.
   Failures after application starts may leave a partial update; verified backups and recovery
   records support manual restoration. Automatic rollback is out of scope.
5. All destructive refreshes, including `safe`, require verified backups. `force` never bypasses
   path validation, protected names, structural conflicts, or backup failures.
6. Existing project guides and project-local templates are user-owned and never overwritten by
   this tool. Guide merging is a separate agent action, governed by the user's request.
7. This checkout retains its special blueprint-to-copy propagation workflow. Do not run the
   initializer here, even after the feature exists.

Non-goals: per-release hash histories, automatic three-way guide merging or conflict resolution,
automatic backup pruning, fixing the default install's existing partial-copy failure behavior,
or implementing the study fixture follow-up in this change.

## 1. Templates and user-owned guides

The repository source is
`resources/jetbrains/mps/agents/mcp/templates/AGENTS_template.md` (underscore, not hyphen).
It is a bundled resource used to render recommended content. Updating that resource during
implementation is distinct from refreshing files in a user's project.

- The tool reads the bundled template and never writes back to it. Existing local source edits
  to that template in this checkout must be preserved when implementing its documentation change.
- A project-local `AGENTS-template.md`, `AGENTS_template.md`, or other custom template is outside
  the tool's managed paths and is never overwritten or deleted.
- `AGENTS.md` and `CLAUDE.md` are created from the bundle only when absent, in install and refresh
  modes. Existing files remain byte-identical in every mode, including `force`.
  Use create-new semantics so a guide created after preflight is never overwritten; report that
  race and retain recovery information if application has already started.
- Return `agentsFileText` as today. Add `guideFilesDifferFromTemplate`, comparing existing guide
  bytes with the UTF-8 bytes the tool would write. Do not call this `guideFilesStale`: differences
  may be intentional customizations, and there is no guide provenance to prove staleness.
- A skills-only refresh reports differences without editing guides. If guide updates were also
  requested, the agent reads the existing guides and proposes a targeted merge of relevant MPS
  guidance, preserving user instructions and project-specific sections. Ask about actual conflicting
  instructions, not merely because files differ. Existing user authorization applies; this does
  not introduce an additional blanket approval requirement.
- Neither guides nor templates belong in the skills ownership manifest or catalog fingerprint.

## 2. Provenance manifest and fingerprint

Write `.mps-skills-manifest.json` in each of `.agents/skills/` and `.claude/skills/`:

```json
{
  "schemaVersion": 1,
  "tool": "mps_mcp_initialize_project_for_agents",
  "catalogSha256": "<lowercase hex>",
  "installedAt": "2026-09-17T12:00:00Z",
  "mpsVersion": "<running MPS version>",
  "skills": {
    "mps-node-editing": {
      "SKILL.md": "<lowercase SHA-256 hex of exact file bytes>",
      "scripts/table_to_bulk_insert.py": "<lowercase SHA-256 hex>"
    }
  }
}
```

When the manifest is implemented, its `mpsVersion` must come from `MpsRuntimeVersion`, not a second format.

Outer skill keys are single directory names. Inner keys are `/`-separated paths relative to that
skill, not the skills directory. Own only successfully installed catalog files; never include
preserved extras, backups, manifests, guides, or templates. Publish each manifest with a temporary
file and atomic replacement after verifying installed catalog files. During refresh, verify both
trees' catalog files before publishing either manifest. Publication across trees is not atomic;
recovery records cover failures between the two publications.

Fingerprint algorithm:

1. Enumerate regular bundled skill files using paths relative to `SKILLS_RESOURCE_PATH`, including
   the skill directory name. Normalize separators to `/`, without Unicode or newline rewriting.
2. Sort paths by unsigned lexicographic order of their UTF-8 bytes.
3. For each path append `UTF8(path)`, one zero byte, then the 32 **raw bytes** of SHA-256(file bytes).
4. SHA-256 the concatenation and encode as lowercase hex. Exclude timestamps and absolute paths.

Test vector: `mps-example/SKILL.md` containing UTF-8 `example\n` and
`mps-example/scripts/check.py` containing UTF-8 `pass\n` (each `\n` is one LF byte) produces
`b0b0556f2f41555556dc6043f157805a834b41466d5b96ff7b6e31675b9406d9`.
Directory and JAR resource enumeration must produce the same result.

The returned fingerprint always identifies the current bundle, even on blocked refreshes.
A manifest fingerprint identifies the baseline last successfully installed; matching it does not
prove current files remain unchanged. Consumers requiring freshness must inspect actual file
hashes through preflight, not only compare manifest strings.

Invalid JSON, duplicate keys, unsupported schema versions, wrong tool identity, invalid hashes,
absolute/traversing paths, or protected skill names are manifest errors in both modes. Do not
silently treat a malformed manifest as absent or let `force` bypass it. A pre-existing manifest
also blocks default installation rather than allowing metadata to be overwritten without review.

## 3. Planning and ownership rules

Take a read-only snapshot of the catalog, both targets, and their manifests. Keep classification
pure over snapshots; separate filesystem reads and writes from the planner. A skills directory
without a manifest and without non-protected `mps-*` content can be freshly installed in either
refresh mode, including when unrelated skills already exist. Other manifestless targets are legacy
trees. Classify mixed states independently, but any conflict blocks the whole operation.

| Observed state | `safe` | `force` |
|---|---|---|
| Owned file matches manifest and current bundle | Keep without replacing | Same |
| Owned file matches manifest; bundle changed or dropped it | Replace or remove | Same |
| Owned file differs from manifest, including when bundle dropped it | Conflict, abort | Back up, then replace or remove |
| Owned file was deleted locally | Conflict, abort | Restore if bundled; otherwise leave absent |
| New bundled path is absent with no structural collision | Add | Add |
| Unowned file occupies a new bundled path, even with identical bytes | Conflict, abort | Same |
| Incoming skill folder exists but is not owned in a manifested tree | Conflict, abort | Same |
| Unowned extra inside an owned skill, or unrelated local folder | Preserve and report | Same |
| Legacy tree with no manifest | Conflict; explain backed-up adoption | Adopt as below |
| Invalid manifest, structural/path conflict, or incomplete prior refresh | Conflict, abort | Same |

Legacy adoption in `force`:

- Back up whole existing folders whose names occur in the incoming catalog. Only catalog file
  paths inside those folders may be overwritten. Add missing catalog files.
- Preserve extra files inside those folders and unknown `mps-*` folders outside the incoming
  catalog. They remain unowned and are reported. Without historical hashes, dropped legacy skills
  and files cannot be identified and removed automatically.
- Write provenance for current catalog files only. Subsequent refreshes may safely remove files
  dropped from that recorded catalog. Adoption does not establish ownership of preserved extras.
- A file where a directory is required, or a directory where a file is required, blocks adoption;
  `force` does not recursively delete structural collisions.

Always exclude non-`mps-*` and `*-dsl` skills, even if a malformed manifest or future bundle claims
them. Reject an invalid bundle rather than installing protected names. Delete stale skill
directories only when empty after removing owned files; never recursively delete local extras.
Default `off` retains incoming-folder collision checks.

If both manifests already describe the current catalog, all owned files match, and no guides need
creating, a refresh is a true no-op: leave manifests/timestamps untouched and create no backups or
recovery records. Return `manifestWritten: false` and empty `appliedChanges`. A catalog update or
adoption publishes both manifests after verification, even if only one tree needed file changes.

Use no-follow inspection for managed paths and backup sources. Reject symlinks or other special
files in managed/backup paths and symlinked destination ancestors; never traverse them to overwrite
outside the target. Unrelated excluded folders need not be traversed. Reject case-insensitive path
collisions where the destination filesystem cannot represent the catalog.

Serialize refreshes within this server for the same resolved target. Recheck manifests, affected
folders (including extras), and destination collisions immediately before application; changed
snapshots abort and require a new preview. Stage and verify bundled content first; use atomic
per-file writes and create-new semantics for new paths. This reduces ordinary races but is not a
transaction against arbitrary concurrent external editors. Advise callers not to edit managed
files during refresh; do not claim cross-process atomicity.

## 4. Backup, partial failure, and recovery

Before a destructive refresh, copy affected existing skill folders and the previous manifest into
`<skillsDir>/.mps-skills-backup-<yyyyMMddTHHmmssSSSZ>-<unique>/`. Use a colon-free UTC timestamp
and unique suffix; never reuse a backup directory. Preserve bytes and executable permissions where
supported. Verify relative file inventory and hashes, not just file count. All required backups
in both trees must verify before managed content changes.

Keep a recovery record in each participating backup directory. Record the operation ID, original
manifest or its absence, originally absent paths/directories, planned changes (including guide
creation), both destinations, and backup locations. An additive-only refresh uses a recovery
directory with this record even when no old files require copying. Record preparation before
application; mark all records complete only after catalog files, manifests, and missing guides
have succeeded. Explicit record states distinguish preparation failure from application begun.
Persist the application-started state in all participating records before the first managed write.

Failure policy:

- Planning conflicts write nothing. Preparation failures leave managed content unchanged; partial
  backup artifacts may remain and are reported. “Nothing changed” refers to managed content,
  not failed backup directories.
- After application starts, do not automatically roll back. Return a structured partial-failure
  result with recovery locations and completed changes. Cancellation retains the same recovery
  information on disk even if the request cannot return a response.
- Further refreshes refuse to proceed if a prior recovery record indicates incomplete application.
  Recovery instructions explain how to restore affected folders and original manifests and remove
  recorded additions after checking for subsequent edits, then mark/archive the record as resolved.
  Restoration is a separate user-authorized action; never blindly remove post-failure user changes.
- Never prune backups automatically. They are optional to remove after successful verification;
  incomplete recovery records must be resolved first.

This provides recoverability, not automatic rollback or atomic updates of both trees. Default
`off` retains its existing partial-install limitation.

## 5. Tool response contract

Keep `ok`/`data` on success and `ok`/`error`/`details` on errors, following `AbstractOps`. Plan fields
use the same names in real and dry runs; avoid a parallel `would*` schema. `dryRun` and actual-effect
fields distinguish proposed changes from completed work.

Success `data` retains `targetDirectory`, `installedSkillCount`, `skillsDirectories`,
`guideFilesWritten`, `guideFilesAlreadyPresent`, and `agentsFileText`. `installedSkillCount` is the
catalog skill count for a successful real operation; zero during dry run. Add `catalogSkillCount`
for the planned count. `guideFilesWritten` is empty during dry run; `guideFilesToCreate` lists
missing guides in the plan. Guide path arrays use absolute paths.

Add these fields in success `data` or error `details` when a plan can be computed:

- `refresh`: enum string; `dryRun`: boolean; `canApply`: boolean; `catalogSha256`: string;
  `catalogSkillCount`: integer; `manifestWritten`: boolean (true only when both manifests were
  successfully written); `guideFilesDifferFromTemplate`: absolute path array.
- `trees`: array in `.agents`, `.claude` order. Each contains `skillsDirectory` (absolute path),
  `provenance` (`fresh`, `manifest`, `legacy`, `invalid`), and sorted `/`-separated relative **file**
  path arrays `filesAdded`, `filesReplaced`, `filesRemovedStale`, `filesUnchanged`, and `keptLocal`.
  `localDirectories` separately lists preserved unowned skill directories without scanning them.
  These describe the proposed plan, including on blocked runs, not completed writes.
- `conflicts`: array of `{skillsDirectory, path, reason}`. `path` is relative to that directory
  (empty for directory-wide conflicts). Stable reasons: `modifiedOwned`, `deletedOwned`,
  `unownedCollision`, `missingManifest`, `invalidManifest`, `structuralConflict`, `unsafePath`,
  `concurrentChange`, and `incompleteRefresh`. No ambiguous `keptModified` field is needed:
  conflicts and absence of writes describe their treatment.
- `backups`: array of `{skillsDirectory, backupPath}`, both absolute; empty during dry run.
  Includes recovery-only directories. `backupRequired`: boolean indicating whether existing
  content needs copying, including an existing manifest.
- `appliedChanges`: array of `{skillsDirectory, path, action}` for completed changes inside skills
  directories; actions `add`, `replace`, `remove`, or `writeManifest`. Guide writes are tracked in
  `guideFilesWritten`, also provided in partial-failure details. Empty on dry run/preflight refusal.
  `recoveryRequired`: boolean.

A valid dry run returns `ok: true`, even when `canApply: false`; conflicts remain readable alongside
the live catalog fingerprint. Real preflight refusal returns `ok: false` with the same plan in
`details`. Invalid parameters or unreadable resources may return ordinary errors when no plan can
be computed. Preview creates no guides, directories, manifests, backups, or locks on disk.

Illustrative excerpts (common fields and `trees` abbreviated here only):

```json
{"ok":true,"data":{"refresh":"off","dryRun":false,"canApply":true,"installedSkillCount":30,"catalogSkillCount":30,"manifestWritten":true,"conflicts":[],"backups":[],"recoveryRequired":false}}
```

```json
{"ok":false,"error":"Refresh blocked by local changes","details":{"refresh":"safe","dryRun":false,"canApply":false,"manifestWritten":false,"conflicts":[{"skillsDirectory":"/project/.agents/skills","path":"mps-example/SKILL.md","reason":"modifiedOwned"}],"appliedChanges":[],"backups":[],"recoveryRequired":false}}
```

```json
{"ok":true,"data":{"refresh":"force","dryRun":false,"canApply":true,"manifestWritten":true,"conflicts":[],"backups":[{"skillsDirectory":"/project/.agents/skills","backupPath":"/project/.agents/skills/.mps-skills-backup-20260917T120000000Z-example"},{"skillsDirectory":"/project/.claude/skills","backupPath":"/project/.claude/skills/.mps-skills-backup-20260917T120000000Z-example"}],"recoveryRequired":false}}
```

```json
{"ok":true,"data":{"refresh":"safe","dryRun":true,"canApply":false,"installedSkillCount":0,"manifestWritten":false,"catalogSha256":"<live catalog hash>","conflicts":[{"skillsDirectory":"/project/.claude/skills","path":"","reason":"missingManifest"}],"appliedChanges":[],"backups":[],"recoveryRequired":false}}
```

## 6. Implementation slices and complexity

Primary entry point: `src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSInitMcpToolset.kt`. Small
package-local helpers for snapshots, plans, or recovery are allowed when they improve testability;
do not require everything in the current toolset file. Its recursive copier uses `REPLACE_EXISTING`:
do not use blanket copies that bypass ownership rules.

1. **Fingerprint and manifest on fresh install**: independently useful, relatively small scope.
   Include schema validation, deterministic hashing, and existing-caller regression tests.
2. **Read-only planner and dry run**: moderate scope; ownership classification, guide comparison,
   path validation, exact response contract, and both-tree conflict collection.
3. **Verified backups, recovery records, and application**: largest slice; staged writes, manifest
   publication, failure injection, and restore verification. Shared by safe and force modes.
4. **Safe refresh and forced adoption/override**: expose the planner/application policies without
   bypassing structural or unowned-file conflicts in manifested trees.
5. **Documentation and propagation**: describe agent behavior below, update consumer guidance,
   and propagate final blueprint edits into this checkout using its existing procedure.

The full improvement is a moderate filesystem-management feature, not a parameter-only change.
Most complexity buys protection for custom files and recovery after partial writes. If its value
does not justify the full scope, slices 1–2 can be a separately approved milestone providing
provenance and diagnostics; do not ship destructive refresh without slice 3.

## 7. Tests and validation

Most cases belong in existing plain JUnit `JetBrainsMPSInitMcpToolsetTest.kt`, using temporary
directories and small injectable catalogs. Use `JetBrainsMPSInitMcpToolsetIntegrationTest.kt` for
real MCP context, routing, and optional parameter handling. Register any new class in
`McpToolsIntegrationTestSuite.java`; do not assume pattern-based discovery.

Acceptance cases:

- Existing default/no-argument behavior and incoming-folder collision protection remain; fresh
  installs write manifests in both trees and preserve pre-existing guides and local templates.
- Fingerprint vector, enumeration-order independence, JAR/directory parity, and byte-sensitive
  hashing including LF/CRLF pass.
- Every ownership-matrix row is covered, including deleted/modified stale files.
- Safe refusal preserves both trees and guides byte-for-byte, including conflicts only in the
  second destination. Dry run in all modes creates no filesystem artifacts.
- Force adoption replaces only catalog file paths, preserves legacy extras/unknown folders,
  and never claims their ownership. Manifested force blocks unowned collisions.
- Protected names, invalid/unsupported manifests, traversal, symlink ancestors/files, structural
  collisions, mixed provenance, and applicable case collisions fail conservatively.
- Repeating refresh of an unchanged catalog makes no content replacements; local edits are still
  detected even when manifest and bundle fingerprints match.
- Backup inventory/hash failures abort before managed writes. Inject failures during second-tree
  application, stale deletion, manifest publication, and guide creation; retain usable recovery
  records and structured failure details. Exercise cancellation recovery where practical.
- Following recovery instructions restores original inventory, bytes, manifests, and executable
  permissions where supported, including originally absent files/directories.
- Guide differences are reported as differences, not proven staleness. Customized guides and
  project-local templates survive `off`, `safe`, `force`, and preview unchanged.
- Preview and real-run plans agree on an unchanged snapshot; changes detected during application
  preflight block writes. Schema assertions cover response fields, including blocked dry runs.

Before implementation, verify IDEA access (including a generic `execute_tool` host), the owning
project path, JDK 25, and available run configurations. Use IDEA diagnostics on edited code, build
the affected module, and run focused tests followed by `McpToolsIntegrationTestSuite` once for final
validation. Never run suites concurrently. Follow `.agents/quality-gates.md` for timeout monitoring
and actual failure output; record the observed test total, not a promised historical 669-test count.

Run `plugins/mcp-tools/scripts/validate_skill_catalog.py` and affected script-contract/packaging
checks. Audit initializer callers, examples, and indexes for signature/envelope assumptions;
update affected scripts and documentation in the same change. Any live consumer smoke test uses
a disposable target, never this checkout's installed skills.

This plan-only revision has no build/test gate; review its consistency and scope only.

## 8. Documentation, downstream coordination, and handoff

- Update the tool description, bundled `AGENTS_template.md`, workflow `SKILL.md`, and
  `references/mcp-tools-index.md`; remove instructions to delete skills before refreshing.
- Preserve this repository's initializer prohibition in `AGENTS.md` and `.agents/tools.md`.
  Runbook step 7.9 continues blueprint propagation into `.agents/skills/` and `.claude/skills/`;
  do not substitute a call to a possibly stale running plugin. Preserve unrelated skills and
  local source edits during propagation.
- Coordinate `study/FIXTURE_SKILLS_REFRESH_PLAN.md` with the response contract: treat
  `guideFilesDifferFromTemplate` as a review signal, inspect `canApply`/conflicts, and distinguish
  baseline fingerprints from verified freshness. Leave harness changes and fixture rebuilds for
  that separate follow-up. Update D16 bookkeeping only after actual propagation/feature verification;
  do not close separate fixture work merely because the refresh tool ships.
- A later Sol handoff includes this plan, scoped source/test/docs paths, repository rules,
  validation commands/configurations, and acceptance cases. Record actual branch/base SHA and
  dirty-file exclusions then; never reset or commit unrelated work. At review the branch is
  `261/vaclav/MCP`, with existing build/model/generated-output edits and untracked planning files.
- The current task only revises this document. Launch no subagent, edit no implementation or
  bundled template, and perform no installation, refresh, commit, or push in this revision.

## 9. Intended agent behavior after release

1. On a user refresh request, honor repository-specific rules and identify the project selector
   and installation root. The request authorizes ordinary safe application; do not ask again
   merely to preview or apply a conflict-free safe plan.
2. Run `refresh: "safe", dryRun: true`. Summarize additions, replacements, stale owned removals,
   preserved local content, and guide differences. If there are no changes, say so.
3. If applicable, run safe refresh and report completion and recovery locations. Do not equate
   an installed-baseline hash with unchanged live files.
4. If provenance is missing or owned files were edited/deleted, explain the exact conflicts.
   Unless forced replacement/adoption was already explicitly authorized, show a force dry run
   and seek approval for those concrete changes. Never silently escalate from safe to force.
5. Force remains blocked by unowned collisions in manifested trees and invalid/unsafe paths.
   Explain needed manual resolution; do not delete conflicting content as a workaround.
6. Leave existing guides and local templates untouched during skills refresh. If guide updates
   were requested, handle a merge preserving custom content separately. Differences alone do not
   imply customized instructions are wrong or obsolete.
7. On partial failure, stop further refreshes, report recovery information, and agree the next
   recovery action. Keep backups until the user chooses to remove them.

## 10. Accepted limitations

- Legacy adoption cannot identify historical dropped files without provenance; unknown extras
  may remain stale and need manual review.
- Guide freshness cannot be inferred from full-text inequality; guide merging remains agent/user work.
- Backups consume disk space and manual recovery takes effort. Cross-tree updates are recoverable,
  not atomic, and concurrent external edits cannot be fully prevented.
- Default installation retains its existing partial-copy limitation. Narrow hardening around
  the new manifest is not complete rollback for that path.
