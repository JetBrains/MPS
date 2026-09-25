## `mps_mcp_check_root_node_problems` — Output Format

Validates the specified node (and its descendants) or the specified model. Accepts an `SNodeReference`, an `SModelReference`, or a qualified model name (the same form `mps_mcp_get_project_structure` `startingPoint` accepts). Pass any of these in `nodeReference` — there is no `modelReference` parameter. If no problems are found, returns `data: "no problems found"`; otherwise it returns the problem report inline in `data` when the serialized report is at most `maxInlineBytes` characters (default 20000), and a temp-file path above that. It reports *problems*, not content: to verify what a root actually contains, print it — `mps_mcp_print_node` with `deep=true` or `format: "PLAIN TEXT"` covers a whole root in one call (see `references/analysis-tools/print-node-output.md`).

> **Passing the MODEL reference checks every root of the model in one call and is exhaustive; do NOT re-check roots individually after a clean model-level result.** `data: "no problems found"` for a model means every root in it is clean — a per-root sweep afterwards costs one call per root and cannot find anything new. Use `autoApplyQuickFixes=true` to apply single auto-applicable fixes in the same call (node/root references only; with a model reference the flag is ignored and the envelope says so in `warnings`).

Checking a **model** reference is exhaustive: it validates the model itself (imports, used languages, devkits) and runs the full checker stack on every root, so `details.rootsChecked: <N>` together with `details.scope: "model"` states the coverage — do not re-check the roots individually. Problems are reported as the model object plus a `roots` array, one entry per offending root (`root`, `name`, `concept`, `errors`, `warnings`, and `nodes`/`tree` following `onlyNodesWithProblems`); `perRoot=true` returns `[{root, name, concept, errors, warnings}]` for every root, clean ones included, which replaces N single-root calls with one.

- `onlyNodesWithProblems=true` (default) returns a flat list of just the nodes that have problems — easier to skim.
- `onlyNodesWithProblems=false` returns the full subtree with `problems` arrays attached to each node, property, reference, and child role; useful when sibling context matters.
- `autoApplyQuickFixes=true` (node/root branch only) runs, for every problem carrying *exactly one* auto-applicable quick-fix within the given node's subtree, that fix before returning the *final* report (a problem with several auto-applicable fixes is skipped). The applied fixes' descriptions come back in `details.appliedQuickFixes`; fixes that threw during execution in `details.failedQuickFixes`. This is one round — if the fresh report still exposes auto-applicable fixes, call again. Note: a fix may write outside the target model; only the target model is saved automatically.

Every `problems[]` entry may carry a `quickFixes` array (omitted when empty). Each fix has an `id` (a stable class FQN — the quick-fix runtime class, always present), a `description` (may be JSON `null` — quick-fixes without a description block), and `autoApplicable`. Apply one with `mps_mcp_apply_intention(nodeReference = <the containing node's reference>, intentionId = <the fix's id>)`. See `references/analysis-tools/intentions-and-quick-fixes.md`.

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
      "quickFixes": [ { "id": "…_QuickFix", "description": "…|null", "autoApplicable": false } ] }
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
