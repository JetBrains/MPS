# Common JSON Patterns for BaseLanguage

Paste-able JSON blueprints for the constructs that appear most often when authoring BaseLanguage via JSON AST.

## Local Variable

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement",
  "children": [{ "role": "localVariableDeclaration", "nodes": [{
    "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration",
    "properties": [{ "name": "name", "value": "count" }],
    "children": [{ "role": "type", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.IntegerType" }] }]
  }]}]
}
```

## Node Equality (`:eq:` / `:ne:`)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.NPEEqualsExpression",
  "children": [
    { "role": "leftExpression", "nodes": [{ "concept": "VariableReference", "references": [{ "role": "variableDeclaration", "target": "node1" }] }] },
    { "role": "rightExpression", "nodes": [{ "concept": "VariableReference", "references": [{ "role": "variableDeclaration", "target": "node2" }] }] }
  ]
}
```

## Instance Method Call

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand", "nodes": [{ "concept": "VariableReference", "references": [{ "role": "variableDeclaration", "target": "name" }] }] },
    { "role": "operation", "nodes": [{ "concept": "InstanceMethodCallOperation", "references": [{ "role": "baseMethodDeclaration", "target": "r:..." }] }] }
  ]
}
```

## Anonymous Class Argument

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression",
  "children": [{
    "role": "creator",
    "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.AnonymousClassCreator",
      "children": [{
        "role": "cls",
        "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.structure.AnonymousClass",
          "references": [
            { "role": "classifier", "target": "r:...ActionListener" },
            { "role": "baseMethodDeclaration", "target": "r:...Object.<init>()" }
          ],
          "children": [{
            "role": "member",
            "nodes": [{
              "concept": "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration",
              "properties": [{ "name": "name", "value": "actionPerformed" }]
            }]
          }]
        }]
      }]
    }]
  }]
}
```

## Array with Size Expression (`new int[50]`)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression",
  "children": [{ "role": "creator", "nodes": [{
    "concept": "jetbrains.mps.baseLanguage.structure.ArrayCreator",
    "children": [
      { "role": "componentType", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.IntegerType" }] },
      { "role": "dimensionExpression", "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.structure.DimensionExpression",
        "children": [{ "role": "expression", "nodes": [
          { "concept": "jetbrains.mps.baseLanguage.structure.IntegerConstant", "properties": [{ "name": "value", "value": "50" }] }
        ]}]
      }]}
    ]
  }]}]
}
```

## Array with Initializer (`new String[]{"a", "b"}`)

`componentType` is the element type (`StringType`), not an `ArrayType`. Like every creator, `ArrayCreatorWithInitializer` is not an `Expression` and fails assignability unless wrapped.

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression",
  "children": [{ "role": "creator", "nodes": [{
    "concept": "jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer",
    "children": [
      { "role": "componentType", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StringType" }] },
      { "role": "initValue", "nodes": [
        { "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral", "properties": [{ "name": "value", "value": "a" }] },
        { "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral", "properties": [{ "name": "value", "value": "b" }] }
      ]}
    ]
  }]}]
}
```

## Super Constructor Call (`super("Title")`)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation",
  "references": [{ "role": "baseMethodDeclaration", "target": "6354ebe7-.../~JFrame.<init>%28java.lang.String%29" }],
  "children": [{ "role": "actualArgument", "nodes": [
    { "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral", "properties": [{ "name": "value", "value": "My Title" }] }
  ]}]
}
```

## Static Method Call (`ClassName.method(arg)`)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StaticMethodCall",
  "references": [
    { "role": "classConcept", "target": "r:.../<ClassName>" },
    { "role": "baseMethodDeclaration", "target": "r:.../<ClassName>.<methodName>(...)" }
  ],
  "children": [
    { "role": "actualArgument", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
        "references": [{ "role": "variableDeclaration", "target": "argName" }] }
    ]}
  ]
}
```

## JSON Template (Empty Class)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.ClassConcept",
  "properties": [
    { "name": "name", "value": "MyClass" }
  ],
  "children": [
    {
      "role": "member",
      "nodes": []
    }
  ]
}
```
