## Query operations

All in `operation` role of a `DotExpression`.

| Concept | ID | MPS notation |
|---|---|---|
| `Node_GetParentOperation` | `1139613262185` | `.parent` (leaf, no parameter) |
| `Node_GetChildrenOperation` | `1171500988903` | `.children` (leaf) |
| `Node_GetAncestorOperation` | `1171407110247` | `.ancestor<C>` (nearest, or null) |
| `Node_GetAncestorsOperation` | `1173122760281` | `.ancestors<C>` (all) |
| `Node_GetDescendantsOperation` | `1171305280644` | `.descendants<C>` |
| `OperationParm_Concept` | `1144101972840` | `<C>` parameter wrapper for ancestor/descendants |
| `OperationParm_Inclusion` | leaf — sibling of `OperationParm_Concept` | `+` include-self flag (`.ancestor<C, +>` / `.descendants<C, +>`) |
| `Node_GetContainingRootOperation` | `1171310072040` | `.containingRoot` |
| `Node_ContainingLinkOperation` | `7504436213544206332` | `.containingLink` (alias `containingLink`) — `link<C : role>` of the containment edge to parent |
| `Node_GetContainingRoleOperation` | `1960721196051541146` | `.role` — **DEPRECATED since MPS 3.3**; prefer `.containingLink` |
| `Node_GetModelOperation` | `1143234257716` | `.model` |
| `Node_GetIndexInParentOperation` | `1179168000618` | `.index` (0-based position in its role) |
| `Node_GetAllSiblingsOperation` | `1145573345940` | `.siblings` |
| `Node_GetNextSiblingOperation` | `1143512015885` | `.next-sibling` |
| `Node_GetPrevSiblingOperation` | `1143511969223` | `.prev-sibling` |
| `Node_GetNextSiblingsOperation` | `1145570846907` | `.next-siblings` (sequence) |
| `Node_GetPrevSiblingsOperation` | `1145572800087` | `.prev-siblings` (sequence) |
| `Node_HasNextSiblingOperation` | `7236635212850979475` | `.hasNextSibling` |
| `Node_HasPrevSiblingOperation` | `8432949284911505116` | `.hasPrevSibling` |
| `Node_IsInstanceOfOperation` | `1139621453865` | `.isInstanceOf(C)` |
| `Concept_IsExactlyOperation` | `1172326502327` | `.isExactly(C)` — exact concept match (no subtyping) |
| `OfConceptOperation` | `4693937538533521280` | `.ofConcept<C>` — sequence filter by concept |
| `Node_IsNotNullOperation` | `1172008320231` | `.isNotNull` |
| `Node_IsNullOperation` | `1171999116870` | `.isNull` |
| `Node_ConceptMethodCall` | `1179409122411` | `.behaviorMethod(args)` |
| `Node_GetConceptOperation` | `1172323065820` | `.concept` (alias `conceptNode`) — **DEPRECATED since MPS 2018.3**; use `node.concept` via typesystem or `concept/C/` literal |
