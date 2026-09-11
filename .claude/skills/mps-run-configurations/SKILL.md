---
name: mps-run-configurations
description: Create and execute IDE run configurations for MPS root nodes via MPS MCP — Java Application for `IMainClass` / `ClassConcept` with `main`, JUnit Tests for `ITestCase`. Use when launching DSL `main`-like roots, plain BaseLanguage `ClassConcept` mains, or MPS test cases from a node; reusing or replacing an existing run config; diagnosing `ClassNotFoundException`, `compileInMPS=false`, or "not runnable through this tool" failures.
type: reference
---

# Running MPS Root Nodes

This skill covers the path from "an MPS root node exists in a model" to "a green IDE run / red stack trace in my hand," using only MCP tools. It targets user-level artifacts (DSL `main`-like roots, plain `ClassConcept` mains, test cases) — **not** launching MPS itself (the `MPS` / `MPS (2nd inst.)` configs are a different topic, see `AGENTS.md` or `CLAUDE.md`).

## Critical Directives

- `execute_run_configuration` and `get_run_configurations` are provided both by MPS and IDEA. Use the ones provided by MPS for running MPS nodes/tests.
- **`mps_mcp_create_run_configuration` accepts root nodes only**, and only three shapes: implements `IMainClass`, implements `ITestCase`, or is a `ClassConcept` with a qualifying static `main`. Pointing it at a method body or other non-root yields the non-root rejection. See `references/runnable-shapes.md` for the exact predicate and producer precedence.
- **MAKE the *module*, not just the model, before running.** Model MAKE regenerates `source_gen` but does not always compile into `classes_gen`; running launches bytecode, so a stale `classes_gen` silently runs old code. See `references/compile-before-run.md`.
- **Keep `configurationName` stable across iterations.** The tool replaces the existing config of the same `<type>.<name>` rather than creating duplicates — idempotent setup is the goal. Use distinct names only when you actually want parallel configs.
- **Do not silently flip `compileInMPS=false` to true.** `Compile.None` and JPS-compile settings are usually intentional (sandbox modules, externally-built modules, packaged libraries). Confirm with the user; otherwise take the IDEA MCP file-path fallback.
- **Prefer the source-root path over generated-Java entry points.** Source-root configs survive regeneration; file-path configs against `source_gen` only work while `classes_gen` is fresh.
- **MPS MCP `execute_run_configuration` / `get_run_configurations` do not surface run points under `source_gen`.** Use the IDEA MCP variants when you need a `filePath`+`line` launcher for generated Java.
- **Reuse before you create.** If the user already has a working run config, prefer `get_run_configurations()` + `execute_run_configuration` by its existing name — duplicates are pointless.

## Common Workflow

End-to-end pattern for "I changed a DSL root, run it":

1. `mps_mcp_alter_nodes MAKE` on the **module** of the DSL root, `rebuild: true`.
2. `mps_mcp_create_run_configuration` on the DSL root with a stable `configurationName` (the generated class FQN is a good default for IMainClass; leave blank for `ClassConcept` to match the IDE gutter's `Class <ClassName>` default).
3. `execute_run_configuration` (of MPS MCP, not IDEA's) by name with `waitForExit: true` and a generous `timeout`.
4. On `Could not find or load main class`, step 1 didn't reach `classes_gen` — re-run it.

Keep the configuration name stable across iterations so step 2 idempotently overwrites itself rather than littering the IDE with duplicates.

## Related Skills

- **`mps-baselanguage`** — when the runnable root is a plain `ClassConcept` you authored or need to inspect (`main` method shape, BaseLanguage editing).
- **`mps-aspect-generator`** — when stale or wrong generated Java is the root cause of an execution failure.
- **`bugfix-workflow`** — when an execution failure points back at the generator or model rather than the launcher.

## Reference Index

- Open `references/runnable-shapes.md` when you need to confirm whether a concept is launchable, look up the exact `main` predicate or `compileInMPS` gate, or interpret a "not runnable through this tool" / "compileInMPS=false" refusal.
- Open `references/create-and-execute.md` when you need the exact `mps_mcp_create_run_configuration` / `execute_run_configuration` / `get_run_configurations` call shape, naming and replacement semantics, or the difference between MPS MCP and IDEA MCP variants.
- Open `references/classconcept-and-fallbacks.md` when a `ClassConcept` run path doesn't fire — `compileInMPS=false`, missing `main`, ambiguous duplicates — and you need the IDEA MCP file-path fallback or the persisted-XML structure of the node-aware Java Application config.
- Open `references/compile-before-run.md` when the run fails with `ClassNotFoundException`, you're deciding between module MAKE and model MAKE, or output disagrees with edited source.
- Open `references/decision-matrix.md` for the at-a-glance situation→approach table covering every supported launch path.
- Open `references/common-failures.md` for the symptom→cause→fix table covering every published error and its remediation.
