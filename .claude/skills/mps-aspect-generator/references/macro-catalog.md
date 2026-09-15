# Macro catalog and JSON blueprints

Read this when: attaching a macro to a template node, choosing between similar macros (COPY_SRC vs LOOP+COPY_SRC, IF with else, etc.), or debugging a macro that isn't firing.

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

## Fragments and root template annotation

Additionally, **`TemplateFragment`** (`jetbrains.mps.lang.generator.structure.TemplateFragment`, also attached as `smodelAttribute`) marks the subtree inside a `TemplateDeclaration.contentNode` that is actually produced as the replacement — nodes outside the fragment are scaffolding. **`RootTemplateAnnotation`** is the analogous marker that turns a target-language root into a template root (carries a ref `applicableConcept`).

> **A `TemplateDeclaration` used as a reduction target requires at least one `TemplateFragment`.** Without it the rule fires but emits nothing — the matched input simply disappears from the output, which looks identical to "the rule never matched". If a refactor splits inline content into a standalone `TemplateDeclaration` and the output silently loses those elements, the missing `TemplateFragment` on the produced subtree is the first thing to check. The fragment goes on the *exact* node that should replace the input — typically the outermost element of the template's `contentNode`.

> **Multiple sibling macros on the same `smodelAttribute` slot are chained in attribute-list order, and that order is semantics.** MPS does *not* treat co-located macros as an unordered set: `TemplateNode` builds a linked list from the `smodelAttribute` children preserving their order, and `TemplateProcessor` walks that chain, each macro invoking the rest of the chain. So the order in which children sit under `smodelAttribute` determines the evaluation nesting.
>
> - **`$LOOP$` before `$IF$`** ⇒ `$IF$` is evaluated once *per iteration*, with that iteration's node as input (the condition gates each emitted element).
> - **`$IF$` before `$LOOP$`** ⇒ `$IF$` is evaluated *once*, in the outer context, gating the whole loop (false ⇒ the alternative consequence runs once if present, otherwise nothing is emitted instead of the loop).
>
> The canonical `LoopMacro` + `CopySrcNodeMacro` pair *looks* order-independent only because `$COPY_SRC$` is terminal — the pair happens to be order-insensitive in that one case. Do not generalize from it. When grafting a macro onto a node that already carries one, the JSON child `position` in the `smodelAttribute` role *is* the execution order — choose it deliberately.

## CopySrcNodeMacro (minimal, no query)

Equivalent to `$COPY_SRC$` with the implicit `node` as source:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.CopySrcNodeMacro"
}
```

With an explicit source expression (e.g. `node.body` instead of `node`), add a `sourceNodeQuery` child:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.CopySrcNodeMacro",
  "children": [
    { "role": "sourceNodeQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList returning a single node<> */ ]}
        ]
      }
    ]}
  ]
}
```

## CopySrcListMacro

List-valued sibling of `CopySrcNodeMacro`. Attached to a target node, it replicates that node once per element of the source sequence and copies each element into the slot (running reductions). Body returns `sequence<node<>>`:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.CopySrcListMacro",
  "children": [
    { "role": "sourceNodesQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList — e.g. `node.states` */ ]}
        ]
      }
    ]}
  ]
}
```

**COPY_SRCL vs. LOOP+COPY_SRC — when to use which.** They are equivalent for the simple case *"replicate this target node once per element of a source sequence and copy each element into it"*: `CopySrcListMacro(body = node.states)` produces the same output as `LoopMacro(body = node.states) + CopySrcNodeMacro()` on the same target.

Prefer `COPY_SRCL` when that is all you need — one macro, one query. Prefer `LOOP + COPY_SRC` when you need any of the extra power that `CopySrcNodeMacro.sourceNodeQuery` provides:

- **copy something other than the current element** — give `CopySrcNodeMacro` a `sourceNodeQuery` that navigates into the looped node (e.g. `node.someChildren.first` to copy a selected child instead of the looped node itself);
- **attach more macros to the same target** — the LOOP surface is a separate macro, so `PropertyMacro`/`IfMacro`/`ReferenceMacro` siblings can run inside each iteration while COPY_SRC still handles the content;
- **copy a sibling / ancestor expression** rather than a subtree of the current `node`.

## PropertyMacro

Overrides the owning target node's property. The `propertyId` property (or the legacy `name_DebugInfo`) identifies which property; the body is a `PropertyMacro_GetPropertyValue` returning the target property's type.

**`propertyId` is an encoded three-segment string, not a node reference.** The format is:

```
<language-uuid>/<concept-id>/<property-id>
```

Example — the literal value for the `name` property of `INamedConcept` (used wherever a generator computes a `name`):

```
ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001
```

> ⚠️ **Do not pass an `r:.../<id>` node reference here.** `propertyId` is a plain `string` property, not a reference role, and the write path does not validate it. A wrong value (node ref, short id, just the property id, a name like `"name"`) is accepted on write. **Run `mps_mcp_check_root_node_problems` after setting it** — the check now decodes `propertyId` (and `linkId` for `ReferenceMacro`) and reports a malformed, blank, or non-resolving value as a structure-level error pointing at the offending macro. If you skip the check, a wrong value surfaces only at generation time as a generic "an error occurred" failure with no useful pointer back to the macro and no autofix.
>
> Get the segments via `mps_mcp_get_concept_details` on the owning concept (use `languageReference` for the language UUID and `conceptReference` / property `id` for the other two segments) or by inspecting an existing `PropertyMacro` on the same target property with `mps_mcp_print_node`. See `references/property-and-reference-ids.md` in the `mps-quotations` skill root after loading that companion skill from the same origin for the same encoding documented from the antiquotation side.

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.PropertyMacro",
  "properties": [
    { "name": "propertyId", "value": "ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" },
    { "name": "name_DebugInfo", "value": "name" }
  ],
  "children": [
    { "role": "propertyValueFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue",
        "children": [
          { "role": "body", "nodes": [ /* StatementList — e.g. `node.name` */ ]}
        ]
      }
    ]}
  ]
}
```

`name_DebugInfo` is optional but recommended — it is the human-readable property name MPS shows in the editor and uses for migrations; it does not affect runtime behavior.

## IfMacro

Gates the owning target subtree. Body returns `boolean`:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.IfMacro",
  "children": [
    { "role": "conditionFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.IfMacro_Condition",
        "children": [
          { "role": "body", "nodes": [ /* StatementList — e.g. `node.states.isNotEmpty` */ ]}
        ]
      }
    ]}
  ]
}
```

**Do not duplicate an `IfMacro` with a negated condition as a sibling** — use the `alternativeConsequence` child instead. It holds the else-branch as a `RuleConsequence` (typically an `InlineTemplateWithContext_RuleConsequence` carrying a target subtree, or a `TemplateDeclarationReference`). This keeps the condition single-sourced and lets the else-branch reuse macros/fragments:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.IfMacro",
  "children": [
    { "role": "conditionFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.IfMacro_Condition",
        "children": [ { "role": "body", "nodes": [ /* boolean StatementList */ ]} ]
      }
    ]},
    { "role": "alternativeConsequence", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence",
        "children": [
          { "role": "templateNode", "nodes": [ /* else-branch target subtree */ ]},
          { "role": "contextNode",  "nodes": [ /* optional context */ ]}
        ]
      }
    ]}
  ]
}
```

## LoopMacro

Repeats the owning target subtree once per element. Most typically used to generate node's child collections. Body returns `sequence<node<>>`:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.LoopMacro",
  "children": [
    { "role": "sourceNodesQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList — e.g. `node.states` */ ]}
        ]
      }
    ]}
  ]
}
```

Inside the looped subtree, the implicit `node` variable rebinds to the *current element* of the sequence, not the outer source.

## TemplateCallMacro

Invokes another `TemplateDeclaration` with the current `node` (or an explicit source) as argument. The `template` reference is required; `sourceNodeQuery` is optional and re-binds `node` for the callee:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.TemplateCallMacro",
  "references": [
    { "role": "template", "target": "<TemplateDeclaration-node-ref>" }
  ],
  "children": [
    { "role": "sourceNodeQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery",
        "children": [
          { "role": "body", "nodes": [ /* e.g. `node.onEntry` */ ]}
        ]
      }
    ]}
  ]
}
```

## Verbatim patterns from the StateChart *sample*

> **These come from the MPS-bundled `jetbrains.mps.samples.StateChart` sample (`samples/stateChart/`), NOT from your project's language.** Concept and role names below (`availableTriggers`, `isInitial`, `onTransit`, `reduce_NonFinalState`, `reduce_AnyState`, …) are the *sample's* — your language will use different names. Copy the *macro-combination shapes*, not the concept/role identifiers.

The sample's `generator/template/main@generator.mps` demonstrates combinations worth adapting:

- **LoopMacro + CopySrcNodeMacro on the same element** (iterate + delegate to reductions). On the target `<state>` XmlElement, attach both as `smodelAttribute` siblings — LoopMacro over `node.states`, CopySrcNodeMacro with no query. Net effect: for each child state, emit a `<state>` that is then *reduced* by the `State` reduction rule (splitting into `<state>` vs `<final>`). Equivalent in this form to `CopySrcListMacro(node.states)` on the same element.
- **LoopMacro + CopySrcNodeMacro with `sourceNodeQuery`** (iterate + copy a *subnode*). Same target `<state>` but `CopySrcNodeMacro` has a `sourceNodeQuery` body `node.availableTriggers.first`. For each state the loop binds `node` to, the COPY_SRC emits content derived from that state's first available trigger rather than from the state itself. This is the pattern `CopySrcListMacro` cannot express, because COPY_SRCL has no per-element re-selection hook.
- **IfMacro + PropertyMacro on an attribute value** (conditional attribute). The XML attribute `initial` is guarded by IfMacro (`node.states.any{it => it.isInitial}`) and its text value computed by PropertyMacro (`node.states.findFirst{it => it.isInitial}.name`). The IfMacro suppresses the whole attribute when no initial state exists.
- **TemplateCallMacro with rebinding sourceNodeQuery** (parameterized sub-template). Inside `reduce_NonFinalState`, a TemplateCallMacro calls `reduce_AnyState` with the transition's `onTransit` as its `sourceNodeQuery` — re-binding `node` in the callee to the operation list.
- **TemplateFragment on the target root of a reduction template** (mark the output). `reduce_NonFinalState` is an XmlElement whose `smodelAttribute` child is a `TemplateFragment` — this is what tells MPS "*this* element replaces the input `State`, not the scaffolding that wraps it."
- **RootTemplateAnnotation on a root template** (`map_StateChart`). The `XmlFile` root carries a `RootTemplateAnnotation` with `applicableConcept = StateChart`, turning an ordinary target-language root into a generator root template reachable from `Root_MappingRule.template`.
