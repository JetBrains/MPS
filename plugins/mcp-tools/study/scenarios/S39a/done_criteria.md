# S39a done criteria — Triage view: nested layout, a style-class chain, a dominating class, a conditional background, a hinted header override, a referent's value in a reference cell, an Inspector
Status: DRAFT 2026-11-11 (rev. 4, hardened after rehearsal 1 — 4/4 first-try passes, `~/MPSProjects/mcp-study/adhoc-image/s39-rehearsal.md`; design `S39-harden.md`: + prompt item 5 (threshold value, answer key `build/alerts3-triage2`, FIXTURE.md Step 5), the Compact+Triage combination stated, the rehearsal's criteria defects fixed); rev. 5 after rehearsal 2 (4/4 Pass, opus `high` and sonnet `medium`; evaluations in `s39-runs/`, summary ../../reports/assessments/editor-checking.md): criteria defects fixed, prompt unchanged. **Frozen 2026-11-11** as a regression and cost cell for the editor skills; it does not discriminate opus from sonnet (every look or seed can be read off the definitions). Rev. 6 (2026-11-15, A20): criterion 1 checks the recipe-v2 root pins with `roots.py`; prompt unchanged; past runs stay scored.
Fixture: alerts3 (= alerts2-compact + the sandbox book `Night`; sha256 in ../../fixtures/pins.md; pins, root table and reference prints in ../../fixtures/inputs/s39/FIXTURE.md and its `prints/alerts3/`, the reference Triage view's prints in `prints/alerts3-triage2/` (rev. 2 answer key; `prints/alerts3-triage/` is rev. 1 without item 5)). The worker changes only the editor model of `mcp.study.alerts`.
Topics forced (graded): a hint added to an existing container; a hinted editor for a concept inside the condition whose reference cell shows a property of the referent (a second reference cell or an inline component), with constants made plain; a hinted ConceptEditorDeclaration with nested indent collections; severity classes (a chain with `apply` inside a StyleClass, where the later item wins, or independent classes — recorded, not graded); a look confined to one view through a hinted EditorComponentDeclaration override; text colour inherited down the cell tree into child editors and a class that `dominates over` the classes set there; a conditional background (picture-only check); an inspected layout in a hinted editor (not printable); checking every view with `editorHints`; make before print.
Observer tools (read-only, `projectPath` on every call): `mps_mcp_print_node` of `Night`, `Ops`, `Staging` as PLAIN TEXT and HTML with `editorHints` `[]`, `["compact"]`, `["triage"]` (grep `index.html` for the `sN` classes or run the span-flattening aid shipped with FIXTURE.md; Read `editor.png`); deep JSON prints of the new editor roots; `roots.py check` (read-only, criterion 1) for the pinned roots; every PLAIN TEXT comparison with a shipped `.txt` is made after removing trailing whitespace from each line and trailing blank lines (the printer has dropped the final newline since `33511502bc10`; the shipped files keep it); `mps_mcp_check_root_node_problems`. Hex values as rendered in the light theme, measured 2026-11-11: red `#b20000`, darkMagenta `#7c007c`, gray `#808080`, darkBlue `#000080`; pink `#ffafaf`, only in the picture (measured by the builder on the reference). The observer's MPS uses the light theme; record it in the run meta. A colour is judged by the rendered class, never by the enum's nominal value.

0. Observer's first checks (a shortcut, not a criterion): `Night-triage` `editor.png` byte-compared with
   `prints/alerts3-triage2/Night-triage.png` — valid only on the observer's MPS build, fonts and light theme; equal ⇒ the
   colours and backgrounds of 3, 4, 5, 6, 6a hold for `Night` (record); unequal is no verdict (another valid cell
   structure, e.g. `(90)` as one accessor cell, shifts the picture by a few pixels): decide by the HTML runs and a look
   at the png. Then PLAIN TEXT (2, 6a) and the HTML runs (`html_runs.py --merge` against the shipped `.runs`, or token
   by token without it).
1. Base untouched: every pinned root equals its pin in both columns. Run, with `S=$STUDY/fixtures/inputs/s39`:
   `MPS_MCP_URL=$(jq -r .mpsMcpUrl $RUNS/<id>.meta.json) python3 $S/roots.py check --project <proj>
   $S/prints/alerts3/roots.tsv --except AlertHints AlertStyles`. Exit 0 passes this part; 1 fails it; 2 means the
   check did not run, so fix the call and repeat it. Each `new` root is recorded. The pins are recipe v2 (FIXTURE.md
   "roots.tsv pins"), so they compare from any MPS session. The exceptions are read in the definitions: `AlertHints` (gains `triage`: presentation
   "Triage", showInUI true; a second container is accepted, record) and `AlertStyles` (gains classes; `Keyword`'s own
   items unchanged). Pinned: all 22 editor roots of alerts2-compact — by name `AlertHeader`, `Alert_Editor`,
   `Alert_compact_Editor`, `Threshold_compact_Editor`, `Window_Editor`, `Not_Editor`, `Note_Editor` — the structure,
   `Ops`, `Staging`, `Night`, T1–T10 and `CompactViewTestUtil`. PLAIN TEXT and HTML classes of `Ops`, `Staging`, `Night`
   with `[]` and with `["compact"]` equal the pins (severity plain, default colour). Closes: the Triage look through
   rendering conditions, queries or styles in the default editors or in the shared `AlertHeader` (a styled shared
   header restyles two other views); dominance faked by editing the keyword class or the expression editors.
2. Layout (PLAIN TEXT, `["triage"]`): the eleven alert lines of prompt item 1 (with `cpuLimit (90)`, `diskFloor (10)`), character for character after trimming
   trailing spaces, the `when`/`notify` lines deeper than their header and equally deep; `Heartbeat` has no `notify`
   line and no placeholder (`<< ... >>`) line; no blank line added inside or between alerts; the six member lines above
   the alerts and the empty line as with `[]`. Definition: an Alert editor with contextHints {triage}; the `notify` part
   under a rendering condition on the channel list (the default editor's condition copied is the expected route; an
   equivalent alternation is recorded). Closes: a `notify` line with an empty-list placeholder; a condition on the
   alert's name.
3. Severity (HTML, `["triage"]`): `low` in `LowDisk` bold darkMagenta; `high` in `HighCpu` bold red; the brackets bold
   in the default colour. Approach, recorded, not failed: (a) a hinted EditorComponentDeclaration with
   `overridenEditorComponent` → `AlertHeader` and contextHints {triage} (intended); (b) a separate header component or
   inline header cells in the Triage alert editor. Class structure recorded: a chain (`high` class applying the base
   class and then setting red) / two independent classes / inline items / a colour query (a `java.awt.Color` query
   chosen because the rendered red is not `#ff0000` is recorded as a colour misread).
4. Muted (HTML, `["triage"]`): in `Backlog` every run is gray — `muted`, `alert`, `Backlog`, `[`, `low`, `]`, `when`,
   `queue`, `over`, `10`, `min`, `>`, `100`, `notify`, `chat`, `,`, `mail`, `pager`; in `Heartbeat` also `high`; weights
   as in a non-muted alert (keywords, brackets, operators, severity bold; names and numbers plain). In `LowDisk` (not
   muted) `not`, `when`, `notify` stay bold darkBlue and with `[]` the keywords of `Backlog` are darkBlue. Approach,
   recorded: (a) one class applied conditionally on the alert's top cell that `dominates over` another class, typically
   the keyword class (intended; any non-empty list works — a dominating class outranks every priority-0 value, listed or not;
   the reference lists `Keyword` only); (b) hinted {triage} editors for the condition concepts with
   conditional styles; (c) conditional gray on the alert editor's own cells only (cannot reach `over`/`min`/`not`:
   fails unless combined with b). A changed default editor of an expression concept fails 1.
5. Background (`editor.png` of the HTML or IMAGE print, `["triage"]`): the header line of `HighCpu` has a pink (`#ffafaf`)
   background from `alert` to `]`, gaps included; `Heartbeat` (high, muted), `LowDisk`, `Backlog`, the `when`/`notify`
   lines of `HighCpu`, and every other member have none. Definition: the colour is the enum literal on a class applied
   by `apply-if`, or a conditional background item; a `java.awt.Color` query passes with a record (one colour for
   every theme). Closes: a background on the whole block; one that ignores `muted`.
6. Note (HTML, `["triage"]`): `#` and the text of `Night`'s note gray, the text italic (`#` stays bold: a constant's
   own bold beats an inherited italic; an italic `#` is accepted); a hinted Note editor {triage} (a restyled default
   `Note_Editor` fails 1).
6a. Threshold value (PLAIN TEXT and HTML, `["triage"]`): `cpuLimit (90)` in `HighCpu`, `diskFloor (10)` and
   `cpuLimit (90) + 5` in `LowDisk`; name, parentheses and number plain, default colour (bold parentheses
   fail: a constant is bold by default and needs a plain font style); the number is the referent's `value`, not a
   copy or a constant (definition: a hinted {triage} `ThresholdRef` editor reading the referent — a second reference
   cell with an inline component, as in the answer key, or a read-only model accessor, recorded; on the key's route the `90`
   span's `data-n` is the Threshold's own NumberLit, …921 for `cpuLimit`; on the accessor route `(90)` is text of
   the ThresholdRef span, so check the definition reads the referent's `value`; a fallback text for an unresolved
   reference, e.g. `?`, is allowed). `[]`/`compact`
   unchanged (1). No muted alert holds a threshold reference, so the muted case is not graded.
7. Inspector (definition only: print_node cannot render the Inspector): the Triage alert editor has an
   `inspectedCellModel` with a `severity:` label and an editable property cell for `severity`, and a `muted:` label with
   one for `muted`, the second on a new line. An editor test proving it is welcome, not required.
8. Clean: 0 errors from `check_root_node_problems` on the five language models and the sandbox; no "instance of
   deprecated concept" in the editor model (a new `parentStyleClass` use is recorded, not failed). No hinted editor for
   Channel, Threshold or EmptyLine (item 7 of the prompt is the fallback rule; record any). The worker's last MAKE of
   `mcp.study.alerts` succeeded and no editor-model write follows it (transcript; the observer does not make).

Pass = 1–8 and 6a. Partial (recorded in `taskEvidence`, `taskPass` false) = 1, 2 and 8 hold and at most two of 3–7 and 6a fail. Compact and Triage both on: not graded (prompt); an extra editor for that
combination is recorded.
Fail = anything else. Record per criterion: verdict, the format that decided it, and the approach letters of 3 and 4.

Signals (observer-counted until `families.py` has them; definitions in the plan, section "Process metrics"):
`PN_text/_html/_image/_json` × `sample|def` × `hinted`; `PN_views` (recorded, gates nothing: which of `[]`, `compact`, `triage` were
printed after the last make of `mcp.study.alerts`, counted only as HTML for the style items: all three expected;
record also whether `Ops` and `Staging` were printed); `RD_png` ≥ 1 after the make that introduced the background (else criterion 5
was not looked at: a "verified" in the final message is a false claim); `RD_html`; `M_makes` ≥ 1 and `PN_stale` 0
(sample prints between an editor write and the next make), `PN_unknown_hint` (expected 0: the catalog says make first);
`M_failed` (makes with errors) and `M_first_check` (a `check_root_node_problems` before the first make: yes/no);
`DEF_root_prints` vs `DEF_dump` (one model dump expected); `BP_invalid_json` (blueprints rejected as JSON, whatever produced them:
an `apply-if` whose condition reads `node.muted` nests nine levels and cannot be copied from a rendering condition;
0–3 seen) and `BP_rejected` (well-formed blueprints refused by the tool: unknown role, wrong concept, …);
`PX_pixel_probes` 0; `X_outside_project` 0 (deny `/Users/vaclav/work/**` to workers); `V_false_claims` (the final
message says verified or done for a look the final state contradicts, for a background with `RD_png` 0, or for the
Inspector "by print_node"). Size: 66–97 turns (rehearsal 1 without item 5: opus 97, sonnet 88; rehearsal 2: opus 83, sonnet 66). Drop item 8 (Inspector), then item 6 (note)
of the prompt; never items 2–5. Isolation:
`alerts2` ids (restart before and after; never next to another `alerts2*`/`alerts3*` copy).

Walked on the built fixture (reference `build/alerts3-triage`, 2026-11-11): the eleven lines of 2 exact; 3a with
`apply Level` + `apply-if LevelHigh` on the override's severity cell gives `high` `#b20000` / `low` `#7c007c` bold; 4a
with `Dimmed dominates over Keyword` greys every run of `Backlog`/`Heartbeat`, severity and the reference cells `chat`,
`mail`, `pager` included (gray in the HTML class and in `editor.png`); pink `#ffafaf` from `alert` to `]` of `HighCpu` only; `[]`/`compact`
prints byte-equal to the alerts3 pins; checker 0/0; T1–T10 10/10.
Rev. 2 answer key (`build/alerts3-triage2`, FIXTURE.md Step 5): + `ThresholdRef_triage_Editor` = the original reference
cell, then a second reference cell on `threshold` with the inline `( %value% )`, both parentheses PLAIN; PLAIN TEXT of
`Night` triage = the revised listing; the other 15 prints equal rev. 1; checker clean; T1–T10 10/10.
