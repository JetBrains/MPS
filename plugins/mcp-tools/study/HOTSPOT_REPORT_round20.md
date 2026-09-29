# Skill Script Automation Study — Round 20 (2026-09-29)

Status: measurement round complete. Scope on request: **S1 only** × **opus + sonnet** = 2 cells, n = 1.
Result: **S1-opus PASS 6/6, S1-sonnet PASS 6/6.** No remedy was made in this round. Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r21/{SMOKE-*,S1-*}-{worker,server}.jsonl`, `*.meta.json`, `*.eval.md`.
Analysis: `runs-r21/analysis/` (`metrics.csv`, `families.tsv`, `compare.md`, `compare.py`). As in rounds 15–19,
the directory suffix is one ahead of the round number. `run:step` is the 1-based `tool_use` ordinal that
`show_steps.py` prints.

## 0. Harness state

- **Measured surface**: HEAD `07e25ab6b63e`, which is MPS-40208, the commit that rejects invented language ids.
  - It is the same surface as round 19: that round measured this change as uncommitted work.
  - Inventory `634ad3dc…`, the same as round 19. Tools 48 (39 `mps_mcp_*`), descriptions 57,068 B, schemas 40,786 B.
  - Skills `skillsSha256 73a837b7…` on all 4 metas, the same as round 19.
  - **Consequence**: every r19 → r20 difference below comes from effort or noise, not from the tools or docs.
- **Prompt**: `promptSha256 96376ae7…`, the same as every earlier S1 cell. Models: `claude-opus-5-5`,
  `claude-sonnet-5-5`.
- **Worker effort pinned for the first time**: opus `low`, sonnet `high` (gate 2a). The `effort` column of
  `metrics.csv` records it.
  - Round 19 was unpinned; its workers most likely ran opus `medium` and sonnet `xhigh`.
  - Earlier rounds' effort levels are unknown.
- **Instrumentation**:
  - MPS was running from the dev checkout (pid 74775) without the call log.
  - `capture` → `calllog runs-r21/server-calllog.jsonl` → `shutdown` → `start proj-r21/harness` → `wait` →
    SMOKE ×2.
  - All runs used one MPS process (`mpsPid` 79358) with `per-round` isolation.
  - `server_call_surplus` is 0 on both S1 runs.
  - Wrap-up cleared the option and restarted MPS on the dev checkout (pid 83235).
- **Guards**: harness unit tests 59/59; `check_user_agents.py` exit 0.
- **SMOKE context floor** (cache read + write): opus 62,056, sonnet 61,915, unchanged from round 19.

## 1. Metrics against the 2026-09 baseline

`base` is the 2026-09-15 pilot (`HOTSPOT_REPORT.md` §1), re-analysed with the D50 analyser. That is why its
cache-read figures are lower than the table in `HOTSPOT_REPORT.md`. The baseline models were
`claude-opus-5` and `claude-sonnet-5`.

| metric | opus base | opus r19 | **opus r20** | sonnet base | sonnet r19 | **sonnet r20** |
|---|---|---|---|---|---|---|
| pass | True | True | **True** | True | False | **True** |
| effort | ? | (medium) | **low** | ? | (xhigh) | **high** |
| turns | 181 | 90 | **78** (−57 %) | 148 | 76 | **93** (−37 %) |
| wall-clock s | 1,395 | 349 | **280** | 1,322 | 229 | **351** |
| cost USD | 14.96 | 3.10 | **2.24** (−85 %) | 5.83 | 1.59 | **2.81** (−52 %) |
| cache-read tokens | 18.31 M | 6.24 M | **4.62 M** (−75 %) | 15.52 M | 4.16 M | **8.20 M** (−47 %) |
| tool calls | 173 | 88 | **76** (−56 %) | 135 | 69 | **83** (−39 %) |
| MCP calls | 90 | 59 | **45** | 71 | 44 | **53** |
| Bash | 73 | 24 | **26** | 3 | 6 | **17** |
| skill reads / bytes | 26 / 152.9 K | 15 / 136.9 K | **14 / 73.5 K** | 9 / 160.1 K | 12 / 38.7 K | **14 / 86.4 K** |
| temp-file envelopes | 32 | 2 | **2** | 23 | 1 | **0** |
| tool-result bytes | 254 K | 203 K | **124 K** | 444 K | 109 K | **193 K** |
| authored tool-input chars | 89.8 K | 32.1 K | **26.2 K** | 70.0 K | 28.2 K | **43.7 K** |
| errors / retries | 2 / 2 | 4 / 3 | **1 / 1** | 5 / 2 | 3 / 3 | **4 / 4** |
| validation loops | 1 | 0 | **0** | 1 | 0 | **0** |
| compactions | 1 | 0 | **0** | 2 | 0 | **0** |

Against the baseline, both models finish the same task in roughly half the turns or fewer, at a fraction of the
cost, and still pass.

Against round 19, on an identical surface:
- **opus** at `low` is the best S1 opus cell so far: fewest turns, lowest cost and cache read, half the
  skill bytes.
- **sonnet** at `high` is heavier than round 19's (unpinned, probably `xhigh`) sonnet: +17 turns and 2× cache
  read. It also passes where round 19 failed, because it put the self-reference rule in the constraints aspect.
- With n = 1 and a different effort level per model, neither change can be attributed to effort with confidence.

## 2. Hotspots from the baseline: what moved

The counts are from `runs-r20/analysis/families.py`, run over the baseline, r19 and r20 directories. The
output is `runs-r21/analysis/families.tsv`.

| # | Baseline hotspot | Baseline S1 (opus / sonnet) | r20 (opus / sonnet) | Moved? |
|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash** | 32 / 23 envelopes | 2 / 0 | **Resolved** (R1 inline results). The remaining 2 opus envelopes are large dumps. |
| 2 | **C — per-root validation after a clean model check** | 7 / 7 per-root checks | 1 / 0, 0 after a clean model check; `perRoot` used 2 / 5 times | **Resolved** (R2 `rootsChecked` + `perRoot`). |
| 3 | **D — skill reference reads** | 152.9 K / 160.1 K; `referent-constraints.md` (49.8 K) read whole, twice | 73.5 K / 86.4 K; no whole-file read of a monolith; 0 re-reads | **Moved, not solved** (split references). Sonnet still reads 9 constraints and smodel files at `S1-sonnet-1:27-34` for one scope rule. Opus fans out over 3 `ls`/`grep` probes of `mps-aspect-typesystem` (`S1-opus-1:60-63`) before finding the blueprint. |
| 4 | **B′ — ad-hoc Python re-authored for result shaping** | 30 / 0 heredocs | 4 / 3 | **Mostly resolved** for opus (−87 %). Sonnet's 3 are JSON-escaping checks for blueprints (`S1-sonnet-1:49`), not result shaping. |
| 5 | **B — blueprint authoring → insert** | 25 / 17 inserts; response 29.5 K / 16.4 K | 13 / 13; response 10.0 K / 23.5 K | **Fewer calls, still the main retry source.** Sonnet hit 3 JSON syntax errors hand-escaping inline blueprints for the scope closure: `MalformedJsonException` at `S1-sonnet-1:42` and `:48`, `EOFException` at `:47`. It recovered by checking the JSON in Python first (`:49→:50`). The baseline D3 `/tmp` rejection is gone: opus passed `/tmp/*.json` file paths (`S1-opus-1:30-31`). |
| 6 | **Discovery refinement** (`get_concept_details` re-called 1–2 steps later) | 11 / 7 calls, 1 / 1 refinement | 2 / 5 calls, 1 / 1 refinement | **Fewer calls**; the refinement pattern persists at 1 per run. |
| 7 | **Guessable-but-undocumented literals** | 0 / 2 error→retry pairs | 1 / 1 | **Level, but cheaper.** Unknown property `usesSeparator` on `CellModel_RefNodeList` (`S1-opus-1:30`). Unknown `FIND_INSTANCES` key `nodeDetail` (`S1-sonnet-1:58`). Both errors now name the accepted keys, so each is fixed on the next call. |
| 8 | **`ToolSearch` schema fetches** | 4 / 15 | 3 / 4 | **Moved for sonnet.** `probing.py` shows 0 `mps_mcp` calls made before their schema was loaded (MPS-40208 hint). |

**No new hotspot family** appears in these two runs.

The only pattern that grew compared with round 19 is family 5 on sonnet: inline JSON blueprints for
BaseLanguage closures inside constraints, built in staged `update_node ADD` calls. That work costs 11 steps at
`S1-sonnet-1:42-52`, for 3 errors.

## 3. Remaining hotspots, ranked by avoidable turns (this round)

| # | Hotspot | Avoidable turns (2 runs) | Tier (first fit) | Note |
|---|---|---|---|---|
| 1 | Hand-escaped inline blueprint JSON for BaseLanguage closures (sonnet) | ~4 (3 errors + 1 validation script) | D | `mps-aspect-constraints` / `mps-node-editing` could say "write the blueprint to a file under `$TMPDIR` and pass the path once it is above ~1 KB". Opus already does this. |
| 2 | Skill fan-out for scope and typesystem blueprints | ~5 | D | A single "self-exclusion scope" example in `mps-aspect-constraints/SKILL.md` would replace `S1-sonnet-1:27-34`. Likewise, a direct link to the non-typesystem checking blueprint from `mps-aspect-typesystem/SKILL.md` would replace `S1-opus-1:60-63`. |
| 3 | Guessable keys (`usesSeparator`, `nodeDetail`) | 2 | D | Self-correcting now; low priority. |

At ~60–100 K cache-read tokens per turn at this context size, the whole remaining addressable waste is about
10 turns across two runs. That is too small to justify an A/B round without more cells (S3 or S5) or n > 1.

## 4. Caveats

- n = 1 per cell. The r19 ↔ r20 sonnet swing (76 → 93 turns) on an identical surface shows the noise is
  of the same order as the effect.
- Effort differs from every earlier round, and the baseline also used older models (`opus-5` and `sonnet-5`).
  The baseline → r20 deltas are therefore surface + model + effort, not surface alone.
