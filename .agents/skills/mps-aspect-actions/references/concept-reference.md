# Validated Concept Reference

> Verified against MPS via `mps_mcp_get_concept_details`. Re-verify with the MCP before inserting if your MPS version differs.

## `jetbrains.mps.lang.actions` concepts

| Concept (FQN) | Concept ref |
|---|---|
| `jetbrains.mps.lang.actions.structure.NodeFactories` | `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/1158700664498` |
| `jetbrains.mps.lang.actions.structure.NodeFactory` | `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/1158700725281` |
| `jetbrains.mps.lang.actions.structure.NodeSetupFunction` | `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/1158701162220` |
| `jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode` | `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/5584396657084912703` |
| `jetbrains.mps.lang.actions.structure.NodeSetupFunction_SampleNode` | `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/5584396657084920413` |
| `jetbrains.mps.lang.actions.structure.NodeSetupFunction_EnclosingNode` | `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/5584396657084920670` |
| `jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_index` (the `index` parameter; lang.actions' `NodeSetupFunction_Index` is not accepted in a setup function) | `c:18bc6592-03a6-4e29-a83a-7ff23bde13ba/8899501406397518321` |
| `jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model` (the `model` parameter) | `c:13744753-c81f-424a-9c1b-cf8943bf4e86/1161622665029` |
| `jetbrains.mps.lang.actions.structure.CopyPasteHandlers` | `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/5948027493682789918` |

## Supporting BaseLanguage / smodel concepts used in setup bodies

- `jetbrains.mps.baseLanguage.structure.StatementList`
- `jetbrains.mps.baseLanguage.structure.ExpressionStatement`
- `jetbrains.mps.baseLanguage.structure.AssignmentExpression`
- `jetbrains.mps.baseLanguage.structure.DotExpression`
- `jetbrains.mps.baseLanguage.structure.UndefinedType`
- `jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement`
- `jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable`
- `jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference`
- `jetbrains.mps.lang.smodel.structure.SPropertyAccess`
- `jetbrains.mps.lang.smodel.structure.SLinkAccess`

See `mps-model-manipulation` for the full smodel / baseLanguage reference.
