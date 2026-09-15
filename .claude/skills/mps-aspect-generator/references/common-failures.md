# Common pitfalls and symptom-to-fix table

Read this when: a generator doesn't behave as expected — start here to map an observed symptom to the most likely cause and fix.

| Symptom | Cause | Fix |
|---|---|---|
| Output contains source nodes unchanged | No rule matched; template missing | Add a reduction rule or template for that concept |
| Reference to a generated node is null | Mapping label missing or wrong | Define label on the target rule; fetch via `genContext.get output … for (...)` |
| `cannot resolve` in generated Java | Target language not in generator's module dependencies | Add dependency to the generator module (not the language!) |
| LOOP produces nothing | Loop selector returns empty; or wrong role | Check the `nlist` / selector; ensure macro is on the element node, not its parent |
| Wrong order of children in output | Templates produce insertion order of rules; mixed with copies | Use an explicit LOOP or script to reorder |
| "Ambiguous reduction rule" | Two rules match the same node | Make rules mutually exclusive via `applicableConcept` or `condition` |
| Stale code after language edit | Generator module not rebuilt | Rebuild generator module; regenerate consumer model |
| `RulesFunctions_…` method typed wrong | Java parser return-type issue | See `references/variable-declarations.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin — replace return type child |
| Reduction fires forever / stack overflow | Reduction matches its own output | Change target concept, or use `DismissTopMappingRule`, or copy-through with `$COPY_SRC$` |
| `genContext.get output … for (X)` returns null at reference site | Writer rule ran in a later step than reader; or reader used wrong input node | Add priority constraint so writer runs first; or pass the *original* source node (not a copy) as the input to `get output` |
| Weaving rule's template content appears unwanted | Template has scaffolding around the `TemplateFragment` | Move `TemplateFragment` onto the exact subtree to insert; scaffolding is ignored |
| Switch default doesn't fire | A `Reduction_MappingRule` case matched (possibly via inheritance) | Check `extends`; add a stricter condition on competing cases |
| Mapping script mutates input and other generators see stale data | Pre-script ran without `modifiesModel = true` | Set `modifiesModel` so MPS clones the model for this generator |
| Pattern rule never matches | Pattern variables declared on wrong role / wrong concept | Verify pattern variable attachment (`smodelAttribute` → `PatternVariableDeclaration`) and ensure the hole concept subtypes the variable's declared concept |
| `Unresolved reference: c:<uuid>/<id>` on `applicableConcept` | Used the `c:` concept ref instead of the structure-model node ref | Replace with `r:<structureModelUUID>(<lang>.structure)/<conceptDeclarationNodeId>`. See `rule-consequences.md` |
| Refactor extracted a reduction; output is now silently empty | The new `TemplateDeclaration` is missing the `TemplateFragment` smodelAttribute on the produced subtree | Add `TemplateFragment` to the exact node that should replace the input. See `macro-catalog.md` / `cookbook.md` |
| `mps_mcp_check_root_node_problems` shows "rule disappeared" or partial tree | `onlyNodesWithProblems = true` (default) hides clean siblings; the rule is actually fine | Re-run with `onlyNodesWithProblems = false` to see the full tree before concluding the rule was deleted |
| `mps_mcp_create_module(type="generator")` reports "generator location already exists" | Target directory already holds content (a real collision). On older tooling, passing any explicit non-empty `directory` could also trip a create-then-abort bug that pre-created the folder | Prefer **omitting** `directory` (defaults to `<lang>/generator`); an **empty** existing dir is reused. If you pass an explicit path, use a fresh/empty one. See `module-structure.md` → "Creating the generator module" |
