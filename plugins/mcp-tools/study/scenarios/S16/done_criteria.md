# S16 done criteria (observer, read-only, projectPath = run project dir)

**Prompt**: identical to S13's (`promptSha256` `c6149a37265b…`); the cells differ only in the fixture.
Written 2026-10-23, before the first S16 run, as the cell that measures `mps_mcp_query_dataflow`
`PRINT_PROGRAM`: S13's bugs were both readable from the builder text, so the round-40 S13 worker
fixed them from prints alone (`../../dataflow-exposure-assessment.md`, round 40).

Fixture: `kaja-dataflow-2.tar.gz` (`../../fixtures/README.md`): `kaja-dataflow` with S13's bug A
replaced by bug C, built so its `classes_gen` carries bugs B and C. The before state, the fix and the
after state were checked live on 2026-10-23 (MPS 2026.1, build 261.25134, plugin of `7e141944e64f`),
with two fix rehearsals, each one `MAKE` of `jetbrains.mps.samples.Kaja`.

The gap this cell measures: a builder bug whose text looks right. Reading `IfStatement_DataFlow`
shows `ifjump after node.trueBranch`, which says "skip the true branch"; the stock builder prints as
`ifjump after label elseBranch`. Only the emitted program shows that the position after the true
branch is the `jump after node` instruction, so the false path jumps over the `else` too.

References. Dataflow model `r:5784598d-868b-437e-9c58-15fb07e7f373(jetbrains.mps.samples.Kaja.dataFlow)`
(`<df>`), sandbox model `r:1a01fdc1-6171-4a9b-86c9-e6b8bbdfe8af(Kaja.sandbox.sandbox)` (`<sandbox>`).

| what | reference |
|---|---|
| builder `IfStatement_DataFlow` | `<df>/6630310702469676828` |
| its `ifjump` statement | `<df>/6630310702469684057` |
| the `ifjump`'s injected `AfterPosition` (`node.trueBranch`, fixture only) | `<df>/994961134547167944` |
| builder `Repeat_DataFlow` | `<df>/6630310702469893529` |
| its guard `node.count < 0` (a `LessThanExpression`, fixture only) | `<df>/915666084355063630` |
| check rule `check_KajaDataflow` (not to be changed) | `r:af5f8eb9-49c0-4279-87d3-3c80b1a56988(jetbrains.mps.samples.Kaja.typesystem)` |
| script `Reachability` | `<sandbox>/915666084355069204` |
| its command list | `<sandbox>/915666084355069205` |
| its `repeat 0 times` | `<sandbox>/915666084355069206` |
| `drop` inside it | `<sandbox>/915666084355069208` |
| `turnLeft` (`if wall ahead` true branch) | `<sandbox>/915666084355069212` |
| `step` (else branch) | `<sandbox>/915666084355069214` |
| `pick` (last command) | `<sandbox>/915666084355069215` |

The injected bugs, against the stock sample:

- **Bug C, a false positive.** In `IfStatement_DataFlow` the `ifjump`'s position is `after
  node.trueBranch` instead of `label elseBranch`, and the `label elseBranch` statement is deleted. The
  builder reads `nop; code for node.condition; ifjump after node.trueBranch; code for node.trueBranch;
  jump after node; code for node.falseBranch`. In `Reachability`'s program the `ifjump` (index 6)
  targets index 8, the `jump` of the same `if`, so `step` (index 9) is unreachable.
- **Bug B, a false negative**, as in S13: in `Repeat_DataFlow`, the guard `if (node.count <= 0)`
  became `if (node.count < 0)`.

Before (the fixture, as the worker finds it), `check_root_node_problems` on `<sandbox>` reports
the same as S13's fixture:

| root | errors ("Unreachable command") on |
|---|---|
| `Dog` | `step`, `fetch`, `step` in routine `fetch`'s `else` |
| `Common` | the same three, in library routine `fetch` |
| `MarkSniffer` | `turnRight`, `safeStep`, `searchForMark` |
| `Maze` | `pick`, `trace` |
| `Reachability` | `step` only (`drop` missing) |

plus the three stock "Consider using repeat to avoid repetition" warnings (`Karel`, `Dog`, `Common`).

After (both rehearsals): no error in any root except `Reachability`, with three, two on the `repeat`
itself and one on `drop` (stock Kaja reports the `repeat` twice, see S13). The warnings stay.

1. **The builders are fixed.** One `print_node` (`format: "PLAIN TEXT"`) of each builder:
   - `IfStatement_DataFlow`'s `ifjump` targets the start of the false branch. Both rehearsed fixes
     pass: `ifjump before node.falseBranch` (one position replaced), or the stock layout `ifjump`
     to a `label elseBranch` placed after `jump after node` and before `code for node.falseBranch`.
     Another layout passes when criteria 2 and 3 hold. Record which. In Kaja `falseBranch` is a
     mandatory child, so `before node.falseBranch` is sound here; note it but do not fail it.
   - `Repeat_DataFlow` guards with `node.count <= 0`, or `node.count < 1` (an `== 0` guard passes;
     note it, as in S13).
   A rewritten or added builder root in `<df>` also passes; record which. `mayBeUnreachable`
   changes nothing here.
2. **The built language answers it.** `mps_mcp_check_root_node_problems` on `<sandbox>` (the model):
   - `Reachability`: "Unreachable command" on `drop`, and none on `turnLeft`, `step` or `pick`.
     Errors on the `repeat` node are fine either way.
   - No "Unreachable command" in `Karel`, `Sample`, `Dog`, `MarkSniffer`, `Maze`, `Common`,
     `Filling` or `PlaygroundDefinition`, and no other error anywhere in the model.
   - Warnings do not count.
   The fixture's errors still standing means the builders were edited but the language was not
   rebuilt. That fails, whatever the transcript claims.
3. **Only the dataflow aspect changed**, as S13's criterion 3: exactly the nine fixture roots in
   `<sandbox>`; `Reachability` unchanged in one deep print; the `.mps` files that differ from the
   fixture are `languages/Kajak/languageModels/dataFlow.mps` only (`typesystem.mps` and the sandbox's
   `sandbox.mps` unchanged). Descriptors, `.mps/` files MPS rewrites on opening, and generated
   output do not count.

Pass = criteria 1–3 hold.

## Process signals (transcript; report separately from the pass)

Read the `families.py` row of the run plus the transcript.

- **P1 symptom read from the checker**, as S13.
- **P2 program read.** `DF_program_prints`: did the worker look at the program, and on which node
  (a sandbox command list, a routine body, a builder)? Before or after the first builder edit? A
  run with the tool withheld (`disallowedTools` in the meta) has 0 by construction.
- **P3 builder study.** `DF_builder_prints`. Two prints, one per guilty builder, is the floor.
- **P4 build cycles.** `M_makes`. One `MAKE` is the routed path; each further `MAKE` followed by a
  sandbox check is a trial-and-error cycle. This is the number `PRINT_PROGRAM` should lower.
- **P5 hand-made engine probe.** `DF_console_runs` > 0: did a run probe the dataflow runtime?
- **P6 symptom to builder**, as S13's P5, once per bug. Bug C is the one the text hides.
