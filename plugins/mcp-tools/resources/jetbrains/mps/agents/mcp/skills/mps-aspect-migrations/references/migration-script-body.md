# MigrationScript Execute-Body Constructs

Open this file when writing the BL body of a programmatic `MigrationScript` — the per-instance sweep most migrations need, pattern variable references inside transforms, choice of consequence form, and concept-annotation references.

## Per-instance sweep: three writes

Most instance-level migrations have the same shape. They visit every node of concept `C` in the migrated module and fill in or rewrite something on it. A typical case is giving a new required child a default:

```
void execute(SModule m) {
  for (model model : m.getModels()) {
    foreach recipe in model.nodes(Recipe) {
      if (recipe.summary.isNull) { recipe.summary.set new(Summary).text = "TODO"; }
    }
  }
}
```

Build it with three writes. You do not need to look up smodel concepts.

1. **Outer loop, Java parser.** Call `mps_mcp_parse_java_and_insert` with `featureKind: "STATEMENTS"` and `insert: {mode: "child", parentRef: <the execute MethodInstance>, role: "body"}`. Parse this code: `for (org.jetbrains.mps.openapi.model.SModel model : m.getModels()) { }`. The parser resolves `m` and `getModels()` for you. The `MethodInstance` is the `member` of the script that has `name=execute`. The factory creates it when it inserts the script.
2. **Loop variable type, `SModel` → `model<>`.** `model.nodes(C)` is an smodel operation. On a Java `SModel` operand it fails with "operation is not applicable to SModel". Call `mps_mcp_print_node` (`deep: true`) on the inserted `ForeachStatement` (the baseLanguage loop, not the collections `ForEachStatement` of step 3) and take two refs from it: `variable` → `type` (a `ClassifierType`) and `body` (a `StatementList`). Then call `mps_mcp_update_node` with `SET` `CHILD`, `childNodeRef: <that ClassifierType>`, and `childJson: {"concept":"jetbrains.mps.lang.smodel.structure.SModelType"}`.
3. **Inner loop and its body, one blueprint.** Call `mps_mcp_update_node` with `ADD` `CHILD`, `nodeReference: <the body StatementList>`, and `childRole: "statement"`. Pass the blueprint below; it is about 3.2 KB, so write it to a `$TMPDIR` file and pass that path. Every reference target in it is a **name**. `model` and `recipe` resolve to the loop variables. `Recipe`, `summary`, `Summary` and `text` resolve to the language's concept, link, concept and property, which must already be built (`MAKE` the language after the structure change). The response should report `fixReferences.stillBroken: 0`.

```json
{"concept":"jetbrains.mps.baseLanguage.collections.structure.ForEachStatement","children":[
 {"role":"variable","nodes":[{"concept":"jetbrains.mps.baseLanguage.collections.structure.ForEachVariable","properties":[{"name":"name","value":"recipe"}]}]},
 {"role":"inputSequence","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.DotExpression","children":[
  {"role":"operand","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.VariableReference","references":[{"role":"variableDeclaration","target":"model"}]}]},
  {"role":"operation","nodes":[{"concept":"jetbrains.mps.lang.smodel.structure.Model_NodesOperation","children":[
   {"role":"conceptArgument","nodes":[{"concept":"jetbrains.mps.lang.smodel.structure.RefConcept_Reference","references":[{"role":"conceptDeclaration","target":"Recipe"}]}]}]}]}]}]},
 {"role":"body","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.StatementList","children":[{"role":"statement","nodes":[
  {"concept":"jetbrains.mps.baseLanguage.structure.IfStatement","children":[
   {"role":"condition","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.DotExpression","children":[
    {"role":"operand","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.DotExpression","children":[
     {"role":"operand","nodes":[{"concept":"jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference","references":[{"role":"variable","target":"recipe"}]}]},
     {"role":"operation","nodes":[{"concept":"jetbrains.mps.lang.smodel.structure.SLinkAccess","references":[{"role":"link","target":"summary"}]}]}]}]},
    {"role":"operation","nodes":[{"concept":"jetbrains.mps.lang.smodel.structure.Node_IsNullOperation"}]}]}]},
   {"role":"ifTrue","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.StatementList","children":[{"role":"statement","nodes":[
    {"concept":"jetbrains.mps.baseLanguage.structure.ExpressionStatement","children":[{"role":"expression","nodes":[
     {"concept":"jetbrains.mps.baseLanguage.structure.AssignmentExpression","children":[
      {"role":"lValue","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.DotExpression","children":[
       {"role":"operand","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.DotExpression","children":[
        {"role":"operand","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.DotExpression","children":[
         {"role":"operand","nodes":[{"concept":"jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference","references":[{"role":"variable","target":"recipe"}]}]},
         {"role":"operation","nodes":[{"concept":"jetbrains.mps.lang.smodel.structure.SLinkAccess","references":[{"role":"link","target":"summary"}]}]}]}]},
        {"role":"operation","nodes":[{"concept":"jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation","references":[{"role":"concept","target":"Summary"}]}]}]}]},
       {"role":"operation","nodes":[{"concept":"jetbrains.mps.lang.smodel.structure.SPropertyAccess","references":[{"role":"property","target":"text"}]}]}]}]},
      {"role":"rValue","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.StringLiteral","properties":[{"name":"value","value":"TODO"}]}]}]}]}]}]}]}]}]}]}]}]}]}
```

To adapt it, keep the skeleton (`ForEachStatement` over `model.nodes(C)`, then a body `StatementList`) and replace the `IfStatement` with your own statements:

- `node.link` is `DotExpression(operand, SLinkAccess→link)`.
- `node.prop` is `DotExpression(operand, SPropertyAccess→property)`.
- `.isNull` is `Node_IsNullOperation`.
- `.set new(C)` is `Link_SetNewChildOperation→concept`.
- Assignment is `ExpressionStatement(AssignmentExpression(lValue, rValue))`.

For any other smodel operation, see `references/property-and-mutation-ops.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin. If a name is ambiguous in scope, `stillBroken` is above 0. Put that reference's persistent `r:…/id` in its `target` instead.

After the three writes, run `mps_mcp_check_root_node_problems` on the script, which should report no problems. Then `SYNC_VERSION` (idempotent; it confirms the factory's bump), `MAKE`, and `mps_mcp_run_migrations` as in the skill's workflow.

## Transform Pattern Variables

When using pattern-matching transforms inside `MigrationScript.execute()`, references to pattern-captured nodes/links/properties are represented by:

| Concept | Key reference | Purpose |
|---|---|---|
| `NodePatternVariableReference` | `declaration` → `PatternVariableDeclaration` | captured node |
| `LinkPatternVariableReference` | `declaration` → `LinkPatternVariableDeclaration` | captured link |
| `PropertyPatternVariableReference` | `declaration` → `PropertyPatternVariableDeclaration` | captured property value |
| `ListPatternVariableReference` | `declaration` → `ListPattern` | captured list |

## `ConsequenceFunction` and `QuotationConsequence`

Used as the "consequence" (replacement) side of a transform rule inside `MigrationScript.execute()`:

| Concept | Alias | Key members | Purpose |
|---|---|---|---|
| `ConsequenceFunction` | `function` | `parameter` (ParameterDeclaration, 0..n); `body` (StatementList, 1) | BL closure as consequence |
| `QuotationConsequence` | `quotation` | `quotation` (Quotation, 1) | quotation node as consequence |

Both implement the abstract `TransformConsequence` interface.

## `ConceptMigrationReference`

`c:90746344-04fd-4286-97d5-b46ae6a81709/3897914186547825813`

Used to annotate a concept in the language structure to declare that instances of an old concept should be migrated by a specific script. Children:

| Role | Type | Cardinality |
|---|---|---|
| `migrationScript` | `MigrationScriptReference` | 1 |
| `oldConcept` | `AbstractNodeReference` | 1 |

`MigrationScriptReference` (`c:90746344-04fd-4286-97d5-b46ae6a81709/7417095922908675018`) has properties `fromVersion` and `module` (the module UUID string).
