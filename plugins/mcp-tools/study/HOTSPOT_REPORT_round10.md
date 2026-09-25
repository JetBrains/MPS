# Skill Script Automation Study — Round 10 (2026-09-24)

Status: measurement round complete. Scope on request: **S1** (greenfield DSL), **S2** (language
extension), **S3** (bulk model authoring) and **S5** (fix a broken model), all on **sonnet only**
= 4 cells, plus one SMOKE harness check. No code or docs changes were made before this round — it
measures the *current* state of skills and tool descriptions, which include D43/D44/D45 (2026-09-24,
MPS-40190/40191) and D46/D47 (2026-09-23/24, 0004712949b8 + MPS-40199) landing earlier the same day
this round ran. Nothing was pushed.

Comparison target, as requested: `HOTSPOT_REPORT.md` (2026-09-15, S1+S3 on opus+sonnet — the
**2026-09 baseline of record**). S2 has no row there (it was first measured in round 6, refreshed in
round 8); S5 has **no prior baseline at all** — this is its first-ever measurement, the same
situation S4 was in for round 9.

Evidence: `~/MPSProjects/mcp-study/runs-r11/{SMOKE,S1,S2,S3,S5}-sonnet-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `*-install.json`, `analysis/`. (Directory is named `runs-r11` because a
stray, incomplete Junie trial already occupied `runs-r10`/`proj-r10` from a prior session; this is
still "round 10" in the study's own numbering and in the "measure in round 10" notes left in
`docs-defects.md`.) Every claim below cites `run:step` (1-based `tool_use` ordinal in the worker
transcript, matching `show_steps.py`).

## 0. Harness state

- **MPS**: 2026.1 EAP (build 261.25134) from this checkout. The session found MPS already running
  with the developer's own checkout open and a call-log option pointed at a stale, unrelated
  directory (`runs-s10-2026-09-24`, leftover from an earlier session). Observer sequence: `capture`
  → `calllog runs-r11/server-calllog.jsonl` → `shutdown` (closed the dev checkout) → synthesized a
  harness project → `start` → `wait` (5 s) → SMOKE. New pid **97917** for the whole round
  (`isolationLevel: per-round`, same `mpsPid` on all five metas). At wrap-up: `calllog` cleared,
  `shutdown`, `start` back onto the developer's checkout, `wait` — confirmed via `ps` that the
  restored process carries no `-Dmps.mcp.calllog` option.
- **Measured surface**: `inventorySha256 e6b87321…` — **48 tools, 39 `mps_mcp_*`**, descriptions
  **55,845 B**, schemas **40,114 B**. Versus round 9 (48/39, 51,180 B / 40,048 B): descriptions
  +4,665 B, schemas +66 B — consistent with today's D46/D47 landings (SYNC_VERSION, the
  `PureMigrationScript` factory note, `languageVersion` documentation). Versus the *2026-09
  baseline's own count* (56 tools, 38 `mps_mcp_*`): the tool surface has been substantially
  reworked across the intervening rounds (consolidation into fewer, richer tools); this round does
  not attempt to reconstruct that multi-round diff and instead measures against the baseline's
  *ranked hotspots and defects*, which is what was asked for.
- Fixed per-turn context floor from the SMOKE `result` event: **98,969 tokens** (80,786 cache-read +
  18,183 cache-creation) — against round 9's 97,555 and the original baseline's ≈ 98,000. **H10
  holds again**: the fixed floor has not moved in ten rounds.
- Contamination guard (`check_user_agents.py`): clean, exit 0. Harness unit tests: 43/43 pass.
- Fixtures: `statechart.tar.gz` (`fixtures-r8`, 2026-09-23), `recipes.tar.gz` (`fixtures-r4`,
  2026-09-18), `recipes-broken.tar.gz` (`fixtures-r6`, 2026-09-21) — all reused from earlier rounds'
  caches after verifying each is clean of the agent doc surface (`tar -tzf | grep -E
  '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'` → empty for all three). `S1` used a freshly
  synthesized empty project (`new_study_project.py`), not a tarball.
- `skillsSha256 78064c75…` identical across SMOKE/S1/S2/S3/S5 — no catalog drift mid-round.
  `promptSha256` for S1 and S3 matches the values recorded in the original baseline's own metas
  exactly (`96376ae7…` and `a922898b…`), confirming the prompts are unchanged and the comparison is
  apples-to-apples.

## 1. Task outcomes

All four scenarios **PASS** (Opus evaluator, read-only, against `done_criteria.md`):

| scenario | verdict | notable |
|---|---|---|
| S1 | PASS (6/6) | `[0..n]` refs built as smart-reference wrappers; editors are unrefined scaffolds (criterion doesn't require more) |
| S2 | PASS (5/5) | Editor renders exactly as prompted (`on shiftUp [ count > 3 ] -> 1`); one cosmetic naming-policy warning |
| S3 | PASS (4/4) | 44 roots, all 40 recipes cross-checked against the CSV with 0 mismatches |
| S5 | PASS (3/3) | All 12 injected problems verifiably fixed; 17/17 roots preserved |

## 2. Metrics vs. the 2026-09 baseline (S1, S3) and prior rounds (S2)

| metric | S1-sonnet **baseline** (2026-09-15) | **S1-sonnet round 10** | Δ | S3-sonnet **baseline** | **S3-sonnet round 10** | Δ |
|---|---|---|---|---|---|---|
| turns | 148 | **164** | +11 % | 28 | **31** | +11 % |
| wall-clock s | 1,322 | **1,673** | +27 % | 229 | **136** | **−41 %** |
| cost USD | 5.83 | **7.37** | +26 % | 1.13 | **0.77** | −32 % |
| cache-read tokens | 27,498,232 | **17,625,800** | **−36 %** | 4,001,158 | **1,770,254** | **−56 %** |
| cache-write tokens | 920,586 | **561,979** | −39 % | — | 79,277 | — |
| output tokens | 1,868 | **93,503*** | n/a* | 240 | **9,419*** | n/a* |
| tool calls | 135 | **154** | +14 % | 26 | **28** | +8 % |
| MCP calls | 71 | **77** | +8 % | 11 | **11** | = |
| skill-file reads | 9 | **43** | **+378 %** | 3 | **8** | +167 % |
| skill bytes read | 160,079 | **156,303** | −2 % | 17,947 | **19,336** | +8 % |
| **temp-file envelopes** | 23 | **4** | **−83 %** | 4 | **0** | **−100 %** |
| tool-result bytes | 444,385 | **493,548** | +11 % | 183,320 | **59,862** | **−67 %** |
| error envelopes | 5 | **5** | = | 1 | **0** | −1 |
| error→retry pairs | 2 | **3** | +1 | 0 | **0** | = |
| validation loops (≥3 same root) | 1 | **0** | −1 | 0 | **0** | = |

\* This model's `output_tokens` field now includes extended-thinking tokens (52,334 of S1's
93,503; 6,891 of S3's 9,419) — a model/harness accounting change, not a study finding. It is not
comparable to the baseline's `output_tokens`, which predates extended thinking being folded into
that field.

S2 has no row in the 2026-09 baseline; for context, round 6 (its first measurement) had 114 turns /
105 tool calls / 18 skill reads (77,342 B); round 8 had 123 turns / 115 tool calls / 21 skill reads
(82,893 B). This round: **158 turns / 148 tool calls / 31 skill reads (140,876 B)** — skill-read
bytes are now *above* both prior measurements, driven by the same navigation pattern described in
§3.3.

S5 is unmeasured before this round: **30 turns, 27 tool calls, 330 s, $0.95**, 20 server-logged
calls, 0 error→retry pairs, one 3-call validation sequence on the samples model (re-checking after
each batch of fixes — a reasonable habit here, not the baseline's "re-check every root" pathology).

## 3. Baseline hotspots — what moved

### 3.1 Hotspot #1 (temp-file envelope → Read/Bash of the file) — **FIXED, holds up**

R1 (`maxInlineBytes`) is live and doing its job four rounds after this baseline said it should:
S1 envelopes 23 → 4 (baseline sonnet vs. this round), S3 envelopes 4 → 0. The remaining 4 in S1 are
genuinely large dumps (full-language `get_project_structure` with `includeDependencies`), not the
small-payload cases the baseline flagged. `S1-sonnet-1:915` (`get_concept_details
detail:"full"` on the whole language) is a deliberate, single large call, not a chain.

### 3.2 Hotspot #2 (per-root validation after a clean model-level check) — **FIXED**

R2 (`rootsChecked` / `perRoot`) is live and changed the *behaviour*, not just the envelope: S3 called
`check_root_node_problems` **twice total** for the whole run (`S3-sonnet-1:73` with `perRoot:true`
returning all 44 roots' `{errors,warnings}` in one call, and one follow-up on a single node) — versus
the baseline's up-to-50-calls-per-root habit. S1 called it 9 times and S2 4 times across much longer
sessions, with no ≥3-same-root validation loop in either (`validation_loops` = 0 for both). S5's one
3-call sequence on the samples model is "re-check after each fix batch," a sensible habit the
done-criteria intentionally leaves room for.

### 3.3 Hotspot #3 (skill reference reads) — **PARTIALLY MOVED: bytes down, call count not reduced**

D44 (MPS-40191, landed *this morning*) split the large reference files into per-section files and
removed the "Contents / when to read what" blocks, with an explicit self-check: *"Measure in round
10: zero grep against references/ in S1/S2/S4; S1 skill-navigation calls ≤ 25 (was 45)."* This
round's evidence:

- **Bytes: back near the original baseline.** S1 156,303 B (was 160,079 B baseline / 188,704 B
  round 8) — the byte blow-up from round 8 is gone.
- **Call count: not reduced.** S1 skill-file reads = **43** (Read: 26, Bash grep/cat against
  `.claude/skills/`: 17) — essentially flat versus round 8's 45, and nowhere near the ≤25 target.
  S2 is **worse than every prior measurement**: 31 reads / 140,876 B, above round 8's 21/82,893 B
  and round 6's 18/77,342 B.
- **The mechanism shifted, it didn't disappear.** The literal `grep -n '^## '`
  index-rebuilding pattern D44 targeted is indeed gone — but the worker now full-text `grep`s
  *across* the new per-section directories to find the right file, e.g. `S1-sonnet-1`'s Bash calls
  include `grep -rl "name.*resolution|forward reference|by-name|local reference"
  .../mps-aspect-constraints/references/` immediately followed by a second `grep -n -B3 -A15`
  on the file that matched — a two-call search-then-read pattern, repeated 7 times in S1 alone, for
  reference material now spread across `mps-aspect-constraints/references/referent-constraints/*`,
  `mps-model-manipulation/references/*`, etc. Splitting the file removed the in-file jump table an
  agent could `Read` once and route from; searching by keyword across the resulting directory costs
  the same or more tool calls than the old grep-the-index-then-Read-a-range pattern it replaced.
  This matches lesson 35 exactly: *"a navigation aid only pays if the agent reads it instead of
  rebuilding it"* — here the agent isn't even rebuilding an index, it's brute-force grepping for
  content, because there is no per-directory index cheap enough to make that unnecessary.
- **Verdict: the payload half of D44 landed; the turn-count half did not.** Recommend re-measuring
  after adding a directory-level index (one line per section file, keyed by symptom/task) inside
  each split reference's owning `SKILL.md`, since the file-level jump tables were removed along with
  the files they indexed.

### 3.4 Hotspot #4 (ad-hoc Python re-authored for shaping/CSV→blueprint) — **N/A this round (sonnet-only), but R5's shipped script is confirmed in active use**

This hotspot was always largely an opus behaviour (lesson 7); with sonnet-only scope this round,
raw Python heredoc counts stayed low regardless (S1: 3, S3: 2, S2/S5: 0) and aren't a fair
before/after. The interesting finding is R5: `S3-sonnet-1` **used the shipped
`mps-node-editing/scripts/table_to_bulk_insert.py`** rather than writing CSV→blueprint Python from
scratch (`S3-sonnet-1:48-73` — reads the script's `--help`, reads the script source once, then runs
it, getting back exactly the compact `{"children":183,"path":".../bulk_insert-recipes-21749.json",
"references":65,"roots":40}` R5 promised). This is the clearest confirmation in this round that a
proposed remedy is not just live but is actually the path a fresh worker converges on.

### 3.5 Hotspot #5 (bulk-insert response larger than the input) — **FIXED**

R4's summary shape is live: `insert_root_node_from_json` on the 40-row blueprint returned
`{"ok":true,"data":{"inserted":40,"roots":[{"name":...,"reference":...,"concept":...}]}}` — **6,228
bytes** for 40 roots (`S3-sonnet-1:90`), not the old full-envelope-per-node response the baseline
measured at ~33 KB for a similar 63 KB input. `check_root_node_problems(perRoot:true)` mirrors the
same compact-summary shape (`S3-sonnet-1:111`, 7,803 B for 44 roots' error/warning counts).

### 3.6 Hotspot #6 (discovery refinement — re-calling get_concept_details 1-2 hops later) — **not clearly reproduced**

S1 and S2's `get_concept_details` calls this round are mostly single-shot BaseLanguage/API lookups
spread across the session (e.g. `GreaterThanOrEqualsExpression`, `Node_GetAncestorOperation`,
`WhereOperation` while authoring behavior/typesystem code) rather than the baseline's tight
2-3-hop refinement chains on the same DSL concept. `detail:"shape"` then `detail:"full"` on the same
concept (`S1-sonnet-1:761→766`, `S2-sonnet-1:31→…`) is a **deliberate**, cheap two-step pattern (R1's
own `detail` parameter in active use), not the wasteful kind the baseline flagged.

### 3.7 Hotspot #7 (guessable-but-undocumented literals/near-misses) — **IMPROVED: cheaper, not eliminated; one new gap found**

D43's unified near-miss handling changed the *cost* of a wrong guess from ~2-3 turns (generic error,
sometimes a `ToolSearch` to recover) to 1 turn almost everywhere:

- `get_concept_details conceptRef` (singular) → clear message naming the plural key and the
  recognised near-misses → **1 retry**, self-corrects (`S1-sonnet-1:17→18`).
- `alter_nodes MAKE` with top-level `modules`/`rebuild` → `MAKE_INPUT_INVALID` names the exact fix
  (`parameters` object, key names) → **1 retry** (`S2-sonnet-1:97→98`).
- `print_node format:"STRUCTURE"` → "Allowed values: JSON, HTML, PLAIN TEXT" → **1 retry**
  (`S2-sonnet-1:135→136`).
- `search_concepts query:"..."` → "searchTexts is required... Retry with searchTexts set to the
  value you passed as query" → **usually 1 retry**, but **not always** (see below).

**Two residual gaps, not covered by the near-miss vocabulary:**

1. **`get_concept_details conceptName`** (not `conceptRef`/`conceptReference`) was tried **twice in
   a row**, for two different concepts, before switching to `conceptRefs`
   (`S2-sonnet-1:118, :119, :120`) — the generic "no concepts nor languages provided" message fired
   correctly both times, but the worker repeated the same wrong key rather than correcting after the
   first failure. Cost: 2 avoidable turns instead of 1.
2. **`search_concepts` repeated the `query` mistake on the very next call** even though the prior
   error explicitly named the fix: `:121` (`query`) fails with "retry with searchTexts", `:122`
   (`query` + `languageRefs`) fails the same way, `:123` (`searchTexts`) finally succeeds — 2
   avoidable turns where the tool's own error message should have produced 1.
3. **New finding: `alter_nodes MOVE_CHILD` discloses missing parameters one at a time**, unlike
   every other tool checked above. `S2-sonnet-1:34` (missing `nodeReference`) → `:35` (now missing
   `childRole`) → `:36` succeeds — **2 sequential retries** to discover both required parameters,
   because each error names only the next missing key instead of all of them in one
   `missingParameters` list the way D43 describes for the unified path. This looks like
   `MOVE_CHILD`'s own parameter validation is not routed through the same
   `AbstractOps.rejectMissingParameters` helper the rest of the round's evidence shows working well.
   Worth a docs-defects entry (next id would be D49) if the observer wants to log it before Gate 2.

### 3.8 Hotspot #8 (ToolSearch schema fetches) — **unchanged, as expected**

30 `ToolSearch` calls across the round, all 0 B results — harness-level overhead, not addressable by
this plugin, consistent with the baseline's own conclusion.

## 4. Summary: which hotspots moved

| # | Baseline hotspot | Verdict this round |
|---|---|---|
| 1 | Temp-file envelope for small payloads | **Fixed** — envelopes down 83-100 % |
| 2 | Per-root re-validation after a clean model check | **Fixed** — model-level `perRoot` checks replace per-root loops |
| 3 | Skill reference reads | **Half-fixed** — bytes back to baseline, call count flat-to-worse; navigation cost shifted from big-file-grep to directory-grep |
| 4 | Ad-hoc Python for shaping/CSV | Not measurable this round (sonnet-only); shipped R5 script confirmed adopted |
| 5 | Bulk-insert response ≫ input | **Fixed** — compact summary shape live |
| 6 | Discovery-refinement re-calls | Not clearly reproduced this round |
| 7 | Guessable literals/near-misses | **Improved** — 1-turn self-correction is now the norm; 2 residual gaps found (repeated `conceptName`/`query` misses; `MOVE_CHILD`'s one-at-a-time parameter disclosure) |
| 8 | ToolSearch schema fetches | Unchanged (harness-level, out of scope) |

Net effect on the two directly comparable scenarios: **S3 got faster and cheaper on every axis**
(−41 % wall-clock, −32 % cost, −56 % cache-read tokens) with the same task outcome. **S1 got
cheaper per token of context** (−36 % cache-read tokens) but **not faster or fewer-turn** (+27 %
wall-clock, +14 % tool calls) — the token savings from fixed hotspots (#1, #2, #5) were offset by
the skill-navigation regression in §3.3 and by extended-thinking output tokens, which this
model/harness now bills differently than the baseline's model did.

## 5. Not addressed by this round

No code or docs changes were made — this is measurement only, per the request. The one new,
reasonably well-evidenced defect candidate (§3.7.3, `alter_nodes MOVE_CHILD` sequential parameter
disclosure) and the skill-navigation gap (§3.3) are reported here rather than fixed; logging them
formally into `docs-defects.md` and deciding remedies is a Gate 2 decision, not made in this round.
