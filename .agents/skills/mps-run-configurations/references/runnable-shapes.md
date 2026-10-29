# Runnable Shapes — What `mps_mcp_create_run_configuration` Accepts

The tool dispatches to one of **three** producer paths, matching the three `ProducerPart_*` entries the MPS `Java_Producer` and `JUnitTests_Producer` register, plus a fourth for test roots only MPS test discovery knows:

| Source node | Run config type created | Default name | Typical examples |
|---|---|---|---|
| Concept implements `jetbrains.mps.execution.util.structure.IMainClass` | **Java Application** | `Node <name>` | DSL roots with a `main`-equivalent — Kaja `Script`, `samples.shapes.Canvas` |
| `jetbrains.mps.baseLanguage.structure.ClassConcept` with a `static main(<String[]-subtype>)` method | **Java Application** | `Class <name>` | Plain BaseLanguage classes — the same target as MPS Project View → right-click → Run |
| Concept implements `jetbrains.mps.baseLanguage.unitTest.structure.ITestCase` | **JUnit Tests** | `<testCaseName>` | `lang.test` `NodesTestCase` / `EditorTestCase` / `MigrationTestCase` / `BTestCase`, and BaseLanguage `unitTest.TestCase` |
| Any other root MPS test discovery recognizes and that holds at least one test | **JUnit Tests** (a one-root NODE snapshot, `compileInMPS=true` required) | `<rootName>` | `jetbrains.mps.lang.test.generator` `GeneratorTest` (one test per assertion; one without assertions is refused with `Test '<name>' has no tests …`), a JUnit3/4 BaseLanguage test class without `main` |

## ClassConcept `main` predicate

The ClassConcept path checks `ClassConcept.getMainMethod() != null`, which expands to `StaticMethodDeclaration.isMainMethod`: name equals `main`, exactly one parameter, parameter type is a typesystem strong-subtype of `String[]`. Both `String[] args` and BaseLanguage `string[] args` qualify. **Visibility is not checked** (a package-private or protected `main` qualifies just as a public one does), and the return type is not explicitly checked either (`static int main(String[])` would qualify — the launcher ignores the return value). This intentionally matches the standard producer; do not file bugs against the tool for accepting these shapes.

## ITestCase `canRunInProcess` flag

When the test case's `canRunInProcess` behavior returns `false` (e.g. tests that need a separate JVM), the registered configuration is created with the in-process flag **cleared**, mirroring the standard `JUnitTests_Producer.ProducerPart_NlistITestCase`. Tests whose `canRunInProcess` returns `true` (the default) keep the in-process flag at its factory default. The MCP tool replicates this transparently; the caller cannot override it.

## `compileInMPS` gate (Java Application paths only)

Both Java Application paths additionally require the owning module's descriptor to report `compileInMPS=true`. The IDE producers skip JPS-compiled modules because their `classes_gen` is empty at launch; this tool refuses for the same reason. When that gate fires, the error reads:

```
Module '<moduleName>' (owner of node '<nodeName>') has compileInMPS=false; the standard MPS Java producer skips such modules because their classes_gen is empty at launch. Either flip the module's JavaModuleFacet compile setting to MPS, or launch via the JPS-built classpath using the IDEA MCP execute_run_configuration tool on the generated .java file.
```

## Refusal: no shape matched

If the node matches none of the four shapes, the tool **refuses with an error**:

```
Concept '<X>' is not runnable through this tool: the root must implement IMainClass or ITestCase, be a test root MPS test discovery recognizes (such as a GeneratorTest), or be a ClassConcept whose getMainMethod() resolves a static main(<String[]-subtype>) method (visibility is not checked)
```

## Producer precedence

When both apply (rare — a `ClassConcept` that also implements `IMainClass`), the tool dispatches the more specific producer first: **ITestCase wins over IMainClass wins over ClassConcept.**

## What this tool does NOT do

It doesn't handle the gutter's third producer path (right-click on a `StaticMethodDeclaration` inside a class). MCP creates configurations from **root nodes only**; if you point it at a method body you'll get the non-root rejection.
