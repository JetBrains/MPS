# Generated Ant Targets

What ends up in `build.xml`.

| Target | Plugin | Purpose |
|---|---|---|
| `build` / `clean` | common preset | Entry point (depends on `assemble`, **not** on `generate`) / delete this script's `build/tmp/<name>` and `build/artifacts/<name>` |
| `assemble` | common preset | Produce the `layout` under `build/artifacts` |
| `fetchDependencies` | common preset | Hook that `generate` and compilation depend on; prepares dependency artifacts (empty in simple scripts) |
| `compileJava` | java | Compile all Java modules |
| `processResources` | java | Hook for resource processing |
| `classes` | java | Full compile + resources |
| `test` | java | Extension point for unit tests |
| `check` | java | Tests + validation |
| `generate` | mps | Generate all declared MPS modules (in chunk order) with the MPS at `mps_home`; rewrites the modules' `source_gen` in place |
| `cleanSources` | mps | Delete generated code (except bootstrap deps) |
| `declare-mps-tasks` | mps | Helper: registers MPS Ant tasks |
| `makeDependents` | mps | Regenerate transitive deps then assemble |
| `buildDependents` | common preset | Build sibling scripts referenced through `BuildProjectDependency` without an artifacts location |
| (`gentest` task inside `test`) | mps (with `testGeneration=true`) | Runs Test.Generating + Test.Diffing per module |

## Generation Chunks

Generation happens in **chunks**: groups of MPS modules that can be generated together. Within a chunk, the generator is told *only* what the build script declared as dependencies — which is why wrong/missing `BuildMps_*ModuleDependency` entries cause "class not found" errors even if the original `.mpl` is correct.

## Typical Command Lines

Run from the base directory (`internalBaseDirectory`):

- `ant -f <fileName> -Dmps_home=<MPS> build` — compile and package what is already generated.
- `ant -f <fileName> -Dmps_home=<MPS> clean generate build` — regenerate with the target MPS first. This rewrites `source_gen`, which is often under version control.

Omit `-f` when `fileName` is empty (`build.xml`).
