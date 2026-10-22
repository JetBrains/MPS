# jetbrains.mps.lang.script — Enhancement Scripts

Open this file when iterating over concept instances on demand (not version-gated) to update properties/children/references, or when wiring `ExtractInterfaceMigration`, `FactoryMigrationScriptPart`, or `CommentMigrationScriptPart`.

## Language

**Language ref**: `l:0eddeefa-c2d6-4437-bc2c-de50fd4ce470:jetbrains.mps.lang.script`

Enhancement scripts operate on instances of concepts — they iterate over all instances of a given concept and apply an updater function to each. They are not version-gated in the same way as `lang.migration` scripts; instead they are listed in the "Scripts" aspect and can run as migration actions or on-demand enhancements.

Migration scripts in `lang.script` live in models named `<language>.scripts`.

## `MigrationScript` ("Enhancement Script")

**Concept ref**: `c:0eddeefa-c2d6-4437-bc2c-de50fd4ce470/1177457067821:jetbrains.mps.lang.script.structure.MigrationScript`
**isRootable**: true

Do not confuse with `MigrationScript` from `lang.migration`.

**Properties**:

| Name | Type | Notes |
|---|---|---|
| `name` | string | identifier |
| `title` | string | human-readable display name |
| `type` | `ScriptType` enum | `enhancement` (on-demand) or `migration` (version-gated) |
| `toBuild` | — | whether to build before running |

**Children**:

| Role | Type | Cardinality | Notes |
|---|---|---|---|
| `part` | `MigrationScriptPart` | 0..n | the individual transformation steps |

**Instances in codebase** (model names `*.scripts`):
- `r:6f595bf3-27c5-4410-a8f0-094e3ff4d9f0(jetbrains.mps.baseLanguage.extensionMethods.scripts)` — `ConvertExtensionMethodCallToLocal`
- `r:a835f613-568f-4856-9519-c3f6c0c635e5(jetbrains.mps.lang.core.scripts)` — `MigrateEnumPropertyAttributes`
- `r:00000000-0000-4000-0000-011c8959032d(jetbrains.mps.baseLanguage.collections.scripts)` — `MigrationToCollections`, `MigrationFromMapsToCollections`, `MigrationToUpdateAllConstants`
- `r:00000000-0000-4000-0000-011c89590300(jetbrains.mps.lang.smodel.scripts)` — `SModelLanguageEnhancements`, `ShowAdapterUsages`, `SModelLanguageEnhancements_Pointers`
- `r:00000000-0000-4000-0000-011c89590387(jetbrains.mps.lang.test.scripts)` — `SpecifyRuleReferencesInTests`
- `r:f5dc9f67-2195-4fd6-8b9b-a998435bfa08(jetbrains.mps.lang.generator.scripts)` — `NodePointersInReferenceMacorQueries`

## `MigrationScriptPart` Subtypes

`MigrationScriptPart` is the abstract base for all parts under `MigrationScript.part`. Concrete subtypes:

### `MigrationScriptPart_Instance` ("concept instances updater")

Concept ref: in `lang.script.structure`
The most common part type. Iterates all instances of a specified concept and applies an updater.

**References**:

| Role | Type | Cardinality | Notes |
|---|---|---|---|
| `affectedInstanceConcept` | `AbstractConceptDeclaration` | 1 | the concept whose instances to process |

**Children**:

| Role | Type | Cardinality | Notes |
|---|---|---|---|
| `affectedInstancePredicate` | `ConceptFunction` | 0..1 | optional BL predicate; if absent, all instances are updated |
| `affectedInstanceUpdater` | `ConceptFunction` | 1 | BL function that mutates the instance |

**Properties**:

| Name | Notes |
|---|---|
| `description` | human-readable description of what this part does |
| `showAsIntention` | if true, also exposed as an intention action |

Both `affectedInstancePredicate` and `affectedInstanceUpdater` are `ConceptFunction` nodes (BL function with implicit `node` parameter of the concept's type). The implicit `node` parameter is a `MigrationScriptPart_node` placeholder — the body uses `node` to access the instance being processed.

### `ExtractInterfaceMigration` ("extract interface")

Handles the special case of extracting an interface from an existing classifier.

**References**:

| Role | Type | Cardinality |
|---|---|---|
| `newClassifier` | new interface concept | 1 |

**Children**:

| Role | Notes |
|---|---|
| `oldClassifier` | the classifier being split |
| `pullUpMethods` | methods to move to the new interface |

**Properties**: `updateClassifierTypes` — whether to update all type references.

### `FactoryMigrationScriptPart`

**Children**:

| Role | Type | Cardinality |
|---|---|---|
| `factoryMethod` | `StaticMethodCall` | 1 |

Used to invoke a factory method as part of the migration.

### `CommentMigrationScriptPart`

**Properties**:

| Name | Notes |
|---|---|
| `text` | descriptive text (comment/documentation within the script) |
