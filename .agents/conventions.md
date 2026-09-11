# Code conventions

## Java and Kotlin

- Follow the style and structure of the surrounding package before introducing a new local convention.
- Keep public API changes narrow and intentional. Update callers, tests, and nearby documentation when behavior changes.
- Prefer existing project utilities, nullability conventions, logging patterns, and test infrastructure over adding new dependencies or local frameworks.
- Keep package names and module boundaries aligned with the existing area being changed. Do not move APIs across modules unless the task is explicitly about that boundary.

## MPS

- Use MPS MCP tools for MPS models, language aspects, generators, and module metadata.
- Do not read or edit serialized `.mps`, `.mpl`, or other MPS XML files as plain text.
- Load the relevant aspect skill before changing structure, editor, behavior, constraints, typesystem, generator, textgen, migrations, or tests.

## Generated code

- Do not patch generated Java/Kotlin as the lasting fix when the source of truth is an MPS model or generator. Prefer fixing the model, language aspect, or generator that owns the behavior.
