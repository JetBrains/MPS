# Inference Rules (`InferenceRule`)

`InferenceRule` binds a concept to a body that states equations/inequations over type variables.

## Key fields

- `applicableNode` — parameter like `classDecl:ClassDeclaration`; visible inside the body
- `overrides` — if true, suppresses inherited rules from superconcepts
- `body` — uses the operators in the next table

## Operator vocabulary

| Syntax | Meaning |
|---|---|
| `typeof(node) :==: expr` | Hard equation — `typeof(node)` must equal `expr` |
| `infer typeof(node) :<=: expr` | Soft upper bound — inferred type must be a subtype of `expr` (does not error if violated, just constrains) |
| `infer typeof(node) :>=: expr` | Soft lower bound — inferred type must be a supertype of `expr` |
| `typeof(node) :<=: expr` | Hard upper bound — reports error if violated |
| `typeof(node) :>=: expr` | Hard lower bound — reports error if violated |
| `info(...)` / `warning(...)` / `error(... -> { ... });` | Report messages attached to `node` |
| `typeof(x)` | Current type variable/term of `x` |
| `new node<T>() { ... }` | Construct a type-node (types are just nodes of "type" concepts) |
| `var elementType;` | Declare a free type variable — the typesystem solver assigns it |

The `infer` prefix makes the inequation *soft*: the system tries to satisfy it but will not immediately error if it cannot. Without `infer`, violating the inequation reports an error. Rules can be partial — multiple rules collectively constrain a node.

## Worked examples

### Simple equality (StringLiteral → string type)

```
rule typeof_StringLiteral {
  applicable for concept = StringLiteral as nodeToCheck
  do {
    typeof(nodeToCheck) :==: <string>;
  }
}
```

### Propagating type (ParenthesizedExpression)

```
rule typeOf_ParenthesizedExpression {
  applicable for concept = ParenthesizedExpression as parExpr
  do {
    typeof(parExpr) :==: typeof(parExpr.expression);
  }
}
```

### Inequalities (TernaryOperator)

```
rule typeOf_TernaryOperator {
  applicable for concept = TernaryOperatorExpression as toe
  do {
    infer typeof(toe.condition) :<=: <boolean>;
    infer typeof(toe) :>=: typeof(toe.ifTrue);
    infer typeof(toe) :>=: typeof(toe.ifFalse);
  }
}
```

### Free type variable + quotations (ForEachStatement)

```
rule typeof_ForEachStatement {
  applicable for concept = ForEachStatement as forEachStatement
  do {
    node<ForEachVariable> variable = forEachStatement.variable;
    node<Expression> inputSequence = forEachStatement.inputSequence;
    if (inputSequence.isNotNull && variable.isNotNull) {
      var elementType;
      infer <join(sequence<%(elementType)%> | %(elementType)%[])> :>=: typeof(inputSequence);
      typeof(variable) :==: elementType;
    }
  }
}
```

`var elementType;` declares a free type variable. `join(A | B)` means "either A or B" — the solver picks whichever is consistent. `%(...)%` is an anti-quotation that splices the variable's current type into the quotation.

For body-level JSON AST shapes (equation/inequation/report statements, anti-quotation handling), see `references/json-blueprints.md`.
