# S39 fixtures: `alerts3` (S39a) and `alerts3-broken` (S39b)

**Status: built 2026-11-11 (opus builder, one session, MPS 261.25134 from sources, light theme); `alerts3` and `alerts3-hard` are the frozen fixtures of S39a/S39b (rehearsal 2, 2026-11-11); `alerts3-broken` is retired (rev. 3 of S39b).** Recipe
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
| `~/MPSProjects/mcp-study/fixtures/alerts3-hard.tar.gz` (Step 4) | `62df2d48a48057e8214f43986119dc69c0fed614fcf25b45555a50834b438f8a` | 391 | `alerts3-hard/` |

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

## Step 4 — `alerts3-hard` (S39b rev. 2; design `~/MPSProjects/mcp-study/adhoc-image/S39-harden.md`)

Probes P1–P7 first, on the scratch `build/s39h-probe` (a copy of `alerts3-triage`): results with hex values in
`~/MPSProjects/mcp-study/adhoc-image/S39-harden-probes.md`. P1–P4 and P7 hold; P5 contradicted the design's expression (`!node.muted || …` changes nothing on any book); the
coordinator corrected it to `node.muted || node.notify.isNotEmpty`, added afterwards as the eighth seed. A fresh copy of the closed `build/alerts3-triage` (its `workspace.xml` removed),
opened alone; one node edit per seed component (log lines tagged `# H1` … `# D-F` under the header "S39 hardening
build"), MAKE `rebuild: true` of `mcp.study.alerts`. Prints in [`prints/alerts3-hard/`](prints/alerts3-hard/).

| Seed | Edit (ids in the editor model) | Symptom on `Night`, all seeds in place (observed) |
|---|---|---|
| H1 | SET REFERENCE `Dimmed`'s StyleClassReference …054080 → `Remark` …054799; ADD `dominates` on `Keyword` 6330044388206401792: DominatesRecord **8393655821656577850** → StyleClassReference …577852 → `Level` …053795 | HTML triage, `Heartbeat`/`Backlog`: `muted alert when over min notify` `#000080` bold; names, numbers, `chat mail pager` `#808080` plain; `[high]`/`[low]` `#808080` bold (severity gray). `[]`/`["compact"]` unchanged. Definition PLAIN TEXT: `style Keyword dominates over Level`, `style Dimmed dominates over Remark` |
| H2 | `insert_root_node_from_json` StyleSheet **`TriageStyles` 8393655821656578076** { `Level` **…578077** { font-style BOLD …578078; text-foreground magenta …578079 } }; SET REFERENCE the override's `apply Level` StyleReference …056478 → …578077 | HTML triage: `low` (LowDisk) **`#ff00ff`** bold (was `#7c007c`). `mps_dump.py tree` line unchanged (`-> style=Level`); only the deep JSON `targetReference` differs. Checker silent on the duplicate class name |
| H3 | COPY_NODE `BinaryExpr_Editor` → **`Comparison_triage_Editor` 8393655821656578715** (SET name; SET REFERENCE `conceptDeclaration` → `Comparison` 6330044388206341924; ADD `contextHints` {triage} …579741; SET CHILD the copied `alias` component cell …578719 → CellModel_Constant `>`). Cells: collection …578716 {`%left%` …578718, constant `>`, `%right%` …578720} | PLAIN TEXT triage: `when disk > diskFloor and not ( memory > cpuLimit + 5 )` (LowDisk), `when uptime > 1` (Heartbeat); styles unchanged (the constant is default bold like the alias cell); Ops triage the same two |
| H4 | MOVE_CHILD the override's `apply-if LevelHigh` …056702 to position 0 (before `apply Level` …056477) | with D-C and H2: `high` (HighCpu) `#ff00ff` bold (table below) |
| D-C | MOVE_CHILD `LevelHigh`'s `apply Level` …053909 to the end | (as above) |
| D-D | ADD `apply Level` (ApplyStyleClass **8393655821656580873** → `Level` …053795) to the base `AlertHeader` severity cell …735321 | HTML `[]`/`["compact"]`: every severity `#7c007c` bold; runs and texts of the six normal prints byte-equal to `prints/alerts3-broken/` |
| D-F | SET CHILD the HighHeader condition AndExpression …058014 → `node.severity.is(high)` (DotExpression 8393655821656581179) | `editor.png` triage: pink `#ffafaf` bbox x 20–247, y 172–318: the `HighCpu` and the `Heartbeat` header |
| H5 | (after a close/reopen of the seven-seed build) SET CHILD row N's rendering-condition expression …058047 → `node.muted \|\| node.notify.isNotEmpty` (OrExpression **6784330096553355244**: `node.muted` …245, `node.notify.isNotEmpty` …248) | PLAIN TEXT triage: one new line under `Heartbeat` (muted, no channels), after `    when uptime > 1`: `    notify << ... >>` (4 spaces); runs `notify → #000080, bold \| << → #808080, bold \| ... → #808080, bold \| >> → #808080, bold`; Ops triage the same under its `Heartbeat`; nothing else changes. (The design's `!node.muted \|\| …` changed nothing on any book: P5) |

Masking chain of `high` (P4, MAKE + HTML triage per state): red `#b20000` only with D-C, H4 **and** H2 all fixed.
Shipped `#ff00ff`; fix D-C alone → `#ff00ff` (no change); fix H4 alone → `#7c007c`; fix H2 alone → `#7c007c`; any two →
`#7c007c`. So H2 is a third cause of the `high` symptom.

After all eight seeds (MAKE `rebuild: true` again after H5): `check_root_node_problems` language 5 models / **53** roots no problems (BACKSPACE info only), sandbox
3 roots no problems, test model 0 errors + the allowed `CompactViewTestUtil` warning — every seed checker-silent; MAKE
`rebuild: true` of the three modules: success (the known "Closure generic throws types count" warning); JUnit
`audit-alerts3-hard-tests` (runType MODEL, build aid in the excluded `workspace.xml`; recreated after the reopen) 10 started / 10 finished / 0
failures, exit 0; deprecated menu concepts (six, editable, exact) 0 each; the `workspace.xml` written by the close has
no `ConceptEditorHint*` (grep 0). Controls: G1/G2 runs lines 1–7 (book, note, channels, thresholds) equal to the
reference triage runs; G3 the inspected layout of `Alert_triage_Editor` unchanged; G4 Compact PLAIN TEXT of the three
books equal to the alerts3 pins (3/3). Root pins: [`prints/alerts3-hard/roots.tsv`](prints/alerts3-hard/roots.tsv)
(67 roots) differs from the reference's in the PLAIN TEXT column only in `AlertStyles` and the two new roots; deep
column in `AlertStyles`, `AlertHeader`, `AlertHeader_triage`, `Alert_triage_Editor`, the new roots (and every structure
root, see the recipe). The normalized deep hashes of all other roots were equal before and after the close/reopen.

Tarball `~/MPSProjects/mcp-study/fixtures/alerts3-hard.tar.gz`, sha256
`62df2d48a48057e8214f43986119dc69c0fed614fcf25b45555a50834b438f8a`, 391 entries, top dir `alerts3-hard/`, with
`classes_gen`/`source_gen`/`test_gen` (329 entries); the doc-surface grep prints nothing; same tar command as above.
Leak checks: the case-sensitive whole-word grep (word list + `TriageStyles`, `Comparison_triage`) over `.claude/skills/mps-*`,
`.agents/skills/mps-*` and `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`: 0 hits; `overdue|tabular|Views`
in the extracted tarball: 0 files.

### As-shipped answers of the revised Q1/Q2 (from the prints of `alerts3-hard`)

Q1(b) and the Q2 `low` row below answer the first-draft questions; the frozen prompt asks the `+` and the `,` instead —
see "Revised questions after the review" after the table.

Q1. (a) `threshold cpuLimit = 90`: `Threshold_Editor` 6330044388206345217, the default editor (no Threshold editor has
the triage hint; unchanged from Step 3). (b) the operator between `disk` and `diskFloor` in `LowDisk` (drawn `>`):
`Comparison_triage_Editor` 8393655821656578715, its constant `>` cell — the triage-hinted editor of the abstract
superconcept `Comparison` applies to `Less`, which has no editor of its own, and wins over the unhinted
`BinaryExpr_Editor` of `BinaryExpr` because it carries the requested hint. (c) `over 10 min` of `Backlog`:
`Window_Editor` 6330044388206345322, the default (unchanged).

Q2 (Triage view, HTML class + `editor.png`):

| part | colour | weight | colour from | weight from |
|---|---|---|---|---|
| `when` in `Backlog` | `#000080` darkBlue | bold | `apply Keyword` on the `when` constant …058028 of `Alert_triage_Editor`: `Keyword` now has priority 1 (`dominates over Level`), equal to `Dimmed`'s (1, `dominates over Remark`); at equal priority the cell's own value beats the inherited one | `Keyword` |
| `low` in `LowDisk` | `#ff00ff` magenta | bold | the override `AlertHeader_triage` severity cell …055395 → `apply` `TriageStyles.Level` …578077 (not `AlertStyles.Level`) | the same class |
| `uptime` in `Heartbeat` | `#808080` gray | plain | `apply-if Dimmed` (`node.muted`) on the top collection …058007, inherited into `Metric_Editor`'s property cell | nothing (property cell) |
| `(` in `LowDisk` | default (no class colour) | bold | nothing (LowDisk is not muted; `Paren_Editor`'s constant has no style) | a constant cell is bold by default |

Revised questions after the review (`S39-harden-review.md`, must-fix 6: Q1(b) and Q2 `low` pointed at seeds before any
edit). Q1(b) is now the `+` in `LowDisk`: `BinaryExpr_Editor` 6330044388206345347 (default; its `alias` component cell),
because `Plus` extends `BinaryExpr` directly (generated `StructureAspectDescriptor`: Plus and Comparison both
`super_ …6f23L` = BinaryExpr) and has no editor, so `Comparison_triage_Editor` does not apply; shipped runs line 13
`+ → default, bold`. Q2 `low` is replaced by the `,` after `chat` in `Backlog`: `#808080` bold (runs line 20), the
separator of `Alert_triage_Editor`'s `%notify%` list cell, gray inherited from `Dimmed`. Q2's `when` row stays (it points
at H1 on purpose: the tie explanation is required for Pass; signal `Q_guided`).

### roots.tsv hash recipe (applies to `prints/alerts3-hard/` and `prints/alerts3-triage2/`)

One row per root of the sandbox, constraints, editor, structure and `tests@tests` models, in that model order and in
the `get_project_structure` root order: `model short name` TAB `root name` TAB `concept` (short) TAB `node id` TAB
`deep` TAB `text`, where

- `deep` = `sha256(json.dumps(norm(data), sort_keys=True))[:16]` (Python defaults: `", "`/`": "` separators,
  `ensure_ascii=True`) of the `data` object of `mps_mcp_print_node {deep: true, maxInlineBytes: 2000000}` (the
  temp-file envelope resolved; `data` only, not the envelope). `norm` strips a trailing `@<hex>` from every string under
  a `"type"` key: constrained-datatype properties (`datatypeId`, `conceptId`, …) print as
  `…SConstrainedStringDatatypeAdapter@55637896`, a JVM identity hash that changes per MPS session. The earlier
  `roots.tsv` files (alerts3, -triage, -broken) hashed without `norm`; their structure-root deep hashes are valid only
  within their build session (the editor/sandbox/constraints/test roots carry no such field and compare across).
  The deep JSON also embeds `mpsProjectBaseDirectory` of the project that owns the concept (`/Users/vaclav/work/MPS/myMPS-fix`).
- `text` = `sha256("\n".join(line.rstrip() for line in t.split("\n")))[:16]` of the `data` string of
  `mps_mcp_print_node {format: "PLAIN TEXT", editorHints: [], maxInlineBytes: 2000000}` (this matches the earlier files).

Builder script (not shipped): `~/MPSProjects/mcp-study/build/s39h-tools/roots.py <projectPath> <out.tsv>`.

## Step 5 — `alerts3-triage2` (S39a answer key, rev. 2)

A copy of the closed `build/alerts3-triage` (its `workspace.xml` removed), opened alone; the ThresholdRef value display
of the revised S39a item (P7). Kept as `build/alerts3-triage2`, no tarball (S39a still ships `alerts3`). Prints in
[`prints/alerts3-triage2/`](prints/alerts3-triage2/).

| Root / node | Built as | Content (ids) |
|---|---|---|
| `ThresholdRef_triage_Editor` **8393655821656893994** | COPY_NODE of `ThresholdRef_Editor`, SET name, ADD `contextHints` {triage} (…894741), SET CHILD of the copied RefCell …893995 with one blueprint | `[- ( %threshold% -> { name } ) ( %threshold% -> [- ( %value% ) -] ) -]`: the original reference cell (inline component, read-only `{name}`), then a second `CellModel_RefCell` on `threshold` whose inline component is an indent collection: constant `(` {punctuation-right, font-style PLAIN}, `%value%` (the referent's `value` child, drawn by `NumberLit_Editor`), constant `)` {punctuation-left, font-style PLAIN} |

Checks (after MAKE of `mcp.study.alerts`, then `rebuild: true` of the three modules):
- PLAIN TEXT triage of `Night`: line 10 `    when cpu over 5 min > cpuLimit (90)`, line 13
  `    when disk < diskFloor (10) and not ( memory > cpuLimit (90) + 5 )` — the revised listing of item 1; nothing else
  differs from the reference. Ops: `> cpuLimit (90)` in both conditions.
- Runs: `cpuLimit → default, plain, ref | (90) → default, plain` (parens plain only because of the explicit PLAIN;
  constants are bold by default — the spec item should say whether the parentheses may be bold). HTML:
  `<span data-t="…920">cpuLimit</span> (<span data-n="…921" data-c="NumberLit" data-r="value">90</span>)`.
- `[]`, `["compact"]` of the three books and `Staging` triage byte-equal to the reference prints (15/15).
- Checker: language 5 models / 52 roots no problems (BACKSPACE info), sandbox no problems. JUnit
  `audit-alerts3-triage2-tests` 10/10, exit 0.
- Not covered by the data: the "inside a muted alert (then gray)" clause — no muted alert of any book holds a
  threshold reference. Completion/typing of the reference in the triage view was not checked.
- Root pins: [`prints/alerts3-triage2/roots.tsv`](prints/alerts3-triage2/roots.tsv) (66 roots, Step 4 recipe) =
  the reference's roots + `ThresholdRef_triage_Editor`; the PLAIN TEXT column equals the reference's for every other root.

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
- `html_runs.py` (rev. 2, 2026-11-11: a cell boundary always splits a token; the shipped `.runs` files were made by rev. 1,
  which merged abutting cells of one style — they differ only there, e.g. `[high]`, `(90)`; `--merge` reproduces rev. 1, use it to compare with a shipped `.runs`) — observer aid: `python3 html_runs.py <index.html|dir> [--grep TEXT] [--node ID]`, one line per
  editor line, `token → colour, weight, slant[, bg][, ref]`.
- `png_colours.py` — builder aid only (measured the pink); never a worker or evaluator step.
- `prints/<copy>/<Book>-<view>.{txt,runs}` — PLAIN TEXT and `html_runs.py` output for Ops, Staging, Night × `default`
  (`[]`), `compact`, `triage`; `Night-triage.png` for the reference and the broken copy; `def-*.txt` PLAIN TEXT of the
  new or seeded editor roots; `roots.tsv` = model, root name, concept, id, sha256[:16] of the deep JSON (sorted keys),
  sha256[:16] of the PLAIN TEXT `[]`, for all 62 (alerts3) / 65 roots of the editor, structure, constraints, sandbox
  and test models.
- The answer key `~/MPSProjects/mcp-study/build/alerts3-triage` is kept (base for a re-seed).
