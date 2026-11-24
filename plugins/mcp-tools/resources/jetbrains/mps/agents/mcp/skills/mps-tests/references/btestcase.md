# `BTestCase` (Plain JUnit)

For testing hand-written runtime/library code, write a regular `ClassConcept` and **annotate it with `BTestCase`** (intention: *Make Test Case* on a class). Inside, methods marked `TestMethod` (or `BeforeTest`/`AfterTest`) compile to JUnit `@Test` / `@Before` / `@After` methods.

## Assertion concepts

All live in `jetbrains.mps.baseLanguage.unitTest.structure`:

- `AssertTrue`, `AssertFalse`
- `AssertEquals`, `AssertSame`
- `AssertIsNull`, `AssertIsNotNull`
- `AssertThrows`
- `Fail`, `Message`

## Examples

`testbench/testsolutions/collections_unittest/models/*.mps`.

These tests run as ordinary JUnit; they do **not** need a `@tests` model stereotype, but most projects keep them in one for consistency.

- **No live `SNode` / repository platform singletons.** `BTestCase` runs plain JUnit without bootstrapping MPS repository or `NodeIdentityComponent` singletons, so `new node<C>()` or live model manipulation throws `NullPointerException` — use `NodesTestCase` whenever a test creates or inspects `SNode`s.
- **Author assertions as `unitTest` nodes, not `org.junit.Assert.*` Java calls.** `mps_mcp_parse_java_and_insert` leaves bare or qualified `org.junit.Assert.assertTrue(...)` calls unresolved in `@tests` bodies unless JUnit stubs are manually imported; insert `AssertTrue` / `AssertFalse` / `AssertEquals` / `Fail` blueprints instead.

## Concept summary

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
