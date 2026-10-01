# D94 — `mps-dsl-memory` step 8 dry-runs blueprint files the server will not read

Draft 3, 2026-10-01.
- **Plan reviews:** three rounds. Round 1 found 0 blockers, 8 should-fix and 7 nits; round 2 found
  0 blockers, 2 should-fix and 7 nits (both "approve with changes"). Round 3 approved. Of its 2
  nits, the wrapping was fixed and a Windows note for item 1's copy recipe was declined, because
  the study runs on macOS and item 2 already names `%TEMP%`.
- **Implementation reviews:** two rounds. Round 1 found 2 should-fix and 4 nits, all applied
  (Phase 1 items 5–6 record the two should-fix ones). Round 2 approved; its 2 nits were applied.

**Status: implemented** (Phases 1–3) in the commit "MPS-40209 - D94 mps-dsl-memory sends shipped
blueprints inline or from the temp directory". Phase 4 was declined by the user on 2026-10-01.
Tracked as **D94**, which was `plugins/mcp-tools/study/docs-defects.md:51` before it was archived
(filed from round 21, `HOTSPOT_REPORT_round21.md:253`). Line numbers are pre-fix locations as of
`87652550a83a`.

## What is wrong
Step 8 of `mps-dsl-memory/SKILL.md:29` ("Verify") was added with the D87 work (`f5ab9e848214`). It
says "Dry-run every blueprint under `references/blueprints/`", but it does not say that a file-path
`json` / `childJson` must lie inside the system temp directory. Both S8 workers passed the shipped
files by path, and the server rejected each one. Each worker then copied the files to temp and
redid the dry runs.

## Findings (code and round-21 transcripts, checked 2026-10-01 by the author and the reviewer)
1. **The rule.** `AbstractOps.readJsonOrFile` (`common/AbstractOps.kt:3702-3767`) reads a value that
   starts with `{` or `[` as inline JSON, and anything else as a path.
   - Inline JSON is capped at `MAX_INLINE_JSON_CHARS = 4096` (`:131`, checked at `:3717` on the
     untrimmed length).
   - A real JSON object or array on the wire is turned back into compact text first
     (`JsonOrTextSerializer`, `common/JsonOrText.kt:66-76`), so the cap applies to the compact form.
     A blueprint sent as a string counts as sent, whitespace included.
   - A path must canonicalise to a file under `allowedTempDirectories()` (`:3868`): `java.io.tmpdir`,
     `$TMPDIR` / `%TEMP%` / `%TMP%`, and on macOS `/tmp`. Otherwise `:3751` rejects it with
     "Input file path '…' is not inside the system temp directory. It must be inside the system temp
     directory <dir> …".
   - The guard exists so the server cannot be used to read arbitrary files ("e.g. SSH keys",
     `:3738-3741`). It carries `TODO: also allow paths inside the project root …` (`:3742`).
2. **Every S8 blueprint fits inline.** Opus shipped 5 files of 101–1621 B (`S8-opus-1:43`), and
   sonnet shipped 5 files of 121–2198 B (`S8-sonnet-1:57`). The layout already asks for "compact JSON
   skeletons and subtree templates" (`SKILL.md:79`).
3. **Turn cost, counted by assistant message (lesson 37).**
   - `S8-opus-1`: one batch of 5 dry runs by path `[44-48]`, all rejected → `:49` `cp` to `/tmp/scbp`
     → batch `[50-54]` passes → `:55-56` patch the generated `gotchas.md` and `SKILL.md` with the
     rule. That is 4 turns caused by the rejection.
   - `S8-sonnet-1`: batch `[58-62]` sent 4 blueprints inline (all pass) and 1 by path (`:59`, 2198 B,
     rejected) → `:63` `cp` to the resolved `/private/var/folders/…/T` → `:64` redoes it. That is about
     1.5 turns. (`:65-66` in the same batch look like deliberate negative probes, not part of D94.)
   - Together this matches the hotspot report's "≈ 4" (2/2 cells).
4. **Knowing the rule did not help; the step decides (lesson 38).** At `:42`, two turns before passing
   the paths at `:44`, opus had already written "inline JSON max 4 KB; use a temp file under
   `$TMPDIR`" into its own generated `gotchas.md`. After the rejections it said "That's expected".
   The step's "dry-run every blueprint under `references/blueprints/`" reads as "pass those files".
5. **The same trap is shipped to later agents.** The generated `SKILL.md` must say "Start from
   `references/blueprints/` for known shapes" (`SKILL.md:59`). A later agent that follows it will
   pass the same path. Both workers patched their generated skill by hand:
   - opus in `SKILL.md:29-30` and `gotchas.md:29` ("Passing `references/blueprints/*.json` directly is
     rejected");
   - sonnet in `gotchas.md:15-17` and `workflows.md:22-23`, with the **resolved, machine-specific**
     directory `/private/var/folders/_v/xws71ss1209dv8swl5vvlrmm0000gn/T`. That path is wrong on
     every other machine, and the skill is meant to be checked in.
6. **`update_node` never mentions the restriction.** The fragment dry runs go through
   `mps_mcp_update_node ADD CHILD`. These `JetBrainsMPSNodeMcpToolset.kt` texts say only "an absolute
   path to a file":
   - `:1183` (ADD), `:1189` (SET) and `:1211` (the parameter);
   - `:1200` ("For `childJson` larger than ~4 KB pass an absolute file path instead of an inline
     string");
   - `:1266`, the missing-parameter text.

   By contrast, `JetBrainsMPSRootNodeMcpToolset.kt:317`, `:324` (insert), `:489`
   (`update_root_node_from_json`) and `JetBrainsMPSConsoleMcpToolset.kt:49`, `:54` say "a TEMPORARY
   file (inside the system temp directory)". The rule is also stated in skill references the S8
   workers had no reason to open: `mps-node-editing/references/json-format.md:48`,
   `troubleshooting.md:6`, and `mps-mcp-workflow/references/bulk-creation.md:39-51`,
   `node-editing-rules.md:32`, `mcp-tools-index.md:34`.
7. **The study already knew.** S8 criterion 3 (`study/scenarios/S8/done_criteria.md:12-14`, from A8
   `0022050c30d1`) says "Pass the blueprint inline (≤ 4,096 characters) or copy it to `$TMPDIR` first
   … that rejection is not a blueprint failure". The rule reached the evaluator's text but not the
   worker's step. Neither `AGENTS_template.md` nor the S8 `worker_prompt.md` needs a change, and
   changing the prompt would break `promptSha256` comparability.

## Remedy options
- **D (this plan, Phases 1–3):** put the rule in the step, in the generated-skill requirements, and
  in the `update_node` texts and the rejection message. This removes the observed cost and stops the
  trap from spreading into generated skills. No behaviour change.
- **S (Phase 4, declined by the user on 2026-10-01; kept as a record):** let the server
  read a blueprint from the project's agent skill folders. That resolves the `:3742` TODO and the
  mismatch at its root: `mps-dsl-memory` tells agents to keep blueprints in the project, and the
  server refuses to read them. It relaxes a path guard, so it is the user's call. D94 closes without
  it.

## Plan

### Phase 1 — docs edits (blueprint catalog `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`)
1. `mps-dsl-memory/SKILL.md:29`, step 8. After "… `mps_mcp_update_node` ADD CHILD with
   `dryRun: true` under a sample parent for a fragment." insert:
   > The server reads a `json` / `childJson` file only from the system temp directory, so a path
   > under `.agents/skills/` is rejected with "is not inside the system temp directory"; that
   > rejection is not a blueprint failure. Send each file's exact content inline (up to 4,096
   > characters), or copy the files first and pass each copy's absolute path:
   > `d="${TMPDIR:-/tmp}/<dsl-name>-blueprints"; mkdir -p "$d"; cp .agents/skills/<dsl-name>-dsl/references/blueprints/*.json "$d/"`.
   > When a dry run fails, fix the shipped file, not only the inline text or the temp copy, and
   > dry-run again from the fixed file.

   The `cp` source is project-relative because S8 workers run from the project root
   (`worker_prompt.md`); a skill-relative glob fails there under zsh ("no matches found", the A9
   failure). The subdirectory keeps short names such as `event.json` from colliding in the temp
   directory.
2. `mps-dsl-memory/SKILL.md:59`, Generated `SKILL.md` Requirements → Quick start. Replace
   "Start from `references/blueprints/` for known shapes." with:
   > Start from `references/blueprints/` for known shapes: send a blueprint's content inline, or copy
   > the file to `${TMPDIR:-/tmp}` (`%TEMP%` on Windows) and pass the copy's absolute path. The
   > server does not read a file under `.agents/skills/`.
3. `mps-dsl-memory/SKILL.md:27`, step 6 ("Generate DSL skills"). Append:
   > In every generated file, write the temp directory as `$TMPDIR` (`%TEMP%` on Windows), never as
   > the resolved directory (`/private/var/folders/…/T`, `C:\Users\…\Temp`), which differs per machine.

   The rule goes in the step where the files are written, not under "Generated `SKILL.md`
   Requirements": sonnet's resolved path was in `gotchas.md` and `workflows.md`. It names only the
   temp directory. A wider "no absolute local paths" rule would also forbid the
   `projectPath=/Users/…` line both workers wrote, and a worker might then drop the `projectPath`
   guidance altogether.
4. Sweep: `grep -rn "references/blueprints\|\.agents/skills/.*\.json" <catalog>`. Today the only hits
   are the `mps-dsl-memory` lines above. Fix any new hit the same way.
5. False deletion claim (folded in at the user's request, 2026-10-01).
   `mps-aspect-structure-concepts/references/structure-operation-api/create-concepts.md:22-23` and
   `create-enum.md:9` say "If a file path is provided, the tool will delete the file after reading
   it (unless 'dryRun' is true)". In fact `readJsonOrFile` deletes only a file the server itself wrote
   to `java.io.tmpdir` (`saveToTempFile`, `AbstractOps.kt:3656-3678`; `deleteCreatedTempFile`,
   `:3769`), and only when `dryRun` is false (`:3763`). A file the agent wrote is never deleted.
   Replace the sentence with the wording of `mps-node-editing/SKILL.md:82`: "Ordinary input files
   are never deleted; only a temporary JSON file this toolset created may be cleaned up after reading
   (and only when `dryRun` is false)." Also drop the doubled "local temporary file" after "(inside
   the system temp directory)" in the same three lines.
6. `mps-node-editing/SKILL.md:42` and `:79` (found in implementation review) repeated the old
   `update_node` wording, "an absolute path to a (local) file". Both now say "a TEMPORARY file
   (inside the system temp directory)"; `:42` says "Over 4 KB" instead of "for large blueprints",
   and `:79` points to `references/json-format.md` for the accepted directories.

Dropped after review: a 4,096-character size rule for shipped blueprints. No observed failure calls
for it, it would push workers to split valid full-root examples, and the copy route covers large
files.

### Phase 2 — server texts (no behaviour change)
1. `JetBrainsMPSNodeMcpToolset.kt`:
   - In `:1183`, `:1189` and `:1211`, change "an absolute path to a file containing the JSON" to "an
     absolute path to a TEMPORARY file (inside the system temp directory) containing the JSON".
     This is the wording at `RootNode:317`.
   - In `:1183`, change "For large blueprints prefer the file form" to "Over 4 KB, use the file
     form", and in `:1189` change "For large blueprints use the file form" the same way. Sonnet sent
     its 2198 B "large" blueprint by path.
   - In `:1200`, change "pass an absolute file path" to "pass an absolute path to a file inside the
     system temp directory".
   - In `:1266`, change "or an absolute path to a file holding it" to "or an absolute path to a
     temporary file holding it", as at `RootNode:324`.
2. `AbstractOps.kt:3751`: append to the rejection " Or send the JSON inline (up to 4096 characters)."
   This helps agents that follow generated skills written before the fix, which
   `mps-mcp-workflow/SKILL.md:110` routes them to. The substrings asserted at
   `AbstractOpsPropertyProblemsTest.kt:290-307`, `:402` and `:429` stay intact. Re-run that test.
3. No test pins the `childJson` texts: `McpJsonOrTextWireShapeTest` only checks that each parameter
   publishes its own annotation. The study's `inventorySha256` changes, as expected.
4. Build the `mcp-tools` module in IDEA (`build_project`) and run `AbstractOpsPropertyProblemsTest`
   directly (it is registered in `McpToolsIntegrationTestSuite.java:59`).

### Phase 3 — propagate, validate, bookkeeping, commit
- Copy the changed `mps-dsl-memory`, `mps-node-editing` and `mps-aspect-structure-concepts` folders
  over their `.agents/skills/` and `.claude/skills/` copies, and never run the initializer. Then
  `diff -r` the three trees.
- Run `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py --self-test plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills`.
- Run `SkillCatalogReplicationTest` and `SkillReferenceLayoutTest` through IDEA.
- `study/docs-defects.md`:
  - remove the D94 row;
  - add D94 to the header's "moved … on 2026-10-01" list and to the footer list (`:58`, "…; A9 on
    2026-10-01");
  - add to the narrative: "D94 was fixed (docs) and archived on 2026-10-01, re-measure (S8) still
    outstanding".
- `study/docs-defects-archive.md`:
  - add D94 to the "Moved out" and "Fixed / closed" lists;
  - add a D94 row with what was wrong, Findings 3–5, what changed, and the re-measure signature:
    **no "is not inside the system temp directory" rejection on an S8 blueprint dry run, and the
    shipped skill states the rule with `$TMPDIR`, with no resolved temp path anywhere in it.**
- `study/scenarios.md` S8 paragraph (`:129-141`): add "(D94, docs fixed 2026-10-01, re-measure: no
  temp-directory rejection on the blueprint dry runs, no resolved temp path in the shipped skill)".
- This plan: set the status line to implemented, with the commit hash.
- Commit:
  - Stay on `261/vaclav/MCP2` (continuation of the study work, `.agents/git.md`).
  - One commit, subject `MPS-40209 - D94 mps-dsl-memory sends shipped blueprints inline or from the
    temp directory`, then a body and the `Co-Authored-By` trailer. Write the message with a quoted
    heredoc (`<<'EOF'`), so that a `$TMPDIR` in the body is not expanded.
  - Check `git status` first and stage the files by name. Other sessions work in this worktree
    (`87652550a83a` and its parents are another session's A9 commits).

### Phase 4 — server change (declined 2026-10-01: not implemented; kept as a design record)
- **Allowed roots.** Keep the temp directories, and add the `.agents/skills/` and `.claude/skills/`
  directories of the selected project.
  - Locate them under both the project base directory and the agent config root that
    `AgentConfigRootResolver.deriveAgentConfigRoot` (`config/`) walks up to, as
    `JetBrainsMPSProjectMcpToolset.kt:537` already does. Allow each one that exists. This covers a
    project in a subdirectory, such as mbeddr's `tools/BigProject`, an install made with an explicit
    `targetDirectory`, and generated `*-dsl` skills kept at the project base.
  - Do not allow the whole project or VCS root. The VCS root is wider than what the platform file
    tools expose.
  - Require a `.json` extension. Do not reuse the MPS-40228 near-root check (`76b0ef4ebfb0`): it is a
    depth workaround for a core macro FIXME and is meant to go away. With the roots narrowed to the
    two skill folders, no extra home or near-`/` check is needed.
  - Allow only the selected project's folders, not every open project's. With nested projects the
    inner file may also be inside the outer root; state that case rather than test around it.
- **Paths.** Absolute paths only. Reject `!File(path).isAbsolute` (after the `$TMPDIR` expansion)
  explicitly, because a relative `.agents/skills/…json` would otherwise resolve against the MPS JVM's
  working directory and pass when MPS was started from the project. Read `canonicalFile`, not
  `file` (`:3762`), so the file checked is the file read.
- **Safety.**
  - Canonicalisation already resolves symlinks, so a skills-folder link to `~/.ssh` stays rejected.
  - The 10 MB cap stays.
  - `deleteCreatedTempFile` deletes only files the server itself created in `java.io.tmpdir`
    (`:3769-3804`), so a skills file is never deleted by a write that is not a dry run.
- **Rejection text.** Always keep "is not inside the system temp directory", and append ", or inside
  <skills folders>". `troubleshooting.md:6` and Phase 1 item 1 key on that phrase.
- **Tests.**
  - `AbstractOpsPropertyProblemsTest` has no `MPSProject` (the anonymous `ops` at `:101-103`). So the
    helper takes the allowed extra roots as `File`s, and the call sites resolve them.
  - The "accepted" fixture must lie outside every temp directory (e.g. under `user.dir`, as `:293`
    does). A root under `java.io.tmpdir` would pass without testing anything.
  - Cases: accept a skills-folder `.json`; reject a non-`.json` file there; reject a relative path;
    reject a symlink that points outside; leave the file in place after a write that is not a dry
    run. A "second open project" case needs the integration environment.
- **Docs to change if it lands.**
  - The skill texts: Phase 1 items 1–2 become "pass the absolute path"; `json-format.md:48`,
    `bulk-creation.md:39-51`, `troubleshooting.md:6`, `node-editing-rules.md:32`,
    `mcp-tools-index.md:34`, `staged-construction.md:7`, `mps-console/references/mcp-insertion.md:5`,
    `create-concepts.md:22-23, :27`, `create-enum.md:9`.
  - The tool descriptions and missing-parameter texts: `RootNode:317/:324/:489`, `Console:49/:54`,
    the structure-tool descriptions, and the Phase 2 `update_node` texts.
  - Elsewhere: `SkillScriptsDriftTest.kt:109`,
    `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/01_environment_validation.md:104`, and S8
    `done_criteria.md:12-14`.
  - Also correct "the tool will delete the file after reading it" in `create-concepts.md:22-23` and
    `create-enum.md:9`. Only server-created temp files are deleted (`AbstractOps.kt:3777-3778`). That
    claim is false today too; Phase 1 item 5 fixes it.

## Validation
- The three catalogs are identical, the validator and both skill tests are green, `mcp-tools`
  builds, and `AbstractOpsPropertyProblemsTest` is green.
- The Phase 1 step 4 sweep shows only the intended lines.
- The re-measure waits for the next S8 round (signature above).

## Risks / open points
- On Linux `$TMPDIR` is usually unset, which is why the shell instruction says `${TMPDIR:-/tmp}` and
  the agent passes the copy's absolute path. If a worker's shell temp directory differs from the
  JVM's, the copy route fails with the same rejection, which names the accepted directory. The
  inline route does not depend on it.
- With the inline route, the worker sends a copy it typed out again. Item 1's "exact content" and
  "fix the shipped file" wording addresses this; the copy route has no such gap.
