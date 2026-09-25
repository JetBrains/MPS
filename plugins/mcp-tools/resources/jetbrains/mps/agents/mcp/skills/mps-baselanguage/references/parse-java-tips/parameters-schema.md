## `parameters` JSON Schema

The tool takes a single `parameters` argument holding a JSON object — sent either as real JSON or as that object written as a string; both decode identically. Shape:

```
{
  "code": string,                            // required, Java snippet to parse (max 50 000 chars)
  "featureKind": string,                     // required, one of:
                                             //   CLASS, NESTED_CLASS, FIELD, METHOD,
                                             //   STATEMENTS, CLASS_CONTENT, EXPRESSION
                                             //   FIELD/METHOD/NESTED_CLASS are parsed as
                                             //   class members; the kind is advisory (see `references/parse-java-tips/parameters-rules.md`)
  "recovery": boolean,                       // optional, default true
  "contextNodeRef": string,                  // optional SNodeReference (r:...) used as parser
                                             //   context. REQUIRED for FIELD, METHOD,
                                             //   NESTED_CLASS, CLASS_CONTENT. Must resolve to a
                                             //   Classifier (class/interface), or — for METHOD /
                                             //   CLASS_CONTENT only — a ConceptBehavior; in that
                                             //   case parsed methods convert to
                                             //   ConceptMethodDeclaration in the behavior's
                                             //   `method` role (see the mps-aspect-behavior skill).
  "insert": {                                // required
    "mode": "root" | "child" | "replace" | "console",
                                             // required. "console" replaces the current MPS
                                             //   Console input command. For child/replace, if the
                                             //   parentRef/targetRef resolves to a node inside the
                                             //   current console command, it is edited in place
                                             //   without saving.
    "modelRef": string,                      // required when mode=="root" (SModelReference)
    "parentRef": string,                     // required when mode=="child" (SNodeReference)
    "targetRef": string,                     // required when mode=="replace" (SNodeReference)
    "role": string,                          // required when mode=="child" (containment role)
    "position": int,                         // optional, 0-based; -1 or absent = append.
                                             //   For a multi-cardinality child role, a value at or
                                             //   beyond the current child count is clamped to an
                                             //   append (not rejected); a negative value other than
                                             //   -1 is rejected.
                                             //   For mode=="root", only -1/absent is allowed;
                                             //   any other value is rejected (roots always append).
    "virtualPackage": string                 // optional, root insertions only
  },
  "postProcess": {                           // optional
    "importUsedLanguages": boolean,          // default true
    "resolveReferences": boolean             // default true
  }
}
```
