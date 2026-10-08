# Indentation Model

Counter-intuitive principle from the MPS docs: **`with indent` (and `increase/decrease depth`) does not produce any whitespace by itself.** These operations only move a per-output depth counter — the *indentation buffer*. Nothing is written to the output until you call `indent buffer`, which emits the whitespace corresponding to the current depth.

## Mental model

```
indentation buffer := 0
┌───────────────────────────────────────────┐
│ increase depth / with indent {...}        │  → buffer++ (no output)
│ decrease depth                            │  → buffer-- (no output)
│ NodeAppendPart with withIndent = true     │  → buffer++ while evaluating the part
│ indent buffer                             │  → emit "\t" × buffer into output
│ append \n                                 │  → emit newline (does NOT auto-indent)
└───────────────────────────────────────────┘
```

## Rules of thumb

1. **Always pair `append \n` with `indent buffer` on the next line that should be indented.** MPS won't auto-indent after a newline; it's your responsibility to ask for it.
2. **Prefer `with indent { ... }` over `increase depth` / `decrease depth`.** The block form cannot leak depth on an early `return` or exception and matches how readers think about scope.
3. **Use `increase depth` / `decrease depth` when the scope is not a block.** The baseLanguage `BlockStatement_TextGen` does this because the opening `{` and closing `}` are emitted in the same body, but the nested statements dispatch to a separate rule whose `\n / indent buffer` must see `depth+1`.
4. **Use the `withIndent` flag on `NodeAppendPart` for one-shot dispatch at `depth+1`.** baseLanguage's `ClassConcept_TextGen` uses `append visibility with indent node.visibility` so that `Visibility_TextGen`, when it emits `\n / indent buffer`, prints at the class-member depth without introducing a `with indent {}` wrapper.
5. **Collections already dispatch per element; wrap them in `with indent { ... }` to indent every element.** `$list{node.statements}` does *not* indent on its own.

## Canonical "start a new line at the current depth" pattern

```
append \n ;
indent buffer ;
append {<} ${node.tagName} ... ;
```

## Worked example — `with indent { ... }` from `IfStatement_TextGen`

```
append \n ;
indent buffer ;
append {if (} ${node.condition} {) {} ;
with indent { append ${node.ifTrue} ; }
append \n {}} ...
```

`WithIndentOperation` holds a single `body` child of type `StatementList`. See `references/json-blueprints.md` for the full AST.

## Worked example — `increase depth` / `decrease depth` from `BlockStatement_TextGen`

```
if (node.parent.isInstanceOf(IfStatement)) { append { {} ; }
else                                       { append \n {{} ; }
increase depth ;
if (node.statements.isNotNull)             { append ${node.statements} ; }
decrease depth ;
append \n {}} ;
```

The opening `{` and closing `}` are emitted in the same body, but the nested statements dispatch to a separate rule that emits its own `\n / indent buffer` — those must see `depth+1`.

## Worked example — `withIndent` flag on `NodeAppendPart` from `ClassConcept_TextGen`

The `with indent` after `visibility` here is the **Inspector flag on `NodeAppendPart`**, not a `WithIndentOperation`:

```
append visibility with indent node.visibility ;
```

The flag is a property `withIndent` directly on `NodeAppendPart`. The same `withIndent` / `withSeparator` / `separator` property pattern applies to `CollectionAppendPart` (for `$list{...}` with separator text).
