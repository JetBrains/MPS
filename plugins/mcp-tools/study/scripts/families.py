#!/usr/bin/env python3
"""Count the hotspot families of skill-optimization study runs, one TSV row per run.

Inputs: one or more runs/ directories; every <id>-worker.jsonl in them (claude stream-json
transcript) except the SMOKE runs. Only the parent session is read: an event with a non-null
`parent_tool_use_id` (a subagent's) is skipped.

Output (stdout, or --out FILE): a TSV with a header line, then `round` (the directory's name),
`run` (the run id) and one column per counter:
  tool_uses                        tool calls
  A_tempfile_env                   mps_mcp_* results whose `data` is a temp-file path
  C_checks                         check_root_node_problems calls
  C_model_checks                   of them, container-scope checks (model, module, or a bare name)
  C_root_checks                    of them, node-scope checks
  C_root_after_clean_model         node-scope checks after a clean container check, no write between
  C_perRoot                        checks with perRoot true
  D_skill_reads                    Read calls on a file under /skills/
  D_skill_bash_fetch               Bash cat/sed/head/tail/grep/awk on a /skills/ path
  Bp_adhoc_python                  Bash calls running inline python (-c, heredoc, stdin), also after
                                   switches such as -I
  Bp_shipped_script                Bash calls running a skill's scripts/*.py
  B_inserts                        insert_root_node_from_json / update_node / update_root_node_from_json
  B_resp_bytes                     result characters of those calls
  F_gcd_calls                      get_concept_details calls
  F_gcd_refine                     of them, calls within 2 steps of the previous one
  G_errors                         results with is_error or an ok:false envelope
  H_toolsearch                     ToolSearch calls
  X_outside_project                Bash searches of / or of the MPS checkout
  C_root_after_clean_model_batches distinct batches among the C_root_after_clean_model calls
  C_after_summary                  node-scope checks after a container check whose perRoot rows
                                   (or model-/module-level counts) are non-zero, no write between (D83)
  C_after_summary_batches          distinct batches among the C_after_summary calls
  T_rule_prints                    print_node calls on a typesystem rule root (InferenceRule,
                                   SubtypingRule, …): reading rules to simulate the typesystem
  T_type_queries                   query_types calls plus query_nodes GET_TYPE / GET_EXPECTED_TYPE calls
  T_type_queries_before_make       of them, calls before the first alter_nodes MAKE the envelope did
                                   not reject (all of them without one)
  M_makes                          alter_nodes MAKE calls, rejected ones included
  M_reload_all                     reload_all calls
  M_makes_save_transient           of M_makes, calls with `saveTransientModels` true that the envelope
                                   did not reject
  GN_plan                          mps_mcp_generation PLAN calls
  GN_transient_models              mps_mcp_generation TRANSIENT_MODELS calls
  GN_trace                         mps_mcp_generation TRACE calls, rejected ones included
  GN_trace_backward                of them, calls with `direction` BACKWARD
  GN_drop                          mps_mcp_generation DROP_TRANSIENT_MODELS calls
  GN_trace_before_fix              TRACE calls that found a step, before the first accepted write
                                   to a `@generator` model (all of them without one)
  GN_transient_reads               print_node / get_project_structure / query_nodes /
                                   check_root_node_problems calls on a transient step model or node
  GN_template_prints               print_node calls on a node of a `@generator` model
  GN_template_prints_before_trace  of them, calls before the first TRACE that found a step (all of
                                   them without one)
  DF_builder_prints                print_node calls on a dataflow builder root (DataFlowBuilderDeclaration):
                                   reading builders to simulate the dataflow engine
  DF_console_runs                  run_console_command calls (a hand-written engine probe, among others)
  DF_queries                       mps_mcp_query_dataflow calls, rejected ones included
  DF_program_prints                of them, PRINT_PROGRAM calls
  DF_reaching_queries              of them, REACHING_WRITES and REACHING_READS calls
  C_after_node_sample              node-scope checks that re-check a root or node whose perRoot message
                                   gave every text but not every node, no write between (D119); they
                                   are not in C_after_summary
  C_after_node_sample_batches      distinct batches among the C_after_node_sample calls
  ET_test_runs                     execute_run_configuration calls (each one past the first is a fix cycle)
  ET_run_configs                   create_run_configuration calls
  ET_platform_id_writes            accepted node writes whose input holds a BootstrapActionReference or a
                                   `$Undo` / `$Redo` / `$Copy` / `$Cut` / `$Paste` id
  ET_applicability_writes          accepted node writes whose input holds an IsActionApplicableExpression
  ET_ide_service_writes            node writes, rejected ones included, whose input names UndoManager,
                                   DataManager, FileEditor(Manager) or CopyPasteManager
  ET_runtime_source_reads          Read / Grep / Glob / Bash / MCP file-tool calls whose path names the
                                   editor-test runtime or MPS's own editor tests (BaseEditorTestBody,
                                   EditorTestUtil, CellAction_*, lang/test/runtime, nodeEditor/, testbench/,
                                   bl.test)
  GT_generator_test_writes         accepted node writes whose input holds a GeneratorTest or a
                                   TransformationMatch(Many)Assertion
  GT_nodes_test_writes             node writes, rejected ones included, whose input holds a NodesTestCase,
                                   AssertMatch / assertNodesMatch, GenerationFacade or generateAndCompare
  GT_match_options_writes          accepted node writes whose input holds a ModelMatchOptions (name or concept ref)
  GT_plan_writes                   accepted node writes whose input holds a generation-plan Plan, Transform,
                                   LanguageEntry or ApplyGenerators
  GT_do_not_generate_calls         accepted update_model calls with operation SET_DO_NOT_GENERATE
  GT_do_not_generate_workarounds   console inputs, .mps file edits and Bash .mps rewrites that name
                                   doNotGenerate: the routes taken before the update_model operation existed
  GT_runtime_source_reads          Read / Grep / Glob / Bash / MCP file-tool calls whose path names the
                                   generator-test runtime, the node matcher or MPS's own generator tests
  GT_kitchen_source_reads          the same calls on a path under mcp.study.kitchen/source_gen
  GT_expected_parser_inserts       accepted parse_java_and_insert calls into a model that is not a @tests
                                   model (expected classes written with the Java parser)
  GP_genplan_models                accepted create_model calls whose modelName has the @genplan stereotype
  GP_param_equals_writes           accepted node writes whose input holds a ParameterEquals (name or concept ref)
  GP_set_plan_calls                accepted update_module calls with operation SET_GENERATION_PLAN
  GP_devkit_export_calls           accepted module_dependency calls whose answer names a devkitCollection
  GP_devkit_used_calls             accepted model_used_language ADD calls with kind devkit
  GP_plan_facet_writes             update_module_facet calls with facetType generator, rejected ones included
  GP_attach_workarounds            console inputs naming the DevKit / Custom Generation facet API, and edits or
                                   Bash rewrites of .devkit / .msd files
  GP_descriptor_reads              Read / Grep / Bash reads of .devkit / .msd files (not rewrites)
  GP_plan_edits                    accepted update_node / non-MAKE alter_nodes calls naming a @genplan model
  GP_plan_root_reinserts           Plan roots inserted into @genplan models after the fourth, and
                                   update_root_node_from_json calls on a @genplan model
  GP_plan_steps_detail             mps_mcp_generation PLAN calls with detail "steps"
  GP_rebuild_makes                 accepted MAKE calls with rebuild true
  GP_param_model_reads             read-tool calls naming jetbrains.mps.generator.extensions.common
  MG_deprecate_calls               accepted apply_intention AddDeprecatedAnnotation_Intention calls, plus accepted
                                   node writes whose input holds a DeprecatedNodeAnnotation
  MG_old_renames                   accepted alter_structure RENAME_* calls whose new name ends in _old
  MG_structure_deletes             alter_structure UPDATE_CONCEPT_PROPERTY without a dataType and UPDATE_CONCEPT_CHILD /
                                   _REFERENCE without a targetConcept, plus node deletions in a .structure model
                                   (any node, an annotation included; dry runs excluded); rejected ones included
  MG_tighten_in_place              accepted UPDATE_CONCEPT_CHILD / _REFERENCE calls that make one of the scenario's
                                   fixture roles stricter, after following the run's RENAME_* calls (FIXTURE_ROLES)
  MG_virtual_package_writes        accepted writes of a virtualPackage value on a .structure node (SET PROPERTY,
                                   a blueprint aimed at a .structure model, CREATE_CONCEPTS)
  MG_substitute_menu_writes        accepted node writes holding a SubstituteMenu (qualified or short name) with a
                                   MenuTypeDefault type
  MG_substitute_menu_legacy        node writes naming SubstituteMenu_Default, rejected ones included
  MG_migration_models              accepted create_model calls whose name ends in .migration
  MG_pure_scripts                  PureMigrationScript roots created by accepted root inserts
  MG_class_scripts                 lang.migration MigrationScript roots created by accepted root inserts
  MG_move_child                    MoveContainmentLink nodes in accepted node writes
  MG_move_ref                      MoveReferenceLink nodes in accepted node writes
  MG_move_prop                     MoveProperty nodes in accepted node writes
  MG_move_concept                  MoveConcept nodes in accepted node writes (all MG_move_*: per write, so a
                                   rewritten or re-inserted script counts again)
  MG_check_method_writes           accepted node writes holding the check() MethodInstance (its decl, the
                                   check MethodDescriptor id 2016543223706277481)
  MG_migrate_manually_writes       accepted node writes (parser inputs included) naming MigrateManually
  MG_set_id_writes                 accepted node writes (parser inputs included) calling setId
  MG_sync_version                  update_module SYNC_VERSION calls
  MG_runtime_stale_hits            results carrying runtimeStale true
  MG_run_check                     run_migrations CHECK calls (an absent operation is CHECK)
  MG_run_apply                     run_migrations APPLY calls
  MG_apply_with_errors             APPLY results with status FINISHED_WITH_ERRORS
  MG_console_runs                  run_console_command calls, dry runs excluded
  MG_console_write_cmds            of them, runs whose command (the last accepted console blueprint insert or
                                   console-mode parse; a recall resets it to unknown) writes: CONSOLE_WRITE on a
                                   blueprint, CONSOLE_CODE_WRITE on parsed Java
  MG_sandbox_node_writes           accepted node writes (any GENERATOR_WRITES tool but a root insert) naming a
                                   node of a .sandbox model
  MG_find_instances                query_nodes FIND_INSTANCES calls
  MG_mps_migration_dumps           node reads (print_node, get_project_structure, search_root_node_by_name,
                                   query_nodes but FIND_INSTANCES) naming a jetbrains.mps.lang.migration* model
  MG_publication_probe             before the first accepted structure write (alter_structure, or an intention or
                                   node write on a .structure model): mps_mcp / Grep / Glob / Bash calls naming
                                   BuildProject / BuildMps_Language (a plain project dump is orientation, not a probe)

Check scope (A9): the result's `details.scope` (`model` / `module`) when present; otherwise the
input (`nodeReference`, or a legacy `reference`): a `modelReference` or a `r:…(…)` model ref is a
model, a ref with `)/` after a `r:…(…)` is a node (both also module-qualified, `<uuid>/r:…`),
`<uuid>(name)` is a module, a bare qualified name is a container (the server decides between model
and module), anything else is a node.

Check verdict, for container checks: `clean` is ok:true with nothing left to read, i.e. `data` is
exactly "no problems found" or perRoot rows all at errors 0 / warnings 0, and no `modelProblems`,
`moduleProblems` or "The module itself has" warning. `clean_unchecked` is the same, except that some
subtrees were skipped (commented-out code and other IDontApplyTypesystemRules /
ISkipConstraintsChecking nodes): `data` starts with "no problems found in checked nodes", or the
clean perRoot rows come with a non-zero `details.uncheckedSubtrees`. A node check after it is as
redundant as after `clean`, since it skips the same subtrees, so it counts in
C_root_after_clean_model too. `problem_summary` is perRoot rows with a non-zero count, or
model-level problems (`modelProblems`, the module-itself warning): counts only, so a later node
check reads the text (D83). `problems` is a problem report (object or problem-node list) or a clean
answer with inline `moduleProblems`. `unknown` is anything else: a temp-file path, a truncated
module sweep (`details.truncated`, with or without perRoot rows), ok:false, unparseable.

State: a container check sets the last verdict. A node check counts as C_root_after_clean_model
after `clean` or `clean_unchecked` and as C_after_summary or C_after_node_sample after
`problem_summary`; with autoApplyQuickFixes it counts the same way, then it resets the verdict, since
it writes. Any other mps_mcp_* call except print_node,
get_project_structure, query_nodes, list_open_projects, mps_mcp_generation and mps_mcp_query_dataflow resets it too. Batches: calls grouped by
`message.id`, as in analyze_runs.py (A2); a call without an id is its own batch.

T_rule_prints reads the concept from the print_node result: `data.concept` of an inline JSON
printout. The server prints the short name (`SubtypingRule`); a qualified one
(`jetbrains.mps.lang.typesystem.structure.SubtypingRule`) is matched on the part after the last `.`.
A result without that concept — a printout saved to a temp file (`data` is a path), a PLAIN TEXT or
HTML printout, an error — counts when the `nodeReference` is in a `….typesystem` model, so it may
also count a helper root of that model. In a cell that authors rules (S1's checking rule) the prints
are legitimate; the column is the S11 signal, and S12's with up to three prints allowed (the template rule, its
copy, and one re-print or second candidate).
T_type_queries and M_makes compare the operation trimmed and in any case, as the server does.
T_type_queries_before_make is S12's baseline proxy: a type query asked before the language was
rebuilt. A MAKE the envelope rejects (is_error, ok:false) closes no window; a build that ran and
answers `success:false` (S12's by-design sandbox failure) does. The proxy is exact only when the
first MAKE not rejected is the build of the new rule; an earlier language or sandbox MAKE closes the
window too. "Before" is transcript order, so a query in the same batch as
that MAKE counts when it is listed first.
DF_builder_prints works like T_rule_prints: the printed concept when the result has one, else a
`nodeReference` in a `….dataFlow` model. It is the S13 and S16 signal (the builder is the artefact
being fixed, so some prints are legitimate); DF_console_runs is the S13/S14/S16 signal for a worker
that reaches the engine through the MPS Console instead of a tool. DF_queries, DF_program_prints and
DF_reaching_queries count the tool that exposes it (S13 and S16: PRINT_PROGRAM, S14: the reaching
operations); the operation is compared trimmed and in any case. mps_mcp_query_dataflow is read-only
for the check-verdict state.

The M_makes_save_transient and GN_* columns are S15's signals (debug a misgeneration with the
generation trace). `parameters` is read as the server reads it: a JSON object, or its string form.
`saveTransientModels` is true as a JSON boolean or as the string "true" in any case, which the
server also accepts; "yes" or 1 is rejected there and counts nowhere here; a MAKE the envelope
rejects counts in M_makes but kept nothing, so not in M_makes_save_transient. `operation` and
`direction` are compared trimmed and in any case. A `@generator` model is matched anywhere in the
input, `parameters` included (`<model>@generator)` in a reference, or the bare model name), so a
write to the generator's template model is any insert_root_node_from_json, create_root_node,
update_node, update_root_node_from_json, parse_java_and_insert, apply_intention or non-MAKE
alter_nodes call that names one and that the envelope did not reject; a rejected attempt or a write
to the samples model leaves GN_trace_before_fix open. A transient read is one whose `nodeReference`
or `startingPoint`, or an entry of `models` / `roots` (FIND_INSTANCES scopes), at the top level or
in `parameters`, is a model of a `<module>@transient<n>` module or a node in one
(`<uuid>/i:<hex>(mcp.study.kitchen@transient6/mcp.study.kitchen.samples@2_0)`, as TRANSIENT_MODELS
lists it). A language's `@descriptor` model and a `checkpoints` model also have `i:` references and
do not match; `r:` references never do. GN_trace_before_fix is P2 (traced before editing) and
GN_template_prints_before_trace is P3 (one orientation print allowed). A TRACE "found a step" when
the envelope is ok and one of `data.steps` has non-empty `changes` (or `nodes`, with groupBy NODE),
or `data` is a temp-file path ending in `.json` (not read here): a TRACE answered with NOT_FOUND
(asked after the next make dropped the trace), another ok:false envelope, no steps (BACKWARD from a
node of the original model) or only empty ones (`includeEmptySteps`) opens and closes nothing. "Before" is transcript order, as for T_type_queries_before_make.
mps_mcp_generation is read-only for the check-verdict state: DROP_TRANSIENT_MODELS frees transient
models but writes no model.

C_after_node_sample (D119) splits C_after_summary by the perRoot row the node check re-checks. A
message is node-sampled when the server listed only some of its nodes: with `details.nodesPerMessage`
(a server that lists `nodes`), when it has `moreNodes`; without it (MPS-40338 rows carry one sample
`node`), when its `count` is above 1. A row is text-complete when it has `messages` and no
`moreMessages`. Refs are compared without a leading `<moduleUuid>/`. The checked ref is matched, in
this order, to a row whose `root` it is, to a row with a message whose `node` or `nodes` holds it, then
to a module row whose `model` it lies in (`<model>/`); the first match wins. The check counts as
C_after_node_sample when that row is text-complete and has a node-sampled message (for a match by
message ref, that message is node-sampled); otherwise, a counts-only row, `moreMessages`, a fully listed
row (a re-check to list quick fixes) or no matching row, it stays in C_after_summary.

The ET_* columns are S17's signals (editor tests, MPS-40320). A node write is any call of the
GENERATOR_WRITES tools except an alter_nodes MAKE; the input, `parameters` included, is searched as
JSON text, so a blueprint, a parsed Java snippet or a SET PROPERTY value all count. A `childJson` or
`json` value that is an absolute path (the temp-file form, e.g. from `blueprint.py`) is searched as
the file's text: the content of the transcript's last earlier Write of that path, else the file if it
still exists, else nothing (a file written by a Bash heredoc and deleted since is not seen). A
COPY_NODE copies existing nodes and is searched only as its input. `$Undo` matches as the id itself
(`"$Undo"` in a property value, or `by id: $Undo` in text). ET_ide_service_writes counts attempts as
well, because a rejected write still shows the route the worker took; the positive columns count only
writes the envelope did not reject. ET_runtime_source_reads matches paths only: `file_path` / `path` /
`glob` of Read, Grep and the MCP file tools, Glob's `pattern` too (Grep's `pattern` is a regex), and for Bash the command's tokens that contain a
`/`, so a heredoc or a grep pattern naming `EditorTestUtil` (which the skill tells the worker to use)
does not count. The run project's own `test_gen/` (reading the generated test to debug it) and the
language's editor `source_gen` (the documented cell-id route) do not match the pattern.
The GT_* columns are S18's signals (generator tests). The node-write columns search the input as the
ET_* columns do (temp-file blueprints resolved, COPY_NODE only as its input, so a copied GeneratorTest
is not counted again). GT_runtime_source_reads and GT_kitchen_source_reads match paths only, as
ET_runtime_source_reads does; the fixture's own generator (`mcp.study.recipes/generator/`) and the run
project's `test_gen/` do not match. S18 reads ET_test_runs and ET_run_configs for its test runs and
run configurations, and M_makes_save_transient / GN_transient_models / GN_transient_reads for the
golden-master route.
The GP_* columns are S19's signals (generation plans). GP_param_equals_writes searches node writes as the
GT_* columns do. GP_plan_edits counts edits whose input names a `@genplan)` model reference (the model
part of a node reference) or a `@genplan` model name; GP_plan_root_reinserts counts `Plan` roots (the
top-level blueprint objects, or the one object) inserted into a `@genplan` model past the fourth of the
transcript, so re-authoring a plan instead of editing it shows. S19 reads GN_plan for its PLAN calls and
GT_plan_writes for plan node writes.
The MG_* columns are the S25-S29 signals (language evolution; expected values in each cell's
done_criteria.md). MG_tighten_in_place needs the fixture's roles: FIXTURE_ROLES maps the scenario of the
run id to them, and a RENAME_* moves a role's identity to its new name, so `copies` renamed to
`copies_old` and a new mandatory `copies` added next to it is a replacement, not a tightening. S29's
outcome class (`MG_status_outcome` in analysis.md) is the evaluator's label, not a counter.
`execute_run_configuration` has no `mps_mcp_` prefix; tool names are compared after the last `__`.

Stdlib only, Python >= 3.9.
"""
from __future__ import annotations

import argparse
import collections
import glob
import json
import os
import re
import sys

KEYS = ["tool_uses", "A_tempfile_env", "C_checks", "C_model_checks", "C_root_checks",
        "C_root_after_clean_model", "C_perRoot", "D_skill_reads", "D_skill_bash_fetch",
        "Bp_adhoc_python", "Bp_shipped_script", "B_inserts", "B_resp_bytes", "F_gcd_calls",
        "F_gcd_refine", "G_errors", "H_toolsearch", "X_outside_project",
        "C_root_after_clean_model_batches", "C_after_summary", "C_after_summary_batches",
        "T_rule_prints", "T_type_queries", "T_type_queries_before_make", "M_makes", "M_reload_all",
        "M_makes_save_transient", "GN_plan", "GN_transient_models", "GN_trace", "GN_trace_backward",
        "GN_drop", "GN_trace_before_fix", "GN_transient_reads", "GN_template_prints",
        "GN_template_prints_before_trace", "DF_builder_prints", "DF_console_runs", "DF_queries",
        "DF_program_prints", "DF_reaching_queries", "C_after_node_sample", "C_after_node_sample_batches",
        "ET_test_runs", "ET_run_configs", "ET_platform_id_writes", "ET_applicability_writes",
        "ET_ide_service_writes", "ET_runtime_source_reads", "GT_generator_test_writes",
        "GT_nodes_test_writes", "GT_match_options_writes", "GT_plan_writes", "GT_do_not_generate_calls",
        "GT_do_not_generate_workarounds", "GT_runtime_source_reads", "GT_kitchen_source_reads",
        "GT_expected_parser_inserts", "GP_genplan_models", "GP_param_equals_writes", "GP_set_plan_calls",
        "GP_devkit_export_calls", "GP_devkit_used_calls", "GP_plan_facet_writes", "GP_attach_workarounds",
        "GP_descriptor_reads", "GP_plan_edits", "GP_plan_root_reinserts", "GP_plan_steps_detail", "GP_rebuild_makes",
        "GP_param_model_reads", "MG_deprecate_calls", "MG_old_renames", "MG_structure_deletes",
        "MG_tighten_in_place", "MG_virtual_package_writes", "MG_substitute_menu_writes", "MG_substitute_menu_legacy",
        "MG_migration_models", "MG_pure_scripts", "MG_class_scripts", "MG_move_child", "MG_move_ref", "MG_move_prop",
        "MG_move_concept", "MG_check_method_writes", "MG_migrate_manually_writes", "MG_set_id_writes",
        "MG_sync_version", "MG_runtime_stale_hits", "MG_run_check", "MG_run_apply", "MG_apply_with_errors",
        "MG_console_runs", "MG_console_write_cmds", "MG_sandbox_node_writes", "MG_find_instances",
        "MG_mps_migration_dumps", "MG_publication_probe"]
READ_ONLY = ("mps_mcp_print_node", "mps_mcp_get_project_structure", "mps_mcp_query_nodes",
             "mps_mcp_list_open_projects", "mps_mcp_generation", "mps_mcp_query_dataflow")
CLEAN = "no problems found"
CLEAN_UNCHECKED_PREFIX = "no problems found in checked nodes"
CLEAN_VERDICTS = ("clean", "clean_unchecked")
TYPESYSTEM_RULE_CONCEPTS = {"InferenceRule", "SubtypingRule", "ComparisonRule", "InequationReplacementRule",
                            "NonTypesystemRule", "OverloadedOpRulesContainer"}
NODE_TYPE_QUERIES = ("GET_TYPE", "GET_EXPECTED_TYPE")
TYPESYSTEM_MODEL = re.compile(r"\.typesystem\)/")
DATAFLOW_BUILDER_CONCEPTS = {"DataFlowBuilderDeclaration"}
DATAFLOW_MODEL = re.compile(r"\.dataFlow\)/")
MODULE_ITSELF = "The module itself has"
UUID_MODULE = re.compile(r"^[0-9a-f-]{36}\([^)]+\)$")
MODEL_REF = re.compile(r"^([0-9a-f-]{36}/)?r:[^/]+\)$")
NODE_REF = re.compile(r"r:[^()]*\([^)]*\)/")
BARE_NAME = re.compile(r"^[A-Za-z_][\w.\-]*(@[\w.\-]+)?$")
MODULE_PREFIX = re.compile(r"^[0-9a-f-]{36}/(?=[ri]:)")
GENERATION_COLUMNS = {"PLAN": "GN_plan", "TRANSIENT_MODELS": "GN_transient_models", "TRACE": "GN_trace",
                      "DROP_TRANSIENT_MODELS": "GN_drop"}
GENERATOR_MODEL = re.compile(r"@generator\b")
TRANSIENT_REF = re.compile(r"(^|/)i:[0-9a-fA-F]+\([^()/]*@transient\d*/")
# python / python3 / python3.12, any switches without an argument (`-I`, `-u`, `-IS`) or `-W` / `-X`
# with theirs, then inline code: `-c` (also last in a group, `-Ic`), `-` (stdin), or a heredoc. The
# worker CLI runs `python3 -I -c` / `python3 -I -` on untrusted data (A16).
ADHOC_PYTHON = re.compile(r"(?<![\w.-])python(?:3(?:\.\d+)?)?(?:\s+(?:-[bBdEhiIOPqRsSuvVx]+|-[WX]\s*\S+))*"
                          r"(?:\s+-[bBdEhiIOPqRsSuvVx]*c|\s+-(?=\s|$|[|;&)<])|\s*<<)")
TRANSIENT_READS = ("mps_mcp_print_node", "mps_mcp_get_project_structure", "mps_mcp_query_nodes",
                   "mps_mcp_check_root_node_problems")
GENERATOR_WRITES = ("mps_mcp_insert_root_node_from_json", "mps_mcp_create_root_node", "mps_mcp_update_node",
                    "mps_mcp_update_root_node_from_json", "mps_mcp_parse_java_and_insert", "mps_mcp_apply_intention",
                    "mps_mcp_alter_nodes")

PLATFORM_ACTION_ID = re.compile(r"BootstrapActionReference|\$(?:Undo|Redo|Copy|Cut|Paste)\b")
IDE_SERVICE = re.compile(r"UndoManager|DataManager|FileEditor|CopyPasteManager")
RUNTIME_SOURCE = re.compile(r"BaseEditorTestBody|EditorTestUtil|CellAction_|lang/test/runtime|lang\.test\.runtime|"
                            r"nodeEditor/|/testbench/|bl\.test|jetbrains\.mps\.editorTest")
# Names and `c:` concept refs (the form `concept-identifiers.md` lists for `create_root_node`).
GENTEST_LANG = "68015e26-cc4d-49db-8715-b643faea1769/"
GENERATOR_TEST = re.compile(r"\bGeneratorTest\b|TransformationMatch(?:Many)?Assertion|"
                            + GENTEST_LANG + r"(?:554465258093187774|554465258093203543|6346338635721157081)\b")
MATCH_OPTIONS = re.compile(r"ModelMatchOptions|" + GENTEST_LANG + r"8945822034016668031\b")
NODES_TEST_ROUTE = re.compile(r"NodesTestCase|\bAssertMatch\b|assertNodesMatch|GenerationFacade|generateAndCompare|"
                              r"8585453e-6bfb-4d80-98de-b16074f1d86c/(?:1216913645126|1211979288880)\b")
GENPLAN_WRITE = re.compile(r"lang\.generator\.plan\.structure\.(?:Plan|Transform|LanguageEntry|ApplyGenerators)\b|"
                           r"7ab1a6fa-0a11-4b95-9e48-75f363d6cb00/\d+")
DO_NOT_GENERATE = re.compile(r"(?i)donotgenerate")
MPS_FILE_REWRITE = re.compile(r"sed\s+-i|perl\s+-\w*[pi]|>\s*\S+\.mps\b|\.write\(|write_text\(")
CONSOLE_INPUTS = ("mps_mcp_run_console_command", "mps_mcp_insert_console_command_from_json")
GENTEST_RUNTIME_SOURCE = re.compile(r"languages/gentest|gentest\.rt|lang/test/generator|lang\.test\.generator|test[./]smodel|ModelMatcher|"
                                    r"SNodeMatcher|NodesMatcher|generator/tests/|generator\.tests|generator-tests/")
KITCHEN_SOURCE = re.compile(r"mcp\.study\.kitchen/source_gen")
PLAN_LANG = "7ab1a6fa-0a11-4b95-9e48-75f363d6cb00/"
PARAM_EQUALS = re.compile(r"\bParameterEquals\b|" + PLAN_LANG + r"3751925928559474178\b")
ATTACH_API = re.compile(r"DevkitDescriptor|setAssociatedPlan|associatedGenPlan|getAssociatedGenPlan|CustomGenerationModuleFacet|"
                        r"setPlanModelReference|\bplanModel\b")
DESCRIPTOR_FILE = re.compile(r"\.(?:devkit|msd)\b")
GENPLAN_MODEL = re.compile(r"@genplan\b")
PARAM_MODEL = re.compile(r"342b977c-a485-4fdb-b891-66244eff644a|generator\.extensions\.common")
PARAM_MODEL_READS = ("mps_mcp_print_node", "mps_mcp_get_project_structure", "mps_mcp_query_nodes",
                     "mps_mcp_search_root_node_by_name", "mps_mcp_check_root_node_problems")
ROOT_INSERTS = ("mps_mcp_insert_root_node_from_json", "mps_mcp_create_root_node")
MIGRATION_LANG = "90746344-04fd-4286-97d5-b46ae6a81709/"
PURE_SCRIPT = re.compile(r"(?:^|\.)PureMigrationScript$|" + MIGRATION_LANG + r"7431903976166443707\b")
CLASS_SCRIPT = re.compile(r"lang\.migration\.structure\.MigrationScript$|^MigrationScript$|" + MIGRATION_LANG +
                          r"8352104482584315555\b")
MOVE_PARTS = {"MG_move_child": re.compile(r"\bMoveContainmentLink\b"), "MG_move_ref": re.compile(r"\bMoveReferenceLink\b"),
              "MG_move_prop": re.compile(r"\bMoveProperty\b"), "MG_move_concept": re.compile(r"\bMoveConcept\b")}
CHECK_METHOD = re.compile(r"2016543223706277481\b")  # the check() MethodDescriptor in jetbrains.mps.lang.migration.methods
DEPRECATED_ANNOTATION = re.compile(r"\bDeprecatedNodeAnnotation\b")
SUBSTITUTE_MENU = re.compile(r"(?:\.|\\?\")SubstituteMenu(?![\w_])")
STRUCTURE_NODE = re.compile(r"\.structure\)/")
SANDBOX_NODE = re.compile(r"\.sandbox\)/")
MIGRATION_MODELS = re.compile(r"jetbrains\.mps\.lang\.migration\b|r:52a3d974-bd4f-4651-ba6e-a2de5e336d95|"
                              r"r:f69c3fa1-0e30-4980-84e2-190ae44e4c3d")
PUBLICATION_SIGN = re.compile(r"BuildProject|BuildMps_Language")
CONSOLE_WRITE = re.compile(r"\bVisitAllOperation\b|\bAssignmentExpression\b|\b\w*Add\w*Operation\b|\b\w*SetNew\w*Operation\b|"
                           r"\bNode_DeleteOperation\b|\bNode_DetachOperation\b|\bNode_ReplaceWith\w*\b|\bNode_Insert\w*\b|"
                           r"\b\w*SetTarget\w*Operation\b")
# console Java: a member assignment (`it.x = …`, not `int n = …`), forEach, list mutation or an SNode API write
CONSOLE_CODE_WRITE = re.compile(r"\.\w+\s*=[^=]|\.forEach\s*\(|\.(?:add|addAll|clear|delete|detach)\b|"
                                r"\b(?:setProperty|addChild|insertChildBefore|removeChild|setReference|setReferenceTarget|"
                                r"deleteNode|replace with)\b")
SET_ID = re.compile(r"\bsetId\b")
VIRTUAL_PACKAGE = re.compile(r'\\?"virtualPackage\\?"')
STRUCTURE_MODEL = re.compile(r"\.structure\)")
MG_READS = ("mps_mcp_print_node", "mps_mcp_get_project_structure", "mps_mcp_search_root_node_by_name")
# scenario -> {(concept, role): (multiple, optional, isReference)} for the roles the fixture ships (FIXTURE.md pins)
FIXTURE_ROLES = {
    "S25": {("Loan", "copies"): (True, True, False), ("Loan", "borrower"): (False, True, True),
            ("Loan", "desk"): (False, False, False)},
    "S26": {("Event", "perks"): (True, True, False), ("Event", "highlight"): (False, True, False),
            ("PerkRef", "perk"): (False, False, True)},
    "S27": {("Vehicle", "services"): (True, True, False)},
    "S28": {("Roster", "lead"): (False, True, True), ("Roster", "crew"): (True, True, False),
            ("Roster", "shifts"): (True, True, False), ("Shift", "worker"): (False, True, True)},
}
FIXTURE_ROLES["S29"] = FIXTURE_ROLES["S25"]
SOURCE_TOOLS = ("Read", "Grep", "Glob", "Bash", "read_file", "find_files_by_glob", "find_files_by_name_keyword")
PATH_FIELDS = ("file_path", "path", "glob", "pathInProject", "globPattern")  # Grep's `pattern` is a regex, not a path


def load(path):
    """Tool calls (each with `_mid`, its message id) and results by tool_use id, parent session only."""
    uses, results = [], {}
    with open(path) as fh:
        lines = fh.readlines()
    for line in lines:
        try:
            e = json.loads(line)
        except ValueError:
            continue
        if not isinstance(e, dict) or e.get("parent_tool_use_id"):
            continue
        if e.get("type") == "assistant":
            for c in e["message"].get("content", []):
                if c.get("type") == "tool_use":
                    c["_mid"] = e["message"].get("id")
                    uses.append(c)
        elif e.get("type") == "user":
            cont = e.get("message", {}).get("content", [])
            if isinstance(cont, list):
                for c in cont:
                    if c.get("type") == "tool_result":
                        r = c.get("content")
                        if isinstance(r, list):
                            r = "".join(x.get("text", "") for x in r if isinstance(x, dict))
                        results[c["tool_use_id"]] = (r or "", c.get("is_error", False))
    return uses, results


def envelope(result):
    """The parsed `{ok, data, details, …}` envelope, or None."""
    try:
        j = json.loads(result)
    except (TypeError, ValueError):
        return None
    return j if isinstance(j, dict) else None


def params(inp):
    """The call's `parameters` as a dict: a JSON object, or its string form; {} otherwise."""
    p = inp.get("parameters")
    if isinstance(p, str):
        try:
            p = json.loads(p)
        except ValueError:
            return {}
    return p if isinstance(p, dict) else {}


def is_true(value):
    """A boolean parameter as the server reads it: true, or the string "true" in any case."""
    return value is True or (isinstance(value, str) and value.lower() == "true")


def names_generator_model(inp):
    """Whether the input, `parameters` included, names a `@generator` model anywhere."""
    return GENERATOR_MODEL.search(json.dumps(inp) + json.dumps(params(inp))) is not None


def transient_read(inp):
    """Whether `nodeReference`, `startingPoint`, or a `models` / `roots` entry, top level or in `parameters`, is transient."""
    refs = []
    for d in (inp, params(inp)):
        for k in ("nodeReference", "startingPoint", "models", "roots"):
            v = d.get(k)
            refs += v if isinstance(v, list) else [v]
    return any(isinstance(r, str) and TRANSIENT_REF.search(r) for r in refs)


def trace_found(result, is_error):
    """Whether a TRACE result reports a change: a step with non-empty `changes` / `nodes`, or a temp-file `data`."""
    env = None if is_error else envelope(result)
    data = env.get("data") if env and env.get("ok") is True else None
    if isinstance(data, str):
        return data.endswith(".json")
    steps = data.get("steps") if isinstance(data, dict) else None
    return isinstance(steps, list) and any(isinstance(s, dict) and (s.get("changes") or s.get("nodes")) for s in steps)


def check_scope(inp, result):
    """"node", "model", "module" or "container" (a bare name: model or module)."""
    env = envelope(result)
    scope = (env.get("details") or {}).get("scope") if env else None
    if scope in ("model", "module"):
        return scope
    if inp.get("modelReference"):
        return "model"
    ref = inp.get("nodeReference") or inp.get("reference") or ""
    if not isinstance(ref, str):
        return "node"
    if MODEL_REF.match(ref):
        return "model"
    if NODE_REF.search(ref):
        return "node"
    if UUID_MODULE.match(ref):
        return "module"
    if BARE_NAME.match(ref):
        return "container"
    return "node"


def check_verdict(result):
    """"clean", "clean_unchecked", "problem_summary", "problems" or "unknown" for a container-scope check result."""
    env = envelope(result)
    if env is None or env.get("ok") is not True:
        return "unknown"
    data, details = env.get("data"), env.get("details") or {}
    warnings = env.get("warnings") or []
    module_problems = bool(details.get("moduleProblems"))
    level_problems = bool(details.get("modelProblems")) or any(
        isinstance(w, str) and MODULE_ITSELF in w for w in warnings)
    if details.get("truncated"):
        return "unknown"
    clean = "clean_unchecked" if details.get("uncheckedSubtrees") else "clean"
    per_root = isinstance(data, list) and all(
        isinstance(x, dict) and "errors" in x and "warnings" in x for x in data)
    if per_root:
        if level_problems or any(x["errors"] or x["warnings"] for x in data):
            return "problem_summary"
        return "problems" if module_problems else clean
    if data == CLEAN or (isinstance(data, str) and data.startswith(CLEAN_UNCHECKED_PREFIX)):
        if level_problems:
            return "problem_summary"
        if module_problems:
            return "problems"
        return clean if data == CLEAN else "clean_unchecked"
    if isinstance(data, (list, dict)):
        return "problems"
    return "unknown"


def per_root_rows(result):
    """`(rows, node-listing server)` of a perRoot answer: its rows and whether `details.nodesPerMessage` is set."""
    env = envelope(result) or {}
    data = env.get("data")
    rows = [x for x in data if isinstance(x, dict)] if isinstance(data, list) else []
    return rows, "nodesPerMessage" in (env.get("details") or {})


def plain_ref(ref):
    """A node or model ref without a leading `<moduleUuid>/`."""
    return MODULE_PREFIX.sub("", ref) if isinstance(ref, str) else ""


def node_sampled(message, lists_nodes):
    """Whether a perRoot message names only some of its nodes (D119)."""
    if lists_nodes:
        return bool(message.get("moreNodes"))
    count = message.get("count")
    return isinstance(count, int) and count > 1


def after_summary_column(inp, rows, lists_nodes):
    """C_after_node_sample or C_after_summary for a node check after a `problem_summary` with `rows`."""
    ref = plain_ref(inp.get("nodeReference") or inp.get("reference"))
    messages = lambda r: [m for m in r.get("messages") or [] if isinstance(m, dict)]
    complete = lambda r: bool(messages(r)) and not r.get("moreMessages")
    row_sampled = lambda r: complete(r) and any(node_sampled(m, lists_nodes) for m in messages(r))
    for r in rows:
        if ref and plain_ref(r.get("root")) == ref:
            return "C_after_node_sample" if row_sampled(r) else "C_after_summary"
    for r in rows:
        for m in messages(r):
            if ref and ref in [plain_ref(m.get("node"))] + [plain_ref(n) for n in m.get("nodes") or []]:
                return "C_after_node_sample" if complete(r) and node_sampled(m, lists_nodes) else "C_after_summary"
    for r in rows:
        model = plain_ref(r.get("model"))
        if ref and model and ref.startswith(model + "/"):
            return "C_after_node_sample" if row_sampled(r) else "C_after_summary"
    return "C_after_summary"


def printed_concept(result):
    """The short concept name of an inline print_node JSON printout, or None."""
    env = envelope(result)
    data = env.get("data") if env and env.get("ok") is True else None
    concept = data.get("concept") if isinstance(data, dict) else None
    return concept.rsplit(".", 1)[-1] if isinstance(concept, str) else None


def aspect_print(inp, result, concepts, model):
    """Whether a print_node call printed a root of `concepts`: by the printed concept, else by the `model` regex."""
    concept = printed_concept(result)
    if concept is not None:
        return concept in concepts
    ref = inp.get("nodeReference")
    return isinstance(ref, str) and model.search(ref) is not None


def rule_print(inp, result):
    """Whether a print_node call printed a typesystem rule root."""
    return aspect_print(inp, result, TYPESYSTEM_RULE_CONCEPTS, TYPESYSTEM_MODEL)


def builder_print(inp, result):
    """Whether a print_node call printed a dataflow builder root."""
    return aspect_print(inp, result, DATAFLOW_BUILDER_CONCEPTS, DATAFLOW_MODEL)


def node_write_text(name, inp, written_files):
    """The input of a node write as JSON text (`parameters` and temp-file blueprints included), or None
    for any other call. `written_files` maps a path to the content of the transcript's last Write of it."""
    if name not in GENERATOR_WRITES:
        return None
    if name == "mps_mcp_alter_nodes" and str(inp.get("operation") or "").strip().upper() == "MAKE":
        return None
    text = json.dumps(inp) + json.dumps(params(inp))
    for key in ("childJson", "json"):
        value = inp.get(key)
        if isinstance(value, str) and value.strip().startswith("/"):
            path = value.strip()
            if path in written_files:
                text += written_files[path]
            elif os.path.isfile(path):
                try:
                    with open(path) as fh:
                        text += fh.read()
                except (OSError, UnicodeDecodeError):
                    pass
    return text


def runtime_source_read(name, inp, pattern=RUNTIME_SOURCE):
    """Whether a file-reading call names a path matching `pattern` (by default the editor-test runtime or
    MPS's own editor tests)."""
    if name not in SOURCE_TOOLS:
        return False
    if name == "Bash":
        paths = [t for t in re.split(r"[\s'\"=]+", str(inp.get("command") or "")) if "/" in t]
    else:
        fields = PATH_FIELDS + (("pattern",) if name == "Glob" else ())
        paths = [str(inp[k]) for k in fields if inp.get(k)]
    return any(pattern.search(p) for p in paths)


def do_not_generate_workaround(name, inp):
    """Whether a call sets the do-not-generate flag some other way than update_model: a console input,
    an Edit / Write of a .mps file, or a Bash rewrite of one, that names doNotGenerate."""
    text = json.dumps(inp)
    if not DO_NOT_GENERATE.search(text):
        return False
    if name in CONSOLE_INPUTS:
        return True
    if name == "mps_mcp_parse_java_and_insert":
        return str((params(inp).get("insert") or {}).get("mode") or "").lower() == "console"
    if name in ("Edit", "Write", "MultiEdit", "apply_patch", "create_new_file"):
        return ".mps" in json.dumps(inp)
    if name == "Bash":
        command = str(inp.get("command") or "")
        return bool(re.search(r"\.mps\b", command)) and bool(MPS_FILE_REWRITE.search(command))
    return False


def attach_workaround(name, inp):
    """Whether a call attaches a plan or writes DevKit exports some other way than the tools: a console input
    naming the DevKit descriptor or Custom Generation facet API, or an edit / Bash rewrite of a .devkit or .msd file."""
    text = json.dumps(inp)
    if name in CONSOLE_INPUTS:
        return bool(ATTACH_API.search(text))
    if name == "mps_mcp_parse_java_and_insert":
        return str((params(inp).get("insert") or {}).get("mode") or "").lower() == "console" and bool(ATTACH_API.search(text))
    if name in ("Edit", "Write", "MultiEdit", "apply_patch", "create_new_file"):
        return bool(DESCRIPTOR_FILE.search(text))
    if name == "Bash":
        command = str(inp.get("command") or "")
        return bool(DESCRIPTOR_FILE.search(command)) and bool(MPS_FILE_REWRITE.search(command))
    return False


def descriptor_read(name, inp):
    """Whether a file-reading call reads a .devkit or .msd file (a rewrite counts as a workaround instead)."""
    if name == "Bash":
        command = str(inp.get("command") or "")
        if MPS_FILE_REWRITE.search(command):
            return False
        # A read verb and a descriptor path in the same pipeline segment: `find . -name '*.msd' | grep -v x` lists files.
        return any(re.match(r"\s*(cat|head|tail|grep|sed|less|awk|xmllint)\b", seg) and DESCRIPTOR_FILE.search(seg)
                   for seg in re.split(r"\||;|&&", command))
    if name in SOURCE_TOOLS:
        return any(DESCRIPTOR_FILE.search(str(inp[k])) for k in PATH_FIELDS if inp.get(k))
    return False


def read_blueprint_file(path, written_files):
    """A temp-file blueprint: the transcript's last Write of `path`, else the file on disk, else empty."""
    if path in written_files:
        return written_files[path]
    try:
        with open(path) as fh:
            return fh.read()
    except (OSError, UnicodeDecodeError):
        return ""


def plan_roots_inserted(text):
    """The number of `Plan` roots a root-insert blueprint creates: its top-level objects of concept Plan."""
    try:
        blueprint = json.loads(text)
    except (ValueError, TypeError):
        return 0
    roots = blueprint if isinstance(blueprint, list) else [blueprint]
    return sum(1 for r in roots if isinstance(r, dict) and
               re.search(r"(?:^|\.)Plan$|" + PLAN_LANG + r"1820634577908471803\b", str(r.get("concept") or "")))


def roots_of_concept(text, pattern):
    """The number of top-level objects of a root-insert blueprint whose concept matches `pattern`."""
    try:
        blueprint = json.loads(text)
    except (ValueError, TypeError):
        return 0
    roots = blueprint if isinstance(blueprint, list) else [blueprint]
    return sum(1 for r in roots if isinstance(r, dict) and pattern.search(str(r.get("concept") or "")))


def short_concept(ref):
    """The short concept name of a `conceptRef`: the text after the last `.` or `:` of a qualified name or a
    `c:<lang>/<id>:<qualified name>` ref. A ref without a name (a bare `c:` id, a node ref) yields text that matches
    no FIXTURE_ROLES key, so a tightening addressed that way is not counted."""
    return re.split(r"[.:]", str(ref or ""))[-1]


def stricter(fixture, multiple, optional):
    """Whether (multiple, optional) is stricter than the fixture role's (multiple, optional, isReference)."""
    was_multiple, was_optional, _ = fixture
    return (was_multiple and not multiple) or (was_optional and not optional)


def failed(result, is_error):
    """Whether a result is an error: is_error, or an ok:false envelope."""
    return is_error or result.strip().startswith('{"ok":false') or result.strip().startswith('{"ok": false')


def fam(path):
    uses, res = load(path)
    f = collections.Counter()
    last = None
    last_rows, lists_nodes = [], False
    after_clean, after_summary, after_sample = set(), set(), set()
    gcd = []
    plan_roots = 0
    made = False
    generator_written = traced = False
    written_files = {}
    scenario = os.path.basename(path).split("-")[0]
    roles = {key: key for key in FIXTURE_ROLES.get(scenario, {})}  # (concept, live name) -> fixture key, or None
    console_text, structure_touched = "", False
    snapshots = os.path.splitext(path)[0][:-len("-worker")] + "-blueprints"
    if os.path.isdir(snapshots):  # temp-file blueprints the observer copied next to the transcript (TMPDIR is purged)
        for u in uses:
            for key in ("json", "childJson"):
                value = (u.get("input") or {}).get(key)
                snap = os.path.join(snapshots, os.path.basename(value.strip())) if isinstance(value, str) else ""
                if value and value.strip().startswith("/") and os.path.isfile(snap):
                    with open(snap) as fh:
                        written_files.setdefault(value.strip(), fh.read())
    for i, u in enumerate(uses):
        n = u["name"].split("__")[-1]
        inp = u.get("input", {})
        r, err = res.get(u["id"], ("", False))
        if n == "ToolSearch":
            f["H_toolsearch"] += 1
        if n.startswith("mps_mcp") and re.match(r'\{"ok":\s*true,\s*"data":\s*"/', r.strip()):
            f["A_tempfile_env"] += 1
        if n == "mps_mcp_check_root_node_problems":
            f["C_checks"] += 1
            if check_scope(inp, r) == "node":
                f["C_root_checks"] += 1
                batch = u.get("_mid") or u["id"]
                if last in CLEAN_VERDICTS:
                    f["C_root_after_clean_model"] += 1
                    after_clean.add(batch)
                elif last == "problem_summary":
                    column = after_summary_column(inp, last_rows, lists_nodes)
                    f[column] += 1
                    (after_sample if column == "C_after_node_sample" else after_summary).add(batch)
                if inp.get("autoApplyQuickFixes"):
                    last = None
            else:
                f["C_model_checks"] += 1
                last = check_verdict(r)
                last_rows, lists_nodes = per_root_rows(r)
            if "perRoot" in inp and inp["perRoot"]:
                f["C_perRoot"] += 1
        elif n.startswith("mps_mcp") and n not in READ_ONLY:
            last = None
        if n in ("Read",) and "/skills/" in inp.get("file_path", ""):
            f["D_skill_reads"] += 1
        if n == "Bash":
            cmd = inp.get("command", "")
            if "/skills/" in cmd and re.search(r'\b(cat|sed|head|tail|grep|awk)\b', cmd) \
                    and ".py" not in cmd.split("|")[0]:
                f["D_skill_bash_fetch"] += 1
            if ADHOC_PYTHON.search(cmd):
                f["Bp_adhoc_python"] += 1
            if re.search(r"skills/[^ ]+/scripts/[^ ]+\.py", cmd):
                f["Bp_shipped_script"] += 1
            if re.search(r"(find|grep -r|rg)\s+/(\s|Users/vaclav/work)", cmd) or "/work/MPS/myMPS" in cmd:
                f["X_outside_project"] += 1
        if n in ("mps_mcp_insert_root_node_from_json", "mps_mcp_update_node", "mps_mcp_update_root_node_from_json"):
            f["B_inserts"] += 1
            f["B_resp_bytes"] += len(r)
        if n == "mps_mcp_print_node" and rule_print(inp, r):
            f["T_rule_prints"] += 1
        if n == "mps_mcp_print_node" and builder_print(inp, r):
            f["DF_builder_prints"] += 1
        if n == "mps_mcp_run_console_command":
            f["DF_console_runs"] += 1
        operation = str(inp.get("operation") or "").strip().upper()
        if n == "mps_mcp_query_dataflow":
            f["DF_queries"] += 1
            if operation == "PRINT_PROGRAM":
                f["DF_program_prints"] += 1
            elif operation in ("REACHING_WRITES", "REACHING_READS"):
                f["DF_reaching_queries"] += 1
        if n == "mps_mcp_query_types" or (n == "mps_mcp_query_nodes" and operation in NODE_TYPE_QUERIES):
            f["T_type_queries"] += 1
            if not made:
                f["T_type_queries_before_make"] += 1
        if n == "mps_mcp_alter_nodes" and operation == "MAKE":
            f["M_makes"] += 1
            made = made or not failed(r, err)
            if is_true(params(inp).get("saveTransientModels")) and not failed(r, err):
                f["M_makes_save_transient"] += 1
        elif n in GENERATOR_WRITES and names_generator_model(inp) and not failed(r, err):
            generator_written = True
        if n == "mps_mcp_generation" and operation in GENERATION_COLUMNS:
            f[GENERATION_COLUMNS[operation]] += 1
            if operation == "TRACE":
                if str(params(inp).get("direction") or "").strip().upper() == "BACKWARD":
                    f["GN_trace_backward"] += 1
                if trace_found(r, err):
                    traced = True
                    if not generator_written:
                        f["GN_trace_before_fix"] += 1
        if n in TRANSIENT_READS and transient_read(inp):
            f["GN_transient_reads"] += 1
        if n == "mps_mcp_print_node" and names_generator_model(inp):
            f["GN_template_prints"] += 1
            if not traced:
                f["GN_template_prints_before_trace"] += 1
        if n == "mps_mcp_reload_all":
            f["M_reload_all"] += 1
        if n == "execute_run_configuration":
            f["ET_test_runs"] += 1
        if n == "mps_mcp_create_run_configuration":
            f["ET_run_configs"] += 1
        if n == "Write" and isinstance(inp.get("file_path"), str):
            written_files[inp["file_path"]] = str(inp.get("content") or "")
        written = node_write_text(n, inp, written_files)
        if written is not None:
            if IDE_SERVICE.search(written):
                f["ET_ide_service_writes"] += 1
            if not failed(r, err):
                if PLATFORM_ACTION_ID.search(written):
                    f["ET_platform_id_writes"] += 1
                if "IsActionApplicableExpression" in written:
                    f["ET_applicability_writes"] += 1
                if GENERATOR_TEST.search(written):
                    f["GT_generator_test_writes"] += 1
                if MATCH_OPTIONS.search(written):
                    f["GT_match_options_writes"] += 1
                if GENPLAN_WRITE.search(written):
                    f["GT_plan_writes"] += 1
            if NODES_TEST_ROUTE.search(written):
                f["GT_nodes_test_writes"] += 1
        if n == "mps_mcp_parse_java_and_insert" and not failed(r, err):
            target = str((params(inp).get("insert") or {}).get("modelRef") or "")
            mode = str((params(inp).get("insert") or {}).get("mode") or "").lower()
            if target and mode != "console" and "@tests" not in target:
                f["GT_expected_parser_inserts"] += 1
        if n == "mps_mcp_update_model" and not failed(r, err) and \
                str(inp.get("operation") or "").strip().upper() == "SET_DO_NOT_GENERATE":
            f["GT_do_not_generate_calls"] += 1
        if do_not_generate_workaround(n, inp):
            f["GT_do_not_generate_workarounds"] += 1
        if runtime_source_read(n, inp):
            f["ET_runtime_source_reads"] += 1
        if runtime_source_read(n, inp, GENTEST_RUNTIME_SOURCE):
            f["GT_runtime_source_reads"] += 1
        if runtime_source_read(n, inp, KITCHEN_SOURCE):
            f["GT_kitchen_source_reads"] += 1
        ok_call = not failed(r, err)
        if n == "mps_mcp_create_model" and ok_call and GENPLAN_MODEL.search(str(inp.get("modelName") or "")):
            f["GP_genplan_models"] += 1
        if written is not None and ok_call and PARAM_EQUALS.search(written):
            f["GP_param_equals_writes"] += 1
        if n == "mps_mcp_update_module" and ok_call and operation == "SET_GENERATION_PLAN":
            f["GP_set_plan_calls"] += 1
        if n == "mps_mcp_module_dependency" and ok_call and '"devkitCollection"' in r:
            f["GP_devkit_export_calls"] += 1
        if n == "mps_mcp_model_used_language" and ok_call and str(inp.get("kind") or "").lower() == "devkit" and \
                (inp.get("operation") is None or operation == "ADD"):
            f["GP_devkit_used_calls"] += 1
        if n == "mps_mcp_update_module_facet" and str(inp.get("facetType") or "").strip() == "generator":
            f["GP_plan_facet_writes"] += 1
        if attach_workaround(n, inp):
            f["GP_attach_workarounds"] += 1
        if descriptor_read(n, inp):
            f["GP_descriptor_reads"] += 1
        if ok_call and (n == "mps_mcp_update_node" or (n == "mps_mcp_alter_nodes" and operation != "MAKE")) and \
                GENPLAN_MODEL.search(json.dumps(inp) + json.dumps(params(inp))):
            f["GP_plan_edits"] += 1
        if ok_call and n in ROOT_INSERTS and GENPLAN_MODEL.search(str(inp.get("modelReference") or "")):
            blueprint = inp.get("json")
            if isinstance(blueprint, str) and blueprint.strip().startswith("/"):
                blueprint = read_blueprint_file(blueprint.strip(), written_files)
            elif not isinstance(blueprint, str):
                blueprint = json.dumps(blueprint)
            before = plan_roots
            plan_roots += plan_roots_inserted(blueprint)
            f["GP_plan_root_reinserts"] += max(0, plan_roots - max(before, 4))
        if n == "mps_mcp_update_root_node_from_json" and ok_call and GENPLAN_MODEL.search(json.dumps(inp)):
            f["GP_plan_root_reinserts"] += 1
        if n == "mps_mcp_generation" and operation == "PLAN" and \
                str(params(inp).get("detail") or "").strip().lower() == "steps":
            f["GP_plan_steps_detail"] += 1
        if n == "mps_mcp_alter_nodes" and operation == "MAKE" and ok_call and is_true(params(inp).get("rebuild")):
            f["GP_rebuild_makes"] += 1
        if n in PARAM_MODEL_READS and PARAM_MODEL.search(json.dumps(inp) + json.dumps(params(inp))):
            f["GP_param_model_reads"] += 1
        migration_columns(f, n, inp, r, err, operation, written, written_files, roles, scenario)
        accepted = not failed(r, err) and not is_true(inp.get("dryRun")) and not is_true(params(inp).get("dryRun"))
        if n == "mps_mcp_insert_console_command_from_json" and accepted:
            command = inp.get("json")
            if isinstance(command, str) and command.strip().startswith("/"):
                command = read_blueprint_file(command.strip(), written_files)
            console_text = json.dumps(command) if not isinstance(command, str) else command
        if n == "mps_mcp_recall_console_command" and accepted:
            console_text = ""  # a history command: its text is not in the call, so the run is not counted as writing
        if n == "mps_mcp_parse_java_and_insert" and accepted and \
                str((params(inp).get("insert") or {}).get("mode") or "").lower() == "console":
            console_text = "code:" + str(params(inp).get("code") or "")
        if n == "mps_mcp_run_console_command" and not is_true(inp.get("dryRun")):
            f["MG_console_runs"] += 1
            code = console_text.startswith("code:")
            if (CONSOLE_CODE_WRITE if code else CONSOLE_WRITE).search(console_text[5:] if code else console_text):
                f["MG_console_write_cmds"] += 1
        structure_write = not failed(r, err) and (n == "mps_mcp_alter_structure" or (
            n in ("mps_mcp_apply_intention", "mps_mcp_update_node", "mps_mcp_update_root_node_from_json")
            and STRUCTURE_MODEL.search(json.dumps(inp))))
        # a whole-project dump is every worker's first step, so only a search for a build script counts
        if not structure_touched and not structure_write and (n.startswith("mps_mcp") or n in ("Grep", "Bash", "Glob")) \
                and PUBLICATION_SIGN.search(json.dumps(inp) + json.dumps(params(inp))):
            f["MG_publication_probe"] += 1
        structure_touched = structure_touched or structure_write
        if n == "mps_mcp_get_concept_details":
            gcd.append(i)
        if failed(r, err):
            f["G_errors"] += 1
    # discovery refinement: get_concept_details within 2 steps of the previous one
    f["F_gcd_calls"] = len(gcd)
    f["F_gcd_refine"] = sum(1 for a, b in zip(gcd, gcd[1:]) if b - a <= 2)
    f["tool_uses"] = len(uses)
    f["C_root_after_clean_model_batches"] = len(after_clean)
    f["C_after_summary_batches"] = len(after_summary)
    f["C_after_node_sample_batches"] = len(after_sample)
    return f


def migration_columns(f, n, inp, r, err, operation, written, written_files, roles, scenario):
    """The MG_* counters of one call (all but the console and publication-probe ones, which need order)."""
    ok_call = not failed(r, err)
    p = params(inp)
    if n == "mps_mcp_apply_intention" and ok_call and str(inp.get("intentionId") or "").endswith("AddDeprecatedAnnotation_Intention"):
        f["MG_deprecate_calls"] += 1
    if written is not None:
        if ok_call:
            if DEPRECATED_ANNOTATION.search(written):
                f["MG_deprecate_calls"] += 1
            if SUBSTITUTE_MENU.search(written) and "MenuTypeDefault" in written:
                f["MG_substitute_menu_writes"] += 1
            for column, pattern in MOVE_PARTS.items():
                f[column] += len(pattern.findall(_once(n, inp, written)))
            if CHECK_METHOD.search(written):
                f["MG_check_method_writes"] += 1
            if "MigrateManually" in written:
                f["MG_migrate_manually_writes"] += 1
            if SET_ID.search(written):
                f["MG_set_id_writes"] += 1
            if virtual_package_write(n, inp, written):
                f["MG_virtual_package_writes"] += 1
            if n != "mps_mcp_insert_root_node_from_json" and SANDBOX_NODE.search(json.dumps(inp) + json.dumps(p)):
                f["MG_sandbox_node_writes"] += 1
        if "SubstituteMenu_Default" in written:
            f["MG_substitute_menu_legacy"] += 1
    if ok_call and n in ROOT_INSERTS:
        if n == "mps_mcp_create_root_node":
            concept = str(inp.get("conceptReference") or inp.get("concept") or "")
            f["MG_pure_scripts"] += 1 if PURE_SCRIPT.search(concept) else 0
            f["MG_class_scripts"] += 1 if CLASS_SCRIPT.search(concept) else 0
        else:
            blueprint = inp.get("json")
            if isinstance(blueprint, str) and blueprint.strip().startswith("/"):
                blueprint = read_blueprint_file(blueprint.strip(), written_files)
            elif not isinstance(blueprint, str):
                blueprint = json.dumps(blueprint)
            f["MG_pure_scripts"] += roots_of_concept(blueprint, PURE_SCRIPT)
            f["MG_class_scripts"] += roots_of_concept(blueprint, CLASS_SCRIPT)
    if n == "mps_mcp_update_root_node_from_json" and operation == "DELETE" and STRUCTURE_NODE.search(str(inp.get("nodeReference") or "")):
        f["MG_structure_deletes"] += 1
    if n == "mps_mcp_update_node" and operation == "SET" and str(inp.get("kind") or "").upper() == "CHILD" and \
            inp.get("childJson") is None and not is_true(inp.get("dryRun")) and \
            STRUCTURE_NODE.search(str(inp.get("childNodeRef") or "")):
        f["MG_structure_deletes"] += 1
    if n == "mps_mcp_alter_structure":
        structure_call(f, operation, p, ok_call, roles, scenario)
        if ok_call and operation == "CREATE_CONCEPTS" and VIRTUAL_PACKAGE.search(json.dumps(inp)):
            f["MG_virtual_package_writes"] += 1
    if n == "mps_mcp_create_model" and ok_call and str(inp.get("modelName") or "").endswith(".migration"):
        f["MG_migration_models"] += 1
    if n == "mps_mcp_update_module" and operation == "SYNC_VERSION":
        f["MG_sync_version"] += 1
    if re.search(r'"runtimeStale"\s*:\s*true', r or ""):
        f["MG_runtime_stale_hits"] += 1
    if n == "mps_mcp_run_migrations":
        if operation == "APPLY":
            f["MG_run_apply"] += 1
            if "FINISHED_WITH_ERRORS" in (r or ""):
                f["MG_apply_with_errors"] += 1
        elif operation in ("", "CHECK"):
            f["MG_run_check"] += 1
    if n == "mps_mcp_query_nodes" and operation == "FIND_INSTANCES":
        f["MG_find_instances"] += 1
    if (n in MG_READS or (n == "mps_mcp_query_nodes" and operation != "FIND_INSTANCES")) and \
            MIGRATION_MODELS.search(json.dumps(inp) + json.dumps(p)):
        f["MG_mps_migration_dumps"] += 1


def virtual_package_write(n, inp, written):
    """Whether an accepted write sets a virtualPackage on a structure-model node: a SET PROPERTY triplet, a child or
    root blueprint aimed at a .structure model (CREATE_CONCEPTS is counted by the caller)."""
    if n == "mps_mcp_update_node" and str(inp.get("kind") or "").upper() == "PROPERTY":
        return any(isinstance(t, list) and len(t) == 3 and t[1] == "virtualPackage" and STRUCTURE_NODE.search(str(t[0]))
                   for t in inp.get("properties") or [])
    if not VIRTUAL_PACKAGE.search(written):
        return False
    target = " ".join(str(inp.get(k) or "") for k in ("nodeReference", "childNodeRef", "modelReference"))
    return bool(STRUCTURE_MODEL.search(target))


def _once(n, inp, written):
    """`written` without the parsed copy of `parameters` that node_write_text appends after the input."""
    if "parameters" not in inp:
        return written
    head = len(json.dumps(inp))
    return written[:head] + written[head + len(json.dumps(params(inp))):]


def structure_call(f, operation, p, ok_call, roles, scenario):
    """MG_old_renames, MG_structure_deletes and MG_tighten_in_place of one alter_structure call."""
    concept = short_concept(p.get("conceptRef"))
    if operation.startswith("RENAME_CONCEPT_"):
        old, new = (p.get("oldName"), p.get("newName")) if operation.endswith("PROPERTY") else (p.get("oldRole"), p.get("newRole"))
        if ok_call:
            if str(new or "").endswith("_old"):
                f["MG_old_renames"] += 1
            if (concept, old) in roles:
                roles[(concept, new)] = roles.pop((concept, old))
        return
    if operation == "UPDATE_CONCEPT_PROPERTY":
        if not str(p.get("dataType") or "").strip():
            f["MG_structure_deletes"] += 1
        return
    if operation not in ("UPDATE_CONCEPT_CHILD", "UPDATE_CONCEPT_REFERENCE"):
        return
    role = p.get("role")
    if not str(p.get("targetConcept") or "").strip():
        f["MG_structure_deletes"] += 1
        if ok_call:
            roles.pop((concept, role), None)
        return
    if not ok_call:
        return
    fixture = roles.get((concept, role))
    if fixture is None:
        roles.setdefault((concept, role), None)
        return
    multiple = is_true(p.get("multiple")) if operation == "UPDATE_CONCEPT_CHILD" else False
    optional = p.get("optional") is None or is_true(p.get("optional"))
    if stricter(FIXTURE_ROLES[scenario][fixture], multiple, optional):
        f["MG_tighten_in_place"] += 1


def rows(dirs):
    """(round, run id, counters) for every non-SMOKE worker transcript, directories in order."""
    out = []
    for p in dirs:
        for w in sorted(glob.glob(glob.escape(p) + "/*-worker.jsonl")):
            rid = os.path.basename(w)[:-len("-worker.jsonl")]
            if rid.startswith("SMOKE"):
                continue
            out.append((os.path.basename(os.path.normpath(p)), rid, fam(w)))
    return out


def tsv(dirs):
    lines = ["round\trun\t" + "\t".join(KEYS)]
    for rd, rid, f in rows(dirs):
        lines.append(rd + "\t" + rid + "\t" + "\t".join(str(f.get(k, 0)) for k in KEYS))
    return "\n".join(lines) + "\n"


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("runs", nargs="+", metavar="RUNS_DIR", help="a runs/ directory")
    ap.add_argument("--out", metavar="FILE", help="write the TSV here (default: stdout)")
    args = ap.parse_args(argv)
    text = tsv(args.runs)
    if args.out:
        with open(args.out, "w") as fh:
            fh.write(text)
    else:
        sys.stdout.write(text)
    return 0


if __name__ == "__main__":
    sys.exit(main())
