# Runtime Solutions

A **runtime solution** is a plain `Solution` that ships **the Java classes the *generated* programs call at run time** — the part of the implementation that is the *same* for every model the language generates. The code can be **MPS-authored BaseLanguage source** (MPS compiles it) or a **prebuilt JAR** you bundle (see *Delivering the stable part* below). The language declares it as a runtime module; every consumer of the language then depends on it transitively, so generated code links against it with no consumer-side import.

## Why — the stable part vs. the variable part of a generator

A generator's output has two parts:
- a **stable part** — code that does not change in reaction to the model being generated (engines, base classes, data structures, helper APIs). Provide it **once, in a runtime solution.** It is not a template.
- a **variable part** — code whose shape *is* driven by the model. This is the **generator templates + macros**, which react to the input and emit different output.

Idiomatic split: **keep the stable part out of the templates** and generate thin code that *calls into* the runtime solution — rather than regenerating the engine inline for every program, or generating one fat artifact that dispatches at run time on a generated constant (see the architecture ladder in `references/cookbook.md` in the `mps-aspect-generator` skill root after loading that companion skill from the same origin). Result: far less generated code, one place to fix bugs, and a runtime you can debug as ordinary Java.

## Worked example — Kaja / JavaKaja (`samples/robot_Kaja` in this repo)

`Kaja` is a DSL for driving a robot (`step`, `turn left`, `pick`, `drop`, `while wall in front ...`, routines). Its runtime solution is **`jetbrains.mps.samples.JavaKaja`**. (Language `jetbrains.mps.samples.Kaja` lives under `samples/robot_Kaja/languages/Kajak`; the solution under `samples/robot_Kaja/solutions/JavaKajak`.)

- **Stable part — `JavaKaja`**, model `JavaKaja.runtime` (uses only `jetbrains.mps.baseLanguage`):
  - `KajaFrame` — the robot world + Swing engine; the runtime API: `canMove()`, `moveKaja()`, `turnLeft()`, `pick()`, `drop()`, `pause()`, `reportError(...)`, sensing predicates.
  - `Cell`, `VisualCell`, `Direction` (an `EnumClass`) — supporting types.
- **Variable part — the `Kaja` generator** (`template/main@generator`): one `Reduction_MappingRule` per command (`reduce_Step`, `reduce_LeftTurn`, `reduce_Pick`, `reduce_While`, `reduce_RoutineDefinition`, ...). Each emits a small BaseLanguage fragment that calls the runtime. `reduce_Step`:

  ```java
  public class Foo extends KajaFrame {            // generated program subclasses the runtime engine
    protected void perform() {
      if (canMove()) { moveKaja(); pause(); }      // every call resolves to KajaFrame (the runtime solution)
      else { reportError("Oops, there's a wall in front of me..."); }
    }
  }
  ```

A whole Kaja program reduces to "a `KajaFrame` subclass whose `perform()` is a sequence of runtime calls." The robot logic itself is never generated.

## The three links you must wire

| Link | Where | Tool |
|---|---|---|
| Language → runtime solution | language `.mpl` `<runtime>` block (the **Runtime** tab) | *no dedicated MCP tool* (see below) |
| Generator → runtime solution | generator module `<dependency>`, scope `Default` | `mps_mcp_module_dependency` — so template bodies can **name** the runtime classes |
| Generated code → runtime classes | inside templates (authoring) | — |

In Kaja (`samples/robot_Kaja/languages/Kajak/Kajak.mpl`): the language lists `JavaKaja` as a `<dependency>` inside its `<runtime>` block and declares `baseLanguage` as its `generate-into` target; the generator has `Default` dependencies on `JavaKaja` and `baseLanguage`.

> The serialized `.mpl` element is `<runtime>` (it holds `<dependency>` entries) — **not** `<runtimeModules>`. MPS's `mps_mcp_get_project_structure` *reports* the block under a `runtimeModules` JSON key, which is the field name, not the XML element.

## The Java facet on a runtime solution

A runtime solution must be a **Java module** — it carries the `java` facet so its classes land on the classpath of every consumer. JavaKaja is **source-authored**, so MPS compiles its models into `classes_gen`; its facet:

```xml
<facet type="java" compile="mps" classes="mps" ext="no">
  <classes generated="true" path="${module}/classes_gen" />
  <library location="${module}/images/kaja_images.jar" />   <!-- optional: bundle resources/jars -->
</facet>
```

| Attr | Value | Meaning (`JavaModuleFacet`) |
|---|---|---|
| `compile` | `mps` | MPS compiles the module's Java/Kotlin into `classes_gen`. (`ext` = expect externally-compiled classes; `off` = not compiled, sandbox only.) |
| `classes` | `mps` | MPS-managed classloader; classes reloaded when the module changes. (`provided` = classloader supplied by the module's origin, e.g. a bundled jar.) |
| `ext` | `no` | `LoadExtensions.NotAvailable` — the module is **not** an MPS IDE extension/plugin. The source comment notes this is the setting "for ... language runtime solution." A *language* uses `ext="yes"`; a runtime solution does not — regardless of delivery shape. |

For a **source-authored** solution these are exactly the defaults of a freshly created `Solution`'s `java` facet (`Compile.MPS` / `LoadClasses.ManagedByMPS` / `LoadExtensions.NotAvailable`), so you normally **don't touch them** — just ensure the solution has the facet (every `mps_mcp_create_module` solution does) and that `classes_gen` is the output. The optional `<library>` child bundles extra jars/resources on the classpath (Kaja bundles its robot images). A **JAR-backed** solution uses different values — see below.

## Delivering the stable part: MPS source or a JAR

The stable part can come two ways:

- **MPS-authored source** (the default; JavaKaja): write BaseLanguage `ClassConcept`s in a normal model; MPS compiles them into `classes_gen`. Facet `compile="mps" classes="mps" ext="no"`.
- **Prebuilt JAR** (e.g. `jetbrains.mps.lang.behavior.runtime`, `jetbrains.mps.java.stub`): ship the `.jar` instead of authoring source. It takes **two coordinated declarations**:
  - a **`java_classes` model root** over the jar — exposes its classes as read-only **stub models**, so templates and generated code can *name* them (resolve references):
    ```xml
    <models>
      <modelRoot type="java_classes">
        <sourceRoot path="${mps_home}/lib/mps-behavior-runtime.jar" />
      </modelRoot>
    </models>
    ```
  - a facet **`<library>`** entry for the same jar — puts it on the compile/runtime **classpath**. For this shape the facet is `compile="ext"` (externally compiled — MPS won't compile it) and `classes="provided"` (classes come from the module/library, not an MPS classloader over `classes_gen`); `ext="no"` as always:
    ```xml
    <facet type="java" compile="ext" classes="provided" ext="no">
      <library location="${mps_home}/lib/mps-behavior-runtime.jar" />
    </facet>
    ```

A facet `<library>` **alone** only adds the jar to the classpath; to *reference* the jar's classes inside MPS you also need the `java_classes` model root. The two shapes can be combined (JavaKaja = source classes + a resource-jar `<library>`).

> **No MCP tool** authors `java_classes` model roots or facet `<library>` entries. Use the MPS UI (Module Properties → **Common** / **Java**) or hand-edit the descriptor + rebuild.

## How to create / wire one

- **New language:** `mps_mcp_create_module(type="language", name="...", withRuntime=true)` creates the runtime solution alongside the language and registers it on the language. (`withSandbox` / `withGenerator` are the siblings.)
- **Existing language / stand-alone:** `mps_mcp_create_module(type="solution", ...)` → the solution already has the correct default `java` facet; put your hand-written `ClassConcept`s in a normal model (or, for a JAR, add a `java_classes` model root + facet `<library>` as above). Then **register it in the language's `<runtime>` block**, for which there is **no MCP tool today** (same as `accessoryModels`): use the MPS UI (Module Properties → **Runtime**) or hand-edit the `.mpl` `<runtime>` block (back up first, edit only that block) and **rebuild**. Each entry is a module `<dependency>`, e.g. (from `Kajak.mpl`):

  ```xml
  <runtime>
    <dependency reexport="false">5004e7d9-a353-4cb0-960a-68fc804bd95d(jetbrains.mps.samples.JavaKaja)</dependency>
  </runtime>
  ```

  Finally add the `Default` generator→solution dependency with `mps_mcp_module_dependency`.

> **`scope="Runtime"` is NOT how you declare a runtime solution.** `mps_mcp_module_dependency(scope="Runtime")` writes a `<dependency>` into the module's regular `<dependencies>` (the `RUNTIME` dependency scope); the language's runtime solutions live in the separate `<runtime>` block. Both use `<dependency>` entries — the difference is the enclosing element. Don't confuse the two.

## When you do NOT need one

If the generated code only uses the target language's own library (plain `java.*`, or the target DSL's runtime), there's nothing to ship — just depend on that library from the generator. Reach for a runtime solution when **you** own non-trivial, model-independent code that generated programs should call.
