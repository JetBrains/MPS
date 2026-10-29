# Test Type Cheat Sheet

| Concept | Concept ref | What it tests |
|---|---|---|
| `NodesTestCase` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1216913645126` | Typesystem, constraints, scope, dataflow, ad-hoc checks on AST nodes |
| `EditorTestCase` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1229187653856` | Editor behaviour: intentions, actions, side transforms, keystrokes, caret/selection |
| `MigrationTestCase` | `c:8585453e-6bfb-4d80-98de-b16074f1d86c/5476670926298696679` | Migration scripts: input → output equivalence + clean `check()` |
| `BTestCase` | `c:f61473f9-130f-42f6-b98d-6c438812c2f6/...` | Plain JUnit-style test class with `@Test` methods, assertions, setup |
| `GeneratorTest` (`jetbrains.mps.lang.test.generator`) | `c:68015e26-cc4d-49db-8715-b643faea1769/554465258093187774` | Generator output: generates an input model and matches the result against an expected model (`references/generator-test.md`) |

`NodesTestCase` is the workhorse. `EditorTestCase` is for UI interactions. `BTestCase` is for runtime/library code. Generator and migration tests get dedicated concepts. `assertNodesMatch` in a `NodesTestCase` compares two nodes you already have (e.g. a generator utility's result), it does not run a generation.
