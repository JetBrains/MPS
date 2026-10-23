# Exposing the MPS dataflow runtime through `mps_mcp_*` — assessment

Status: assessment, 2026-10-08; code pointers re-checked and the implementation section revised
2026-10-22. No code change. Investigates whether dataflow graphs,
"value to here" / "value from here" inspections, or other dataflow-derived information would
help agents editing DSL code if exposed as MCP tools, and how much each candidate would cost.
The implemented `mps_mcp_query_types` (`src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSTypesMcpToolset.kt`,
documented in skill `mps-mcp-workflow/references/analysis-tools/type-queries.md`) is the template
any dataflow tool would follow. Its plan, `docs/query-types-plan.md`, was removed as implemented in
`8cf5c45bc359`; read it with `git show 8cf5c45bc359^:plugins/mcp-tools/docs/query-types-plan.md`.

Paths are relative to the repository root, except `src/`, `test/`, `META-INF/`, `docs/`,
`study/` and `resources/`, which are under `plugins/mcp-tools/`. Runtime Java under `source_gen/` is generated
from the `.mps` models next to it; the models are the source of truth.

## Bottom line

- Technically cheap on the MPS side. MPS already has a textual program dump, both directions of
  def-use analysis, instruction-to-node mapping both ways, and a record of which builder rule
  emitted each instruction. Most of the tool is serialisation. The real cost is on the
  mcp-tools side: the dataflow runtime is compiled by MPS, and mcp-tools cannot compile against
  it (see "The compile boundary" below).
- Value is uneven. High for agents **authoring dataflow builders** for a DSL: they are blind
  today. Modest and situational for agents **editing DSL user code**: every verdict MPS derives
  from dataflow is already a problem message, and MPS dataflow is intraprocedural and
  variable-level, much narrower than IntelliJ's "Analyze data flow to here".
- No demand signal either way. The study has no dataflow scenario, and none of the hotspot
  reports (rounds 2–33; rounds 7 and 27–29 have none) record an agent struggling with a dataflow problem.
- Recommendation: first a study scenario for builder authoring, run without the tool as a
  baseline. Then a small `query_dataflow` tool with a program dump and the two reaching
  operations, behind a reflective façade over the runtime. Defer the path-witness "explain"
  operation until the measurements justify it.

## What MPS has today

### Runtime (`languages/languageDesign/dataFlowRuntime`, module `jetbrains.mps.dataFlow.runtime`)

Packages `jetbrains.mps.lang.dataFlow` (`MPSProgramFactory`, `MPSProgramBuilder`, `DataFlow`) and
`jetbrains.mps.lang.dataFlow.framework` (everything else), generated into
`languages/languageDesign/dataFlowRuntime/source_gen/jetbrains/mps/lang/dataFlow/`.
`CustomAnalyzerRunner` lives in a separate MPS-compiled module, `jetbrains.mps.analyzers.runtime`
(`languages/languageDesign/analyzers/runtime`).

| Piece | What it gives |
|---|---|
| `Program.toString(boolean showSource)` | One line per instruction, `"<idx>: <cmd>"`, plus the source node's name when `showSource`. `cmd` is `read x`, `write x`, `jump N`, `ifjump N`, `ret`, `nop`, `try`, `finally`, `endTry`, `end`, or a label name. |
| `AnalysisResult.toString()` | Same lines with the per-instruction analysis value appended; sets print sorted, e.g. `[0: write x, 1: write y]` (see `testbench/modules/testDataFlow/solutions/lang.rt.test/test_gen/jetbrains/mps/dataflow/rttest/ReachingDefinitionsTest.java`). |
| `Program.getInstructionsFor(node)`, `Instruction.getSource()` | Node → its instructions (a list) and instruction → node. |
| `Instruction.getRuleReference()` | `"<modelRef>/<nodeId>"` of the `emit` statement inside the builder that produced the instruction, e.g. `r:…(jetbrains.mps.baseLanguage.dataFlow)/1214502357422`. The builder is that node's root. |
| `WriteInstruction.getValue()` | The right-hand-side node of the write. |
| `Instruction.succ()/pred()`, `getJumps()` | The control-flow graph edges. |
| `ReachingDefinitionsAnalyzer` (forward) | Which writes reach a read — **"value from here"**. |
| `ReachingReadsAnalyzer` (backward) | Which reads a write feeds — **"value to here"**. |
| `ReachabilityAnalyzer`, `InitializedVariablesAnalyzer`, `MayBeInitializedVariablesAnalyzer`, `LivenessAnalyzer` | The analyses behind the shipped checks. |
| `MPSProgramFactory.newFactory(modes)` | Builder-mode selection (e.g. the intraprocedural mode); the IDE graph dialog cannot do this. |
| `jetbrains.mps.lang.dataFlow.analyzers` + `CustomAnalyzerRunner` | DSL-defined analyzers, run by fully qualified name through `prepareProgram(..., new NamedAnalyzerId(fqName))`. BaseLanguage's nullability analysis is one. |

The modern entry point is
`languageRegistry.withAvailableExtensions(MPSProgramFactory.class, new MatchRequest(){}, pf -> pf.createProgram(node))`,
as the devkit actions below use it.
`DataFlow.buildProgram(node)` still works but goes through `new MPSProgramBuilder()`, which is
`@Deprecated(forRemoval = true, since = "2025.1")`. The refactorings below, `DataFlowUtil`, the
typesystem checks and the Kaja check all still use that path. So every verdict that ships today
comes from the deprecated builder, which has no modes. With no modes selected, the extension
factory produces the same program. That was checked live on 2026-10-22: there is exactly one
registered `MPSProgramFactory`, and `Program.toString()` was identical on all seven methods of
`DataFlowUtil` tried, which compile to 5–112 instructions (see "Console probe").

The two reaching analyses are production code, not test scaffolding:

- Extract Method (`languages/baseLanguage/baseLanguage.util/source_gen/jetbrains/mps/baseLanguage/util/plugin/refactorings/ExtractMethodRefactoringAnalyzer.java`)
  uses `ReachingDefinitionsAnalyzer` to compute input parameters: reads whose reaching writes lie
  outside the selection.
- Inline Variable (`InlineVariableRefactoring.optimizeAssignment`, `InlineVariableAssignmentRefactoring`)
  uses `ReachingReadsAnalyzer` to decide whether an assignment is still read after inlining.

Both refactorings first choose which node to build the program from, using
language-specific rules: the container method of the selection, or the enclosing
`StatementList` of the variable, or the method body. A program built from an inner node is
partial. Its jumps to an enclosing container are "outer jumps" (`Program.hasOuterJumps()`), and a
read whose write lies outside the node has no reaching definition.

### IDE actions (devkit plugin, shipped; `plugins/mps-devkit/languages/pluginSolutions/lang.dataFlow`)

Under the node popup's "Language Debug" submenu:

- **Show Data Flow Graph** (`ShowDFA_Action`) opens a Swing dialog with one box per instruction and
  arrows along `succ()`. Clicking a box opens the source node; the context menu offers "Go To Data
  Flow Rule". Picture only, no text export.
- **Print DFA**, **Print DFA Initialization Information**, **Print DFA Reaching Definitions
  Information** (`DataFlowInternal_ActionGroup`, a nested "Data Flow Internals" popup) write `program.toString(true)` or an
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

Callers outside BaseLanguage that run the same checks: closures (`check_ClosureLiteralDataFlow_NonTypesystemRule`),
`lang.test` test methods (`plugins/mps-testing/.../checkTestMethodDataflow_NonTypesystemRule`),
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
- The `mps-aspect-dataflow` skill's debugging advice amounts to: validate with `check_root_node_problems`,
  and inspect a known-good baseLanguage builder with `print_node deep: true` (`SKILL.md`, step 6). Its own routing table admits the hard case:
  "a builder that validates but analyses wrongly → only `references/rules-and-pitfalls.md`".
- `study/scenarios.md` lists `mps-aspect-dataflow` under "No scenario" (S1–S12 exist). No hotspot
  report, `observations.md` or `docs-defects.md` entry mentions dataflow, unreachable code or
  uninitialised variables. One archived defect touched the skill: D106 (`docs-defects-archive.md`,
  fixed 2026-10-08) replaced the obsolete smodel `Node_ConceptMethodCall` in its `json-patterns`
  pattern-3 and pattern-8. That is a blueprint defect found in S7, not an agent struggling with
  an analysis.

### The compile boundary

`jetbrains.mps.dataFlow.runtime` is an MPS solution with `compile="mps"`
(`languages/languageDesign/dataFlowRuntime/jetbrains.mps.dataFlow.runtime.msd`). MPS compiles it
into `classes_gen` and loads it through its per-module class loader. There is no IDEA module for
it: only the catch-all `tools/gensources/gensources.iml` lists its `source_gen`, and
`.idea/compiler.xml` excludes that directory from compilation. At runtime the classes come
from `languages/runtimes/jetbrains.mps.dataFlow.runtime.jar` (`build/mpsCore.xml`). `mcp-tools.iml`
does not depend on it, and no hand-written IDEA module imports `jetbrains.mps.lang.dataFlow.*`.
A toolset that writes `program.analyze(ReachingDefinitionsAnalyzer())` in Kotlin, as
`JetBrainsMPSTypesMcpToolset` calls `TypecheckingFacade` (which lives in the `typechecking` IDEA
module), does not compile today.

There are three ways around it:

- **A. Reflection through the module class loader.** mcp-tools already does this for
  MPS-compiled code. `JetBrainsMPSRunConfigurationMcpToolset.loadBaseLanguageClass` resolves
  `jetbrains.mps.baseLanguage` classes through `ClassLoaderManager.getClassLoader(module)`. That
  helper is private and hard-codes the module name, so it would have to be generalised.
  `JavaParseResolver.kt` also loads a module class by name. The console helpers in
  `common/AbstractNodeOps.kt` reach `ConsoleTool_Tool` reflectively, and failures are reported
  through `reflectionFailureDetail` (`common/AbstractOps.kt`). No build change is needed.
  - The entry point stays typed. `LanguageRegistry.withAvailableExtensions(Class<T>, MatchRequest,
    Consumer<T>)` is core API, so it can take the reflectively loaded `MPSProgramFactory` class.
    It runs the consumer under the registry read lock.
  - Only the members of `Program`, `Instruction` and its subclasses, the two analyzers and
    `AnalysisResult` need reflection, about fifteen in all. Signature drift becomes a runtime
    error that only the integration test catches.
  - Resolve `Class` and `Method` handles on every call. A class reload invalidates them, so do
    not cache them.
- **B. A typed bridge solution on the MPS side.** An MPS-compiled solution would depend on
  `jetbrains.mps.dataFlow.runtime` and implement a small Java interface that mcp-tools defines,
  returning `JsonObject` or a plain DTO. It would be registered through an extension point or a
  plugin component. The code is typed, but the solution needs packaging (`mps-distribution-build`
  skill, `plugins/mps-build/.../build.mps`). Every change would also cross the MPS/IDEA compile
  boundary in both directions: stale IDEA bytecode and stale java stubs.
- **C. A compile-time dependency from `mcp-tools.iml` on the runtime's classes.** It would
  compile, but it does not work at runtime. The mcp-tools plugin class loader does not see
  module jars under `languages/runtimes` (see the comment in
  `JetBrainsMPSRunConfigurationMcpToolset.kt` above `loadBaseLanguageClass`), so the likely
  result is a `NoClassDefFoundError`. Bundling a private copy fails too, and silently:
  `ModuleRuntime.extensionsFor` and `LanguageRuntime.getAspect` match classes by identity. So
  `withAvailableExtensions(MPSProgramFactory.class)` with the copy's class finds nothing, and
  languages' `DataFlowAspectDescriptor`s never match.

A fits the tool's small, stable API surface and follows existing precedent. B is worth its cost
only if the tool grows beyond the three operations below.

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
- **Cost**: a walk over `program.getInstructions()`. Each instruction becomes `{index, kind,
  variable?, value?, jumpTo?, source (node ref), rule}`, plus the `unreachable`,
  `uninitializedReads` and `unusedAssignments` index sets from the `Program` getters, and
  `hasOuterJumps`.
  - `rule` is `{rule, ruleReference, statement}`, the shape `query_types` already emits. Parse
    `Instruction.getRuleReference()` with `PersistenceFacade.getInstance().createNodeReference(...)`,
    then call the inherited `protected ruleJsonObject(statement: SNodeReference, root: SNode?)` in
    `common/AbstractOps.kt`. Nothing needs to move.
  - In that JSON, `ruleReference` is the builder root and `statement` is the emit statement.
    The runtime's `getRuleReference()` is the latter, so the skill page must say which is which.
  - `rule` is nullable. Labels, `code for` and the trailing `end` carry no rule reference.
  - On an outer jump, the jump target keeps its default of 0 (`AbstractJumpInstruction.myJumpTo`).
    `buildCaches` then adds a real edge to instruction 0, and the dump prints `jump 0`. Report
    `jumpTo: null, outer: true` instead. Reachability on such a program is distorted.
  - On a partial program (`hasOuterJumps`, or a node built without its enclosing body), the
    `uninitializedReads` and `unusedAssignments` sets are false positives for every outer
    variable. Report them with that warning, or omit them.
  - Cap the output. The shipped checks give up above 400 instructions
    (`DataFlowUtil.maxProgramSize`), and `query_types` has `maxRootNodes` and `maxInlineBytes`.
- **Deferred inputs**: drop these from the first cut.
  - A custom `analyzer` (fully qualified name). Running one needs `prepareProgram(program, node,
    NamedAnalyzerId)`, which inserts the analyzer's rule instructions into the program, and an
    analyzer class loaded from the defining language's module. Behind the compile boundary that
    is a second reflective path.
  - A builder `mode`. `IDataFlowModeId` values are concept-based (`ConceptDataFlowModeId`), and
    no input format for naming one has been designed.
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
  `getInstructionsFor(node)` returns the instructions of the node's whole subtree. Keep only those
  with `getSource() == node`, as `DataFlow.isInitializedRewritten` does.
- **Design decision still open: which program to build.** The queried node is a variable
  reference or an assignment, but the program has to cover the whole enclosing body, or writes
  before it are missing (see the refactorings above). There is no language-neutral "analysis
  root". Every shipped check builds from a body `StatementList`, not from the declaration. That
  matters: `ClosureLiteral_DataFlow` emits only reads of external variables and never builds the
  closure body, so a program built from a closure, or from its enclosing method, is empty
  inside the closure.
  - Proposal: an optional `programRoot` node reference.
  - When it is absent, default to the body of the nearest `IMethodLike` ancestor
    (`IMethodLike.getBody`, which covers methods, `ConceptFunction` and `ClosureLiteral`), or the
    `statementList` of a `StaticInitializer` or `InstanceInitializer`. Otherwise use the
    containing root.
  - That fallback yields an empty program for DSL roots without a builder (`MPSProgramBuilder`
    emits nothing for them, silently) and for typesystem rule bodies.
  - Echo the root actually used in the result. Warn when `hasOuterJumps` is true, when the
    program is only `end`, or when the queried node yields no instructions.

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

0. Measure before building. Add study scenario S13 (the next free id) for dataflow-builder
   authoring on a small DSL whose builder is deliberately wrong. Optionally add S14 for a
   def-use-sensitive edit in a BaseLanguage method with loops and try-finally. Follow "Adding a
   scenario for a changed skill/tool" in `.claude/skills/skill-optimization-study/references/scenarios.md`, and move
   `mps-aspect-dataflow` out of "No scenario". No study fixture has a dataflow aspect, so S13
   needs a new one (`study/fixtures/README.md`). `robot_Kaja`, whose check builds from
   `CommandList`, is the obvious source. Run both scenarios without the tool for a baseline. This
   step costs no server code and gives the tool its before/after numbers.
   A console prototype of `PRINT_PROGRAM` works (see "Console probe"), but it is not a
   practical stand-in for the tool in a study run.
   Status 2026-10-23: S13 (two injected bugs in `robot_Kaja`'s builders, fixture `kaja-dataflow`)
   and S14 (five def-use questions on one BaseLanguage method, fixture `flow-java`) are written,
   with pinned done criteria (`study/scenarios/S13`, `S14`). `families.py` counts
   `DF_builder_prints` and `DF_console_runs`. S14 is read-only questions rather than an edit.
   Baseline, round 40 (2026-10-23, opus at medium effort, one run each, no dataflow tool;
   evidence in `~/MPSProjects/mcp-study/runs-r40/`):
   - **S13 PASS**, 34 turns, 141 s, 31 tool calls. The worker fixed both bugs from the prompt
     and 9 builder prints, before it looked at a single checker message. Then it took the stock
     double report on `repeat` for a third bug and spent one more build cycle restructuring
     `Repeat_DataFlow` (2 MAKEs). That cycle, and some of the prints, are what `PRINT_PROGRAM`
     would save. The two injected bugs alone were not hard enough to need it.
   - **S14 PASS**, 30 turns, 148 s, 28 tool calls. The worker did not simulate. It wrote its own
     engine probe: it imported the runtime's models into the console with
     `mps_mcp_model_dependency` (`modelReference: "console"`) and ran typed Java. About 15 of its
     28 calls went into the probe, two of them reading the runtime's sources in the MPS checkout,
     found through `ps aux`. A worker on an installed MPS has no sources to read. That probe cost
     is what `REACHING_WRITES` / `REACHING_READS` would replace.
   - Neither worker misread its prompt; both prompts are frozen.
1. Settle the compile boundary (see "The compile boundary"). A, a reflective façade, is the
   default. Then add `mps_mcp_query_dataflow` with operations `PRINT_PROGRAM`, `REACHING_WRITES`
   and `REACHING_READS`, following `JetBrainsMPSTypesMcpToolset.kt`: an operation enum,
   `ParameterKeys` per operation, `withMpsProject`, and a Gson result through `finalizeResult`.
   Use a plain model read, not the EDT read: `query_types` needs the EDT only for
   `TypecheckingFacade`. Build programs through
   `LanguageRegistry.withAvailableExtensions(MPSProgramFactory.class, ...)` as the devkit actions
   do, not through the deprecated `MPSProgramBuilder()`.
   - **Builder failures are results, not internal errors**, because that is exactly the case
     operation 1 exists for.
   - What a broken builder throws:
     - an unresolved `label(node, "x")` throws a plain `RuntimeException("Can't find a label …")`
     - the insert-position variants (`emitIfJump(pos, insertPosition)`, `addInstruction`)
       evaluate their position eagerly and throw
     - there is also `"Cycle!"`, `"Unexpected end"`, `"incomplete try blocks"`, the `sanityCheck`
       error, and whatever the generated builder code itself throws
   - Only `before`/`after` jumps to a node outside the program are caught, as
     `framework.DataflowBuilderException`, and turned into outer jumps
     (`StructuralProgramBuilder.emitJump`). The other `jetbrains.mps.lang.dataFlow.DataflowBuilderException`
     is never thrown.
   - A language that was not rebuilt fails with `LinkageError`, `NoClassDefFoundError` or
     `AbstractMethodError`.
   - So: unwrap `InvocationTargetException`, then catch `Throwable` except cancellation and VM
     errors.
   - The builder concept can be named only from the stack trace: the first
     `<Concept>_DataFlow` frame.
   Wiring a new toolset touches:
   - `META-INF/plugin.xml` (`mcpServer.mcpToolset`)
   - an integration test class registered in `McpNodeToolsTestSuite` (unregistered tests never
     run in CI)
   - the toolset lists in `McpJsonOrTextWireShapeTest` and `SkillScriptsDriftTest`
   - a routing-drift unit test in the style of `SkillTypeQueryRoutingTest`, registered in
     `McpContractAndSkillsTestSuite`
   - in skill `mps-mcp-workflow`: `SKILL.md` (tool list and routing rule), `references/mcp-tools-index.md`,
     `references/analysis-tools.md` (inventory table), `references/analysis-tools/overview.md`, and
     `references/reference-formats/request-conventions.md`
   - `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO.md` (index and tool list), a numbered file under
     `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/`, and a row in its `COVERAGE_MATRIX.md`
   - `study/scripts/families.py` and `study/scripts/tests/test_families.py`: a dataflow tool family.
     Without one, the S13 before/after runs cannot count the tool's use.
   For fixtures, BaseLanguage methods exercise the reaching operations. A DSL builder fixture
   (a small language with a dataflow aspect, or `robot_Kaja`'s) exercises `rule`.
2. Give `mps-aspect-dataflow` a real debugging section pointing at `PRINT_PROGRAM`, replacing
   the "validates but analyses wrongly → only `rules-and-pitfalls.md`" route. Add a
   `references/analysis-tools/dataflow-queries.md` page under `mps-mcp-workflow` next to
   `type-queries.md`. Edit the blueprints in `resources/jetbrains/mps/agents/mcp/skills/` and
   copy each changed skill folder to `.agents/skills/` and `.claude/skills/`, which
   `SkillCatalogReplicationTest` enforces.
3. Re-run S13 (and S14) with the tool. Let turn and retry counts decide whether operation 3 is
   worth building.

## Console probe (2026-10-22, MPS 2026.1 build 261.25134)

This settles the former open question: can an agent build a program through the MPS Console
today? It can at run time, but not in a way an agent can use routinely.

- **Run time: yes.** Console code loads the runtime directly: `Class.forName("jetbrains.mps.lang.dataFlow.DataFlow")`
  returns a class from `MPS Module CL j.m.dataFlow.runtime`. A probe that resolved
  `DataFlowUtil.tooComplex` and called `DataFlow.buildProgram(node).toString(true)` printed:
  ```
  0: write program program
  1: nop (instance of StatementList)
  2: read program (instance of VariableReference)
  3: read maxProgramSize (instance of StaticFieldReference)
  4: ret (instance of ReturnStatement)
  5: end
  ```
  Building from the method declaration includes the parameter write (instruction 0).
  `showSource` prints each source as `(instance of <Concept>)`, not as a node reference, so the
  text dump alone cannot be mapped back to nodes. That is one more reason the tool should emit
  per-instruction node references.
- **Typed code: no on 2026-10-22, yes since `66403610196e`.** Through `mps_mcp_parse_java_and_insert`
  (`insert.mode: "console"`), every non-JDK class was unresolved, `org.jetbrains.mps.openapi.model.SNode`
  included, and `mps_mcp_model_dependency` refused to write to the console. The probe therefore
  had to reach every MPS class through JDK reflection. Since `66403610196e`,
  `mps_mcp_model_dependency` takes `modelReference: "console"`, and importing
  `jetbrains.mps.lang.dataFlow`, `….framework`, `….framework.analyzers` and
  `….framework.instructions` makes typed probe code resolve. The S14 baseline worker did exactly
  that (round 40).
- **Output: needs a workaround.** A trailing Java expression statement in a `BLCommand` prints
  nothing; printing needs the console's own `#print` constructs, which the Java parser cannot
  produce. The probe wrote its result to a temporary file instead.
- **Factory path: same program.** The same reflective route called
  `LanguageRegistry.withAvailableExtensions(MPSProgramFactory.class, <Proxy of the empty
  MatchRequest marker interface>, consumer)`. That confirms the façade in option A can stay small.
  `createProgram` gave the same text as the deprecated path on all seven methods tried.

Workers could copy this probe, but at about 40 lines of reflective Java per query it would
distort the S13 baseline rather than measure the tool. Keep the baseline tool-free.
