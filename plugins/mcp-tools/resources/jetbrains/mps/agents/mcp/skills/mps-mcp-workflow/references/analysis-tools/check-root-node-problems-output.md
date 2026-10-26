## `mps_mcp_check_root_node_problems` — Output Format

Validates the specified node (and its descendants), model, or module. Accepts an `SNodeReference`, an `SModelReference` or a qualified model name (the same form `mps_mcp_get_project_structure` `startingPoint` accepts), or a module reference (`<uuid>(name)`) or module name. Pass any of these in `nodeReference` — there is no `modelReference` or `moduleReference` parameter. If no problems are found in the checked nodes, returns `data: "no problems found"` when all relevant checks ran; when unchecked subtrees exist, the data instead says `no problems found in checked nodes (N subtree(s) unchecked: one or more typesystem, constraints, scope or target-concept checks were skipped)`. Otherwise it returns the problem report inline in `data` when the serialized report is at most `maxInlineBytes` characters (default 20000), and a temp-file path above that. It reports *problems*, not content: to verify what a root actually contains, print it — `mps_mcp_print_node` with `deep=true` or `format: "PLAIN TEXT"` covers a whole root in one call (see `references/analysis-tools/print-node-output.md`).

> **Passing the MODEL reference checks every root of the model in one call and is exhaustive; do NOT re-check roots individually after a clean model-level result.** An unqualified `data: "no problems found"` for a model means every root in it is clean and all relevant checks ran — a per-root sweep afterwards costs one call per root and cannot find anything new. If unchecked subtrees exist, read the explicit clean-but-unchecked `data` message and `details.uncheckedSubtrees` instead. Use `autoApplyQuickFixes=true` to apply single auto-applicable fixes in the same call (node/root references only; with a model reference the flag is ignored and the envelope says so in `warnings`).

Checking a **model** reference is exhaustive: it validates the model itself (imports, used languages, devkits) and runs the full checker stack on every root, so `details.rootsChecked: <N>` together with `details.scope: "model"` states the coverage — do not re-check the roots individually. Problems are reported as the model object plus a `roots` array, one entry per offending root (`root`, `name`, `concept`, `errors`, `warnings`, and `nodes`/`tree` following `onlyNodesWithProblems`); `perRoot=true` returns `[{root, name, concept, errors, warnings, messages?, moreMessages?}]` for every root, clean ones included, which replaces N single-root calls with one. A row with `errors + warnings > 0` adds `messages: [{severity, message, count, node, hasQuickFixes?}]` — distinct error/warning texts grouped by `(severity, full text)`, ordered errors before warnings, higher `count` first, then first occurrence (`info` items omitted); `node` is the first reporting node in subtree order, `hasQuickFixes: true` is set when any node-level item in the group has a quick fix (re-check a root only to list its `quickFixes`, never just to read the texts), and soft property errors name the property (`Empty enumeration property: '<name>'`, `Property value is invalid: '<name>'`). Each row caps at 5 entries (adding `moreMessages` when cut; with no `moreMessages`, `count`s sum to `errors + warnings`) and truncates messages over 300 chars at a code-point boundary (`…`). To fit `maxInlineBytes`, `perRoot` tries 5 messages per row (`details.messagesPerRow: 5`), then 1 per row (`details.messagesPerRow: 1`), then spills the 5-per-row payload to a temp file (`messagesPerRow` omitted when all rows are clean). Model-level problems go to `details.modelProblems` (`[{severity, message, node?}]`, all severities).

Checking a **module** reference or module name covers the module itself (dependencies, used languages, runtime modules) and every model it owns — a language's generators included, stub and `@descriptor` models excluded — in one call. A clean verdict means no problems were found in the checked models; read `data` and `details.uncheckedSubtrees` to see whether some checker passes were skipped. Do not follow a clean, non-truncated result with per-model checks. `details` carries `scope: "module"`, `modulesChecked` (the module plus its generators), `modelsChecked` and `rootsChecked`.

- Module-level problems are rows `{module, severity, message}`. **Module-level warnings do not make a module unclean**: MPS warns about routine states of healthy languages (a missing `extends` for inherited `IValidIdentifier` subconcepts, a superfluous extended module, a missing runtime module). A clean answer can therefore still carry `details.moduleProblems`; read them, but they are not failures. A module-level error, and any model- or root-level problem, makes the answer unclean.
- Problems come back as the module object `{name, reference, problems: [module-level rows], models: [...]}`; each `models` entry is exactly a model-scope report (model object plus `roots`), listed only when that model has problems.
- `perRoot=true` returns `[{model, name, rootsChecked, errors, warnings, messages?, moreMessages?}]` for every checked model, clean ones included; module-level rows are in `details.moduleProblems`. A row with problems adds `messages` with the same shape, caps, `moreMessages`, and `details.messagesPerRow` fallback as a model `perRoot` row, merging the model's own error/warning problems (`node` only for `NodeReportItem`s, `hasQuickFixes` never set) with its roots' (unlike model scope, where model-level problems go to `details.modelProblems`).
- A sweep that would run too long stops between models: `details.truncated: true`, `details.modelsNotChecked` lists the rest, and a clean answer reads `no problems found in N of M models`; if checked models contain unchecked subtrees, the verdict appends their count and says which checks did not run. Check the rest by model reference.
- A bare name that names both a model and a module (a sandbox solution and its model, say) checks the model and warns with the module reference to pass instead.

- `onlyNodesWithProblems=true` (default) returns a flat list of just the nodes that have problems — easier to skim.
- `onlyNodesWithProblems=false` returns the full subtree with `problems` arrays attached to each node, property, reference, and child role; useful when sibling context matters.
- `autoApplyQuickFixes=true` (node/root branch only) runs, for every problem carrying *exactly one* auto-applicable quick-fix within the given node's subtree, that fix before returning the *final* report (a problem with several auto-applicable fixes is skipped). The applied fixes' descriptions come back in `details.appliedQuickFixes`; fixes that threw during execution in `details.failedQuickFixes`. This is one round — if the fresh report still exposes auto-applicable fixes, call again. Note: a fix may write outside the target model; only the target model is saved automatically.

Every `problems[]` entry may carry a `quickFixes` array (omitted when empty). Each fix has an `id` (a stable class FQN — the quick-fix runtime class, always present), a `description` (may be JSON `null` — quick-fixes without a description block), and `autoApplicable`. Apply one with `mps_mcp_apply_intention(nodeReference = <the containing node's reference>, intentionId = <the fix's id>)`. See `references/analysis-tools/intentions-and-quick-fixes.md`.

A typesystem, constraints or scope problem may also carry `rules` (omitted when empty): `[{rule, ruleReference, statement}]`, where `rule` and `ruleReference` are the name (the presentation for constraints and behavior roots, which store none, e.g. `Foo_Constraints`) and reference of the rule root that reported it and `statement` the reporting node inside that rule (the `error` statement or the inequality). The first entry is the reporting rule; for a type inequality the further entries are the rules it was nested in. A problem about a property or reference — an out-of-scope target, a failing property validator — sits in that `properties[]` or `references[]` entry's `problems`, not the node's. Open `ruleReference` with `mps_mcp_print_node` to read the rule instead of searching the typesystem aspect for it.

**Commented-out code is not type- or constraints-checked.** The typesystem checkers skip every subtree marked `IDontApplyTypesystemRules`, and the constraints, reference-scope and target-concept checkers every subtree marked `ISkipConstraintsChecking` — a commented-out node, a `lang.text` node wrapper; a console root's history carries both — so a type, constraint or scope error inside one is not reported. Structure checks still run. Such subtrees are counted: `details.uncheckedSubtrees` (node scope, and the total for a model or module), `uncheckedSubtrees` on each root summary and `perRoot` row, and on each model row of a module `perRoot` answer; a nested comment counts once, with the subtree around it. A clean verdict over such subtrees uses `no problems found in checked nodes` (or preserves a truncated module's `N of M models` prefix), includes the unchecked count in `data`, and adds a `warnings` entry saying they were not type- or constraint-checked. Do not use a commented-out sample to learn whether a type fits: ask `mps_mcp_query_types` (`references/analysis-tools/type-queries.md`).

Besides the standard structure/constraints/typesystem checkers, the check also decodes the encoded feature ids stored on attribute nodes — `PropertyAttribute.propertyId` (used by `PropertyMacro`) and `LinkAttribute.linkId` (used by `ReferenceMacro`) — and reports a malformed, blank, or non-resolving id as a structure-level error on the offending macro. This catches the common mistake of pasting a node reference, a short id, or a bare property name into `propertyId`, which the write path accepts silently and which otherwise only fails at generation time as an opaque "an error occurred". Run a check after attaching or editing any `PropertyMacro`/`ReferenceMacro`.

Each entry has the shape:

```
{
  "name": "NodeName",
  "reference": "PersistentNodeReference",
  "concept": "ConceptName",
  "conceptReference": "PersistentConceptReference",
  "problems": [
    { "severity": "error|warning|info", "message": "...",
      "quickFixes": [ { "id": "…_QuickFix", "description": "…|null", "autoApplicable": false } ],
      "rules": [ { "rule": "typeof_…", "ruleReference": "PersistentRootReference", "statement": "PersistentNodeReference" } ] }
  ],
  "properties": [
    { "name": "propertyName", "type": "propertyType", "value": "propertyValue",
      "problems": [ { "severity": "error|warning|info", "message": "..." } ] }
  ],
  "references": [
    { "role": "linkRole", "type": "targetConcept",
      "typeReference": "PersistentConceptReference",
      "cardinality": "0..1|1",
      "target": "TargetNodeName", "targetReference": "PersistentTargetReference",
      "problems": [ { "severity": "error|warning|info", "message": "..." } ] }
  ],
  "children": [
    { "role": "linkRole", "type": "targetConcept",
      "typeReference": "PersistentConceptReference",
      "cardinality": "0..1|1|0..n|1..n",
      "problems": [ { "severity": "error|warning|info", "message": "..." } ],
      "nodes": [
        { "name": "...", "reference": "...", "concept": "...", "conceptReference": "...",
          "problems": [...], "properties": [...], "references": [...], "children": [...] }
      ]
    }
  ]
}
```
