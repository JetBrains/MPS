# BaseLanguage Troubleshooting

Common error messages and their root cause. Read this when validation fails and you need to know which gate diagnosed the problem.

## Symptoms During JSON AST Insertion

* **`dryRun` JSON path error** (`Concept assignability error`): the concept named at that path is not assignable to the role declared there. The error's last lines usually name the fix: a creator such as `ArrayCreatorWithInitializer` or `AnonymousClassCreator` gets ` - Wrap it: 'GenericNewExpression' …` with the JSON to paste, and an expression in a statement role lists `ExpressionStatement` first. Only when there is no such line, cross-check the role's required concept with `mps_mcp_get_concept_details` for the parent.
* **`Target node is null for role baseMethodDeclaration`**: a constructor or method ref did not resolve. Re-harvest from the live AST or re-derive from the class ref.
* **`Unknown target for role baseMethodDeclaration`** (during text generation): the ref points to a stale member from a prior root rewrite. Re-harvest after the rewrite.

## Symptoms in Generated Java

* **`???()` in generated Java**: broken method-call ref. The `InstanceMethodCallOperation.baseMethodDeclaration` does not resolve to a real method.
* **`new ()` in generated Java**: broken constructor ref. The `ClassCreator.baseMethodDeclaration` does not resolve to a real constructor.

## Cross-Gate Symptoms

* **Model checks pass but `MAKE` fails**: inspect generated Java at the reported line numbers before changing more AST structure. The defect is in `baseMethodDeclaration` resolution or a cross-aspect contract, not in the AST shape.

## Practical Tips

* If insertion fails with an assignability error, check the exact role path — the provided concept may not be assignable there.
* When in doubt, print an existing instance of the target construct (`mps_mcp_print_node`) before hand-authoring the subtree.
* Large blueprints fail in two stages: first malformed JSON prevents insertion, then structurally valid JSON can still fail concept assignability. Debug them separately.
