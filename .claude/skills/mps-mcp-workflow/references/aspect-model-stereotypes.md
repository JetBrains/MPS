# MPS Aspect IDs and Model Stereotypes

## Before creating: check whether the model already exists

Don't reach for `mps_mcp_create_model` reflexively — most aspect models you need are already in the language. **`structure`, `editor`, `constraints`, `behavior`, and `typesystem` are the aspects a typical language already has**; for these, the right move is to reuse the existing model, not create a new one. The remaining aspects (`textGen`, `intentions`, `actions`, `dataFlow`, `migration`, `plugin`, `findUsages`, …) are optional and genuinely may be absent, so creating them on demand is normal. Either way, **confirm presence with `mps_mcp_get_project_structure` first** (it lists each module's models); create only what is actually missing. Creating a model that already exists wastes a step and risks confusion about which model holds the content.

When you call `mps_mcp_create_model(moduleName, modelName)` the `modelName` argument selects one of three unrelated naming mechanisms:

- **A plain model** typically used in solutions or as utility mmodels in generators and languages.
- **Language-aspect ID** (no `@`): the model becomes the named aspect of a language module. Detected by qualified name `<langModule>.<aspectId>` where `<aspectId>` is **case-sensitive** and must match a registered `LanguageAspectDescriptor` (`core/kernel/source/jetbrains/mps/smodel/language/LanguageAspectDescriptorBase.java:54-67`). Aspect models carry **no stereotype** — adding `@aspectId` actively prevents recognition (see the comment at line 61: *"be specific we care about complete model name, don't want to get into the one with a stereotype"*).
- **Model stereotype** (`name@stereotype`): the model becomes a stereotyped non-aspect model (generator template, generation plan, tests, descriptor). Parsed by `validateModelName` (`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSModelMcpToolset.kt:442-471`).

The two mechanisms are orthogonal: aspect models never have a stereotype, stereotyped models are never aspect models.

## Language aspect IDs

Each row gives the canonical aspect ID (the exact string passed to `mps_mcp_create_model`'s `modelName` after `<langModule>.`), the aspect language to import as "used language", and a pointer to the in-depth skill.

| Aspect | Aspect ID (case-sensitive) | Typical on-disk file | Aspect language(s) | Detailed skill |
|---|---|---|---|---|
| Structure | `structure` | `models/structure.mps` | `jetbrains.mps.lang.structure` | [`mps-aspect-structure-concepts`](../../mps-aspect-structure-concepts/SKILL.md) |
| Editor | `editor` | `models/editor.mps` | `jetbrains.mps.lang.editor` | [`mps-aspect-editor`](../../mps-aspect-editor/SKILL.md), [`mps-aspect-editor-menus-and-keymaps`](../../mps-aspect-editor-menus-and-keymaps/SKILL.md) |
| Constraints | `constraints` | `models/constraints.mps` | `jetbrains.mps.lang.constraints` (+ `lang.smodel`, `lang.scopes`, `lang.behavior`, `baseLanguage` for scope bodies) | [`mps-aspect-constraints`](../../mps-aspect-constraints/SKILL.md) |
| Behavior | `behavior` | `models/behavior.mps` | `jetbrains.mps.lang.behavior` (+ body languages: `smodel`, `collections`, `closures`, `baseLanguage`) | [`mps-aspect-behavior`](../../mps-aspect-behavior/SKILL.md) |
| Typesystem | `typesystem` | `models/typesystem.mps` | `jetbrains.mps.lang.typesystem` (+ body languages) | [`mps-aspect-typesystem`](../../mps-aspect-typesystem/SKILL.md) |
| TextGen | `textGen` | `models/textGen.mps` | `jetbrains.mps.lang.textGen`, `jetbrains.mps.baseLanguage`, `jetbrains.mps.lang.smodel` | [`mps-aspect-textgen`](../../mps-aspect-textgen/SKILL.md) |
| Intentions | `intentions` | `models/intentions.mps` | `jetbrains.mps.lang.intentions` (+ `jetbrains.mps.lang.actions` for factory-initialised splicing) | [`mps-aspect-intentions`](../../mps-aspect-intentions/SKILL.md) |
| Actions | `actions` | `models/actions.mps` | `jetbrains.mps.lang.actions`, `jetbrains.mps.baseLanguage`, `jetbrains.mps.lang.smodel` | [`mps-aspect-actions`](../../mps-aspect-actions/SKILL.md) |
| Dataflow | `dataFlow` | `models/dataFlow.mps` | `jetbrains.mps.lang.dataFlow` (transitively `jetbrains.mps.baseLanguage`) | [`mps-aspect-dataflow`](../../mps-aspect-dataflow/SKILL.md) |
| Migration | `migration` | `models/migration.mps` | `jetbrains.mps.lang.migration` | [`mps-aspect-migrations`](../../mps-aspect-migrations/SKILL.md) |
| Enhancement scripts | `scripts` | `models/scripts.mps` | `jetbrains.mps.lang.script` | [`mps-aspect-migrations`](../../mps-aspect-migrations/SKILL.md) |
| Find Usages | `findUsages` | `models/findUsages.mps` | `jetbrains.mps.lang.findUsages` | — |
| Refactorings | `refactorings` | `models/refactorings.mps` | `jetbrains.mps.lang.refactoring` | — |
| IDE plugin | `plugin` | `models/plugin.mps` | `jetbrains.mps.lang.plugin` | [`mps-ide-plugin`](../../mps-ide-plugin/SKILL.md) |
| Feedback | `feedback` | `models/feedback.mps` | `jetbrains.mps.lang.feedback` | — |
| VCS merge hints | `vcs` | `models/vcs.mps` | `jetbrains.mps.vcs.mergehints` | — |
| Documentation (sample only) | `documentation` | `models/documentation.mps` | sample only | — |

Caveats:

- **Case sensitivity matters.** `textGen`, `dataFlow`, `findUsages` — not `textgen`, `dataflow`, `findusages`. Wrong case ⇒ the model is created but is not recognised as the aspect, appearing as a plain utility model. Renaming via `mps_mcp_update_model(modelReference, newModelName, operation=RENAME)` fixes this in place.
- **No `@` for aspects.** A model named `myLang.textGen@textGen` is **not** the TextGen aspect. The trailing `@textGen` adds a stereotype, which excludes the model from aspect-detection (see `LanguageAspectDescriptorBase.java:61`).
- The **Editor menus & keymaps** content (action maps, cell keymaps, transformation/substitute menus) lives inside the same `editor` aspect model — there is no separate aspect ID.
- The aspect ID `test` (from `plugins/mps-testing/languages/lang.test`) is the aspect of the test-infrastructure language itself, not the place users put their own test cases. User test cases use the `tests` stereotype below.

Source of truth for the IDs: each language's generated `LanguageAspectsEP_extension.java` (e.g. `languages/languageDesign/textGen/source_gen/jetbrains/mps/lang/textGen/plugin/LanguageAspectsEP_extension.java:27`). Grep `new LanguageAspectDescriptorBase("` to find them all.

## Model stereotypes

| Stereotype | When to use | On-disk pattern | Hosting module | Detailed skill |
|---|---|---|---|---|
| `generator` | Generator template models | `template/main@generator.mps` | Generator (sub-module of a Language) | [`mps-aspect-generator`](../../mps-aspect-generator/SKILL.md) |
| `genplan` | Generation plans | `<name>@genplan.mps` | Solution or Language | [`mps-aspect-generation-plan`](../../mps-aspect-generation-plan/SKILL.md) |
| `tests` | Test cases | `<name>@tests.mps` | Solution with `tests` facet | [`mps-tests`](../../mps-tests/SKILL.md) |
| `descriptor` | Language descriptor model (auto-managed by MPS; rarely authored by hand) | `<lang>@descriptor.mps` | Language | — |

Caveats:

- Pass these to `mps_mcp_create_model` as `modelName: "<name>@<stereotype>"`. Example: `"jetbrains.mps.tests@genplan"`, `"mylang.editor.scopes@tests"`.
- A `tests` model also requires the **tests facet** on the hosting solution. Manage it via `mps_mcp_get_module_facets` / `mps_mcp_update_module_facet`, or pass `facets="[\"tests\"]"` to `mps_mcp_create_module`.
- The `RENAME` path of `mps_mcp_update_model` accepts the `@stereotype` form too (same `validateModelName`), so a misnamed model can be relabelled without delete + recreate.

## Common pitfalls

1. **Wrong case in an aspect ID.** `myLang.textgen` is *not* the TextGen aspect — `myLang.textGen` is. The created model becomes a utility model in the language module.
2. **Adding `@aspectId` to an aspect model.** Aspect detection explicitly skips stereotyped models. `myLang.textGen@textGen` is invisible as the TextGen aspect.
3. **Missing used languages.** Even with the right model name, the first `mps_mcp_insert_root_node_from_json` fails with unresolved-concept errors if the aspect language isn't on the model's used-languages list. Add them before any node insert via `mps_mcp_model_used_language(... operation="ADD")`.
4. **Missing facet on a tests host.** A `@tests` model in a solution without the `tests` facet is created but not discovered by the test runner. Attach the facet to the solution module.
5. **Wrong module type for a stereotype.** `@generator` belongs in a Generator sub-module; `@tests` belongs in a Solution; `@genplan` is most often in a Solution or Language. The MCP create call succeeds in any module, but the model will not be picked up by its consumer.

## Remediation: fix a misnamed model

If a model was created with the wrong case or wrong (or no) stereotype:

- **Rename in place** — preferred when the model already holds content:
  `mps_mcp_update_model(modelReference="<old name or reference>", newModelName="<correct name>", operation=RENAME)`.
- **Delete and recreate** — fine when the model is still empty:
  `mps_mcp_update_model(modelReference="…", operation=DELETE)` then `mps_mcp_create_model(moduleName, "<correct name>")`.

Both paths run the same `validateModelName` and accept either `<lang>.<aspectId>` or `name@stereotype` form.
