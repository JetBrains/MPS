## What the Java parser CAN handle

Use `mps_mcp_parse_java_and_insert` freely for:

- `featureKind: "METHOD"` — whole method including signature (see `references/java-parser-capabilities/unsupported-and-workarounds.md` for the caveat)
- `featureKind: "EXPRESSION"` — replacing a single expression node
- `featureKind: "STATEMENTS"` — replacing or inserting a statement block
- `featureKind: "FIELD"` — single field declarations (for adding to LINKS/CONCEPTS classes)

Things that resolve correctly:

- Static Java method calls: `RulesFunctions_BaseLanguage.check(...)`, `SNodeOperations.xxx(...)`,
  `AbstractCatchClause__BehaviorDescriptor.getCaughtTypes_id2FJPm3OMxhX.invoke(...)`
- Identifiers that are **already known in the context** — local variables, parameters,
  and references to the rule's applicable node (e.g. `throwStatement`) resolve to their
  MPS model equivalents
- `LINKS.xxx` and `CONCEPTS.xxx` field references (inner-class constants) resolve fine
  as long as they already exist on the target class
- `MetaAdapterFactory.getConcept(...)`, `MetaAdapterFactory.getReferenceLink(...)` resolve,
  but see the note on `getContainmentLink` in `references/java-parser-capabilities/unsupported-and-workarounds.md`

## Java 8 lambdas → closures

Lambda expressions parse and insert: each becomes a `jetbrains.mps.baseLanguage.closures.ClosureLiteral`, and the closures language is auto-imported. They are **not** plain Java in the MPS sense — they cross into the `closures` extension. A lambda only type-checks against a matching **functional-type** target (e.g. `() -> 42` fits a `{() => int}` slot, but not an `int` slot); untyped parameters get the closures `var` type and rely on the target to infer. A type mismatch at the destination is surfaced in the tool response's `problems` array — **not** as a parse error — so inspect `problems` after inserting a lambda.
