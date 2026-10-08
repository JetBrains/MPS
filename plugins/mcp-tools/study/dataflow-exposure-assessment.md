# Exposing the MPS dataflow runtime through `mps_mcp_*` — assessment

Status: assessment, 2026-10-08. No code change. Investigates whether dataflow graphs,
"value to here" / "value from here" inspections, or other dataflow-derived information would
help agents editing DSL code if exposed as MCP tools, and how much each candidate would cost.
Companion to `../docs/query-types-plan.md`, whose `mps_mcp_query_types` is the implementation
template any dataflow tool would follow.

All paths are relative to the repository root. Runtime Java under `source_gen/` is generated
from the `.mps` models next to it; the models are the source of truth.

## Bottom line

- Technically cheap. MPS already has a textual program dump, both directions of def-use
  analysis, instruction-to-node mapping both ways, and a record of which builder rule emitted
  each instruction. A tool is mostly serialisation.
- Value is uneven. High for agents **authoring dataflow builders** for a DSL: they are blind
  today. Modest and situational for agents **editing DSL user code**: every verdict MPS derives
  from dataflow is already a problem message, and MPS dataflow is intraprocedural and
  variable-level, much narrower than IntelliJ's "Analyze data flow to here".
- No demand signal either way. The study has no dataflow scenario, and none of the hotspot
  rounds (2–32) record an agent struggling with a dataflow problem.
- Recommendation: a small `query_dataflow` tool with a program dump and the two reaching
  operations, plus a study scenario for builder authoring to measure it. Defer the
  path-witness "explain" operation until the measurements justify it.

## What MPS has today

### Runtime (`languages/languageDesign/dataFlowRuntime`, module `jetbrains.mps.dataFlow.runtime`)

Package `jetbrains.mps.lang.dataFlow.framework`, generated into
`languages/languageDesign/dataFlowRuntime/source_gen/jetbrains/mps/lang/dataFlow/`.

| Piece | What it gives |
|---|---|
| `Program.toString(boolean showSource)` | One line per instruction, `"<idx>: <cmd>"`, plus the source node's name when `showSource`. `cmd` is `read x`, `write x`, `jump N`, `ifjump N`, `ret`, `nop`, `try`, `finally`, `endTry`, `end`, or a label name. |
| `AnalysisResult.toString()` | Same lines with the per-instruction analysis value appended; sets print sorted, e.g. `[0: write x, 1: write y]` (see `testbench/modules/testDataFlow/solutions/lang.rt.test/test_gen/jetbrains/mps/dataflow/rttest/ReachingDefinitionsTest.java`). |
| `Program.getInstructionsFor(node)`, `Instruction.getSource()` | Node → instruction range and instruction → node. |
| `Instruction.getRuleReference()` | `"<modelRef>/<nodeId>"` of the builder-rule node that emitted the instruction. |
| `WriteInstruction.getValue()` | The right-hand-side node of the write. |
| `Instruction.succ()/pred()`, `getJumps()` | The control-flow graph edges. |
| `ReachingDefinitionsAnalyzer` (forward) | Which writes reach a read — **"value from here"**. |
| `ReachingReadsAnalyzer` (backward) | Which reads a write feeds — **"value to here"**. |
| `ReachabilityAnalyzer`, `InitializedVariablesAnalyzer`, `MayBeInitializedVariablesAnalyzer`, `LivenessAnalyzer` | The analyses behind the shipped checks. |
| `MPSProgramFactory.newFactory(modes)` | Builder-mode selection (e.g. the intraprocedural mode); the IDE graph dialog cannot do this. |
| `jetbrains.mps.lang.dataFlow.analyzers` + `CustomAnalyzerRunner` | DSL-defined analyzers, run by fully qualified name through `prepareProgram(..., new NamedAnalyzerId(fqName))`. BaseLanguage's nullability analysis is one. |

The modern entry point is
`languageRegistry.withAvailableExtensions(MPSProgramFactory.class, new MatchRequest(){}, pf -> pf.createProgram(node))`;
`DataFlow.buildProgram(node)` still works but goes through a deprecated constructor.

The two reaching analyses are production code, not test scaffolding:

- Extract Method (`languages/baseLanguage/baseLanguage.util/source_gen/jetbrains/mps/baseLanguage/util/plugin/refactorings/ExtractMethodRefactoringAnalyzer.java`)
  uses `ReachingDefinitionsAnalyzer` to compute input parameters: reads whose reaching writes lie
  outside the selection.
- Inline Variable (`InlineVariableRefactoring.optimizeAssignment`, `InlineVariableAssignmentRefactoring`)
  uses `ReachingReadsAnalyzer` to decide whether an assignment is still read after inlining.

### IDE actions (devkit plugin, shipped; `plugins/mps-devkit/languages/pluginSolutions/lang.dataFlow`)

Under the node popup's "Language Debug" submenu:

- **Show Data Flow Graph** (`ShowDFA_Action`) opens a Swing dialog with one box per instruction and
  arrows along `succ()`. Clicking a box opens the source node; the context menu offers "Go To Data
  Flow Rule". Picture only, no text export.
- **Print DFA**, **Print DFA Initialization Information**, **Print DFA Reaching Definitions
  Information** (`DataFlowInternal_ActionGroup`) write `program.toString(true)` or an
  `AnalysisResult.toString()` to `System.out`. Nothing appears in the UI.
- **Show Nullable DFA** (`plugins/mps-devkit/languages/pluginSolutions/baseLanguage/...`) renders the
  nullable runner's program copy in the same dialog.

So MPS already considers these views useful for language authors, but none of them is reachable
by an agent.

### What is already a problem message (free via `mps_mcp_check_root_node_problems`)

`languages/baseLanguage/baseLanguage/source_gen/jetbrains/mps/baseLanguage/typesystem/DataFlowUtil.java`
and its callers report, with node refs, rule refs and quick fixes:

| Check | Severity | Message |
|---|---|---|
| reachability | error | "Unreachable node" |
| expected returns | error | "Missing return statement" / "Return expected" |
| initialized variables | error | "Variable 'x' might not have been initialized" |
| liveness | warning | "Unused assignment", "Unused parameter", "Variable 'x' initializer is redundant", "Unused variable", "Unused declaration" |
| used variables | warning | "Unused variable" |
| nullable analyzer | warning | NPE, "Argument might be null", "This condition is always true/false", @NotNull violations |
| condition / loop scan | warning | "Infinite loop", "The condition is always true/false" |
| field initialization | error/warning | "Field x used before initialized", "Field is never used", "Field x is never assigned" |
| size guard | info | "This node is too complex too analyze by data flow algorithm" (program size > 400) |

Quick fixes (`RemoveUnusedAssignment_QuickFix`, `RemoveUnusedLocalVariable_QuickFix`,
`SimplifyCondition_QuickFix`) are listed per problem and applicable via `mps_mcp_apply_intention`.

Callers outside BaseLanguage that run the same checks: closures, `lang.test` test methods,
typesystem rule bodies (`check_AbstractCheckingRule_NonTypesystemRule` and friends), and the
`robot_Kaja` sample's `check_KajaDataflow_NonTypesystemRule`.

### What is hidden from an agent

- the instruction list (`Program.toString`)
- per-instruction analyzer states (initialized set, reaching definitions, liveness, nullable state)
- which builder rule produced each instruction
- def-use chains, which exist only inside the refactoring code above
- the graph

### State of `plugins/mcp-tools`

- No dataflow code in `src/` or `test/`.
- `check_root_node_problems` has no dataflow checker of its own; dataflow verdicts arrive only
  through a language's `NonTypesystemChecker` rules (`src/.../common/AbstractOps.kt`, `runRootCheckers`).
- The `mps-aspect-dataflow` skill's debugging advice is "validate with `check_root_node_problems`,
  print a known-good builder with `print_node deep: true`". Its own routing table admits the hard case:
  "a builder that validates but analyses wrongly → only `references/rules-and-pitfalls.md`".
- `study/scenarios.md` lists `mps-aspect-dataflow` under "No scenario". No hotspot report,
  `observations.md` or `docs-defects*.md` entry mentions dataflow, unreachable code or
  uninitialised variables.

## Candidate operations, ranked by value to an agent

### 1. PRINT_PROGRAM — instruction list for a node, with node refs and emitting rule

Highest value, lowest cost.

- **Audience**: an agent writing or fixing a dataflow aspect for a DSL.
- **Today**: edit builder → rebuild language → write sample code → `check_root_node_problems` →
  guess, from the presence or absence of "Unreachable node" / "might not have been initialized",
  why the analysis is wrong. The agent never sees the program it emitted.
- **With the tool**: the agent sees that its `ifjump` targets the wrong label, that a `write` was
  never emitted, or that a `code for` child was skipped; `ruleReference` names the builder block
  to fix. Trial-and-error becomes observation. This is exactly what the IDE's graph dialog gives a
  human language author.
- **Cost**: a walk over `program.getInstructions()`; per instruction `{index, kind, variable?,
  value?, jumpTo?, source (node ref), rule (ruleJsonObject via ruleReference)}`, plus
  `unreachable`, `uninitializedReads`, `unusedAssignments` index sets from the `Program` getters.
  Optional `analyzer` parameter (fully qualified name) to run a custom analyzer and attach its
  per-instruction result via `AnalysisResult.get(i)`. Optional `mode` parameter for builder modes.
- **Caveat**: builders take effect only after the language is rebuilt; the tool shows the compiled
  builders, same as the IDE.

### 2. REACHING_WRITES / REACHING_READS — def-use chains for a variable reference

Medium value, same low cost.

- **Audience**: an agent editing DSL user code: removing an assignment, moving a statement across
  a branch, inlining a variable, changing a loop condition.
- **Today**: `FIND_USAGES` on the declaration (structural, flow-insensitive) plus reading the code.
  For short linear methods that is enough and the tool adds nothing.
- **With the tool**: in methods with loops, nested branches and try-finally, "does this write
  still reach a read" and "which assignment's right-hand side can this read see" are answered
  by the engine instead of being simulated. `WriteInstruction.getValue()` lets the result name
  the actual right-hand-side nodes.
- **Two honest limits**:
  - Intraprocedural and variable-level. No values through method calls or fields, no
    expression-level value sets. Far weaker than IntelliJ's "Analyze data flow to here".
  - Only as good as the DSL's builders. BaseLanguage emits reads and writes; a fresh DSL without
    a dataflow aspect yields an empty program and the tool returns nothing. For most DSL user
    code this operation is useless until the DSL author has done the work operation 1 supports.
- **Cost**: `program.analyze(new ReachingDefinitionsAnalyzer())` or `ReachingReadsAnalyzer`,
  then filter by variable at the instructions of the queried node, exactly as the refactorings do.

### 3. EXPLAIN_PROBLEM — a path witness for "Unreachable node" / "might not have been initialized"

Medium value, higher cost.

- The messages name the node but not why. A concrete path from the method start to the read that
  skips every write to the variable, rendered as the source nodes along it, is what an agent
  needs in a multi-branch method. This is the dataflow analogue of `EXPLAIN_TYPE`.
- Needs new code: a backward search over `pred()` constrained by the analyzer's per-state
  values. Not just serialisation.
- Build only if a study scenario shows agents spending turns on these two messages.

### 4. Per-instruction analyzer state tables, nullable states, the graph itself

Low value.

- Nullable verdicts are already warnings; raw state maps are verbose.
- The graph is derivable from the instruction list and jump targets; agents read text better
  than pictures anyway.

## Recommendation

1. Add `mps_mcp_query_dataflow` with operations `PRINT_PROGRAM`, `REACHING_WRITES`,
   `REACHING_READS`, following `JetBrainsMPSTypesMcpToolset.kt`: operation enum, `ParameterKeys`
   per operation, `withMpsProject` + EDT read, Gson result through `finalizeResult`, an
   integration test class registered in `McpNodeToolsTestSuite`, and a routing-drift unit test in
   the style of `SkillTypeQueryRoutingTest`. Build programs through
   `LanguageRegistry.withAvailableExtensions(MPSProgramFactory.class, ...)` as the debug actions do,
   so builder modes resolve.
2. Give `mps-aspect-dataflow` a real debugging section pointing at `PRINT_PROGRAM`, and add a
   `references/analysis-tools/dataflow-queries.md` page under `mps-mcp-workflow` next to
   `type-queries.md`.
3. Add a study scenario (next free id) for dataflow-builder authoring on a small DSL whose
   builder is deliberately wrong, and optionally one for a def-use-sensitive edit in a
   BaseLanguage method with loops and try-finally. Run both without the tool for a baseline.
   Let turn and retry counts decide whether operation 3 is worth building.

## Open question

Whether the MPS console model can import `jetbrains.mps.dataFlow.runtime`. If it can, an agent
could prototype `PRINT_PROGRAM` today through `mps_mcp_run_console_command` with a few lines of
BaseLanguage (`new MPSProgramBuilder().buildProgram(node).toString(true)`), which would let the
value be tested before any server code is written. Not verified in this assessment.
