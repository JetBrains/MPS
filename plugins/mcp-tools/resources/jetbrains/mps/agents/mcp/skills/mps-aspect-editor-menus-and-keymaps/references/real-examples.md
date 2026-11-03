# Studying Real Examples

BaseLanguage's editor model `r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)` is visible from any project. Print a root in `PLAIN TEXT` to read it, and deep JSON to copy shapes.

| Root | Shows |
|---|---|
| `Expression_TransformationMenu` (default menu of `Expression`) | Completion + side-transform sections with `superconcepts menu` and many `include named menu` parts |
| `binaryOperations_Expression` (named) | `wrap substitute menu` over `BinaryOperation` for all operators after an expression |
| `finalOnTypesInVariables` (named, on `Type`) | LEFT side transform on a child that edits `node.parent` |
| `BinaryOperation_Alias_TransformationMenu` / `BinaryOperation_Alias_SubstituteMenu` | Restricted operator replacement on the alias cell, `SubstituteMenuPart_Wrapper` |
| `ParensAroundEmptyExpression` (named substitute menu) | `SubstituteMenuPart_Action` with matching text = `pattern` and `can substitute` |
| `constants` (named substitute menu) | Substitute actions and a parameterized part for literals |
| `_ClassConcept_Final_Actions`, `VariableDeclaration_RemoveFinalOnDelete` | DELETE with `approveDelete[cell: …]` and reselect |
| `CastExpression_KeyMap`, `DeleteClassifierMember` | Keymap, action map |

Finding them: `mps_mcp_search_root_node_by_name` finds action maps and keymaps but not menus, whose root name is computed. Two ways to find them. FIND_USAGES of the concept declaration (`rootsOnly:true`, `scope:"models"` on that model) lists every menu, map and editor for that concept, with computed names. Or, for one named menu, run FIND_INSTANCES of `jetbrains.mps.lang.editor.structure.MenuTypeNamed` with `propertyFilter {"name":"name","value":"binaryOperations_Expression"}`, whose `rootReference` is the menu. Paste wrappers and node factories are in the `jetbrains.mps.baseLanguage.actions` model.

Kaja (`samples/robot_Kaja`) exists only in the MPS source checkout: action map `RemoveNot`, `Direction_TransformationMenu` (include of the parent's menu on a child), substitute menus of `EmptyLine` and `CommandList`.
