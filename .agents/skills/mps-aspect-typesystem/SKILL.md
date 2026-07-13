---
name: mps-aspect-typesystem
description: >-
  Use when authoring or debugging MPS typesystem — inference rules (`typeof :==: / :<=: / :>=:`), `SubtypingRule`, `ComparisonRule`, `InequationReplacementRule`, `SubstituteTypeRule`, `WhenConcreteStatement` blocks, `NonTypesystemRule` checking rules, `TypesystemQuickFix`, error/warning/info reports with `messageTarget` highlighting and quick-fix wiring (`helginsIntention`), and shared BaseLanguage helpers in the typesystem model. Reach for this skill whenever the task involves editing `<lang>/languageModels/typesystem.mps`.
type: reference
---

# MPS Typesystem and Checking Aspect

The **typesystem** aspect gives nodes *types* and reports semantic errors. It combines two related sub-aspects:

- **Typesystem rules** — compute types and constraints on them (`InferenceRule`, `SubtypingRule`, `InequationReplacementRule`, `ComparisonRule`, `SubstituteTypeRule`).
- **Non-typesystem checking rules** — produce errors/warnings/messages without contributing to type inference (`NonTypesystemRule`, a.k.a. "checking rule").

Lives in `<lang>/languageModels/typesystem.mps`, language `jetbrains.mps.lang.typesystem`. Rule bodies are BaseLanguage + smodel + collections + closures.

## Critical Directives

- One `InferenceRule` (or other root rule) per concept whose type/check you compute. Multiple rules collectively constrain a node — keep each rule focused.
- The `infer` prefix makes an inequation *soft* (the solver tries to satisfy it, will not immediately error). Without `infer`, violating the inequation reports an error. Choose deliberately.
- In equation/inequation JSON, both `leftExpression` and `rightExpression` are `TypeClause` slots — **always wrap the real Expression in a `NormalTypeClause`** (`normalType` child holds the actual Expression). Do not put the Expression directly under `leftExpression`/`rightExpression`.
- TextGen-style dispatch caveat does **not** apply here; typesystem rules are inherited via concept hierarchy, but the `overrides` property on a rule suppresses inherited rules from superconcepts.
- TextGen / typesystem error messages: wrap smodel expressions that render types with `<...>` presentation: `error "Expected " + <expectedType> + " but got " + <actualType> -> node;`. Avoid raw `toString`.
- `when concrete (typeof(expr) as v) { ... }` defers a block until the type is fully resolved — use it before deciding whether to report an error or assign a result type.
- Quick fixes (`TypesystemQuickFix`) are roots, **not** executed automatically — the user triggers them via the UI. Wire them into a report through the `helginsIntention` slot (`TypesystemIntention` wrapper with `quickFix` ref + `actualArgument`s). See `references/quick-fixes.md`.
- Reusable helper code (utility classes, shared algorithms) can live as a plain BaseLanguage `ClassConcept` root **directly in the typesystem model**. No separate utility module is required.
- For MPS-typed return types (`sequence<node<X>>`, `list<node<X>>`) the Java parser gives back `List<SNode>` — fix per `mps-model-manipulation/references/variable-declarations.md`.
- Edit typesystem models through MPS MCP tools (`mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`, `mps_mcp_parse_java_and_insert`). Do not hand-edit `.mps` files.
- After edits run `mps_mcp_check_root_node_problems`, compile the language, and test on sample models.

## Common-Path Workflow

1. Create a `typesystem` model (`mps_mcp_create_model` with `modelName: "<lang>.typesystem"` — aspect ID `typesystem`, case-sensitive, no `@` suffix; see [aspect-model-stereotypes.md](../mps-mcp-workflow/references/aspect-model-stereotypes.md)) if absent.
2. Add used languages: `jetbrains.mps.lang.typesystem`, and any languages used in bodies (`smodel`, `collections`, `closures`, `baseLanguage`).
3. Add `InferenceRule` roots for concepts whose types you compute (see `references/inference-rules.md`).
4. Add `SubtypingRule` / `ComparisonRule` / `InequationReplacementRule` / `SubstituteTypeRule` roots for the type lattice (see `references/lattice-rules.md`).
5. Add `NonTypesystemRule` roots for checks that are not about types (see `references/non-typesystem-checking.md`).
6. Add `TypesystemQuickFix` roots for any fix you want to attach to reports; wire them via a `helginsIntention`/`TypesystemIntention` child of the `warning`/`error`/`info` statement (see `references/quick-fixes.md`).
7. Write bodies with BaseLanguage + smodel. Use `when concrete` (`references/when-concrete.md`) when you need resolved types before checking. For helper code, place a `ClassConcept` root directly in the typesystem model and call it from rules.
8. Validate: `mps_mcp_check_root_node_problems` plus compile the language and test on sample models. A `helginsIntention`-wired quick fix now surfaces in the check report's `quickFixes` array and can be applied with `mps_mcp_apply_intention(nodeReference = <problem node>, intentionId = <fix id>)`; an auto-applicable fix runs under `autoApplyQuickFixes=true`.

## Related Skills

- `mps-aspect-behavior` — behavior methods called from rule bodies via `node.method()`; common host for `getType` / `isAssignableFrom`-style helpers callable from typesystem.
- `mps-aspect-constraints` — non-type validation often lives in constraints; consider whether a check belongs there before adding a `NonTypesystemRule`.
- `mps-aspect-intentions` — distinct from `TypesystemQuickFix` (intentions are user-invoked from caret; quick fixes attach to a report).
- `mps-model-manipulation` — full BaseLanguage / smodel / collections reference used inside rule bodies (`StatementList`, `DotExpression`, smodel operations, the `List<SNode>` → `sequence<node<X>>` return-type fix).
- `mps-quotations` — `<type>` literals in rule bodies are heavy quotations; `%(expr)%` splices use the `Antiquotation` family. The typesystem model usually uses `jetbrains.mps.lang.quotation` as a used language.
- `mps-aspect-structure-concepts` — when introducing the type concept(s) the rules target.

## Reference Index

- Open `references/inference-rules.md` when writing or debugging an `InferenceRule` — the operator vocabulary (`:==:`, `:<=:`, `:>=:`, soft `infer`, strong `:<<=:` / `:>>=:`), free type variables (`var elementType;`), `join(A | B)`, `%(...)%` anti-quotations in `<...>` literals, and the four worked examples (StringLiteral, ParenthesizedExpression, TernaryOperator, ForEachStatement).
- Open `references/when-concrete.md` when a rule must wait for a resolved concrete type before deciding — `WhenConcreteStatement` shape, nested `when concrete` blocks, `operation type(op, leftType, rightType)`, and the bound-variable plumbing (`WhenConcreteVariableDeclaration` / `WhenConcreteVariableReference`).
- Open `references/lattice-rules.md` for the type-lattice rules — `SubtypingRule` (single supertype or `nlist<>` of supertypes), `InequationReplacementRule` (a.k.a. "replacement rule", structural subtyping with `isApplicableClause`, `isWeak`, `equationInfo.getNodeWithError()`), `ComparisonRule` (`boolean` body, `weak`), and `SubstituteTypeRule` (`attributedNode`, return-or-null pattern).
- Open `references/non-typesystem-checking.md` when adding a `NonTypesystemRule` ("checking rule") — `error / warning / info "msg" -> node;`, `isStrongSubtype(typeof(x) :<< t)` for strict-subtype tests, and the `CheckExcessTypeCasts` example.
- Open `references/quick-fixes.md` when authoring a `TypesystemQuickFix` and wiring it into a report — `QuickFixArgument` declarations, `executeBlock` / `descriptionBlock`, the three sample fixes (`RemoveExcessTypeCast`, `RemoveMisplacedDash`, `HideCardinalityOne`), and the full JSON for the `helginsIntention` / `TypesystemIntention` / `TypesystemIntentionArgument` plumbing.
- Open `references/messages-and-helpers.md` when crafting messages — the `<...>` type-rendering convention, `messageTarget` to highlight just a property/reference/child cell, `PropertyMessageTarget` shape, and shared BaseLanguage helper roots (`ElementSummary` pattern).
- Open `references/json-blueprints.md` when inserting nodes via MCP — body-level skeletons for each equation/inequation kind, `ReportErrorStatement` / `WarningStatement` / `InfoStatement` with optional `helginsIntention` / `messageTarget`, anti-quotation handling inside quotations, minimal rule-root skeletons, and the full validated concept reference with FQNs and concept refs.
- Open `references/common-failures.md` when a type is `undefined`, subtyping isn't applied, error messages render badly, return types fight the Java parser, rules cycle, quick fixes aren't offered, `when concrete` bodies never run, or `SubstituteTypeRule` seems ignored.
