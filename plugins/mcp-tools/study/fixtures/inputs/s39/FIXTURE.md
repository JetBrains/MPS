# S39 fixtures: `alerts3` (S39a) and `alerts3-broken` (S39b)

**Status: built 2026-11-11 (opus builder, one session, MPS 261.25134 from sources, light theme), not rehearsed.** Recipe
draft: `~/MPSProjects/mcp-study/adhoc-image/S39-fixture.md` (rev. 2 + coordinator corrections of 2026-11-11). Every MPS MCP
call is one line in [`FIXTURE.log`](FIXTURE.log). Observer aid: [`html_runs.py`](html_runs.py). sha256 of both tarballs:
[`../../pins.md`](../../pins.md). Same `mcp.study.alerts` ids as every `alerts2*` fixture: never open two of the family
together (each copy was opened alone and closed before the next one was opened).

Lineage: `alerts2-compact` (sha `69849f69…ccdb`) → **`alerts3`** = + sandbox book `Night` → `build/alerts3-triage` = +
the reference Triage view (Step 2, the reference walk of S39a; kept as answer key, not a tarball) → **`alerts3-broken`** =
+ seeds D-A…D-F (Step 3).

| tarball | sha256 | entries | top dir |
|---|---|---|---|
| `~/MPSProjects/mcp-study/fixtures/alerts3.tar.gz` | `54fbd2302d3648e2f9c595aa19e16c523370b3b0c7b8bf574e75b98653a88895` | 351 | `alerts3/` |
| `~/MPSProjects/mcp-study/fixtures/alerts3-broken.tar.gz` | `812229f04228498d65e8426e9b25206cb77b6bf4acd7cbbc8615ea86a773f1af` | 383 | `alerts3-broken/` |

Both with `classes_gen`, `source_gen`, `test_gen`; `tar -tzf … | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md|workspace\.xml|REPORT\.md)'`
prints nothing for either. Tar command: `tar -czf <name>.tar.gz "${TAR_EXCLUDES[@]}" --exclude=REPORT.md -C ~/MPSProjects/mcp-study/build <name>`.

## Step 1 — `alerts3` (as built)

1. `alerts2-compact.tar.gz` (sha checked) extracted to `build/alerts3`, opened alone (`mps_control.sh open`), MAKE of
   `mcp.study.alerts`, `.sandbox`, `.tests`: success (only the known "Closure generic throws types count" warning).
2. `Night` inserted with one `insert_root_node_from_json` (blueprint from `mps-node-editing/scripts/blueprint.py`;
   channel and threshold references by name, all resolved inside `Night`: `fixReferences` 0/0/0, every `target` id is
   a `Night` member). `compact` unset; `LowDisk`/`Backlog` severity left at the enum default `low`.
3. Verified: PLAIN TEXT `[]` and `["compact"]` below; HTML class tables below; `check_root_node_problems` 0/0 on the
   sandbox (3 roots) and the language (5 models, 48 roots, one BACKSPACE info), test model 0 errors + the allowed
   `CompactViewTestUtil` warning; JUnit `runType: MODEL` over `mcp.study.alerts.tests@tests` (build aid
   `audit-alerts3-tests`, not shipped) 10 started / 10 finished / 0 failures, exit 0.
4. Audit (s38b steps 2–8): FIND_INSTANCES (editable, exact) of the six deprecated menu concepts → 0 each; MAKE
   `rebuild: true` of the three modules: success; no `workspace.xml` existed before the close and the one written by
   the close holds no `ConceptEditorHint*` component (grep 0); doc surface absent; closed with `mps_mcp_close_project`.

`Night` = `r:272ea7c7-e020-4801-a685-96fc12a16f3c(mcp.study.alerts.sandbox)/7871449508078870915`. Member ids:
Note …916, Channel `pager` …917, `mail` …918, `chat` …919, Threshold `cpuLimit` …920, `diskFloor` …922, EmptyLine …924,
Alert `HighCpu` …925, `LowDisk` …932 (Not …937, Paren …938), `Heartbeat` …945 (Metric `uptime` …947), `Backlog` …949
(ChannelRef `chat` …954, `mail` …955, `pager` …956). Ops 6330044388206401724, Staging 6330044388206401755 unchanged.

PLAIN TEXT `[]` (pin; trailing blanks trimmed):

```
alert book Night
  # paging rules for the night shift
  channel pager -> pager://night
  channel mail -> night@example.com
  channel chat -> chat://night
  threshold cpuLimit = 90
  threshold diskFloor = 10

  alert HighCpu [high] when cpu over 5 min > cpuLimit notify pager, mail
  alert LowDisk [low] when disk < diskFloor and not ( memory > cpuLimit + 5 ) notify mail
  muted alert Heartbeat [high] when uptime < 1
  muted alert Backlog [low] when queue over 10 min > 100 notify chat, mail, pager
```

PLAIN TEXT `["compact"]` (pin): the same first five member lines, then `cpuLimit = 90`, `diskFloor = 10`, the empty
line, and `alert HighCpu [high]`, `alert LowDisk [low]`, `muted alert Heartbeat [high]`, `muted alert Backlog [low]`.

HTML class table, `[]` and `["compact"]` (pin for S39a 1 / S39b 4): `.s1{color:#000080;font-weight:bold}` = every
Keyword cell (`alert book`, `channel`, `threshold`, `alert`, `muted`, `when`, `over`, `min`, `not`, `notify`);
`.s2{font-weight:bold}` = the constants without a style (`#`, `->`, `=`, `[`, `]`, `>`, `<`, `and`, `(`, `)`, `+`, `,`);
everything else (names, numbers, addresses, the severity value, reference cells) has no class: default colour, plain.
The `html_runs.py` flattening of all six prints (Ops, Staging, Night × `[]`, `["compact"]`) is the pin; the Triage
copy and `alerts3-broken` were compared against it byte for byte (see Step 2 W6 and Step 3).

## Step 2 — reference Triage view (`build/alerts3-triage`, the reference walk of S39a)

A copy of the closed `build/alerts3` (its `workspace.xml` removed), opened alone. Editor model
`r:88efc77b-ce3c-401a-bfc7-ee06ac74f662(mcp.study.alerts.editor)`, ids below are in it. 19 calls of edits, 1 MAKE.

| Root / node | Built as | Content (ids) |
|---|---|---|
| `AlertHints` 8865239763066188322 | ADD CHILD `hints` | + hint `triage` **7871449508079053490**, presentation "Triage", showInUI true. Run-time string `mcp.study.alerts.editor.AlertHints.triage` |
| `AlertStyles` 6330044388206401791 | 5 × ADD CHILD `styles` | `Level` …053795 {font-style BOLD; text-foreground darkMagenta}; `LevelHigh` …053908 {`apply Level` …053909; text-foreground red …053911}; `Dimmed` …054076 {text-foreground gray …054077} with `dominates` DominatesRecord **…054078** over `Keyword` only (StyleClassReference …054080); `HighHeader` …054439 {background-color pink}; `Remark` …054799 {text-foreground gray; font-style ITALIC} |
| `AlertHeader_triage` …055376 | COPY_NODE of `AlertHeader`, rename, ADD `overridenEditorComponent` (→ `AlertHeader`, …056007), ADD `contextHints` {triage} (…056091) | the copied cells keep the cell ids `mutedKeyword`, `alertKeyword`, `severityClose`; severity property cell …055395 gets `apply Level` (…056477), then `apply-if LevelHigh` (…056702, query `node.severity.is(high)`: `EnumMember_IsOperation` + `EnumMemberReference` → Severity `high` 6330044388206341906) |
| `Alert_triage_Editor` …058005 | one `insert_root_node_from_json` (blueprint from a Python helper, 61 nodes, depth 10, first try valid) | contextHints {triage}. Top collection …058007 (indent) with `apply-if Dimmed` …058053 (`node.muted`). Children: `AlertHeader` component cell …058008 with `apply-if HighHeader` …058009 (`node.severity.is(high) && !node.muted`, AndExpression …058014); row W …058025 {on-new-line, indent}: `when` (apply Keyword) + `%condition%`; row N …058034 {on-new-line, indent}, rendering condition …058044 `node.notify.isNotEmpty` (expression …058047): `notify` (apply Keyword) + `%notify%` separator `,`. inspectedCellModel …058061: `severity:` + `{severity}`, `muted:` (on-new-line) + `{muted}` |
| `Note_triage_Editor` …059534 | COPY_NODE of `Note_Editor`, rename, ADD `contextHints` {triage} | top collection …059535 gets `apply Remark` …060231 |

PLAIN TEXT of the definitions: [`prints/alerts3-triage/def-*.txt`](prints/alerts3-triage/). Note that the definition
projection of `AlertStyles` prints the nominal enum values (`red (#FF0000)`, `dark magenta (#7D007D / #FF00FF)`),
not the rendered ones, and that it shows the class items in order and `dominates over Keyword` inline (E8).

### Walk checks (after one MAKE of `mcp.study.alerts`; prints in [`prints/alerts3-triage/`](prints/alerts3-triage/))

- **W1 text** — PLAIN TEXT `["triage"]` of `Night`: the eleven alert lines of S39a prompt item 1, character for
  character (diff empty); `when`/`notify` two spaces deeper than their header; `Heartbeat` two lines; the members above
  as with `[]`. OK.
- **W2 hinted override** — HTML `["triage"]`: `high` (HighCpu) `.s5{color:#b20000;font-weight:bold}`, `low` (LowDisk)
  `.s6{color:#7c007c;font-weight:bold}`, `[`/`]` default bold. Pink measured in `editor.png`: **`#ffafaf`** (stdlib
  PNG read, `png_colours.py`), bounding box x 20–183, y 172–192 = the `HighCpu` header from `alert` to `]` with the
  gaps, nothing else in the picture. OK.
- **W3 muted gray** — every run of `Backlog` and `Heartbeat` is `#808080`: `muted alert when notify over min [ ] > < ,`
  and the severity `low`/`high` gray **bold**, `Backlog Heartbeat queue uptime 10 100 1` and the reference cells
  `chat mail pager` gray plain. The dominance list names `Keyword` only (correction 1): the severity classes `Level`
  and `LevelHigh` are not listed and are covered anyway, because `Dimmed`'s priority 1 beats every priority-0 value.
  `LowDisk`'s `not`, `when`, `notify` stay `#000080` bold. OK.
- **W5 note** — `#` gray bold, the text gray italic (`.s3{color:#808080;font-style:italic}`). OK.
- **W6** — PLAIN TEXT and `html_runs.py` output of Ops, Staging, Night with `[]` and `["compact"]` byte-equal to the
  alerts3 pins (12/12). Root pins: [`prints/alerts3-triage/roots.tsv`](prints/alerts3-triage/roots.tsv) differs from
  alerts3's only in `AlertStyles`, `AlertHints` and the three new roots. OK.
- **W7** — `check_root_node_problems`: language 5 models / 51 roots 0 errors 0 warnings (BACKSPACE info), sandbox 0/0;
  JUnit `audit-alerts3-triage-tests` 10/10, exit 0. OK.
- **W8 Inspector** — the inspected layout is in the deep print and in the definition PLAIN TEXT (`severity: {severity}`
  / `muted: {muted}`); `print_node` renders no Inspector. An EditorTestCase with `getInspector()` was **not tried**
  (it would add a test root to the pinned test model).
- **W9 reading cost** — `get_project_structure` of the editor model with `includeNodes` is a 915 KB file;
  `mps_dump.py tree --depth 4` shows the style classes completely (the `dominates` record and `LevelHigh`'s
  `apply Level` before `red`), and of an `apply-if` only `query: QueryFunction_Boolean (+1 children)` plus its target
  class: the condition needs depth ≥ 10. Its stdout stops at 200 lines (the editor model is 267), the file has all.
  The one-line PLAIN TEXT of the style sheet shows the same class facts without the conditions.
- **W10 corpus** — `query_nodes FIND_INSTANCES DominatesRecord`, scope all: **5** instances, all in MPS's own style
  sheets (`BaseLanguageStyle` ×3 in `jetbrains.mps.baseLanguage.editor`, `BaseStyles` and `BaseStyleSheet` in
  `jetbrains.mps.lang.core.editor`). A count only: the catalog documents dominance since 8cb379813880.
- **Ops / Staging in Triage** (not graded): Ops reads like Night (block layout, `Heartbeat` without a `notify` line);
  Staging (`compact = true`) stays compact (`cpuLimit = 95`): the book's `addHints` compact wins for its members.

## Step 3 — seeds → `alerts3-broken`

A copy of the closed `build/alerts3-triage` (its `workspace.xml` removed), opened alone; one node edit per seed (log
lines tagged `# D-x`), then MAKE `rebuild: true` of `mcp.study.alerts`. Prints in [`prints/alerts3-broken/`](prints/alerts3-broken/).

| Seed | Edit (ids in the editor model) | Symptom on `Night`, all six in place (observed) |
|---|---|---|
| D-A | SET CHILD of row N's condition expression …058047 → `node.notify.size > 1` (GreaterThanExpression, `GetSizeOperation`, `IntegerConstant 1`) | PLAIN TEXT triage: `LowDisk` (one channel) has no `notify` line; `HighCpu`, `Backlog` have one; `Heartbeat` none |
| D-B | MOVE_CHILD row N …058034 to position 1 of the top collection | PLAIN TEXT triage: `notify pager, mail` above `when cpu …` (HighCpu), `notify chat, mail, pager` above `when queue …` (Backlog) |
| D-C | MOVE_CHILD `LevelHigh`'s `apply Level` …053909 to the end | HTML triage: `high` of `HighCpu` `#7c007c` bold (was `#b20000`); png: magenta on pink, weak contrast. Definition PLAIN TEXT: `text-foreground-color : red (#FF0000)` then `apply : Level` |
| D-D | ADD `apply Level` (…172386) to the severity cell …735321 of the base `AlertHeader` | HTML `[]` and `["compact"]` on `Night` and `Ops`: every severity value `#7c007c` bold (Staging has no alert); PLAIN TEXT of all views unchanged; triage unchanged (the override has its own cell). The PLAIN TEXT of `AlertHeader` is identical to its alerts3 pin (cell style items are not projected); only the deep JSON differs |
| D-E | delete `Dimmed`'s `dominates` record …054078 | HTML triage, `Backlog` and `Heartbeat`: every Keyword cell `#000080` bold — `muted`, `alert`, `when`, `notify`, `over`, `min`; the severity `#7c007c` bold (`low` and, with D-C, `high`); names, numbers and the channel reference cells gray plain; `[ ] > < ,` gray bold |
| D-F | SET CHILD of the HighHeader condition AndExpression …058014 → `node.severity.is(high)` | `editor.png` triage: pink (`#ffafaf`) on the `HighCpu` header (y 172–192) and on the `Heartbeat` header (gray/blue/magenta text on pink); nothing in `index.html` |

After all six: `check_root_node_problems` language 5 models / 51 roots **0 errors, 0 warnings** (only the BACKSPACE
info) — all six seeds are checker-silent; sandbox 0/0; JUnit `audit-alerts3-broken-tests` 10/10, exit 0; MAKE
`rebuild: true` of the three modules: success; deprecated menu concepts 0. Controls: G1 the channel, threshold, empty
and book lines identical to the reference triage runs; G2 note `#` gray bold, text gray italic; G3 the inspected layout
of `Alert_triage_Editor` unchanged; G4 Compact PLAIN TEXT of the three books equal to the alerts3 pins (6/6).
Root pins: [`prints/alerts3-broken/roots.tsv`](prints/alerts3-broken/roots.tsv) differs from the reference only in
`AlertStyles` (D-C, D-E), `AlertHeader` (D-D) and `Alert_triage_Editor` (D-A, D-B, D-F).

### As-shipped answers (ground truth of S39b criteria 8–9; from the prints and deep JSON of `alerts3-broken`)

Q1. (a) `threshold cpuLimit = 90`: `Threshold_Editor` 6330044388206345217, the default editor — no Threshold editor
has the `triage` hint, so the default is the fallback (only `Threshold_compact_Editor` is hinted, for `compact`).
(b) `[low]` of `LowDisk`: `AlertHeader_triage` …055376 (cells `[`, severity …055395, `severityClose`), the
`triage`-hinted override of `AlertHeader`, reached through the `AlertHeader` component cell …058008 of
`Alert_triage_Editor`. (c) `over 10 min` of `Backlog`: `Window_Editor` 6330044388206345322, the default editor, drawn
inside the condition cell of the triage alert editor; the hint reaches it but Window has no triage editor.

Q2 (HTML class of the shipped print, colours confirmed in `editor.png`):

| part | colour | weight | colour from | weight from |
|---|---|---|---|---|
| `not` in `LowDisk` | `#000080` darkBlue | bold | `apply Keyword` on the `not` constant of `Not_Editor` (…401970) | the same Keyword class |
| `(` after it | default (`#080808` body colour, no class colour) | bold | nothing (LowDisk is not muted; `Paren_Editor` constant …401889 has no style) | a constant cell is bold by default (catalog-given) |
| `uptime` in `Heartbeat` | `#808080` gray | plain | the `apply-if Dimmed` (`node.muted`) on the top collection …058007 of `Alert_triage_Editor`, inherited down the cell tree into `Metric_Editor`'s property cell …401861 (no style) | nothing: a property cell is plain |
| `chat` in `Backlog` | `#808080` gray (HTML class `.s6{color:#808080}` and gray in `editor.png`) | plain | the same inherited `Dimmed`, reaching the read-only name cell …401852 of `ChannelRef_Editor`'s inline component | nothing |

D-E does not change the last two: without dominance an inherited colour still reaches cells that set none.

## Reference cells in HTML (retracted defect report)

A coordinator report that reference cells (`cpuLimit`, `pager`, `chat`) lose their inherited colour class in
`index.html` was a parsing error of the coordinator's own span regex (it skipped spans whose `class` is followed by
`data-t`). Rechecked on the reviewer's scratch on 2026-11-11: `<span class="s5" data-t="…">cpuLimit</span>`. HTML and
`editor.png` agree; criteria use the HTML class. `html_runs.py` marks reference text with `ref`.

## Build deviations

1. **Dominance list `Keyword` only** (recipe: `Keyword`, `Level`, `LevelHigh`): coordinator correction 1 — priority,
   not membership, decides; W3 confirms the unlisted `Level`/`LevelHigh` are greyed. The S39a 4a / S39b 6a rule that
   failed a list without the base severity class is removed.
2. **No `notify` empty cell in the triage row N**: the default editor's `emptyCellModel` (editable constant) was not
   copied; row N is hidden when the list is empty, so nothing renders differently. The PLAIN TEXT of the definition
   shows `/empty cell: <default>`.
3. **`LowDisk`/`Backlog` severity unset** (enum default `low`) rather than stored `low`; prints are the same.
4. **W8** not run as an editor test (see above). **T1–T10** were run on all three copies through build-aid JUnit
   configurations (`audit-alerts3-tests`, `audit-alerts3-triage-tests`, `audit-alerts3-broken-tests`, in the excluded
   `workspace.xml` only).
5. Observer prints are shipped as files (`prints/`), so the criteria can compare against them instead of re-deriving.

## Leak checks (2026-11-11, after the build)

- `grep -rwE 'Triage|triage|Dimmed|LevelHigh|HighHeader|Remark|Night|Heartbeat|Backlog'` (case-sensitive) over
  `.claude/skills/mps-*`, `.agents/skills/mps-*` and the blueprint catalog `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills`: 0 hits.
  (`Level` is not in the list: it is a common English word with hits in unrelated docs.)
- The catalog's example names `overdue`, `tabular`, `Views`: 0 hits in the extracted `alerts3-broken` tarball content.
- Tarballs: no `.claude/`, `.agents/`, `AGENTS.md`, `CLAUDE.md`, `workspace.xml`, `REPORT.md`.

## Files next to this one

- `FIXTURE.log` — one line per MPS MCP call (UTC time, tool, arguments cut at 300 chars, ok/error, seed tag) plus
  `[shell]` lines for opens, copies and tars. Calls went through `scripts/mcp_call.py` from a logging wrapper.
- `html_runs.py` — observer aid: `python3 html_runs.py <index.html|dir> [--grep TEXT] [--node ID]`, one line per
  editor line, `token → colour, weight, slant[, bg][, ref]`.
- `png_colours.py` — builder aid only (measured the pink); never a worker or evaluator step.
- `prints/<copy>/<Book>-<view>.{txt,runs}` — PLAIN TEXT and `html_runs.py` output for Ops, Staging, Night × `default`
  (`[]`), `compact`, `triage`; `Night-triage.png` for the reference and the broken copy; `def-*.txt` PLAIN TEXT of the
  new or seeded editor roots; `roots.tsv` = model, root name, concept, id, sha256[:16] of the deep JSON (sorted keys),
  sha256[:16] of the PLAIN TEXT `[]`, for all 62 (alerts3) / 65 roots of the editor, structure, constraints, sandbox
  and test models.
- The answer key `~/MPSProjects/mcp-study/build/alerts3-triage` is kept (base for a re-seed).
