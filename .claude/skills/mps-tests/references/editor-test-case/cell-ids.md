## Cell IDs in auto-generated editors

Cell IDs come from the generated `..._EditorBuilder_a.java`. Common patterns for declarative editor cells:

| Editor cell | Generated cellId |
|---|---|
| `{ name }` property cell for `name` | `property_name` (i.e. `property_<propertyName>`) |
| `%role%` RefNodeList (populated) | `refNodeList_<role>` |
| `%role%` RefNodeList (empty placeholder shown when the list is empty) | `empty_<role>` |
| `(role)` RefNode (single child) | `refNode_<role>` / `empty_<role>` when null |
| Constant cell `"text"` | `Constant_<rand>_<letter><digit>` (auto, e.g. `Constant_qpt50r_a0`) |
| Collection cell wrapping the whole concept | `Collection_<rand>_<letter>` (auto) |

When in doubt, grep `setCellId(` in the language's generated editor folder (`<lang>/source_gen/<package>/editor/`): `<Concept>_EditorBuilder_a.java` holds the concept's own cells, `<Component>_ComponentBuilder_a.java` the cells of an editor component it reuses. A component's ids may carry a prefix (BaseLanguage variable names: `VDNCC_property_name`, not `property_name`), and the component may belong to another language (`ALIAS_EDITOR_COMPONENT` comes from `jetbrains.mps.lang.core`). A wrong `cellId` in `result` fails at `CellReference.java:58` with the real id in the message. The empty-list placeholder (`empty_<role>`) is a *different* cell from the populated `refNodeList_<role>` wrapper — to drive a substitution into an empty list, point the caret at `empty_<role>`.

For BaseLanguage, the MPS sources (not a user project) hold over a thousand editor tests in `testbench/testsolutions/bl.test` (model `jetbrains.mps.editorTest@tests`, virtual folders such as `undoRedo`, `delete`, `reflectiveEditorActions`): find a similar root with `mps_mcp_search_root_node_by_name` and print it.
