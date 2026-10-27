## Validator example — `Compound.cardinality` (ChemMastery)

Rejects non-positive cardinalities:

```
propertyValue > 0
```

**Plain Java goes through the parser.** Insert the `NodePropertyConstraint` with an empty
validator (the snippet below without `children={"body": body}`), then `mps_mcp_parse_java_and_insert` the
statement `return propertyValue > 0;` with `featureKind: "STATEMENTS"` into the
`ConstraintFunction_PropertyValidator`'s `body` role. The parser binds `propertyValue` to
`ConstraintsFunctionParameter_propertyValue` and creates the `StatementList`. See the
`mps-baselanguage` skill for the parser's parameters.

**Written as JSON** (a body with smodel or other extension concepts the parser does not
produce, or the whole constraint in one write): the result nests 6 node levels, so generate it
with mps-node-editing's `scripts/blueprint.py` and pass the printed temp-file path. Load the
`mps-node-editing` companion skill from the same origin to run it; its "Scripts" section is
the contract. Compose the body and the skeleton in Python rather than pasting one JSON block
into another:

```
python3 .claude/skills/mps-node-editing/scripts/blueprint.py - <<'EOF'
BL = "jetbrains.mps.baseLanguage.structure."
C = "jetbrains.mps.lang.constraints.structure."
body = node(BL + "StatementList", children={"statement": node(BL + "ExpressionStatement", children={
    "expression": node(BL + "GreaterThanExpression", children={
        "leftExpression": node(C + "ConstraintsFunctionParameter_propertyValue"),
        "rightExpression": node(BL + "IntegerConstant", props={"value": 0})})})})
emit(node(C + "NodePropertyConstraint",
          refs={"applicableProperty": "<cardinality-property-declaration-node-ref>"},
          children={"propertyValidator": node(C + "ConstraintFunction_PropertyValidator",
                                              children={"body": body})}),
     stem="cardinality", single=True)
EOF
```

Add the printed file to the `ConceptConstraints` root with `mps_mcp_update_node` `ADD` ×
`CHILD` (role `property`), or nest the `NodePropertyConstraint` under a `ConceptConstraints`
node in the same snippet when the root is new.
