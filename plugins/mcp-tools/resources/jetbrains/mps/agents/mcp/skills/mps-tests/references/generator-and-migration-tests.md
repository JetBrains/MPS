# Generator and Migration Tests

## Generator tests

Generator output is tested with a `GeneratorTest` root of `jetbrains.mps.lang.test.generator`, not with
a `NodesTestCase`: see `references/generator-test.md`.

`assertNodesMatch` (`AssertMatch`) in a `NodesTestCase` compares two nodes the test already has. Use it
for a generator *utility* called directly, e.g. `QuotationConverterTest` in
`testbench/testsolutions/quotation.test/models/generationTest@tests.mps` (MPS source repository)
compares `QuotationConverter.convert(input)` with an expected snippet. It does not run a generation.

## `MigrationTestCase`

Root node has four children:

| Role | Type | Cardinality | Meaning |
|---|---|---|---|
| `inputNodes` | `TestNode` | 0..n | Roots before migration |
| `outputNodes` | `TestNode` | 0..n | Expected roots after migration |
| `migration` | `MigrationReference` | 1..n | The migration script(s) to run, in order |
| `option` | `MigrationTestOption` | 0..n | Switches like `including node id` (use `StableIdOption`) |

### Execution flow performed by the test runner

1. Copy `inputNodes` into a fresh module.
2. Run the listed `migration` scripts.
3. Compare resulting roots to `outputNodes`. By default node ids are ignored unless `StableIdOption` (`including node id`) is set.
4. Call each migration's `check()`; the test fails if `check()` reports problems.

A handy editor intention — **"Generate Output from Input"** — runs the listed migrations once and pastes the result into `outputNodes` so you can author the expected tree quickly. Re-run it after migration changes only after you've verified the diff is correct.

> The intention bakes in *current* behaviour. If the migration script is wrong, the test will encode that. Diff the resulting `outputNodes` carefully before accepting.

### Examples

- `testbench/testsolutions/bl.test/jetbrains/jetbrains.mps.migrationTest@tests.mps` — `MigrateTryStatement_Test`.
- `testbench/testsolutions/quotation.test/models/jetbrains.mps.lang.quotation.test.migrationTest@tests.mps`.
- `testbench/testsolutions/jetbrains.mps.tests.sraMigration/`.
