# How mcp-tools handles built and unbuilt languages (overview)

Companion to `d112-language-readiness-plan.md` (the design) and `d112-review-tour.md` (the diff tour).

## The problem in one paragraph

A concept reached through the structure model becomes an `SConceptAdapterById`, an id-based adapter that
keeps no link to its declaration node. Every feature it reports comes from the language *runtime*
(`ConceptRegistry` → `LanguageRegistry`), which only a build produces. When the runtime has no descriptor
for the id, the adapter is fail-safe by design: `isValid() == false`, `isAbstract() == true`, no properties,
no links, no source node, `superConcept == BaseConcept`, `isSubConceptOf(x) == false`. Nothing throws. So
every tool that read features off such an adapter produced a plausible-looking wrong answer: an empty
concept record, "Unknown property" for a property that is declared, or a nameless node written into a
model. That is D112, and it kept resurfacing because each tool consulted the adapter independently.

## The three states a concept can be in, and the two it cannot

`LanguageReadiness.of(concept, declaration, project)` (`common/LanguageReadiness.kt`) is the one
predicate every tool now asks before trusting a concept's features. It returns:

| State | Meaning | Where it comes from |
|---|---|---|
| `Ready` | the runtime has a descriptor and the structure model has not changed since it was generated | the normal case for every built language |
| `NotBuilt.NoRuntime(module)` | `LanguageRegistry` has no runtime for the language: never made, or its `classes_gen` is gone | a freshly created language, a checkout without generated classes |
| `NotBuilt.ConceptNotInRuntime(module)` | the runtime is loaded but does not know this concept id | a concept created with `CREATE_CONCEPTS` after the last build |
| `NotBuilt.Stale(module, structureModel)` | a descriptor exists, but the structure model was edited since (`ModelGenerationStatusManager.generationRequired`) | a property or role added to a built concept |
| `Undeclared` | neither a descriptor nor a declaration: an invented reference that no build can help | a bogus concept id; stays `NOT_FOUND`, never `LANGUAGE_NOT_BUILT` |

Two states that the old code and docs believed in do **not** exist: a "hollow descriptor" (a descriptor
present but empty — every generated descriptor carries an origin, so an empty shape always means a
*missing* descriptor), and "resolves via the structure model" as a way to read features without a build
(resolution does use the structure model; the features never did).

The module to rebuild is taken from the **declaration node's** module when one is known, because a
concept moved between languages keeps its old `languageId`.

## One recovery, said the same way everywhere

Every surface that reports a not-built state emits the same block, `details.languageBuild`:

```json
{ "language": "<name>", "module": "<module ref>",
  "status": "no_runtime" | "concept_not_in_runtime" | "stale",
  "recovery": { "tool": "mps_mcp_alter_nodes", "operation": "MAKE",
                "parameters": { "modules": ["<module ref>"], "rebuild": true } },
  "note": "A MAKE writes only generated output (source_gen/classes_gen) and changes no model, so it is allowed where model edits are not." }
```

`rebuild:true` on the **language module** is the one recipe that covers all three states (a model-scoped
make does not materialise a never-built runtime). The note exists because an agent in the study refused to
build under a "do not modify any model" instruction.

## Read tools: answer from the declaration, and say so

`get_concept_details` (both `detail` levels) and `search_concepts` classify every concept they return.
For `NoRuntime` / `ConceptNotInRuntime` with a resolvable declaration, the record is built by
`ConceptDeclarationView` (`languages/ConceptDeclarationView.kt`) directly off the
`ConceptDeclaration` node and its super chain (walked through `jetbrains.mps.lang.structure`'s own
behavior, via `BHReflection`): name, abstractness, rootable, alias, description, supers, properties with
types and enum literals, child and reference roles with targets and cardinalities, `featureId`s and
`sourceNode`s. A parity test checks this view against the real runtime record for every concept of
`lang.structure`, `lang.core` and `lang.behavior`, so a declaration-read record is the record the agent
would get after the build. Such records carry `source:"declaration"`, `descriptorStatus:"hollow"`
(kept for compatibility), `runtimeStatus`, `languageModule` and `descriptorRecoveryAction`; the envelope
adds one warning per affected language and `details.languageBuild`. `Stale` is reported in `details`
only, because the runtime record is correct, just possibly behind.

Enumeration changed too: `languageRefs` on a project language, and the search's language scope, take the
**union** of the runtime's concepts and the structure model's concept declarations, so concepts added
since the last build appear and a never-built project language is answered instead of `NOT_FOUND`.

Read tools never build anything.

## Writers: never act on a fail-safe adapter

Every tool that writes or computes from a concept's features goes through `AbstractNodeOps.ConceptGate`
(one per tool call, caching the verdict per concept):

- `require(concept, subject, consequence)` throws `McpLanguageNotBuiltException` for `NoRuntime` and
  `ConceptNotInRuntime` before any feature is read. The envelope is `ok:false`, `code:"LANGUAGE_NOT_BUILT"`,
  a message naming the concept, the path, the state and the exact MAKE call, and `details.languageBuild`.
- `staleFeature(concept, kind, name, path)` runs only when a property / child role / reference role
  lookup on a *valid* concept misses: if the structure model declares the feature, the answer is
  `LANGUAGE_NOT_BUILT` with `status:"stale"` instead of "Unknown property"; if it does not, the old
  authoring-error rejection is unchanged. `generationRequired` alone never refuses anything.

Gated: `insert_root_node_from_json`, `update_root_node_from_json`, `create_root_node`, `update_node`
(ADD/SET CHILD, SET PROPERTY, SET REFERENCE), `alter_nodes` MOVE_CHILD / MOVE_NODE_TO_PARENT,
`parse_java_and_insert` (parent role), `insert_console_command_from_json`, `query_structure`
GET_ASSIGNABLE_REFERENCES, and all operands of `query_types`. Dry runs refuse identically: a dry run exists
to validate against the runtime (factories, constraints, assignability) and would otherwise have to invent
a verdict. No tool builds implicitly (the design records why: a make drops transient models, forces a
class reload, builds generators, writes `source_gen`/`classes_gen`, and only one make session can run
while agents send dry runs in parallel).

Existing nodes of an unbuilt concept stay readable and deletable: `nodeInfoJsonObject` reports the stored
name with `conceptLoaded:false` instead of the fail-safe `"<Concept> (concept is not found)"`, and
`search_root_node_by_name` matches such roots by their stored name.

## Tools that build: one staged recovery

`scaffold_editor` and `CREATE_CONCEPTS make:true` share `AbstractOps.ensureLanguageRuntime`: for
`NoRuntime`, a module-scoped clean rebuild at once; otherwise a clean make of the structure model,
verified by reading the concepts back through `LanguageReadiness`, with the module rebuild as the
fallback (`recoveryStage:"module-rebuild"`). `checkScaffoldingStaleness` is now a thin wrapper over the
classifier.

## Where to read more

- `mps-language-analysis/references/language-readiness.md` (skill text an agent reads; propagated to
  `.agents/skills` and `.claude/skills`), `response-envelope.md` for the `LANGUAGE_NOT_BUILT` contract.
- Study row D112 in `study/docs-defects.md` for the symptom history; re-measure of S8, S1, S2 is outstanding.
