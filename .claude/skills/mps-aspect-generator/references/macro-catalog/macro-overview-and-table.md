## Where macros attach

Macros attach to target nodes **via the `smodelAttribute` child role** (well-known role id `lGtFl`). Multiple macros can coexist on the same target node as sibling `smodelAttribute` children (e.g. `LoopMacro` + `CopySrcNodeMacro` together = "iterate source children and copy each, running reductions").

All macro concepts live in `jetbrains.mps.lang.generator.structure`. Attach any of them via `mps_mcp_update_node(operation = ADD, kind = CHILD, nodeReference = <target-node>, childRole = "smodelAttribute", childJson = ...)`.

## Macro table

| Macro | FQN | Query body child (role) | Body concept |
|---|---|---|---|
| `CopySrcNodeMacro` (`$COPY_SRC$`) | `CopySrcNodeMacro` | `sourceNodeQuery` (opt) | `SourceSubstituteMacro_SourceNodeQuery` |
| `CopySrcListMacro` (`$COPY_SRCL$`) | `CopySrcListMacro` | `sourceNodesQuery` | `SourceSubstituteMacro_SourceNodesQuery` |
| `PropertyMacro` (`$PROPERTY$`) | `PropertyMacro` | `propertyValueFunction` | `PropertyMacro_GetPropertyValue` |
| `IfMacro` (`$IF$`) | `IfMacro` | `conditionFunction` | `IfMacro_Condition` |
| `LoopMacro` (`$LOOP$`) | `LoopMacro` | `sourceNodesQuery` | `SourceSubstituteMacro_SourceNodesQuery` |
| `TemplateCallMacro` (`$CALL$`) | `TemplateCallMacro` | `sourceNodeQuery` (opt) | `SourceSubstituteMacro_SourceNodeQuery` |
| `MapSrcNodeMacro` (`$MAP_SRC$`) | `MapSrcNodeMacro` | `sourceNodeQuery`, `mapperFunction` | `SourceSubstituteMacro_SourceNodeQuery`, `MapSrcMacro_MapperFunction` |
| `MapSrcListMacro` | `MapSrcListMacro` | `sourceNodesQuery`, `mapperFunction` | `SourceSubstituteMacro_SourceNodesQuery`, `MapSrcMacro_MapperFunction` |
| `ReferenceMacro` (`$REF$`) | `ReferenceMacro` | `referentFunction` | `ReferenceMacro_GetReferent` |
| `TemplateSwitchMacro` (`$SWITCH$`) | `TemplateSwitchMacro` | `sourceNodeQuery` (opt) + ref `templateSwitch` | — |
| `IncludeMacro` (`$INCLUDE$`) *(not found in this MPS distribution)* | `IncludeMacro` | ref `includeTemplate` | — |
| `WeaveMacro` (`$WEAVE$`) | `WeaveMacro` | `nodesToWeaveQuery` + `ruleConsequence` (child = `TemplateDeclarationReference`) | `SourceSubstituteMacro_SourceNodesQuery` |
| `InsertMacro` (`$INSERT$`) | `InsertMacro` | `createNodeQuery` + ref `mappingLabel` (opt) | `InsertMacro_CreateNodeQuery` |
| `InsertCallSiteMacro` (`$CALL-SITE$`) | `InsertCallSiteMacro` | — | — |
| `LabelMacro` (`$LABEL$`) | `LabelMacro` | `input1` (opt), `input2` (opt) + ref `mappingLabel` | `LabelMacroInputQuery` |
| `TraceMacro` (`$TRACE$`) | `TraceMacro` | `sourceNodeQuery` | `SourceSubstituteMacro_SourceNodeQuery` |
| `VarMacro2` (`$VAR$`) | `VarMacro2` | `variables` (1..n `VarDeclaration`; each with `name` property, optional `type`, `value` = `VarMacro_ValueQuery`) | `VarMacro_ValueQuery` |

> **Macro rarity in practice** (verified by repository grep):
> - `InsertMacro` is used heavily — it attaches to an existing target node and **replaces** it with whatever SNode its `createNodeQuery` function returns. Use when the target subtree must be built programmatically (computed structure the template cannot express). See InsertMacro section below.
> - `LabelMacro` is the macro form of attaching a mapping label to an output — use when a *macro site* (not a whole rule/fragment) must register its output under a label. See LabelMacro section below.
> - `TraceMacro` only affects tracing metadata — no semantic effect on output. See TraceMacro section for why it is useful for **debugging generator output**.
> - `WeaveMacro` is the node-macro form of a weaving rule. Use when weaving must be scoped to a specific template element rather than declared at the MappingConfiguration level. See WeaveMacro section below.
> - `IncludeMacro` is effectively unused in this repository. Prefer `TemplateCallMacro` / weaving rules instead, unless you have a clear specific reason.
> - `VarMacro2` is rare — most "store a value" needs are met by `PropertyMacro` or by computing on the fly in queries. See VarMacro2 section below.
