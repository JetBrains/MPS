# D89 — `print_node` JSON drops the content of a node whose concept is not loaded

Status: implemented 2026-09-30 (uncommitted at the time of writing). Settled with a second reviewer session over two plan rounds and one implementation round. Archived as D89 in `study/docs-defects-archive.md`.

## The defect (from `study/docs-defects.md`)

`mps_mcp_print_node` JSON on a node whose concept is not loaded returns a 397 B record: `name:"X (concept is not found)"`, `properties:[]`, `children:[]`, also with `deep:true`. `PLAIN TEXT` of the same root is 2.9 KB. S8-sonnet concluded that the sandbox content was "NOT visible" and shipped a thin `sandbox.md` (round 18: `S8-opus-1:21` vs `:23`, `S8-sonnet-1:19, :34`; `S2-opus-1:13`).

## Cause (verified in the code)

`AbstractOps.nodeHierarchyJsonObject` (`common/AbstractOps.kt:1488`) iterates the **concept's declared features**, not the node's stored ones:

- `addNodeFeatures` (`:1533`): `for (prop in node.concept.properties)`.
- `addNodeChildren` (`:1602`): `for (link in node.concept.containmentLinks)`, looking each role up in `node.children.groupBy { it.containmentLink }`.
- References (`:1565`) already iterate the stored `node.references`, so they are printed.

When the concept's language is not deployed, `SConceptAdapterById` has no descriptor: `properties` and `containmentLinks` are empty, so every stored property and every child disappears. `SNode.getName()` returns `null` (the `isSubConceptOf(INamedConcept)` check fails), and the name falls back to `SNode.getPresentation()`, which produces the `"X (concept is not found)"` string (`core/kernel/.../SNode.java:231-235`).

The raw data is still there. `SNode.getProperties()` lists the stored properties, `getChildren()` the children, and each `SProperty` / `SContainmentLink` / `SReferenceLink` adapter keeps the name from the model's persistence registry. Without a descriptor, an adapter answers with defaults: `targetConcept` = `BaseConcept`, `isMultiple`/`isOptional` = `true`, no `sourceNode`. `PLAIN TEXT` works because the reflective editor reads the same raw data.

The same code also silently drops a stored property or child whose role is **not declared** by a concept that *is* loaded. This happens when the runtime is stale (D80) or when a role was removed from the structure without a migration. It is the same mechanism in a less visible form.

## Proposed change

### 1. Print the stored features, not only the declared ones (`AbstractOps.kt`)

**One rule for all three feature kinds:**
- A stored feature that is not among `node.concept.properties` / `containmentLinks` / `referenceLinks` is printed with `"declared": false`.
- The descriptor-only keys (`type`, `typeReference`, `cardinality`, `doc`, `deprecated`) are emitted if and only if `feature.isValid`.

A feature is valid when its owning concept has a descriptor. So `name` (owned by `INamedConcept`), `virtualPackage` and `smodelAttribute` on a node whose concept is not loaded still get their type, although they carry `declared:false`. An invalid link would otherwise answer `BaseConcept` / `0..n`, which is wrong, not unknown.

- **Properties.** The declared loop is unchanged: D5/D12 `isDefault`, D37 display values. Then each `node.properties` entry that is not declared is appended, as `{name, [type, doc, deprecated if valid], value, declared:false}`.
  - The value is read raw, with `node.getProperty(p)`, so no constraints getter runs.
  - Null and empty values are skipped, as the declared loop does.
  - `isDefault` is never emitted on these entries.
  - An enum value shows its persisted form, `<id>/<name>`, unchanged (Q3).
- **Children.** The declared-role loop is unchanged. Then one role object per remaining key of `childrenByRole`, in stored order, as `{role, [type, typeReference, cardinality, doc, deprecated if valid], declared:false, nodes|children}`. Deep/shallow and depth truncation follow the same rules as for declared roles. This applies to **both projections**: `addNodeChildren` also runs for `names && deep` (E1), and a names+includeNodes dump of a sandbox showed the same empty tree.
- **References.** They are already stored-driven. A reference whose link is not among `node.concept.referenceLinks` gets `declared:false`, with the descriptor keys only if the link is valid.
- **Node level.** When `!node.concept.isValid`, add `"conceptLoaded": false`. This also applies in the `names` projection, because the roots listing is often where an agent first meets a sandbox. `concept` keeps the name from persistence: `SConceptAdapterById.getQualifiedName` returns the persisted `myFqName` when there is no descriptor.
- **Warning sink (S1).** `nodeHierarchyJsonObject` takes an optional `MutableSet<SAbstractConcept>` and adds to it the concept of every **printed record** whose concept is not valid. The warning then covers exactly what was printed, with no second walk and no mismatch at a depth cut or on shallow child summaries.

`declared` and `conceptLoaded` are written only when false. A node whose stored data matches its concept therefore prints byte for byte as before (S5). A real model with stored data for a role that was removed without a migration **will print more**. That is intended, and it is not a regression in a suite diff.

`name` keeps `node.name ?: node.presentation`, so a node whose concept is not loaded still reads `"X (concept is not found)"`.

### 2. A warning on the `print_node` and `get_project_structure` envelopes

When the sink is not empty, one warning goes to `finalizeResult(..., warnings = …)` in `mps_mcp_print_node` (`JetBrainsMPSNodeMcpToolset.kt:987`). It goes to `get_project_structure` the same way (`JetBrainsMPSProjectMcpToolset.kt:168, :630`; Q2):

> `N printed node(s) use concepts whose language is not loaded (a.b.structure.X, …): only their stored values are printed, marked declared:false, and features the language would declare may be missing. Build the language (mps_mcp_alter_nodes MAKE) for the full record, or read the editor projection with format "PLAIN TEXT".`

The warning lists at most 5 persisted qualified names, then `… (+k more)`.

### 3. Blueprint readers (`AbstractNodeOps.kt`), fixing B1

The printout is documented as a valid blueprint. So a `declared:false` entry must not turn a round trip that works today into a generic rejection. The readers look up every entry among the concept's declared features:
- create: `:264`, `:293`, `:327`
- update: `:595`, `:616`, `:644`

The change is **only on the path where that lookup fails** and the entry carries `"declared": false`. Otherwise behaviour is unchanged, including after the language is built and the role exists again.

- **Property:** skip it and add the warning `$path: property '<name>' is not declared by concept '<C>'; its stored value was left as it is`. This is safe on update because the clear step (`:690`) touches only declared properties. On create there is nothing stored, so the entry is dropped with the same warning.
- **Child role / reference:** reject with `INVALID_REQUEST`, e.g. `Child role '<r>' at <path> is marked declared:false: concept '<C>' does not declare it (the language runtime lacks it, or it was removed). Remove the entry from the blueprint (update_root_node_from_json then deletes the stored children of that role), or build the language with mps_mcp_alter_nodes MAKE first.` Skipping instead would hide the deletion at `:698`.

Check that the `warnings` list reaches the envelopes of `update_root_node_from_json`, `insert_root_node_from_json` and `update_node` ADD/SET CHILD. Wire it where it does not.

### 4. Docs

- `print_node` tool description: one sentence covering `conceptLoaded:false`, `declared:false` and the warning.
- `mps-mcp-workflow/references/analysis-tools/print-node-output.md`: a paragraph "**Stored values the concept does not declare**" (S3). It says:
  - what is printed and what is missing;
  - on a `conceptLoaded:false` node, an absent property means **unknown**, not "default", and no `isDefault` entries are rebuilt;
  - an enum value appears in its persisted `<id>/<name>` form;
  - `declared:false` also shows up on a loaded concept whose runtime lacks the role (D80);
  - the blueprint readers skip such properties with a warning and reject such child/reference entries.
- `mps-node-editing/references/json-format.md`: one line on `declared:false` in blueprints.
- Edit the blueprints under `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/` and copy them to `.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest`).

### 5. Tests (`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`, `print_node_json` section)

Each fixture gets its own fresh root, which is deleted in `finally` (S4). Ids come from `MetaAdapterFactory.getConcept(hi, lo, conceptId, fq)` / `getProperty` / `getContainmentLink` / `getReferenceLink(hi, lo, conceptId, featureId, name)`, using a random UUID's two longs.

1. **Shallow print of a node whose concept is not loaded** (`ghost.structure.Ghost` with `name`=`G1`, an invented `size`=`3`, a child in an invented `parts` link, and a reference in an invented `buddy` link to a real root):
   - the node has `conceptLoaded:false`;
   - `name` has `declared:false` and `type`;
   - `size` has `declared:false` and no `type`;
   - `parts` has `declared:false`, one summary and no `cardinality`;
   - `buddy` has `declared:false` and a `targetReference`;
   - there is exactly one warning, and it names `ghost.structure.Ghost`.
2. **Deep print:** the child ghost is inlined with its property, and the warning still names one concept.
3. **get_project_structure** on that model with includeNodes: the node has `conceptLoaded:false` and the envelope warns.
4. **Loaded concept with a stale stored property** (an invented `SProperty` on a fresh `ConceptDeclaration` root): that entry is `declared:false` and has no `type`, and there is no `conceptLoaded` and no warning.
5. **Round trip (B1):** print test 4's root deep and feed it to `update_root_node_from_json`. It succeeds, carries the "left as it is" warning, and the stale value is still stored.
6. **Round trip rejection:** a blueprint for a loaded concept with a `declared:false` child role is rejected with the specific message, and the root is unchanged.
7. **Guard:** a normal `ConceptDeclaration` printout has no `declared`, no `conceptLoaded` and no `warnings`.

Run `McpToolsIntegrationTestSuite` following `.agents/quality-gates.md`.

### 6. Study bookkeeping

Archive D89 in `study/docs-defects-archive.md` with its commit, and note "re-measure outstanding (S8)". Update the header of `docs-defects.md`.

## Out of scope

- `check_root_node_problems` report output (`nodeWithProblemsJsonObject`, `:1819`) has the same declared-only loops. For an unloaded concept, the checker already reports "concept not found" errors, so the report does not mislead the reader the way an empty printout does. It can be handled later if a run shows otherwise.
- Accepting such a printout as a blueprint for insert. The concept cannot be instantiated meaningfully without its language.
- D70 (boolean/int defaults omitted). It is a separate defect in the same printer.

## Review round 1 (Reviewer5, 2026-09-30)

- **B1** (blueprint round trip): accepted, now §3.
- **E1** (the names projection): children and `conceptLoaded` now apply in both projections.
- **E2**: one rule, now §1.
- **S1–S6**: all taken.
- **Q1**: cover loaded concepts, together with B1.
- **Q2**: yes, via the sink.
- **Q3**: show the value raw, and document the `<id>/<name>` form.

## Review round 2 (plan) and implementation review

- **Plan round 2: nothing blocking.** Taken:
  - N1: reject a `conceptLoaded:false` record on create and on update. The check keys on the marker, not on `!concept.isValid`, so inserts of concepts that are not built yet behave as before.
  - N2: separate wording for the create warning and the update warning.
  - N3: the recovery text says "MAKE with rebuild=true on the language module".
  - N4: test 1 asserts `name` = `G1`.
- **Implementation round 1: nothing blocking.** Taken:
  - The warning and the tool description now say that types are present for features of loaded languages. The warning's "only stored values" clause is gone, because the `names` projection prints no properties.
  - The rejection says the language "was not loaded when this node was printed".
  - The tests assert the persisted concept FQN.
  - Test 3 now also covers the names projection: `includeNodes` inlines the undeclared role, and a roots listing marks the node and warns.
  - The `finally` cleanups stay.
- **Tests:** 8 tests; test 3 carries the names-projection cases.

