# 10 — BaseLanguage via `parse_java_and_insert`, type queries and dataflow queries

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`. _Produces (cross-part):_ `{{JAVA_CLASS_REF}}` (+ intra-part `{{JAVA_METHOD_REF}}`, the §10.12 context-node refs `{{IMC_REF}}`, `{{SMC_REF}}`, `{{CC_REF}}`, `{{CT_REF}}`, the §10.13–10.22 type-host refs `{{TYPE_HOST_REF}}`, `{{TH_PLUS_REF}}`, `{{TH_L_INIT_REF}}`, `{{TH_O_INIT_REF}}`, `{{TH_B_INIT_REF}}`, `{{TH_S_TYPE_REF}}`, `{{TH_O_TYPE_REF}}`, `{{TH_LIST_FIELD_REF}}`, the §10.24 refs `{{TYPE_ERROR_REF}}`, `{{TE_BAD_FIELD_REF}}`, `{{TE_COMMENT_REF}}`, and the §10.25–10.27 dataflow refs `{{DF_METHOD_REF}}`, `{{DF_BODY_REF}}`, `{{DF_INNER_IF_REF}}`, `{{DF_FEE_ZERO_REF}}`, `{{DF_FEE_READ_REF}}`).

Tool: `mps_mcp_parse_java_and_insert`. Single argument `parameters` (a JSON-encoded string)
with `code`, `featureKind` (`CLASS`/`METHOD`/`FIELD`/`NESTED_CLASS`/`STATEMENTS`/
`EXPRESSION`/`CLASS_CONTENT`), `insert.mode` (`root`/`child`/`replace`/`console`), and
`postProcess`. `CLASS_STUB` is rejected. `dryRun` is **not** supported (unknown key → error).

All `code` snippets here are single-line and contain **no inner double-quotes**, so escaping is
straightforward. Each step shows the decoded `parameters` and the exact escaped `arguments`.

Target model for class insertion: `mcp.test.sandbox.other`. The owning solution
`mcp.test.sandbox` has the `java` facet with `compile=mps`, which part 11 needs.

Steps 10.13–10.24 then ask the typesystem about the parsed BaseLanguage code:
`mps_mcp_query_nodes` `GET_TYPE` / `GET_EXPECTED_TYPE`, every `mps_mcp_query_types` operation
(`IS_SUBTYPE`, `SUPERTYPES`, `COMMON_SUPERTYPE`, `COERCE`, `OPERATION_TYPE`, `EXPLAIN_TYPE`), and
the `rules` / `uncheckedSubtrees` fields of a `mps_mcp_check_root_node_problems` report. The
expected answers follow BaseLanguage's own rules: `int <: long`, `String <: Object`,
`int + long → long`. Part 11 compiles this solution, so the type error and the comment seeded in
10.24 are removed again before the part ends.

Steps 10.25–10.27 seed a third class, `McpLedger`, and ask `mps_mcp_query_dataflow` about it: its
program (`PRINT_PROGRAM`), and which writes reach a read and which reads a write feeds
(`REACHING_WRITES` / `REACHING_READS`), with the default and an explicit `programRoot`. `McpLedger`
is valid, warning-free Java and stays in the model.

---

### Step 10.01 — `featureKind:"CLASS"`, `insert.mode:"root"` `[CAPTURE]`

Decoded `parameters`:
```json
{
  "code": "public class McpRunnable { public static void main(String[] args) { } }",
  "featureKind": "CLASS",
  "insert": { "mode": "root", "modelRef": "mcp.test.sandbox.other" },
  "postProcess": { "importUsedLanguages": true, "resolveReferences": true }
}
```
Send:
```json
{
  "tool": "mps_mcp_parse_java_and_insert",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"public class McpRunnable { public static void main(String[] args) { } }\",\"featureKind\":\"CLASS\",\"insert\":{\"mode\":\"root\",\"modelRef\":\"mcp.test.sandbox.other\"},\"postProcess\":{\"importUsedLanguages\":true,\"resolveReferences\":true}}"
  }
}
```
- Validation: `ok==true`; `data.inserted[0].name=="McpRunnable"`,
  `data.inserted[0].concept=="ClassConcept"`; `data.problems==[]`.
- **Capture** `data.inserted[0].reference` as `{{JAVA_CLASS_REF}}`.

---

### Step 10.02 — `featureKind:"METHOD"`, `insert.mode:"child"` (role `method`) `[CAPTURE]`

Adds an instance method to the class. `child` mode requires `parentRef` + `role`;
`featureKind:"METHOD"` (like `FIELD`/`NESTED_CLASS`/`CLASS_CONTENT`) additionally requires
`contextNodeRef` — gated by the feature kind, independent of insert mode (use the class itself).

Decoded `parameters`:
```json
{
  "code": "public void doStuff() { }",
  "featureKind": "METHOD",
  "contextNodeRef": "{{JAVA_CLASS_REF}}",
  "insert": { "mode": "child", "parentRef": "{{JAVA_CLASS_REF}}", "role": "method" }
}
```
Send:
```json
{
  "tool": "mps_mcp_parse_java_and_insert",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"public void doStuff() { }\",\"featureKind\":\"METHOD\",\"contextNodeRef\":\"{{JAVA_CLASS_REF}}\",\"insert\":{\"mode\":\"child\",\"parentRef\":\"{{JAVA_CLASS_REF}}\",\"role\":\"method\"}}"
  }
}
```
- Validation: `ok==true`; `data.inserted[0]` is an `InstanceMethodDeclaration` named `doStuff`.
- **Capture** `data.inserted[0].reference` as `{{JAVA_METHOD_REF}}`.

---

### Step 10.03 — `featureKind:"FIELD"`, `insert.mode:"child"` (role `field`) `[SUCCESS]`

Decoded `parameters`:
```json
{ "code": "private int counter;", "featureKind": "FIELD",
  "contextNodeRef": "{{JAVA_CLASS_REF}}",
  "insert": { "mode": "child", "parentRef": "{{JAVA_CLASS_REF}}", "role": "field" } }
```
Send:
```json
{ "tool": "mps_mcp_parse_java_and_insert",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"private int counter;\",\"featureKind\":\"FIELD\",\"contextNodeRef\":\"{{JAVA_CLASS_REF}}\",\"insert\":{\"mode\":\"child\",\"parentRef\":\"{{JAVA_CLASS_REF}}\",\"role\":\"field\"}}" } }
```
- Validation: `ok==true`; `data.inserted[0]` is a `FieldDeclaration` named `counter`.

---

### Step 10.04 — `featureKind:"NESTED_CLASS"`, `insert.mode:"child"` (role `staticInnerClassifiers`) `[SUCCESS]`

Decoded `parameters`:
```json
{ "code": "static class Inner { }", "featureKind": "NESTED_CLASS",
  "contextNodeRef": "{{JAVA_CLASS_REF}}",
  "insert": { "mode": "child", "parentRef": "{{JAVA_CLASS_REF}}", "role": "staticInnerClassifiers" } }
```
Send:
```json
{ "tool": "mps_mcp_parse_java_and_insert",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"static class Inner { }\",\"featureKind\":\"NESTED_CLASS\",\"contextNodeRef\":\"{{JAVA_CLASS_REF}}\",\"insert\":{\"mode\":\"child\",\"parentRef\":\"{{JAVA_CLASS_REF}}\",\"role\":\"staticInnerClassifiers\"}}" } }
```
- Validation: `ok==true`; `data.inserted[0]` is a nested `ClassConcept` named `Inner`.

---

### Step 10.05 — `featureKind:"CLASS_CONTENT"`, `insert.mode:"child"` (role `field`) `[SUCCESS]`

`CLASS_CONTENT` parses class-body content; placement is validated against the target role.
Decoded `parameters`:
```json
{ "code": "private String label;", "featureKind": "CLASS_CONTENT",
  "contextNodeRef": "{{JAVA_CLASS_REF}}",
  "insert": { "mode": "child", "parentRef": "{{JAVA_CLASS_REF}}", "role": "field" } }
```
Send:
```json
{ "tool": "mps_mcp_parse_java_and_insert",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"private String label;\",\"featureKind\":\"CLASS_CONTENT\",\"contextNodeRef\":\"{{JAVA_CLASS_REF}}\",\"insert\":{\"mode\":\"child\",\"parentRef\":\"{{JAVA_CLASS_REF}}\",\"role\":\"field\"}}" } }
```
- Validation: `ok==true`; a `FieldDeclaration` named `label` is inserted. (If the parser
  rejects placing the parsed content into `role:"field"`, record the exact error — that is a
  finding about CLASS_CONTENT placement, not necessarily a failure of the scenario.)

---

### Step 10.06 — `featureKind:"STATEMENTS"`, `insert.mode:"console"` `[SUCCESS]`

Console mode wraps statements into a `BLCommand` in the Console input (not executed).
Decoded `parameters`:
```json
{ "code": "int x = 1;", "featureKind": "STATEMENTS", "insert": { "mode": "console" } }
```
Send:
```json
{ "tool": "mps_mcp_parse_java_and_insert",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"int x = 1;\",\"featureKind\":\"STATEMENTS\",\"insert\":{\"mode\":\"console\"}}" } }
```
- Validation: `ok==true`. (Requires the Console plugin; it is available.) Exercises
  `mode:"console"` + `featureKind:"STATEMENTS"`.

---

### Step 10.07 — `featureKind:"EXPRESSION"`, `insert.mode:"console"` `[SUCCESS]`

Console mode wraps the expression into a `BLExpression`.
Decoded `parameters`:
```json
{ "code": "1 + 2", "featureKind": "EXPRESSION", "insert": { "mode": "console" } }
```
Send:
```json
{ "tool": "mps_mcp_parse_java_and_insert",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"1 + 2\",\"featureKind\":\"EXPRESSION\",\"insert\":{\"mode\":\"console\"}}" } }
```
- Validation: `ok==true`. Exercises `featureKind:"EXPRESSION"`. (Leaves a `BLExpression` in the
  console input — that is fine; part 12 re-uses the console.)

---

### Step 10.08 — `insert.mode:"replace"` (replace the `doStuff` method) `[SUCCESS]`

Replace mode requires exactly one top-level parsed node and a `targetRef`.
Decoded `parameters`:
```json
{ "code": "public void doStuffV2() { }", "featureKind": "METHOD",
  "contextNodeRef": "{{JAVA_CLASS_REF}}",
  "insert": { "mode": "replace", "targetRef": "{{JAVA_METHOD_REF}}" } }
```
Send:
```json
{ "tool": "mps_mcp_parse_java_and_insert",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"public void doStuffV2() { }\",\"featureKind\":\"METHOD\",\"contextNodeRef\":\"{{JAVA_CLASS_REF}}\",\"insert\":{\"mode\":\"replace\",\"targetRef\":\"{{JAVA_METHOD_REF}}\"}}" } }
```
- Validation: `ok==true`; the method `doStuff` is replaced by `doStuffV2`. Exercises
  `mode:"replace"`.

---

### Step 10.09 — Invalid: `featureKind:"CLASS_STUB"` `[FAILURE]`

```json
{ "tool": "mps_mcp_parse_java_and_insert",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"public class Stub { }\",\"featureKind\":\"CLASS_STUB\",\"insert\":{\"mode\":\"root\",\"modelRef\":\"mcp.test.sandbox.other\"}}" } }
```
- Validation: `ok==false`; error indicates `CLASS_STUB` is not supported/rejected.

---

### Step 10.10 — Invalid: unsupported `dryRun` key `[FAILURE]`

`parse_java_and_insert` rejects unknown keys (it does **not** support `dryRun`).
```json
{ "tool": "mps_mcp_parse_java_and_insert",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"int y = 2;\",\"featureKind\":\"STATEMENTS\",\"dryRun\":true,\"insert\":{\"mode\":\"console\"}}" } }
```
- Validation: `ok==false`; error names the offending key (`dryRun`).

---

### Step 10.11 — Validate the class subtree `[READ-FILE]`

```json
{ "tool": "mps_mcp_check_root_node_problems",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{JAVA_CLASS_REF}}" } }
```
- Validation: `ok==true`. Likely `data=="no problems found"`; otherwise `data` is the problem
  report (inline, or a temp-file path to read) — record any problems (e.g. an unused field) as
  notes; info/warning-level issues are acceptable and not scenario failures.

---

### Step 10.12 — `GET_ASSIGNABLE_REFERENCES` `kindFilter` coverage (all four values) `[SUCCESS]`

> Intra-step captures: `{{IMC_REF}}` (instance-method call), `{{SMC_REF}}` (static-method
> call), `{{CC_REF}}` (class creator), `{{CT_REF}}` (classifier type).

`kindFilter` (`instanceMethods`/`staticMethods`/`constructors`/`classes`) narrows
`GET_ASSIGNABLE_REFERENCES` candidates by the kind derived from each candidate's concept. It is
meaningful **only** on a BaseLanguage **call** or **type** reference role — `baseMethodDeclaration`
on an `IMethodCall` (instance-method call, static-method call, class creator), or `classifier`
on a `ClassifierType`. (Pointing it at an unrelated role — e.g. the `superclass` *child* role of
a `ClassConcept` — fails at role resolution before `kindFilter` is ever applied, because
`superclass` is a containment of a `ClassifierType`, not a reference of `ClassConcept`.) This
step seeds the four context nodes inside `McpRunnable`, captures them, then exercises each
`kindFilter` value against the role where it is valid.

#### Step 10.12.s1 — Seed the four reference-role contexts in one method `[SUCCESS]`

One instance method whose body holds an instance-method call (`this.doStuffV2()`), a
static-method call (`McpRunnable.main(null)`), a class creator with an explicit constructor
(`new StringBuilder(7)`), and a classifier-typed local (`McpRunnable local`). The class creator
uses a **JDK class with an argument constructor on purpose**: a no-arg `new McpRunnable()`
collapses to a `DefaultClassCreator` (which has a `classifier` reference but **no**
`baseMethodDeclaration`), and `new McpRunnable(0)` against a project class is dropped by the Java
parser — so `new StringBuilder(7)` is the reliable way to obtain a real `ClassCreator`.

Decoded `parameters`:
```json
{
  "code": "public void kindFilterContexts() { this.doStuffV2(); McpRunnable.main(null); StringBuilder sb = new StringBuilder(7); McpRunnable local; }",
  "featureKind": "METHOD",
  "contextNodeRef": "{{JAVA_CLASS_REF}}",
  "insert": { "mode": "child", "parentRef": "{{JAVA_CLASS_REF}}", "role": "method" },
  "postProcess": { "importUsedLanguages": true, "resolveReferences": true }
}
```
Send:
```json
{
  "tool": "mps_mcp_parse_java_and_insert",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"public void kindFilterContexts() { this.doStuffV2(); McpRunnable.main(null); StringBuilder sb = new StringBuilder(7); McpRunnable local; }\",\"featureKind\":\"METHOD\",\"contextNodeRef\":\"{{JAVA_CLASS_REF}}\",\"insert\":{\"mode\":\"child\",\"parentRef\":\"{{JAVA_CLASS_REF}}\",\"role\":\"method\"},\"postProcess\":{\"importUsedLanguages\":true,\"resolveReferences\":true}}"
  }
}
```
- Validation: `ok==true`; `data.inserted[0]` is an `InstanceMethodDeclaration` named
  `kindFilterContexts`. Type-system **warnings** (unused variable; redundant initializer) are
  expected and acceptable — only the node structure matters, not the type-check.

#### Step 10.12.s2 — Capture the four context nodes `[CAPTURE]`

Four `query_nodes FIND_INSTANCES` calls, `scope:"roots"`, `roots:["{{JAVA_CLASS_REF}}"]`, varying
only `conceptRef`:

- `jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation` → exactly one result (the `this.doStuffV2()` call); **capture** `data[0].reference` as `{{IMC_REF}}`.
- `jetbrains.mps.baseLanguage.structure.StaticMethodCall` → exactly one (the `McpRunnable.main(null)` call); **capture** `data[0].reference` as `{{SMC_REF}}`.
- `jetbrains.mps.baseLanguage.structure.ClassCreator` → exactly one (the `StringBuilder` creator; the `Default`/no-arg creators are a different concept and do not match); **capture** `data[0].reference` as `{{CC_REF}}`.
- `jetbrains.mps.baseLanguage.structure.ClassifierType` → **several** (the `String` field/parameter types, the `StringBuilder` local type, the `McpRunnable` local type); **capture** the entry whose `name == "McpRunnable"` — its `reference` is `{{CT_REF}}`.

Example escaped call (the `ClassCreator` capture; the others differ only in `conceptRef`):
```json
{ "tool": "mps_mcp_query_nodes",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "FIND_INSTANCES",
    "parameters": "{\"conceptRef\":\"jetbrains.mps.baseLanguage.structure.ClassCreator\",\"scope\":\"roots\",\"roots\":[\"{{JAVA_CLASS_REF}}\"]}" } }
```

#### Step 10.12.s3 — Exercise each `kindFilter` value where it is valid `[SUCCESS]`

Four `query_structure GET_ASSIGNABLE_REFERENCES` calls, `mode:"completion"`. For **each**:
`ok==true`, `data` is **non-empty**, and **every** `data[i].kind` equals the requested
`kindFilter` value. Decoded `parameters`:

- 10.12.s3a `instanceMethods` — `{"contextNode":"{{IMC_REF}}","referenceRole":"baseMethodDeclaration","mode":"completion","kindFilter":["instanceMethods"]}` → includes `doStuffV2` (plus the sibling instance methods and inherited `Object` methods); every `kind=="instanceMethods"`.
- 10.12.s3b `staticMethods` — `{"contextNode":"{{SMC_REF}}","referenceRole":"baseMethodDeclaration","mode":"completion","kindFilter":["staticMethods"]}` → includes `main`; every `kind=="staticMethods"`.
- 10.12.s3c `constructors` — `{"contextNode":"{{CC_REF}}","referenceRole":"baseMethodDeclaration","mode":"completion","kindFilter":["constructors"]}` → includes the `StringBuilder` constructors (the candidate set spans all in-scope constructors and may be large / `meta.truncated==true` — that is fine); every `kind=="constructors"`.
- 10.12.s3d `classes` — `{"contextNode":"{{CT_REF}}","referenceRole":"classifier","mode":"completion","kindFilter":["classes"]}` → includes `McpRunnable`; every `kind=="classes"`.

Example escaped call (`instanceMethods`; the others differ only in the `parameters` string):
```json
{ "tool": "mps_mcp_query_structure",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "GET_ASSIGNABLE_REFERENCES",
    "parameters": "{\"contextNode\":\"{{IMC_REF}}\",\"referenceRole\":\"baseMethodDeclaration\",\"mode\":\"completion\",\"kindFilter\":[\"instanceMethods\"]}" } }
```

> Why these roles: `kindFilter` filters on the candidate kind derived from each candidate's
> concept (`ConstructorDeclaration → constructors`, `StaticMethodDeclaration → staticMethods`,
> `InstanceMethodDeclaration → instanceMethods`, `Classifier → classes`). It therefore only
> bites on a role whose scope yields those member/type candidates: `baseMethodDeclaration` on an
> `IMethodCall`, or `classifier` on a `ClassifierType`. On a DSL reference role (e.g. the State
> `target` role exercised in 08.23/08.24) every candidate is a plain node, so `kindFilter` would
> filter the whole set out.

---

**Type queries (Steps 10.13–10.23).**

`mps_mcp_query_types` takes `operation` plus `parameters`, like `query_nodes`. This part sends
`parameters` as a JSON-encoded string; Step 10.17d sends it once as a real JSON object, which the
tool also accepts. Each **type operand** is an object with exactly one of `nodeReference` (the
type *of* that node), `typeNodeReference` (a stored type node used as the type itself),
`typeConceptRef` (a fresh instance of a parameterless type concept such as `IntegerType`), or
`blueprint`. Every type in an answer is printed as
`{concept, conceptReference, presentation, hasTypeVariables?, blueprint}` and carries **no**
node `reference` — a computed type is a free-floating copy.

Concept FQNs used below: `jetbrains.mps.baseLanguage.structure.IntegerType` (int),
`jetbrains.mps.baseLanguage.structure.LongType` (long),
`jetbrains.mps.baseLanguage.structure.ClassifierType`,
`jetbrains.mps.baseLanguage.structure.PlusExpression`.

### Step 10.13 — Seed the type-host class `McpTypeHost` `[CAPTURE]`

A second class root whose field initializers are the subjects of the type queries. The class
and its fields are `public` so that they raise no unused-class or "Field is never used" warning
(the never-used check applies only to package-private and private fields), and the class is
valid Java, so part 11's make still compiles the solution.

Decoded `parameters`:
```json
{
  "code": "public class McpTypeHost { public int i = 1 + 2; public long l = 2L; public String s = null; public Object o = s; public java.util.List<String> list = null; public byte b = 1; }",
  "featureKind": "CLASS",
  "insert": { "mode": "root", "modelRef": "mcp.test.sandbox.other" },
  "postProcess": { "importUsedLanguages": true, "resolveReferences": true }
}
```
Send:
```json
{
  "tool": "mps_mcp_parse_java_and_insert",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"public class McpTypeHost { public int i = 1 + 2; public long l = 2L; public String s = null; public Object o = s; public java.util.List<String> list = null; public byte b = 1; }\",\"featureKind\":\"CLASS\",\"insert\":{\"mode\":\"root\",\"modelRef\":\"mcp.test.sandbox.other\"},\"postProcess\":{\"importUsedLanguages\":true,\"resolveReferences\":true}}"
  }
}
```
- Validation: `ok==true`; `data.inserted[0].name=="McpTypeHost"`,
  `data.inserted[0].concept=="ClassConcept"`; `data.problems==[]`.
- **Capture** `data.inserted[0].reference` as `{{TYPE_HOST_REF}}`.

---

### Step 10.14 — Capture the operand nodes of `McpTypeHost` `[READ-FILE]` `[CAPTURE]`

```json
{
  "tool": "mps_mcp_print_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{TYPE_HOST_REF}}", "deep": true }
}
```
- Validation: `ok==true`; `data` is the class tree inline, or a temp-file path to read. The
  class has six `FieldDeclaration` children named `i`, `l`, `s`, `o`, `list`, `b`, each with a
  `type` child and an `initializer` child. The initializer of `i` is a `PlusExpression`.
- **Capture**:
  - the `initializer` of `i` (the `PlusExpression` `1 + 2`) as `{{TH_PLUS_REF}}`;
  - the `initializer` of `l` (the `2L` literal) as `{{TH_L_INIT_REF}}`;
  - the `initializer` of `o` (the reference to `s`) as `{{TH_O_INIT_REF}}`;
  - the `initializer` of `b` (the literal `1`) as `{{TH_B_INIT_REF}}`;
  - the `type` child of `s` (a `ClassifierType` for `String`) as `{{TH_S_TYPE_REF}}`;
  - the `type` child of `o` (a `ClassifierType` for `Object`) as `{{TH_O_TYPE_REF}}`;
  - the `FieldDeclaration` `list` itself as `{{TH_LIST_FIELD_REF}}`.

---

### Step 10.15 — `query_nodes GET_TYPE` `[SUCCESS]`

Four calls, `operation:"GET_TYPE"`. 10.15a–c send only `nodeReference` and answer
`details.scope=="root"` with no `warnings` (the root's whole check typed the node):

- 10.15a `{"nodeReference":"{{TH_PLUS_REF}}"}` → `data.presentation=="int"`,
  `data.concept=="IntegerType"`; `data.blueprint` is present; no key named `reference` appears
  anywhere in `data`.
- 10.15b `{"nodeReference":"{{TH_O_INIT_REF}}"}` → `data.presentation=="String"` (the reference
  to `s` has `s`'s declared type, not the `Object` the slot requires — that is 10.16b).
- 10.15c `{"nodeReference":"{{TH_S_TYPE_REF}}"}` → `ok==true`, `data==null`. A stored type node
  has no type of its own (BaseLanguage has no inference rule for `Type`); `null` is the
  documented "no type" answer, not an error.
- 10.15d `{"nodeReference":"{{TH_PLUS_REF}}","maxRootNodes":1}` → `data.presentation=="int"`,
  `details.scope=="node"`, and one `warnings` entry naming `maxRootNodes`: the root is over the
  cap, so the one-node computation answered. `maxRootNodes:0` is `INVALID_REQUEST`.

Example escaped call (10.15a):
```json
{ "tool": "mps_mcp_query_nodes",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "GET_TYPE",
    "parameters": "{\"nodeReference\":\"{{TH_PLUS_REF}}\"}" } }
```

---

### Step 10.16 — `query_nodes GET_EXPECTED_TYPE` `[SUCCESS]`

The type the node's context requires of it. Four calls, `operation:"GET_EXPECTED_TYPE"`:

- 10.16a `{"nodeReference":"{{TH_L_INIT_REF}}"}` → `data.presentation=="long"`: in
  `long l = 2L` the declaration bounds its initializer by the declared type.
- 10.16b `{"nodeReference":"{{TH_O_INIT_REF}}"}` → `data.presentation=="Object"` (compare
  10.15b: GET_TYPE `String`, GET_EXPECTED_TYPE `Object`); no key named `reference` in `data`.
- 10.16c `{"nodeReference":"{{TH_B_INIT_REF}}"}` → `data.presentation=="int"`, **not** `byte`:
  in `byte b = 1` the rule recognises the literal as a valid byte and bounds it by `int`.
- 10.16d `{"nodeReference":"{{TYPE_HOST_REF}}"}` → `ok==true`, `data==null` (a root has no
  context).

Each answer carries `details.scope=="root"` and no `warnings`. 10.16a–c checked the whole root; a root (10.16d) has no
context, so nothing is checked. With `"maxRootNodes":1`, 10.16b answers `Object` in `details.scope=="node"`, with one
warning naming `maxRootNodes`: the parent's slice answered.

Example escaped call (10.16a):
```json
{ "tool": "mps_mcp_query_nodes",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "GET_EXPECTED_TYPE",
    "parameters": "{\"nodeReference\":\"{{TH_L_INIT_REF}}\"}" } }
```

---

### Step 10.17 — `query_types IS_SUBTYPE` `[SUCCESS]` + `[FAILURE]`

`{sub, super}` → `{isSubtype, isStrongSubtype, isComparable, sub, super}`. Decoded `parameters`:

- 10.17a `{"sub":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"},"super":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.LongType"}}`
  → `data.isSubtype==true`, `data.isComparable==true` (always true when `isSubtype` is),
  `data.sub.presentation=="int"`, `data.super.presentation=="long"`.
- 10.17b the same with `sub` and `super` swapped (long vs int) → `data.isSubtype==false`.
- 10.17c stored type nodes: `{"sub":{"typeNodeReference":"{{TH_S_TYPE_REF}}"},"super":{"typeNodeReference":"{{TH_O_TYPE_REF}}"}}`
  → `data.isSubtype==true` (`String <: Object`); `data.sub.presentation=="String"`; no key named
  `reference` anywhere in `data`.
- 10.17d **real JSON object + lower-case operation**: repeat 10.17a with `operation:"is_subtype"`
  and `parameters` passed as a JSON **object** rather than a string (see the call below) →
  same answer as 10.17a (`data.isSubtype==true`).
- 10.17e `[FAILURE]` `nodeReference` on a type node: `{"sub":{"nodeReference":"{{TH_S_TYPE_REF}}"},"super":{"typeNodeReference":"{{TH_O_TYPE_REF}}"}}`
  → `ok==false`, `code=="INVALID_REQUEST"`, `error` contains `has no type` (the node has no type —
  10.15c — so `nodeReference` cannot name one; `typeNodeReference` is the right key).

Example escaped call (10.17a; 10.17b/c/e differ only in the `parameters` string):
```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "IS_SUBTYPE",
    "parameters": "{\"sub\":{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.IntegerType\"},\"super\":{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.LongType\"}}" } }
```
10.17d (`parameters` is an object, not a string):
```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "is_subtype",
    "parameters": { "sub": { "typeConceptRef": "jetbrains.mps.baseLanguage.structure.IntegerType" },
                    "super": { "typeConceptRef": "jetbrains.mps.baseLanguage.structure.LongType" } } } }
```

---

### Step 10.18 — `query_types SUPERTYPES` (`depth`, `weak`) `[SUCCESS]`

`{type, depth?, weak?}` → `{type, immediate, transitive:[{type, depth}]}`. Decoded `parameters`:

- 10.18a `{"type":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"}}` →
  some `data.transitive[i].type.presentation=="long"`; `data.immediate` is non-empty; the
  envelope has **no** `details` key (int's lattice fits the default depth 8). Entries for
  `PrimitiveTypeDescriptor` nodes may appear too — the primitive rules use them internally; that
  is expected.
- 10.18b `{"type":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"},"depth":1}`
  → `details.truncated==true` (int has supertypes beyond depth 1), and every
  `data.transitive[i].depth==1`.
- 10.18c `{"type":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"},"weak":false}`
  → strong subtyping still widens int to long: some `data.transitive[i].type.presentation=="long"`.

Example escaped call (10.18b):
```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "SUPERTYPES",
    "parameters": "{\"type\":{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.IntegerType\"},\"depth\":1}" } }
```

---

### Step 10.19 — `query_types COMMON_SUPERTYPE` `[SUCCESS]` + `[FAILURE]`

- 10.19a `{"types":[{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"},{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.LongType"}]}`
  → the presentations of `data.result` are exactly `["long"]`; `data.types` has 2 entries.
- 10.19b `[FAILURE]` a single operand: `{"types":[{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"}]}`
  → `ok==false`, `code=="INVALID_REQUEST"` (at least two operands are required).

Example escaped call (10.19a):
```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "COMMON_SUPERTYPE",
    "parameters": "{\"types\":[{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.IntegerType\"},{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.LongType\"}]}" } }
```

---

### Step 10.20 — `query_types COERCE` (`strong`) `[SUCCESS]` + `[FAILURE]`

`{type, conceptRef, strong?}` → `{coerced}`: the type, or its supertype that is an instance of
`conceptRef`.

- 10.20a `{"type":{"nodeReference":"{{TH_LIST_FIELD_REF}}"},"conceptRef":"jetbrains.mps.baseLanguage.structure.ClassifierType"}`
  → `data.coerced` is non-null; `data.coerced.blueprint.references` has an entry with
  `role=="classifier"` whose `targetReference` names `java.util.List` (confirm with
  `mps_mcp_print_node` `deep:false` on that `targetReference` — the stub's printout may be large
  and come back as a temp-file path — that its `name=="List"`); the blueprint's
  `children` entry with `role=="parameter"` holds exactly one node (`String`).
- 10.20b `{"type":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"},"conceptRef":"jetbrains.mps.baseLanguage.structure.LongType","strong":true}`
  → `data.coerced.presentation=="long"`.
- 10.20c `[FAILURE]` an interface concept: `{"type":{"nodeReference":"{{TH_LIST_FIELD_REF}}"},"conceptRef":"jetbrains.mps.lang.core.structure.INamedConcept"}`
  → `ok==false`, `code=="INVALID_REQUEST"`.

Example escaped call (10.20a):
```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "COERCE",
    "parameters": "{\"type\":{\"nodeReference\":\"{{TH_LIST_FIELD_REF}}\"},\"conceptRef\":\"jetbrains.mps.baseLanguage.structure.ClassifierType\"}" } }
```

---

### Step 10.21 — `query_types OPERATION_TYPE` (`operatorNode` and `operatorConceptRef`) `[SUCCESS]`

`{operatorNode | operatorConceptRef, left, right}` → `{type}`, the overloaded-operation result.

- 10.21a existing operator node: `{"operatorNode":"{{TH_PLUS_REF}}","left":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"},"right":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.LongType"}}`
  → `data.type.presentation=="long"` (the given operands count, not the node's own `1 + 2`); the
  envelope has **no** `warnings`.
- 10.21b operator concept: `{"operatorConceptRef":"jetbrains.mps.baseLanguage.structure.PlusExpression","left":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.IntegerType"},"right":{"typeConceptRef":"jetbrains.mps.baseLanguage.structure.LongType"}}`
  → `data.type.presentation=="long"`; `warnings` has an entry containing `detached instance`
  (always added for `operatorConceptRef`: a rule reading the operation's properties sees default
  values).

Example escaped call (10.21a):
```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "OPERATION_TYPE",
    "parameters": "{\"operatorNode\":\"{{TH_PLUS_REF}}\",\"left\":{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.IntegerType\"},\"right\":{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.LongType\"}}" } }
```

---

### Step 10.22 — `query_types EXPLAIN_TYPE` (`includeApplyRule`, `maxRootNodes`) `[SUCCESS]` + `[FAILURE]`

`{nodeReference, includeApplyRule?, maxRootNodes?}` → `{type, trace:[{kind, presentation,
source?, rule?, error?, consequences?}]}`. "Anywhere in the trace" below includes the nested
`consequences` arrays.

- 10.22a `{"nodeReference":"{{TH_PLUS_REF}}"}` → `data.type.concept=="IntegerType"`;
  `data.trace` is non-empty; anywhere in the trace there is an entry with
  `kind=="type_assigned"` and `source=="{{TH_PLUS_REF}}"`; no entry's `presentation` contains
  ` applied to node "` (rule applications are elided by default); some entry carries a
  `rule: {rule, ruleReference, statement}` — confirm one with `query_nodes GET_MODEL_FOR_NODE`
  on its `ruleReference`: `data.name=="jetbrains.mps.baseLanguage.typesystem"`. No trace entry
  has a `source` among the other fields' nodes (e.g. `{{TH_L_INIT_REF}}`, `{{TH_O_INIT_REF}}`) —
  the trace is the slice for this node only.
- 10.22b `{"nodeReference":"{{TH_PLUS_REF}}","includeApplyRule":true}` → some entry's
  `presentation` contains ` applied to node "`, and none of those entries carries `rule`.
- 10.22c `[FAILURE]` `{"nodeReference":"{{TH_PLUS_REF}}","maxRootNodes":1}` → `ok==false`,
  `code=="INVALID_REQUEST"`, `error` mentions `maxRootNodes` (the root has more than one node).

Example escaped call (10.22a):
```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "EXPLAIN_TYPE",
    "parameters": "{\"nodeReference\":\"{{TH_PLUS_REF}}\"}" } }
```

---

### Step 10.23 — Invalid: unknown `query_types` operation `[FAILURE]`

```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "IS_SUPERTYPE",
    "parameters": "{\"sub\":{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.IntegerType\"},\"super\":{\"typeConceptRef\":\"jetbrains.mps.baseLanguage.structure.LongType\"}}" } }
```
- Validation: `ok==false`; `code=="INVALID_REQUEST"`; `error` lists the valid operations,
  `IS_SUBTYPE` among them.

---

### Step 10.24 — Problem reports: `rules` and `uncheckedSubtrees` `[SUCCESS]`

A type error carries `rules: [{rule, ruleReference, statement}]` naming the rule that reported
it. A commented-out subtree (a `BaseCommentAttribute`, marked `IDontApplyTypesystemRules` /
`ISkipConstraintsChecking`) is not type-checked; the report counts it as `uncheckedSubtrees`.
This step seeds a separate class with a type error, reads its `rules`, adds a commented-out field
holding the same kind of error, deletes the live error, and finally deletes the comment too, so
the class part 11 compiles is a plain empty class again.

#### Step 10.24.s1 — Seed `McpTypeError` with a type error `[CAPTURE]`

Decoded `parameters`:
```json
{
  "code": "public class McpTypeError { public int bad = true; }",
  "featureKind": "CLASS",
  "insert": { "mode": "root", "modelRef": "mcp.test.sandbox.other" }
}
```
Send:
```json
{
  "tool": "mps_mcp_parse_java_and_insert",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"public class McpTypeError { public int bad = true; }\",\"featureKind\":\"CLASS\",\"insert\":{\"mode\":\"root\",\"modelRef\":\"mcp.test.sandbox.other\"}}"
  }
}
```
- Validation: `ok==true`; `data.inserted[0].name=="McpTypeError"`. `data.problems` may list the
  type error — that is the point of this class.
- **Capture** `data.inserted[0].reference` as `{{TYPE_ERROR_REF}}`.
- **Capture** the field: `query_nodes FIND_INSTANCES` (call below) → exactly one result
  (`bad`); its `reference` is `{{TE_BAD_FIELD_REF}}`.
```json
{ "tool": "mps_mcp_query_nodes",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "FIND_INSTANCES",
    "parameters": "{\"conceptRef\":\"jetbrains.mps.baseLanguage.structure.FieldDeclaration\",\"scope\":\"roots\",\"roots\":[\"{{TYPE_ERROR_REF}}\"]}" } }
```

#### Step 10.24.s2 — The type error names its rule (`rules`) `[SUCCESS]`

```json
{ "tool": "mps_mcp_check_root_node_problems",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{TYPE_ERROR_REF}}" } }
```
- Validation: `ok==true`; `data` is the problem report (inline, or a temp-file path to read).
  Exactly **one** problem has `severity=="error"` (on `bad` or its initializer; the message says
  `boolean` is not a subtype of `int`). That problem carries `rules`, and:
  - `rules[0].rule=="typeof_VariableDeclaration"` (the inference rule whose inequality failed);
  - `query_nodes GET_MODEL_FOR_NODE` on `rules[0].ruleReference` → `data.name=="jetbrains.mps.baseLanguage.typesystem"`;
  - `query_nodes GET_ROOT` on `rules[0].statement` → `data.reference==rules[0].ruleReference`
    (the reporting statement lies inside the rule root).
- No `details.uncheckedSubtrees` yet (nothing is commented out) — typically the envelope has no
  `details` at all; a missing `details` object is not a failure.

#### Step 10.24.s3 — `EXPLAIN_TYPE` marks the path to the error `[SUCCESS]`

```json
{ "tool": "mps_mcp_query_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "EXPLAIN_TYPE",
    "parameters": "{\"nodeReference\":\"{{TE_BAD_FIELD_REF}}\"}" } }
```
- Validation: `ok==true`; anywhere in `data.trace` there is at least one entry with
  `kind=="error_added"`; every such entry has `error==true` and a `rule`, and one of them has
  `rule.rule=="typeof_VariableDeclaration"`. Every entry whose `consequences` contain an entry
  with `error` also has `error==true`.

#### Step 10.24.s4 — Add a commented-out field; the error count is unchanged (`uncheckedSubtrees`) `[SUCCESS]`

`update_node ADD CHILD` into the class's `smodelAttribute` role: a `BaseCommentAttribute` whose
`commentedNode` is a field `int commented = true;` — a second type error, but inside a comment.
`childJson` (decoded):
```json
{ "concept": "jetbrains.mps.lang.core.structure.BaseCommentAttribute",
  "children": [ { "role": "commentedNode", "nodes": [ {
    "concept": "jetbrains.mps.baseLanguage.structure.FieldDeclaration",
    "properties": [ { "name": "name", "value": "commented" } ],
    "children": [
      { "role": "type", "nodes": [ { "concept": "jetbrains.mps.baseLanguage.structure.IntegerType" } ] },
      { "role": "initializer", "nodes": [ { "concept": "jetbrains.mps.baseLanguage.structure.BooleanConstant",
                                            "properties": [ { "name": "value", "value": "true" } ] } ] } ] } ] } ] }
```
Send:
```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "ADD", "kind": "CHILD",
    "nodeReference": "{{TYPE_ERROR_REF}}", "childRole": "smodelAttribute",
    "childJson": "{\"concept\":\"jetbrains.mps.lang.core.structure.BaseCommentAttribute\",\"children\":[{\"role\":\"commentedNode\",\"nodes\":[{\"concept\":\"jetbrains.mps.baseLanguage.structure.FieldDeclaration\",\"properties\":[{\"name\":\"name\",\"value\":\"commented\"}],\"children\":[{\"role\":\"type\",\"nodes\":[{\"concept\":\"jetbrains.mps.baseLanguage.structure.IntegerType\"}]},{\"role\":\"initializer\",\"nodes\":[{\"concept\":\"jetbrains.mps.baseLanguage.structure.BooleanConstant\",\"properties\":[{\"name\":\"value\",\"value\":\"true\"}]}]}]}]}]}"
  }
}
```
- Validation: `ok==true`; `data.reference` is the new comment attribute — **capture** it as
  `{{TE_COMMENT_REF}}`. Then re-run the check call of 10.24.s2:
  - still exactly **one** `error` problem — the one from `bad`; the `commented` field's error is
    **not** reported;
  - `details.uncheckedSubtrees==1`;
  - the envelope has **no** `warnings` (the unchecked-subtree warning is added only to a clean
    verdict).

#### Step 10.24.s5 — Delete the live error; the clean verdict warns about the comment `[SUCCESS]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "CHILD",
    "childNodeRef": "{{TE_BAD_FIELD_REF}}",
    "childJson": null
  }
}
```
- Validation: `ok==true`. Then re-run the check call of 10.24.s2:
  - `data=="no problems found"`;
  - `details.uncheckedSubtrees==1`;
  - `warnings` has an entry starting with `1 subtree(s) marked IDontApplyTypesystemRules` (the
    commented-out field was not type- or constraint-checked).

#### Step 10.24.s6 — Delete the comment; the class is plain and clean `[SUCCESS]`

The comment attribute was built without the `linkId` an editor-made comment records; the
checkers do not need it, but generation is not exercised on it, so remove it before part 11
makes the solution.
```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "CHILD",
    "childNodeRef": "{{TE_COMMENT_REF}}",
    "childJson": null
  }
}
```
- Validation: `ok==true`. Then re-run the check call of 10.24.s2: `data=="no problems found"`,
  no `details.uncheckedSubtrees`, and no `warnings` entry about unchecked subtrees.
- `McpTypeError` is now an empty, valid class and stays in the model (final-state policy).

---

### Step 10.25 — Seed the dataflow host `McpLedger` `[CAPTURE]` `[READ-FILE]`

A third class root whose method has a loop with `continue`, a branch and a final read, the subject of
`mps_mcp_query_dataflow`. It is valid, warning-free Java, so part 11's make still compiles it.

Decoded `parameters`:
```json
{
  "code": "public class McpLedger { public static int settle(int[] amounts) { int total = 0; int fee = 5; for (int a : amounts) { if (a < 0) { continue; } total = total + a; } if (total > 100) { fee = 0; } return total - fee; } }",
  "featureKind": "CLASS",
  "insert": { "mode": "root", "modelRef": "mcp.test.sandbox.other" }
}
```
Send:
```json
{
  "tool": "mps_mcp_parse_java_and_insert",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "parameters": "{\"code\":\"public class McpLedger { public static int settle(int[] amounts) { int total = 0; int fee = 5; for (int a : amounts) { if (a < 0) { continue; } total = total + a; } if (total > 100) { fee = 0; } return total - fee; } }\",\"featureKind\":\"CLASS\",\"insert\":{\"mode\":\"root\",\"modelRef\":\"mcp.test.sandbox.other\"}}"
  }
}
```
- Validation: `ok==true`; `data.inserted[0].name=="McpLedger"`; `data.problems==[]`.
- Then `mps_mcp_print_node` on `data.inserted[0].reference` with `deep: true`. **Capture** the method
  `settle` as `{{DF_METHOD_REF}}`, its `body` child (a `StatementList`) as `{{DF_BODY_REF}}`, and the
  `IfStatement` `if (a < 0)` inside the loop as `{{DF_INNER_IF_REF}}`.

---

### Step 10.26 — `query_dataflow PRINT_PROGRAM` (`maxInstructions`) `[SUCCESS]` + `[FAILURE]`

10.26a, the whole body:
```json
{ "tool": "mps_mcp_query_dataflow",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "PRINT_PROGRAM",
    "parameters": "{\"nodeReference\":\"{{DF_BODY_REF}}\"}" } }
```
- Validation: `ok==true`; `data.program.root.concept=="StatementList"`, `data.program.hasOuterJumps==false`;
  `data.instructions` has `data.program.size` entries, the last with `kind=="end"`; the kinds include
  `read`, `write`, `ifjump`, `jump` and `ret`; every `write` has a `rule` whose `rule` ends with `_DataFlow`
  and whose `ruleReference` lies in model `jetbrains.mps.baseLanguage.dataFlow`; the first writes are of
  `amounts` (the parameter, written by the body's builder), `total` and `fee`; `data.unreachable==[]`.
- **Capture** from `data.instructions`: the `source.reference` of the second `write` whose `variable.name=="fee"`
  (`fee = 0`) as `{{DF_FEE_ZERO_REF}}`, and of the last `read` whose `variable.name=="fee"` (in
  `return total - fee`) as `{{DF_FEE_READ_REF}}`.

10.26b, the inner `if`, whose `continue` jumps out of it: `parameters` `{"nodeReference":"{{DF_INNER_IF_REF}}"}`.
- Validation: `ok==true`; `data.program.hasOuterJumps==true`; one instruction has `outer==true` and
  `jumpTo==null`; `warnings` has an entry containing `outer jumps`.

10.26c, a cap: `{"nodeReference":"{{DF_BODY_REF}}","maxInstructions":3}` → `ok==true`, 3 instructions,
`details.truncated==true`, `details.instructionsReturned==3`.

10.26d `[FAILURE]`: `{"nodeReference":"{{DF_BODY_REF}}","maxInstructions":0}` → `ok==false`,
`code=="INVALID_REQUEST"`, `error` names `maxInstructions`.

---

### Step 10.27 — `query_dataflow REACHING_WRITES` / `REACHING_READS` (`programRoot`) `[SUCCESS]` + `[FAILURE]`

10.27a, `operation:"REACHING_WRITES"`, `{"nodeReference":"{{DF_FEE_READ_REF}}"}`:
- Validation: `ok==true`; `data.program.defaulted==true` and `data.program.root.reference=={{DF_BODY_REF}}`
  (the default root is the method body); `data.scope=="node"`; `data.reads` has one entry, whose `writes`
  are the two writes of `fee` (`int fee = 5` and `{{DF_FEE_ZERO_REF}}`); no `uninitializedPath`.

10.27b, `operation:"REACHING_READS"`, `{"nodeReference":"{{DF_FEE_ZERO_REF}}"}`:
- Validation: `ok==true`; `data.writes` has one entry (`variable.name=="fee"`) whose `reads` is exactly
  one read, with `source.reference=={{DF_FEE_READ_REF}}`.

10.27c, `operation:"REACHING_WRITES"`, `{"nodeReference":"{{DF_FEE_READ_REF}}","programRoot":"{{DF_METHOD_REF}}"}`:
- Validation: `ok==true`; `data.program.root.reference=={{DF_METHOD_REF}}`, no `data.program.defaulted`;
  the same two writes reach the read (compare by `source.reference`, not `index`).

10.27d `[FAILURE]`, a root that does not contain the node:
`{"nodeReference":"{{DF_FEE_READ_REF}}","programRoot":"{{DF_INNER_IF_REF}}"}` → `ok==false`,
`code=="INVALID_REQUEST"`, `error` names `programRoot`.

10.27e `[FAILURE]`, an unknown operation: `operation:"REACHING_DEFINITIONS"` with the parameters of 10.27a →
`ok==false`, `code=="INVALID_REQUEST"`, `error` lists `PRINT_PROGRAM`, `REACHING_WRITES` and `REACHING_READS`.

`McpLedger` stays in the model (final-state policy).

Proceed to `11_run_configurations.md`.
