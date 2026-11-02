# `check()`: Report What a MigrationScript Did Not Migrate

Open this file to give a `MigrationScript` a `check()`. MPS runs `check()` after `execute()`, and the Migration Assistant shows every problem it returns. For a deprecated element, report each node that still holds it. A `PureMigrationScript` move already generates its own `check()`.

The factory leaves `check` as a `MemberPlaceholder` (caption `<no result checking>`). Building a real one takes four writes, verified end to end (it generates and compiles):

1. **The method.** Run `mps_mcp_update_node` `SET CHILD` with `childNodeRef` set to that placeholder (the `member` named `check`) and this blueprint. Every reference in it is a fixed MPS id:

   ```json
   {"concept":"jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance","properties":[{"name":"name","value":"check"}],
    "references":[{"role":"decl","target":"90746344-04fd-4286-97d5-b46ae6a81709/r:52a3d974-bd4f-4651-ba6e-a2de5e336d95(jetbrains.mps.lang.migration/jetbrains.mps.lang.migration.methods)/2016543223706277481"}],
    "children":[
     {"role":"returnType","nodes":[{"concept":"jetbrains.mps.baseLanguage.collections.structure.SequenceType","children":[{"role":"elementType","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.ClassifierType","references":[{"role":"classifier","target":"528ff3b9-5fc4-40dd-931f-c6ce3650640e/r:f69c3fa1-0e30-4980-84e2-190ae44e4c3d(jetbrains.mps.lang.migration.runtime/jetbrains.mps.lang.migration.runtime.base)/3875289449857737973"}]}]}]}]},
     {"role":"parameter","nodes":[{"concept":"jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodParameterInstance","properties":[{"name":"name","value":"m"}],"references":[{"role":"decl","target":"90746344-04fd-4286-97d5-b46ae6a81709/r:52a3d974-bd4f-4651-ba6e-a2de5e336d95(jetbrains.mps.lang.migration/jetbrains.mps.lang.migration.methods)/2016543223706278789"}],
       "children":[{"role":"type","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.ClassifierType","references":[{"role":"classifier","target":"8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)/~SModule"}]}]}]}]},
     {"role":"visibility","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.PublicVisibility"}]},
     {"role":"body","nodes":[{"concept":"jetbrains.mps.baseLanguage.structure.StatementList"}]}]}
   ```

2. **List, loop and return, Java parser.** Use `mps_mcp_parse_java_and_insert` with `featureKind: "STATEMENTS"` and `insert: {mode: "child", parentRef: <the new check MethodInstance>, role: "body"}`, and this code:

   ```
   java.util.List<jetbrains.mps.lang.migration.runtime.base.Problem> problems = new java.util.ArrayList<jetbrains.mps.lang.migration.runtime.base.Problem>();
   for (org.jetbrains.mps.openapi.model.SModel model : m.getModels()) { }
   return problems;
   ```

3. **Loop variable type.** Change `SModel` to `model<>`, exactly as in step 2 of [migration-script-body.md](migration-script-body.md) § Per-instance sweep.
4. **Inner loop.** Do step 3 of the same sweep. Instead of its `IfStatement`, use one whose `ifTrue` is `problems.add(<problem>);`, i.e. `ExpressionStatement(DotExpression(VariableReference→problems, InstanceMethodCallOperation→baseMethodDeclaration "add"))`. The name `add` resolves. The `<problem>` argument is a `StaticMethodCall`:

   ```json
   {"concept":"jetbrains.mps.baseLanguage.structure.StaticMethodCall",
    "references":[{"role":"classConcept","target":"528ff3b9-5fc4-40dd-931f-c6ce3650640e/r:f69c3fa1-0e30-4980-84e2-190ae44e4c3d(jetbrains.mps.lang.migration.runtime/jetbrains.mps.lang.migration.runtime.base)/5462094956389870823"},
                  {"role":"baseMethodDeclaration","target":"528ff3b9-5fc4-40dd-931f-c6ce3650640e/r:f69c3fa1-0e30-4980-84e2-190ae44e4c3d(jetbrains.mps.lang.migration.runtime/jetbrains.mps.lang.migration.runtime.base)/7680625225105650701"}],
    "children":[{"role":"actualArgument","nodes":[
     {"concept":"jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference","references":[{"role":"variable","target":"box"}]},
     {"concept":"jetbrains.mps.lang.smodel.structure.LinkIdRefExpression","references":[{"role":"conceptDeclaration","target":"<concept decl ref>"},{"role":"linkDeclaration","target":"<deprecated link decl ref>"}]}]}]}
   ```

   That is `DeprecatedConceptMemberNotMigratedProblem.deprecatedContainmentLink(box, link/Box : items_old/)`, the member variant `LightQuotation_InitLinkExpression` uses. Some MPS scripts, `MigrateHelpURL` among them, report a property with the concept variant instead, but the member variant names the element. The other variants, all ending with the same `…/r:f69c3fa1-…(jetbrains.mps.lang.migration.runtime.base)/` prefix:

   | Deprecated element | `baseMethodDeclaration` id | Second argument |
   |---|---|---|
   | child | `7680625225105650701` (`deprecatedContainmentLink`) | `LinkIdRefExpression` |
   | reference | `7680625225105651195` (`deprecatedReferenceLink`) | `LinkIdRefExpression` |
   | property | `7680625225105625300` (`deprecatedProperty`) | `PropertyIdRefExpression` (refs `conceptDeclaration`, `propertyDeclaration`) |
   | concept | none. Use `new DeprecatedConceptNotMigratedProblem(node)`: a `GenericNewExpression` whose `creator` is a `ClassCreator` with `baseMethodDeclaration` `…/7363351619057173712` and the node as `actualArgument` | — |
   | a value the migration could not convert | none. Use `new MigrateManually("<message naming the value>", node)`, built like the concept row with constructor `…/1548255757298517911`. Unlike the variants above, the message is yours, so it can tell the customer what to fix. | — |

   The condition reads the deprecated element: `box.items_old.isNotEmpty` (`IsNotEmptyOperation` on an `SLinkListAccess`), `inv.discount_old != null` for a property, or no condition for a deprecated concept.

`mps_mcp_check_root_node_problems` on the script then reports only `Raw use of parameterized class 'Problem'` warnings. MPS's own migrations show the same warnings.
