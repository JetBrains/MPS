---
name: mps-tests
description: Use when writing or modifying tests inside MPS `@tests` models — `NodesTestCase` (typesystem, constraints, scopes, dataflow, generator output), `EditorTestCase` (intentions, actions, keystrokes, side-transforms, completion), `MigrationTestCase` (migration scripts), `BTestCase` (plain JUnit on hand-written Java/Kotlin runtime), inline annotations such as `has error` / `has type` / `ScopesTest`, label-based `node<label>` cross-references, caret markers, and running tests via MCP / in MPS. Reach for this skill whenever the task involves authoring or fixing tests in a `tests`-stereotype model, or interpreting failures from one.
type: reference
---

# Writing Tests in MPS Models

MPS ships a dedicated **test language** — `jetbrains.mps.lang.test` — for testing language artefacts (typesystem, scopes, constraints, dataflow, editor, generator, migrations). Plain JUnit-style tests against runtime classes use `jetbrains.mps.baseLanguage.unitTest` (the `BTestCase` concept).

A test is a **root node** living in a model whose **stereotype is `tests`** (pass `modelName: "<name>@tests"` to `mps_mcp_create_model`; the on-disk file ends in `@tests.mps`). See [aspect-model-stereotypes.md](../mps-mcp-workflow/references/aspect-model-stereotypes.md) for all model identifiers. The test model lives in a Solution module carrying the **`tests` facet**, not in the language module itself, so it can depend on the language under test plus arbitrary runtime libraries.

This skill is the reference for *what to put in a test model* and *what each test type means*. For the mechanics of creating/modifying nodes via MCP, see `mps-model-manipulation` and the `mps_mcp_*` tool docs. Documentation: <https://www.jetbrains.com/help/mps/testing-languages.html>. Source: `plugins/mps-testing/languages/lang.test/`.

## Critical Directives

- The test model **must** carry stereotype `tests` (file name `…@tests.mps`). Without it, roots compile but are not discovered as JUnit tests.
- Used languages on a test model: `jetbrains.mps.lang.test`, `jetbrains.mps.baseLanguage.unitTest`, the language(s) under test, plus `jetbrains.mps.baseLanguage`, `jetbrains.mps.baseLanguage.collections`, `jetbrains.mps.lang.smodel`, `jetbrains.mps.lang.text` as needed by assertion code.
- The containing Solution must carry the **`tests` facet**. Languages and Generators don't compile the test classes, so the test root must live in this dedicated Solution. Create it via `mps_mcp_create_module(type="solution", …, facets="[\"tests\"]")`; the response is self-describing — `{"data":{"kind":"Solution","facets":["java","tests"],"loadExtensions":"NotAvailable",…}}` confirms the kind without a follow-up call. For an existing Solution, attach the facet via `mps_mcp_update_module_facet(facetType="tests", enabled=true)` and verify with `mps_mcp_get_project_structure(startingPoint="…")` (its `facets` array will include `"tests"`).
- The `testMethods` role declares `NodesTestMethod`, which is **abstract** — instantiate `SimpleNodeTest` (`c:8585453e-6bfb-4d80-98de-b16074f1d86c/1225978065297`). Inserting raw `NodesTestMethod` fails with `"Abstract concept instance detected"`.
- Inside snippets, `TestNodeAnnotation` labels are **only** resolvable via `TestNodeReference` from test-method bodies. For *in-snippet* references (e.g. setting `RoutineCall.routine`) use the target node's own `name` property (resolved through the language's scope) or a persistent `r:` node ref, never the label name.
- Prefer `invoke action <ActionId>` over raw `press <chord>` for Enter/Tab/etc. in `EditorTestCase` — `PressKeyStatement` may bypass the named-action dispatcher used by the production editor. Editor actions live in `r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)`.
- For an empty list role, target `empty_<role>` for the caret — *not* `refNodeList_<role>` (the latter is the populated wrapper cell).
- Never edit `test_gen/` or `classes_gen/` — those are regenerated.

## Common-Path Workflow

When asked to "write tests" for an MPS language feature:

1. **Decide the test type.** Typesystem / scope / constraint → `NodesTestCase`. Intention / action / keystroke → `EditorTestCase`. Migration → `MigrationTestCase`. Runtime helper → `BTestCase`. Generator output equivalence → `NodesTestCase` + `assertNodesMatch`. See `references/test-types.md`.
2. **Find or create the test model.** Prefer extending an existing `@tests` model in the language's adjacent test Solution; only create a new one if no suitable Solution exists.
3. **Add the test root** with `mps_mcp_create_root_node` using the concept ref from `references/concept-identifiers.md`, then populate `nodes` / `code` / etc. with `mps_mcp_update_node`. Use `mps_mcp_parse_java_and_insert` to drop a Java/BaseLanguage snippet into a `TestNode`.
4. **Mark assertions** using the appropriate annotation concept (see `references/nodes-test-case.md` and `references/editor-test-case.md`). For prototypes, open the model in MPS and use the Alt+Enter intentions ("Add Node Operations Test Annotation", "Add Test Node Label", "Mark Caret Position") — they create the right annotations without hand-building blueprints.
5. **Validate** with `mps_mcp_check_root_node_problems` on the new root.
6. **Run.** Register a `JUnit Tests` config via `mps_mcp_create_run_configuration` (pass the test root's reference) and launch it with `execute_run_configuration`, or ask the user to run it in MPS.

## Where Test Models Live

| Where | When |
|---|---|
| **Test aspect** of the language (`testAspect` model under `<lang>/`) | Quick, language-local checks; cannot run in a fresh MPS instance from outside the language. |
| **Dedicated test Solution** with `@tests` model | Recommended for anything serious. Runs out-of-process; can be wired into the build/CI. |

If the only goal is plain JUnit on hand-written Java/Kotlin (no MPS-specific assertions), prefer a regular module test source root rather than a `@tests` model — see `mps-distribution-build` for how `BTestCase`-based MPS test modules are packaged.

## Related Skills

- `mps-model-manipulation` — the smodel / closures / collections reference for assertion bodies.
- `mps-node-editing` — MCP recipes for inserting children and harvesting persistent refs (used heavily by the `ScopesTest` staged-construction recipe).
- `mps-aspect-typesystem` — when the system-under-test is the typesystem; `has error/type` annotations here verify those rules.
- `mps-aspect-constraints` — when validating `can-be` / scope / validator rules from the constraints aspect.
- `mps-aspect-migrations` — for migration scripts being exercised by `MigrationTestCase`.
- `mps-aspect-intentions` and `mps-aspect-editor-menus-and-keymaps` — when an `EditorTestCase` exercises intentions, side transforms, or keymapped actions.
- `mps-build-language` and `mps-distribution-build` — when wiring a `@tests` Solution into the build pipeline (test-only `BuildProject`).
- `mps-quotations` — for tests that use quotation snippets.

## Reference Index

- Open `references/test-model-setup.md` when bootstrapping a new `@tests` model — required stereotype, used languages, Solution kind, optional `TestInfo` root, and the choice between the language's `testAspect` and a dedicated test Solution. Includes the canonical example test Solutions in this repo.
- Open `references/test-types.md` for the test-type cheat sheet (concept refs and what each tests). Use to decide which root concept to instantiate.
- Open `references/nodes-test-case.md` when authoring or modifying a `NodesTestCase` — section layout (`nodes`, `test methods`, `utility methods`, `accessMode`), inline assertion annotations (`has error`, `has type`, `has typesystem error`, `has expected type`, `has type in`), labelled-node assertions inside test methods, and the namespace separation between labels and scope-resolved references.
- Open `references/scopes-test.md` when writing **declarative** scope assertions (`ScopesTest` + `ScopesExpectedNode`) — where to attach the annotation, the exact-set semantics, the JSON blueprint, the stage-construction recipe for resolving expected refs, and why declarative scope tests beat imperative ones.
- Open `references/editor-test-case.md` when writing an `EditorTestCase` — root layout (`before` / `result` / `code`), the `AnonymousCellAnnotation` caret marker, the cell-ID convention for auto-generated editors (`property_<name>`, `refNodeList_<role>`, `empty_<role>`, `refNode_<role>`, constant/collection cells), the editor-driving statements (`type "..."`, `press`, `invoke action`, `invoke intention`, `invoke quick-fix`), and the side-transform / completion testing pattern.
- Open `references/generator-and-migration-tests.md` when validating generator output (`NodesTestCase` + `assertNodesMatch`) or testing a migration script (`MigrationTestCase` — `inputNodes`, `outputNodes`, `migration` refs, `option`s including `StableIdOption`). Lists the four-child structure of `MigrationTestCase` and the "Generate Output from Input" intention.
- Open `references/btestcase.md` when writing plain JUnit-style tests against hand-written Java/Kotlin — the `BTestCase` annotation, `TestMethod` / `BeforeTest` / `AfterTest`, and the available assertion concepts.
- Open `references/running-tests.md` when launching tests — inside MPS (right-click → Run tests), from the command line via the Ant pipeline, or from an agent via `mps_mcp_create_run_configuration` + `execute_run_configuration`. Covers in-process vs separate-MPS-instance, and `mps_mcp_check_root_node_problems` as a fast pre-run gate.
- Open `references/common-failures.md` when a test won't run, runs but doesn't fail when expected, fails for the wrong reason, or generates a misleading `outputNodes`. Includes the abstract-concept gotcha, label-vs-name confusion, `press VK_ENTER` vs `invoke action Insert`, `replace_node_child` ref invalidation, and `ScopesExpectedNode.ref` not being scope-resolved.
- Open `references/concept-identifiers.md` for the validated FQN+concept-ref table covering `jetbrains.mps.lang.test` (every concept used by the skill — `NodesTestCase`, `SimpleNodeTest`, `TestNode`, `TestNodeAnnotation`, `AnonymousCellAnnotation`, the annotation/check operations, the editor-driving statements, `ScopesTest`/`ScopesExpectedNode`, etc.) and `jetbrains.mps.baseLanguage.unitTest`.
