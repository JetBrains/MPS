# Splitting `McpToolsIntegrationTestSuite` into agent-sized sub-suites

Status: Proposal A implemented on 2026-10-08 (see "Implementation notes" at the end); Proposal B
was not pursued. Sections 1–6 are the proposal as reviewed.

## 1. What the suite is today

`plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/integration/McpToolsIntegrationTestSuite.java`
is a JUnit 4.13.2 `Suite` (via the deprecated `BaseMpsSuite`) that:

- builds one `IdeaEnvironment` in a static initializer and pushes it into every test class through
  `PushEnvironmentRunnerBuilder`; `@AfterClass tearDown()` disposes it;
- lists 40 test classes in `@Suite.SuiteClasses` — 28 `McpIntegrationTestBase` subclasses
  (`integration/`) and 12 plain JUnit classes (`unit/`);
- is the only thing TeamCity runs for mcp-tools: the run configuration
  `.idea/runConfigurations/McpToolsIntegrationTestSuite.xml` sits in the folder
  `Tests from IDEA Project`, which is the TC job of the same name. How TC selects configurations
  (folder or explicit list) is not visible in this repository; the safe rule is "new
  configurations stay out of that folder and keep distinct names".

Latest local run (2026-10-08, IDEA test history XML): 1207 tests, 1206 passed, 1 failed
(`SkillReferenceLayoutTest.every reference file fits the byte budget`, not investigated here).
Test time 844 s. On top of that the run log shows ~106 s from JVM start to the first test
(environment creation), plus the run configuration's before-launch Make / Ant cleanup /
11 artifact builds. Any sub-suite pays that floor; the saving is inside the 14 minutes of test
time.

Per-class test time, grouped as in the proposals below:

| Family (what an agent changed) | Classes | Tests | Time |
|---|---|---|---|
| MCP platform contract and shared `AbstractOps` plumbing | McpToolInputSchemasTest, McpToolParameterOptionalityTest, McpJsonOrTextWireShapeTest, McpCallLogTest, AbstractOpsMakeTest, AbstractOpsModalTimeoutTest, (unregistered today) MpsRuntimeVersionTest | 182 | ~59 s |
| skills catalog, scripts, installer | SkillScriptsDriftTest, SkillScriptsPackagingTest, SkillCatalogReplicationTest, SkillReferenceLayoutTest, SkillTypeQueryRoutingTest, MigrationXmlExampleTest, JetBrainsMPSInitMcpToolsetTest, JetBrainsMPSInitMcpToolsetIntegrationTest | 51 | ~10 s |
| workspace: project / module / model tools, cross-project resolution | JetBrainsMPSProjectMcpToolsetIntegrationTest, JetBrainsMPSModuleMcpToolsetIntegrationTest, JetBrainsMPSModelMcpToolsetIntegrationTest, ProjectResolutionCrossProjectTest, WriteToolCrossProjectTest, SearchRootNodeCrossProjectTest | 182 | ~171 s |
| IDE execution: run configurations, console | JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest, JetBrainsMPSConsoleMcpToolsetIntegrationTest | 52 | ~47 s |
| language definition: structure, concepts, editor, intentions | JetBrainsMPSLanguageStructureMcpToolsetIntegrationTest, JetBrainsMPSLanguageMcpToolsetIntegrationTest, JetBrainsMPSEditorMcpToolsetIntegrationTest, ScaffoldEditorStalenessTest, JetBrainsMPSIntentionsMcpToolsetIntegrationTest, IntentionsCandidateSelectionTest | 197 | ~168 s |
| nodes: node / root-node tools, blueprints, factories, assignability, problem checks, types, editor state | JetBrainsMPSNodeMcpToolsetIntegrationTest, JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest, JetBrainsMPSRootNodeMcpToolsetIntegrationTest, NodeFactoryOnBlueprintPathIntegrationTest, AssignabilityHintIntegrationTest, AbstractOpsPropertyProblemsTest, AbstractOpsAutoApplyQuickFixesTest, AssignableReferenceServiceTest, JetBrainsMPSTypesMcpToolsetIntegrationTest, EditorCaretSelectionSerializerTest | 475 | ~318 s |
| Java parsing (`parse_java_and_insert`) | JetBrainsMPSJavaMcpToolsetIntegrationTest, ConceptFunctionParameterBindingIntegrationTest | 70 | ~63 s |

Two placements that look odd by name but follow the evidence:

- `JetBrainsMPSTypesMcpToolsetIntegrationTest` tests `query_types`, a language-level tool, but
  it is the most-changed class in the last 45 test commits and its co-change partners are
  `Node*`/`NodeExtended*` (GET_TYPE, GET_EXPECTED_TYPE in `query_nodes`) and the
  `check_root_node_problems` provenance work. It goes with nodes.
- `EditorCaretSelectionSerializerTest` tests `AbstractNodeOps` serializers behind
  `get_current_editor_root_node`, a root-node tool. It goes with nodes, not with the IDE.

Housekeeping finding: `unit/MpsRuntimeVersionTest` is registered in no suite and never runs
in CI.

## 2. What agents actually need (evidence)

The last 45 commits touching `plugins/mcp-tools/test` show the natural units of work:

- a commit almost always changes one toolset plus its one test class;
- cross-family co-change is a minority but real: types ↔ node queries ↔
  `SkillTypeQueryRoutingTest`; Java parser ↔ `McpToolInputSchemasTest`; any tool rename or
  `@McpDescription` change ↔ `SkillScriptsDriftTest` / `McpToolInputSchemasTest`;
- shared code is hot: 27 of the last 60 `src` commits touch `common/` (`AbstractOps`,
  `AbstractNodeOps`, `JsonOrText`, `McpToolInputSchemas`), and `McpIntegrationTestBase.kt`
  changed in 6 of the 45 test commits. Those changes cut across every family.

Consequences for any split:

- the primary axis is the tool family, not "unit vs integration";
- class-level (and ideally method-level) selection matters more than the family grouping,
  because the common case is "one toolset, one test class";
- a change in `common/`, `McpIntegrationTestBase`, or the umbrella itself must run the
  umbrella;
- sub-suites run one at a time, machine-wide, like the umbrella: they compile into one output
  directory and share the test system directory across worktrees (study lesson 16). "Run two
  sub-suites" always means sequentially.
- sub-suites must be launched through a checked-in run configuration (or the umbrella's with a
  selector, below), never from the editor gutter: a gutter-generated configuration lacks
  `-Dmps.junit.project=.` and the other VM parameters, and individual `*IntegrationTest`
  classes have no environment outside a suite (`.agents/quality-gates.md:19-20`).

Both proposals keep `McpToolsIntegrationTestSuite` as the TeamCity entry point and avoid a
second registration list.

## 3. Proposal A — a suite of suites, selected per launch

### Shape

Five plain sub-suite classes next to the umbrella, each nothing but a `@Suite.SuiteClasses`
list, exactly like `jetbrains.mps.nodeEditor.EditorTestSuite`, which `CoreTestSuite` already
nests in the same TC folder today:

| Sub-suite | Families from the table | Tests | Test time |
|---|---|---|---|
| `McpContractAndSkillsTestSuite` | contract + skills | 233 | ~70 s |
| `McpWorkspaceToolsTestSuite` | workspace + IDE execution | 234 | ~218 s |
| `McpLanguageToolsTestSuite` | language definition | 197 | ~168 s |
| `McpNodeToolsTestSuite` | nodes (incl. types, editor state) | 475 | ~318 s |
| `McpJavaToolsTestSuite` | Java parsing | 70 | ~63 s |

Why five and not seven: skills (10 s) and contract (59 s) are each tiny next to the
2-minute-plus floor, and `AbstractOpsMakeTest` / `AbstractOpsModalTimeoutTest` test shared
plumbing, so they merge; run configurations and console (47 s) fold into workspace. Java stays
separate because it is a coherent tool with its own commit stream
(`ConceptFunctionParameterBindingIntegrationTest` changed alone three times).

The umbrella keeps its runner, static environment initializer and `@AfterClass` unchanged and
becomes the union:

```java
@RunWith(McpToolsIntegrationTestSuite.class)
@Suite.SuiteClasses({
    McpLanguageToolsTestSuite.class,
    McpJavaToolsTestSuite.class,
    McpWorkspaceToolsTestSuite.class,
    McpNodeToolsTestSuite.class,
    McpContractAndSkillsTestSuite.class,
})
public class McpToolsIntegrationTestSuite extends BaseMpsSuite { ... }
```

Every test class is listed exactly once, in one sub-suite. Why nesting needs no new runner
code: when the umbrella's `PushEnvironmentRunnerBuilder` meets a sub-suite class it goes
through `AnnotatedBuilder(this)`
(`testbench/source_gen/.../PushEnvironmentRunnerBuilder.java:61`), which instantiates the
sub-suite's `Suite` runner with `(Class, RunnerBuilder)` and passes the push builder down, so
the environment reaches every leaf. Sub-suites are *not* `BaseMpsSuite`s: that class toggles
the global `RuntimeFlags` test mode in `run()`, and a nested one would reset it to `NONE`
before the umbrella's teardown. The sub-suite order above keeps the current class order as far
as a partition allows; the TC run is still re-ordered, so the reordered umbrella must be run
locally once before the change is pushed (shared project, shared environment, warm caches).

### Selection: an `MCP_TESTS` environment variable on the umbrella

Rather than one run configuration per sub-suite, the umbrella's constructor applies a JUnit
`Filter` when `MCP_TESTS` is set:

```java
public McpToolsIntegrationTestSuite(Class<?> aClass, RunnerBuilder builder) throws InitializationError {
  super(aClass, new PushEnvironmentRunnerBuilder(ourEnvironment, builder));
  String selection = System.getenv("MCP_TESTS");
  if (selection != null && !selection.isBlank()) {
    try {
      filter(McpTestSelection.parse(selection, getDescription()));
    } catch (NoTestsRemainException e) {
      throw new InitializationError("MCP_TESTS='" + selection + "' selects no test");
    }
  }
}
```

`MCP_TESTS` is a comma-separated list of simple names: a sub-suite
(`McpNodeToolsTestSuite`), a test class (`JetBrainsMPSTypesMcpToolsetIntegrationTest`), or a
method (`JetBrainsMPSTypesMcpToolsetIntegrationTest#explainTypeNamesRules`). The filter expands
selected sub-suites through their `@SuiteClasses` into a set of test classes, accepts a
description whose test class is in that set (or whose method is named), and accepts a suite
description when any descendant is accepted; `ParentRunner.filter` in 4.13.2 drops children
that throw `NoTestsRemainException`, so the pruning cascades. An empty match is a loud
`InitializationError`, not a green run.

Agents use the existing run configuration with a per-launch override; IDEA's run tool applies
`envs` to that launch only and does not persist it:

```
execute_run_configuration(configurationName = "McpToolsIntegrationTestSuite",
                          envs = {"MCP_TESTS": "McpJavaToolsTestSuite,McpToolInputSchemasTest"})
```

What this buys over per-sub-suite run configurations:

- any combination runs in one JVM: one environment floor and one before-launch chain instead
  of one per sub-suite;
- class and method precision, which the evidence says is the common case ("one toolset, one
  test class" becomes a 1–2 minute test run plus the floor);
- no five copies of a run configuration whose ~60-entry `VM_PARAMETERS` and 11
  `BuildArtifacts` entries would drift on the next platform bump;
- TeamCity is untouched: the variable is unset there. An extra guard can ignore `MCP_TESTS`
  whenever `TEAMCITY_VERSION` is set.

Costs:

- a filtered run writes an IDEA test-history entry under the umbrella's name with fewer tests.
  The after-the-fact verdict lookup that reads those files (see the project memory) must check
  the test count or the selection the filter logs at start, otherwise a partial run can pass for
  a full one;
- humans in IDEA set the variable in the run configuration dialog or keep a private copy; the
  audience here is agents, so this is acceptable.

Optional add-on: checked-in run configurations for one or two of the sub-suites (outside the
`Tests from IDEA Project` folder) if clickable entries for humans turn out to matter. They are
not needed for the agent workflow.

### Guards and docs

- A guard test (plain JUnit, in the contract sub-suite): every class under
  `plugins/mcp-tools/test` that declares a `@Test` method is reachable from the umbrella
  through `@SuiteClasses` **exactly once**. "Once" catches the duplicate-registration risk (a
  class listed in two sub-suites runs twice on TC); detection by `@Test` rather than by the
  `*Test` name keeps helpers like `SkillCatalogCheckout.kt` out. It fails today on
  `MpsRuntimeVersionTest`.
- `.agents/quality-gates.md:20` gets the table "changed area → selection":

  | Changed | Run |
  |---|---|
  | one toolset class | its test class (`MCP_TESTS=<TestClass>`), then its sub-suite |
  | `common/`, `McpIntegrationTestBase`, the umbrella, `testbench` | umbrella |
  | a tool name, parameter, or `@McpDescription` | the toolset's sub-suite + `McpContractAndSkillsTestSuite` |
  | skills catalog, scripts, docs | `McpContractAndSkillsTestSuite` |
  | types / `query_nodes` GET_TYPE | `McpNodeToolsTestSuite` + `SkillTypeQueryRoutingTest` |

- `skill-optimization-study/SKILL.md:191` and lessons 15–16 (both the `.agents` and `.claude`
  copies) are the only skill documents that name the suite; they are updated to "register in
  the matching sub-suite, select with `MCP_TESTS`". No `mps-*` skill mentions the suite, and
  the shipped `mps-tests` blueprint is about MPS `@tests` models and must not carry this
  repository-specific table.

### Trade-offs

- (+) Zero duplication; a test has one home; the umbrella is still the union and still what TC
  runs; no new runner code, no change to environment lifetime or test mode.
- (+) The umbrella file stops changing when tests are added, which removes most of the
  contention study lesson 15 legislates around (two implementers in the *same* family still
  share one sub-suite file; lesson 15 also covers reference files, so it stays, narrowed).
- (+) Selection is finer than any static split can be.
- (−) Strict partition: a test that belongs to two families sits in one; `MCP_TESTS` lists
  both when needed.
- (−) IDEA/TC test trees gain one suite level (cosmetic; TC identifies tests by
  `FQCN: method`, unchanged, and the `CoreTestSuite` → `EditorTestSuite` nesting is the
  precedent).
- (−) The test-history caveat above.

## 4. Proposal B — tagged views over the unchanged umbrella

### Shape

The umbrella keeps its flat list and runner; the only change is one added guard class. Each
test class gets one or more JUnit category markers:

```kotlin
@Category(McpNodeTools::class, McpBlueprints::class)
class NodeFactoryOnBlueprintPathIntegrationTest : McpIntegrationTestBase() { ... }
```

Sub-suites are *views* — a `Categories` runner pointed at the umbrella:

```java
@RunWith(Categories.class)
@Categories.IncludeCategory(McpNodeTools.class)
@Suite.SuiteClasses(McpToolsIntegrationTestSuite.class)
public class McpNodeToolsView { }
```

Verified against the 4.13.2 bytecode: `Categories(Class, RunnerBuilder)` builds the umbrella
runner through the default builder (its static initializer creates the environment exactly as
today), then applies a `CategoryFilter`; the filter recurses into suite children and merges a
method description's categories with its class's, so one class-level `@Category` on a Kotlin
class is enough. A view that matches nothing fails construction with `InitializationError`
after creating the environment, which then leaks until JVM exit — harmless. IDEA's own
"Category" test kind is *not* a substitute: it runs the classes outside the umbrella, without
an environment.

### Taxonomy

The same five primary categories as the five sub-suites in Proposal A
(`McpContractAndSkills`, `McpWorkspaceTools`, `McpLanguageTools`, `McpNodeTools`,
`McpJavaTools`), plus cross-cutting tags that a class may carry in addition, added only where an
agent need is proven: `McpBlueprints` (every JSON-blueprint consumer across node, root-node,
structure and Java tests), `McpCrossProject`, `McpTypes` (`Types*Test`, the
GET_TYPE/GET_EXPECTED_TYPE parts, `SkillTypeQueryRoutingTest`). Tags can later move to method
level (`@Category` on a `@Test`) for mixed classes such as `NodeExtended`.

### Run configurations, guards and docs

- One `.idea/runConfigurations/<View>.xml` per view, outside the `Tests from IDEA Project`
  folder, copied from the umbrella's (same drift cost as noted above). `MCP_TESTS`-style
  selection could be added to B as well, but then the categories add little.
- Guards: every class in the umbrella's `@SuiteClasses` carries at least one primary
  `@Category`; plus the same reachability-exactly-once guard as in A.
- Same quality-gates table and study-skill edits as in A.

### Trade-offs

- (+) The TC-run class and runner are untouched; no environment or filter code.
- (+) Overlapping membership is natural; views are re-cut by editing annotations.
- (−) Registering a test is two steps: list it in the umbrella *and* tag it. The guard turns a
  forgotten tag into a failure rather than a silent omission, but it is still the double
  bookkeeping the user wants to avoid.
- (−) Every view constructs the whole umbrella runner before filtering, so the environment
  floor is identical to A; and a no-environment "fast unit view" is impossible under B — it
  would need a separate plain suite, i.e. a second registration list.
- (−) Umbrella-file contention in parallel work remains.
- (−) Each test file depends on `org.junit.experimental.categories` (already on the classpath).

## 5. Shared recommendations regardless of choice

1. Add the reachability-exactly-once guard first; it is independent of the split and fixes a
   real gap (`MpsRuntimeVersionTest`).
2. Keep any new run configuration out of the `Tests from IDEA Project` folder.
3. Document the selection table in `.agents/quality-gates.md` and in the
   `skill-optimization-study` skill only; agents discover sub-suites through those documents.
4. Optional follow-up under Proposal A only: the 12 `unit/` classes import no application or
   environment class (two bootstrap `PersistenceRegistry` themselves), so a plain
   no-environment `McpUnitTestSuite` nested in the umbrella might run in seconds. Its value is
   limited: the 12 classes take 3.3 s inside the umbrella, and the most-changed cheap gate,
   `SkillScriptsDriftTest`, is an `McpIntegrationTestBase` subclass that needs the environment
   anyway. Unverified; needs one run.

## 6. Recommendation

Proposal A: five plain `@RunWith(Suite.class)` sub-suites nested in the unchanged umbrella
runner, following the `CoreTestSuite` / `EditorTestSuite` precedent, selected per launch with
`MCP_TESTS` (sub-suite, class or `Class#method`) passed through `execute_run_configuration`'s
`envs`. No extra run configurations, no runner changes, one registration per test, a guard
that every test is reachable exactly once, and a quality-gates table that sends shared-code
changes to the umbrella. Proposal B is the fallback if overlapping membership or method-level
tags become a need; categories work inside nested suites, so B can be layered on A later.

## 7. Implementation notes (2026-10-08)

Created, all under `plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/`:

- `integration/McpLanguageToolsTestSuite.java`, `McpJavaToolsTestSuite.java`,
  `McpWorkspaceToolsTestSuite.java`, `McpNodeToolsTestSuite.java`,
  `McpContractAndSkillsTestSuite.java`: plain `@RunWith(Suite.class)` lists with the membership of
  the section 3 table;
- `integration/McpTestSelection.java`: the `MCP_TESTS` `Filter`;
- `unit/McpTestSelectionTest.kt`: the selector against a synthetic suite tree;
- `unit/SuiteRegistrationGuardTest.kt`: the reachable-exactly-once guard plus "every listed
  non-suite class declares a `@Test`".

Changed: `integration/McpToolsIntegrationTestSuite.java` (lists the five sub-suites, applies
`MCP_TESTS`, Javadoc), `.agents/quality-gates.md` (selection rules and table),
`skill-optimization-study/SKILL.md` and `references/lessons.md` in both `.agents/skills` and
`.claude/skills`.

Beyond or different from the sketch:

- Within each sub-suite the classes keep their order from the old umbrella list. The contract
  sub-suite ends with `MpsRuntimeVersionTest` (now registered), `McpTestSelectionTest` and
  `SuiteRegistrationGuardTest`.
- Names resolve against the umbrella's `@Suite.SuiteClasses` tree, not against
  `getDescription()`. Besides an unknown name, a `Class#method` whose class has no public method of
  that name and an ambiguous simple name are rejected with `InitializationError` too, so a typo in
  a multi-entry selection cannot silently shrink the run. Entries split on commas only, so a method
  name containing a comma cannot be selected.
- The umbrella prints one line in every case: the applied selection, "MCP_TESTS not set", or
  "ignored on TeamCity" when `TEAMCITY_VERSION` is set.
- The environment is still created by the static initializer, which runs before the constructor
  parses the selection; a bad selection therefore fails after environment startup. The
  `JUnitStarter` JVM still terminates (exit code 255, one `initializationError` test) without the
  `@AfterClass` teardown; a warm start takes seconds.
- `.agents/quality-gates.md` no longer mentions the `McpToolsIntegrationTestSuite (1)` copy.
- Review follow-up: the guard detects `@Test` through `Class.getMethods()` (inherited tests count),
  and a third guard test asserts that the umbrella lists only sub-suites.

Verified locally on 2026-10-08: `MCP_TESTS=McpContractAndSkillsTestSuite` ran 244 tests, all
passed; a class plus `Class#method` selection ran exactly those 10 tests; `MCP_TESTS=NoSuchSuite`
failed initialization with the list of sub-suites; the full umbrella ran 1220 tests (1207 before,
plus 2 in `MpsRuntimeVersionTest` and 11 new), all passed, test time 827 s.
