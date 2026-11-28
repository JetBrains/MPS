# Skill Script Automation Study — Round 53 (2026-11-27)

Status: measurement round complete, not provisional. Scope on request: the **full matrix**, all 43 scenarios
(S1–S40b, S10 run last) × opus, n = 1 per cell, effort `medium`, `bypassPermissions`, call log on, an MPS restart and a
SMOKE before every module-bearing cell (39 SMOKEs). Purpose: measure the effect of the mcp-tools changes since round 52,
with a stop rule of three cells failing for reasons clearly tied to those changes. **40 of 43 PASS.** The three FAILs
(S12, S20, S38a) are all **unrelated** to the recent changes, so the stop rule never fired and the whole matrix ran. No
worker lost a single call to D158, D114, D70, CF-015 or D127. The one product-change effect that broke anything was a
**harness artefact**: D70 moved the S39 root pins, which were re-pinned by runbook step 1a before S39a/S39b ran (§4 H1).
No remedy was implemented.

Evidence: `~/MPSProjects/mcp-study/archive/runs/r53/`. Per run there are `{worker,server}.jsonl`, `*.meta.json`,
`*-install.json`, `*-mcp/`, `*.harness.log`, `*-worker.stderr` and `*.eval.md`. SMOKE has no `eval.md` by design.
`server-calllog.jsonl` is the call log of the window (3,682 lines, evaluator and observer traffic included).
`analysis/` holds `metrics.csv`, `phases.csv`, `tools.json`, `chains.json`, `errors.json`, `hotspots.md`,
`navigation.json` and `families.tsv` (rows for r51, r52 and this round). `observer/` holds the driver (`cell.sh`,
`s40.sh`, `gate.sh`), the evaluator brief, `verdicts.txt`, the S39 gate log, the pre-D70 pins (`pins-before/`) and
`compare51.py` / `compare51.md` (§1.2). S40 extras: `S40*-opus-1.{side-before,side-after,ports}.txt|log`, the replay
log and zip listings, `S40b-opus-1.archive-listings.txt`, and the workers' temp files in `*-worker-tmp/` (the 2.1 GB
unpacked `kajaverify` copy was deleted after the evaluation; S35's `$TMPDIR/kaja` leftover is under
`S35-opus-1-worker-tmp/`). `run:step` is the 1-based `tool_use` ordinal that `show_steps.py` prints.

## 0. Harness state

- **Measured surface:** HEAD `6c5a6e13e3be` on `261/vaclav/wave2`. Before the round, a direct probe confirmed that the
  running MPS already served D158 (an unknown top-level parameter gets `INVALID_REQUEST "Unknown parameter in …"`).
  MPS 261.25134 from sources, selector `MPSSRC2026.1`, port 64345. Cells ran 16:48Z–22:16Z.
- **Changes since round 52 (`7dc7e1f8c7f4`), product side:**
  - D158 `6c5a6e13e3be`: every tool rejects unknown top-level parameters;
  - D155 `397175144179`: default module and project MAKE is incremental;
  - D114 `156d3c90f366`: unqualified blueprint concept names are scoped, and collisions are rejected;
  - D70 `8414491a7f2d`: `print_node` JSON emits false boolean properties and preserves them on round-trip;
  - CF-015 `5926dd7cab6b`: `alter_structure` feature edits attach `languageBuild` and a MAKE reminder;
  - D127 `36f2311debcd`: an imports hint on a `parse_java_and_insert` rejection;
  - `169a2315e7e1`: close-project timeout wording and case-insensitive near-miss hints;
  - wave 1 `93bc835ddce8`: D138, D140–D141, D149–D153, D159–D163;
  - skill freshness and versioning (`05b99ee1d51c`, `d961abce9b40`, `31f9544f36a0`, `270c07426072`);
  - smodel literals for design-time identities `72172a776394`;
  - the toolset renames `e99e025a6d4b`;
  - the build-language skill revisions (D145–D148).
- **Consistency:** all 43 cell metas share `skillsSha256` `58ea4f8eb092…`, `guidesSha256` `5c73c8a53746…` and
  `effort: medium`. `otherOpenProjects` is empty everywhere. One MPS process per cell (`ISOLATION`
  `per-shared-fixture-restart` for fixtures, `per-round` for the synthesized S1, S10, S20, S21, S30).
- **Evaluators:** the project-scope `study-*` agents are not in this checkout, so every run was evaluated by a generic
  Opus subagent with one shared brief (`observer/eval_brief.md`). The brief asked, per run, for an attribution of every
  error envelope to the listed changes, and for a CLEAR / PLAUSIBLE / UNRELATED class on any failure. S8 and S40a were
  two-pass (an observer MAKE, an observer clean-room Ant replay), and S10 was checked after the observer reopened
  `-target`.

## 1. Results

### 1.1 Verdicts

| cell | verdict | recent-change attribution | note |
|---|---|---|---|
| S1–S11, S13–S19 | PASS | none | |
| S12 | **FAIL** | UNRELATED | criterion 5: the worker left an extra probe model `scratch_plus` so as not to touch `Probe`; intent met (`observerNote`) |
| S20 | **FAIL** | UNRELATED | criterion 6e: separate `TemplateDeclaration` + reference instead of `InlineTemplateWithContext`; the prompt does not ask for the in-line form (`observerNote`) |
| S21 | PASS | none | `return DevShell.this;` accepted for `return this;` (`observerNote`) |
| S22–S29 | PASS | none | S28 and S29 failed in r51 and pass now |
| S30 | PASS | none | 3b: named menu + Super, not in the accepted-shape list, accepted (`observerNote`); failed in r51 |
| S31–S37 | PASS | none | S37: the `node-ptr/` route; 72172a776394 helped (0 hand-built pointers) |
| S38a | **FAIL** | UNRELATED | criterion 5: the survival test uses an undeclared hint, not an explicit compact one; intent met (`observerNote`) |
| S38b | PASS | none | |
| S39a, S39b | PASS | none for the workers | on the **pre-D70 pins** criterion 1 would have failed in both (§4 H1) |
| S40a, S40b | PASS | none | variant G; S40a clean-room replay passed (183 `.java`, 6 icons, 282 classes); no side effects, no extra listeners |
| S10 | PASS | none | left on the Welcome screen as required |

Errors from recent changes in the server log: **0** "Unknown parameter" (D158), **0** concept-scoping or collision
rejections (D114). Server-side `ok:false` fell from 23 (r51 opus) to 15, every one of them a worker slip:
`INVALID_JSON` from hand-nested blueprints (5, the D88 watch), wrong roles or concepts, guessed names.

### 1.2 Comparison with round 51 (opus, same 41 cells, both at `medium`)

Round 52 ran only four cells, so round 51 is the last full-matrix baseline. S40a/S40b did not exist then and are left
out of the sums.

| metric | r51 sum | r53 sum | Δ % | r51 median | r53 median |
|---|---|---|---|---|---|
| pass | 38/41 | 38/41 | ±0 | | |
| turns | 2,521 | 2,597 | +3.0 | 48 | 49 |
| wall_s | 12,385 | 11,837 | −4.4 | 161 | 170 |
| tool_calls | 2,401 | 2,478 | +3.2 | 45 | 45 |
| mps_calls | 1,697 | 1,718 | +1.2 | 30 | 35 |
| errors | 28 | 20 | **−28.6** | 0 | 0 |
| retries | 21 | 16 | **−23.8** | 0 | 0 |
| cost_usd | 120 | 126 | +5.1 | 2 | 2 |
| cache_read | 251.2 M | 270.3 M | +7.6 | 2.72 M | 3.42 M |
| output_tokens | 1.021 M | 1.061 M | +3.9 | 13.6 K | 15.3 K |
| skill_read_bytes | 1.75 MB | 1.95 MB | +11.1 | 30.6 KB | 34.3 KB |
| skill_tool_bytes | 1.68 MB | 1.69 MB | +0.6 | 40.8 KB | 41.6 KB |
| server_ms | 571 s | 258 s | **−54.8** | 12.7 s | 5.3 s |

**Where the server time went:** `alter_nodes MAKE` took 459 s over 94 calls in r51 and 132 s over 91 calls now
(**−71 %**). The ratio of `rebuild:true` to default MAKEs in the transcripts is about 2:1 in both rounds, so the drop
is D155's incremental default plus whatever the rebuilds no longer redo. Wall time fell by less (−4 %) because model
turns dominate, at about 6 s per turn.

The pass count is unchanged, but the failing set moved. S28, S29 and S30 failed in r51 and pass now. S12, S20 and S38a
fail now on criteria-letter gates the evaluators judged unrelated to the product; all three carry an `observerNote`
saying the intent was met.

Per cell (turns, wall s, tool calls, MCP calls, errors, cost; r51 → r53):

| cell | pass r51 → r53 | turns | wall s | tool calls | MCP calls | errors | cost $ |
|---|---|---|---|---|---|---|---|
| S1 | ✓ → ✓ | 82→90 | 337→322 | 80→83 | 52→52 | 0→0 | 3.55→3.87 |
| S2 | ✓ → ✓ | 51→51 | 181→189 | 45→49 | 29→35 | 1→0 | 2.00→2.47 |
| S3 | ✓ → ✓ | 18→20 | 45→55 | 15→18 | 7→8 | 0→0 | 0.80→0.84 |
| S4 | ✓ → ✓ | 48→47 | 146→126 | 46→43 | 35→35 | 0→0 | 1.65→2.11 |
| S5 | ✓ → ✓ | 24→27 | 62→69 | 22→25 | 18→21 | 0→0 | 0.79→0.95 |
| S6 | ✓ → ✓ | 55→47 | 215→170 | 51→45 | 36→30 | 1→0 | 2.12→2.02 |
| S7 | ✓ → ✓ | 35→31 | 128→102 | 31→28 | 22→19 | 0→0 | 1.34→1.59 |
| S8 | ✓ → ✓ | 30→32 | 159→167 | 27→29 | 17→17 | 0→0 | 1.34→1.54 |
| S9 | ✓ → ✓ | 21→23 | 65→61 | 18→20 | 12→14 | 1→1 | 0.75→0.84 |
| S10 | ✓ → ✓ | 26→21 | 73→54 | 23→18 | 9→7 | 0→0 | 0.77→0.72 |
| S11 | ✓ → ✓ | 25→23 | 78→64 | 23→21 | 19→17 | 1→2 | 0.80→0.84 |
| S12 | ✓ → ✗ | 40→49 | 139→188 | 37→46 | 29→41 | 0→0 | 1.38→1.72 |
| S13 | ✓ → ✓ | 31→29 | 100→91 | 28→26 | 22→21 | 0→0 | 0.98→1.01 |
| S14 | ✓ → ✓ | 12→12 | 43→41 | 10→10 | 6→6 | 0→0 | 0.59→0.62 |
| S15 | ✓ → ✓ | 29→28 | 107→78 | 26→25 | 18→17 | 1→0 | 0.99→1.00 |
| S16 | ✓ → ✓ | 37→29 | 134→90 | 34→26 | 29→22 | 0→0 | 1.19→0.98 |
| S17 | ✓ → ✓ | 47→61 | 215→226 | 44→58 | 28→42 | 0→1 | 2.62→2.67 |
| S18 | ✓ → ✓ | 49→42 | 161→118 | 46→39 | 30→26 | 1→0 | 1.64→1.56 |
| S19 | ✓ → ✓ | 50→45 | 154→116 | 47→42 | 40→35 | 0→0 | 1.55→1.48 |
| S20 | ✓ → ✗ | 98→107 | 516→530 | 95→104 | 70→72 | 2→1 | 4.26→4.91 |
| S21 | ✓ → ✓ | 103→106 | 561→541 | 101→103 | 75→78 | 0→1 | 4.47→5.03 |
| S22 | ✓ → ✓ | 121→114 | 560→513 | 118→112 | 94→77 | 2→1 | 5.25→5.24 |
| S23 | ✓ → ✓ | 31→28 | 106→85 | 28→25 | 22→19 | 1→1 | 1.23→1.25 |
| S24 | ✓ → ✓ | 82→73 | 379→330 | 79→70 | 59→53 | 2→0 | 3.17→3.17 |
| S25 | ✓ → ✓ | 36→39 | 114→109 | 33→37 | 27→27 | 0→0 | 1.27→1.43 |
| S26 | ✓ → ✓ | 36→34 | 114→102 | 33→31 | 25→21 | 0→0 | 1.37→1.49 |
| S27 | ✓ → ✓ | 54→62 | 212→248 | 51→59 | 45→45 | 0→0 | 2.18→2.54 |
| S28 | ✗ → ✓ | 46→56 | 177→185 | 43→52 | 30→39 | 1→1 | 1.79→2.03 |
| S29 | ✗ → ✓ | 21→32 | 63→108 | 18→29 | 13→21 | 0→0 | 0.85→1.22 |
| S30 | ✗ → ✓ | 138→151 | 887→915 | 136→149 | 84→85 | 3→4 | 7.98→9.37 |
| S31 | ✓ → ✓ | 142→211 | 1106→1314 | 140→209 | 89→142 | 2→1 | 12.00→14.43 |
| S32 | ✓ → ✓ | 75→79 | 471→507 | 71→75 | 47→47 | 2→1 | 4.12→4.84 |
| S33 | ✓ → ✓ | 170→105 | 1077→637 | 168→103 | 109→70 | 2→0 | 11.21→6.42 |
| S34 | ✓ → ✓ | 104→118 | 610→569 | 100→114 | 73→82 | 0→0 | 6.02→5.18 |
| S35 | ✓ → ✓ | 118→121 | 773→614 | 116→118 | 75→79 | 1→0 | 7.27→6.21 |
| S36 | ✓ → ✓ | 41→49 | 155→151 | 37→45 | 26→28 | 0→1 | 1.58→1.97 |
| S37 | ✓ → ✓ | 30→30 | 110→85 | 27→27 | 17→15 | 1→0 | 1.09→1.15 |
| S38a | ✓ → ✗ | 132→143 | 701→789 | 130→141 | 95→106 | 2→0 | 6.89→8.00 |
| S38b | ✓ → ✓ | 119→92 | 598→496 | 116→90 | 91→61 | 0→1 | 4.63→4.73 |
| S39a | ✓ → ✓ | 63→81 | 290→395 | 60→78 | 43→54 | 1→2 | 2.50→4.25 |
| S39b | ✓ → ✓ | 51→59 | 263→287 | 48→56 | 30→32 | 0→1 | 2.27→2.69 |
| S40a | – → ✓ | –→39 | –→159 | –→36 | –→18 | –→0 | –→1.64 |
| S40b | – → ✓ | –→98 | –→588 | –→95 | –→48 | –→2 | –→5.83 |

The largest swings are single-run variance with n = 1, not product effects:
- **S33 −65 calls:** a shorter discovery path.
- **S38b −26 calls:** under the size band.
- **S31 +69 calls:** about 23 of them on a `java.awt.List` import-shadowing detour (§3); the rest is one-edit-per-call
  volume.

## 2. Effect of the recent changes, per change

- **D158 (unknown top-level parameters rejected):** 0 hits in 43 cells. Workers send only documented top-level
  parameters, and the one invented key (S32 run:47, `parameters.postProcess.importModels`) was nested, which the older
  nested check rejects. No regression, and no saving either.
- **D155 (incremental default MAKE):** no cell was hurt. Every default MAKE built what the next step needed (S13, S16,
  S31, S33, S35, S38a/b checked explicitly by their evaluators). It is the main source of the −55 % server time. Most
  workers still pass `rebuild:true` themselves, because the generator and structure skills advise it after template or
  structure edits, so the change is under-exercised on the generator cells (S15's evaluator noted it). One harmless
  side effect: whole-project MAKEs answer "Nothing to make" more often (S33, S35, S38b), which costs a call where the
  worker double-checks.
- **D114 (blueprint concept names scoped):** 0 hits. Every worker blueprint in the round used fully qualified concept
  names, so the scoping path was never entered. Not measured; a cell would need a blueprint with short names.
- **D70 (false booleans in `print_node` JSON):** no worker effect. It changed the S39 deep-hash pins (§4 H1) and made
  one criterion's wording stale (S38a criterion 1, "showInUI false (printed absent)").
- **CF-015 (`languageBuild` and MAKE reminder on `alter_structure`):** helpful in S2, S4, S24, S25, S27 and S28. The
  `stale` status led straight to the MAKE, and no evaluator found a wasted call.
- **D127 (imports hint on a `parse_java_and_insert` rejection):** not triggered. S31 shows the gap it does not cover
  (§3 item 2).
- **72172a776394 (smodel literals in the skills):** S37 took the `node-ptr/` route with 0 hand-built pointers.
- **Build-language revisions (D145–D148):** S40a and S40b pass in their first full-matrix round (S40a with
  generator declarations from Reload, criterion 3), with no side effects outside the project.

## 3. Hotspots (not caused by the recent changes)

1. **Hand-nested inline JSON → `INVALID_JSON`** (S36, S38b, S39a, S39b, S40b; 5 server envelopes; S38b's was a
   placeholder string passed as `parameters`): the open D88
   watch item. Every worker recovered by generating the JSON with Python.
2. **No hint on an *accepted* `parse_java_and_insert` whose simple type names resolve to the wrong class** (S31,
   run:145, 157–188, about 23 calls). A `java.awt` stub import made `List` resolve to `java.awt.List`, and the code went
   in with type errors and no hint. D127 fires only on a rejection. Candidate new defect.
3. **Placeholder statements swapped for `editor component` expressions after a parse** (S33, S34, S35, S38b; 5–20
   calls each): a known parser limit, and the largest repeated waste in the editor-test cells.
4. **Runtime-source reading for editor and context-assistant APIs** (S30 run:120–141, S35 run:62–69, S38a run:112–113).
   S38a unzipped a source jar from outside the project (`/Users/vaclav/work/temp/…`), the `X_outside_project` signal.
5. **Weaving anchor detour** (S24, about 11 calls including 2 MAKEs): a label-based `run` anchor placed the woven
   method last. A note recommending the by-name anchor on `mainContextNode` would save it.
6. **Model-wide `check_root_node_problems` without totals** (S3 run:10, 2 extra calls).
7. **`typeConceptRef` takes a concept name, not the editor alias** (S11 run:6, 1 call).

`hotspots.md` ranks the chains the same way as round 51. Bash→Bash skill reading leads, then
`get_compact_project_structure` followed by Bash parsing of the temp file. Neither family moved noticeably;
`families.tsv` has the counters.

## 4. Harness findings

- **H1. D70 moved the S39 root pins.** Step 1a's gate failed on both unchanged fixtures (`alerts3` 60 equal / 2
  deep-diff, `alerts3-hard` 65 / 2). The two roots, `editor/Alert_MutedKeyword_Actions` and
  `tests@tests/T4_UnmuteTwoStep`, store a `false` (`BooleanConstant.value`, `Alert.muted`) that the deep print now
  emits. Only the `deep` hashes moved; every `text` hash stayed equal. Both copies were re-pinned by the same
  procedure, and `check` then gave 62/62 and 67/67. The reason is recorded in `fixtures/inputs/s39/FIXTURE.md`
  ("Re-pinned 2026-11-27"). **The re-pinned `prints/alerts3*/roots.tsv` and the FIXTURE.md note are uncommitted** until
  the user says go. Both S39 evaluators confirmed that on the old pins criterion 1 would have failed for an untouched
  root, so a round run without the gate would have shown two false FAILs caused by D70.
- **H2. Criteria wording to revise** (suggestions from the `observerNote`s; not applied):
  - S12 criterion 5: allow an extra probe model.
  - S20 criterion 6e: accept a `TemplateDeclarationReference` to a template with context.
  - S21 criterion 2: accept `<Name>Shell.this`.
  - S30 3b: add "named menu + Super".
  - S38a criterion 5: say whether an undeclared survival hint counts; criterion 1: drop "(printed absent)" after D70.
- **H3. A Kaja temp leftover between cells.** S35's worker left `$TMPDIR/kaja`, which S40 preflight 5 caught and moved
  aside. S40a's worker then wrote to the same `$TMPDIR/kaja` name. The preflight is what keeps this from leaking across
  cells. Keep it, and consider sweeping `$TMPDIR/[Kk]aja*` after every Kaja cell (S13, S16, S35), not only before S40.
- **H4. Version skew seen by S10's worker.** The running MPS reports 261.25134, while the checkout's `build.txt` is
  261.27258. The worker generated `migration.xml` from the checkout, which is harmless while both give baseline 261.
- **H5. No project-scope `study-*` agents in this checkout** (untracked files). Every evaluation used the generic brief
  in `observer/eval_brief.md`. The verdicts follow the same `analysis.md` section, but with no second-reviewer
  calibration.

## 5. Next

- Decide on committing the S39 re-pin (H1) and the five criteria edits (H2).
- File the S31 accepted-parse shadowing hint (§3 item 2) as a defect if it recurs. Add an S-cell blueprint that uses
  short concept names if D114 is to be measured at all.
- D155 is validated as safe. To measure it, a generator cell would need to run without the skills' `rebuild:true`
  advice, which is a skill-text change, not a product one.
