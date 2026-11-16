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

## Communicating clearly

Write for an intelligent but low-context reader. The person reading has not seen your tool calls, your reasoning or the files you opened, and may be switching in from other work. Messages should generally be self-contained: the reader should understand what you mean without having to dig for other context. Put the key points in the first few sentences. Practice progressive disclosure in your sentence order, and do not use undefined references and ideas in line 1 that won't make sense until the reader reaches line 12.

Use plain words, and write in clear, understandable full sentences. Do not use a term or abbreviation that you made up during the work. Say what the thing is in a way any reader would understand. Write mostly in the style of ASD-STE100 Simplified Technical English: short sentences, one idea per sentence, active voice, and consistently using the same word for the same thing. Use a paragraph of flowing prose where ideas connect, and keep bullets for lists of separate items. Leave out unnecessary details unless the reader asks and practice concision, but do ensure that your messages have the key context. Aim to make your user-facing text as human-readable and clear as possible.

Every few tool calls, give the user a one-line update on where things stand.