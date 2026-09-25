## JSON blueprint — `InheritedNodeScopeFactory` constraint

(Repeated from `referent-constraints.md` for completeness.)

```json
{
  "concept": "jetbrains.mps.lang.constraints.structure.NodeReferentConstraint",
  "references": [
    { "role": "applicableLink", "target": "<link-declaration-node-ref>" }
  ],
  "children": [
    { "role": "searchScopeFactory", "nodes": [
      { "concept": "jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory",
        "references": [
          { "role": "kind", "target": "<target-concept-node-ref>" }
        ]
      }
    ]}
  ]
}
```

Verify each FQN with `mps_mcp_get_concept_details` before inserting if your MPS version differs — the `jetbrains.mps.lang.scopes` language is relatively young and may gain new constructs (e.g. `visible roots`, `visible nodes`, `for model` caches) whose concept names must be looked up the same way.
