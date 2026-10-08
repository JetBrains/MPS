# Plain BaseLanguage `ClassConcept`: Happy Path and Fallbacks

A plain `ClassConcept` with a qualifying `main` method (any visibility, single parameter that's a strong subtype of `String[]`; see `references/runnable-shapes.md` for the exact predicate) is a first-class target — `mps_mcp_create_run_configuration` produces the same node-aware `Java Application` config the IDE gutter creates. The persisted XML carries a node pointer (not a `MAIN_CLASS_NAME`), so renaming the source class doesn't invalidate it:

```xml
<configuration name="Class Example" type="Java Application" factoryName="Java">
  <myNode>
    <MyState>
      <option name="myNodePointer" value="r:e4037414-...(Samples)/4120418308310980273" />
      <option name="myNodeText" value="Samples.Example" />
    </MyState>
  </myNode>
  …
</configuration>
```

The MPS producer resolves the node at launch time and runs the `main` of its generated class. That is the configuration this tool now registers for you.

## When the create path doesn't fire

Two cases still send you down a fallback:

1. **`compileInMPS=false` on the module.** The tool refuses with `Module '<moduleName>' (owner of node '<nodeName>') has compileInMPS=false; …`. The MPS producer would refuse for the same reason — the class is compiled by JPS so `classes_gen` is empty and the launch would fail with `ClassNotFoundException`. **Do not** blindly flip the JavaModuleFacet to MPS-compile: the `Compile.None` setting is usually intentional (sandbox modules, modules whose Java is built by an external JPS pipeline, packaged libraries). Flipping it can break the user's build or invalidate the module's contract with downstream consumers. Default to the IDEA MCP file-path fallback below; only change the facet when you've confirmed with the user that MPS-compilation is what they actually want for that module.
2. **No qualifying `main`.** If `ClassConcept.getMainMethod()` returns null (no `main`, wrong parameter type, multiple parameters), the tool refuses with the three-shape enumeration in `references/runnable-shapes.md`.

## Fallbacks for those cases

1. **Reuse an existing IDE-side configuration.** Call `get_run_configurations()` and look for a config whose name references the target class (typical: `Class <ClassName>`). Execute that by name. Useful even on the happy path when the user already set one up — duplicates are pointless.
2. **Drop down to the generated Java** via the **IDEA MCP** tools, when the module is already compiled:
   - `mcp__idea-mcp-server___project_root___get_run_configurations(filePath = "<path to generated .java>")` returns the line numbers of `main` methods.
   - `mcp__idea-mcp-server___project_root___execute_run_configuration(filePath, line)` launches a temporary "Java Application" config targeted at the compiled class.
   - The MPS MCP variant of these tools does **not** report run points for `source_gen` files; use the IDEA MCP variant.
   - This bypasses the node pointer entirely, so it only works once `classes_gen` actually contains the compiled class (see `references/compile-before-run.md`).

## Disambiguating multiple classes named the same

`mps_mcp_search_root_node_by_name` may return several `ClassConcept` roots with identical names from different sandbox modules. Pick the right one by **module reference**, not just by name — for example `org.jetbrains.mps.samples.SampleJavaExtensions.sandbox` vs. `jetbrains.mps.samples.nodeuid.sandbox`. The persistent node reference (`r:<modelId>(<modelName>)/<nodeId>`) is the unambiguous handle.
