# Authoring the New `BuildProject` in `build.mps`

This page details step-by-step what to add to `plugins/mps-build/solutions/mpsBuild/models/build.mps` for Option A (a full Ant compile pipeline like `mpsHttpSupportPlugin`).

## Ordering caveat — what is actually true

IDEA platform jars under `<MPS>/lib/` and `<MPS>/plugins/<platform-plugin>/lib/` are fetched into the checkout by the top-level `build.xml platform` target, which calls `getDependencies.xml install` (an Ivy fetch). Those jars do **not** exist on a clean checkout, and **no `BuildProject` declares the fetch** — the fetch lives outside the build language entirely, in hand-written `build/build.xml` (lines 5–7) and `build/getDependencies.xml`. Every per-plugin Ant script in the tree implicitly assumes the fetch has already run.

This means there is no "fetch-aware `BuildProject`" to declare a dependency on, and there is **no `${idea.plugins.dir}` macro** in the generated Ant. The established conventions in `build.mps` are:

- `${idea_home}` is set in `build/build.xml:2` to `..` (the MPS checkout root); other generated scripts reach the platform via paths like `${idea_home}/lib/...` or `${basedir}/plugins/...` after `idea_home` has been propagated.
- The lowest-layer `BuildProject` that already consumes the fetched IDEA jars is `mpsTrueBootstrap` (and everything chains through it via `BuildProjectDependency`). Declaring the new plugin to depend on `mpsTrueBootstrap` (transitively, via `mpsBootstrapCore` / `mpsCore` / `mpsWorkbench`) inherits the same "platform must be fetched first" assumption that every existing plugin script lives with.
- For platform-plugin classpath entries (e.g. mcpserver), use `${basedir}/plugins/<platform-plugin>/lib/` — the same path the IDEA project libraries use under `.idea/libraries/*.xml` (cf. `.idea/libraries/idea_mcpserver.xml`, which points to `$PROJECT_DIR$/plugins/mcpserver/lib/*.jar`). Do **not** invent a new `${idea.plugins.dir}` macro — it does not exist in the build model today.

## Concrete steps

1. Read the `mpsHttpSupportPlugin` `BuildProject` in `build.mps` and copy its `BuildProjectDependency` chain.
2. Reference any platform-plugin jars through `${basedir}/plugins/<platform-plugin>/lib/` in the `BuildSource_JavaDependencyJar` entries.
3. Document, in the new BuildProject or in build docs, that `<projectName>.xml` is only runnable after `ant -f build/build.xml platform` — same precondition every other per-plugin script has.

## Layout shape recap

- The `BuildLayout` produces `build/artifacts/<projectName>/<plugin-folder>/{lib,...}`.
- `META-INF/plugin.xml` is sourced from `plugins/<plugin>/META-INF/plugin.xml`.
- `BuildSource_JavaModule` points at `plugins/<plugin>/{src, resources}` via `BuildSource_JavaContentRoot`. Add `BuildSource_JavaOptions` with Kotlin support (`kotlinc_home` is a standard macro).
- The compiled output is packed via `BuildLayout_Jar` + `BuildLayout_CompileOutputOf` into `<plugin>/lib/<plugin>.jar`.
- Dependencies: `BuildSource_JavaDependencyModule` for sibling MPS modules; `BuildSource_JavaDependencyJar` for plain jars (use the `${basedir}/plugins/<platform-plugin>/lib/` convention for platform-plugin jars).
- Carry the `BuildJavaPlugin` marker.
- Add `BuildProjectDependency` to `mpsBootstrapCore` (and likely `mpsCore`, `mpsWorkbench`).

## Wiring into the aggregator

After the per-plugin BuildProject exists, edit the `mps` aggregator BuildProject in the same `build.mps`:

- import `${artifacts.<projectName>}`,
- add a `BuildLayout_Files` copy step from `${artifacts.<projectName>}/<plugin-folder>` into `${build.layout}/plugins/<plugin-folder>`,
- add an `<ant antfile="build/<projectName>.xml" .../>` line to its `buildDependents` target,
- add the same line to the `mpsDistribution` BuildProject's `buildDependents`.

Regenerate `build.mps`. The new `build/<projectName>.xml` appears, and `build/mps.xml` plus `build/mpsDistribution.xml` are updated.
