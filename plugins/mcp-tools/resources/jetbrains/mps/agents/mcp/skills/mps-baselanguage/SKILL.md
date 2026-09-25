---
name: mps-baselanguage
description: Author and edit MPS `jetbrains.mps.baseLanguage` (Java) nodes — choose between the Java parser and JSON AST blueprints, map Java syntax to baseLanguage concepts/roles, harvest persistent member references, and validate. Use when writing class/method bodies, fields, expressions, statements, or any Java/BaseLanguage code inside MPS models, especially when BaseLanguage extensions (smodel, closures, collections) are involved.
type: reference
---

# MPS BaseLanguage (Java) Authoring

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

`jetbrains.mps.baseLanguage` is MPS's Java-equivalent language. You edit it as an AST, not as text. Two authoring paths exist: the Java parser (`mps_mcp_parse_java_and_insert`) for plain Java, and JSON AST blueprints (`mps_mcp_insert_root_node_from_json` / `mps_mcp_update_root_node_from_json` / `mps_mcp_update_node`) for everything else — especially code that uses BaseLanguage extensions (`jetbrains.mps.lang.smodel`, `jetbrains.mps.baseLanguage.closures`, `jetbrains.mps.baseLanguage.collections`) or needs stable persistent member references.

## Critical Directives

- **Node equality**: always use `:eq:` and `:ne:` (concepts `NPEEqualsExpression` / `NPENotEqualsExpression`). Never `==` or `.equals()` between SNode references.
- **Constructor return type**: `ConstructorDeclaration.returnType` MUST be a `VoidType` node. Leaving it empty fails validation.
- **`ClassCreator` wiring**: `ClassCreator.baseMethodDeclaration` points at the **constructor declaration**, not the class. `InstanceMethodCallOperation.baseMethodDeclaration` points at the **method declaration**.
- **`new …` is a `GenericNewExpression` plus a creator**: the `GenericNewExpression` is the `Expression`; its `creator` child is `ClassCreator`, `ArrayCreator`, `ArrayCreatorWithInitializer`, `AnonymousClassCreator`, a collections creator, or smodel `SNodeCreator` (`new node<C>()`). Creators are `AbstractCreator`s, not `Expression`s, so none of them can stand alone in `ReturnStatement.expression`, an argument, or an initializer.
- **Inherited methods**: use the **declaring class** ref for `baseMethodDeclaration`, not the subclass that calls the method. E.g. `addActionListener` is declared on `AbstractButton`, so use the `AbstractButton` class ref.
- **Expressions in statement lists**: any `Expression` must be wrapped in `ExpressionStatement` to be valid inside a `StatementList`.
- **Variable declarations**: in method bodies wrap `LocalVariableDeclaration` in `LocalVariableDeclarationStatement`. In `ForStatement.variable` use `LocalVariableDeclaration` directly, no wrapper.
- **Prefer primitives**: use `string` (`StringType`) over `String` (`ClassifierType`) where possible; same for `int`, `boolean`, etc.
- **Compatibility**: BaseLanguage core is Java 7 (including generics). When building AST directly (JSON blueprints), there is no lambda/record syntax — use the `jetbrains.mps.baseLanguage.closures` extension for closures. The Java **parser** (`mps_mcp_parse_java_and_insert`) additionally accepts the Java 8+ syntax MPS recognizes — most notably **lambdas**, which it maps to `closures` `ClosureLiteral`s (auto-imported when `postProcess.importUsedLanguages` is on); a lambda only type-checks against a matching functional-type target. Constructs the parser does not recognize (e.g. records) still fail to parse. See `references/parse-java-tips.md`.
- **Surgical edits**: when a single child changes prefer `mps_mcp_update_node` over rewriting the whole root — full-root rewrites churn persistent IDs and break incoming refs.

## Choose Your Path

Pick the right authoring tool before you start:

- **`mps_mcp_parse_java_and_insert`** — use for plain Java skeletons or bodies (classes, methods, statements, expressions), including the current MPS Console input (`insert.mode: "console"` to replace the console command, or `mode: "child"/"replace"` with a `parentRef`/`targetRef` inside the current console command for nested edits). Fastest path when no BaseLanguage extension is required.
- **JSON AST blueprints** — use when the parser is unavailable, when the code uses BaseLanguage extensions (smodel, closures, collections), or when stable persistent references to members are required for downstream consumers.
- **Mixed** — use the parser for the skeleton with placeholders (e.g. `IntegerConstant`, `StringLiteral`, `IntegerType`, `StringType`), then JSON-edit the placeholders to swap in extension-specific subtrees.

## Common Workflow

1. **Scope**: call `mps_mcp_get_current_editor_root_node` to know where you are inserting (method body, field initializer, root, …).
2. **Resolve dependencies**: confirm the containing model imports the right languages (`jetbrains.mps.baseLanguage` plus any extensions). Models for referenced nodes must also be imported.
3. **Skeleton first**: for any non-trivial root, insert a placeholder skeleton (`mps_mcp_create_root_node` + `mps_mcp_update_root_node_from_json` or the parser) before filling member bodies.
4. **Harvest references**: for own members, run `mps_mcp_print_node` on the skeleton to read persistent refs of constructors, methods, and fields. For JDK / library stubs, derive refs from the class ref using the URL-encoded signature formula (see references).
5. **Apply bodies**: edit one subtree at a time with `mps_mcp_update_node`, or bulk-rewrite via `mps_mcp_update_root_node_from_json`.
6. **Auto-resolution**: for unambiguous local refs (a parameter, a local variable, a unique method name), pass the plain name as `target` — MPS resolves it after insertion. For overloaded or stub members, use a persistent ref.
7. **Validate in three gates**:
   - `dryRun: true` on insert tools — catches structural / assignability errors before mutation
   - `mps_mcp_check_root_node_problems` — semantic checking
   - `mps_mcp_alter_nodes MAKE` — generation + compilation
8. **Repair**: if a few refs are broken after insert, run `mps_mcp_alter_nodes FIX_REFERENCES` rather than re-harvesting all of them.

## Related Skills

- **`mps-node-editing`** — general node mutation tools (`mps_mcp_update_node`, etc.). Load first if you have not seen them.
- **`mps-aspect-structure-concepts`** — defines what concepts exist and what roles they expose. Read when authoring a brand-new language whose concepts extend BaseLanguage.
- **`mps-quotations`** — light/quoted SNode literals embedded in BaseLanguage code (e.g. inside behavior or generator bodies).
- **`mps-model-manipulation`** — `smodel` + `collections` + `closures` patterns layered on top of BaseLanguage; load when manipulating MPS nodes from BaseLanguage.
- **`mps-aspect-behavior`**, **`mps-aspect-typesystem`**, **`mps-aspect-constraints`** — each owns a language whose function bodies are BaseLanguage; reach for those skills when the surrounding aspect matters.

## Reference Index

- Open `references/concept-mapping.md` when you need the Java-syntax → MPS-concept lookup table and the key role names (statements, expressions, types, declarations).
- Open `references/json-patterns.md` when you need ready-to-paste JSON blueprints for common constructs (local variable, node-equality, instance-method call, anonymous class, array creation (sized or with initializer), super-constructor call, empty class template).
- Open `references/critical-rules.md` when something fails validation and you want the rulebook on `ExpressionStatement`, `ClassCreator`, anonymous classes, mandatory bodies, `FieldReferenceOperation`, etc.
- Open `references/parse-java-tips.md` when using `mps_mcp_parse_java_and_insert` and you need binary-expression priority handling, placeholder strategy, or post-insert verification steps.
- Open `references/stub-references.md` when you need to point a `baseMethodDeclaration` at a JDK or library member — covers ref derivation, URL encoding, inherited-method handling, and the GET_ASSIGNABLE_REFERENCES fallback.
- Open `references/json-ast-workflow.md` when authoring a non-trivial BaseLanguage root via JSON AST — covers staged skeleton → harvest → patch → validate, plus the `ClassCreator` vs `InstanceMethodCallOperation` ref distinction.
- Open `references/troubleshooting.md` when you hit `dryRun` errors, broken-ref symptoms in generated Java (`new ()`, `???()`), stale-ref errors, or "model checks pass but MAKE fails".
