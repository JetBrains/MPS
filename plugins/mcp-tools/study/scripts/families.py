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
        "GT_expected_parser_inserts"]
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
    made = False
    generator_written = traced = False
    written_files = {}
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
