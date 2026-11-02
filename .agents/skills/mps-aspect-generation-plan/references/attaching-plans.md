# Attaching Plans to Models

A plan applies to a model through the model's module or through a DevKit the model uses. Both store a reference to the plan **model**; MPS runs that model's first `Plan` root.

| Route | Governs | Use when | Tool |
|---|---|---|---|
| **DevKit** | every model that imports the DevKit directly | a language ships a plan to its users (the MPS-recommended way) | `mps_mcp_update_module(moduleName: "<devkit>", operation: "SET_GENERATION_PLAN", planModel: "<plan model>")` |
| **Solution** (Custom Generation facet) | every model of the solution, ahead of any DevKit plan | one project's own models, experiments, a module that must not depend on a DevKit | the same call with `moduleName: "<solution>"` |

Languages and Generators take no plan (the tool refuses them). `planModel` is a model reference (`r:…(name@genplan)`) or a model name.

## DevKit route

1. `mps_mcp_create_module(type: "devkit", name: "<devkit>", directory: "<abs dir>")` (or reuse one).
2. Export what the plan needs, one call each: `mps_mcp_module_dependency(moduleName: "<devkit>", targetModule: "<X>", operation: "ADD")`. A Language target joins the DevKit's `exportedLanguages`, a Solution its `exportedSolutions`, a DevKit its `extendedDevkits`; the answer names it in `devkitCollection`. Export:
   - the **solution that holds the plan model** (make finds the plan without it, but the IDE's plan picker offers only exported solutions, and build scripts and other projects need it);
   - the **languages the plan names** (DevKit validation warns for each one missing, including target languages like `jetbrains.mps.baseLanguage`; it checks direct exports only, so a language exported by an extended DevKit still warns);
   - the user-facing language(s) the DevKit is for.
   `reexport` and scopes other than `Default` / `Extends` are refused for a DevKit source; a Generator target is refused (export its language).
3. `mps_mcp_update_module(moduleName: "<devkit>", operation: "SET_GENERATION_PLAN", planModel: "<plan model>")`.
4. Each model to govern: `mps_mcp_model_used_language(modelReference: "<model>", kind: "devkit", usedLanguage: "<devkit>", operation: "ADD")`. A language the DevKit exports may then be dropped from the model's direct used languages (optional).
5. Read the state back with `mps_mcp_get_project_structure(startingPoint: "<devkit>")`: `exportedLanguages`, `exportedSolutions`, `associatedGenPlan`. `mps_mcp_check_root_node_problems(nodeReference: "<devkit>")` lists DevKit problems in `details.moduleProblems`.

Several DevKits on one model: only one may carry a main `Plan`; the others may carry `PlanContribution`s, which fork off the main plan's input before its first step. Two main plans fail model checking, and MPS then silently runs the second as an unconditional fork; two or more contributions with no main plan fail generation, and a single lone contribution gives an empty main branch.

## Solution route

`mps_mcp_update_module(moduleName: "<solution>", operation: "SET_GENERATION_PLAN", planModel: "<plan model>")` adds or updates the solution's Custom Generation facet (type `generator`, setting `planModel`); other facets are kept. `mps_mcp_get_module_facets` shows it. The facet plan **shadows** every DevKit plan of the solution's models; a facet whose plan model does not resolve or is empty is ignored silently (PLAN warns).

`mps_mcp_update_module_facet(facetType: "generator", settingsJson: {"planModel": "<model ref>"})` writes the same facet without the checks; any other key is ignored by the facet (the tool warns).

## Result and warnings

The answer is the module envelope plus `generationPlan` `{model, reference, plan, contributed, attachedVia: DEVKIT|FACET, previousModel?, changed}`. `changed: false` means the plan was already attached. Read `warnings`:

| Warning says | Do |
|---|---|
| plan model's module is not exported by DevKit | ADD the DevKit → plan solution dependency (needed by the IDE, build scripts, other projects) |
| `DevKit check warning: Associated generation plan needs language X …` | ADD the DevKit → X dependency, or accept (e.g. X comes through an extended DevKit) |
| several Plan roots, the first in root order is used | intended? otherwise move the main plan first (`mps_mcp_alter_nodes` cannot reorder roots: create the plan in its own model) |
| contributed plan, main branch empty | it only makes sense next to a DevKit with a main plan |
| solution does not depend on the plan's module | optional: `mps_mcp_module_dependency` ADD solution → plans solution, for build scripts and other projects |
| plan model belongs to the solution and is generatable | `mps_mcp_update_model(SET_DO_NOT_GENERATE)` on the plan model, or move plans to their own solution |
| the facet plan shadows DevKit plans / models whose facet shadows the DevKit | intended precedence? otherwise CLEAR one of them |

Refusals (nothing changes): a plan model that does not resolve, has neither a `Plan` nor a `PlanContribution` root, has a contribution pointing at no plan, pairs a `Plan` with a contribution to another plan, uses a `ConceptListSelector`, or reaches itself through forks or includes.

## Replace, detach

- Another `planModel` on the same module replaces the attachment (`previousModel` names the old one).
- `mps_mcp_update_module(moduleName, operation: "CLEAR_GENERATION_PLAN")` removes the DevKit plan or the facet.
- A model stops using a DevKit with `mps_mcp_model_used_language(kind: "devkit", operation: "DELETE")`.

After any attach, replace or detach: verify with `PLAN` and re-make with `rebuild: true` (`references/verification-and-discovery.md`).
