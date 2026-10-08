# Type-Lattice Rules — Subtyping, Replacement, Comparison, Substitute

## `SubtypingRule`

Declares that instances of one type concept are subtypes of another. The body returns the direct supertype(s) as type nodes.

```
subtyping rule long_extends_float {
  applicable for concept = LongType as longType
  rule {
    return <float>;
  }
}
```

Return multiple supertypes via `nlist<>`:

```
subtyping rule supertypesOf_linkedlist {
  applicable for concept = LinkedListType as llt
  rule {
    nlist<> res = new nlist<>;
    res.add(<list<%(llt.elementType)%>>);
    res.add(<deque<%(llt.elementType)%>>);
    res.add(<stack<%(llt.elementType)%>>);
    return res;
  }
}
```

### `SubtypingRule` JSON blueprint

```json
{
  "concept": "jetbrains.mps.lang.typesystem.structure.SubtypingRule",
  "properties": [
    { "name": "name", "value": "long_extends_float" }
  ],
  "children": [
    {
      "role": "applicableNode",
      "nodes": [{
        "concept": "jetbrains.mps.lang.typesystem.structure.ConceptReference",
        "properties": [{ "name": "name", "value": "longType" }],
        "references": [{ "role": "concept", "target": "<LongType-node-ref>" }]
      }]
    }
  ]
}
```

Fill in `body` (a `StatementList`) with `ReturnStatement` → `Quotation` for the supertype — see `references/json-blueprints.md` for the AST. For `nlist<>` supertypes use BaseLanguage `LocalVariableDeclarationStatement` + `nlist.add(...)` calls, then `return res;`.

FQN: `jetbrains.mps.lang.typesystem.structure.SubtypingRule`
Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1175147670730`

## `InequationReplacementRule`

(Editor label: "replacement rule".) Replaces a pending subtyping inequation `subType <: superType` with additional constraints. Used for structural subtyping (e.g. covariant generics, null-type rules). Both patterns match *type nodes*, not AST nodes.

```
replacement rule sequence_subtypeOf_sequence
  applicable for concept = SequenceType as left <: concept = SequenceType as right
  custom condition: true
  rule {
    if (right.elementType.isNotNull) {
      infer left.elementType :<=: right.elementType;
    }
  }
```

```
replacement rule any_type_supertypeof_nulltype
  applicable for concept = NullType as nullType <: concept = BaseConcept as baseConcept
  custom condition: ()->boolean {
    !(baseConcept.isInstanceOf(RuntimeTypeVariable));
  }
  rule {
    if (baseConcept.isInstanceOf(PrimitiveType) || baseConcept.isInstanceOf(PrimitiveTypeDescriptor)) {
      error "null type is not a subtype of primitive type" -> equationInfo.getNodeWithError();
    }
  }
```

Fields:
- `applicableNode` — LHS type pattern (the subtype)
- `supertypeNode` — RHS type pattern (the supertype)
- `isApplicableClause` (0..1) — `IsReplacementRuleApplicable_ConceptFunction` used as the custom condition guard
- `overridesFun` (0..1) — `OverridesConceptFunction` to suppress inherited rules
- `body` — can call `infer`, report errors, etc. `equationInfo.getNodeWithError()` gives the AST node that triggered the inequation.
- `isWeak` property — if `true`, the rule is a hint, not authoritative

FQN: `jetbrains.mps.lang.typesystem.structure.InequationReplacementRule`
Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1201607707634`

## `ComparisonRule`

Tells the solver when two type nodes are structurally equal (returns `boolean`). Used when two type nodes that are not literally `==` should still be considered the same type.

```
comparison rule any_type_comparable_with_nulltype
  applicable for concept = BaseConcept as baseConcept , concept = NullType as nullType
  rule {
    if (baseConcept.isInstanceOf(PrimitiveType) || baseConcept.isInstanceOf(PrimitiveTypeDescriptor)) {
      return false;
    }
    return true;
  }
  weak = false
```

```
comparison rule interface_node_types_are_comparable
  applicable for concept = SNodeType as sNodeType1 , concept = SNodeType as sNodeType2
  rule {
    if (sNodeType1.concept.isInstanceOf(InterfaceConceptDeclaration) ||
        sNodeType2.concept.isInstanceOf(InterfaceConceptDeclaration)) {
      return true;
    }
    return false;
  }
  weak = false
```

Fields:
- `applicableNode` — first type pattern
- `anotherNode` — second type pattern
- `body` — returns `boolean`
- `isWeak` property — if `true`, the rule is a hint, not authoritative

### `ComparisonRule` JSON blueprint

```json
{
  "concept": "jetbrains.mps.lang.typesystem.structure.ComparisonRule",
  "properties": [
    { "name": "name", "value": "myTypes_comparable" }
  ],
  "children": [
    {
      "role": "applicableNode",
      "nodes": [{
        "concept": "jetbrains.mps.lang.typesystem.structure.ConceptReference",
        "properties": [{ "name": "name", "value": "firstType" }],
        "references": [{ "role": "concept", "target": "<FirstType-node-ref>" }]
      }]
    },
    {
      "role": "anotherNode",
      "nodes": [{
        "concept": "jetbrains.mps.lang.typesystem.structure.ConceptReference",
        "properties": [{ "name": "name", "value": "secondType" }],
        "references": [{ "role": "concept", "target": "<SecondType-node-ref>" }]
      }]
    }
  ]
}
```

FQN: `jetbrains.mps.lang.typesystem.structure.ComparisonRule`
Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1188811367543`

## `SubstituteTypeRule`

Replaces a type node with a different node during type-checking — useful when the actual type depends on runtime configuration or an annotation. The body evaluates to the substitute node, or `null` to leave the type unchanged.

```
substitute type rule substituteType_MyType {
  applicable for concept = MyType as mt
  substitute {
    if (mt.isConditionSatisfied()) {
      return new node<IntegerType>;
    }
    null;
  }
}
```

```
substitute type rule substituteType_SubstituteAnnotation {
  applicable for concept = SubstituteAnnotation as substituteAnnotation
  substitute {
    if (substituteAnnotation.condition.isSatisfied(attributedNode)) {
      return substituteAnnotation.substitute;
    }
    null;
  }
}
```

`attributedNode` — implicit variable available in the body that refers to the AST node the type annotation was attached to.

### `SubstituteTypeRule` JSON blueprint

```json
{
  "concept": "jetbrains.mps.lang.typesystem.structure.SubstituteTypeRule",
  "properties": [
    { "name": "name", "value": "substitute_WrapperType" }
  ],
  "children": [
    {
      "role": "applicableNode",
      "nodes": [{
        "concept": "jetbrains.mps.lang.typesystem.structure.ConceptReference",
        "properties": [{ "name": "name", "value": "wrapperType" }],
        "references": [{ "role": "concept", "target": "<WrapperType-node-ref>" }]
      }]
    }
  ]
}
```

Add a `body` child (`StatementList`) whose last expression is the substitute node (or a `ReturnStatement`).

FQN: `jetbrains.mps.lang.typesystem.structure.SubstituteTypeRule`
Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/6405009306797516074`
