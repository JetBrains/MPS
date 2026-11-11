# S39b done criteria — Triage view audited against its specification: six planted rendering defects, two investigation answers
Status: DRAFT 2026-11-11 (rev. 3: fixture built, every seed's symptom observed on `Night` with all six in place, Q1/Q2 ground truth recorded from the shipped prints — ../../fixtures/inputs/s39/FIXTURE.md, prints in its `prints/alerts3-broken/`; after the opus review `S39-review.md`, probes E1–E8); not rehearsed; prompt not frozen.
Fixture: alerts3-broken (= alerts3 + the observer's reference Triage view + seeds D-A…D-F; green controls G1–G4; sha256 in ../../fixtures/pins.md; reference answer key `~/MPSProjects/mcp-study/build/alerts3-triage`, its prints in FIXTURE.md's `prints/alerts3-triage/`). The worker changes only the editor model of `mcp.study.alerts` and writes `REPORT.md`.
Topics forced: finding an unfamiliar view (`details.editorHints.available`), comparing a projection with a specification in the format that can show each property (PLAIN TEXT: lines and cells; HTML classes: colour and weight; `editor.png`: backgrounds); which editor draws a node under a hint (fallback to the default editor, a hinted component override, hints inherited down the cell tree); where a look comes from (class chain order, text colour inherited from an ancestor cell, bold constants); a style leaking through a shared component into other views; a rendering condition; `dominates over`; fixing in the causing definition.
Observer tools (read-only, `projectPath` on every call): `mps_mcp_print_node` of `Night`, `Ops`, `Staging` as PLAIN TEXT and HTML with `editorHints` `[]`, `["compact"]`, `["triage"]` (grep `index.html` or run the span-flattening aid shipped with FIXTURE.md; Read `editor.png`); deep JSON prints of the editor roots; `mps_mcp_check_root_node_problems`; Read `REPORT.md`. Hex values as in S39a (light theme: red `#b20000`, darkMagenta `#7c007c`, gray `#808080`, darkBlue `#000080`; pink `#ffafaf`, picture only).

Seeds (one node edit each; ids in FIXTURE.md) and the format that shows the symptom:
| | Seed | Symptom on `Night` | Shown by |
|---|---|---|---|
| D-A | the `notify` row's rendering condition is "more than one channel" | Triage: `LowDisk` (one channel) has no `notify` line | PLAIN TEXT |
| D-B | the `notify` row precedes the `when` row in the Triage alert editor | Triage: `notify …` above `when …` | PLAIN TEXT |
| D-C | the `high` class sets red first and applies the base severity class after it | Triage: `high` of `HighCpu` is darkMagenta, not red | HTML class (picture: weak) |
| D-D | the shared `AlertHeader` severity cell applies the base severity class | normal and Compact view: severity bold darkMagenta | HTML class with `[]` / `["compact"]` |
| D-E | the muted class no longer dominates any class (its `dominates` record is gone) | Triage: in `Backlog`/`Heartbeat` every keyword cell stays darkBlue bold — the header's `muted alert`, `when`/`notify` and the condition's `over`/`min` alike — and the severity stays darkMagenta bold (`high` too, with D-C); names, numbers and channel references gray plain, brackets and operators gray bold | HTML class |
| D-F | the pink header's condition lost "not muted" | Triage: `Heartbeat` (high, muted) has a pink header, as `HighCpu` | `editor.png` only |
Controls that match the specification and must stay: G1 channels, thresholds, the empty line and the book line (default
editors); G2 the note (gray, italic text); G3 the Inspector layout of the Triage alert editor; G4 the Compact layout.

1. Scope: the structure, `Ops`, `Staging`, `Night`, T1–T10 and `CompactViewTestUtil` equal the pins; in the editor model
   every pinned root that no seed touches equals its pin (the default editors, `Alert_compact_Editor`,
   `Threshold_compact_Editor`, the hint container, the triage Note editor, `Keyword`). No new hinted editor for a
   concept that had none, except as approach (b) of 6 (recorded). A Triage alert editor or header override that was
   deleted and rebuilt is accepted when 2–7 hold (record "rewrite"); G3 must survive it: `inspectedCellModel` with the
   `severity:` and `muted:` rows.
2. D-A and D-B (PLAIN TEXT, `["triage"]`): the eleven alert lines of the reference (S39a prompt item 1), `when` before
   `notify`, `LowDisk` with `notify mail`, `Heartbeat` with no `notify` line and no placeholder. The rendering
   condition still exists and tests the channel list (deleting it fails: `Heartbeat` grows a line; a test on the
   alert's name fails). G1 lines as with `[]`.
3. D-C (HTML, `["triage"]`): `high` in `HighCpu` bold red, `low` in `LowDisk` bold darkMagenta. Fixed in the class
   chain (order) or by an equivalent that keeps one base class (record: reorder / red moved onto the cell / classes
   separated). A `java.awt.Color` query for red is recorded, not failed.
4. D-D (HTML, `[]` and `["compact"]`, on `Night` and `Ops`): the severity value plain in the default colour, as in the
   alerts3 pins; `AlertHeader` equals its alerts3 pin (the seeded item removed, nothing else changed); Triage keeps 3.
   Closes: "fixing" it by restyling the Triage override, by a hinted compact header, or by removing the Triage look.
5. D-F (`editor.png`, `["triage"]`): pink header on `HighCpu` only; `Heartbeat` none; no other background. The condition
   in the definition tests severity and muted.
6. D-E (HTML, `["triage"]`): every run of `Backlog` and `Heartbeat` gray, `over`, `min`, `muted`, `alert`, `when`,
   `notify`, `low` and `high` included, weights kept; `LowDisk`'s `not`, `when`, `notify` bold darkBlue; with `[]` all
   keywords darkBlue. Approach recorded: (a) `dominates over` restored on the muted class (any non-empty list: priority, not
   membership, decides; the reference lists `Keyword`); (b) hinted {triage} editors for the condition concepts plus conditional styles; (c) conditional
   gray on the Triage editors' own keyword cells only: `over`/`min` stay darkBlue, fail. A changed default editor or
   a changed `Keyword` fails 1.
7. Controls and Clean: G2 note gray (`#` bold, text italic); G4 Compact PLAIN TEXT of the three books equals the pins;
   0 errors from `check_root_node_problems` on the five language models and the sandbox; no "instance of deprecated
   concept"; observer MAKE of `mcp.study.alerts` without errors.
8. `REPORT.md` Q1 (3 points; ground truth is the fixture as shipped): (a) `Threshold_Editor`, the default editor,
   because no editor of Threshold is hinted for Triage and the default is the fallback; (b) the hinted component that
   overrides `AlertHeader` for {triage} (its severity cell), reached through the `AlertHeader` component cell of the
   Triage alert editor — "AlertHeader" alone or "the Triage alert editor" alone is no point; (c) `Window_Editor`, the
   default editor: the hint reaches the condition's cells but Window has no Triage editor.
9. `REPORT.md` Q2 (6 points; as shipped; the builder records the real values): `not` in `LowDisk` bold darkBlue —
   both from the keyword class on the constant of `Not_Editor` (1); `(` default colour, bold — a constant of
   `Paren_Editor` with no style, bold because a constant cell is bold by default (1; catalog-given, a reading check);
   `uptime` gray, plain — the property cell of `Metric_Editor` has no style (1); `chat` gray, plain — the read-only
   name cell of `ChannelRef_Editor`'s inline component (1); the gray of the last two comes from the muted class applied conditionally on the
   top cell of the Triage alert editor (1) and reaches the other editors' cells because text colour is inherited down
   the cell tree (1). Calling `(` plain or coloured, or naming a gray style in Metric/ChannelRef, loses that point.
10. `REPORT.md` Defects (6 points, one per seed: the right view and the causing definition — root or class plus cell
   or item; a symptom without the cause is half). An entry for a non-defect that led to a change of a control fails 1
   or 7; one without a change is recorded (`false_positive`).

Pass = 1–7 and Q1 ≥ 2 and Q2 ≥ 4. Partial (`taskPass` false, recorded) = 1 and 7 hold, at least four of the six seeds
are fixed (2 counts two), and Q1 + Q2 ≥ 5. Fail = anything else. Record: seeds fixed (0–6), which, the three scores,
the approach letters, `false_positive`, and for each seed the first format in which the worker's transcript shows the
symptom (PLAIN TEXT / HTML class / png / definition only).

Signals (definitions in the plan): `PN_*` by format × `sample|def` × `hinted`; `PN_views` (all three after the last
make); `PN_first_triage` (step of the first hinted sample print; expected before any editor write and before
`REPORT.md` Q2); `RD_png` (≥ 1 before the D-F fix and ≥ 1 after the last make), `RD_html`; `Q_before_write` (the Q1/Q2
sections exist before the first editor-model write); `M_makes`, `PN_stale` 0; `DEF_root_prints` vs `DEF_dump`;
`BP_invalid_json` (rejected blueprints; the condition of an `apply-if` nests nine levels); `PX_pixel_probes` 0;
`X_outside_project` 0 (deny `/Users/vaclav/work/**`); `V_false_claims`, taken from the Defects text and the final
message, neither of which is asked to state a check (a "checked/verified" where the final state contradicts it, where
the named format cannot show the property, or where no such print follows the last make). Size 60–100 calls; drop Q1,
then D-B; never D-D, D-E, D-F. Isolation: `alerts2` ids (restart before and after; never next to another
`alerts2*`/`alerts3*` copy, nor to the builder's scratch).

Walked on the built fixture (2026-11-11): each seed's symptom as tabulated, with all six in place (FIXTURE.md, Step 3);
`check_root_node_problems` 0 errors 0 warnings on the language with all six (every seed checker-silent); T1–T10 10/10;
G1–G4 as in the reference; the as-shipped Q1/Q2 answers are FIXTURE.md's table (equal to 8 and 9 above).
