# Generator tests (`GeneratorTest`)

A generator test runs the generator on an **input model** and compares the result with an
**expected model**, node by node. It is a `GeneratorTest` root of
`jetbrains.mps.lang.test.generator` in a `@tests` model, not a `NodesTestCase`: there is no
`GeneratorTestCase` in `jetbrains.mps.lang.test`, and `assertNodesMatch` in a `NodesTestCase` is for
comparing two snippets you already have (e.g. the result of a generator utility), not for running a
generation.

One file per section, each self-contained. Read only the files for your job, and when you need more
than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| Where the input, expected and plan models live, the test Solution, "Do not generate" on the data models, used languages and imports | `references/generator-test/layout.md` |
| The `GeneratorTest` root: concepts, the whole-root JSON blueprint, `ModelPointer`, argument references, adding assertions and options to an existing root, one JUnit method per assertion | `references/generator-test/blueprints.md` |
| What the compared output is (the last step model of the plan), writing the expected model from the spec or capturing it from the transient output, root order, reference identity | `references/generator-test/expected-output.md` |
| Match options (`ModelMatchOptions`) and their defaults, ignoring root order, an explicit generation plan (`@genplan`), several output models | `references/generator-test/matching-and-plans.md` |
| Running (run configuration, make before launch), reading a mismatch, the "skipped, not failed" trap, proving a test is not vacuous, symptom → fix table | `references/generator-test/running-and-failures.md` |

Official documentation: the "Generator tests" section of
<https://www.jetbrains.com/help/mps/testing-languages.html>. MPS's own examples live
in its source repository (not in a distribution): `jetbrains.mps.test.smodel@tests` (`BasicTest1`,
`IgnoreNodeOrderTest`) and `jetbrains.mps.generator.tests.fork@tests` (`GenPlanForkTest`) under
`testbench/testsolutions/`. Everything they show is in the files above.
