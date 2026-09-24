# Skill Script Automation Study — Round 11 (2026-09-24)

Status: measurement round complete. Scope on request: **S6** (generator → Java per Recipe, two
behavior-authoring routes), **S7** (`@tests` model + run configuration), **S8** (onboard an unknown
project via `mps-dsl-memory`), **S9** (read-only Console MCP queries), all on **sonnet only** =
4 cells, plus one SMOKE harness check. No code or docs changes were made before this round — it
measures the *current* state of skills and tool descriptions on this same day, immediately after
round 10 (S1/S2/S3/S5, evidence in `runs-r11`) measured the same surface with zero changes in
between. Nothing was pushed; no commit was made from this session.

Comparison target, as requested: `HOTSPOT_REPORT.md` (2026-09-15, S1+S3 on opus+sonnet — the
**2026-09 baseline of record**). None of S6–S9 has a row there (Gate 1 stopped the original matrix
at S1+S3). S6 **was** measured once before, in round 6 (2026-09-21, FAIL); S7, S8 and S9 are
**first-ever measurements** — the same situation S5 was in for round 9 and S4 was in for round 9.
Where useful this report also cites round 6's S6 run and the archived defect record, since both
speak directly to S6's outcome this round.

Evidence: `~/MPSProjects/mcp-study/runs-r12/{SMOKE,S6,S7,S8,S9}-sonnet-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `analysis/`. Directory suffix `-r12` because `-r10`/`-r11` were already
taken by a stray prior trial and by round 10 respectively; this is round 11 in the study's own
sequential numbering. Every claim below cites `run:step` (1-based `tool_use` ordinal in the worker
transcript, matching `show_steps.py`).

## 0. Harness state

- **MPS**: 2026.1 EAP (build 261.25134) from this checkout, the same build round 10 measured hours
  earlier. Observer sequence: capture (dev checkout alive) → `calllog runs-r12/server-calllog.jsonl`
  → shutdown (closed the dev checkout) → synthesized a harness project → `start` → `wait` → SMOKE.
  New pid **41895** for the whole round (`isolationLevel: per-round`, same `mpsPid` on all five
  metas). At wrap-up: `calllog` cleared, dev checkout reopened on the live process, shutdown,
  `start` back onto the developer's checkout, `wait` — confirmed via `ps` that the restored process
  (pid 71072) carries no `-Dmps.mcp.calllog` option.
- **Measured surface**: `inventorySha256 e6b87321…` — **48 tools, 39 `mps_mcp_*`**, descriptions
  55,845 B, schemas 40,114 B — **byte-identical to round 10's**, confirming no drift between the
  two same-day rounds. `skillsSha256 78064c75…` also identical to round 10 and matching on all four
  scenario runs (no catalog drift mid-round).
- Fixed per-turn context floor from the SMOKE `result` event: consistent with round 10's ≈99 K
  tokens (H10 continues to hold — unmoved across 11 rounds).
- Contamination guard (`check_user_agents.py`): clean, exit 0. Harness unit tests: 43/43 pass.
- Fixtures reused from earlier rounds' caches after verifying each clean of the agent doc surface
  (`tar -tzf | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'` → empty for all three):
  `recipes-full.tar.gz` (`fixtures-r6`, 2026-09-21, for S6), `recipes.tar.gz` (`fixtures-r4`,
  2026-09-18, for S7 and, as a separate extraction, S9), `statechart.tar.gz` (`fixtures-r8`,
  2026-09-23, for S8).

## 1. Task outcomes

All four scenarios **PASS** (Opus evaluator, read-only, against each scenario's `done_criteria.md`):

| scenario | verdict | notable |
|---|---|---|
| S6 | PASS (4/4) | generator + both `describe()`/`describe2()` behavior routes compile, 0 errors; **this scenario FAILED in round 6** on a defect since fixed — see §3.6 |
| S7 | PASS (3/3), with a caveat | 4/4 tests pass on re-run, but 4 *separate* per-root run configs instead of one model-level config, and none persisted to `.mps/workspace.xml` — see §3.7 |
| S8 | PASS (4/4) | clean onboarding: skill content spot-checked correct against live concepts, sample nodes and blueprints; no model was modified (one language MAKE, not a model edit) |
| S9 | PASS (3/3), with a caveat | console history and recalled input both correct; the console's printed response collapses a sequence to an item-count summary, so the *values* inside a query result can't be read back through this path — see §3.9 |

## 2. Round metrics

| metric | S6-sonnet-1 | S7-sonnet-1 | S8-sonnet-1 | S9-sonnet-1 |
|---|---|---|---|---|
| task pass | True | True | True | True |
| turns | 130 | 129 | 74 | 45 |
| wall-clock s | 1,549 | 1,309 | 454 | 311 |
| cost USD | 5.02 | 5.19 | 1.88 | 1.37 |
| cache-read tokens | 22,288,053 | 23,118,600 | 10,727,064 | 7,475,706 |
| output tokens | 1,113 | 1,497 | 943 | 308 |
| tool calls | 122 | 123 | 71 | 41 |
| MCP calls | 73 | 74 | 32 | 25 |
| skill-file reads | 26 | 12 | 12 | 9 |
| skill bytes read | 113,446 | 48,539 | 36,706 | 67,291 |
| temp-file envelopes | 3 | 5 | 4 | 0 |
| error envelopes | 9 | 3 | 2 | 1 |
| error→retry pairs | 6 | 2 | 1 | 0 |
| validation loops (≥3 same root) | 0 | 2 (both genuine fix→verify, see §3.2) | 0 | 0 |
| server MPS calls | 73 | 74 | 32 | 25 |
| server call surplus | 0 | 0 | 0 | 0 |

Round total: 3,623 s wall-clock, $13.46, 378 turns, 357 tool calls across the 4 scenarios.

## 3. Baseline hotspots against this round's evidence

### 3.1 Hotspot #1 (temp-file envelope for small payloads) — **stays fixed**
`temp_file_envelopes` is 0–5 per run here, against the baseline's 23–32 per run on gentler S1/S3
tasks. Consistent with round 10's own confirmation.

### 3.2 Hotspot #2 (per-root re-validation after a clean model-level check) — **stays fixed**
Only S7 shows `check_root_node_problems` called ≥3 times on one root
(`r:8474f630-…(mcp.study.recipes.tests@tests)/…7736`, `S7-sonnet-1:82,87,90`), and reading the
steps shows a genuine debug cycle: `:81` model-level check surfaces a stale
`Node_ConceptMethodCall` reference, `:82`→`:87` fix and re-check the specific root, `:87` reveals an
available modernization intention, `:88`–`:89` apply it (see §3.7 for the one near-miss on that
call), `:90` confirms clean, `:91` re-checks the whole model before moving on. This is the same
"genuine fix→verify iteration, not the trust pathology" verdict rounds 6 and 10 already reached —
R2's envelope fix (`rootsChecked`) still prevents the wasteful blind-recheck habit the baseline
found.

### 3.3 Hotspot #3 (skill reference reads before an MCP call) — **reproduces the round-10 half-fix, in a different skill**
Round 10 found D44's per-file split (references over 20 KB → files under 12 KB) only half worked:
navigation cost shifted from grepping one big file to `grep -rn`/`grep -rln` scanning across the
new file-per-section directory, because the promised "SKILL.md names the single file for the common
case" index isn't always used. S6 reproduces the identical shape in a **different** skill
(`mps-aspect-generator`, not `mps-aspect-constraints`/`-structure-concepts` that round 10 checked):
```
grep -rn "outputModel\|CreateRootRule\|virtualPackage\|package..." .claude/skills/mps-aspect-generator/references
grep -rln "namespace" .claude/skills/mps-aspect-generator/references
grep -rln "virtualPackage" .claude/skills/         # catalog-wide, not even scoped to one skill
```
Three separate directory/catalog-wide greps for keywords a per-job index table should have answered
directly. This is new evidence that the gap generalizes beyond the two skills round 10 sampled —
worth widening D44's follow-up check to `mps-aspect-generator`'s own index before Gate 2.

### 3.4 Hotspot #4 / H1 (ad-hoc effort + retries around JSON blueprint / BaseLanguage AST authoring) — **still very much alive, two fresh independent instances in one run**
S6 hit the *same class* of concept-assignability error twice, independently, needing discovery
calls to self-correct each time — neither is caught by D43's near-miss vocabulary, because D43
covers parameter **naming**, not AST **shape**:

1. **Collection literal as a return expression** (`S6-sonnet-1:57`): a `ReturnStatement.expression`
   built directly as an `ArrayCreatorWithInitializer` is rejected — `ReturnStatement` wants an
   `Expression`, and an array-with-initializer needs a `GenericNewExpression` wrapper around it to
   be one. Recovery cost: `:58`–`:59` (`get_concept_details` on the rejected concept and its
   siblings), `:60`–`:62` (`ToolSearch` + `search_concepts` + `get_concept_details` to find
   `GenericNewExpression`), `:63` succeeds — **5 extra calls**.
2. **Property-access reference target** (`S6-sonnet-1:109→111`): a JSON-blueprint
   `SPropertyAccess.property` reference pointed at the enclosing `ConceptDeclaration` (`Recipe`)
   instead of the specific `PropertyDeclaration` (`name`) — same failure class, different site.
   Recovery: `:112`–`:113` (`print_node` on the wrong and the right target to see the concept
   difference), `:114` (`Edit` the blueprint file), `:115` succeeds — **4 extra calls**, on top of
   the direct-JSON-too-large redirect to a temp file at `:109`–`:110` that precedes it.

Total: ~9 avoidable tool calls in one run, both self-corrected only through ad-hoc discovery
(`get_concept_details`/`search_concepts`/`print_node`), exactly the pattern baseline H1 and hotspot
#4 described for S1/S3. Neither gotcha ("array/collection literals need a `GenericNewExpression`
wrapper to be used as an `Expression`"; "`SPropertyAccess.property` must reference the
`PropertyDeclaration`, not its owning concept") is documented in `mps-model-manipulation` or
`mps-quotations` today — both are plausible D-tier additions.

### 3.5 Hotspot #7 (guessable-but-undocumented literals / D43 near-miss residuals) — **the round-10 residual gaps reproduce a third time, plus one new tool joins the pattern and one new inconsistency found**
- **`get_concept_details concept`** (singular, wrong key) tried **twice in a row for two different
  concepts** (Recipe, then Step) before switching to `conceptRefs` (`S6-sonnet-1:10,11,14`) — the
  exact shape round 10 flagged in `S2-sonnet-1:118,119,120`, now a third confirmed instance across
  three separate rounds (round 8 S2, round 10 S1/S2, round 11 S6).
- **`print_node node`** (wrong key) tried **twice in a row for two different node references**
  before switching to `nodeReference` (`S6-sonnet-1:12,13,15`) — same repeated-miss shape, not
  previously observed on this tool.
- **`search_concepts query`** reproduces again (`S6-sonnet-1:99→100`) — 1 retry this time, milder
  than round 10's 2-in-a-row on the same tool.
- **`alter_nodes MAKE`** top-level `targets`/`rebuild` instead of nested `parameters` reproduces
  verbatim (`S6-sonnet-1:117→118`) — this is D29's documented, by-design behavior (kept
  deliberately strict per D43), so it is an accepted, unchanged 1-retry cost, not a regression.
- **New tool joins the pattern, self-corrects cleanly**: `apply_intention targetNode` (should be
  `nodeReference`) — `S7-sonnet-1:88→89`, 1 retry, D43's near-miss message worked exactly as
  designed here.
- **New inconsistency found**: `query_structure LIST_CONCEPT_ASPECTS` uniquely takes a **singular**
  `conceptRef`, unlike sibling tools that converged on plural `conceptRefs` post-D43
  (`S8-sonnet-1:48→49`). The near-miss message names the fix and the worker self-corrected in 1
  retry, so this is not costly in practice, but the naming surface D43 was meant to unify still has
  this one holdout.

### 3.6 D34 (parse_java_and_insert silently discarded the `package` declaration) — **confirmed fixed; this is the defect that caused S6's only prior FAIL**
Round 6's S6 run failed exactly once, on this defect: `parse_java_and_insert` set no `packageName`
on the resulting `Classifier`, so the generated Java landed in the wrong location and the worker
misdiagnosed it as an MPS limitation (`docs-defects-archive.md` D34; fixed at `e00c57599c2e`,
`insertAsRoot` now copies `parseResult.getPackage()` onto `Classifier.packageName`). This round's S6
run generated all three Java files correctly under `mcp.study.generated`
(`Crepes.java`/`Omelette.java`/`Pancakes.java`, each with the right package statement, `PORTIONS`
and `steps()`), with **zero** package-related errors or retries anywhere in the transcript. A clean,
directly-attributable "hotspot moved from causing a task FAIL to a non-issue."

### 3.7 New finding (S7, first measurement): run-configuration tooling is scoped to one root, and configs are not persisted
`mps_mcp_create_run_configuration` only accepts a single root node as its target, so testing an
`@tests` model with 4 roots required 4 separate "JUnit Tests" run configurations
(`S7-sonnet-1` evaluator report), one per `NodesTestCase`/`EditorTestCase` root — there is no
model-level or bulk equivalent. None of the four is written to `.mps/workspace.xml`; they exist
only for the life of the running IDE session and would be lost on an MPS restart. Both facts are
absent from the tool description and from `mps-run-configurations`' SKILL.md today. This did not
cost the worker any retries (it adapted immediately), but it is a real scope limitation worth a
docs-defects entry: an agent later in the same session, or a human continuing from a saved project,
would find "the tests" pass but no evidence of it persisted anywhere on disk.

### 3.8 Hotspot candidate not reproduced: D3 (`/tmp` rejected on macOS)
Round 6 found this "open in practice" (3 fresh reproductions despite an earlier doc-only fix). This
round's S6 wrote its JSON blueprint straight to `/tmp/describe2_blueprint.json`
(`S6-sonnet-1:110`→`:111`) and `update_node` read it back with **no** temp-directory rejection at
all — the only error at that step was the unrelated concept-assignability one (§3.4.2). One data
point, not conclusive on its own, but worth someone checking whether the underlying validation was
loosened since round 6, since the archived record's "fixed 2026-09-15" note and round 6's "still
reproduces" finding are themselves in tension.

### 3.9 New finding (S9, first measurement): Console response printing collapses a sequence to a count
`#instances(Ingredient)` and its filtered variant both executed correctly and are recorded in
console history in the right order (`S9-sonnet-1`, verified live before the project closed), but
the printed response for each is a `NodeWithClosure` whose text is just `"3 nodes"` — a count
summary, not the underlying item values. The done-criteria's own request to confirm "the printed
items include all 3 Ingredient names" could only be partially verified (the count matches; the
names do not appear in the response at all). An agent — or a human — that needs the actual query
results back out through the read-only console path would have to shape the query differently
(e.g., iterate and `#print` per item) rather than rely on `get_console_history`. Worth a line in
`mps-console` about this response-printing behavior.

### 3.10 Hotspot #8 (ToolSearch schema fetches) — unchanged, as expected
Present in every run (harness-level overhead, not addressable by this plugin), consistent with
every prior round's conclusion.

## 4. Summary: which hotspots moved

| # | Baseline hotspot / prior finding | Verdict this round |
|---|---|---|
| 1 | Temp-file envelope for small payloads | **Stays fixed** |
| 2 | Per-root re-validation after a clean model check | **Stays fixed** — S7's loops are genuine fix→verify cycles |
| 3 | Skill reference reads / D44 navigation | **Still half-fixed** — round-10's directory-grep regression reproduces in a different skill (`mps-aspect-generator`), evidence the gap is catalog-wide, not local to the two skills checked before |
| 4 / H1 | JSON blueprint / BaseLanguage AST authoring cost | **Still alive** — 2 independent concept-assignability errors in one run, ~9 avoidable calls, neither caught by D43's naming-only near-miss vocabulary |
| 7 | Guessable-but-undocumented literals (D43 residuals) | **Same residual gaps reproduce a 3rd time** (repeated wrong key across 2 different targets); 1 new tool (`apply_intention`) joins the pattern and self-corrects cleanly; 1 new singular/plural inconsistency found (`LIST_CONCEPT_ASPECTS`) |
| D34 | `parse_java_and_insert` silently discarded `package` (round 6's only FAIL) | **Fixed, confirmed** — S6 now generates correctly packaged Java with zero related errors |
| D3 | `/tmp` rejected on macOS (round 6: "open in practice") | **Did not reproduce** this round (1 data point) |
| 8 | ToolSearch schema fetches | Unchanged (harness-level, out of scope) |
| — | Run-configuration tool scope + persistence (S7, new) | **New finding**: one-root-only, not persisted to workspace.xml |
| — | Console response collapses to item count (S9, new) | **New finding**: query results not recoverable as data through the read-only console path |

All four scenarios task-**PASS**, including S6, which is the first PASS this scenario has ever
recorded (round 6: FAIL). No regressions found on any of the four hotspots that were previously
"fixed" (#1, #2, plus D34 newly confirmed); the two hotspots the baseline scored highest by
avoidable turns among the ones this round could exercise (#3 skill navigation, #4/H1 blueprint
authoring) both continue to cost real turns, now with fresh, reproducible evidence in scenarios and
skills the baseline never tested.

## 5. Not addressed by this round

No code or docs changes were made — this is measurement only, per the request. Candidate
docs-defects entries surfaced here (the two JSON-blueprint AST gotchas in §3.4, the
run-configuration scope/persistence gap in §3.7, the console response-collapse note in §3.9, and
round 10's still-unfiled `MOVE_CHILD` sequential-disclosure candidate) are reported rather than
filed; logging them into `docs-defects.md` and deciding remedies is a Gate 2 decision, not made in
this round. D3's status (§3.8) is flagged for someone to reconcile against the archived record, not
resolved here.
