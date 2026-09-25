## Creating a method with `mps_mcp_parse_java_and_insert`

For a method whose modifiers a plain Java signature already expresses, parse the whole method — signature and body together — straight into the `ConceptBehavior` root, instead of building a JSON blueprint:

```json
{
  "code": "public int getPrecedence() { return 5; }",
  "featureKind": "METHOD",
  "contextNodeRef": "<ConceptBehavior-node-ref>",
  "insert": { "mode": "child", "parentRef": "<same-ConceptBehavior-node-ref>", "role": "method" }
}
```

`contextNodeRef` and `insert.parentRef` are the **same** `ConceptBehavior` node. The parser converts the parsed method into a `ConceptMethodDeclaration` and inserts it into the behavior's `method` role in one call. Only MPS-typed return/parameter types (`node<X>`, `sequence<node<X>>`, …) may still need fixing up afterward.

How the Java modifiers carry over:

| Java | Result |
|---|---|
| `static` | `isStatic: true` (and `isVirtual` stays `false` — a `virtual static` method has no Java spelling) |
| `abstract` | `isAbstract: true` **and** `isVirtual: true`, keeping the empty `body` `StatementList` the parser produced (the role is obligatory — see the `abstract` note above) |
| `synchronized` | `isSynchronized: true` |
| `final` | **dropped.** `ConceptMethodDeclaration` only accepts `isFinal` on a *virtual* method (otherwise the `isFinal does not make sense on the non-virtual method` check fires), and a parsed Java method is never virtual unless it is `abstract` — while `abstract final` is not legal Java in the first place. So `final void m() {}` silently yields a plain non-virtual method. For a genuinely final virtual method, set `isVirtual` and `isFinal` with `mps_mcp_update_node` after parsing. |
| `private` / `protected` / `public` | carried over as the `visibility` child, as in any BaseLanguage method |

Inside the body, a Java field access on the receiver is rewritten to real smodel access against the owning concept: `this.<property>` becomes an `SPropertyAccess`, `this.<singleChildRole>` (and any reference role) an `SLinkAccess`, and `this.<multipleChildRole>` an `SLinkListAccess` — so `String n() { return this.name; }` type-checks as written, including for properties inherited from a super-concept or an interface such as `INamedConcept`. The lookup reads the concept's *declaration*, so it works on a language that has not been rebuilt since the concept was created. A name that matches no property or link on the concept is deliberately left as an unresolved `FieldReferenceOperation` rather than guessed at — fix those by hand. Method calls are not rewritten: `this.someBehaviorMethod(...)` still needs the usual post-parse resolution — for that, read `references/parse-java-tips.md` in the `mps-baselanguage` skill root after loading that companion skill from the same origin.

Use this METHOD call instead of a JSON blueprint whenever the method needs no `virtual` (non-abstract), `virtual static`, `overriddenMethod`, or `thisConcept` (the current concept value available inside a `virtual static` body, typed `concept<OwningConcept>`) — none of these has a Java keyword or syntax the parser recognizes, so they must be set via `mps_mcp_update_node` after parsing, or the method built as a JSON blueprint from the start (`json-blueprints.md`).

Once a `ConceptMethodDeclaration` stub already exists — e.g. a JSON blueprint used specifically for one of the constructs above — use `featureKind: "STATEMENTS"` with `insert.mode: "replace"`/`"child"` targeting its `body` to fill in just the logic, as for any other method body.
