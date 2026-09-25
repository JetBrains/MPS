# Plan: investigate H7 — skill reading as the dominant context cost

Status: **investigation starting point, deliberately without remedies.** Written 2026-09-17 so the
finding is not lost between study rounds. It collects what three measured rounds already tell us
about H7, names the open questions, and proposes how to find answers. It intentionally does **not**
propose concrete edits, tool changes, or a catalog restructuring — choosing a remedy before the
attribution work below would repeat round 2's mistake of optimising a cost we had not yet located.

One targeted, evidence-backed exception is already planned elsewhere: remedy **M2** (trim the
greenfield reading list in `mps-model-manipulation`) in
[`round3-remedies-implementation-plan.md`](round3-remedies-implementation-plan.md). M2 is scoped to
routing and stopping rules for one measured chain. Everything systemic belongs here.

## The finding

After three rounds of remedies, skill-documentation reading is **the only measured axis that is
worse than the original baseline**, and it is now the largest single consumer of context in the
greenfield cell.

From `study/HOTSPOT_REPORT_round3.md` §1 (sonnet cells, the two cells measured in all three rounds):

| metric | baseline | round 2 | round 3 | r3 vs baseline |
|---|---|---|---|---|
| skill bytes read (S1 + S3) | 178,026 | 192,726 | 196,595 | **+10.4 %** |
| skill-file reads, S1 | 9 | 21 | 14 | +56 % |
| skill bytes read, S1 | 160,079 | 182,995 | **188,927** | +18 % |
| tool calls (S1 + S3) | 161 | 175 | 134 | −16.8 % |
| cache-read tokens (S1 + S3) | 31.50 M | 32.08 M | 21.72 M | −31.1 % |
| tool-result bytes (S1 + S3) | 627,705 | 391,103 | 359,855 | −42.7 % |

Every other axis fell. H7's round-3 verdict is *"Confirmed, and now the dominant residual"*
(§3, H7), and the A/B verdict (§1) reads: round 3 met the study's context threshold but missed the
tool-call threshold against the baseline "because S3 is now flat and S1's residual cost has moved
out of the tool layer and into documentation reading (§2.3, §2.9)".

For scale, S1-sonnet-1 read **188,927 bytes of skill text against 62 MCP calls** whose results
totalled 317,934 bytes. Documentation is now the same order of magnitude as everything the tools
returned.

## Evidence already in hand

### 1. The pathology changed shape between rounds — twice

- **Baseline:** 12 reads / 178 KB, with `referent-constraints.md` (48.2 KB) read *twice in one run*.
- **Round 2:** remedy R6 (jump tables at the top of every reference > 20 KB; each aspect SKILL.md
  naming the single file for the common case) was applied. Result: opus halved its reading
  (137 KB → 74 KB); **sonnet went the other way** (9 → 21 reads, 183 KB), and
  `referent-constraints.md` was read 4× (round-2 §2.7, §4 D16 notes the checkout's own copies were
  also stale at the time).
- **Round 3:** the re-read pathology is **gone** — S1 touched *14 distinct files and re-read none*
  (round 3 §2.3) — but total bytes are the highest of the three rounds.

Read together: R6 fixed *repetition*; it did not touch *breadth*.

### 2. The current shape is breadth-first fan-out inside one skill

Round 3 §2.9: S1 read **five** separate files from `mps-model-manipulation/references/` —
`collections-catalog.md` (14.4 KB), `foreach-statements.md` (3.0 KB), `dot-expression-basics.md`
(26.0 KB), `property-and-mutation-ops.md` (11.5 KB), `variable-declarations.md` (6.3 KB) — plus the
14.3 KB `SKILL.md`, to author **one behavior method and one checking rule**. Nothing in the run
suggests a wrong turn; the worker simply walked the reference set.

### 3. Catalog inventory (measured 2026-09-17, `resources/jetbrains/mps/agents/mcp/skills/`)

| | value |
|---|---|
| skills | 31 |
| files | 291 |
| total bytes | 1,680,836 (1.68 MB) |
| `SKILL.md` bytes (31 files) | 305,885 (avg 9.9 KB) |
| frontmatter `name` + `description` across all skills | 18,420 B |
| files > 20 KB | 5 (largest: `mps-aspect-constraints/references/referent-constraints.md`, 48.2 KB) |
| largest skills by total bytes | `mps-mcp-workflow` 191 KB / 16 files; `mps-model-manipulation` 153 KB / 19; `mps-aspect-generator` 132 KB / 21; `mps-aspect-constraints` 113 KB / 9 |
| duplicated per-skill preamble | the `## Loading companion skills` block is present in **all 31** `SKILL.md` files, ~1,091 B each |

So one greenfield run read ≈ 11 % of the whole catalog, and ≈ 62 % of what *all* 31 `SKILL.md` files
together would cost.

### 4. The fixed per-turn floor, for comparison

H10, confirmed and flat across three rounds: **97,052 tokens** per turn (recomputed identically for
all rounds from the SMOKE `result` event; round 2's published per-message figure was a different,
non-comparable method — round 3 §1). Tool inventory 47 tools / 38 `mps_mcp_*`, unchanged between
rounds 2 and 3, with six descriptions growing 1,373 B in total, *"invisible against a ~97 K floor"*.

An arithmetic observation worth verifying rather than trusting: S1's cache-read was 18.56 M tokens
over 118 turns ≈ 157 K/turn, against a 97 K floor — i.e. ~60 K/turn of variable context, while
188,927 bytes of skill text is ~47 K tokens at a 4 bytes/token heuristic. If that holds, skill text
is most of the *variable* per-turn context, and the real price of a reference read is
`tokens × remaining turns × cache-read rate`, not the one-time read. That framing — if confirmed —
would make *when* a file is read matter as much as *whether* it is read. Both the byte→token
conversion and the cache accounting need checking before anyone relies on this.

### 5. Measurement hygiene is now sound, which is new

Since D19 (round 3 §0) the fixtures no longer ship the doc surface: `run_worker.sh` installs the
**live** catalog per run through the product's own `mps_mcp_initialize_project_for_agents` and
records `skillsSha256` beside `promptSha256` and `inventorySha256`. Both round-3 cells carry the same
`skillsSha256`, so "the current skills" is a verified fact. Any H7 experiment from here on can vary
the catalog and *prove* which catalog was read — the earlier rounds could not (D16/D19; lesson 24).

## What we think we know about the mechanism

Observations, not conclusions. Each is a candidate to confirm or kill.

1. **Nothing tells a worker how much to read.** The catalog has jump tables (R6) and rich index
   entries, but no budget, no stopping rule, and no "you are done reading" signal.
2. **The indexes are written to be inviting.** `mps-model-manipulation/SKILL.md` lists four
   reference files as peers in one workflow step and then describes 19 files in symmetric,
   attractive prose ("read first when an error looks weird", "open when you need to pick a
   concept"). A scan of that list plausibly reads as a recommended sequence rather than a lookup
   table.
3. **Cross-skill pointers name a skill, never a file.** All 14 `Related Skills` lines that point at
   `mps-model-manipulation` say "full smodel/collections reference" — an invitation to enter a
   153 KB skill with no entry point. (This specific instance is what M2 addresses.)
4. **Model behaviour differs sharply on the identical task.** Round 2: opus halved its reading while
   sonnet doubled it. Round-2 §2.7 attributes sonnet's spike to prior-knowledge gaps, not task size
   — reading correlates with *what the model does not already know*.
5. **Reading can be load-bearing.** Round 2's single largest cost (~41 tool calls, a quarter of a
   run) was **one missing fact**; shipping that one paragraph removed the study's largest measured
   variance (H11 confirmed in round 3; lesson 23: *rank remedies by the variance they remove, not
   only by the chains they shorten*). Cheaper reading that reintroduces a knowledge gap is a net
   loss, and the loss shows up in a different metric.
6. **The discovery surface has a fixed cost too.** 18.4 KB of frontmatter descriptions across 31
   skills is paid before any file is read. Whether it is charged once or per turn, and whether it is
   inside or outside the 97 K floor, is not established.

## The central tension

Every plausible direction trades context against knowledge:

> The cheapest run is the one that reads nothing and already knows everything. The most reliable run
> is the one that reads the fact it lacks. Round 2 proves the second failure mode is more expensive
> than the first.

So the investigation's first job is **attribution** — which reads changed the output — not
reduction. A remedy that cuts 100 KB and adds one 40-call detour is worse than no remedy, and the
study's own thresholds (≥30 % fewer tool calls **and** ≥25 % fewer context tokens, **with no drop in
pass rate**) would score it as a failure.

## Open questions

The investigation agenda. Roughly in dependency order.

1. **Which reads earned their cost?** For each read in the round-3 transcripts, did the worker's
   next action use something only that file could supply? This is the measurement we have never
   made; every other question depends on it.
2. **What is the marginal price of a read?** One-time input tokens, or tokens × remaining turns via
   cache-read (§4)? Does reading the same bytes at turn 10 cost ~10× reading them at turn 100?
3. **Is byte count even the right metric?** `skill_bytes_read` counts file bytes. Tokens, cache
   writes, and position in the conversation may rank files differently. Does the ranking of
   offenders change under a token-based metric?
4. **Does reading less cost pass rate?** The only honest test is an ablation: the same cells with
   restricted reading, scored on the study's pass criteria. Without this, every reduction is a guess.
5. **Why is the model spread so large?** Opus halved and sonnet doubled on identical prompts and an
   identical catalog. Is the difference prior knowledge, reading strategy, or the harness's skill
   loading? Which of the two behaviours should the catalog be designed for?
6. **Is fan-out a documentation property or an agent property?** Would *any* set of 19 sibling files
   get walked breadth-first, regardless of how the index is written? If so, the lever is structural
   (how content is partitioned), not editorial.
7. **What is the right granularity?** Today: 31 skills × ~9.9 KB entry points × up to 19 references.
   Are there natural units smaller than a file that an agent could retrieve, and can the host's skill
   loader serve them?
8. **How much do the frontmatter descriptions cost, and where?** 18.4 KB before any read — once, or
   per turn? Inside the 97 K floor, or on top of it?
9. **Which content is never read in any round?** Three rounds of transcripts (14 runs) plus the
   catalog inventory can produce a read/unread map. Unread bulk is not automatically waste — it may
   be the fact that prevents a rare 40-call detour — but the map is a prerequisite for any
   partitioning decision.
10. **Does the same cost appear outside the study's two cells?** S1 and S3 are one greenfield and one
    bulk-authoring task. S2 and S4–S8 (defined in `docs/skill-script-automation-study.md` §"S2…S8",
    never run) were explicitly designed against H4/H7. A read-heavy cell such as S8 ("onboard an
    unknown project") might dominate everything measured so far.

## Suggested shape of the investigation

Process only; deliberately free of remedy design.

1. **Attribute before optimising.** Mine the existing round-1/2/3 transcripts for a per-read
   attribution (question 1) and a read/unread map (question 9). No new runs needed — 14 runs of
   evidence already exist.
2. **Settle the cost model** (questions 2, 3, 8) from the same transcripts plus the SMOKE
   `result`-event method that produced the 97 K floor. Decide the metric H7 will be judged on
   *before* proposing anything, and add it to `analyze_runs.py` so later rounds report it
   automatically.
3. **Ablate** (questions 4, 5): identical cells, restricted reading, scored on pass criteria and on
   the settled metric, on both models. The per-run catalog install (D19) makes a catalog-varying A/B
   sound for the first time.
4. **Then, and only then, choose a direction** (questions 6, 7) with the attribution and ablation
   results in hand, and re-measure against the study's existing thresholds.
5. **Consider widening the cell matrix** (question 10) if the greenfield/bulk pair turns out not to
   be where the cost concentrates.

## Evidence and tooling available

- **Transcripts and analysis, three rounds:** `~/MPSProjects/mcp-study/runs-r3/` (3 transcripts +
  server slices + metas + install results + 2 eval reports + `analysis/` with `metrics.csv`,
  `tools.json`, `chains.json`, `errors.json`, `hotspots.md`); round 2 at
  `~/MPSProjects/mcp-study/runs/`; baseline at `~/MPSProjects/mcp-study-baseline/runs/`. All three
  rounds were re-analysed from raw transcripts with the same `analyze_runs.py`, so the numbers are
  comparable (round 3 §"Baselines of record").
- **Analyzer:** `plugins/mcp-tools/study/scripts/analyze_runs.py` already emits `skill-file reads`
  and `skill bytes read` per run; `show_steps.py` renders a transcript step by step (the `run:step`
  citations in the reports).
- **Pinning:** `promptSha256` (scenario), `inventorySha256` (tool surface), `skillsSha256` (doc
  surface) per run; the round-3 tool inventory sha is `3e48e30b2f1b…` and the catalog sha
  `f60f2a50967c…`.
- **Procedure:** the re-runnable loop is the `skill-optimization-study` skill
  (`.agents/skills/skill-optimization-study/`, with `references/lessons.md` — 25 lessons, of which
  12, 23, 24 and 25 bear directly on H7) and
  `plugins/mcp-tools/docs/skill-script-automation-runbook.md`.
- **Scenarios:** `plugins/mcp-tools/study/scenarios/` (S1–S8 + SMOKE); only S1, S3 and SMOKE have
  ever been run.
- **Catalog source of truth:** `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, with
  hand-propagated copies in `./.agents/skills/` and `./.claude/skills/` (runbook step 7.9) — never
  run `mps_mcp_initialize_project_for_agents` in this checkout.

## Boundaries for whoever picks this up

- **Do not delete reference content on the strength of this document.** It records a cost, not a
  verdict on any file's value (observation 5, question 9).
- **Keep `promptSha256` stable.** It is the cross-round comparison key; when a prompt and a fixture
  disagree, change the fixture (lesson 25).
- **Judge by chains and variance removed, not by turn deltas** — n = 1 per cell and model variance is
  large; deltas under ~15 % are not signal (lesson 12).
- **Coordinate with M2.** If M2 has already landed when this work starts, the greenfield fan-out
  numbers above are pre-M2 and must be re-measured before being used as a baseline.

## Cross-references

- `study/HOTSPOT_REPORT_round3.md` — §1 (metrics), §2.3 (hotspot 3), §2.9 (fan-out), §3 (H7, H10,
  H11), §6 (M2), §7 (artefacts).
- `study/HOTSPOT_REPORT_round2.md` — §2.7 (the sonnet regression and its knowledge-gap reading), §4
  (D16), R6's effect.
- `study/HOTSPOT_REPORT.md` — the remedies table, row R6 (line 105: R6 as originally specified,
  including its "~100–150 KB context per greenfield run" estimate).
- `docs/skill-script-automation-study.md` — H7 as originally stated; the S1–S8 cell definitions.
- `docs/round3-remedies-implementation-plan.md` — M2, the one targeted reading fix, and its explicit
  boundary against this plan.
