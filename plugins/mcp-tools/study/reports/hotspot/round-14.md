# Skill Script Automation Study — Round 14 (2026-09-25)

Status: measurement round complete. Scope on request: **S9** (read-only Console MCP queries) ×
**opus + sonnet** = 2 cells, plus one SMOKE per model. It is the first S9 run on the D54 treatment:
the response `preview`, the "Reading a command's output" section of `mps-console`, and the revised
S9 prompt and criteria. No code or docs remedy was made in this round. Nothing was committed or
pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r15/{SMOKE,S9}-{opus,sonnet}-1-{worker,server}.jsonl`,
`*.meta.json`, `S9-*.eval.md`, `analysis/`. The directory suffix is `-r15` because `-r14` holds
round 13. Citations use `run:step`: the 1-based `tool_use` ordinal, as in `show_steps.py`.

**Baseline of record.** The 2026-09 baseline (`HOTSPOT_REPORT.md`, 2026-09-15) has **no S9 cell**,
because Gate 1 stopped that matrix at S1 + S3. This round therefore compares in two ways:
- **Per hotspot family**: against the baseline's ranked families #1–#8 (§3).
- **Per cell**: against the only earlier S9 measurement, `S9-sonnet-1` of round 11
  (`runs-r12`, `HOTSPOT_REPORT_round11.md`). The prompt differs between the two (see §0), so
  treat that per-cell comparison as indicative, not like-for-like.

## 0. Harness state

- **MPS**: 2026.1 EAP, build 261.25134, from this checkout (HEAD `27fe9b9f7f0a`).
- **Plugin freshness**: the MPS running at round start (pid 2785, started 11:22) predated the
  uncommitted `JetBrainsMPSConsoleMcpToolset.kt` edit (12:36, the D54 response `preview`).
  - `build_project` was green with 0 problems.
  - The compiled class carries the new description text; this was checked in the class file.
  - Then `capture` → `calllog runs-r15/server-calllog.jsonl` → `shutdown` (closed the dev
    checkout) → `start` on a synthesized harness project → `wait` → SMOKE ×2.
- **One MPS for the round**: pid **37107**, the same `mpsPid` in all four metas.
- **Wrap-up**:
  - The last scratch was closed with `shutdownWithLastProject=true` and `calllog` was cleared.
  - MPS was restarted on the dev checkout (pid 44961); `ps` confirms it carries no
    `-Dmps.mcp.calllog`.
- **Measured surface**:
  - `inventorySha256 e97199ab…`: 48 tools, 39 `mps_mcp_*`.
    - Descriptions are 56,749 B, +843 B vs round 13, almost all of it the longer
      `get_console_history` description (now 1,678 B).
    - Schemas are 40,200 B.
  - `skillsSha256 2fc7c9e0…`, identical on all four runs.
  - What was measured: HEAD **plus the uncommitted D54 working-tree edits** (the console toolset,
    the `mps-console` skill in all three trees, `mcp-tools-index.md`). No file changed during the
    round; `git status` was the same before and after.
- **Prompt changed since round 11**: `promptSha256 5129d9ef…` vs round 11's `e2f47ff0…`.
  - Step 2 adds `.select({~it => it.name})`.
  - Step 3 adds "and report what each query printed".
  - These are D54's study-side changes (uncommitted). They make the round-11 cell a
    different, slightly larger task: one more closure in the query-2 blueprint.
- **Fixture**: `fixtures-r12/recipes.tar.gz`, sha256 `40f91e40…`. It is byte-identical to the
  `fixtures-r4` tarball round 11 used. It was verified free of `.claude/`, `.agents/`,
  `AGENTS.md` and `CLAUDE.md`.
- **Guards**: `check_user_agents.py` exit 0; the harness unit tests pass (43/43).
- **SMOKE**:
  - One MCP server, and each call-log slice has 1 line.
  - Context floor (cache read + write at the SMOKE `result`): opus **62,050**, sonnet
    **131,205** tokens.
- **Audit**: `server_call_surplus` is 0 on both S9 runs, and there are 0 pre-dispatch or
  Welcome-screen rejections.

## 1. Task outcomes

Both cells **PASS**. The evaluator was Opus, read-only, and checked live before each project
closed, against `scenarios/S9/done_criteria.md`.

| cell | verdict | evidence |
|---|---|---|
| S9-opus-1 | PASS 3/3 | history `[0] #instances(Ingredient)` → `3 nodes`; `[2] …where({it => it.name.length() > 0; }).select({it => it.name; })` → `[Flour, Milk, Egg]`; the console input is the recalled `#instances(Ingredient)` (new node id); models are unchanged, 0 problems |
| S9-sonnet-1 | PASS 3/3 | the same history and input; exactly 2 commands, no failed attempts |

**D54 check 2 is now passable as written.** Round 11 could only confirm the count. This time both
the evaluators and both workers read the names from the history's response `preview`. Each
`preview` matched `print_node(PLAIN TEXT)` on the response `reference`, apart from the two
padding spaces on each side that `print_node` adds.

## 2. Round metrics

| metric | S9-sonnet-1 (r11) | S9-opus-1 | S9-sonnet-1 | sonnet Δ vs r11 |
|---|---|---|---|---|
| task pass | True | True | True | = |
| turns | 45 | 35 | 44 | −2 % |
| wall-clock s | 311 | 155 | 313 | +1 % |
| cost USD | 1.37 | 1.01 | 1.32 | −4 % |
| cache-read tokens | 7,475,706 | 2,670,440 | 7,200,735 | −4 % |
| cache-write tokens | 314,287 | 136,831 | 274,239 | −13 % |
| tool calls | 41 | 33 | 40 | −2 % |
| MCP calls | 25 | 19 | 19 | **−24 %** |
| MCP discovery calls (`search_concepts` / `get_concept_details` / `parse_java_and_insert`) | 8 | 1 | 2 | **−75 %** |
| skill-file reads | 9 | 6 | 13 | **+44 %** |
| skill bytes read | 67,291 | 29,906 | 54,419 | −19 % |
| Bash calls | 11 | 10 | 14 | +27 % |
| ToolSearch | 1 | 3 | 2 | |
| temp-file envelopes | 0 | 0 | 0 | = |
| error envelopes | 1 (server JSON parse) | 1 (local JSON) | 1 (local JSON) | moved |
| error→retry pairs | 0 | 1 | 1 | |
| `print_node` on responses after history | 2 | 2 | 2 | **=** |
| MCP authored chars | 7,779 | 4,046 | 4,128 | −47 % |
| tool-result bytes | 97,403 | 60,144 | 78,767 | −19 % |
| server ms | 446 | 619 | 314 | |

The sonnet cell is **flat overall**: −1 tool call, −1 turn, −4 % cost. Its MCP traffic fell by a
quarter, but skill-catalog navigation absorbed most of the saving. That is the lesson-35 pattern
again: once the MCP detours are gone, the turns move to `Bash`/`Read` over `skills/`. Opus did the
same task in 33 calls and 155 s. With n = 1 per cell, the opus/sonnet gap is model variance
(lesson 12), not a treatment effect.

## 3. Which baseline hotspots moved (2026-09 families, S9 lens)

| # | Baseline hotspot (HOTSPOT_REPORT.md §2) | This round | Verdict |
|---|---|---|---|
| 1 | A: temp-file envelope → Read/Bash | 0 envelopes in both runs (baseline 84 across 4 runs). The largest result, `get_console_history` at 5,281 B, came back inline. | **Stays fixed** |
| 2 | C: per-root validation after a clean check | Not exercised: 1 `check_root_node_problems` per run, on the console command before running it (`S9-opus-1:25`, `S9-sonnet-1:32`) | n/a |
| 3 | D: skill reference reads before an MCP call | opus: 7 skill-grep steps for the query-2 closure chain (`S9-opus-1:9–14, :18`). sonnet: 13 reads / 54 KB, including the whole `dot-expression-basics.md` (24 KB, `:5`) and the whole `closures-catalog.md` (9.5 KB, `:16`), plus 9 `grep` calls across `mps-model-manipulation`, `mps-aspect-constraints` and `mps-quotations` (`:6–9, :14–20`) | **Still alive; now the largest family.** This is D50's catalog-wide grep shape, reached from `mps-console` via `mcp-insertion.md:97` ("Building the smodel/collections expressions … is the job of `mps-model-manipulation`") |
| 4 | B′: ad-hoc Python re-authored | Both runs hand-wrote the ~3.9 KB query-2 blueprint in a heredoc, hit a bracket error, then regenerated it with a Python builder (`S9-opus-1:19→20`, `S9-sonnet-1:26→27`, then `:28` `cat` of the result) | **Reproduces, 2/2 models.** Round 11 had the same miscount, then as a server-side `EOFException` (`r11 S9-sonnet-1:28`); workers now validate locally first, so the error moved but did not go away |
| 5 | B: blueprint file → insert | 1 file-path insert per run via `/tmp/*.json`, accepted (D3 does not reproduce). The insert response is 1,163 B, far smaller than the 3.9 KB input | **Fixed**: no longer larger than the input |
| 6 | Discovery refinement (`get_concept_details` re-called) | sonnet: `shape` then `full` on the same concept (`:12→13`, 1 hop). Opus none. Round 11 used 8 discovery calls, including a `parse_java_and_insert` scratch to harvest `String.length()` (`r11 :21–24`) | **Moved down**: MCP discovery fell 8 → 1–2. Both workers got the JDK-stub reference form by analogy from `dot-expression-basics.md:383` (`~Iterable.iterator%28%29`) |
| 7 | Guessable-but-undocumented literals | 0 argument errors, 0 near-misses; `print_node` `PLAIN TEXT` / `JSON` were right the first time | **Stays fixed** (for S9's tool set) |
| 8 | ToolSearch schema fetches | 3 / 2 | Unchanged (harness-level) |
| — | Round-11 §3.9 / D54: response collapses to a count | The `preview` is present on both responses, and both workers reported `3 nodes` and `[Flour, Milk, Egg]` correctly | **Fixed** (S + D); detour not removed, see §4.1 |

## 4. Findings

### 4.1 D54 re-measure: the preview works, but the `print_node` detour did not disappear

D54's own re-measure criterion reads: "the next S9 run reads both responses from history without a
`print_node` detour and passes check 2". The first half fails and the second half passes:
- **Check 2 passes**, on both models.
- **The detour persists.** Both workers already had the answer from the history `preview` and
  still called `print_node` on each response: `S9-opus-1:28–29`, `S9-sonnet-1:36–37`. That is
  2 calls per run, the same count as round 11, where the calls were necessary.
- **The stated reason is exactness.** Opus: "Getting the exact response text". Sonnet: "Let me
  get the exact full text of each response to be precise in the report".

The wording that invites it is `mps-console/SKILL.md:46`: "… cut at 200 characters … For the exact
full text, call `mps_mcp_print_node` …". The same sentence is in the tool description: "for the
exact full text print the response's `reference`". Neither says **when the preview already is the
full text**: under 200 chars, a single line, and present. That is how both S9 responses look.

- **Tier D.** Say that a `preview` shorter than 200 characters with no `…` cut *is* the printed
  text, apart from surrounding whitespace. Keep `print_node` for an absent or cut preview, or for
  multi-line output whose line breaks matter.
- **Stronger variant, tier S.** Add `previewComplete: true|false` to each entry, so the agent
  does not have to infer it. This is deterministic, since the server knows whether it truncated.
- **Saving**: 2 calls, ≈ 2 turns per S9-like run.
- **Risk**: low. For a multi-line response the collapsed preview loses line structure; the
  doc must keep that case.

### 4.2 New defect candidate D61: no worked blueprint for a console query chain

The dominant cost in both runs was building one expression:
`#instances(C).where({~it => it.<prop>.length() > 0}).select({~it => it.<prop>})`. Opus spent 10
calls (`:9–14, :17–20`) and sonnet 18 (`:4–9, :12–20, :26–28`), each including a failed
hand-bracketed JSON attempt. The pieces exist, spread over four files in two skills:
- `DotExpression` / `SPropertyAccess`: `mps-model-manipulation/references/dot-expression-basics.md`,
  `property-and-mutation-ops.md`.
- Closure plus `InferredClosureParameterDeclaration` with the mandatory `type` child:
  `closures-catalog.md`, `golden-rules-and-pitfalls.md:8`.
- `String.length()` as `InstanceMethodCallOperation` to a JDK stub: only by analogy, from
  `dot-expression-basics.md:383`.
- `GreaterThanExpression` / `IntegerConstant`: found in `mps-aspect-constraints` validator examples.

`mps-console/references/mcp-insertion.md` lists the console operation concepts (`:87–88`), then
hands off at `:97`. It never shows one complete query-with-closure blueprint, although the
Console's typical job is exactly that shape.

- **Tier**: T template, with D as the carrier.
- **The asset**: one complete, copy-pasteable blueprint in `mcp-insertion.md` for
  `#instances(<C>).where({~it => <predicate on it.<prop>>}).select({~it => it.<prop>})`, with
  `CUSTOMIZE` notes on the concept, the property and the predicate.
- **What it must include**: the JDK-stub method-call form for one `String` method, and a note that
  the dry run's unresolved-`it` warnings are expected (both workers had to reason that out:
  `S9-opus-1:21`, `S9-sonnet-1:29`).
- **Lesson 19 applies**: the example must not use S9's domain. No `Ingredient`, no `name.length`;
  use, for example, `ClassConcept` with `.startsWith("Test")`, and diff it against the scenario
  prompt before a round.
- **Saving**: ≈ 6–14 calls per run, plus the 1 retry. This family is all of the remaining
  model-to-model variance.
- **Risk**: the example becoming an answer key; mitigated by the domain rule above.
- **Alternative**: a script that builds the blueprint from a short spec would be P-off. That is not
  justified by 2 runs; the template is the first fit.

### 4.3 Dry run before every console insert (hypothesis, not a defect)

Both runs dry-ran both inserts: 2 of 4 insert calls per run (`S9-opus-1:6, :21`,
`S9-sonnet-1:22, :29`), including the trivial one-node `#instances(Ingredient)`. That follows
`mcp-insertion.md`'s numbered procedure. It saves at most 1–2 calls, and only if a failed real
insert provably leaves the console input untouched, which **this round did not verify**.
Unmeasured; nothing is filed.

## 5. Remedy candidates for Gate 2

| id | remedy | tier | owner files | saving (S9) | evidence |
|---|---|---|---|---|---|
| R-a | Say when a response `preview` is the full text; optionally add `previewComplete` | D (+ optional S) | `mps-console/SKILL.md:46` (three trees), `get_console_history` description in `JetBrainsMPSConsoleMcpToolset.kt` | 2 calls/run | §4.1 |
| R-b | Complete query-with-closure blueprint template in `mcp-insertion.md` (D61) | T via D | `mps-console/references/mcp-insertion.md` (three trees) | 6–14 calls + 1 retry/run | §4.2 |
| — | D50 directory index | D | already open | would also cover part of R-b's navigation | §3 row 3 |

**No evidence this round** for: dropping the dry run (§4.3), and any S9 server-side composite
beyond `previewComplete`.

A/B note: R-a + R-b together target ≈ 8–16 of 33–40 tool calls, 25–40 %. That is enough to test
the ≥ 30 % A/B bar on S9 with a same-prompt re-run. Hold `promptSha256 5129d9ef…` fixed.

## 6. Comparability caveats

- **n = 1 per cell.** Opus vs sonnet differences are variance (lesson 12). The r11→r14 sonnet
  delta is one pair.
- **The r11 cell ran a different prompt** (no `.select`, no "report"), the old check-2
  criterion, and a plugin without response previews. §2's Δ column and §3's per-family verdicts
  are the comparable part; absolute turn counts are not a clean treatment effect.
- **The measured surface includes uncommitted edits.** If D54 is committed with further changes,
  `skillsSha256` / `inventorySha256` for the next S9 round will differ from `2fc7c9e0…` /
  `e97199ab…`.
