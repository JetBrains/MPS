# S13 done criteria (observer, read-only, projectPath = run project dir)

**Prompt frozen 2026-10-23** (`promptSha256` `c6149a37265b…`) after the round-40 baseline:
`S13-opus-1` passed and did not misread the prompt. It treated the stock double report on `repeat`
as a third bug and restructured `Repeat_DataFlow`, which criterion 1 accepts.

Fixture: `kaja-dataflow.tar.gz` (`../../fixtures/README.md`): `samples/robot_Kaja` with two
injected builder bugs and one added sandbox script, built so its `classes_gen` carries the bugs.
Both bugs, the before state and the after state were checked live on 2026-10-23 (MPS 2026.1, build
261.25134). The observer rehearsed the fix on the fixture project: two builder edits, one
`MAKE` of `jetbrains.mps.samples.Kaja`, then `check_root_node_problems` on the sandbox model.

The gap this cell measures: no cell authors or debugs a dataflow builder
(`../../dataflow-exposure-assessment.md`). The only feedback an agent gets today is the presence
or absence of a checker message after a rebuild. It never sees the program the builder emitted.
This is the tool-free baseline for a later `mps_mcp_query_dataflow` `PRINT_PROGRAM`.

References. Dataflow model `r:5784598d-868b-437e-9c58-15fb07e7f373(jetbrains.mps.samples.Kaja.dataFlow)`
(`<df>`), sandbox model `r:1a01fdc1-6171-4a9b-86c9-e6b8bbdfe8af(Kaja.sandbox.sandbox)` (`<sandbox>`).

| what | reference |
|---|---|
| builder `IfStatement_DataFlow` | `<df>/6630310702469676828` |
| its `label elseBranch` | `<df>/6630310702469700227` |
| builder `Repeat_DataFlow` | `<df>/6630310702469893529` |
| its guard `node.count < 0` (a `LessThanExpression`, fixture only) | `<df>/915666084355063630` |
| check rule `check_KajaDataflow` (not to be changed) | `r:af5f8eb9-49c0-4279-87d3-3c80b1a56988(jetbrains.mps.samples.Kaja.typesystem)` |
| script `Reachability` | `<sandbox>/915666084355069204` |
| its `repeat 0 times` | `<sandbox>/915666084355069206` |
| `drop` inside it | `<sandbox>/915666084355069208` |
| `turnLeft` (`if wall ahead` true branch) | `<sandbox>/915666084355069212` |
| `step` (else branch) | `<sandbox>/915666084355069214` |
| `pick` (last command) | `<sandbox>/915666084355069215` |

The injected bugs, against the stock sample:

- **Bug A, a false positive.** In `IfStatement_DataFlow`, `label elseBranch` was moved from after
  `jump after node` to before `code for node.trueBranch`. The `ifjump` then lands on the true
  branch, and nothing jumps to the false branch, so every command in an `else` is unreachable.
- **Bug B, a false negative.** In `Repeat_DataFlow`, the guard `if (node.count <= 0)` became
  `if (node.count < 0)`. A `repeat 0 times` then falls into its body, so the body is not reported.

Before (the fixture, as the worker finds it), `check_root_node_problems` on `<sandbox>` reports:

| root | errors ("Unreachable command") on |
|---|---|
| `Dog` | `step`, `fetch`, `step` in routine `fetch`'s `else` |
| `Common` | the same three, in library routine `fetch` |
| `MarkSniffer` | `turnRight`, `safeStep`, `searchForMark` (the `else` commands of `safeStep` and `searchForMark`) |
| `Maze` | `pick`, `trace` in routine `sniffAround`'s `else` |
| `Reachability` | `step` only (`drop` missing) |

It also reports three "Consider using repeat to avoid repetition" warnings (`Karel`, `Dog`,
`Common`). They are stock sample warnings and they stay.

The rehearsed after state (stock builders): no error in any root except `Reachability`, which
has three. Two are on the `repeat` itself and one is on `drop`. Stock Kaja reports the `repeat`
because the builder's `label loopStart` and `ifjump` are skipped by the guard's jump, and both
instructions have the `Repeat` as their source.

1. **The builders are fixed.** One `print_node` (`format: "PLAIN TEXT"`) of each builder:
   - `IfStatement_DataFlow` has its `label elseBranch` after `jump after node` and before
     `code for node.falseBranch`.
   - `Repeat_DataFlow` guards with `node.count <= 0`, or `node.count < 1`.
   Equivalent modelling passes when criteria 2 and 3 hold: another label or jump layout, or the
   guard spelled differently. A rewritten or added builder root in `<df>` also passes. Record
   which. `mayBeUnreachable` changes nothing here: `check_KajaDataflow` ignores it. A guard that is
   true only for exactly 0 (`== 0`) passes, but note it: a negative count would fall into the body.
2. **The built language answers it.** `mps_mcp_check_root_node_problems` on `<sandbox>` (the model):
   - `Reachability`: "Unreachable command" on `drop`, and none on `turnLeft`, `step` or `pick`.
     Errors on the `repeat` node are fine either way (see above).
   - No "Unreachable command" in `Karel`, `Sample`, `Dog`, `MarkSniffer`, `Maze`, `Common`,
     `Filling` or `PlaygroundDefinition`, and no other error anywhere in the model.
   - Warnings do not count.
   The fixture's errors still standing means the builders were edited but the language was not
   rebuilt. That fails, whatever the transcript claims.
3. **Only the dataflow aspect changed.**
   - `mps_mcp_get_project_structure(startingPoint=<sandbox>, includeRootNodes=true)` lists exactly
     the fixture's nine roots: `Karel`, `Sample`, `Dog`, `Common`, `Filling`,
     `PlaygroundDefinition`, `MarkSniffer`, `Maze` and `Reachability`.
   - One deep `print_node` of `Reachability` shows `repeat 0 times { drop }`,
     `if wall ahead { turnLeft } else { step }` and `pick`, unchanged.
   - The `.mps` files that differ from the fixture are `languages/Kajak/languageModels/dataFlow.mps`
     only. In particular `typesystem.mps` (the `check_KajaDataflow` rule, which could be taught to
     skip `else` branches) and the sandbox's `sandbox.mps` are unchanged.
   - Module descriptors (`.mpl`, `.msd`), `.mps/` files that MPS rewrites on opening, and
     generated `source_gen*` / `classes_gen` output do not count.

Pass = criteria 1–3 hold.

## Process signals (transcript; report separately from the pass)

Read the `families.py` row of the run plus the transcript.

- **P1 symptom read from the checker.** A `check_root_node_problems` on `<sandbox>` or one of its
  roots before the first write to `<df>`. A fix written from the prompt alone is a signal, not a fail.
- **P2 builder study.** `DF_builder_prints`. Two prints, one per guilty builder, is the floor.
  Each print beyond about four is a builder read to simulate what the engine would emit. That is
  the cost `PRINT_PROGRAM` is meant to remove. Prints of `While_DataFlow` or `CommandList_DataFlow`
  while hunting for bug A count here too.
- **P3 build cycles.** `M_makes`. One `MAKE` of the language is the routed path. Every further
  `MAKE` followed by another sandbox check is one trial-and-error cycle, and the count of those
  cycles is the baseline number the tool's before/after comparison needs.
- **P4 hand-made engine probe.** `DF_console_runs` > 0 means the worker used the MPS Console.
  Read the transcript to see whether a run probed the dataflow runtime, and how many turns it cost
  (`../../dataflow-exposure-assessment.md`, "Console probe": about 40 lines of reflective Java).
- **P5 symptom to builder.** In the transcript, the turns between the first sandbox check and the
  first write to `<df>`, once for each bug. Criterion 2 needs both fixes, so neither can pass by
  luck.
