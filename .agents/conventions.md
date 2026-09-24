# Code conventions

## Java and Kotlin

- Follow the style and structure of the surrounding package before introducing a new local convention.
- Keep public API changes narrow and intentional. Update callers, tests, and nearby documentation when behavior changes.
- Prefer existing project utilities, nullability conventions, logging patterns, and test infrastructure over adding new dependencies or local frameworks.
- Keep package names and module boundaries aligned with the existing area being changed. Do not move APIs across modules unless the task is explicitly about that boundary.

## MCP tools and bundled skill scripts

- Bundled skills under `plugins/mcp-tools/resources/.../skills/` may ship executable helpers in `<skill>/scripts/` (Python ≥ 3.9, stdlib only). They depend on `mps_mcp_*` tool names and parameter names.
- Whoever changes an `mps_mcp_*` tool signature (name, parameter name, operation/kind literal, result envelope shape) must update the affected scripts, their bundled `examples/`, and the `## Scripts` section of the owning `SKILL.md` in the same commit. `SkillScriptsDriftTest` fails the build otherwise.
- Scripts stay skill-local: the only cross-skill import allowed is the shared library in `mps-mcp-workflow/scripts/` via a relative `sys.path` insert. Validate with `plugins/mcp-tools/scripts/validate_skill_catalog.py`.
- A `references/*.md` file over 12 KB is split with `plugins/mcp-tools/scripts/split_skill_reference.py` (one file per heading under `references/<stem>/`, with the old path rewritten as an index); a section file it produces is not split further.

## MPS

- Use MPS MCP tools for MPS models, language aspects, generators, and module metadata.
- Do not read or edit serialized `.mps`, `.mpl`, or other MPS XML files as plain text.
- Load the relevant aspect skill before changing structure, editor, behavior, constraints, typesystem, generator, textgen, migrations, or tests.

## Generated code

- Do not patch generated Java/Kotlin as the lasting fix when the source of truth is an MPS model or generator. Prefer fixing the model, language aspect, or generator that owns the behavior.
- `source_gen` is checked into this repository. When a model or generator change alters generated output, regenerate and commit the regenerated sources together with the change that caused them.
