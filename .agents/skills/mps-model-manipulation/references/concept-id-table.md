# Concept and Link ID Reference Tables

Frequently needed `MetaAdapterFactory` hex IDs and persistent node refs. Use for `LINKS`/`CONCEPTS` constants, `replace_node_child` blueprints, and `SNodeType` / `RefConcept_Reference` targets.

## BaseLanguage structure concepts and links (hex IDs)

| Name | Concept/link hex IDs |
|---|---|
| `ThrowStatement` concept | `0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10f3ee082d8L` |
| `ThrowStatement.throwable` link | `..., 0x10f3ee082d8L, 0x10f3ee0cd6fL, "throwable"` |
| `CatchClause` concept | `0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10f39a56e2fL` |
| `CatchClause.throwable` link (catch parameter) | `..., 0x10f39a56e2fL, 0x10f39a6a2f1L, "throwable"` |
| `VariableReference` concept | `..., 0xf8c77f1e98L` |
| `VariableReference.variableDeclaration` ref link | `..., 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"` |
| `TryCatchStatement` concept | `..., 0x10f383e6771L` |
| `TryCatchStatement.body` link | `..., 0x10f383e6771L, 0x10f383e83d4L, "body"` |
| `TryUniversalStatement` concept | `..., 0x4a434b86a54515f2L` |
| `TryUniversalStatement.body` link | `..., 0x4a434b86a54515f2L, 0x72ddc713115bb114L, "body"` |
| `BaseAssignmentExpression` concept | `..., 0x11b0d00332cL` |
| `BaseAssignmentExpression.lValue` link | `..., 0x11b0d00332cL, 0xf8c77f1e97L, "lValue"` |
| `ClassifierType` concept | `..., 0x101de48bf9eL` |
| `ClassifierType.classifier` ref link | `..., 0x101de48bf9eL, 0x101de490babL, "classifier"` |

Language/module prefix for all BaseLanguage structure IDs:
`MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, <concept>, <link>, "<name>")`

## Persistent concept declaration noderefs

Use as `target` in `SNodeType.concept`, `RefConcept_Reference.conceptDeclaration`, and `SNodeTypeCastExpression.conceptArgument.conceptDeclaration`.

| Concept | Persistent node ref |
|---|---|
| `Type` (BaseLanguage) | `r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)/1068431790189` |
| `Expression` (BaseLanguage) | `r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)/1068431790191` |
| `Classifier` (BaseLanguage) | `r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)/1107461130800` |
| `SequenceType` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1151689724996` |
| `ListType` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1151688443754` |
| `ListCreatorWithInit` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1160600644654` |
| `SNodeType` | `c:7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698` |
| `AbstractCatchClause` | find via `mps_mcp_search_concepts "AbstractCatchClause"` |
| `VariableReference` | find via `mps_mcp_search_concepts "VariableReference"` |
| `BaseAssignmentExpression` | find via `mps_mcp_search_concepts "BaseAssignmentExpression"` |
| `TryCatchStatement` | find via `mps_mcp_search_concepts "TryCatchStatement"` |
| `TryUniversalStatement` | find via `mps_mcp_search_concepts "TryUniversalStatement"` |
| `StatementList` | find via `mps_mcp_search_concepts "StatementList"` |

> For any concept not listed above: use `mps_mcp_search_concepts` to find its declaration,
> then `mps_mcp_print_node` (`format: "AGENTIC VIEW"`, `nodeDepth: 0`) on the result to get the persistent node ref.
