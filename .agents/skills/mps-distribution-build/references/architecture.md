# MPS Distribution Build — Pipeline Architecture

This is the long-form walk-through of how `build/*.xml` files compose. Use it when you need to know where a particular file lives, what its `buildDependents` does, or which layer is responsible for a given artefact.

## 1. Entry point — `build/build.xml`

`build/build.xml` is the only short, hand-readable file. Its targets:

| target | meaning |
|---|---|
| `platform` | invoke `getDependencies.xml install` (Ivy-fetches IDEA platform + libs) |
| `getOpenjdkWin / Mac / MacM1 / Linux` | download bundled JBR runtimes |
| `getResourcesAndBuildAll` | downloads JDK then runs `mpsDistribution.xml buildDependents` |
| `assemble` | runs `mpsDistribution.xml assemble`, then `publishTCArtifacts`, then `mpsMaven.xml assemble` + `publishTCArtifact` (builds & publishes the `mps-openapi`-style Maven artifacts) |
| `build` (default) | `platform` → `getResourcesAndBuildAll` → `assemble` |
| `exe` | wraps the assembled distribution with `buildExe.xml` (Windows installer) |
| `clean` / `cleanResources` | clean tmp / artifacts / openJDK |

The script `build/run_build.sh` is the canonical way CI/developers run this.

## 2. Three layers of generated scripts

### 2.1 Per-module/per-plugin scripts (the "building blocks")

Each file like `mpsHttpSupportPlugin.xml`, `mpsContextActionsTool.xml`, `mpsKotlinPlugin.xml`, `mpsExecutionPlugin.xml`, `mpsBuild.xml`, … is a **self-contained Ant build** that:

1. Declares its own `build.tmp` and `build.layout` (= `build/artifacts/<projectName>/`).
2. Imports the MPS Ant tasks (`jetbrains/mps/build/ant/antlib.xml`) and javac2 / kotlin-ant typedefs.
3. Inside `<target name="assemble">`:
   - emits per-plugin `META-INF/plugin.xml`, `module.xml`, language descriptors;
   - compiles Java/Kotlin sources;
   - packs everything into a fixed directory layout under `build/artifacts/<projectName>/<plugin-folder>/…` (e.g. `build/artifacts/mpsHttpSupportPlugin/mps-http-support/lib/httpsupport.jar`).
4. Exposes a `buildDependents` target so its prerequisites (`mpsTrueBootstrap.xml`, `mpsBootstrapCore.xml`, `mpsCore.xml`, `mpsWorkbench.xml`, …) can be chained.

> `mpsBootstrapCore.xml` — the largest of the generated scripts — generates the MPS core itself by running the MPS generator inside Ant; it is by far the heaviest step in the pipeline.

### 2.2 The aggregator — `build/mps.xml`

This is the "assemble the MPS skeleton" script. Its target structure:

- `buildDependents` (`mps.xml:277`) — invokes every per-plugin Ant file one-by-one, populating `build/artifacts/<projectName>/`.
- `assemble` (`mps.xml:49`) — copies the per-plugin output into a single staging directory `build/artifacts/mps/` that mirrors the final MPS layout (`bin/`, `lib/`, `languages/`, `plugins/`, `license/`, …):

  ```
  build/artifacts/mps/
    bin/               (from /bin, native helpers excluded)
    lib/branding.jar   (echoxml MPSApplicationInfo.xml + icons)
    lib/mps-tips.jar
    lib/MPS-src.zip
    languages/         (← artifacts.mpsStandalone/languages)
    plugins/
      mps-core/        (← artifacts.mpsCore/mps-core)
      mps-build/       (← artifacts.mpsBuild/mps-build)
      mps-trove/       (← artifacts.mpsTroveCollections/mps-trove)
      mps-java/        (← artifacts.mpsJava/mps-java)
      mps-devkit/      (← artifacts.mpsDevKit/mps-devkit)
      mps-vcs/, vcs-git/, mps-git4idea/
      mps-migration/, mps-project-migrations/
      mps-tooltips/, mps-build-ui/, mps-junit5/, mps-testing/
      mps-kotlin/, mps-ant-make/, mps-http-support/, mps-context-actions/, …
    samples.zip, build.number, build.properties, build.txt, readme.txt
  ```

`mps.xml` is **the place where each plugin shows up in the final layout**. A plugin that has its own per-module Ant script but is not listed here will be compiled into `build/artifacts/<X>/` but **never enter the distribution**.

### 2.3 IDEA-bundled plugins — `build/mpsStandalone.xml`

In addition to the MPS-owned plugins, the distribution carries several plugins that come from the embedded IDEA platform (`platform-images`, `tasks`, `terminal`, `java`, `json`, `copyright`, `markdown`, `mcpserver`, `properties`, `sh-plugin`, `grazie`, `vcs-github`, `vcs-git-commit-modal`). These are copied straight from `<MPS>/plugins/<x>` (i.e. they ship with the IDEA platform that Ivy fetched) into `mpsStandalone`'s `build.layout`, which is then folded into `mps.xml`'s assembled output.

`mcpserver` (the IntelliJ-platform MCP server) is *already* bundled this way — that is what `com.intellij.mcpServer` resolves to at runtime for any MPS-owned plugin that depends on it.

## 3. Final distribution — `build/mpsDistribution.xml`

This script takes `build/artifacts/mps/` and produces every downloadable archive. Its `assemble` target builds, in `build/artifacts/mpsDistribution/`:

| artifact | contents |
|---|---|
| `${build.number}.zip` | "all platforms" zip — MPS skeleton + native libs (jna, pty4j, skiko, `bin/win`, `bin/linux`, `bin/mac`) for every platform. **No JBR.** |
| `${build.number}-linux.tar.gz` | Linux tarball — MPS skeleton + Linux-only native libs + Linux launchers; JBR is bundled here (added per-platform). |
| `${build.number}-windows.zip` | Windows zip — MPS skeleton + Windows native libs + `mps64.exe`, `mps.bat` + Windows JBR (`jbr-windows-x64`). |
| `${build.number}-macos.tar.gz` | macOS `.app` bundle (x86_64) gzip tarball + macOS JBR. |
| `${build.number}-macos-aarch64.tar.gz` | macOS `.app` bundle (arm64) gzip tarball + macOS arm64 JBR. |

For each platform it:
- copies version-templated launchers (`mps.sh`, `mps.bat`, `mps64.vmoptions`, `Info.plist`, `product-info.json`) from `plugins/mps-build/solutions/mpsBuild/source_gen/jetbrains/mps/ide/build/`;
- mixes in native binaries (`bin/win/amd64/*`, `bin/linux/amd64/*`, `bin/mac/*`, `lib/jna/*`, `lib/pty4j/*`, `lib/skiko-awt-runtime-all/*`);
- the **archive root** is `MPS <version>/` (for zip/tar) or `MPS.app/` (mac).

Its `buildDependents` target re-invokes every per-plugin Ant file plus `mps.xml` — that makes `mpsDistribution.xml buildDependents` the "build everything from scratch" entry-point used by `build.xml getResourcesAndBuildAll`.

`publishTCArtifacts` simply emits `##teamcity[publishArtifacts ...]` markers so TeamCity picks up the resulting archives.
