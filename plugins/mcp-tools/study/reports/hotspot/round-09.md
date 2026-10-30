# Skill Script Automation Study — Round 9 (2026-09-23)

Status: measurement round complete. Scope on request: **S3** (bulk model authoring) and **S4**
(language refactor + migration) on **sonnet only** = 2 cells, plus one SMOKE harness check. No
code or docs changes were made before this round — it measures the *current* state of skills and
tool descriptions (as landed through round 8), not a treatment. Nothing was pushed.

Baseline of record: `HOTSPOT_REPORT.md` §1–§2 (2026-09-15, S1+S3 on opus+sonnet). S4 has **no prior
baseline row** — it was listed unmeasured in every round through round 8 — so this is its
first-ever measurement.

Evidence: `~/MPSProjects/mcp-study/runs-r9/{S3,S4,SMOKE}-sonnet-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `*-install.json`, `analysis/`. Every claim cites `run:step` (1-based
`tool_use` ordinal in the worker transcript).

## 0. Harness state

- **MPS**: 2026.1 EAP from this checkout. Restarted once by the observer (`mps_control.sh
  capture` while pid 57435 was alive with the dev checkout open → `calllog` repointed at
  `runs-r9/server-calllog.jsonl` → `shutdown` → `start` into a reused synthesized harness project →
  `wait`, 5 s to ready). New pid **91894** for the whole round (`isolationLevel: per-round`, same
  `mpsPid` on SMOKE/S3/S4 metas). Confirmed via `ps` that the relaunched process actually carried
  `-Dmps.mcp.calllog=…/runs-r9/…` before the SMOKE gate.
- **Measured surface unchanged since round 8**: `inventorySha256 226f490c70b1…` — 48 tools, 39
  `mps_mcp_*`, descriptions 51,180 B, schemas 40,048 B (byte-identical to round 8 — no plugin
  change landed between round 8 and this round). Catalog `skillsSha256
  24cced2acdc2…`, identical on SMOKE/S3/S4 — also unchanged since round 8.
- Fixed per-turn context floor from the SMOKE `result` event: **97,555 tokens** (79,909 cache-read +
  17,646 cache-creation) against round 8's 97,512 and the baseline's 97,836 — **H10 holds for a
  ninth round.**
- Contamination guard (`check_user_agents.py`) found two real hits this round, not the usual clean
  pass: a user-level skill `~/.claude/skills/mps-api-research` **and** its Junie mirror
  `~/.junie/skills/mps-api-research` shadow the per-project catalog. Both were moved to
  `~/MPSProjects/mcp-study/backup-user-skills/` for the round (restore before the next session
  touches this machine's `~/.claude/skills` for unrelated MPS work).
- Fixtures: `recipes.tar.gz` for S3 and `recipes-full.tar.gz` for S4, both **reused from earlier
  rounds' caches** (`fixtures-r4/recipes.tar.gz`, dated 2026-09-18; `fixtures-r6/recipes-full.tar.gz`,
  dated 2026-09-21) after verifying both are clean of the agent doc surface (`tar -tzf | grep
  -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'` → empty for both). The root `fixtures/recipes.tar.gz`
  and `fixtures-r3/…` were checked too — the root one **fails the check** (it predates the
  no-doc-surface convention and still bundles two full worker `.claude/`/`.agents/` trees) and must
  not be reused; noted for fixture hygiene but out of scope to fix here.
- One project open per run, confirmed with `list_open_projects` (`projectCount: 1`) before each
  worker launch. `welcome_rejections` 0, `modal_blocked` 0, `close_project_calls` 0 in both cells.
  `server_call_surplus` 0 in both — the server slice and the transcript agree exactly (10/10 for S3,
  62/62 for S4).
- `S3-sonnet-1` and `S4-sonnet-1` project dirs were extracted fresh under a new `proj-r9/`
  directory after the first extraction attempt (reusing the stale `proj/S3-sonnet-1` name from the
  very first baseline round) turned up leftover `AGENTS.md`/`CLAUDE.md`/`.claude`/`.agents` from
  that old run — the tarball itself was clean; the destination directory was not. Worth a line in
  `references/harness.md`: `tar -x --strip-components=1` into an existing directory does not clear
  it first.

## 1. Metrics

| metric | S3-sonnet baseline (2026-09-15) | **S3-sonnet round 9** | Δ | S4-sonnet round 9 (no baseline) |
|---|---|---|---|---|
| task pass | - (unscored) | **True** | | **False** |
| turns | 28 | 29 | +1 | 136 |
| wall-clock s | 229 | 118 | −48 % | 1,426 |
| cost USD | 1.13 | 0.645 | −43 % | 5.41 |
| cache-read tokens | 4,001,158 | 2,671,245 | −33 % | 26,473,647 |
| cache-write tokens | 322,494 | 177,037 | −45 % | 778,906 |
| output tokens | 240 | 337 | +40 % | 1,648 |
| tool calls | 26 | 26 | 0 | 127 |
| MCP calls | 11 | 10 | −1 | 62 |
| Bash calls | 4 | 3 | −1 | 40 |
| skill-file reads | 3 | 4 | +1 | 21 |
| skill bytes read | 17,947 | 14,673 | −18 % | 98,613 |
| temp-file envelopes | 4 | **0** | −100 % | 6 |
| Bash reads of temp results | 0 | 0 | 0 | 5 |
| Bash blueprint writes | 2 | 0 | −100 % | 6 |
| MCP-input chars | 2,436 | 1,961 | −20 % | 14,531 |
| all tool-input chars | 8,908 | 10,506 | +18 % | 26,395 |
| tool-result bytes | 183,320 | **41,169** | **−78 %** | 220,410 |
| error envelopes | 1 | 0 | −100 % | 6 |
| error→retry pairs | 0 | 0 | 0 | 2 |
| validation loops (≥3 same root) | 0 | 0 | 0 | 1 |
| server-logged calls | 10 | 10 | 0 | 62 |
| server ms total | 175 | 337 | +92 % | 15,595 |

S3's `promptSha256` is unchanged from round 4/5 (same fixed prompt each time this scenario runs);
S4's is a first-time hash — nothing to diff it against.

## 2. S3 — hotspots that moved since the 2026-09-15 baseline

Hotspot numbering from `HOTSPOT_REPORT.md` §2.

- **Hotspot #1 (temp-file envelope → Read/Bash of the file) — resolved for S3.** 4 envelopes in the
  baseline run, **0** this round. `mps_mcp_check_root_node_problems` on the whole model came back
  inline (`"no problems found"`/small problem list, `rootsChecked: 44`), `get_project_structure` and
  `print_node` calls in this run's sampling stayed under the inline threshold. This matches remedy
  R1 (`maxInlineBytes`) having landed since the baseline and being exercised correctly by sonnet.
  `S3-sonnet-1:1-26` (whole run, no `data`-is-a-path result anywhere).
- **Hotspot #2 (per-root validation after a clean model-level check) — resolved for S3.** The
  baseline's opus run did 50 individual per-root checks after a clean model-level one; this run
  made **one** `check_root_node_problems` call against the model reference and trusted
  `rootsChecked: 44` — no per-root re-checking at all. Matches remedy R2 (`rootsChecked` envelope
  field, docs line in `analysis-tools.md`) landing. Confirmed by the evaluator's independent replay
  of the same call.
- **Hotspot #5 (bulk-insert response bigger than the input) — much smaller now.** `tool-result
  bytes` dropped 78 % (183 KB → 41 KB) on an equivalent 40-root bulk insert; `Bash blueprint writes`
  dropped from 2 to 0 (the worker built and passed the JSON blueprint directly instead of writing
  it to a file first). Consistent with remedy R4 (`responseDetail: "summary"`) and R1 combined.
- **Not moved / unaffected:** tool-call count (26 → 26) and MCP-call count (11 → 10) are essentially
  flat — the shape of the interaction (discover concepts → build one bulk blueprint → insert →
  validate) is the same; the savings are in *payload size*, not *call count*, exactly as R1/R2/R4
  were scoped (they inline/shrink results, they do not remove calls).
- **cost/cache-read drop (−43 %/−33 %)** is the aggregate effect of the above three landing
  together — cache-read tokens are dominated by tool-result bytes carried forward turn to turn, and
  those shrank the most (−78 %).
- Everything else in `HOTSPOT_REPORT.md` §2 (hotspots #3 skill-reference reads, #4 ad-hoc Python
  re-authoring, #6 discovery refinement, #7 undocumented literals, #8 ToolSearch schema fetches) is
  **not exercised by S3** in either the baseline or this round and cannot move on this evidence —
  S3 is a narrow bulk-authoring scenario that never touches most of them.

## 3. S4 — first measurement, task FAILED, new hotspot found (D46)

S4 has no baseline to diff against; this section reports what round 9 found on its own.

**Verdict (Opus evaluator, read-only replay): FAIL.** Criterion 1 (structure: `servings`→`portions`
rename, `steps` `[0..n]`, new required `summary` child of concept `Summary`) is a clean **PASS** —
rename, cardinality change, and new concept all landed correctly, 0 errors across structure,
editor, behavior, constraints and typesystem models. Criteria 2–4 (migration script written and
applied, every Recipe has a `Summary`, samples still 0 errors) all **FAIL**: the migration script
exists but its `execute()` body is empty, the language version is still 0, no `Summary` instances
exist anywhere in the project, and `check_root_node_problems` on the samples model now reports
**3 new errors** ("No child in the obligatory role 'summary'") that were not there before the
worker's changes — the refactor **regressed** a previously clean model.

**Root cause, per the transcript and the worker's own final report (`S4-sonnet-1:96-127`): no
`mps_mcp_*` tool exposes a language's own `version` integer** — the field
`MigrationScript.fromVersion` matching gates on, distinct from the consumer `languageVersions`
stamps that other tools do expose. `mps_mcp_update_module` only supports
RENAME/CHANGE_VIRTUAL_FOLDER/DELETE; no structure-aspect operation covers it; the `mps-aspect-migrations`
skill documents only the UI path (Language Properties dialog / "New Migration Script" wizard
action). The worker:
1. Spent 18 tool calls (mostly `Bash grep`/`cat` over 6 different skill reference files,
   `S4-sonnet-1:25-35,98`) hunting for a documented non-UI mechanism, and correctly concluded there
   wasn't one.
2. Found and attempted the one *undocumented* workaround it could construct — Java reflection via
   the MPS Console (`ModuleRepositoryFacade` → cast to `jetbrains.mps.smodel.Language` →
   `setLanguageVersion`/`save`) — which failed to resolve at all from the console's ephemeral
   `TempModule` (no dependency on the `MPS.Core` stub jar, and no `mps_mcp_module_dependency` /
   `mps_mcp_model_dependency` call can wire one in because the console module isn't project-addressable).
3. Worked around *that* by adding the dependency to a **real** module instead (`mcp.study.recipes`
   itself) and writing a scratch class `VersionBumpScratch.bump()` there — which compiled and
   validated cleanly (`check_root_node_problems` → no problems) — but invoking it from the console
   via a direct persistent-reference `StaticMethodCall` **silently no-op'd**: `run_console_command`
   reported `{"executed":true}`, yet no console-history entry appeared and the version stayed 0. A
   `2+2` sanity command in the same console session worked and produced a normal history entry,
   ruling out a general console failure — this is specifically a classpath/compile gap between the
   console's temp module and real project modules that no MCP tool surfaces or bridges.
4. **Stopped and explained**, per the task's own "stop and explain if blocked" instruction — 5
   `run_console_command`/`get_console_history` round trips, 3 `sleep` polls (`S4-sonnet-1:102-125`),
   then a full written status report offering the user three options (bump it via the UI, keep
   fighting the console, or roll back the workaround artifacts) rather than continuing to guess.
   This is the *right* behaviour given the instruction, and it is exactly what let this round end
   in ~24 minutes instead of running to the 400-turn cap.

This is filed as **D46** in `docs-defects.md`. It sits in territory the baseline flagged as
unmeasured — closest to hypothesis **H8** (stale runtime) and the "S4/S5 are the scenarios designed
to stress [validation loops]" note in `observations.md` — but the actual defect is neither a
retry loop nor a stale-descriptor problem: `get_concept_details` on `Recipe`/`Summary` resolved
fully and the descriptors were never hollow. It is a **missing capability**, and the workaround
path is not just undocumented but silently broken, which is worse than absent — an agent doing
`autoApplyQuickFixes`-style trust would have no signal that the version bump never happened.

Left-over artifacts in the project from the blocked attempt (all validated as harmless, none part
of the task): `MPS.Core` added as a Default dependency of `mcp.study.recipes`; the
`jetbrains.mps.smodel@java_stub` model imported into `mcp.study.recipes.migration`; the scratch
class `VersionBumpScratch`. The task said "do not roll back changes," so the worker correctly left
them in place and asked rather than deleting them unilaterally.

**Other S4 observations, not yet defects:**
- `Read -> ToolSearch` and `Bash -> ToolSearch` chains (3–6 occurrences each) show the same "grep
  the local skill copy, then reach for the matching MCP tool" pattern the round 8 report flagged
  for S1/S2 (D44) — S4's migration-authoring path is exactly as skill-navigation-heavy as
  greenfield DSL authoring was.
- `mps_mcp_model_used_language:language` was called 3 times in a row for the same model
  (`S4-sonnet-1:51-54`) while wiring the `MPS.Core`/`smodel` stub dependency for the version-bump
  workaround — plausibly retries against slightly different target strings rather than a genuine
  loop; not scored as a defect on one instance, but worth a second look if it recurs in a later S4
  run.

## 4. Defects

New this round: **D46** (§3 above; recorded in `docs-defects.md`). No other new defects surfaced;
D43–D45 (round 8) were not exercised by S3/S4.

## 5. Recommendation (gate 2)

The remedies already shipped for hotspots #1/#2/#5 (R1/R2/R4) measurably hold up on an independent
S3 re-run under production conditions (real MPS, real worker, no cherry-picking): −78 % tool-result
bytes, −33 % cache-read tokens, −43 % cost, zero temp-file envelopes, zero per-root re-checks, same
task-shape and same PASS. No further S3-specific work is indicated.

S4 is the more urgent finding: the scenario cannot complete end-to-end today because of D46. Before
running S4 again (e.g. for an A/B or a second sonnet/opus data point), the recommended fix is a
server-side `BUMP_VERSION`-style operation (or exposing the language's own version as a settable
property through an existing tool such as `mps_mcp_update_module` or `mps_mcp_alter_structure`) —
**S** tier, one owner (plugins/mcp-tools), low risk (additive). A cheaper **D**-only stopgap
(document that the console-reflection route is known broken, so a worker stops after one probe
instead of eighteen) would shorten the failure but not fix it — S4 would still FAIL, just faster.
Given the task explicitly asked to compare against the 2026-09 baseline and report movement, and
S4 has none to report yet, the natural gate-2 question is: implement the D46 server fix now (this
would need a plugin rebuild + MPS restart before any further S4 run), or leave S4 blocked and move
scope to a scenario that is measurable today?
