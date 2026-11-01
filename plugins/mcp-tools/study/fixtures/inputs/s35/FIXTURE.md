# `kaja-editor` fixture (S35)

**Status: recipe written 2026-11-01; built and pinned 2026-11-01 (tarball not yet taken: the builder left the project open).** Build through MPS MCP only,
logging every call to `FIXTURE.log`; record the tarball's sha256 in [`../../pins.md`](../../pins.md).
Same Kaja module ids as `kaja-dataflow*`: never open them together.

1. Copy `samples/robot_Kaja` of the MPS checkout without `.mps/workspace.xml`; open it alone.
2. MAKE `jetbrains.mps.samples.Kaja`, `KajaAndOr`, `Kajak.sandbox` (`rebuild`).
3. Insert into the sandbox a `Script` `Patrol`: `routine dance` with a `turnLeft`; `repeat 3 times` with a
   `step`; `trace -> hello <-`; an empty line; `if wall ahead do turnLeft end`; no `require`.
4. Pin below; close; tar `kaja-editor/` with `classes_gen` and the standard excludes.

## Pins

Built 2026-11-01 in `~/MPSProjects/mcp-study/build/kaja-editor` (a copy of `samples/robot_Kaja` without
`.mps/workspace.xml`, opened alone; MPS 2026.1, build 261.25134; IDEA project name `Kajak`). Every mutating call
is one line of [`FIXTURE.log`](FIXTURE.log) (12 lines: `2`/`3` = recipe steps, `walk-*` = the make walk and a
reverted probe). Real module names: `jetbrains.mps.samples.Kaja` (`049a08c5-1fe5-43cc-bd99-8b46d641d7f5`, folder
`languages/Kajak`), `jetbrains.mps.samples.KajaAndOr` (`44306fd2-ef94-4b56-9806-d9ab509536db`), sandbox
`jetbrains.mps.samples.Kaja.sandbox` (`202a7e1d-f62f-48e2-a734-32662e238d8a`, folder `solutions/Kajak.sandbox`,
model `r:1a01fdc1-6171-4a9b-86c9-e6b8bbdfe8af(Kaja.sandbox.sandbox)`); also in the project, untouched:
`jetbrains.mps.samples.KajaSceneConstruction`, `jetbrains.mps.samples.JavaKaja`.
Final state: MAKE `rebuild: true` of the three modules successful (`runtimeReady`, 0 migrations pending);
`check_root_node_problems` Kaja module: editor model 40 roots **0 errors 0 warnings**, actions/behavior/
constraints/dataFlow/intentions/typesystem clean, structure 30 roots **1 error (model-level, pre-existing:
"Can't find devkit jetbrains.mps.devkit.documentation")**, generator 4 corpus warnings; KajaAndOr 0 errors (4
generator warnings); sandbox 9 roots 0 errors (3 corpus "Consider using repeat" warnings on Karel, Dog, Common).
FIND_INSTANCES (editable, exact) of `TransformationMenu_Default`/`_Named`, `SubstituteMenu_Default`/`_Named`,
`IMenu_Default`/`_Named`: 0 each. `editor.mps`, `Kajak.mpl`, `Kajak.sandbox.msd` byte-identical (`cmp`) to the
checkout's `samples/robot_Kaja` after the build; only `sandbox.mps` (Patrol) and generated files differ.

### Patrol `r:1a01fdc1-6171-4a9b-86c9-e6b8bbdfe8af(Kaja.sandbox.sandbox)/581195628551448719` (clean)

```
Script Patrol runs as
  routine dance means
    turnLeft
  end
  repeat 3 times
    step
  end
  trace -> hello <-

  if wall ahead do
    turnLeft
  end
end
```

Ids (prefix 5811956285514487): body CommandList …20; RoutineDefinition `dance` …21 (in `body.commands`, as in
`Sample`; `definitions` empty) > CommandList …22 > LeftTurn …23; Repeat …24 (`count` 3) > CommandList …25 > Step
…26; TraceMessage …27 (`message` hello); EmptyLine …28; IfStatement …29: IsWall …30, trueBranch …31 > LeftTurn
…32, falseBranch …33 empty (prints no `else`). No `Require`. RoutineCall scope (`RoutineCall_Constraints`
3308300503039784470): Script `definitions` + Library `definitions` + `body.commands` RoutineDefinitions + every
`Require`d library, so with no `require` the routine items are exactly {dance}.

### Cells (`r:18c202d7-badd-41dd-bd9e-9d42a045e4f4(jetbrains.mps.samples.Kaja.editor)/<id>`)

| what | node | note |
|---|---|---|
| Step alias cell | CellModel_Component 3177886886427952500 (root cell of Step_Editor) | `alias` component of lang.core, style class `Command`, EditableStyleClassItem 3177886886427952548 |
| LeftTurn alias cell | CellModel_Component 3177886886427950661 (root cell of LeftTurn_Editor) | `alias` component, style class `Command` |
| TraceMessage alias cell | CellModel_Component 3177886886427952556 | first child of Collection 3210697320273763059 (indent layout) |
| TraceMessage message | CellModel_Property 3210697320273763064 (`message`) | generated cell id **`property_message`** (`TraceMessage_EditorBuilder_a.java` l.82, `languages/Kajak/source_gen/jetbrains/mps/samples/Kaja/editor/`); `->` Constant_y0rgyt_b0 (…066), `<-` Constant_y0rgyt_d0 (…068) |
| Repeat count | CellModel_Property 3308300503039660378 (`count`) | parentStyleClass `NumericLiteral`, no style items |
| EmptyLine assistant | CellModel_ContextAssistant 2401921116440683150 in EmptyLine_Editor 3308300503039740441 | cell id `ContextAssistant_s23fc5_c0`; layout `[> <constant> ^ <constant> *context assistant menu placeholder* <]`; the middle constant …444 has actionMap EmptyLineDelete and a CellMenuPart_ReplaceNode_CustomNodeConcept (AbstractCommand) |

No `TraceMessage` transformation or substitute menu exists (no explicit default). `RoutineCall_SubstituteMenu`
is generated from the implicit smart reference (ReferenceScope part + Subconcepts), not a root.

### Pinned roots as printed (PLAIN TEXT, trailing blanks stripped; `r:18c202d7-badd-41dd-bd9e-9d42a045e4f4(jetbrains.mps.samples.Kaja.editor)/<id>`)

```
NegateAndAlter 1741258697587172900
transformation menu for concept LogicalExpression : named NegateAndAlter

section({ side transform : left }) {
  group
    variables
      << ... >>
    condition (editorContext, node, model)->boolean {
      !node.isInstanceOf(Not);
    }
    action(output concept: Not)
      text (editorContext, node, model, pattern)->string {
        "not";
      }
      can execute <always>
      execute (editorContext, node, model, pattern)->void {
        node<Not> notNode = node.replace with new initialized(Not);
        notNode.original = node.select[in: editorContext, cell: MOST_RELEVANT, selectionStart: -1];
      }
      <no additional features>
  ----------
  parameterized
    parameter type: string
    parameter values: (editorContext, node, model)->sequence<string> {
      new arraylist<string>{"heading", "mark", "full", "wall", "looking"};
    }
    action
  text (parameterObject, editorContext, node, model, pattern)->string {
    parameterObject;
  }
  can execute <always>
  execute (parameterObject, editorContext, node, model, pattern)->void {
    node<LogicalExpression> expression;
    if (parameterObject.equals("heading")) {
      expression = new node<Heading>();
    } else if (parameterObject.equals("mark")) {
      expression = new node<IsMark>();
    } else if (parameterObject.equals("full")) {
      expression = new node<IsFull>();
    } else if (parameterObject.equals("wall")) {
      expression = new node<IsWall>();
    } else if (parameterObject.equals("looking")) {
      expression = new node<Looking>();
    } else {
      throw new  IllegalArgumentException("Cannot find a match for " + parameterObject);
    }
    node<LogicalExpression> node = node.replace with(expression);
    node.select[in: editorContext, cell: MOST_RELEVANT, selectionStart: -1];
  }
  <no additional features>
}

additional methods

<< ... >>

IfElse 1741258697587173168
transformation menu for concept IfStatement : named IfElse

section({ side transform : left }) {
  group
    variables
      << ... >>
    condition (editorContext, node, model)->boolean {
      node.falseBranch.commands.isEmpty;
    }
    action(output concept: While)
      text (editorContext, node, model, pattern)->string {
        "while";
      }
      can execute <always>
      execute (editorContext, node, model, pattern)->void {
        node<While> whileNode = node.replace with new initialized(While);
        whileNode.condition.select[in: editorContext, cell: MOST_RELEVANT, selectionStart: -1];
      }
      <no additional features>
}

additional methods

<< ... >>

IfElse_ext_1 1741258697587173116
transformation menu for concept IfStatement : named IfElse_ext_1

section({ side transform : right }) {
  group
    variables
      << ... >>
    condition (editorContext, node, model)->boolean {
      node.falseBranch.commands.isEmpty;
    }
    action(output concept: AbstractCommand)
      text (editorContext, node, model, pattern)->string {
        "else";
      }
      can execute <always>
      execute (editorContext, node, model, pattern)->void {
        node.falseBranch.commands.add new initialized(EmptyLine);
        node.falseBranch.commands.first.select[in: editorContext, cell: MOST_RELEVANT, selectionStart: -1];
      }
      <no additional features>
}

additional methods

<< ... >>

While_to_if 1741258697587173063
transformation menu for concept While : named While_to_if

section({ side transform : left }) {
  action(output concept: IfStatement)
    text (editorContext, node, model, pattern)->string {
      "if";
    }
    can execute <always>
    execute (editorContext, node, model, pattern)->void {
      node<IfStatement> ifNode = node.replace with new initialized(IfStatement);
      ifNode.condition.select[in: editorContext, cell: MOST_RELEVANT, selectionStart: -1];
    }
    <no additional features>
}

additional methods

<< ... >>

OtherCommands 542153281319932690
transformation menu for concept EmptyLine : named OtherCommands

section(context assistant) {
  action
    text (editorContext, node, model, pattern)->string {
      "Drop";
    }
    can execute <always>
    execute (editorContext, node, model, pattern)->void {
      node.add prev-sibling(new initialized node<Drop>());
    }
    <no additional features>
  ----------
  action
    text (editorContext, node, model, pattern)->string {
      "Pick";
    }
    can execute <always>
    execute (editorContext, node, model, pattern)->void {
      node.add prev-sibling(new initialized node<Pick>());
    }
    <no additional features>
  ----------
  group
    variables
      << ... >>
    condition (editorContext, node, model)->boolean {
      node.ancestor<concept = CommandList>.parent :eq: node.containingRoot;
    }
    action
      text (editorContext, node, model, pattern)->string {
        "Require";
      }
      can execute <always>
      execute (editorContext, node, model, pattern)->void {
        node<Require> inserted = node.add prev-sibling(new initialized node<Require>());
        editorContext.selectWRTFocusPolicy(inserted);
      }
      <no additional features>
}

additional methods

<< ... >>

EmptyLine_TransformationMenu 1108339487640189080
transformation menu for concept EmptyLine : default

section(context assistant) {
  action
    text (editorContext, node, model, pattern)->string {
      "Step forward";
    }
    can execute <always>
    execute (editorContext, node, model, pattern)->void {
      node.add prev-sibling(new initialized node<Step>());
    }
    <no additional features>
  ----------
  action
    text (editorContext, node, model, pattern)->string {
      "Turn left";
    }
    can execute <always>
    execute (editorContext, node, model, pattern)->void {
      node.add prev-sibling(new initialized node<LeftTurn>());
    }
    <no additional features>
  ----------
  group
    variables
      << ... >>
    condition (editorContext, node, model)->boolean {
      node.ancestor<concept = CommandList>.parent :eq: node.containingRoot;
    }
    action
      text (editorContext, node, model, pattern)->string {
        "Define a routine";
      }
      can execute <always>
      execute (editorContext, node, model, pattern)->void {
        node<RoutineDefinition> inserted = node.add prev-sibling(new initialized node<RoutineDefinition>());
        editorContext.selectWRTFocusPolicy(inserted);
      }
      <no additional features>
  ----------
  submenu
    "Control flow";
    items
      action
        text (editorContext, node, model, pattern)->string {
          "Repeat";
        }
        can execute <always>
        execute (editorContext, node, model, pattern)->void {
          node<Repeat> inserted = node.add prev-sibling(new initialized node<Repeat>());
          editorContext.selectWRTFocusPolicy(inserted);

        }
        <no additional features>
      ----------
      action
        text (editorContext, node, model, pattern)->string {
          "While";
        }
        can execute <always>
        execute (editorContext, node, model, pattern)->void {
          node<While> inserted = node.add prev-sibling(new initialized node<While>());
          editorContext.selectWRTFocusPolicy(inserted);
        }
        <no additional features>
      ----------
      action
        text (editorContext, node, model, pattern)->string {
          "If";
        }
        can execute <always>
        execute (editorContext, node, model, pattern)->void {
          node<IfStatement> inserted = node.add prev-sibling(new initialized node<IfStatement>());
          editorContext.selectWRTFocusPolicy(inserted);
        }
        <no additional features>
  ----------
  submenu
    "Other actions";
    items
      include named menu OtherCommands for current node
}

additional methods

<< ... >>

EmptyLine_SubstituteMenu 1741258697587173213
substitute menu for concept EmptyLine : default

wrap substitute menu(output concept: IfStatement)
  menu to wrap default substitute menu for LogicalExpression
  handler
    (parentNode, currentTargetNode, link, editorContext, model, wrappedItem, pattern, nodeToWrap)->node<IfStatement> {
      node<IfStatement> ifCmd = new initialized node<IfStatement>();
      ifCmd.condition = nodeToWrap;
      ifCmd;
    }
  selection (parentNode, link, editorContext, model, wrappedItem, pattern, createdNode)->void {
    createdNode.select[in: editorContext, cell: MOST_RELEVANT, selectionStart: -1];
  }

additional methods

<< ... >>

Direction_TransformationMenu 1741258697587173096
transformation menu for concept Direction : default

section({ side transform : left, right }) {
  superconcepts menu
}
==========
section({ side transform : right }) {
  include default menu for targetNode(editorContext, node, model)->node<> {
    node.parent;
  }
}

additional methods

<< ... >>

RemoveNot 7446293342517357220
action map RemoveNot

applicable concept: Not

imported actions:
  << ... >>

actions:
  action DELETE description : <no description>
                can execute : true
                execute : (editorContext, node)->void {
  if (node.approveDelete [in: editorContext, cell: notKeyword]) { return ; }
  node.replace with(node.original);
}

Step_Editor 3265739055509559139
<default> editor for concept Step
  node cell layout:
     # alias #

  inspected cell layout:
    <choose cell model>

LeftTurn_Editor 3308300503039647630
<default> editor for concept LeftTurn
  node cell layout:
     # alias #

  inspected cell layout:
    <choose cell model>

TraceMessage_Editor 3210697320273763057
<default> editor for concept TraceMessage
  node cell layout:
     [- # alias # -> { message } <- -]

  inspected cell layout:
    <choose cell model>

Repeat_Editor 3308300503039660369
<default> editor for concept Repeat
  node cell layout:
     [-
 # alias # { count } times
   % body %
 end
 -]

  inspected cell layout:
    <choose cell model>
```

## Deviations

1. **Module names.** The recipe's `Kajak.sandbox` is the sandbox's folder; the module is
   `jetbrains.mps.samples.Kaja.sandbox`, its model `Kaja.sandbox.sandbox`. The worker prompt's "`Kajak.sandbox`"
   names the folder too. `Kajak.editortests` (S35 item 5) does not collide with any existing module.
2. **`rebuild: true` regenerates no language model.** Every MAKE `rebuild: true` (modules, `wholeProject`, the editor
   model) reported success but generated no Kaja/KajaAndOr aspect model: no transient model for them with
   `saveTransientModels`, no ModuleMaker cycle, no file under `languages/` touched (classes_gen stays the copy's
   2026-09-18 build). A model-scoped rebuild of the editor model generated only the generator's models. An
   **incremental** make does regenerate: a probe (`->` set to `->PROBE`, MAKE, reverted, MAKE) put `"->PROBE"`
   into `TraceMessage_EditorBuilder_a.java` and recompiled the module; after the revert `editor.mps` is
   byte-identical. So workers' edits will build; a "rebuild" of an unchanged language is a no-op. Not chased further
   (an MCP MAKE / MPS clean-make question, worth its own look).
3. **Structure model is not clean at baseline**: 1 model-level error "Can't find devkit
   jetbrains.mps.devkit.documentation" (corpus). The shared Clean item checks the structure model, so the
   observer must subtract it (or the fixture must drop that devkit import; not done here).
4. **Alias cells are `CellModel_Component`s** (`jetbrains.mps.lang.core.editor.alias`), not constants. A grep of
   the MPS checkout's generated `*EditorBuilder*.java` finds no component cell carrying a transformation menu or
   substitute info, so a `transformationMenu` set on the component itself may be ignored by the generator
   (unverified). S35's "wrapping accepted" covers the likely fix (a wrapping collection or an alias cell).
   **Settled** (S35-opus-1): a menu on the alias component cell generates its lookup (`setTransformationMenuLookup`
   and `SChildSubstituteInfo` on the component cell, `TraceMessage_EditorBuilder_a.java`); wrapping is not needed.
5. **S35 corpus claims verified:** EmptyLine_Editor carries the `CellModel_ContextAssistant`;
   EmptyLine_TransformationMenu (default, EmptyLine) has one `context assistant` section with `Step forward`,
   `Turn left`, the root-only group `Define a routine`, submenu `Control flow` {Repeat, While, If} and submenu
   `Other actions` = `include named menu OtherCommands`; OtherCommands (named, EmptyLine) has one context-assistant
   section {Drop, Pick, root-only group Require}. Nuance: an Action `Trace` put into OtherCommands lands inside the
   `Other actions` submenu, so a test reading only the top-level assistant items does not see its label.
   Repeat count's style class is `NumericLiteral` (item 5 matches). Step/LeftTurn editors are bare alias cells.
6. **Step 4 not done** (close, tar, sha256 in `../../pins.md`): the builder was told not to close the project.
