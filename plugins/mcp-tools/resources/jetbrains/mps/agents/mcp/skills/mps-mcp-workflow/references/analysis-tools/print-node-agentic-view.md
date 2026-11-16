## `mps_mcp_print_node` — `AGENTIC VIEW`, and which format to use

### Which format for which task

| You want to | Use |
|---|---|
| Understand a node or root: its shape, roles, values, which features are unset; find the id of a node to edit; follow a reference | `format: "AGENTIC VIEW"` |
| Read code or a notation the way the user sees it | `format: "PLAIN TEXT"` |
| Get a JSON blueprint for a mutation tool, or exact JSON for a script | `format: "JSON"`, `deep=true`, on the subtree you will change, not the whole root |
| See what an editor draws: layout, text styles, colours, diagrams | `HTML` or `IMAGE` (`references/analysis-tools/print-node-output.md`) |
| Compare alternative editors (editor hints) | `PLAIN TEXT` or `HTML` with `editorHints` |
| Read a whole model or module | `mps_mcp_get_compact_project_structure` (below) |
| Count, filter or post-process the nodes of a model with a script | JSON: `mps_mcp_get_project_structure` and `scripts/mps_dump.py` |

Measured on six roots: `AGENTIC VIEW` answered every structure question, node ids and reference targets included, in one call per root. It cost a quarter to two fifths of JSON deep plus a script, and its text is 4–8 times smaller than compact JSON. `PLAIN TEXT` with `editorHints: "reflective"` prints a similar tree, but without node ids and reference targets; prefer `AGENTIC VIEW`.

An edit that names its target by reference (`mps_mcp_update_node` SET PROPERTY or SET REFERENCE, `mps_mcp_alter_nodes` MOVE_CHILD) needs only the ids from `AGENTIC VIEW`. Print JSON only when the tool takes a blueprint.

### What it prints

One line per node, indented two spaces per level, the whole subtree (`deep` is ignored). The text is read-only: no tool takes it as input.

```
# AGENTIC VIEW 1 | model m0=r:18c2…(jetbrains.mps.samples.Kaja.editor) | node reference = <model>/<id>
# models m1=r:b567…(jetbrains.mps.samples.Kaja.structure)
# concepts jetbrains.mps.baseLanguage: DotExpression … | jetbrains.mps.lang.editor: CellModel_Collection CellModel_Constant …
# deprecated, printed only when set: CellModel_Collection: vertical=false gridLayout=false
ConceptEditorDeclaration #3308300503039647687 IfStatement_Editor* virtualPackage="command" -> conceptDeclaration=IfStatement@m1#3308300503039647678
  empty: children inspectedCellModel contextHints
  cellModel: CellModel_Collection #3308300503039647690 usesBraces=false* … attractsFocus=noAttraction*
    empty: references actionMap keyMap parentStyleClass; children addHints removeHints renderingCondition …
    childCellModel[0]: CellModel_Constant #3308300503039647693 text="if" … -> parentStyleClass=KeyWord#291854204099821584
```

Header lines start with `#`:

- `m0` is the model of the printed node. Other models that references point into get aliases `mN`. `!foreign` after a model means it belongs to another open project (provenance, not a ban).
- `# concepts` lists every concept of the printout under its language. The qualified name is `<language>.structure.<Concept>`. Two concepts with the same short name are printed as `<language>.<Name>` in the tree and in `# deprecated`.
- `# deprecated` names, per concept, the deprecated features. They are printed in the tree only when set; an unset boolean one reads `false`.
- `# cut: P of T nodes printed (the whole printout is X chars); …` appears when the printout was cut (see below).

A node line is `role[index]: Concept #id name prop=value … -> ref=target@mN#id …`:

- **Node reference** = `<model>/<id>`, with the model of `m0`: `r:18c2…(jetbrains.mps.samples.Kaja.editor)/3308300503039647693`. Pass it as `nodeReference` to any tool.
- `[index]` is the zero-based position in a multi-valued role, also for a single child. A single-valued role has none.
- A bare word or quoted string after `#id` is the node's name; `*` after it: not stored, computed (`IfStatement_Editor*`).
- `prop=value`: a stored property. Strings are quoted, with JSON escapes.
- `prop@Owner=…`: two printed features of one node share a name; the suffix is the concept that declares each (`isDeprecated@Classifier`). It is not a model alias.
- `prop=value*`: the property is **not stored**; the value is what reading it returns, a default (`false`, an enum default) or a computed value (`resolveInfo="Foo"*`).
- `-> ref=target@mN#id`: a reference, with the target's name (quoted unless a plain word), model alias and node id. Without `@mN` the target is in `m0`. The target's reference is `<model of mN>/<id>`. A line can carry several. `-> ref=? !unresolved` with neither `@mN` nor `#id` stores no target.
- `empty:` under a node lists what is unset: `properties` (no value; an unset string property reads as empty), `references`, `children` (empty roles). A feature that is not on the node line, not a child line, not on the `empty:` line and not in `# deprecated` is not declared for the concept, or is an unset `BaseConcept` feature (`virtualPackage`, `alias`, `shortDescription`); a `!conceptNotLoaded` node shows no unset features.
- `@attr:` in place of a role is an attribute of the node it is indented under: a generator macro, a template fragment, an annotation. It sits in that node's `smodelAttribute` role. `@prop(x):`, `@ref(x):` and `@child(x):` annotate the node's property, reference or child role `x` (`$PROPERTY$` and `$REF$` macros).
- Flags: `!required` (on the `empty:` line, glued to the name: `body!required`, a role or reference the concept requires), `!unresolved` (the target, printed `?`, cannot be found), `!undeclared` (stored, but the concept does not declare it), `!deprecated`, `!raw` (a stored value its type cannot render), `!conceptNotLoaded` (the node's language is not built, or no longer declares its concept; only stored features are shown and the envelope warns).

Not printed: role cardinalities and target concepts, documentation, and the `alias` and `shortDescription` of concepts. Use `mps_mcp_get_concept_details` for those.

### Size: `nodeDepth` and the cut

- `nodeDepth: n` prints n levels below the node (`0` = the node alone). A node whose descendants are left out ends with `(+N)`, the number of nodes below it.
- A printout longer than `maxInlineBytes` (default 20000) is **cut**, not written to a file. The cut fills the budget level by level: the node, then all its children, then all children of each child in turn, and so on while the printout fits. A node is printed with all its children or none; a node without its children ends with `(+N)`. The `# cut` line and a warning say so, and `details.agenticView`, always `{nodes, printedNodes}`, adds `cut: true` and `wholeChars`. The size counts the text as a JSON string.
- To continue, print the `(+N)` nodes you need by their references, several in one turn. Do not raise `maxInlineBytes` to get past the cut: the header says how large the whole printout is, and a result of that size costs more than the few subtrees you need. `details.agenticView.wholeChars` holds the same number.
- Only when even the node alone does not fit is `data` the path of a `.txt` file with the whole printout as raw text, not an envelope.

`editorHints` does not apply and is ignored with a warning.

### Code as text: `codeAsText`

For a root that mixes structure and code (a behavior, a generator, a template), `codeAsText: true` prints each outermost BaseLanguage statement or expression (subconcepts of other languages included) as its node line followed by `= "<text>"`: its text in the editor (the project's hint settings, as for `PLAIN TEXT`), whitespace collapsed to single spaces, then `(+N)` for the nodes inside it; its `empty:` line leaves out empty child roles. Its attributes, also those of nodes inside it, stay listed under it with their own ids, so macros are never hidden; one that annotates an inner node is labelled `@prop(x) on #<id>:` with that node's id. `details.agenticView.collapsed` counts these lines; `nodeDepth` and the cut count them as one node each. The text is for reading: an inner node's id needs a print of that node without the flag. Code the editor does not show (an inspector-only query) is printed as node lines, with a warning; if the editor cannot be built or rendered, all code is. To read plain code, use `PLAIN TEXT`.

### A whole model or module: `mps_mcp_get_compact_project_structure`

`startingPoint` is a model (reference or name), a module (reference or name) or a node reference; `nodeDepth` counts levels below each root. A model prints as one section: the header above (its own `m0`, `# models`, `# concepts`, `# deprecated`), then every root at depth 0, in model order, with its subtree. An empty model prints its header line only. A module prints `# module <name> | <N> models`, then one section per model, each with its own header, aliases and legends. A node reference prints exactly what `mps_mcp_print_node` prints.

The cut works across all roots of all sections: every root first, then level by level, so a large module degrades to a list of roots with `(+N)`. The `# cut` line follows the first header. Only when even the root lines do not fit is `data` a raw `.txt` file. `details.agenticView` adds `models` and `roots`.
