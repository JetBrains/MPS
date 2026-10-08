# Coverage Matrix (Scenario Section 7)

Every MPS MCP tool is listed with: purpose, whether valid/invalid calls are tested, the
parameters and enum values covered, the covering `Step PP.NN` ids, and the validation method.
"Validation method" abbreviations: **R** = response check (`ok`, fields), **S** = project-state
check (follow-up query / structure dump / file read), **F** = detailed payload read (inline
`data`, or the temp file when `data` is a path).

## A. MPS MCP tools (`mps_mcp_*`) — all 40

The authoritative list is the `@McpTool` methods of the toolsets registered in
`plugins/mcp-tools/META-INF/plugin.xml` (`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/`).
Rows 37–40 were added after the original 36; rows 38–40 are not exercised by this scenario (see
the note below the table).

| # | Tool | Purpose | Valid? | Invalid? | Parameters / enum values covered | Steps | Val |
|--:|------|---------|:------:|:--------:|----------------------------------|-------|-----|
| 1 | `initialize_project_for_agents` | Install skills + guide files | ✅ | — (no safe invalid) | `projectPath`; `targetDirectory` left empty | 02.01–02.02 | R+S |
| 2 | `list_open_projects` | Enumerate open projects; resolve project dir | ✅ | — | `projectPath` | 01.01 | R |
| 3 | `get_project_structure` | Explore project | ✅ | — | `includeModels`,`includeRootNodes`,`includeNodes`,`includeDependencies`,`includeStubModules`,`startingPoint`; `moduleKind`=Solution/Language/DevKit/Generator | 01.03, 03.08–03.12, 07.39–07.40, 13.06, 14.01 | F+S |
| 4 | `reload_all` | Refresh runtime registry | ✅ | — | `projectPath` | 06.23 | R |
| 5 | `create_module` | Create modules | ✅ | ✅ | `type`=solution/language/devkit/generator; `withGenerator`/`withSandbox`/`withRuntime`=true; `parentLanguage`; `directory`; `facets` (invalid) | 03.01–03.07 | R+S |
| 6 | `update_module` | Rename/folder/delete module | ✅ | ✅ | `operation`=RENAME/CHANGE_VIRTUAL_FOLDER/DELETE; `deleteFiles`=true | 13.02–13.05 | R+S |
| 7 | `create_model` | Create models | ✅ | ✅ | `modelName` = plain / aspect-id / `@stereotype` | 04.01–04.05, 04.08 | R+S |
| 8 | `update_model` | Rename/delete model | ✅ | (–) | `operation`=RENAME/DELETE | 04.06–04.07 | R+S |
| 9 | `module_dependency` | Module deps | ✅ | ✅ | `operation`=ADD/DELETE; `scope`=Default/Design/Compile/Runtime/Provided/Generation Target/Extends; `reexport`=true; invalid=Extends-on-Solution | 05.01–05.10 | R |
| 10 | `model_dependency` | Model imports | ✅ | — | `operation`=ADD/DELETE | 05.11–05.12 | R |
| 11 | `model_used_language` | Used language/devkit | ✅ | ✅ | `kind`=language/devkit; `operation`=ADD/DELETE; invalid=missing model | 05.13–05.16 | R |
| 12 | `list_facet_types` | List facet types | ✅ | — | with/without `moduleName` | 03.13–03.14 | R |
| 13 | `get_module_facets` | Inspect facets | ✅ | — | `moduleName` | 03.15, 03.17 | R+S |
| 14 | `update_module_facet` | Enable/disable facet | ✅ | — | `enabled`=true; `facetType`=tests | 03.16 | R+S |
| 15 | `open_node` | Open node in editor | ✅ | — | `nodeReference` | 08.20 | R |
| 16 | `get_current_editor_root_node` | Read focused node | ✅ | ✅ | `source`=editor (empty+ok), console (empty+ok) | 01.04, 01.05, 08.21, 12.03 | R |
| 17 | `create_root_node` | Create root | ✅ | ✅ | `concept`,`name`,`modelReference`; invalid=bad concept | 07.01–07.02 | R |
| 18 | `update_root_node_from_json` | Full-root rewrite/delete | ✅ | — | `operation`=UPDATE/DELETE; `dryRun` | 07.36–07.38 | R+S |
| 19 | `query_nodes` | Node queries/navigation/types | ✅ | ✅ | ops FIND_INSTANCES/FIND_USAGES/GET_PARENT/GET_ROOT/GET_MODEL_FOR_NODE/NODE_INDEX/SIBLINGS/GET_CHILD_ROLE/GET_TYPE/GET_EXPECTED_TYPE; `scope`=editable/all/models/modules/roots; `sampleOnly`,`propertyFilter`,`exact`; GET_TYPE / GET_EXPECTED_TYPE `data:null` answers; GET_TYPE / GET_EXPECTED_TYPE `details.scope` and `maxRootNodes` fallback; invalid op | 08.01–08.15, 10.15–10.16 | R+S |
| 20 | `alter_nodes` | Structural moves + make + fix | ✅ | — | ops MOVE_CHILD/MOVE_NODE_TO_PARENT/MAKE/FIX_REFERENCES; MAKE forms modules+rebuild/models/wholeProject | 06.13, 06.24, 06.25, 07.32–07.34 | R+S |
| 21 | `print_node` | Print node | ✅ | — | `format`=JSON/HTML/PLAIN TEXT; `deep`=true/false | 07.06–07.09, 10.14 | F |
| 22 | `insert_root_node_from_json` | Bulk root insert | ✅ | — | single + array; `dryRun` | 07.03–07.05 | R+S |
| 23 | `update_node` | Unified node mutation | ✅ | ✅ | ADD/CHILD (incl. an attribute into `smodelAttribute`), SET/CHILD(+null delete), SET/PROPERTY(+null delete), SET/REFERENCE(+null delete), `dryRun`; invalid ADD/PROPERTY, ADD/REFERENCE, op DELETE | 07.10, 07.17–07.28, 10.24.s4–s6 | R+S |
| 24 | `check_root_node_problems` | Validate node/model | ✅ | — | clean + problem; `onlyNodesWithProblems`=true/false; problem `rules` (`typeof_VariableDeclaration`, `ruleReference`/`statement` resolved); `details.uncheckedSubtrees` with problems (no warning) and on a clean verdict (with warning) | 07.21, 07.29–07.31, 10.11, 10.24.s2, 10.24.s4–s6 | R+F |
| 25 | `search_root_node_by_name` | Find roots by name | ✅ | — | `scope`=editable/all/models/modules | 06.22, 08.16–08.19 | R |
| 26 | `insert_console_command_from_json` | Put command in console | ✅ | ✅ | `dryRun` + real; invalid=bare expression | 12.01–12.02, 12.09 | R |
| 27 | `get_console_history` | List console history | ✅ | — | `includeResponses`=true (`limit` not exercised) | 12.06 | R |
| 28 | `recall_console_command` | Recall history command | ✅ | — | `dryRun` + real | 12.07–12.08 | R |
| 29 | `run_console_command` | Execute console command | ✅ | — | `dryRun` + real | 12.04–12.05 | R |
| 30 | `get_concept_details` | Concept metadata | ✅ | — | `conceptRefs`, `languageRefs` | 06.05, 06.15 | F+S |
| 31 | `search_concepts` | Find concepts | ✅ | — | `searchTexts`, `modelReference` | 06.14 | R |
| 32 | `alter_structure` | Language structure writes | ✅ | ✅ | ops CREATE_CONCEPTS/CREATE_ENUM/UPDATE_*×3/RENAME_*×3; `make`=true; invalid op | 06.02, 06.04, 06.06–06.12 | R+S |
| 33 | `query_structure` | Structure reads | ✅ | (▲) | ops GET_ENUMERATION_LITERALS(both forms)/IS_SUBCONCEPT_OF/GET_SUB_CONCEPTS/GET_ASSIGNABLE_CONCEPTS/GET_ALL_SUPERCONCEPTS/LIST_CONCEPT_ASPECTS/IS_SMART_REFERENCE/GET_ASSIGNABLE_REFERENCES; LIST_CONCEPT_ASPECTS `includeInherited`=false/true + `relation`/`targetsConcept`; `mode`,`sortBy`,`scopeMode`,`kindFilter` (see §C) | 06.16–06.22 (incl. 06.20b), 08.22–08.24, 09.05, 10.12 | R+F |
| 34 | `scaffold_editor` | Generate editor | ✅ | ✅ | `type`=editor/component; `detectComponents`; include-lists; invalid=bad concept | 09.01–09.04 | R+S |
| 35 | `create_run_configuration` | Make run config | ✅ | ✅ | default + `configurationName`; ClassConcept-with-`main` + `ITestCase` dispatch; one model, multi-root, mixed targets; invalid=non-runnable / no tests / model-as-node | 11.01–11.03, 11.06–11.08 | R+S |
| 36 | `parse_java_and_insert` | Parse+insert Java | ✅ | ✅ | `featureKind`=CLASS/METHOD/FIELD/NESTED_CLASS/CLASS_CONTENT/STATEMENTS/EXPRESSION; `insert.mode`=root/child/console/replace; invalid=CLASS_STUB, unknown key | 10.01–10.10, 10.12.s1, 10.13, 10.24.s1 | R+S |
| 37 | `query_types` | Typesystem queries | ✅ | ✅ | ops IS_SUBTYPE/SUPERTYPES/COMMON_SUPERTYPE/COERCE/OPERATION_TYPE/EXPLAIN_TYPE; operands `typeConceptRef`/`typeNodeReference`/`nodeReference`; `depth`,`weak`,`strong`,`operatorNode`/`operatorConceptRef`,`includeApplyRule`,`maxRootNodes`; `parameters` as string and as real JSON object, lower-case op; invalid=`nodeReference` on a type node, one COMMON_SUPERTYPE operand, interface `conceptRef`, `maxRootNodes` too small, unknown op (see §C) | 10.17–10.23, 10.24.s3 | R+S |
| 38 | `list_node_intentions` | List intentions/quick-fixes on a node | (◆) | (◆) | — | — (see `smoke-test-intentions.md`) | — |
| 39 | `apply_intention` | Apply an intention or quick-fix | (◆) | (◆) | — | — (see `smoke-test-intentions.md`) | — |
| 40 | `close_project` | Close the MPS project | (✕) | (✕) | — | — | — |

(–) under "Invalid?" = no invalid case included for that tool because none is meaningful/safe
beyond what shared dispatch already covers. ▲ for `query_structure`: the unknown-operation
failure mode is representatively covered by `alter_structure` (06.12) and `query_nodes`
(08.15), which use the same operation-dispatch layer.

(◆) `list_node_intentions` and `apply_intention` are covered end to end by the separate
`test_scenarios/smoke-test-intentions.md` (intentions, manual and auto-applied quick-fixes,
negative cases), not by this scenario. Record them as "not covered here — see the intentions
smoke test" in the run report.

(✕) `close_project` is deliberately not exercised: closing `{{PROJECT_DIR}}` mid-run would end
the scenario, and part 14 must still snapshot the project. Opening and closing projects is the
`mps-project-management` skill's subject.

## B. IDE helper tools (used as verification helpers, not part of the `mps_mcp_*` API)

| Tool | Used for | Step |
|------|----------|------|
| `get_repositories` | Environment probe (VCS roots) | 01.06 |
| `get_run_configurations` | Verify run configs registered | 11.04 |
| `execute_run_configuration` | OPTIONAL: actually run the config | 11.05 (optional) |

## C. Enumeration-value checklist (mark each in the run report)

- **`create_module.type`**: solution ✔(03.01), language ✔(03.02), devkit ✔(03.03), generator ✔(03.04)
- **`create_module` flags**: withGenerator/withSandbox/withRuntime=true ✔(03.05)
- **`get_project_structure.moduleKind`**: Solution ✔(03.08), Language ✔(03.09), DevKit ✔(03.10), Generator ✔(03.11)
- **`update_module.operation`**: RENAME ✔(13.02), CHANGE_VIRTUAL_FOLDER ✔(13.03), DELETE ✔(13.04)
- **`create_model.modelName` mechanism**: plain ✔(04.01), aspect-id ✔(04.03), @stereotype ✔(04.04)
- **`update_model.operation`**: RENAME ✔(04.06), DELETE ✔(04.07)
- **`module_dependency.operation`**: ADD ✔(05.01), DELETE ✔(05.10)
- **`module_dependency.scope`**: Default ✔(05.01), Design ✔(05.02), Compile ✔(05.03), Runtime ✔(05.04), Provided ✔(05.05), Generation Target ✔(05.06), Extends ✔(05.08)
- **`module_dependency.reexport`**: true ✔(05.07)
- **`model_dependency.operation`**: ADD ✔(05.11), DELETE ✔(05.12)
- **`model_used_language.kind`**: language ✔(05.13), devkit ✔(05.14)
- **`model_used_language.operation`**: ADD ✔(05.13/05.14), DELETE ✔(05.15)
- **`update_module_facet.enabled`**: true ✔(03.16)  (false: exercise opportunistically if desired — not required)
- **`get_current_editor_root_node.source`**: editor ✔(01.04 empty, 08.21 ok), console ✔(01.05 empty, 12.03 ok)
- **`alter_structure.operation`**: CREATE_CONCEPTS ✔(06.04), CREATE_ENUM ✔(06.02), UPDATE_CONCEPT_PROPERTY ✔(06.06), RENAME_CONCEPT_PROPERTY ✔(06.07), UPDATE_CONCEPT_CHILD ✔(06.08), RENAME_CONCEPT_CHILD ✔(06.09), UPDATE_CONCEPT_REFERENCE ✔(06.10), RENAME_CONCEPT_REFERENCE ✔(06.11)
- **`alter_structure.make`**: true ✔(06.04)
- **`query_structure.operation`**: GET_ENUMERATION_LITERALS ✔(06.22 by-ref, 08.22 by-property), IS_SUBCONCEPT_OF ✔(06.16), GET_SUB_CONCEPTS ✔(06.18), GET_ASSIGNABLE_CONCEPTS ✔(06.19), GET_ALL_SUPERCONCEPTS ✔(06.17), LIST_CONCEPT_ASPECTS ✔(06.20/06.20b/09.05), IS_SMART_REFERENCE ✔(06.21), GET_ASSIGNABLE_REFERENCES ✔(08.23/08.24)
- **`LIST_CONCEPT_ASPECTS.includeInherited`**: false ✔(06.20/09.05), true ✔(06.20b); **`relation`**: appliesTo ✔(06.20b, 09.05), mentions — recorded when present (06.20b)
- **`GET_ASSIGNABLE_REFERENCES.mode`**: exhaustive ✔(08.23), completion ✔(08.24)
- **`GET_ASSIGNABLE_REFERENCES.sortBy`**: relevance ✔(08.24a), name ✔(08.24b), module ✔(08.24c), distance ✔(08.24d)
- **`GET_ASSIGNABLE_REFERENCES.scopeMode`**: local ✔(08.24a), model ✔(08.24b), module ✔(08.24c), project ✔(08.24d), imports ✔(08.24e), jdk ✔(08.24f)
- **`GET_ASSIGNABLE_REFERENCES.kindFilter`**: instanceMethods ✔(10.12.s3a), staticMethods ✔(10.12.s3b), constructors ✔(10.12.s3c), classes ✔(10.12.s3d). Exercised against the BaseLanguage call/type roles seeded in `McpRunnable` (`baseMethodDeclaration` on an `IMethodCall`; `classifier` on a `ClassifierType`); each call asserts a non-empty candidate set whose every `kind` equals the requested value.
- **`query_nodes.operation`**: FIND_INSTANCES ✔(08.01), FIND_USAGES ✔(08.08), GET_PARENT ✔(08.09), GET_ROOT ✔(08.10), GET_MODEL_FOR_NODE ✔(08.11), NODE_INDEX ✔(08.12), SIBLINGS ✔(08.13), GET_CHILD_ROLE ✔(08.14), GET_TYPE ✔(10.15a/b; `null` 10.15c; `maxRootNodes` / `details.scope:"node"` 10.15d), GET_EXPECTED_TYPE ✔(10.16a–c; `null` 10.16d; `maxRootNodes` / `details.scope:"node"` 10.16)
- **`query_types.operation`**: IS_SUBTYPE ✔(10.17a–c), SUPERTYPES ✔(10.18), COMMON_SUPERTYPE ✔(10.19a), COERCE ✔(10.20a–b), OPERATION_TYPE ✔(10.21), EXPLAIN_TYPE ✔(10.22a–b, 10.24.s3); unknown op ✔(10.23)
- **`query_types` operand forms**: `typeConceptRef` ✔(10.17a), `typeNodeReference` ✔(10.17c), `nodeReference` ✔(10.20a; rejected on a type node 10.17e). *Not exercised:* `blueprint` / a printed type object passed back — it means embedding a whole printed type in the escaped `parameters` string; covered by `JetBrainsMPSTypesMcpToolsetIntegrationTest`.
- **`query_types` options**: `SUPERTYPES.depth` default ✔(10.18a) / 1 + `details.truncated` ✔(10.18b), `SUPERTYPES.weak`=false ✔(10.18c), `COERCE.strong`=true ✔(10.20b), `OPERATION_TYPE` `operatorNode` ✔(10.21a) / `operatorConceptRef` + `detached instance` warning ✔(10.21b), `EXPLAIN_TYPE.includeApplyRule`=true ✔(10.22b), `EXPLAIN_TYPE.maxRootNodes` too small ✔(10.22c); `parameters` as a real JSON object + lower-case operation ✔(10.17d)
- **`query_nodes.scope` (FIND_INSTANCES)**: editable ✔(08.01), all ✔(08.02), models ✔(08.03), modules ✔(08.04), roots ✔(08.05)
- **`alter_nodes.operation`**: MOVE_CHILD ✔(07.32), MOVE_NODE_TO_PARENT ✔(07.33), MAKE ✔(06.13/06.24/06.25), FIX_REFERENCES ✔(07.34)
- **`alter_nodes MAKE` targets**: modules+rebuild ✔(06.13), models ✔(06.24), wholeProject ✔(06.25)
- **`update_node.operation × kind`**: ADD/CHILD ✔(07.10), SET/CHILD ✔(07.24), SET/CHILD null-delete ✔(07.25), SET/PROPERTY ✔(07.18), SET/PROPERTY null-delete ✔(07.23), SET/REFERENCE ✔(07.19), SET/REFERENCE null-delete ✔(07.22); invalid ADD/PROPERTY ✔(07.26), ADD/REFERENCE ✔(07.27), op DELETE ✔(07.28)
- **`print_node.format`**: JSON ✔(07.06), HTML ✔(07.09), PLAIN TEXT ✔(07.08); **`deep`**: true ✔(07.06), false ✔(07.07)
- **`check_root_node_problems.onlyNodesWithProblems`**: true ✔(07.29), false ✔(07.30)
- **`check_root_node_problems` report fields**: problem `rules` ✔(10.24.s2), `details.uncheckedSubtrees` with problems ✔(10.24.s4) and on a clean verdict + `warnings` ✔(10.24.s5), clean verdict without unchecked subtrees ✔(10.24.s6)
- **`search_root_node_by_name.scope`**: editable ✔(08.16), all ✔(08.17), models ✔(08.18), modules ✔(08.19)
- **`scaffold_editor.type`**: editor ✔(09.01), component ✔(09.02); **`detectComponents`**: true ✔(09.03)
- **`update_root_node_from_json.operation`**: UPDATE ✔(07.37), DELETE ✔(07.38); **`dryRun`** ✔(07.36)
- **`insert_root_node_from_json`**: single ✔(07.03), array ✔(07.04), `dryRun` ✔(07.05)
- **`get_concept_details`**: conceptRefs ✔(06.05), languageRefs ✔(06.15)
- **`parse_java_and_insert.featureKind`**: CLASS ✔(10.01), METHOD ✔(10.02), FIELD ✔(10.03), NESTED_CLASS ✔(10.04), CLASS_CONTENT ✔(10.05), STATEMENTS ✔(10.06), EXPRESSION ✔(10.07)
- **`parse_java_and_insert.insert.mode`**: root ✔(10.01), child ✔(10.02–10.05), console ✔(10.06–10.07), replace ✔(10.08)
- **`create_run_configuration` dispatch**: ClassConcept-with-`main`→Java Application ✔(11.01; this is the "Java class with a `public static void main` run via a run configuration" case, executed in optional 11.05); `ITestCase`→JUnit Tests ✔(11.06–11.07, via the stock `jetbrains.mps.lang.test.structure.NodesTestCase`); one model, several roots, and a mix ✔(11.08, and `JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest`). *Not exercised:* `IMainClass`→Java Application — `IMainClass` (`jetbrains.mps.execution.util`) has no stock BaseLanguage implementer, so reaching it needs a DSL/demo concept (`jetbrains.mps.execution.demo`) a generic MPS project may not have loaded; this branch is covered by the toolset's unit tests instead.

## D. Tools intentionally NOT covered (out of scope)

The MCP server also exposes generic IDE/file tools that are **not** part of the MPS-specific
API and are therefore out of scope for this scenario:
`create_new_file`, `read_file`, `get_file_text_by_path`, `find_files_by_glob`,
`find_files_by_name_keyword`, `list_directory_tree`, `replace_text_in_file`, `search_file`,
`search_in_files_by_text`, `search_in_files_by_regex`, `search_text`, `search_regex`,
`search_symbol`, `apply_patch`, `execute_terminal_command`.

Reason: these are generic filesystem/IDE operations available under several MCP server
prefixes, not MPS model-aware tools. The runner uses its own native file tools (or a shell) for
the few filesystem checks the scenario needs (e.g. Step 02.02). Record them as "not covered —
generic IDE tools, out of MPS-API scope" in the run report.
