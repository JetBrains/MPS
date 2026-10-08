# TextGen Statements and `append` Parts

Inside a textgen `body` (`StatementList`) you use these concepts. All are under `jetbrains.mps.lang.textGen.structure` unless noted.

## `AppendOperation` and its parts

The canonical output primitive. One `AppendOperation` statement owns an ordered `part` children list. Each part is one of:

| Part concept | Surface syntax | Meaning |
|---|---|---|
| `ConstantStringAppendPart` (property `value`) | `{literal text}` | Emit literal text verbatim |
| `NodeAppendPart` (child `value`) | `${expression}` | Evaluate a string expression and emit it |
| `CollectionAppendPart` (child `list`, optional child `separator`) | `$list{expr}` or `$list{expr with <sep>}` | Iterate a list of nodes, dispatch to each one's own textgen rule, optionally joined by a separator |
| `NewLineAppendPart` | `\n` | Emit a newline |

Multiple parts chain in a single `append` statement:

```
append {<} ${XmlCharEscape.escapeIdentifier(node.tagName)} ;     // two parts: literal + expression
append {&} ${node.entityName} {;} ;                               // three parts
```

For list dispatch:

```
append $list{node.content} ;                                      // children serialise via their own textgen
append $list{node.attributes} ;                                   // separator omitted
```

`$list{}` dispatches on each element's concept and calls the matching `ConceptTextGenDeclaration.textGenBlock`. Items lacking a textgen rule emit nothing.

For the `with <sep>` variant, add a `separator` child alongside `list` — typically another `AppendOperation` subtree, or a single `ConstantStringAppendPart`-like expression, depending on the `separator` role's concept (verify via `mps_mcp_get_concept_details` on `CollectionAppendPart` before inserting).

A `\n` emission is simply `{ "concept": "jetbrains.mps.lang.textGen.structure.NewLineAppendPart" }` placed as a `part` child — no properties, no children.

## Layout / indentation statements

| Concept | Surface | Effect on indentation buffer | Effect on output |
|---|---|---|---|
| `IndentBufferOperation` | `indent buffer ;` | reads | emits the current depth's whitespace into the output stream |
| `WithIndentOperation` (child `body`) | `with indent { ... }` | `depth++` for the scope of `body`, then `depth--` | none by itself |
| `IncreaseDepthOperation` | `increase depth ;` | `depth++` unconditionally | none |
| `DecreaseDepthOperation` | `decrease depth ;` | `depth--` unconditionally | none |
| `NodeAppendPart` with `withIndent = true` | `append <part> with indent` | transiently `depth++` while evaluating this part | emits child text with the extra level |

See `references/indentation-model.md` for the full mental model and worked examples.

## Binary output: `write`

`BinaryWriteOperation` (`jetbrains.mps.lang.textGen.structure.BinaryWriteOperation`, alias `write`) accepts a `byte[]` expression and produces a binary file. **Cannot be mixed** with text `append`s in the same textgen: a single `ConceptTextGenDeclaration` emits either text or bytes. An intention toggles a rule between text and binary modes.

```
write ${node.generateImageBytes()} ;
```

## Reporting generation errors: `found error`

`FoundErrorOperation` (alias `found error`) aborts generation of the current file with an error message. Its single optional child is the `Expression` producing the message:

```
if (node.name.isEmpty) { found error "class has no name" ; }
```

## Control flow

Textgen bodies are ordinary `StatementList`s, so all BaseLanguage statements are available: `IfStatement`, `LocalVariableDeclarationStatement`, `ReturnStatement`, loops, casts, method calls. The `return` statement exits the body early (common when deciding whether to close an element inline vs. across multiple lines).

## Accessors available in the body

Textgen bodies can freely call into smodel and behavior:

- `node` — the implicit `NodeParameter` (the node being serialised)
- `node.<property>` — `SPropertyAccess`
- `node.<childRole>` — `SLinkAccess` (single) or `SLinkListAccess` (list); usable as the `value` of a `NodeAppendPart` or the `list` of a `CollectionAppendPart`
- `node.prev-sibling` / `node.next-sibling` — `Node_GetPrevSiblingOperation` etc.; essential for context-dependent formatting
- `node.isInstanceOf(Concept)` + cast `left:Concept.method()` — dispatch on structural position
- `node.behaviorMethod()` — `Node_ConceptMethodCall`; invoke the concept's behavior
