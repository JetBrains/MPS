## Validated root-concept references

### `InferenceRule`
- FQN: `jetbrains.mps.lang.typesystem.structure.InferenceRule`
- Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1174643105530`
- Language: `jetbrains.mps.lang.typesystem`
- Rootable: yes
- Key children: `applicableNode` (the parameter declaration), `body` (statement list with `typeof ... :==: ...` / `error ... -> node` etc.)
- Key property: `overrides` (boolean)

### `NonTypesystemRule`
- FQN: `jetbrains.mps.lang.typesystem.structure.NonTypesystemRule`
- Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1195214364922`
- Key children: `applicableNode`, `body`
- Key property: `overrides`

### `SubtypingRule`
- FQN: `jetbrains.mps.lang.typesystem.structure.SubtypingRule`
- Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1175147670730`
- Rootable: yes
- Key children: `applicableNode` (the type to match), `body` (returns a type node or `nlist<>`)

### `ComparisonRule`
- FQN: `jetbrains.mps.lang.typesystem.structure.ComparisonRule`
- Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1188811367543`
- Rootable: yes
- Key children: `applicableNode` (first type), `anotherNode` (second type), `body` (returns boolean)
- Key property: `isWeak` (boolean)

### `InequationReplacementRule` (editor label: "replacement rule")
- FQN: `jetbrains.mps.lang.typesystem.structure.InequationReplacementRule`
- Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1201607707634`
- Rootable: yes
- Key children: `applicableNode` (subtype pattern), `supertypeNode` (supertype pattern), `isApplicableClause` (0..1, `IsReplacementRuleApplicable_ConceptFunction`), `overridesFun` (0..1), `body`
- Key property: `isWeak` (boolean)

### `SubstituteTypeRule`
- FQN: `jetbrains.mps.lang.typesystem.structure.SubstituteTypeRule`
- Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/6405009306797516074`
- Rootable: yes
- Key children: `applicableNode`, `body` (StatementList — last expression is the substitute or `null`)

### `TypesystemQuickFix`
- FQN: `jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix`
- Rootable: yes
- Key children:
  - `executeBlock` (`QuickFixExecuteBlock`, 1) — mutates the model
  - `descriptionBlock` (`QuickFixDescriptionBlock`, 0..1) — returns the UI label string
  - `quickFixArgument` (`QuickFixArgument`, 0..n) — each has `name` property + `argumentType` child (`SNodeType` for `node<C>` args)
- Key property: `name`

### `WhenConcreteStatement`
- FQN: `jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement`
- Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1185805035213`
- Not a root — used inside `InferenceRule` bodies
- Key children: `argument` (Expression), `argumentRepresentator` (`WhenConcreteVariableDeclaration`), `body` (StatementList)

### Message-statement concepts (children of statements that emit messages)

| Concept | FQN | Role in statement |
|---|---|---|
| `WarningStatement` | `jetbrains.mps.lang.typesystem.structure.WarningStatement` | `warning "…" -> node;` |
| `ReportErrorStatement` | `jetbrains.mps.lang.typesystem.structure.ReportErrorStatement` | `error "…" -> node;` |
| `InfoStatement` | `jetbrains.mps.lang.typesystem.structure.InfoStatement` | `info "…" -> node;` |
| `TypesystemIntention` | `jetbrains.mps.lang.typesystem.structure.TypesystemIntention` | Wrapper in `helginsIntention` slot holding `quickFix` ref + `actualArgument` children |
| `TypesystemIntentionArgument` | `jetbrains.mps.lang.typesystem.structure.TypesystemIntentionArgument` | One actual arg; `quickFixArgument` ref + `value` Expression child |
| `QuickFixArgument` | `jetbrains.mps.lang.typesystem.structure.QuickFixArgument` | Declared parameter in the quick-fix |
| `QuickFixArgumentReference` | `jetbrains.mps.lang.typesystem.structure.QuickFixArgumentReference` | Reading a declared arg inside the quick-fix body |
| `MessageTarget` | `jetbrains.mps.lang.typesystem.structure.MessageTarget` | Abstract; child in `messageTarget` slot |
| `PropertyMessageTarget` | `jetbrains.mps.lang.typesystem.structure.PropertyMessageTarget` | `propertyDeclaration` ref → property to highlight |

### `applicableNode` plumbing

| Concept | FQN | Purpose |
|---|---|---|
| `ApplicableNodeCondition` | `jetbrains.mps.lang.typesystem.structure.ApplicableNodeCondition` | Rule's `applicableNode` child (container) |
| `ConceptReference` | `jetbrains.mps.lang.typesystem.structure.ConceptReference` | Inside `ApplicableNodeCondition`; `name` prop + `concept` ref |
| `ApplicableNodeReference` | `jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference` | Usage of the bound variable in the body |

### Equation/inequation AST nodes

| Concept | FQN | Syntax |
|---|---|---|
| `CreateEquationStatement` | `jetbrains.mps.lang.typesystem.structure.CreateEquationStatement` | `typeof(x) :==: expr` |
| `TypeOfExpression` | `jetbrains.mps.lang.typesystem.structure.TypeOfExpression` | `typeof(x)` — has `term` child (Expression) |
| `NormalTypeClause` | `jetbrains.mps.lang.typesystem.structure.NormalTypeClause` | Wraps an Expression in a type clause role |
| `GetOperationType` | `jetbrains.mps.lang.typesystem.structure.GetOperationType` | `operation type(op, leftType, rightType)` |
| `WhenConcreteVariableDeclaration` | `jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableDeclaration` | Bound var in `when concrete` block |
| `WhenConcreteVariableReference` | `jetbrains.mps.lang.typesystem.structure.WhenConcreteVariableReference` | Reference to that bound var |

### Sibling navigation smodel operations (used in checking bodies)

| Operation | FQN |
|---|---|
| `prev-sibling` | `jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingOperation` |
| `next-sibling` | `jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation` |
| `.isNull` | `jetbrains.mps.lang.smodel.structure.Node_IsNullOperation` |
| `.isNotNull` | `jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation` |
| `.isInstanceOf(C)` | `jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation` |
| `.detach` | `jetbrains.mps.lang.smodel.structure.Node_DetachOperation` |
