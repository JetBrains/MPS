## Intentions & quick-fixes

Two tools bring the editor's Alt+Enter context actions to a node **without opening an editor**:

- `mps_mcp_list_node_intentions(nodeReference, includeAncestors=true, includeDisabled=false, includeQuickFixes=true)` —
  lists the intentions and quick-fixes available on a node. Returns a temp-file path whose JSON is an
  array of entries:

  ```
  { "type": "intention" | "quickFix",
    "id": "…_Intention (persistentStateKey) | …_QuickFix (stable class FQN; always present)",
    "kind": "ERROR | QUICKFIX | MIGRATION | NORMAL",
    "presentation": "static name (intention only)",
    "description": "the Alt+Enter row text (arguments baked in); JSON null for a quickFix without a description block",
    "targetNode": "<ref> — the node the entry applies to; pass THIS as nodeReference to apply",
    "declarationNode": "<ref> — the IntentionDeclaration / QuickFix source; print it to read the body",
    "parameterized": false,                 // intention only; true ⇒ pass `description` when applying
    "parameter": "…",                        // parameterized only
    "enabled": false,                        // intention only; present only when user-disabled
    "problemMessage": "…", "autoApplicable": false }   // quickFix only
  ```

  `includeAncestors` mirrors the editor by also listing ancestor-node actions; `includeDisabled`
  adds disabled intentions (marked `enabled: false`); `includeQuickFixes` merges checker
  quick-fixes. Surround-with intentions are not listed.

- `mps_mcp_apply_intention(nodeReference, intentionId, description=null, problemMessage=null)` —
  applies one entry (from the listing, or a `quickFixes` entry of `mps_mcp_check_root_node_problems`)
  inside an undoable command. Pass `nodeReference` = the entry's `targetNode` (for a check-report
  fix, the problem node's `reference`) and `intentionId` = the entry's `id`. `description`
  disambiguates when several instances share the id (parameterized intentions, repeated fixes);
  `problemMessage` pins a quick-fix to one problem. When the remaining candidates genuinely differ,
  an INVALID_REQUEST error lists them; when they are indistinguishable, the first is applied with a
  warning (a parameterized intention's instances may still differ in their parameter). On success
  returns `{applied, type, description, targetNode, problems:{before,after}}` with error/warning
  counts — `targetNode` is `null` plus a warning if the action deleted or replaced the node; an
  unknown id yields NOT_FOUND with a hint to re-list. The applied action may write outside the
  target model; only the target model is saved automatically.

Typical loop: `check_root_node_problems` → read a `quickFixes` id → `apply_intention` → re-check.
Or `list_node_intentions` → pick an entry → `apply_intention(entry.targetNode, entry.id)`.
