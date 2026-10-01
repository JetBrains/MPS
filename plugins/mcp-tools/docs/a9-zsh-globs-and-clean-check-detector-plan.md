# A9 — zsh glob failures in worker shells, and the over-counting `C_root_after_clean_model` detector

Draft 3, 2026-10-01. **Settled**: two review rounds. Round 1 was "approve with changes" (0 blockers, 9 should-fix,
6 nits), and all 15 findings are folded in. Round 2 was "approve" (1 should-fix, 6 nits), all folded in. The reviewer
prototyped the detector (`/tmp/a9proto/new2.py`, with every rule below) and ran it over the three directories; the
Validation numbers below are its output. It also ran the F2 snippet fix under zsh and bash, against this checkout and two
installed MPS builds. Nothing implemented.

Tracked as **A9** in `plugins/mcp-tools/study/docs-defects.md:56` (filed from round 21, `HOTSPOT_REPORT_round21.md` §4
row 8 and §6). A9 has two unrelated halves: one is about the worker environment, the other about the analyzer. They share
an entry only because both are harness-side. This plan fixes both, in three commits.

## What is wrong

1. **Shell commands fail under zsh.** The worker's Bash tool runs zsh (`run_worker.sh:238` passes `SHELL`, which is
   `/bin/zsh` on the study machine). In zsh an unquoted glob that matches no file is an error. The command holding it
   does not run and prints only `no matches found: …`, while the rest of a combined command still prints. A `for` over
   such a glob also skips everything after it in its block. So `grep -rn PAT DIR --include=*.md` finds nothing, often without the worker
   noticing. The worker CLI (Claude Code 2.1.286) exposes no `Grep` or `Glob` tool, yet the installed guide says "File-based
   tools (Read, Grep, Glob) are acceptable" (`AGENTS_template.md:44`, copied verbatim into every study project as
   `AGENTS.md`). One shipped skill snippet has the same failure (F2).
2. **The analyzer over-counts family C.** `families.py` counts `C_root_after_clean_model`, "a node-scope
   `check_root_node_problems` after a clean model-scope check, with no write in between". Round 21 reads 5 (opus) / 6
   (sonnet) calls. Re-reading every hit shows 0 genuine C instances, plus 0 / 4 calls (0 / 2 batches) that are D83
   (a per-root check only to read the warning text).

## Findings (checked against the transcripts and the server code)

### F1. Evidence for half 1, corrected

The filed evidence says "round 21: `S8-sonnet-1:51→52→53`, `S6-opus-1:15`; round 18: `S1-sonnet-1`, `S1-opus-1`". A
scan of every `*-worker.jsonl` (the baseline and `runs-r3` … `runs-r22`) for a tool result containing
`no matches found:` anywhere gives 11 instances. 5 of them are silent: the error is mixed into other output, and the
worker carries on without the result.

| dir (round) | run:step | trigger | effect |
|---|---|---|---|
| baseline `runs` | `S1-opus-1:27` | `grep … $R --include=*.md` | 1 retry |
| `runs-r4` | `S1-sonnet-1:44` | `grep … --include=*.md` | 1 retry |
| `runs-r16` (15) | `S1-opus-1:52` | `grep … --include=*.md` | 1 retry (`:53`) |
| `runs-r17` (16) | `S10-sonnet-1:15` | `for j in "$M"/languages/*.jar` from `create-empty-project.md:74` (F2) | aborts the snippet; 2 recovery turns (`:16-17`) |
| `runs-r19` (18) | `S1-opus-1:44` | `cat …; grep … --include=*.md . \| grep …; cat …` | **silent**: both `cat`s print |
| `runs-r19` (18) | `S1-sonnet-1:27` | `cat …; grep … --include=*.md` | **silent** |
| `runs-r19` (18) | `S10-sonnet-1:13` | `ls -d ~/Library/Logs/JetBrains/*SRC* 2>/dev/null; find … \| while …` (a path glob with no match) | **silent**: the `find` half printed, `:14` moved on |
| `runs-r22` (21) | `S10-sonnet-1:12` | the `create-empty-project.md:74` snippet again | **silent** in a combined command |
| `runs-r22` (21) | `S6-opus-1:15` | `grep … --include=*.md .` | 1 retry (`:16`) |
| `runs-r22` (21) | `S7-sonnet-1:35` | `ls -R . && grep … --include=*.md --include=*.json .` | **silent**: the `ls` output came back |
| `runs-r22` (21) | `S8-sonnet-1:51` | `grep … DIR --include=*.md` | 2 turns: `:52` tries the absent `Grep` tool, `:53` drops `--include` |

The archive entry carries this table. The defect predates the round-15 restart, so the recurrence row says "first seen:
baseline".

### F2. A shipped skill snippet hits it, and "quote globs" cannot fix it

`mps-project-management/references/create-empty-project.md:74` (blueprint under
`plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, mirrored in `.agents/skills/` and `.claude/skills/`):

```sh
{ for j in "$M"/languages/*.jar; do unzip -l "$j" 2>/dev/null; done
  ls "$M/solution/source_gen/jetbrains/mps/ide/mpsmigration" 2>/dev/null; } | …
```

A source checkout has no `languages/` jars (in this checkout the directory does not exist), so under zsh the `for`
skips the rest of the group, and the `ls` fallback, which is
exactly the source-checkout branch, never runs (round 16 `S10-sonnet-1:15`, round 21 `S10-sonnet-1:12`). This glob is
meant to expand, so it needs `find`, not quotes.

### F3. Who reads the template

`AGENTS_template.md` is a product resource, not a study file. `mps_mcp_initialize_project_for_agents` reads it from the
classpath (`JetBrainsMPSInitMcpToolset.kt:71-73, :353`) and installs it into user projects. `study/scripts/install_skills.py`
asks the **running** plugin to do that for each study project, producing `AGENTS.md` / `CLAUDE.md`. So the text must hold
for every agent runtime: some have Grep and Glob tools, the study's worker does not, and many users run zsh (the macOS
default). No test asserts the template's wording.

`install_skills.py` computes `skillsSha256` over `.claude/skills` only (`catalog_sha256`, `:43-60`). A guide change
therefore does not move the round fingerprint that `SKILL.md` step 6 tells the observer to compare.

### F4. Where `families.py` lives

It is **not in the repository**. Each round's reviewer copied it from the previous round's run directory:
`runs-r17/families.py`, `runs-r19/analysis/`, `runs-r20/analysis/` and `runs-r22/analysis/` are byte-identical
(66 lines). No skill step names it. The round reports cite its output, `families.tsv`, from `HOTSPOT_REPORT_round18.md:12`
onward. A fix made only in `runs-r22/analysis/families.py` would be unreviewed, untested and lost on the next copy.
`load()` does not filter on `parent_tool_use_id`. That is harmless so far, because the only subagent events in any round
are `tool_progress` (r17, r19 `S7-opus-1`).

### F5. Why the detector misfires

`families.py:31-33`:

```python
ref = inp.get("nodeReference") or inp.get("modelReference") or inp.get("reference") or ""
is_model = ("modelReference" in inp and inp.get("modelReference")) or (isinstance(ref, str) and re.match(r"^r:[^/]*\)$", ref))
clean = ('"errors":0' in r.replace(" ", "") or "no problems" in r.lower())
```

The clean test also matches the truncated module answer `"no problems found in N of M models"`. Here is every round-21
hit, classified:

| hit | what it really is | which test is wrong |
|---|---|---|
| `S1-opus-1:89`, `S2-opus-1:57`, `S6-opus-1:62`, `S8-opus-1:32`, `S6-sonnet-1:73` | a **module** check (`<uuid>(name)`, D63), `perRoot` | scope: anything that is not `r:…(…)` counts as a node check |
| `S1-sonnet-1:123` | a module check by **bare name** (`mcp.study.recipes`) | scope (the same) |
| `S7-opus-1:35` | `autoApplyQuickFixes` on a root after `:34`, a model report **with problems** (`data` is the model object) | clean: `"errors":0` occurs in a `roots` row of the problem report |
| `S3-sonnet-1:21`, `:22` (one batch) | per-root checks after `:19`, a `perRoot` result with 0 errors and 23 warnings | clean: warnings are ignored. D83 |
| `S7-sonnet-1:62`, `:63` (one batch) | per-root checks after `:61`, a `perRoot` result whose first row has `errors:1` | clean: `"errors":0` in any later row. D83 |

So the detector has two faults, not the one the entry names. The scope fault accounts for 6 of the 11 hits.

Round 18 (`runs-r19`) has 1 hit, `S3-opus-1:17`: a per-root check after a model check that reported warnings. That is
D83 too. The scope fault also hid a second D83 instance: `S3-sonnet-1:9` checks the model by bare name
(`mcp.study.kitchen.samples`, `perRoot`, 44 rows, 24 warnings), and `:11` checks a node to read the text. The 2026-09
baseline (`~/MPSProjects/mcp-study-baseline/runs`) has 48 hits, all in `S3-opus-1`, in 5 batches. Each follows a model
check that answered `{"ok":true,"data":"no problems found"}` with no `details`, the pre-D7 shape. Those are genuine.

### F6. The result contract the detector should read

From `JetBrainsMPSNodeMcpToolset.kt:729-731, 863-918, 1038-1089`:

- **Node scope** (`r:…(…)/<id>`, also module-qualified `<uuid>/r:…(…)/<id>`, `runs-r17 S9-opus-1:17`):
  `data:"no problems found"` with no `details.scope`, or a list of problem nodes, or a temp-file path.
  `autoApplyQuickFixes` adds `details.appliedQuickFixes` and saves the model.
- **Model scope**: always `details.scope:"model"` and `rootsChecked`. Clean is `data:"no problems found"`. A problem
  report is an object with `problems` and `roots`. `perRoot` gives `[{root, name, concept, errors, warnings}]` for every
  root, and `details.modelProblems:<n>` when the model itself has problems.
- **Module scope**: always `details.scope:"module"`. Clean is `data:"no problems found"`. A truncated sweep says
  `"no problems found in N of M models"` and sets `details.truncated`. A problem report is an object with `problems` and
  `models`. `perRoot` gives `[{model, name, rootsChecked, errors, warnings}]`, and module-level errors add the warning
  "The module itself has N error(s)". `details.moduleProblems` carries module-level messages inline. On the server they do
  not make the module unclean, but the worker acts on them (`S6-opus-1:62` → `:64-66`, generation target).
- A report above `maxInlineBytes` comes back as a temp-file path in `data`, with the same `details`.
- Pre-D7 results (baseline) carry no `details`; only the input reference tells the scope.

## Decisions

- **D1. Half 1 is a template fix (tier T), worded for every runtime, plus a fix of the one skill snippet (tier D).** Do
  not switch the worker to bash: the study measures the conditions real users have, and zsh is the macOS default.
- **D2. "Clean" means nothing left to read**: 0 errors, 0 warnings, and no module- or model-level messages. A per-root
  check after a result with warnings only is D83 (reading the text), not C (distrust of a clean answer). Counting it as C
  was the fault.
- **D3. Count the D83 shape separately** rather than drop it. The new column `C_after_summary` is "a node-scope check
  after a container-scope `perRoot` result with non-zero counts, no write in between". It gives the recurrence watch's
  D83 row a mechanical signature, and the D83 plan (`d83-per-root-problem-messages-plan.md`) aims to drive it to 0.
- **D4. Promote `families.py` into `plugins/mcp-tools/study/scripts/`**, with tests, and name it in the study skill.
  Existing columns keep their names and order. Three C columns (`C_model_checks`, `C_root_checks`,
  `C_root_after_clean_model`) change values as stated in Validation; all other columns keep their values.
  New columns are appended. The header prints full column names (no `k[:14]` truncation; nothing parses it, and
  `compare.py` does not read the TSV).
- **D5. Keep the write-reset rule** (any `mps_mcp_*` call except `print_node`, `get_project_structure`, `query_nodes`,
  `list_open_projects` resets the last container verdict), and add one case: a node-scope check with
  `autoApplyQuickFixes:true` resets too, because it writes. Widening the read-only set would change the baseline series
  for reasons unrelated to A9.
- **D6. Add batch counts for the two after-columns only** (grouped by `message.id`, as `analyze_runs.py` does since A2).
  The round reports quote C in batches, and those were counted by hand.
- **D7. `guidesSha256` goes in the harness commit, not the template commit**, so that the template commit can ship under
  a product issue if the user wants one.

## Changes

### Commit 1 — template and skill snippet (half 1, product resources)

1. `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/templates/AGENTS_template.md`, section "Tool Selection":
   - `:44`: "File-based tools (Read, Grep, Glob, or their shell equivalents such as `cat` and `grep` when your runtime
     has no such tools) are acceptable for:"
   - After the list (`:47`), one paragraph: "In zsh (the macOS default) an unquoted glob that matches no file is an error.
     That command does not run and prints only `no matches found: …` (a `for` over such a glob skips the rest of its
     block), while the rest of a combined command still prints,
     so the miss is easy to overlook. Quote patterns meant for the command (`grep -rn PATTERN --include='*.md' DIR`,
     `find DIR -name '*.jar'`), and list files that may not exist with `find`, not with a bare `DIR/*.jar`."
   - Do not touch `plugins/mcp-tools/classes/…/AGENTS_template.md`; it is build output.
2. `create-empty-project.md:74`: edit the blueprint so that the snippet works under zsh. Replace the `for` with
   `find "$M/languages" -name '*.jar' 2>/dev/null | while read -r j; do unzip -l "$j" 2>/dev/null; done`, keeping the
   group and the `ls` fallback. Run the edited snippet under both `zsh` and `bash` against this source checkout (no jars,
   so the `ls` branch must answer) and, if one is at hand, an installed MPS. Copy the skill folder over both catalogs, as
   `CLAUDE.md` "Skills" says. Run `plugins/mcp-tools/scripts/validate_skill_catalog.py` and the JUnit
   `SkillCatalogReplicationTest` (`plugins/mcp-tools/test/…/unit/`, from its IDEA run configuration or the mcp-tools unit
   suite that registers it).
3. Scan the template and the blueprint skills once more for an unquoted pattern argument or a bare glob that may match
   nothing (`--include=*`, `-name *`, `for … in …/*`, `ls …/*`). The draft-1 scan found only F2. "Grep `…`" and "Glob: `…`"
   in skill prose are verbs or patterns, so they stay.

### Commit 2 — harness fingerprint (D7)

4. `install_skills.py`: add a pure function `guides_sha256(project_dir)`, a sha256 over the installed `AGENTS.md` and
   `CLAUDE.md` in `GUIDES` order (`"absent"` when one is missing). Put it in the install JSON next to `skillsSha256`, and
   add a separate `--guides-sha-only DIR` flag. Leave `--sha-only` printing only the bare catalog sha: the
   `SKIP_SKILL_INSTALL=1` branch (`run_worker.sh:178-181`) captures its stdout as `SKILLS_SHA`, and writes
   `{"ok":true,"skipped":true}` as the install JSON. `run_worker.sh` changes at `:178-187`. In the skip branch it sets
   `GUIDES_SHA=$(python3 "$STUDY/scripts/install_skills.py" --guides-sha-only "$PROJECT")`; in the install branch it
   reads `guidesSha256` from the install JSON, as it does `skillsSha256`. It writes `guidesSha256` into
   `<id>.meta.json` next to `skillsSha256`.
5. Study skill, both copies: `SKILL.md` step 6 compares `guidesSha256` as well as `skillsSha256`. `references/harness.md`
   documents the field with the meta fields (`:56`) and in the install-JSON description (`:320`).
6. Tests: a new `tests/test_install_skills.py` tests only `guides_sha256`, because the install path needs a live MCP server.
   The value changes when a guide changes, is stable otherwise, and is `"absent"` when a guide is missing.

### Commit 3 — analyzer (half 2)

7. Add `plugins/mcp-tools/study/scripts/families.py`, starting from the runs-r22 copy. Give it a module docstring in the
   style of `analyze_runs.py` (inputs, outputs, every column defined in one line) and `argparse`
   (`families.py RUNS_DIR… [--out FILE]`, default stdout, TSV as today). Stdlib only. Filter out events with a non-null
   `parent_tool_use_id` explicitly, so that the parent transcript is the only input (F4).
8. Replace the scope test with `check_scope(inp, result)`, which returns `"node"`, `"model"`, `"module"` or
   `"container"`:
   - `details.scope` from the parsed result envelope, when present (`model` / `module`);
   - otherwise the input: a legacy `modelReference` key → `model`; `nodeReference` matching `^r:[^/]+\)$` → `model`;
     anything containing `)/` after an `r:…(…)` (plain or module-qualified node ref) → `node`;
     `^[0-9a-f-]{36}\([^)]+\)$` → `module`; a bare qualified name (`^[A-Za-z_][\w.\-]*(@[\w.\-]+)?$`) → `container`
     (model or module, the server decides; both count as container scope); anything else → `node`.
9. Replace the cleanliness test with `check_verdict(result)`, which returns `"clean"`, `"problems"`,
   `"problem_summary"` or `"unknown"`. It parses the envelope with `json.loads`; anything unparseable is `unknown`.
   - `clean`: `ok` true, no non-empty `details.moduleProblems`, no `details.modelProblems`, no "The module itself has"
     warning, and either `data` is exactly `"no problems found"` or `data` is a list (possibly empty) of rows that all
     have `errors == 0` and `warnings == 0`.
   - `problem_summary`: `data` is a list of `perRoot` rows and some row has a non-zero count, or `details.modelProblems`
     is set or the "The module itself has" warning is present.
   - `problems`: `data` is an object or a list of problem nodes, or a clean-looking answer with a non-empty
     `details.moduleProblems` (the text is inline, so a later node check is neither C nor D83).
   - `unknown`: a temp-file path, `"no problems found in N of M models"` (truncated), `ok:false`, or anything else.
10. State machine, per transcript: a container-scope check sets `last` to its verdict. A node-scope check counts in
    `C_root_after_clean_model` when `last == "clean"`, and in `C_after_summary` when `last == "problem_summary"`. It
    leaves `last` unchanged, unless it has `autoApplyQuickFixes:true`, in which case it resets `last` (D5). The
    write-reset rule sets `last` to none. `C_model_checks` keeps its name but now means "container-scope checks", and
    `C_root_checks` means node-scope checks; the docstring says so.
11. Batch columns (D6): `C_root_after_clean_model_batches` and `C_after_summary_batches`, the distinct `message.id`s
    among the counted calls (a call without an id is its own batch).
12. Synthetic tests in `plugins/mcp-tools/study/scripts/tests/test_families.py`, built like `test_analyze_runs.py`:
    stream-json lines written to a temp dir, script loaded via `importlib`.
    - T1, baseline shape: a model check `"no problems found"` with no `details`, then 3 node checks in 3 batches → C 3,
      batches 3.
    - T2: a module check by `<uuid>(name)` with all-zero `perRoot` rows → C 0, `C_model_checks` 1.
    - T3: a bare-name check with `details.scope:"module"`, and one with `details.scope:"model"` → both container.
    - T4: a model problem report object whose `roots` rows contain `"errors":0`, then a node check → C 0, summary 0.
    - T5: `perRoot` rows with 0 errors / 23 warnings, then 2 node checks in one batch → C 0, summary 2, summary batches 1.
    - T6: `perRoot` with the first row at `errors:1` and later rows at 0 → summary, not clean.
    - T7: a clean model check, then `update_node`, then a node check → C 0 (reset).
    - T8: a clean model check, then `print_node`, then a node check → C 1 (read-only does not reset).
    - T9: temp-file `data` with `details.scope:"model"` → unknown, so a following node check counts nowhere.
    - T10: all-zero `perRoot` rows with `details.modelProblems: 2` → summary.
    - T11: the exact header line (old columns in order, then the four new ones, full names).
    - T12: a clean module answer with a non-empty `details.moduleProblems`, then a node check → problems, counts nowhere.
    - T13: a module-qualified node ref `<uuid>/r:…(…)/<id>` → node.
    - T14: an empty `perRoot` list → clean.
    - T15: a bare name answered with `ok:false` `NOT_FOUND` → container + unknown.
    - T16: a clean model check, then a node check with `autoApplyQuickFixes:true`, then a node check → C 1 (the first),
      and the reset stops the second from counting.
    - T17: the truncated `"no problems found in 3 of 5 models"` → unknown.
    - T18: a subagent event with `parent_tool_use_id` set is ignored.
13. Real-transcript tests in the same module, following `test_analyze_runs.py:26, 850-867` (`STUDY_RUNS`, skipped when
    the directory is absent). They pin the Validation values below for the baseline, `runs-r19` and `runs-r22`
    (C calls / batches and summary calls / batches per model). The baseline lives outside `STUDY_RUNS`, in
    `~/MPSProjects/mcp-study-baseline/runs`. Use a second env var, defaulting to that path, and skip the test when it is
    absent.
14. Study skill, both copies: step 7 in `SKILL.md` adds "then
    `python3 $STUDY/scripts/families.py <baseline runs> <previous round> $RUNS > $RUNS/analysis/families.tsv`".
    `references/analysis.md` "Chains and scoring" says that C is counted by `families.py`, and defines the two
    after-columns in one line each.

### Bookkeeping (with commit 3)

15. Re-run the new script over the three directories the round-21 report used, and compare it with
    `runs-r22/analysis/families.tsv` (see Validation). Do not rewrite `HOTSPOT_REPORT_round21.md` or
    `review-families.md`; they are records. The archive entry states the corrected C values.
16. `docs-defects.md`:
    - Move A9 to `docs-defects-archive.md`, with the three commit ids, the F1 table, and the re-run numbers including the
      changed `C_model_checks` / `C_root_checks` rows. Update the archive sentence at `:8` and at `:58`.
    - Add a recurrence-watch row for half 1. Signature: "a Bash result containing `no matches found:`". Cells: any. First
      seen: baseline `S1-opus-1:27`. Remove the row after one round without an instance.
    - In D83's open row and in its recurrence-watch row, name `C_after_summary` as the signature.
17. Commit messages: `MPS-40209 - A9 …` (the study harness issue, as for A2–A8). Commit 1 changes product resources (the
    template and a shipped skill). If it should ship under its own issue, the user picks one before that commit.

## Validation

- `python3 -m unittest discover plugins/mcp-tools/study/scripts/tests` passes, for all modules, not only the new ones
  (118 tests pass today).
- `validate_skill_catalog.py` and `SkillCatalogReplicationTest` pass after commit 1.
- Re-run over `~/MPSProjects/mcp-study-baseline/runs`, `runs-r19` and `runs-r22` (reviewer prototype values, opus /
  sonnet):

  | column | baseline | round 18 | round 21 |
  |---|---|---|---|
  | `C_root_after_clean_model` (calls) | 48 / 0 (unchanged) | **0** / 0 (was 1 / 0) | **0 / 0** (was 5 / 6) |
  | `C_root_after_clean_model_batches` | 5 / 0 | 0 / 0 | 0 / 0 |
  | `C_after_summary` (calls) | 0 / 0 | 1 / 1 (`S3-opus-1:17`, `S3-sonnet-1:11`) | 0 / 4 (`S3-sonnet-1:[21-22]`, `S7-sonnet-1:[62-63]`) |
  | `C_after_summary_batches` | 0 / 0 | 1 / 1 | 0 / 2 |

  `C_model_checks` / `C_root_checks` change only where a module or bare-name check moved from node to container scope:

  | dir | run: old → new |
  |---|---|
  | `runs-r19` | S2-sonnet 1/3 → 2/2, S3-sonnet 0/2 → 1/1, S5-opus 1/1 → 2/0, S5-sonnet 0/3 → 3/0 |
  | `runs-r22` | S1-opus 6/2 → 7/1, S1-sonnet 6/3 → 8/1, S10-opus 0/1 → 1/0, S2-opus 5/1 → 6/0, S2-sonnet 0/5 → 2/3, S5-opus 0/3 → 3/0, S5-sonnet 0/2 → 2/0, S6-opus 3/3 → 5/1, S6-sonnet 6/3 → 8/1, S8-opus 1/1 → 2/0, S8-sonnet 0/2 → 2/0 |

  Every other column is byte-identical to the old TSV. Check this by diffing the two files after dropping the changed
  and new columns. Any deviation from these tables is reported, not silently accepted. The D5 `autoApplyQuickFixes` reset
  and the F6 `moduleProblems` rule were not in the prototype. Neither is expected to move these numbers (no node check
  follows `S6-*:62/73`, and `S7-opus-1:35` follows a non-clean check), but re-confirm.
- Template: build the `mcp-tools` plugin so that `classes/` is refreshed, restart MPS onto it
  (`plugins/mcp-tools/study/scripts/mps_control.sh restart` + SMOKE, as `SKILL.md` step 9 describes), run
  `install_skills.py` into a scratch study project, and confirm that its `AGENTS.md` carries the new paragraph and that
  `guidesSha256` differs from a round-21 project's guides. Ask the user before restarting MPS if another session is using
  it.
- Half 1 has no further automated check. The next full round's transcripts are the measurement (the recurrence-watch row).

## Rejected alternatives

- **Run the worker under bash** (`SHELL=/bin/bash`): it hides the failure from the study without helping users.
- **`setopt nonomatch` in a worker zshrc**: the same objection. The worker shell also runs under `env -i`, so it would
  need a `ZDOTDIR` as well.
- **Fix `families.py` in place in `runs-r22/analysis/`**: rejected because of F4.
- **Keep the errors-only definition of clean and only fix the row matching**: it would keep counting D83 as C
  (`S3-sonnet-1:21-22`, round 18 `S3-opus-1:17`).
- **Fold the families into `analyze_runs.py`**: a bigger change to a 1,100-line script with its own consumers. A separate
  script keeps the diff small, and merging can come later if the families stabilise.
- **File the `create-empty-project.md` snippet as its own D entry**: it is the same mechanism and a two-line edit, and the
  round-16 and round-21 S10 instances belong to A9's evidence.

## Out of scope

- The other `families.py` detectors (A, B, B′, D, F, G, H, X) and their known looseness. For example, `G_errors` counts
  every `is_error`, including the harness's own "No such tool available" error.
- Widening the read-only set of the reset rule (D5).
- The missing `Grep` / `Glob` tools in the worker CLI, which is a property of the CLI, not of MPS.
