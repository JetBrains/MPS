# Intention Common Failures

| Symptom | Cause | Fix |
|---|---|---|
| Intention not offered | `forConcept` wrong, `isApplicable` returns false, or language not rebuilt | Check concept, print the `isApplicable` return, rebuild |
| Offered on parent but not inside a child | `isAvailableInChildNodes` is false | Set to true |
| Execute edits don't persist | Ran off-EDT or outside a write action | Let MPS wrap the body; don't spawn threads inside `execute` |
| Duplicate entries in popup | Two intentions with same description and overlapping applicability | Differentiate `description` or restrict `isApplicable` |
| Parameterized intention shows empty list | `queryFunction` returns empty, or `isApplicableFunction` filters out every `parameter` | Verify the query, and check any `parameter`-based conditions in `isApplicable` |
| Caret ends up in the wrong spot after execute | No `SelectInEditorOperation` at the end of the body | Call `created.select[in: editorContext, cell: LAST, selectionStart: -1]` as the final statement |
| `n as C` throws NPE | Used Java cast `(C) n` instead of MPS `asCast` | Use `n as C` (compiles to `SNodeTypeCastExpression` with `asCast = true`) |
| `add new initialized(...)` does not resolve | The intentions model is missing `jetbrains.mps.lang.actions` in its used languages | Run `mps_mcp_model_used_language(modelReference=<intentions-model>, usedLanguage="jetbrains.mps.lang.actions", kind="language")` |
| `:eq:` raises a typesystem error against `==` | Operands may be null; `==` is not null-safe | Use `:eq:` (`NPEEqualsExpression`) instead |
| `seq.isEmpty` resolves to the wrong concept | Two `IsEmptyOperation` concepts exist — collections (for sequences/roles) and baseLanguage (for strings) | Add the collections language, and verify the resolved operation; see `references/collections-catalog.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin |
