# Plan: skill reference navigation (D50)

Status: M-0 implemented (2026-09-25); D-1..D-4 not started. Defect record: D50 in
`study/docs-defects.md`. Prior work this builds on: D44 (per-section split, archived;
`docs/d44-split-skill-references-task-list.md`) and the H7 attribution agenda
(`docs/skill-reading-context-investigation-plan.md`).

Marking: **[M: source]** = measured from transcripts; **[I]** = inferred. Citations are
`run:step` (1-based `tool_use` ordinal, as in `show_steps.py`). Evidence directories:
baseline `~/MPSProjects/mcp-study-baseline/runs`, round 2 `runs/`, round 8 `runs-r8`,
round 10 `runs-r11`, round 11 `runs-r12`, round 12 `runs-r13`, round 13 `runs-r14` (all under
`~/MPSProjects/mcp-study/` except the baseline). Numbers come from ad-hoc parsers of the worker
JSONL (scratch, not committed). They count what `analyze_runs.py` counts, plus Bash reads through a
persisted `cd`, and they attribute each call to a phase by the skill directory it touches.

## Summary

- **Only one phase is off the floor: constraints.** In S1-sonnet every other aspect already
  costs 0–3 skill messages. Constraints costs **10–18 messages / 18–22 calls / 73–118 KB** in each
  post-D44 round, against **2 calls / 30 KB** for opus's leanest run [M: E2, E3]. It is ~80 % of
  S1-sonnet's excess over the floor [I: E3 minus floor].
- **Breadth does not depend on the model; batching does.** Opus and sonnet read the same number of
  distinct reference files per S1 run (21–28 vs 25–27). Opus reads 1.45–1.62 files per call,
  sonnet 0.70–0.89 [M: E1b]. D44 made files smaller and more numerous. Sonnet reads roughly one
  file per call, so the split raised its calls, and the bytes stayed where they were.
- **The index is read, and it fans out.** In the constraints phase, 46 % of the sonnet calls are
  first reads of files that `SKILL.md` names [M: E4]. The Section index is keyed by technique
  (`ListScope`, `CompositeScope`, `rootsIncludingImported`), not by need. One scope need matches
  5 of 9 referent rows, and none of the three reference-site pattern files the workers choose
  carries a JSON blueprint [M: A2].
- **Re-reads are caused by compaction, not by carelessness.** All **23 of 23** post-D44 whole-file
  re-reads (25/25 across all rounds) straddle an auto-compaction boundary [M: E5]. In S1-sonnet
  the first compaction fires at `:53`/`:58`/`:59`, in the middle of the constraints phase. Skill
  text is 60–77 % of the bytes added before it. Each compaction takes 131–183 s, which in r14 was
  298 s, or 25 % of wall-clock. A "do not re-read" directive would make the worker write blueprints
  from a lossy summary.
- **Recommended first step:** **D-1**, one edit to `mps-aspect-constraints/SKILL.md`: a need-keyed
  index with one complete file set per row, plus a "one need at a time" read→write→validate
  directive. Ship it in the same treatment as the mechanical fixes D-2 (index hops) and D-3 (grep
  pre-emption), and D-4 (a JSON blueprint added to the one scope file that lacks it). Measurement
  prerequisite M-0 comes first, because the current analyzer cannot check the criteria (§6).

## 1. Evidence

### E1. Whole-run skill navigation

Legend:
- **nav calls** = Read/Bash/Grep touching a skills directory, excluding `Skill` loads; **msgs** = the
  distinct assistant messages carrying them.
- **analyzer** = `skill_reads` in `metrics.csv`.
- **grep C/S/F** = catalog-wide / one skill or its `references/` / one file.
- **cmp** = auto-compactions (`compact_boundary` events).

| round | run | turns | analyzer | nav calls | msgs | nav KB | `Skill` loads (KB) | grep C/S/F | re-reads (gap) | index hops | cmp |
|---|---|---|---|---|---|---|---|---|---|---|---|
| base | S1-opus-1 | 181 | 24 | 26 | 25 | 152.9 | 6 (67.5) | 3/1/6 | 0 | – | 1 |
| base | S1-sonnet-1 | 148 | 9 | 9 | 9 | 160.1 | 9 (80.5) | 0/0/0 | 1 (15) | – | 2 |
| 8 | S1-sonnet-1 | 140 | 45 | 45 | 44 | 188.7 | 6 (78.0) | 4/1/20 | 1 (20) | – | 2 |
| 10 | S1-sonnet-1 | 164 | 43 | 43 | 43 | 156.3 | 6 (78.2) | 1/2/4 | 5 (7–26) | 2 | 3 |
| 10 | S2-sonnet-1 | 158 | 31 | 31 | 19 | 140.9 | 7 (95.1) | 1/0/0 | 6 (5–26) | 1 | 2 |
| 11 | S6-sonnet-1 | 130 | 26 | 26 | 21 | 113.4 | 5 (71.1) | 1/2/1 | 2 (58, 78) | 2+ | 2 |
| 11 | S7-sonnet-1 | 129 | 12 | 13 | 9 | 49.6 | 3 (50.0) | 0/0/0 | 3 (32–97) | 0 | 2 |
| 11 | S9-sonnet-1 | 45 | 9 | 9 | 7 | 67.3 | 3 (50.9) | 1/0/1 | 0 | 1 | 0 |
| 12 | S1-opus-1 | 87 | 13 | 13 | 13 | 106.4 | 1 (22.1) | 0/0/1 | 0 | 0 | **0** |
| 12 | S1-sonnet-1 | 157 | 36 | 36 | 16 | 120.3 | 5 (62.0) | 0/1/1 | 3 (16) | 2 | 2 |
| 12 | S3-sonnet-1 | 31 | 9 | 9 | 6 | 34.0 | 2 (39.0) | 0 | 0 | 1 | 0 |
| 13 | S1-opus-1 | 100 | 16 | **20** | 20 | 145.3 | 1 (22.1) | 0/3/3 | 0 | 0 | 1 |
| 13 | S1-sonnet-1 | 149 | 36 | 36 | 30 | 158.8 | 8 (92.3) | 1/4/1 | 5 (25–35) | 2 | 2 |
| 13 | S3-opus-1 | 21 | 3 | 3 | 3 | 15.5 | 1 (22.1) | 0 | 0 | 0 | 0 |
| 13 | S3-sonnet-1 | 33 | 13 | 13 | 5 | 68.4 | 1 (22.1) | 0 | 0 | 1 | 0 |

[M: parsers over the listed transcripts; `turns`, `analyzer` from each `analysis/metrics.csv`.]

- **The analyzer undercounts opus** (16 vs 20 in r13 `S1-opus-1`). Opus `cd`s into a skills
  directory and then reads relative paths in later Bash calls (`:52, :54, :56, :74`), and those
  calls do not match `SKILL_DIR_RE` [M].
- **D44's round-10 goal failed on every post-D44 S1 run.** The goal was S1 skill navigation ≤ 25
  and no greps against `references/`. Post-D44 S1-sonnet runs made 43/36/36 calls, and greps under
  `references/` appear in rounds 10, 12 and 13 [M].
- **Model difference [M]:** sonnet loads `SKILL.md` through the `Skill` tool (5–8 per S1 run,
  62–92 KB, 0 extra messages). Opus `cat`s `SKILL.md` together with `ls -R references` (5–6 of its
  nav calls).

### E1b. Breadth vs batching (S1)

| run | reference-file reads (distinct) | nav calls | files / call | files / msg |
|---|---|---|---|---|
| r10 S1-sonnet-1 | 30 (25) | 43 | 0.70 | 0.70 |
| r12 S1-sonnet-1 | 29 (26) | 36 | 0.81 | 1.81 |
| r13 S1-sonnet-1 | 32 (27) | 36 | 0.89 | 1.07 |
| r12 S1-opus-1 | 21 (21) | 13 | 1.62 | 1.62 |
| r13 S1-opus-1 | 29 (28) | 20 | 1.45 | 1.45 |

[M] Sonnet's parallel batching varies between rounds on the same skills: the same 22 constraints
calls landed in 10 messages in r12 and in 17 in r13.

### E2. Constraints phase across rounds

Phase = from the first constraints-skill access to the step before the next phase's first skill
access.

| round | run | phase span (calls) | skill calls (+loads) | msgs | KB | grep C/S/F | re-reads | files |
|---|---|---|---|---|---|---|---|---|
| base | S1-opus-1 | 65–99 (35) | 11 (+1) | 11 | 65.1 | 0/1/3 | 0 | 6 |
| base | S1-sonnet-1 | 33–56 (24) | 5 (+3) | 5 | 120.7 | 0/0/0 | 1 | 4 |
| 2 | S1-opus-1 | 41–54 (14) | 5 (+1) | 5 | 39.5 | 0/0/1 | 0 | 5 |
| 8 | S1-sonnet-1 | 26–85 (60) | 30 (+2) | 29 | 126.0 | 3/1/13 | 1 | 9 |
| 10 | S1-sonnet-1 | 31–72 (42) | 18 (+2) | 18 | 85.4 | 0/0/0 | 3 | 14 |
| 12 | S1-opus-1 | 43–62 (20) | **2** (+0) | **2** | **30.1** | 0/0/0 | 0 | 7 |
| 12 | S1-sonnet-1 | 35–95 (61) | 22 (+1) | 10 | 73.1 | 0/1/1 | 3 | 15 |
| 13 | S1-opus-1 | 45–63 (19) | 7 (+0) | 7 | 58.0 | 0/2/1 | 0 | 14 |
| 13 | S1-sonnet-1 | 32–81 (50) | 22 (+2) | 17 | 118.0 | 1/3/1 | 4 | 14 |
| 8 | S2-sonnet-1 | 9–48 (40) | 7 (+1) | 7 | 24.4 | 0/1/1 | 0 | 3 |
| 10 | S2-sonnet-1 | 56–100 (45) | 10 (+1) | 6 | 27.6 | 0/0/0 | 3 | 5 |

[M] The baseline read 5 whole files, including the 48 KB `referent-constraints.md`. After D44 the
same need takes 18–22 calls over 14–15 files. The bytes are about the same (73–118 KB vs 121 KB).
S2 is the out-of-sample check: its only constraint is a property validator.

### E3. Per-phase cost in S1 (skill calls / messages / KB) and the empirical floor

| phase | r12 sonnet | r13 sonnet | r12 opus | r13 opus | floor (msgs) |
|---|---|---|---|---|---|
| structure | 3 / 1 / 11.9 | 3 / 2 / 12.1 | 2 / 2 / 23.0 | 2 / 2 / 23.1 | 1 |
| editor | 0 / 0 / 0 | 3 / 3 / 3.9 ¹ | 4 / 4 / 24.1 | 4 / 4 / 21.7 | 1 |
| **constraints** | **22 / 10 / 73.1** | **22 / 17 / 118.0** | 2 / 2 / 30.1 | 7 / 7 / 58.0 | **2** |
| typesystem | 6 / 2 / 22.6 | 3 / 3 / 10.0 | 2 / 2 / 6.6 | 3 / 3 / 22.2 | 2 |
| behavior | 4 / 2 / 12.6 | 2 / 2 / 9.0 | 2 / 2 / 21.1 | 3 / 3 / 18.4 | 2 |
| samples | 0 | 2 / 2 / 5.8 | 0 | 0 | 1 |
| **run** | 36 / 16 | 36 / 30 | 13 / 13 | 20 / 20 | **≈ 9–10** |

¹ These are `mps_dump.py` runs (D58), not reading.

- **Floor [I from M]:** the best observed run for each phase, rounded: one `SKILL.md` access plus
  one batch.
- **r13 S1-sonnet excess:** 30 − 10 = 20 messages. Constraints account for 15 of them.

### E4. Failure-mode shares (post-D44 rounds 10–13, 16 runs, 275 nav calls)

| mode | all | sonnet (237) | opus (38) | constraints phase, S1+S2 sonnet (72) |
|---|---|---|---|---|
| first read of a file the owning `SKILL.md` names | 91 (33 %) | 81 (34 %) | 10 (26 %) | **33 (46 %)** |
| read in a companion skill (e.g. `mps-model-manipulation` during constraints) | 30 (11 %) | 26 | 4 | 7 (10 %) |
| `SKILL.md` / version-file read (not `Skill`) | 29 (11 %) | 16 | 13 | – |
| **whole-file re-read** | 23 (8 %) | 23 (10 %) | 0 | **13 (18 %)** |
| first read of a file `SKILL.md` does not name | 18 (7 %) | 14 | 4 | 3 |
| `ls` / `find` of a skill directory | 17 (6 %) | 17 | 0 | 4 |
| shipped script run (legitimate) | 15 (5 %) | 15 | 0 | 1 |
| **index hop** (read a split-dir index, then its sections) | 12 (4 %) | 12 | 0 | 2 |
| grep in one skill or its `references/` | 12 (4 %) | 9 | 3 | 4 |
| grep in one file | 12 (4 %) | 8 | 4 | 2 |
| script source / example read | 9 (3 %) | 9 | 0 | – |
| **catalog-wide grep** | 5 (2 %) | 5 | 0 | 1 |
| read of a non-existent path | 2 (1 %) | 2 | 0 | 2 |

[M] Each call is counted once, under the first mode that applies, in table order.

### E5. Re-reads vs auto-compaction

| run | compactions (step: pre-tokens, seconds) | re-read steps | straddle a compaction |
|---|---|---|---|
| r10 S1-sonnet-1 | `:53` 170 K 141 s; `:77` 170 K 148 s; `:117` 167 K 183 s | 58, 59, 60, 84, 122 | 5/5 |
| r10 S2-sonnet-1 | `:61` 167 K 175 s; `:115` 168 K 138 s | 63, 64, 79, 127–129 | 6/6 |
| r11 S6-sonnet-1 | `:42` 167 K 180 s; `:88` 169 K 157 s | 85, 105 | 2/2 |
| r11 S7-sonnet-1 | `:37` 172 K 159 s; `:84` 168 K 153 s | 39, 92, 103 | 3/3 |
| r12 S1-sonnet-1 | `:58` 168 K 149 s; `:119` 169 K 137 s | 62, 63, 64 | 3/3 |
| r13 S1-sonnet-1 | `:59` 167 K 167 s; `:118` 168 K 131 s | 63, 65, 69, 70 | 4/4 |
| r12 S1-opus-1 | none (87 turns, 106 KB of skill text) | – | – |
| r13 S1-opus-1 | `:82` 167 K 45 s | – | – |

[M: `compact_boundary.compact_metadata`]

- **Every re-read comes 1–17 steps before a blueprint write** (`Write`, insert or update), 18 of 23
  within 8 [M].
- **Skill text dominates the bytes added before the first compaction:** 77 % (r13 S1-sonnet),
  60 % (r12), 64 % (r10), 70 % (r13 opus) [M].
- **Compaction is a wall-clock hotspot that no round report counts:** 298 s of 1,196 s in r13
  S1-sonnet, and 472 s of 1,673 s in r10 [M].

### E6. Accounting note: `metrics.csv` cache-read is inflated

- **Cause:** `analyze_runs.py` sums `usage` over every `assistant` event. Stream-json repeats one
  message's usage on each of its content blocks.
- **Size:** the `result` event's `usage.cache_read_input_tokens` equals the per-message
  de-duplicated sum. `metrics.csv` is **1.5–3.4× larger** (r13 S1-sonnet: 26.22 M vs 13.53 M; r13
  S1-opus: 13.49 M vs 6.24 M) [M: 22 runs checked].
- **Real per-message context** in S1 cells is 93–116 K. The study's rule of thumb is "a turn ≈
  150–175 K", which is ~2× too high. Within the constraints phase the mean is 101–127 K per message
  [M].
- **Consequence:** cross-round cache-read deltas carry the ratio's variance (baseline S3-opus 3.37
  vs r13 2.08). Savings below are given in both units.

## 2. Failure modes

| # | mode | what happens | evidence | share |
|---|---|---|---|---|
| F1 | **Technique-keyed index fans out for one need** | The worker has a need ("reject values < 1"; "offer candidates except the referring root"). The rows name techniques, so it reads several rows to decide which technique it needs, before it writes anything. | r13 `S1-sonnet-1:33–:50`: 18 calls, 14 files, 2 needs, before the first write at `:66`. r12 `:36–:48`: 13 reads before the first insert at `:58`. r10 `:32–:43, :51–:56`. For the scope need it touched choosing-scope-style, imperative, calculator example, computed-sequences ×2, cross-model-filtered, `scope-helpers`, `scope-fqn-reference/*`: 5 of 9 referent rows plus 2 Reference-Index files | 46 % of constraints calls [M] |
| F2 | **The needed JSON spans files and skills** | The inserted scope blueprints use concepts that only a 6-file set covers, over 2 skills (`computed-sequences-blueprint`, `concept-roots`, `scope-concept-fqns`, `validator-example`, `dot-expression-basics`, `golden-rules` or `derived-getter`). The three reference-site patterns workers pick carry **0** JSON concept entries | greedy set cover over concepts in r12/r13 `S1-sonnet-1` constraints inserts [M]; A2 | drives F1 and F4 |
| F3 | **Compaction erases the reading, then re-read before the write** | Reading ahead for 2 needs pushes the context over ~167 K mid-phase. The summary drops the file text, so the worker re-reads right before the blueprint | E5: 23/23 re-reads straddle a compaction | 18 % of constraints calls; 8 % overall [M] |
| F4 | **Full-text grep for a symbol** | The worker looks up where a concept, operation or tool name is documented, not a topic. About 21 of the 27 search terms are symbols: `NodeReferentConstraint`, `ancestor<`, `NPEEqualsExpression\|:ne:`, `forNamedElements`, `WhereOperation`, `virtualPackage`, `MOVE_CHILD`, `mps_mcp_parse_java_and_insert`, `SLinkListAccess`, … | catalog-wide: r13 `S1-sonnet-1:41` (10.6 KB), r10 `S1-sonnet-1:123` (10.8 KB), r10 `S2-sonnet-1:31` (`*/references/*.md`, 23.0 KB), r11 `S6-sonnet-1:23`, r11 `S9-sonnet-1:20` (14.0 KB); skill-wide: r13 `S1-sonnet-1:36, :44, :48`, r13 `S1-opus-1:52, :55, :73` | 29 greps, 10 % [M] |
| F5 | **Index hop** | "Start here" names a split directory's index file; its sections come one call later | r13 `S1-sonnet-1:84`→`:85` (typesystem `json-blueprints.md`), `:100`→`:101` (behavior `method-declarations.md`); r12 `:113`→`:114–:115`; r11 `S6-sonnet-1:46`→`:48–:51` (`macro-catalog.md`), `:101`→`:102–:103` | 12 calls, 4 % [M] |
| F6 | **Stale pointer invites whole reads or line ranges** | `mps-model-manipulation/SKILL.md` "Minimum reading set": "That file carries its own jump table — open the one section". D44 removed that block from `dot-expression-basics.md` (24 KB). Sonnet reads the file whole; opus line-ranges it | whole: r10 `S1:41`, r13 `S1:43`, r11 `S6:42`, `S9:14` (24–27 KB each); ranges: r13 `S1-opus-1:56` (`sed -n 100,140p; 490,535p`) | 4 × 25 KB [M] |
| F7 | **Path guesses and listings** | Sibling-folder guess after a split | r12 `S1-sonnet-1:59–:60` (`computed-sequences-*.md` under `scope-fqn-reference/`, not found), then `:61` `ls` and the correct re-read at `:62–:63` | 19 calls, 7 % [M] |
| F8 | **Sonnet batches less than opus** | Same breadth (E1b), 2× the calls. The Section index header already says "one parallel batch"; sonnet complies in some rounds and not in others | E1b; r12 vs r13 constraints: 22 calls in 10 vs 17 messages | [M] |

Out of D50's scope, already filed by a peer and uncommitted in the tree: script source reads in S3
(**D60**, `S3-sonnet-1:17–:19`); `mps_dump.py shape` on the wrong dump kind (**D58**). Correction to
round-13 §4: `S1-sonnet-1:48` greps `mps-model-manipulation/`, not the constraints references [M].

## 3. Current-state audit of the skills

### A1. Owning `SKILL.md` indexes (blueprint, HEAD `7c4dfb1eaa78`)

| skill | `SKILL.md` | references (files / KB) | job index in `SKILL.md` | keyed by | points at split-dir index files | gap |
|---|---|---|---|---|---|---|
| `mps-aspect-constraints` | 13.1 KB | 30 / 104 | Section index, 15 rows, "one row, one read" | **technique** | Reference Index: `property-constraints.md`, `referent-constraints.md`, `scope-fqn-reference.md` | no row for "candidates minus some"; the validator need spans 3 rows (shape, FQNs, JSON) |
| `mps-aspect-structure-concepts` | 11.3 KB | 14 / 37 | Section index, 12 rows | operation (= the need) | no | none measured: 1–2 messages (E3) |
| `mps-model-manipulation` | 17.8 KB | 39 / 140 | Minimum reading set (body kind → 1 file) + symptom Reference Index | body kind / symptom | no | F6 stale sentence; the one file is 24 KB |
| `mps-aspect-typesystem` | 10.0 KB | 14 / 45 | "Start here" line only | need | yes: `json-blueprints.md` | a checking-rule start file with 0 JSON (A2) |
| `mps-aspect-behavior` | 12.6 KB | 16 / 47 | "Start here" line only | need | yes: `method-declarations.md` | F5 |
| `mps-aspect-generator` | 12.9 KB | 34 / 121 | "Start here" line only | need | yes: `macro-catalog.md` | F5; no Section index (named in D50's own row) |

[M: file sizes from the blueprint; `git log` shows no constraints edit since D44 `eca11cfb2977`,
so rounds 10–13 measured this text.]

### A2. Needs the workers had, and the path the docs give

| need (pattern level) | cells | docs path today (hops) | files that hold what was written | one file? |
|---|---|---|---|---|
| property validator (bound, non-blank) | S1, S2 | Start here → `concept-roots.md`; Section index gives 3 rows: shape, FQNs, JSON (1–2 hops, 3–4 files) | `concept-roots.md` + `property-constraints/validator-example-compound-cardinality.md` (5.5 KB, 7 JSON concepts, includes the `NodePropertyConstraint` skeleton) | **2 files, self-sufficient**; the index does not say so |
| reference scope: default candidates minus the referring or enclosing node | S1 | 5 candidate rows. `cross-model-filtered-scope.md` has the exact Kaja `Require` idiom ("excluding `contextNode` itself") in **surface syntax only** (0 JSON). JSON only in `computed-sequences-blueprint.md` (12.9 KB, anonymous-class variant) and the calculator example | ≥ 4 files over 2 skills (F2) | **no** |
| non-typesystem checking rule with a warning | S1 | Start here → `non-typesystem-checking.md` (0 JSON) → `json-blueprints.md` (index) → sections; `messages-and-helpers.md` for warning/`messageTarget` (3 hops) | `json-blueprints/operator-mapping-and-examples.md` (22 JSON concepts) + `body-level-wrapper.md` + `non-typesystem-checking.md` | no (3 files); sonnet and opus both needed 3 calls |
| behavior method with a loop | S1 | Start here → `method-declarations.md` (index) + `json-blueprints.md` → sections; `foreach-statements.md` in model-manipulation | 2–3 files; both models end at 2–3 calls | near floor |
| generator rule with macros | S6 | Start here → `macro-catalog.md` (index) → 4 section files; `parse-java-tips.md` (index) → sections | 6–8 files | no; S6 is 26 calls |

## 4. Achievable floor

| | S1-sonnet now (r10 / r12 / r13) | S1-opus leanest (r12) | floor [I] |
|---|---|---|---|
| constraints skill messages | 18 / 10 / 17 | 2 | 2–3 |
| constraints skill KB | 85 / 73 / 118 | 30 | ≤ 35 |
| run skill messages (excluding `Skill`) | 43 / 16 / 30 | 13 | 9–10 |
| compactions | 3 / 2 / 2 | 0 | ≤ 1 |

The floor is "one `SKILL.md` access + one batch per need". Opus r12 meets it on every aspect
(E3). A need-keyed index cannot go below one batch per need. Sonnet reaches that floor on
structure, typesystem and behavior today.

## 5. Plan (rubric order D → S → P-off → P-on → T; cheapest, best-evidenced first)

All four D steps ship as one treatment, because each round costs a full S1 × 2 matrix. E4 separates
them per mode, so their effects can still be attributed individually.

### M-0. Measurement prerequisite (study tooling, not a remedy)

| | |
|---|---|
| files | `study/scripts/analyze_runs.py`, its tests under `study/scripts/tests/` |
| contract | Count Bash skill reads through a persisted `cd` (opus undercount 16 vs 20). Per run, emit `compactions` (step, pre-tokens, seconds), `rereads` and `rereads_after_compaction`, index hops, grep scope (catalog / skill / file), and a per-phase table keyed by the aspect skill directory touched. Take `cache_read` from the `result` event, and keep the old sum as `cache_read_events` for continuity |
| why first | Every §6 criterion needs these columns. Without them the next round repeats the hand parsing done here. Without the cache-read fix, savings are overstated ~2× (E6) |
| risk | None to the measured surface. Baselines must be recomputed with the new analyzer (as round 3 did) |
| verify | Unit tests on r13 `S1-opus-1` (expect 20 nav calls) and r13 `S1-sonnet-1` (expect 2 compactions, 4 re-read calls, all after `:59`; `cache_read` 13.53 M) |
| result | Done. New columns in `metrics.csv`, plus `phases.csv` and `navigation.json` (definitions in the study skill's `harness.md`). `Round13TranscriptsTest` checks the expected values above and both r13 constraints rows of E2; it skips when `runs-r14` is absent. Recomputed rounds 10–13 and the baseline. E2 matches in 4 of the 6 cells; the other 2 are corrections, listed below. E1 nav calls, msgs, loads, greps, compactions and re-reads match, except as listed below. E5 matches exactly. Reviewed by a subagent; its findings are fixed |
| deviations | **E2 phase boundary.** A `find`/`ls` of a bare aspect directory is that aspect's first access. The hand parser attributed it to the previous phase. r10 `S1-sonnet-1` constraints is 31–71, 17 calls, 17 msgs, 83.4 KB (`:72` is typesystem). r12 is 35–94, 21 calls, 9 msgs, 70.8 KB (`:95` is behavior). §6 "now" for constraints calls becomes 17 / 21 / 22. Parsing `for` loops and `$VAR` paths finds more than the hand parsers did: r11 `S6-sonnet-1` has 27 nav calls (`:36`), 10 re-reads (`:46–:51, :85–:87, :105`, all after a compaction) and 5 index hops. **Index hops** follow one transcript-only rule, "index, then a section in the same or the next skill message". The hand counts differ: r13 `S1-sonnet-1` 3 vs 2 (`:37`→`:40`); r10 `S1` 1 vs 2; r10 `S2` 0 vs 1; r12/r13 `S3-sonnet` 0 vs 1. E1's r13 `S1-sonnet-1` re-read cell (5) disagrees with E5 (4); the analyzer gives 4. Baseline `S1-opus-1` greps are 3/0/7 vs 3/1/6 (constraints phase 0/0/4 vs 0/1/3). `:80` and `:93` grep 3–5 named files, and the analyzer counts named files as "file". r11 `S6-sonnet-1` msgs 22 vs 21 and KB 115.6 vs 113.4 come from the same loop parsing. `cache_read` includes subagent messages and every result event of a resumed run (round 2 `S1-sonnet-1`: 14.18 M, where the largest result alone is 9.08 M). `input_tokens`, `output_tokens` and `cache_write` moved to the same basis, each with an `*_events` column. The old `output_tokens` under-counted 10–120×, median 43× (r13 `S1-opus-1`: 3,084 vs 33,707) |

### D-1. Need-keyed constraints index + one-need-at-a-time directive **(first remedy)**

| | |
|---|---|
| files | `resources/…/skills/mps-aspect-constraints/SKILL.md` (Section index + the Reference Index lines that name `property-constraints.md` / `referent-constraints.md`), propagated to `.agents/skills` and `.claude/skills` |
| contract | Each row is a **need**. It names the **complete** file set for that need, at most 2 files, and the choice rule sits in the row, not in `choosing-scope-style.md`. Draft rows: "a property's value must satisfy a condition (range, non-blank, pattern)" → `concept-roots.md`, `property-constraints/validator-example-compound-cardinality.md`; "offer the default candidates minus some (the referring node, its enclosing root, targets already used)" → `concept-roots.md`, `referent-constraints/cross-model-filtered-scope.md`; "candidates computed from the reference's surroundings" → the calculator example; "candidates owned by an enclosing container, shared by many references" → `inherited-scope.md`; "candidates are structure declarations" → `meta-level-scope.md`; side effects on set → `referent-set-handler.md`; one scope for every reference to C → `default-scope.md`; placement → `canbe-rules.md`; abstract → concrete default → `concept-roots.md`. Header directive: **"Take one need at a time: read its row in one parallel batch, write and validate that blueprint, then take the next need. Do not read ahead for other needs or aspects."** No "do not re-read" wording (F3) |
| saving | Constraints messages 10–18 → ≤ 5; KB 73–118 → ≤ 45. That is 7–15 messages × 101–127 K real context ≈ **0.7–1.9 M real tokens per S1-sonnet run** (1.5–3.5 M in `metrics.csv` units), 5–14 % of real cache-read. **Firm** on the call side: E2 and E3 show the other aspects already at this shape. **Speculative** on compliance (F8) |
| side effect | Less reading before the first write moves the first compaction later. At ~2.3 K tokens/step (r13 S1-sonnet `:1–:59`), cutting 40–85 KB (≈ 18–39 K tokens at the measured ≤ 2.2 B/token) delays it by 8–17 steps. In r13 that is past the constraints writes (`:67–:78`), which would remove the 3–5 post-compaction re-reads (**inferred**; r12's writes ran to `:89`). Saving a whole compaction (130–180 s wall) is **speculative** |
| risk | Answer key (lesson 19): rows stay pattern-level. No `recipe`, `Recipe`, `Cookbook`, `seeAlso`, `Ingredient`, `Step`, `servings`, `minutes`, `StateChart`, `Guard`, `Transition`, `condition` in any row. Keep existing Kaja / ChemMastery / Calculator examples. Before the round, grep the diff for every noun in `study/scenarios/*/worker_prompt.md`. Note an existing exposure: `concept-roots.md` already cites StateChart `ChartOperation` (S2's fixture language family); leave it, record it |
| verify | `SkillReferenceLayoutTest` (reachability, budget) and `validate_skill_catalog.py` green. Add a guard to that test: every Section-index row names ≤ 2 files and no split-dir index file. Then §6 |

### D-2. Retarget index hops and the stale jump-table sentence (mechanical)

| | |
|---|---|
| files | "Start here" lines in `mps-aspect-typesystem`, `mps-aspect-behavior`, `mps-aspect-generator` (and `mps-aspect-editor` → `editor-patterns.md`) `SKILL.md`; `mps-model-manipulation/SKILL.md` Minimum reading set |
| contract | Name section files, not split-dir index files. This was D44's deferred follow-up. The typesystem checking-rule line adds `references/json-blueprints/operator-mapping-and-examples.md` "when inserting through MCP". Replace "carries its own jump table — open the one section" with the section headings to read per body kind (e.g. a scope body: `ancestor<C>`, `where`) or with "read it whole once" |
| saving | 2–3 calls per S1-sonnet run and 4 in S6: 12 hops in 16 runs. **Firm**: each hop is one call by construction |
| risk | None; no answer-key content |
| verify | Extend the D-1 guard to "Start here" lines; §6 index hops = 0 |

### D-3. Pre-empt symbol greps

| | |
|---|---|
| files | `mps-mcp-workflow/SKILL.md` Critical Directives (catalog-wide), plus one line in the D-1 header |
| contract | "To find a concept's JSON shape, call `mps_mcp_get_concept_details` (`detail: shape`); to find where a need is documented, use the owning `SKILL.md` index. Full-text grep over the skills catalog returns prose, not shapes." |
| saving | 3–7 grep calls and 10–23 KB per catalog-wide grep in S1/S2/S6/S9 (E4: 29 greps, ~21 of the 27 search terms symbols). **Speculative**: it depends on compliance, and opus greps too |
| risk | Low. `get_concept_details` gives the shape, not a worked blueprint, so the grep may simply move to the MCP call |
| verify | §6: catalog-wide greps = 0; skill-wide greps ≤ 1 per run |

### D-4. Give the one scope-pattern file its JSON blueprint

| | |
|---|---|
| files | `mps-aspect-constraints/references/referent-constraints/cross-model-filtered-scope.md` |
| contract | Add the full `searchScopeFactory` body JSON for the **existing** Kaja `Require` example (`ListScope.forNamedElements(contextNode.model.rootsIncludingImported(C).where(...))`, the `ancestor<…, +>` + `:ne:` predicate, the `jetbrains.mps.scope` import). Verify it by a dry-run insert and `check_root_node_problems` on a scratch language in a running MPS. Do not add a new "exclude self" example: the worker still has to adapt the predicate. Stay under the 12 KB budget |
| saving | Removes the F2 assembly: in r13 S1-sonnet, `:41, :43–:46, :48–:50` (8 calls, ~65 KB: `computed-sequences-blueprint`, `dot-expression-basics`, `node-equality`, `scope-concept-fqns` and 4 greps). **Firm** that those files are then unnecessary; **inferred** that sonnet stops reading them |
| risk | **Highest answer-key risk in the plan**: S1 is the only scenario that authors a scope. Mitigation: Kaja domain, placeholders for concept refs, pattern kept as it is today. See Q2 |
| verify | Diff against the scenario nouns (D-1); an MPS-validated blueprint; in §6, S1 constraints reads no `computed-sequences-*` and no `dot-expression-basics` |

### S, P-off, P-on: none proposed

| tier | candidate | verdict |
|---|---|---|
| S | Server-side section retrieval (skills over MCP, `docs/skills-over-mcp-implementation-plan.md`) | Separate track; the server sees no local file reads, so it cannot fix D50 today |
| P-off | `skill_lookup.py <symbol>` → file + heading | Rejected (lesson 35): an index the agent must run is an index it rebuilds. Same call count as a grep, fewer bytes |
| P-on | – | Nothing online touches navigation |
| – | a dedicated `references/INDEX.md` | Rejected: +1 message per aspect. F5 shows every pointer to an index costs a call, while `SKILL.md` is already in context through `Skill` at no extra message |
| – | "read the section once; do not re-read before writing" | Rejected as worded: F3 shows the re-reads follow compaction. Replaced by D-1's one-need-at-a-time directive |

### T-1 (conditional). Re-layout referent constraints by need

Only if round 14 misses the constraints criterion after D-1..D-4:
- Merge `referent-constraints/` into need-keyed files, each carrying shape, JSON, used languages
  and the validation step.
- Consider splitting `dot-expression-basics.md` along the Minimum reading set body kinds.

D44 is the warning: a layout change alone lowered bytes, not reads. Any T needs the D-1 index first,
plus `SkillReferenceLayoutTest` updates and a sweep of the ~140 inbound mentions.

## 6. Success criteria and re-measurement

### Round 14 targets (frozen S1 prompt `96376ae7`, S2 prompt unchanged)

| cell | metric | now (r10 / r12 / r13) | target |
|---|---|---|---|
| S1-sonnet | constraints-phase skill calls | 18 / 22 / 22 | **≤ 8** each run |
| S1-sonnet | constraints-phase skill messages | 18 / 10 / 17 | ≤ 5 |
| S1-sonnet | constraints-phase skill KB | 85 / 73 / 118 | ≤ 45 |
| S1-sonnet | catalog-wide greps (run) | 1 / 0 / 1 | **0** |
| S1-sonnet | greps under `mps-aspect-constraints/references/` | 0 / 1 / 2 | 0 |
| S1-sonnet | index hops (run) | 2 / 2 / 2 | 0 |
| S1-sonnet | first compaction step vs last constraints insert | `:53` < `:69`; `:58` < `:89`; `:59` < `:78` | compaction after the last constraints insert, or none |
| S1-sonnet | re-reads not straddling a compaction / total | 0 / 5, 0 / 3, 0 / 4 | 0 / ≤ 2 |
| S1-sonnet | run skill calls | 43 / 36 / 36 | ≤ 24 |
| S1-opus | constraints skill calls | – / 2 / 7 | ≤ 3 |
| S2-sonnet | constraints skill calls (validator only) | 10 (r10), 7 (r8) | ≤ 5 |
| all | task pass, error envelopes | 6/6, 3 | no regression |

**Variance basis [M].** On the same constraints skill, S1-sonnet constraints calls were 18/22/22
(range 4), messages 10–18, bytes 73–118. A drop to ≤ 8 calls is more than 3× the observed range,
so n = 1 would detect it. Messages and bytes vary more, hence n = 2.

### Protocol

1. **Land M-0** and recompute rounds 10–13 with it. The numbers must match this document's tables
   within the persisted-`cd` correction.
2. **Land D-1..D-4 in one commit.** Record that the new `skillsSha256` differs from `7704a175…`
   only in the touched skills. Run the answer-key diff (D-1).
3. **Run the cells:**
   - S1-sonnet × 2, S1-opus × 1, S2-sonnet × 1 (out-of-sample validator need; it needs the S2
     fixture), plus a SMOKE for each model.
   - Optional: S6-sonnet × 1, only to credit the generator index hop.
4. **Report per mode:** E2, E3 and E4 per cell, plus compactions and wall-clock seconds spent in
   compaction.
   - Credit D-2 by the index-hop count, D-3 by the grep counts, D-4 by the absence of
     `computed-sequences-*` / `dot-expression-basics` in constraints, and D-1 by the rest.
5. **Decide:** if S1-sonnet constraints stays above 8 calls in both runs, open T-1. If it is met in
   one run of two, run a third before deciding (lesson 12).

## 7. Open questions

1. **Compaction threshold.** Is ~167 K the harness auto-compact point for both models (every event
   shows 163–172 K)? Does the compaction's own summarization call count in the run's `usage`?
   `total_cost_usd` may include it and the per-message sums do not. This decides whether
   compaction avoidance should be a study metric in its own right.
2. **Answer key vs. scope coverage.** S1 is the only cell that authors a reference scope, so D-1's
   scope row and D-4 cannot be tested out of sample. Should an ad-hoc, non-study scope task (Kaja
   domain) be used once to check that the row generalizes, before crediting it in round 14?
3. **Batching.** F8 is a model behaviour. If sonnet still spreads one row over several messages
   after D-1, is a stronger "one message, all files" wording worth an A/B? Or should rows name
   exactly one file each (which makes T-1 mandatory)?
4. **`dot-expression-basics.md` (24 KB), read whole by design.** The Minimum reading set sends every
   body there. Should it stay whole (D44's decision) or be split by body kind (T-1)? E4 does not
   settle it: it is read 4 times in 16 runs, 25 KB each.
5. **H10 restatement.** E6 means the "fixed context per turn" figures in rounds 3–13 are ~2×
   inflated. Should the study re-baseline them with M-0, or keep the old column for continuity and
   add the corrected one?
