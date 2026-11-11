# S39b done criteria — Triage view audited against its specification: eight planted causes behind seven deviations, two investigation answers
Status: DRAFT 2026-11-11 (rev. 4, hardened after rehearsal 1 — 4/4 first-try passes on `alerts3-broken`, whose seeds each showed in one projected dump: `~/MPSProjects/mcp-study/adhoc-image/s39-rehearsal.md`; design `S39-harden.md`, probes `S39-harden-probes.md`; fixture record ../../fixtures/inputs/s39/FIXTURE.md Step 4); rev. 4 not rehearsed; prompt not frozen.
Fixture: alerts3-hard (= the reference Triage view `build/alerts3-triage` + seeds H1–H5, D-C, D-D, D-F; sha256 in ../../fixtures/pins.md; answer key `~/MPSProjects/mcp-study/build/alerts3-triage`, its prints in `prints/alerts3-triage/`; the shipped prints in `prints/alerts3-hard/`). The worker changes only the editor model of `mcp.study.alerts` and writes `REPORT.md`.
Topics forced: finding an unfamiliar view (`details.editorHints.available`); comparing a projection with a specification in the format that can show each property (PLAIN TEXT: lines and text; HTML classes: colour and weight; `editor.png`: backgrounds); which editor draws a node under a hint (fallback to the default editor; a hinted editor of an abstract superconcept; a hinted component override); where a look comes from when the definitions read correctly: style priority computed from `dominates over` (a tie: the cell's own value wins), a style reference to a same-named class of another style sheet, the order of style items on a cell and inside a class; a deviation with several causes (fixing one changes nothing visible); a rendering condition wrong for one combination of data; a style leaking through a shared component into other views; fixing in the causing definition.
Observer tools (read-only, `projectPath` on every call; the observer never makes): `mps_mcp_print_node` of `Night`, `Ops`, `Staging` as PLAIN TEXT and HTML with `editorHints` `[]`, `["compact"]`, `["triage"]` (run `html_runs.py` from FIXTURE.md's folder on `index.html`; Read `editor.png`); deep JSON prints of the editor roots (hash recipe: FIXTURE.md Step 4); `mps_mcp_check_root_node_problems`; Read `REPORT.md`; the worker's transcript. Hex values (light theme): red `#b20000`, darkMagenta `#7c007c`, magenta `#ff00ff`, gray `#808080`, darkBlue `#000080`; pink `#ffafaf`, picture only. First check: the worker's `Night` triage prints against `prints/alerts3-triage/Night-triage.{txt,runs,png}` (PLAIN TEXT equal ⇒ 2, 4; runs equal — `html_runs.py --merge` against the shipped `.runs`, or token by token — ⇒ the triage parts of 3, 6; png equal ⇒ 7; record). Criterion 5 needs the `[]`/`["compact"]` prints.

Seeds (ids in FIXTURE.md Step 4). Each reads as a plausible definition in a dump; the column "seen by" is the format in which the symptom shows:
| | Cause | Deviation on `Night` (shipped) | Seen by |
|---|---|---|---|
| H1 | `Dimmed` dominates over `Remark` (not `Keyword`) **and** `Keyword` dominates over `Level`: both priority 1, a tie, so a keyword cell's own darkBlue beats the inherited gray | X1 Triage: in `Heartbeat`/`Backlog` `muted alert when over min notify` darkBlue bold; the rest gray | HTML |
| H2 | a second style sheet `TriageStyles` with a class `Level` {bold, magenta}; the override's severity cell applies it (a dump shows `-> style=Level` either way) | X2 Triage: `low` of `LowDisk` `#ff00ff` bold | HTML |
| D-C + H4 (+ H2) | `LevelHigh` applies `Level` after its red; the override's severity cell has `apply-if LevelHigh` before `apply Level` | X3 Triage: `high` of `HighCpu` not red (`#ff00ff` shipped; red only when D-C, H4 and H2 are all fixed; D-C alone: no change) | HTML |
| H3 | `Comparison_triage_Editor` {triage} for the abstract `Comparison`: a copy of `BinaryExpr_Editor` with a constant `>` instead of the alias | X4 Triage: `disk > diskFloor` (LowDisk), `uptime > 1` (Heartbeat) | PLAIN TEXT |
| H5 | the `notify` row's rendering condition is `node.muted \|\| node.notify.isNotEmpty` | X5 Triage: `Heartbeat` (muted, no channel) has a `notify` placeholder line | PLAIN TEXT |
| D-D | the shared `AlertHeader` severity cell applies `Level` | X6 normal and Compact: severity bold darkMagenta | HTML `[]`/`["compact"]` |
| D-F | the pink header's condition lost "not muted" | X7 Triage: `Heartbeat` has a pink header, as `HighCpu` | `editor.png` only |
Controls that match the specification and must stay: G1 channels, thresholds, the empty line and the book line (default
editors); G2 the note (gray, italic text); G3 the Inspector layout of the Triage alert editor; G4 the Compact layout.

1. Scope: the structure, `Ops`, `Staging`, `Night`, T1–T10 and `CompactViewTestUtil` equal the pins (PLAIN TEXT column
   of `prints/alerts3-hard/roots.tsv` for all; deep column, recipe FIXTURE.md Step 4, for the editor roots the
   transcript shows written — the deep JSON embeds the checkout path, so hashes compare only from the same MPS); every
   editor root that no seed touches equals its pin (the default editors incl. `BinaryExpr_Editor`, `Alert_compact_Editor`,
   `Threshold_compact_Editor`, the hint container, the triage Note editor). `Keyword`'s own items are unchanged (its
   seeded `dominates` record may go). Deleting the seeded roots `TriageStyles` or `Comparison_triage_Editor` is
   accepted. A new hinted editor for a concept that had none is recorded (an editor for `Less` that hides H3 is
   recorded as `masked`, not a fix of H3 — criterion 4 fails). A rewritten Triage alert editor or override is accepted
   when 2–7 hold (record "rewrite"); G3 must survive it.
2. X5 (PLAIN TEXT, `["triage"]`): the eleven alert lines of the reference (`prints/alerts3-triage/Night-triage.txt`);
   `Heartbeat` with no `notify` line and no placeholder, `LowDisk` with `notify mail`. The rendering condition still
   exists and tests only the channel list. G1 lines as with `[]`.
3. X2, X3 (HTML, `["triage"]`): `high` in `HighCpu` bold `#b20000`, `low` in `LowDisk` bold `#7c007c`. X2 fixed by
   pointing the override at `AlertStyles.Level` (or deleting `TriageStyles` and re-pointing); recolouring
   `TriageStyles.Level` is recorded (`duplicate kept`). X3 by the class order and the cell order (or an equivalent
   that keeps one base class; record reorder / red moved onto the cell / classes separated). A `java.awt.Color` query
   for red is recorded, not failed.
4. X4 (PLAIN TEXT, `["triage"]`): `disk < diskFloor`, `uptime < 1`, every `>` as before. Fixed by deleting
   `Comparison_triage_Editor` or by restoring the alias in it (record which); a changed `BinaryExpr_Editor` fails 1.
5. X6 (HTML, `[]` and `["compact"]`, on `Night` and `Ops`): the severity value plain in the default colour, as in the
   alerts3 pins; `AlertHeader` equals its alerts3 pin; Triage keeps 3. Closes: restyling the Triage override, a hinted
   compact header, or removing the Triage look.
6. X1 (HTML, `["triage"]`): every run of `Backlog` and `Heartbeat` gray, weights kept (`over`, `min`, `muted`, `alert`,
   `when`, `notify`, `low`, `high` included); `LowDisk`'s `not`, `when`, `notify` bold darkBlue; with `[]` all
   keywords darkBlue. Approach recorded: (a) `Dimmed` dominates over `Keyword` again (priority 2), (b) `Keyword`'s
   `dominates` record removed (priority 0 < 1), (c) both; (d) hinted {triage} editors for the condition concepts with
   conditional styles (recorded); (e) conditional gray on the Triage editors' own cells only: `over`/`min` stay
   darkBlue, fail.
7. X7 (`editor.png`, `["triage"]`): pink header on `HighCpu` only; `Heartbeat` none; no other background. The
   condition tests severity and muted.
8. Controls and Clean: G2 note gray (`#` bold, text italic); G4 Compact PLAIN TEXT of the three books equals the pins;
   0 errors from `check_root_node_problems` on the five language models and the sandbox; no "instance of deprecated
   concept"; the worker's last MAKE of `mcp.study.alerts` succeeded and no editor-model write follows it (transcript).
9. `REPORT.md` Q1 (3 points, each needs the definition and the why; the sections as first written are graded, a later
   edit of them is recorded; ground truth FIXTURE.md Step 4, as shipped): (a) `Threshold_Editor`, the default editor,
   because no Threshold editor is hinted for Triage; (b) the `+`: `BinaryExpr_Editor`, the default editor of the
   superconcept (its `alias` component cell draws `+`): `Plus` has no editor of its own and extends `BinaryExpr`
   directly, so the triage-hinted `Comparison_triage_Editor` does not apply (Plus is not a Comparison) and nothing
   else carries the hint — naming `Comparison_triage_Editor` is no point; (verified: generated `StructureAspectDescriptor`, Plus and
   Comparison both `super_` BinaryExpr; probe P3: `+` unchanged in triage); (c) `Window_Editor`, the default: the hint reaches the
   condition's cells but Window has no Triage editor.
10. `REPORT.md` Q2 (5 points, as shipped): `when` in `Backlog` darkBlue bold from `Keyword` on the triage editor's
   constant (1), and why not gray: `Keyword`'s priority (1, from `dominates over Level`) equals `Dimmed`'s (1), and at
   equal priority the cell's own value beats the inherited one (1; "Dimmed does not list Keyword" alone is no point —
   the list's membership does not decide); the `,` after `chat` gray bold: the separator of the `%notify%` list cell of `Alert_triage_Editor`, gray inherited
   from `Dimmed`, bold as a constant (1; shipped runs: `, → #808080, bold`); `uptime` gray plain, inherited from `Dimmed` applied
   conditionally on the top cell of the Triage alert editor (1); `(` default colour, bold because a constant cell is
   bold by default (1).
11. `REPORT.md` Defects (7 points, one per deviation X1–X7: the right view and the causing definitions; a symptom
   without the cause is half; X1 needs both records or the priority argument; X3 needs D-C and H4 — H2 may be named
   under X2). An entry for a non-defect that led to a change of a control fails 1 or 8; one without a change is
   recorded (`false_positive`).

Pass = 1–8 and Q1 ≥ 2 and Q2 ≥ 3 including the tie point and Defects ≥ 5. Partial (`taskPass` false, recorded) = 1 and 8 hold, at least five of X1–X7 are fixed,
and Q1 + Q2 ≥ 4. Fail = anything else. Record: deviations fixed (0–7), which, the three scores, the approach letters,
`false_positive`, `masked`, and for each deviation the first format in which the transcript shows the symptom (PLAIN
TEXT / HTML class / png / definition only).

Signals (definitions in the plan): `PN_*` by format × `sample|def` × `hinted`; `PN_views` (all three printed after the
last make of `mcp.study.alerts`; style items counted only with HTML); `PN_first_triage`; `RD_png` (≥ 1 before the X7
fix and ≥ 1 after the last make), `RD_html`; `Q_before_write` (the Q1/Q2 sections exist before the first editor-model
write — the prompt asks for it); `M_makes`, `M_failed`, `PN_stale` 0; `FX_no_change` (a fix followed by a make and a
print that still shows the deviation — expected for X3 — and what the worker did next: searched on / claimed fixed);
`DEF_root_prints` vs `DEF_dump`; `DEF_deep_ref` (the worker resolved a style reference to its node id or sheet: needed
for X2); `Q_guided` (X1 is the subject of Q2's `when`: record whether X1 was found while answering Q2); `BP_invalid_json`; `PX_pixel_probes` 0; `X_outside_project` 0 (deny `/Users/vaclav/work/**`);
`V_false_claims`, from the Defects text and the final message (a "checked/verified" where the final state contradicts
it, where the named format cannot show the property, or where no such print follows the last make). Size: rehearsal 1
took 37–48 calls (40–52 turns) on the old six seeds; re-estimate after rehearsal 2. Drop Q1, then X4; never X1, X3, X6, X7.
Isolation: `alerts2` ids (never next to another `alerts2*`/`alerts3*` copy, nor the builder's scratch).

Walked on the built fixture (2026-11-11, FIXTURE.md Step 4): each deviation as tabulated with all seeds in place; the
masking chain of X3 by four states; `check_root_node_problems` 0 errors 0 warnings on the language (every seed
checker-silent); T1–T10 10/10; G1–G4 as in the reference; the as-shipped Q1/Q2 answers equal 9 and 10 above.
