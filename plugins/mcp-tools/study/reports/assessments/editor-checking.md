# Checking editor definitions by rendering: ad-hoc probe, skill changes, cells S39a/S39b (2026-11-11)

Scope: how an agent sees what an editor definition renders — `mps_mcp_print_node` as PLAIN TEXT, HTML (`index.html`
`sN` classes plus `editor.png`) and IMAGE, in every view selected by `editorHints` — and where a look comes from (style
classes, `apply` / `apply-if`, inheritance down the cell tree, `dominates over` priority, constants bold by default,
hinted editors and component overrides). Evidence: `~/MPSProjects/mcp-study/adhoc-image/` (ad-hoc tasks, the S39
plan, fixture recipe, hardening design, probes and every review; worker transcripts and evaluations in `s39-runs/`;
the log `s39-rehearsal.md`).

## Ad-hoc probe and skill changes

Four sonnet runs on six editor tasks (alerts-hints fixture): IMAGE-guided (A1), HTML without IMAGE (B1), no guidance
(C1), draft skills (D1). The picture alone misjudged weights of thin symbols (A1, C1 called bold parentheses plain);
HTML classes gave exact colour and weight; backgrounds exist only in `editor.png`. D1 with the draft skills: 6/6, 52
calls (A1–C1: 72–79). Resulting catalog changes: `mps-aspect-editor/references/checking-editors.md` (the loop: one
projected dump of the editor model, make, render a sample node in every view; which format answers which question;
looks from outside the language), the colour table corrected to the `MPSColors` values (`red` `#b20000`), the
precedence section "Which value wins" in `stylesheet-values.md` (priority = 0, or 1 + the max of the dominated classes;
a higher priority beats every lower one, listed or not; a tie goes to the cell's own value, then the later item), and
`ApplyStyleClassCondition` preferred over colour queries. Commits c84e2f3bca92, 1cd87181c319, 8cb379813880.

## Cells

S39a builds a "Triage" view on `alerts3`; S39b audits one on `alerts3-hard` (fixture record
`../../fixtures/inputs/s39/FIXTURE.md`). Rev. 3 (dc6daf3cff8c) had six one-item seeds; after rehearsal 1 it was
hardened (0014eeb92ba1): seeds that read as plausible definitions (priority tie, a same-named class of a second style
sheet, a hinted editor of an abstract superconcept, one deviation with three causes, a condition wrong for one data
combination), revised questions, and a threshold-value item in S39a.

| Run | Rev. | Verdict | Turns | Min | $ |
|---|---|---|---|---|---|
| S39a opus `high` | 3 | Pass | 97 | 6.7 | 3.47 |
| S39b opus `high` | 3 | Pass | 52 | 4.1 | 2.13 |
| S39a sonnet `medium` | 3 | Pass | 88 | 5.7 | 1.59 |
| S39b sonnet `medium` | 3 | Pass | 40 | 2.3 | 0.82 |
| S39a opus `high` | 4 | Pass | 83 | 6.9 | 3.89 |
| S39b opus `high` | 4 | Pass (7/7, Q 3+5, Defects 7) | 69 | 6.1 | 2.92 |
| S39a sonnet `medium` | 4 | Pass | 66 | 4.6 | 1.31 |
| S39b sonnet `medium` | 4 | Pass (7/7, Q 3+5, Defects 7) | 45 | 2.9 | 0.96 |

## Findings

- With the catalog's loop, both models check editors correctly: no false "verified" claim in eight runs; every run
  printed the hinted view after its make; backgrounds were looked at in the picture.
- The cells do not discriminate models. Every planted cause is readable in the definitions, and workers find them
  there first (S39b rev. 4: five of seven deviations from the definitions before any print), then fix all causes
  before one make — so the three-cause masking chain was never exercised. The AGENTIC VIEW print (in development)
  names style-reference targets with ids, which exposes the shadowed class directly.
- Sonnet `medium` costs a third to a half of opus `high` at equal outcome.
- To discriminate, a future cell needs causes that no projection of the definitions shows, or a target given only as a
  picture.

Status: S39a/S39b frozen 2026-11-11 (criteria rev. 5) as regression and cost cells for the editor skills.
