# Editor Cell Models Catalog

Core concepts under `jetbrains.mps.lang.editor`:

| Concept | Suffix | Purpose |
|---|---|---|
| `ConceptEditorDeclaration` | `1071666914219` | Binds an editor to a concept via `conceptDeclaration`; holds `cellModel` (node cell layout — the main editor, card `1`) and the optional `inspectedCellModel` (inspected cell layout shown in the Inspector tool window, card `0..1`). |
| `EditorComponentDeclaration` | `1078938745671` | Defines a reusable editor component for a concept and its descendants (one `cellModel`). See `references/editor-components.md`. |
| `CellModel_Collection` | `1073389446423` | Container cell with a `cellLayout` (prefer `CellLayout_Indent`). |
| `CellModel_Constant` | `1073389577006` | Static text (keywords, symbols); set `text` property. Also has `nullText` — a hint shown *only when the cell is empty* (generates as `setDefaultText`), used for placeholders that disappear on the first keystroke. |
| `CellModel_Property` | `1073389658414` | Editable property cell; set `relationDeclaration` to property link. |
| `CellModel_ReadOnlyModelAccessor` | `1225900081164` | Displays a read-only value computed from the model via a `modelAccessor`. |
| `CellModel_RefNode` | `1073389882823` | Single child cell (`0..1` or `1`); set `relationDeclaration` to child link. |
| `CellModel_RefNodeList` | `1073390211982` | Multi-cardinality list (`0..n`); set `relationDeclaration` to child link. |
| `CellModel_RefCell` | `1088013125922` | Displays a referenced node's property; requires an `InlineEditorComponent`. |
| `CellModel_Component` | `1078939183254` | Reuses an `EditorComponentDeclaration`; set `editorComponent` reference. See `references/editor-components.md`. |
| `InlineEditorComponent` | `1088185857835` | Layout for `CellModel_RefCell`. |

## Technical Rules

* **Node vs. inspected layout**: a `ConceptEditorDeclaration` defines the main editor in `cellModel` (card `1`); the optional `inspectedCellModel` (`0..1`) defines a secondary layout shown in the Inspector tool window, typically for less-important or less-frequently edited properties. (`EditorComponentDeclaration` has only a `cellModel` — no inspected section.)
* **Reference cells**: set the internal `CellModel_Property` (e.g. `name`) to `readOnly=true` in `InlineEditorComponent` to prevent accidental target renaming.
* **Smart references**: no wrapping layout cell, just a single `CellModel_RefCell` with `editorComponent: InlineEditorComponent` containing `cellModel: CellModel_Property` (`relationDeclaration: name`, `readOnly: true`).
* **Inheritance**: components can be reused if they are defined for the concept, its super-concepts, or implemented interfaces.
* **List Cardinality**: always use `CellModel_RefNodeList` for `0..n` or `1..n` children. `CellModel_RefNode` is for single cardinality only.
* **List Empty State**: a `CellModel_RefNodeList` with no `emptyCellModel` already synthesizes an *editable* empty cell, shown as `<< ... >>`: the caret lands on it and typing / `Ctrl+Space` works immediately. Add an explicit `emptyCellModel` (a `CellModel_Constant`, e.g. `<no items>`) only to customize the empty cell's text or behavior.
* **Keep a custom empty cell typeable**: a plain `CellModel_Constant` in `emptyCellModel` is read-only, so it *loses* the default's instant-typing. To restore it, put the placeholder in the constant's **`nullText`** (not `text`) and add an **`EditableStyleClassItem`** (`1186414860679`, alias `editable`, `flag=true` → `StyleAttributes.EDITABLE`). See the *Editable Empty-List Placeholder with a Disappearing Hint* pattern in `references/editor-patterns.md`.
* **Styling a cell**: either the cell's `parentStyleClass` reference to a `StyleClass` (BL `ReturnStatement_Editor`: the `return` constant → `KeyWord`), or a `styleItem` `ApplyStyleClass` whose `target` child is `StyleReference` (reference `style`). `StyleClassReference` is not a style item.
* **Punctuation**: `PunctuationLeftStyleClassItem` / `PunctuationRightStyleClassItem` (`flag=true`) remove the space on that side of `(`, `)`, `,`, `;`, … They also forbid the caret on that side of the cell's text.
* **Concept alias cell**: a `CellModel_Component` whose `editorComponent` is lang.core's `alias` (`r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)/2900100530630621651`) shows the concept alias. Its cell id is `ALIAS_EDITOR_COMPONENT`.
* **Cell query functions** (`renderingCondition`, other `QueryFunction_NodeCondition`s): `node` is `jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node`. Menus and action maps use other parameter concepts (`mps-aspect-editor-menus-and-keymaps`).
* **Computed text**: `CellModel_ReadOnlyModelAccessor` (`modelAccessor` → `ReadOnlyModelAccessor{getter}`) shows a string computed from `node`. `CellModel_ModelAccess` is the editable variant. Its child role is spelled `modelAcessor`, and it holds a `ModelAccessor` with `getter`, `setter` and `validator` (`QueryFunction_ModelAccess_Getter/_Setter/_Validator`); the setter and validator see the typed `text`. Corpus: the inspector of lang.test `NodesTestCase_Editor` maps the text `true`/`false` onto a flag.
* **Alternative cells vs show-if**: `CellModel_Alternation` (`alternationCondition` `QueryFunction_NodeCondition`, `ifTrueCellModel`, `ifFalseCellModel`, all required) shows one of two cells. BL `ThisExpression_Editor` shows `Outer.this` vs `this`. A `renderingCondition` on a single cell only hides it.
* **List separators**: `CellModel_RefNodeList.separatorText` (e.g. `,`). A one-character separator other than a space also acts as a key: typed at the last position of an element it adds an element after it, at the first position it inserts one before it. `separatorTextQuery` (`QueryFunction_SeparatorText`, sees `node`, `prevNode`, `nextNode`) computes the text per gap (BL component `IMethodCall_actualArguments`).
* **Matching braces**: `MatchingLabelStyleClassItem` (`labelName`) on two cells of the same node pairs them for brace highlighting (BL `UsingStatement_Editor`: both parentheses carry `labelName` `parensesis`). `ShowBoundariesInStyleClassItem` (`value` `GUTTER` default, or `GUTTER_AND_EDITOR`) on a collection highlights its first and last content cells instead.
