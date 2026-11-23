# Quick Reference — Key Files

- `build/build.xml` — small hand-written entry-point.
- `build/mpsDistribution.xml` — packs per-platform archives; orchestrates `buildDependents`.
- `build/mps.xml` — aggregates per-plugin artifacts into the MPS skeleton.
- `build/mpsStandalone.xml` — wraps IDEA platform plugins.
- `build/mpsBootstrapCore.xml`, `mpsCore.xml`, `mpsWorkbench.xml`, `mpsBuild.xml` — bootstrap layers run before any plugin script.
- `build/mps<PluginName>.xml` — one per MPS-owned plugin/module.
- `plugins/mps-build/solutions/mpsBuild/models/build.mps` — single source of truth that generates all of the above.
- `plugins/mps-build/solutions/mpsBuild/source_gen/jetbrains/mps/ide/build/` — template files (`mps.sh`, `mps.bat`, `product-info-*.json`, `mps*.vmoptions`, `Info.plist.xml`) used during `mpsDistribution.assemble`.
- `.idea/libraries/*.xml` — IDEA project libraries pointing at `$PROJECT_DIR$/plugins/<platform-plugin>/lib/*.jar`; the canonical path convention for referencing fetched platform plugin jars.
- `build/getDependencies.xml` — Ivy-based fetch of the IDEA platform; invoked by `build.xml platform`.
- `build/run_build.sh` — canonical CI/developer entry point that invokes `build.xml`.
