# Inserting console code with `mps_mcp_insert_console_command_from_json`

Use this when the user asks you to **put code into the MPS Console**. The tool builds a command from a JSON blueprint and drops it into the Console tool window's input editor **as an editable, unexecuted command** — the user reviews, edits, and runs it (Ctrl+Enter). After a successful insert the Console tool window is focused and the inserted node selected. Requires the MPS Console plugin to be enabled.

The blueprint uses the **same node format** as `mps_mcp_insert_root_node_from_json` — see `mps-node-editing`. The command's languages and model imports are added to the console model automatically. Inline JSON up to 4 KB, or an absolute path to a file in the system temp directory — `$TMPDIR` on macOS/Linux, `%TEMP%` on Windows; `/tmp` is also accepted on macOS. A leading `$TMPDIR` or `%TEMP%` is expanded; e.g. `f="$TMPDIR/command-$$.json"`.

## The two accepted shapes

1. **A single console `Command` node** — inserted as-is. This is a `BLExpression` (wrapping an expression), a `BLCommand` (wrapping a `StatementList`), or an `InterpretedCommand` (`#reloadClasses`, `#stat`, `#showGenPlan`, `#showBrokenRefs`, `?`).
2. **One or more BaseLanguage `Statement`s** — a single statement object, or a JSON array of statements. These are wrapped into one `BLCommand` (a `{ … }` block whose body is a `StatementList`) so multiple statements run as one command.

### The gotcha: expressions are not statements and not commands

The query commands (`#nodes`, `#instances`, …), the IDE commands `#make` / `#clean` / `#removeGenSources` / `#show` / `#callAction`, and the `#print*` printers are baseLanguage **`Expression`s**. They are neither `Command`s nor `Statement`s, so passing one as the top-level object fails. The tool tries to wrap a lone non-command object as a *Statement*, and an `Expression` is not a `Statement`:

```
Concept assignability error … Actual concept: 'Make' … Expected concept(s): 'Statement' … Role: 'statement'
```

**Fix:** wrap the expression in a `BLExpression` (`expression` role), or in an `ExpressionStatement` if you are sending a statement array.

## Validated working blueprints

All of the following pass `dryRun` and insert cleanly against a live MPS.

**A query expression — `#models` (all editable project models):**
```json
{"concept":"jetbrains.mps.console.base.structure.BLExpression",
 "children":[{"role":"expression","nodes":[
   {"concept":"jetbrains.mps.lang.smodel.query.structure.ModelsExpression"}]}]}
```

**`#instances(ClassConcept)`** — note `RefConcept_Reference` with the `conceptDeclaration` reference targeting the concept by qualified name:
```json
{"concept":"jetbrains.mps.console.base.structure.BLExpression",
 "children":[{"role":"expression","nodes":[
   {"concept":"jetbrains.mps.lang.smodel.query.structure.InstancesExpression",
    "children":[{"role":"conceptArg","nodes":[
      {"concept":"jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
       "references":[{"role":"conceptDeclaration",
                     "target":"jetbrains.mps.baseLanguage.structure.ClassConcept"}]}]}]}]}]}
```

**A literal value — `BLExpression` + `StringLiteral`** (prints the string):
```json
{"concept":"jetbrains.mps.console.base.structure.BLExpression",
 "children":[{"role":"expression","nodes":[
   {"concept":"jetbrains.mps.baseLanguage.structure.StringLiteral",
    "properties":[{"name":"value","value":"hello from MCP"}]}]}]}
```

**An interpreted command — `#reloadClasses`** (a `Command`, so it goes in bare):
```json
{"concept":"jetbrains.mps.console.internalCommands.structure.ReloadClassesCommand"}
```

**A statement array → wrapped into one `{ … }` `BLCommand`.** Here a single expression statement holding `#modules`:
```json
[{"concept":"jetbrains.mps.baseLanguage.structure.ExpressionStatement",
  "children":[{"role":"expression","nodes":[
    {"concept":"jetbrains.mps.lang.smodel.query.structure.ModulesExpression"}]}]}]
```

**`#make` wrapped in `BLExpression`** (recall `#make` is an expression — bare fails):
```json
{"concept":"jetbrains.mps.console.base.structure.BLExpression",
 "children":[{"role":"expression","nodes":[
   {"concept":"jetbrains.mps.console.ideCommands.structure.Make"}]}]}
```

## A query with closures: `.where(…)` and `.select(…)`

The Console's typical job is a query that filters and maps with closures. As a raw blueprint, `#instances(ConceptDeclaration).where({~it => it.name.endsWith("Literal")}).select({~it => it.conceptAlias})` is about 3.8 KB of JSON with brackets nested 39 deep, too deep to write or edit by hand without miscounting brackets. Generate it instead: the script below writes the verified blueprint. Change only the `CUSTOMIZE` constants and the two closure bodies, run it, and pass the printed path as `json`.

```bash
python3 - <<'PY'
import json, os
# CUSTOMIZE: the concept to query (FQN), the property the filter reads, the property the result selects.
# A property target is the `sourceNode` that mps_mcp_get_concept_details lists for the property.
CONCEPT = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"
FILTER_PROP = "r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/1169194664001"    # name
SELECT_PROP = "r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)/5092175715804935370"  # conceptAlias
# CUSTOMIZE: a JDK String method, as ~String.<method>%28<parameter type FQNs, comma-separated>%29 (%28%29 when it takes none).
STRING_METHOD = "6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~String.endsWith%28java.lang.String%29"

BL, COLL, CL = "jetbrains.mps.baseLanguage.structure.", "jetbrains.mps.baseLanguage.collections.structure.", "jetbrains.mps.baseLanguage.closures.structure."
def n(concept, props=None, children=None, refs=None):
    d = {"concept": concept}
    if props: d["properties"] = [{"name": k, "value": v} for k, v in props.items()]
    if refs: d["references"] = [{"role": r, "target": t} for r, t in refs.items()]
    if children: d["children"] = [{"role": r, "nodes": ns} for r, ns in children]
    return d
def dot(operand, operation): return n(BL + "DotExpression", children=[("operand", [operand]), ("operation", [operation])])
def it(): return n(BL + "VariableReference", refs={"variableDeclaration": "it"})
def prop(expr, target): return dot(expr, n("jetbrains.mps.lang.smodel.structure.SPropertyAccess", refs={"property": target}))
def call(expr, method, *args): return dot(expr, n(BL + "InstanceMethodCallOperation", refs={"baseMethodDeclaration": method}, children=[("actualArgument", list(args))] if args else None))
def closure(body):  # {~it => <body>; }
    param = n(CL + "InferredClosureParameterDeclaration", {"name": "it"}, [("type", [n(BL + "UndefinedType")])])
    stmt = n(BL + "ExpressionStatement", children=[("expression", [body])])
    return n(CL + "ClosureLiteral", children=[("parameter", [param]), ("body", [n(BL + "StatementList", children=[("statement", [stmt])])])])

query = n("jetbrains.mps.lang.smodel.query.structure.InstancesExpression", children=[("conceptArg", [
    n("jetbrains.mps.lang.smodel.structure.RefConcept_Reference", refs={"conceptDeclaration": CONCEPT})])])
# CUSTOMIZE: the filter body (any boolean expression over it()) and the select body.
query = dot(query, n(COLL + "WhereOperation", children=[("closure", [closure(
    call(prop(it(), FILTER_PROP), STRING_METHOD, n(BL + "StringLiteral", {"value": "Literal"})))])]))
query = dot(query, n(COLL + "SelectOperation", children=[("closure", [closure(prop(it(), SELECT_PROP))])]))

path = os.path.join(os.environ.get("TMPDIR", "/tmp"), "console-query-%d.json" % os.getpid())
json.dump(n("jetbrains.mps.console.base.structure.BLExpression", children=[("expression", [query])]), open(path, "w"))
print(path)
PY
```

What to expect, verified against a live MPS:

- **Dry run:** `ok:true` with two warnings of the form `target 'it' did not resolve; production run would create a dynamic reference`, one per closure. They are expected. The real insert binds each `it` to its closure parameter, and `mps_mcp_check_root_node_problems` on the inserted command then reports no problems.
- **The inserted command** prints (`mps_mcp_print_node`, `PLAIN TEXT`) as `#instances(ConceptDeclaration).where({it => it.name.endsWith("Literal"); }).select({it => it.conceptAlias; })`. The editor shows the inferred parameter without its `~`.
- **The response** is one bracketed list of the selected values, with `null` for a node where the property is unset. Read it as `SKILL.md` "Reading a command's output" describes. A long list gets a cut `preview` with `previewComplete:false`.
- **Another chained operation** is one more `query = dot(query, n(<operation concept>, …))` line. `mps-model-manipulation` has the operation concepts and their child roles.

## Concept FQNs you need for blueprints

| Surface | Concept FQN |
|---|---|
| `{` block command | `jetbrains.mps.console.base.structure.BLCommand` (child `body: StatementList`) |
| expression command | `jetbrains.mps.console.base.structure.BLExpression` (child `expression: Expression`) |
| `#print` / `#printNode` / `#printNodeRef` / `#printSequence` / `#printText` | `jetbrains.mps.console.base.structure.PrintExpression` / `PrintNodeExpression` / `PrintNodeReferenceExpression` / `PrintSequenceExpression` / `PrintTextExpression` (child `object: Expression`) |
| `#nodes` / `#references` / `#models` / `#modules` | `jetbrains.mps.lang.smodel.query.structure.NodesExpression` / `ReferencesExpression` / `ModelsExpression` / `ModulesExpression` |
| `#instances` | `jetbrains.mps.lang.smodel.query.structure.InstancesExpression` (child `conceptArg: IRefConceptArg`) |
| concept argument | `jetbrains.mps.lang.smodel.structure.RefConcept_Reference` (ref `conceptDeclaration` → the concept) |
| `#usages` | `jetbrains.mps.lang.smodel.query.structure.UsagesExpression` (child `node: Expression`) |
| scope param wrapper | `jetbrains.mps.lang.smodel.query.structure.QueryParameterList` (child `parameter`) → `QueryParameterScope` (child `value`) / `QueryParameterExact` |
| scopes | `…console.base.structure.ProjectScope` / `ProjectEditableScope`; `…ideCommands.structure.GlobalScope` / `VisibleModulesScope`; `…smodel.query.structure.ModelsScope` / `ModulesScope` / `CustomScope` |
| `#make` / `#clean` / `#removeGenSources` / `#show` | `…console.ideCommands.structure.Make` / `Clean` / `RemoveGenSources` / `ShowExpression` |
| `#stat` / `#showGenPlan` / `#showBrokenRefs` | `…console.ideCommands.structure.StatCommand` / `ShowGenPlan` / `ShowBrokenReferences` |
| `#reloadClasses` | `…console.internalCommands.structure.ReloadClassesCommand` |
| `forEach` (apply closure to each node) | `jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation` (child `closure: Expression`) — use this for headless mutation |
| `refactor` | `…console.scripts.structure.RefactorOperation` (child `closure: Expression`) — ⚠️ pops a modal confirm dialog; stalls `mps_mcp_run_console_command`, see `console-languages.md`. Prefer `forEach` for unattended edits |

## Workflow

1. **Validate first with `dryRun: true`.** It checks the JSON, console availability, and command-concept assignability without inserting anything. Returns `{"dryRun":true,"message":"Dry run successful…"}`.
2. **Insert for real** (omit `dryRun`). Success returns the inserted command's node-info envelope (its node lives in a temporary `ConsoleModel_*` model). The Console window is focused with the node selected.
3. **Tell the user it is not executed** — they run it with Ctrl+Enter. Offer to insert a different command if they want to iterate.
4. **Pass `projectPath`** whenever you know it, to avoid ambiguous-project errors. If the console plugin is disabled, ask the user to enable it.

For a query with closures, start from the generator script in "A query with closures" above. Other smodel/collections expressions that go *inside* these blueprints (e.g. a `.forEach(…)` / `.refactor(…)` chain, or statements in a closure body) are the job of `mps-model-manipulation` and `mps-node-editing`.
