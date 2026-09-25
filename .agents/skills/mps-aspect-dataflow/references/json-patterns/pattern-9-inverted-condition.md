## Pattern 9: Inverted condition — `UnlessStatement_DataFlow` (sample language)

For a language concept that is semantically "execute body UNLESS condition", the dataflow uses the same `ifjump → label` structure as a regular `if`. Both branches are explored by the engine; the condition direction only matters for value-flow analyses, not for reachability.

Source: `r:38e64454-bd7a-45b9-8394-d534cb1010ca(org.jetbrains.mps.samples.IfAndUnless.dataFlow)/3446179501564629101`

Emitted sequence (outline):
1. `code for node.condition`
2. BL `if` checking constant-condition optimisation:
   - Not constant path: `ifjump → LabelPosition(endOfBody)`
   - Constant path: `jump → LabelPosition(endOfBody)` (unreachable branch skipped unconditionally)
3. `code for node.body`
4. `endOfBody` label

This is structurally identical to `IfStatement_DataFlow` (Pattern 4). The engine always explores both the "jump taken" and "fall-through" paths; which one represents the "true" condition does not affect reachability analysis.
