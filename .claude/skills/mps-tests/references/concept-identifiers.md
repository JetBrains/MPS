# Quick Reference: Concept Identifiers

## `jetbrains.mps.lang.test`

| Concept | Concept Ref | Notes |
|---|---|---|
| `NodesTestCase` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1216913645126` | |
| `NodesTestMethod` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1216913689992` | |
| `EditorTestCase` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1229187653856` | |
| `MigrationTestCase` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/5476670926298696679` | |
| `MigrationReference` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/6626913010124185481` | |
| `MigrationTestOption` (abstract) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/6109541130559846558` | |
| `StableIdOption` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/6410786926916602977` | |
| `TestNode` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1216989428737` | |
| `TestNodeAnnotation` (label decl) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1210673684636` | |
| `TestNodeReference` (label use) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1210674524691` | |
| `AnonymousCellAnnotation` (caret marker) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1229194968594` | |
| `NodeErrorCheckOperation` (`has error/warning/info`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1215507671101` | |
| `NodeTypeCheckOperation` (`has type / has expected type`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1215526290564` | |
| `NodeTypeSystemErrorCheckOperation` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/428590876651279930` | |
| `CheckNodeForErrorMessagesOperation` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1215607067978` | |
| `AssertMatch` (assertNodesMatch) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1211979288880` | |
| `SimpleNodeTest` (concrete subconcept of `NodesTestMethod`; the test-method body inside a `NodesTestCase.testMethods`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1225978065297` | |
| `ScopesTest` (declarative scope assertion on a node holding a reference) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/511191073233700873` | |
| `ScopesExpectedNode` (one expected member in a `ScopesTest.nodes`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/3655334166513314291` | |
| `ScopeEntry` (named scope partition; used by `MockScopeProvider` and similar) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/2153278993333648098` | |
| `TypeKeyStatement` (`type "..."`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1227182079811` | |
| `PressKeyStatement` (`press ...`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1228934484974` | |
| `InvokeActionStatement` (`invoke action ...`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/7011073693661765739` | |
| `MPSActionReference` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/4239542196496927193` | |
| `InvokeIntentionStatement` (`invoke intention ...`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1225989773458` | |
| `ApplyQuickFix` (`invoke quick-fix ...`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/5266358701722203952` | |
| `IsIntentionApplicableExpression` (`is intention ... applicable`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/592868908271422361` | check if an intention is applicable; generates `isIntentionApplicable(String id, SNode)` returning `boolean` |
| `EditorComponentExpression` (`editor component`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/5773579205429866751` | active editor component; generates `getEditorComponent()` returning `EditorComponent` with `getEditorContext()`, `getSelectedNode()`, `getEditedNode()`, etc. |
| `ProjectExpression` (`project`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1225467090849` | the test project; generates `getProject()` returning `Project` with `getModelAccess()`, `getRepository()`, etc. |
| `ModelExpression` (`model`) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1225469856668` | the model of the edited node; resolves to `SModel` for querying model-level properties |
| `IRuleReference` (interface) | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/7691029917083872157` | |
| `TypesystemEquationReference` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/4649457259824807647` | |
| `ReportErrorStatementReference` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/4531408400484511853` | |
| `LogEvent` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/5219531754069546544` | |

Language id: `jetbrains.mps.lang.test` → `8585453e-6bfb-4d80-98de-b16074f1d86c`.

## `jetbrains.mps.baseLanguage.unitTest`

| Concept | Purpose |
|---|---|
| `BTestCase` | Annotation that turns a `ClassConcept` into a JUnit test class |
| `TestMethod` | `@Test`-equivalent method |
| `BeforeTest` | `@Before` setup |
| `AssertTrue` / `AssertFalse` | Boolean assertions |
| `AssertEquals` / `AssertSame` | Equality assertions (with optional `Message`) |
| `AssertIsNull` / `AssertIsNotNull` | Nullability assertions |
| `AssertThrows` | Expected-exception block |
| `Fail` | Unconditional failure |

Language id: `jetbrains.mps.baseLanguage.unitTest` → `f61473f9-130f-42f6-b98d-6c438812c2f6`.
