# Dataflow queries — `mps_mcp_query_dataflow`

Ask the dataflow engine rather than read builder roots and simulate the program they emit, or hand-write a console probe of `jetbrains.mps.lang.dataFlow`. The language's compiled builders build the program, as the IDE's *Language Debug > Show Data Flow Graph* does, and the engine's own analyses answer. Read the dataflow aspect only to change a builder.

| question | call |
|---|---|
| what program does this node's builder emit; which builder emitted this instruction | `PRINT_PROGRAM` `{nodeReference}` |
| why is this node "Unreachable", why "might not have been initialized" | `PRINT_PROGRAM` on the body: `unreachable`, `uninitializedReads`, then the `ifjump` / `jump` targets |
| which assignments can this read see ("value from here") | `REACHING_WRITES` `{nodeReference, programRoot?}` |
| is this write still read; which reads does it feed | `REACHING_READS` `{nodeReference, programRoot?}` |
| what does the problem message say | `mps_mcp_check_root_node_problems`: every dataflow verdict that ships is already a problem there |

The engine is intraprocedural and variable-level: nothing flows through method calls or fields, and there are no expression-level value sets. A language without a dataflow aspect yields an empty program. Builders take effect only after the language is rebuilt (one `mps_mcp_alter_nodes` `MAKE`); the tool runs the compiled builders, not the roots you edited.

## Shared shapes

- A node is `{reference, concept, presentation}` (`concept` is the short name).
- `program` is `{root, defaulted?, size, hasOuterJumps}`: `root` is the node the program was built from.
- A `variable` is `{name, reference?}`, normally the declaration node. A builder may use any object; then there is only `name`.
- `rule` is `{rule, ruleReference, statement}`: `rule` and `ruleReference` are the builder root (`IfStatement_DataFlow`), `statement` is the `emit` statement inside it that produced the instruction. Cite `rule`; open `statement` only to change it. Labels and the trailing `end` carry no rule; `code for` emits no instruction of its own (the child's builder emits them).

## PRINT_PROGRAM

`{nodeReference, maxInstructions?}` builds the program from exactly that node (a method body, a script's command list, one statement) → `{program, instructions:[…], unreachable, uninitializedReads, unusedAssignments}`.

An instruction is `{index, kind, text, source, rule?, variable?, value?, jumpTo?, outer?, mayBeUnreachable?, succ?}`:

- `kind`: `read`, `write`, `jump`, `ifjump`, `ret`, `nop`, `label`, `try`, `finally`, `endTry`, `end`, or the lower-cased name of an instruction kind an analyzer added.
- `text`: the runtime's presentation, as the devkit's *Print DFA* prints it (`ifjump 7`, `write total`).
- `source`: the node the instruction stands for. `value` (writes): the right-hand side node, `null` for a parameter. A declaration without an initializer emits no write (BaseLanguage emits a `nop`).
- `jumpTo`: the target index of a `jump` / `ifjump`. An `ifjump` is a two-way branch: control continues at `index + 1` or at `jumpTo`. Which side is a condition's true branch is the builder's choice: BaseLanguage's `if` emits it after the condition towards the else branch (jump when false), its `||` after the left operand towards the true branch (jump when true).
- `succ`: listed only when control does not simply fall through to `index + 1` (jumps, `ret`, the try-finally edges).
- `outer: true, jumpTo: null`: a jump whose target lies outside the program root (a `break`, `continue` or `return` target in an enclosing node). The runtime routes it to instruction 0, so reachability on such a program is distorted; a warning says so. A genuine jump back to instruction 0 in a program with outer jumps is reported the same way.
- `mayBeUnreachable: true`: the builder marked the instruction as allowed to be unreachable (every label and `endTry`, and what an `emitMayBeUnreachable` wraps, e.g. BaseLanguage's `jump after` an if whose branches both return).

`unreachable`, `uninitializedReads` and `unusedAssignments` are instruction indices: the analyses behind "Unreachable node", "might not have been initialized" and "Unused assignment" / "Unused parameter". `unreachable` lists every instruction no path reaches. Which of them a check reports is the language's choice: BaseLanguage's skips `mayBeUnreachable` instructions and those without a `source`, then reports the enclosing statement of each; Kaja's `check_KajaDataflow` reports every unreachable instruction's source, labels included. Before you wrap an instruction in `mayBeUnreachable` to silence a report, print the language's check rule to see whether it reads the flag at all. Entries about a variable declared outside the root that the program does not write on entry (a field, a local of an enclosing method, a foreach variable when the root is the loop body) are left out, with a warning naming them: their other writes and reads lie outside the program. A method's parameters are written on entry by BaseLanguage's body builder, so an unread parameter stays in `unusedAssignments`.

`maxInstructions` (default 400) caps the listed instructions; the shipped checks skip a program above 400. A capped answer has `details.truncated: true` and a warning. The index sets always cover the whole program.

Reading a builder bug off the program: a branch whose `ifjump` targets the wrong `label`, a `code for` child that never appears (no instruction with that child as `source`), a `write` that was never emitted, a `ret` without a `jump` around the rest. `rule` names the builder and the emit statement to fix.

## REACHING_WRITES and REACHING_READS

`{nodeReference, programRoot?}`. The queried node emits the reads (`REACHING_WRITES`) or writes (`REACHING_READS`): for BaseLanguage a `VariableReference` is a read, an assignment or an initialized variable declaration a write. When the node itself emits none, the reads or writes of its subtree answer, and `scope` is `subtree` (pass a statement to ask about every variable in it); otherwise `scope` is `node`. A node with neither answers an empty list and a warning.

- `REACHING_WRITES` → `{program, scope, reads:[{index, source, variable, writes:[{index, source, variable, value, rule?}], uninitializedPath?, unreachable?, variableOutsideProgram?}]}`: the writes of the read's variable that can reach it. `uninitializedPath: true` means some path from the program's start reaches the read with no write, so the value from before the program (a field's, or none) can be read.
- `REACHING_READS` → `{program, scope, writes:[{index, source, variable, value, rule?, reads:[{index, source}], unreachable?, variableOutsideProgram?}]}`: the reads the write can feed, read off the states after it, as Inline Variable does. An empty `reads` is a dead write within the program.
- `variableOutsideProgram: true`: the variable is declared outside the program root and the program does not write it on entry, so its writes and reads outside the program are not seen; `uninitializedPath` is not reported for it.

**Which program.** The answer is only as complete as the program: a write before the program root is missing. Without `programRoot` the tool builds from the body of the nearest `IMethodLike` at or above the node (a method, a `ConceptFunction`, a closure; the `IMethodLike` itself for a node outside its body, such as a parameter; a method or `ConceptFunction` node is its own root, while a closure node gets the enclosing body, since a closure's own builder emits only its captured reads), or the statement list of a static or instance initializer, else from the containing root. That is the program every shipped check builds. BaseLanguage's body builder writes the method's parameters first, so a parameter read lists that write. A closure's own builder emits only its external reads, so a node inside a closure gets the closure's body. `program.root` echoes the root and `program.defaulted: true` marks the default. Pass `programRoot` (a node whose subtree holds `nodeReference`, else `INVALID_REQUEST`) for a DSL whose analysis root is something else, such as Kaja's `CommandList`.

Indices differ between programs built from different roots: compare reads and writes by `source`, not by `index`, across calls with different roots.

## Builder failures

A builder that throws is a result, not an error: `{program:{root}, builderFailure:{exception, message, builder?:{name, class, ruleReference?}, stack, cause?}}` and a warning. `builder` is the generated `<Concept>_DataFlow` class nearest to the throw, and `ruleReference` its root when the repository has it. It is there only when a builder's own code threw (smodel access on a missing child, a behavior call). Positions and try blocks are resolved after every builder has returned, so `Can't find a label …` (a `label(node, "x")` position with no such label), `incomplete try blocks` and `unexpected finally` come without `builder`: search the builders that emit that label or `try` instead. `Cycle!` and `Unexpected end` are also possible. A `LinkageError` (`NoClassDefFoundError`, `AbstractMethodError`) means the language's compiled builders are out of date: rebuild it with `MAKE`.

Error codes: `NOT_FOUND`, the node or `programRoot` does not exist; `INVALID_REQUEST`, `maxInstructions` below 1, or a `programRoot` that does not contain the node; `INVALID_JSON`, `parameters` is not valid JSON; `INTERNAL_ERROR`, the dataflow runtime could not be reached (its message names the missing class or member) or an analysis failed on the built program. `data` is inline through `maxInlineBytes` (default 20000); above it, `data` is a temp-file path.

## Not available

Custom analyzers (`jetbrains.mps.lang.dataFlow.analyzers`, BaseLanguage's nullable analysis), builder modes (`IBuilderMode`), per-instruction analyzer state tables, and a path witness explaining why a node is unreachable or a variable uninitialized.
