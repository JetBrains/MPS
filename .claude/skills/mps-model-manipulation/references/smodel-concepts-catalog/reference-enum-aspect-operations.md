## Reference operations

Target/link metadata on references.

| Concept | ID | MPS notation |
|---|---|---|
| `Node_GetReferenceOperation` | `3609773094169249792` | `node.reference/C : role/` — returns `SReference` (child `linkQualifier`: OperationParm_LinkQualifier 1) |
| `Node_GetReferencesOperation` | `8758390115028452779` | `node.references` — all outgoing refs |
| `Reference_GetTargetOperation` | `4124388153790980106` | `ref.target` |
| `Reference_ContainingLinkOperation` | `2926695023085807517` | `ref.link` (alias `link`) |
| `Reference_GetResolveInfo` | `5708036808576088033` | `ref.resolveInfo` |
| `Reference_IsDynamic` | `6079722741456947163` | `ref.isDynamic` |
| `Reference_GetLinkDeclarationOperation` | `1547759872598425067` | `ref.linkDeclaration` — **DEPRECATED since MPS 3.5**; use `.link` |
| `Reference_GetRoleOperation` | `5692182839349412519` | `ref.role` — **DEPRECATED since MPS 3.3**; use `.link.name` |

## Enum operations

On `enummember<E>` and on property values of enumerated types.

| Concept | ID | MPS notation |
|---|---|---|
| `EnumMemberReference` | `4705942098322467729` | reference to a specific enum member |
| `EnumMember_IsOperation` | `4705942098322609812` | `enumValue.is/Member/` |
| `EnumMember_NameOperation` | `1966870290083281362` | `enumValue.name` |
| `EnumMember_PresentationOperation` | `5779574625832259537` | `enumValue.presentation` |

## Aspect filter

Lives in `jetbrains.mps.lang.slanguage` (language `l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.slanguage`).

| Concept | Ref | MPS notation |
|---|---|---|
| `OfAspectOperation` | `c:ceab5195-25ea-4f22-9b92-103b95ca8c0c/5932042262275638696` | `.ofAspect<a>` — filter a sequence by MPS aspect |
