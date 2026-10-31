# Evolving a Language That Is Already in Use

Open this file before you change the structure of a language that is published, or whose concepts have instances anywhere in the project (sandbox, tests, other modules). It decides whether a change needs a replacement and a migration, and how to build both. It does not apply to a language you created in the current task that nothing uses yet: change that one freely.

## 1. Classify the change

MPS stores concepts, properties and links in models by id, not by name. A change that keeps every existing value valid is safe. Every other change breaks existing models.

| Safe: just do it | Breaking: deprecate and replace (section 3) |
|---|---|
| Add a concept, a property, or an optional child or reference | Delete a concept, interface concept, property, child, reference or enum literal |
| Rename a concept, property, child or reference | Make a cardinality stricter (`0..n`→`1..n`, `0..n`→`0..1`, `0..1`→`1`) |
| Make a cardinality looser (`1`→`0..1`, `1..n`→`0..n`, `0..1`→`0..n`) | Narrow a child or reference target to a subconcept, or change it to an unrelated concept |
| Widen a target to a superconcept; `integer`→`string` | Change a property type so that existing values become invalid (`string`→`integer`, a stricter constrained-type pattern) |
| Editor, alias, virtual package, short description | Change the superconcept or drop an interface so that inherited features disappear; make a concept abstract or non-rootable |

Adding a *mandatory* child or reference to an existing concept also breaks every instance, but there is nothing to deprecate: add it optional, or add it together with a `MigrationScript` that fills it (section 4a; for a local language, a Console command, section 4b). Stricter constraints or typesystem rules also flag existing models as errors. They need no migration, but tell the user.

The structure tools answer `ok:true` for a breaking change too. The damage only shows when you check the existing models: `does not belong to the concept`, `No child in the obligatory role`, `Only one child is allowed`, `Incompatible target concept`, `Property value is invalid`. A deleted feature's values stay in the models, but typed `smodel` code can no longer reach them; only id-based reflective access remains. To count instances in the project, use `mps_mcp_query_nodes` `FIND_INSTANCES` with `detail:"count"`. A published language needs this file even when the count is 0.

## 2. Who uses the language?

- **Published**: shipped as a plugin or library, or used by projects you cannot open. A `BuildProject` that packages it (a `BuildMps_Language` node), a read-only module, or the user saying so are the signs. Never delete a language element and never make one stricter, unless the owner explicitly asks (below). Deprecate it, add a replacement, and write a migration (section 4a).
- **Local**: the user or the task says that every model using it is in the open project and nothing is published. Finding no build script and no outside usage is not enough. Make a stricter cardinality in place, then give every instance that lacks a value a default with a Console command (section 4b). For any other breaking change, deprecate and replace as for a published language, then move the values yourself with a Console command (section 4b). Once a query finds no value left in the deprecated element, you may delete it; this applies only to a local language.
- **Unknown**: ask the user. Do not guess "local"; if you cannot ask, follow the published rules.

An explicit instruction to delete an element or to change it in place is the owner's decision, whatever the status: move the values you can reach first (typed code cannot reach a deleted feature), then do it. For a published language, or an unknown one you cannot ask about, also tell the owner the cost: customers' models can no longer be migrated off the element, so the safe route is to ship the deprecation and its migration now and delete in a later version, together with the scripts that refer to it. A requirement ("reject documents without a title") is not such an instruction; meet it with the route for the language's status.

## 3. Deprecate and replace

Keep the old element and add a new one next to it. For example, `Order.items : Item[0..n]` should become mandatory:

1. **Deprecate the old element.** Run `mps_mcp_apply_intention` with `intentionId: "jetbrains.mps.lang.structure.intentions.AddDeprecatedAnnotation_Intention"` on its declaration node. That is the `sourceNode` that `mps_mcp_get_concept_details` lists for the property or link, or the concept's own `sourceNode`. The intention adds a `DeprecatedNodeAnnotation` in the declaration's `smodelAttribute` role. Fill in its two string properties with `mps_mcp_update_node` `SET PROPERTY`: `build` is the release that deprecates it (MPS writes e.g. `2019.2`), and `comment` names the replacement (`use lineItems`). After a MAKE, `get_concept_details` reports `deprecated: "true: since <build>: <comment>"`.
2. **Rename the old property or link** with an `_old` suffix, as MPS's own languages do (`MessageStatement.messageTarget_old`): `items` → `items_old`. A replaced concept may keep its name, with the replacement under a new one, or get the `_old` suffix so that the replacement takes its name.
3. **Add the replacement** with the new cardinality or type, e.g. `UPDATE_CONCEPT_CHILD` `lineItems : Item[1..n]`. It may also take the original name (`items`).
4. **Switch the language over.** Change the editor, constraints, behavior, typesystem and generator to use the replacement, and remove the old element from the editor. If the migration may leave a value there, its `check()` message must name the value, because the editor no longer shows it. When the replacement is mandatory, decide (ask the user if unclear) what an instance that had no value gets; otherwise it stays an error for its owner to fix.
5. **Deprecated concept:** besides the annotation, move it to a `deprecated` virtual package (its `virtualPackage` property; user models do not notice). Completion only strikes deprecated concepts out. To hide one, give it an empty default substitute menu: see `references/substitute-menus.md` in the `mps-aspect-editor-menus-and-keymaps` skill root after loading that companion skill from the same origin.

MAKE the language (`rebuild=true`) before you write migration code. Both the old and the new element must be in the runtime. The migration's own references to the deprecated element are then flagged as deprecated usages; that is expected.

Checking does not reveal leftovers: a value in a deprecated *property or link* gets no checker warning, and an instance of a deprecated *concept* gets only a warning. The migration's `check()` (4a) or a Console query (4b) finds them.

## 4a. Published language: a migration

Pick the form by what happens to the values:

- **Values move unchanged** to the replacement or to a superconcept's role. Use a `PureMigrationScript` with one `MoveNodeMigrationPart` per element. Leave the `sourceId` and `targetId` children of its `Move*` specialization empty, because the generator reads the ids from the two declarations. The generated script moves the values and has a `check()` that reports any node still holding the old element. Verified blueprint (refs are `get_concept_details` `sourceNode` values):

  ```json
  {"concept":"jetbrains.mps.lang.migration.structure.PureMigrationScript","properties":[{"name":"name","value":"MoveItems"}],
   "children":[{"role":"part","nodes":[{"concept":"jetbrains.mps.lang.migration.structure.MoveNodeMigrationPart","children":[
    {"role":"fromNode","nodes":[{"concept":"jetbrains.mps.lang.migration.structure.DirectNodeReference","references":[{"role":"target","target":"<items_old LinkDeclaration ref>"}]}]},
    {"role":"toNode","nodes":[{"concept":"jetbrains.mps.lang.migration.structure.DirectNodeReference","references":[{"role":"target","target":"<lineItems LinkDeclaration ref>"}]}]},
    {"role":"specialization","nodes":[{"concept":"jetbrains.mps.lang.migration.structure.MoveContainmentLink"}]}]}]}]}
  ```

  Use `MoveReferenceLink` for a reference (verified) and `MoveProperty` for a property. `MoveConcept` changes only the concept of the instances and keeps their ids, so references to them still resolve. Features inherited from a common superconcept keep their ids too. For each feature the new concept declares itself, add one more part, as MPS's `MigrateInterfaceMethods` (`jetbrains.mps.baseLanguage.jdk8.migration`) does with `MoveConcept` plus `MoveReferenceLink`. Verified: `MoveConcept` plus one `MoveProperty` per own property replaces a concept with its values, node ids and incoming references intact. A move can neither convert a value nor fill an empty mandatory role.
- **Values must be converted, computed or filled in.** Use a `MigrationScript`; its factory adds `execute`, a `check` placeholder and `isRerunnable : true`. `execute()` sweeps the instances, writes the replacement and clears the deprecated element; build it with [migration-script-body.md](migration-script-body.md) § Per-instance sweep. Then give it a `check()` that reports the nodes still holding the deprecated element: [check-method.md](check-method.md). When such a script replaces a concept (a move is enough when the values carry over unchanged), it gives the new node the old node's id, so that references to it keep resolving; the MPS migrations documentation does the same. Iterate over a copy (`.toList`) because the loop replaces the nodes it visits. A verified `execute()`, where the comment marks the spot for any conversion:

  ```
  for (model model : m.getModels()) {
    foreach c in model.nodes(Coupon).toList {
      node<PercentDiscount> pd = new node<PercentDiscount>();
      pd.name = c.name; pd.code = c.code; pd.percent = c.percent;  // convert or compute values here
      ((jetbrains.mps.smodel.SNode) pd/).setId(c/.getNodeId());
      c.replace with(pd);
    }
  }
  ```

  Real examples to `print_node` (`PLAIN TEXT`): `MigrateHelpURL` `r:33eabb60-7192-4d12-ba46-11dacf966b3e(jetbrains.mps.lang.structure.migration)/1780177113170754287` and `LightQuotation_InitLinkExpression` `r:7ad1a8ce-e70e-4057-a779-4c8aa59d70d0(jetbrains.mps.lang.quotation.migration)/1595412875169273734`.

Then follow the skill's workflow: `SYNC_VERSION`, `MAKE`, then `mps_mcp_run_migrations` `CHECK` and `APPLY`. Last, check the migrated models. A `MigrationTestCase` (`mps-tests` skill) can pin the script's behavior down.

## 4b. Local language: a Console command

**A stricter cardinality** needs no deprecation. Change the role in place, MAKE, and fill every instance that now lacks a value with a default: `#instances(Doc).where({~it => it.owner == null; }).forEach({~it => it.owner = <default>; })`. Ask the user for the default. Ask also before dropping values when `0..n` becomes `0..1`.

**Every other breaking change:** do the deprecate-and-replace of section 3 and MAKE. Then insert a Console command that moves the values and run it (build the blueprint with the closure script in `references/mcp-insertion.md` in the `mps-console` skill root after loading that companion skill from the same origin, using `VisitAllOperation` for `.forEach`). Use `.forEach`, not `.refactor`, because you run it yourself:

```
#instances(Order).forEach({~it => it.lineItems.addAll(it.items_old.toList); })
```

Adding a child moves it out of the old role (verified). A property or reference value is copied instead, so clear the old one in the same command: `it.assignees.add new(PersonRef).person = it.owner_old; it.owner_old = null;`. Fill in any mandatory value the old element could not supply in the same command. Verification has two parts:

1. `#instances(Order).where({~it => it.items_old.isNotEmpty; })` must print `empty sequence`.
2. `mps_mcp_check_root_node_problems` on the using modules must be clean.

Only then may you delete the deprecated element and MAKE again. You need no migration script and no version bump.
