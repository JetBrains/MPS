# MPS MCP Smoke Test — Intentions & Quick-Fixes

**Goal:** verify, against a live MPS instance with the MCP server enabled, that the intentions /
quick-fixes MCP surface works end to end: listing intentions and checker quick-fixes on nodes,
applying both kinds headlessly, and auto-applying execute-immediately quick-fixes during problem
resolution — exactly as advertised in the tool descriptions.

The scenario builds its own fixture from scratch: it creates a solution and a model, imports
BaseLanguage, parses prepared Java code into BaseLanguage classes (each snippet carries *hooks* for
chosen intentions/quick-fixes), and then exercises the tools on the resulting nodes.

| Phase | Area | Tools proven |
|-------|------|--------------|
| S | Setup | `mps_mcp_list_open_projects`, `mps_mcp_create_module`, `mps_mcp_create_model`, `mps_mcp_model_used_language` |
| F | Fixtures | `mps_mcp_parse_java_and_insert` (root mode, recovery, per-insert `problems` array) |
| I | Intentions | `mps_mcp_query_nodes`, `mps_mcp_list_node_intentions`, `mps_mcp_apply_intention` (intention path), `mps_mcp_print_node` |
| Q | Manual quick-fixes | `mps_mcp_check_root_node_problems` (per-problem `quickFixes`), `mps_mcp_apply_intention` (quick-fix path, `problemMessage` pinning) |
| A | Auto-apply | `mps_mcp_check_root_node_problems(autoApplyQuickFixes=true)` incl. multi-fix rounds and convergence |
| N | Negative | unknown id → NOT_FOUND; wrong-concept absence; surround-with exclusion; model-branch warning |

Every *Expected* block below is live-recorded: the steps were first executed while authoring the
scenario, and the complete scenario was then run end to end by an independent Sonnet-class agent
(MPS master, 2026-07-13 — all cases PASS). If reality differs, record FAIL with the actual
output; that is exactly the signal this smoke test exists to produce.

---

## 0. Rules for the agent running this scenario (READ FIRST)

1. **All calls are MPS MCP tools.** Your session exposes them with a server prefix
   (e.g. `mcp__mps-mcp-XXXX__mps_mcp_create_module`). Below they are written with bare names
   (`mps_mcp_*`). Plain-file reads of the temp files the tools return are done with your normal
   file-read tool.
2. **Determine `<PROJECT_PATH>` in step S-00 and pass it as `projectPath` on every call.**
3. **No cleanup.** Leave everything in place; §7 tells the human what to delete manually.
   Do not delete, undo, or "fix" anything beyond what a step instructs.
4. **Run the steps in order.** Later steps depend on the state earlier steps created
   (in particular: F-04 must run **before** F-06, and Q-05 before Q-06).
5. **Record PASS / FAIL / SKIP for every numbered case** with a one-line note. A case is PASS only
   if the response matches its *Expected* block. **Continue after a FAIL** (only Phase S failures
   abort the run). At the end print the Final Report (§6).
6. **Copy node references from prior responses.** Placeholders like `«QF_ROOT»` are defined the
   first time a step records them. Node ids shown inside *Expected* blocks are illustrative — match
   on the named fields and message texts, never on the numeric ids.
7. **Assert by field values and substrings**, not whole-response equality. Rendered text layout
   (spaces, line breaks) may differ; when a step says *assert text contains X*, a substring match
   on the printed text is enough.
8. **Tools that return a temp-file path** (`mps_mcp_list_node_intentions`,
   `mps_mcp_check_root_node_problems` when problems exist, `mps_mcp_print_node`) put the path in
   `data`. Read that file to check the expectations. Note: for `mps_mcp_print_node` with
   `format: "PLAIN TEXT"` the temp file is still a JSON envelope — the printed text is the value
   of its `data` string, not raw file content.
9. **Never read or edit `.mps` files directly.** Everything goes through the MCP tools.
10. **Never apply an intention or quick-fix a step does not name.** In particular
    `Replace Field with Property ...` (a full refactoring) will appear in listings — it must never
    be applied.
11. Expected duration: roughly 55–65 tool calls.

---

## 1. Phase S — Setup

### S-00 — pick the project
Call `mps_mcp_list_open_projects` (if it errors asking for a project path, the error lists the open
projects — pick from there and re-call with that path).

- Exactly one open project → use its `mpsProjectBaseDirectory` as `<PROJECT_PATH>`.
- Several open projects → **ask the human** which one to use, then use that project's
  `mpsProjectBaseDirectory`. Do not guess.

**Expected:** `ok:true`, at least one entry with `hasMpsProject:true`.

### S-01 — create the fixture solution
`mps_mcp_create_module` with:
```json
{ "type": "solution", "name": "mcp.smoke.intentions",
  "directory": "<PROJECT_PATH>/solutions/mcp.smoke.intentions" }
```
**Expected (live-verified):** `ok:true`; `data.name = "mcp.smoke.intentions"`,
`data.kind = "Solution"`, `data.facets = ["java"]`, `data.present = true`.

**Abort rule:** if this fails because the module already exists, STOP the whole run and tell the
human to delete the previous run's module first (instructions in §7).

> The `java` facet the solution gets by default is what makes JDK stubs (`String`, `Object`,
> `Runnable`) resolve in the fixtures — no explicit JDK import step is needed.

### S-02 — create the model
`mps_mcp_create_model` with `moduleName = "mcp.smoke.intentions"`,
`modelName = "mcp.smoke.intentions.tests"`.

**Expected (live-verified):** `ok:true`; `data.reference` of the form
`r:<uuid>(mcp.smoke.intentions.tests)` → record as `«MODEL»`; `data.readOnly = false`.

### S-03 — import BaseLanguage
`mps_mcp_model_used_language` with `modelReference = «MODEL»`,
`usedLanguage = "jetbrains.mps.baseLanguage"`, `kind = "language"`, `operation = "ADD"`.

**Expected (live-verified):** `ok:true`; `data = {"added":true,"providedByDevKit":false}`.

---

## 2. Phase F — Fixtures (parse the prepared Java)

All parses use `mps_mcp_parse_java_and_insert` with
`parameters = {"code": <java>, "featureKind": "CLASS", "insert": {"mode": "root", "modelRef": "«MODEL»"}}`
(the `code` value is the Java block of the step, verbatim). Record each response's
`data.inserted[0].reference` under the given placeholder.

> The parse response's `problems` array lists only **errors and warnings** found inside the
> inserted subtree. Info-level findings (e.g. "It's recommended to use string type") appear only in
> `mps_mcp_check_root_node_problems` reports, not here.

### F-01 — `IntentionHooks` (must load clean) → `«I_ROOT»`
```java
public class IntentionHooks {
  public int counter;
  public boolean hookInvertIf(boolean flag) {
    if (flag) {
      return true;
    } else {
      return false;
    }
  }
  public String hookRemoveCast(Object o) {
    return (String) o;
  }
  public boolean hookFlipBinary(int a, int b) {
    return a < b;
  }
  public int hookSplitDecl() {
    int x = 5;
    return x;
  }
  public int hookForToWhile(int n) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
      sum = sum + i;
    }
    return sum;
  }
  public boolean hookEquality(String a, String b) {
    return a == b;
  }
  public int hookToggleStatic() {
    return 42;
  }
}
```
**Expected (live-verified):** `ok:true`, `data.problems = []` (the class type-checks as parsed).

### F-02 — `QuickFixHooks` (deliberate semantic errors) → `«QF_ROOT»`
```java
public class QuickFixHooks {
  public String hookNoFix(Object o) {
    String s = o;
    return s;
  }
  public Object hookChangeType() {
    int n = "text";
    return null;
  }
  public int hookReturnType() {
    return "hi";
  }
  public int hookAddCast(long l) {
    return l;
  }
  public void hookUnusedVar() {
    int unused = 5;
  }
}
```
**Expected (live-verified):** `ok:true`; `data.problems` contains **4 errors + 4 warnings**:

| severity | message | on concept |
|---|---|---|
| error | `Error: Object is not a subtype of String` | LocalVariableDeclaration |
| error | `Error: type string is not a subtype of int` | LocalVariableDeclaration |
| error | `Error: int is expected` | StringLiteral (`"hi"`) |
| error | `Error: int is expected` | VariableReference (`l`) |
| warning | `Warning: Unused variable` | LocalVariableDeclaration (×2: `n`, `unused`) |
| warning | `Warning: Variable 'n' initializer is redundant` | StringLiteral |
| warning | `Warning: Variable 'unused' initializer is redundant` | IntegerConstant |

### F-03 — `NotImplemented` (missing interface method) → `«ABS_ROOT»`
```java
public class NotImplemented implements Runnable {
}
```
**Expected (live-verified):** `ok:true`; exactly one problem, severity `error`, on the ClassConcept
root itself:
`Error: The classifier 'NotImplemented' must be declared abstract or implement abstract method 'run' in 'Runnable'`

### F-04 — `UnknownRef` (references a class that does not exist yet) → `«UNK_ROOT»`
Must be parsed **before** F-06 creates `Helper`.
```java
public class UnknownRef {
  public int hookUnknownCall() {
    return Helper.assist();
  }
  public int hookUnknownField() {
    return Helper.LIMIT;
  }
}
```
**Expected (live-verified):** `ok:true`; **6 errors**, three on an `UnknownDotCall` node and three
on an `UnknownNameRef` node:
- UnknownDotCall: `No reference in the obligatory role 'baseMethodDeclaration'`,
  `Error: int is expected`, `Error: Unresolved method call`
- UnknownNameRef: `Error: int is expected`,
  `Error: Abstract concept instance detected. Use one of sub-concepts instead. Concept: UnknownNameRef`,
  `Error: Unresolved qualified name`

> This is the parser's recovery behavior at work: unresolvable references become `Unknown*`
> placeholder nodes instead of failing the parse.

### F-05 — `AutoToggle` (static method called through an instance) → `«TOG_ROOT»`
```java
public class AutoToggle {
  public static void util() {
  }
  public void hookAutoCall(AutoToggle a) {
    a.util();
  }
}
```
**Expected (live-verified):** `ok:true`; **3 errors**:
- ExpressionStatement: `Error: Not a legal statement, the expression value should be used or returned`
- UnknownInstanceMethodCall: `No reference in the obligatory role 'baseMethodDeclaration'` and
  `Error: Unresolved method call`

> Note: calling a static method through an instance is legal *Java*, but the MPS parser does not
> resolve it — it produces an `UnknownInstanceMethodCall`. Phase A turns this into an auto-fix case.

### F-06 — `Helper` (satisfies F-04's references) → `«HELPER_ROOT»`
Parsed **after** F-04.
```java
public class Helper {
  public static int LIMIT = 10;
  public static int assist() {
    return 7;
  }
}
```
**Expected (live-verified):** `ok:true`, `data.problems = []`.

---

## 3. Phase I — Intentions

Node lookup pattern used throughout this phase — `mps_mcp_query_nodes` with
`operation = "FIND_INSTANCES"` and parameters like:
```json
{ "conceptRef": "jetbrains.mps.baseLanguage.structure.<Concept>",
  "scope": "roots", "roots": "«I_ROOT»",
  "propertyFilter": { "name": "name", "value": "<name>" } }
```
(omit `propertyFilter` for expression concepts, which have no name). Take `data[0].reference`.
Unless stated otherwise each query is expected to return exactly one node.

After each apply, verify with `mps_mcp_print_node` on `«I_ROOT»` with `format = "PLAIN TEXT"`,
reading the returned temp file.

### I-01 — Invert If Condition
1. Locate: FIND_INSTANCES of `jetbrains.mps.baseLanguage.structure.IfStatement` in `«I_ROOT»`
   (1 hit) → `«IF»`.
2. `mps_mcp_list_node_intentions(nodeReference = «IF», includeAncestors = false)`.
   **Expected:** the entry list contains
   `{"type":"intention","id":"jetbrains.mps.baseLanguage.intentions.InvertIfCondition_Intention","kind":"NORMAL","presentation":"InvertIfCondition","description":"Invert If Condition","parameterized":false}`
   with `targetNode = «IF»`. (Every intention entry carries a static `presentation` id next to the
   dynamic `description`; the snippets in later steps omit it.)
   **N-03 assertion (record separately):** no entry's `description` contains `"Surround"` and no
   entry's `id` contains `"SurroundWith"` — surround-with intentions are excluded by design.
3. `mps_mcp_apply_intention(nodeReference = «IF», intentionId = "jetbrains.mps.baseLanguage.intentions.InvertIfCondition_Intention")`.
   **Expected (live-verified):**
   `{"applied":true,"type":"intention","description":"Invert If Condition","targetNode":"«IF»","problems":{"before":{"errors":0,"warnings":0},"after":{"errors":0,"warnings":0}}}`
4. Print `«I_ROOT»`. **Expected:** text contains `if (!flag)` and inside its first branch
   `return false;` (branches swapped, condition negated).

### I-02 — Remove Cast Expression (node-replacing apply; ancestor-merged listing)
1. Locate: FIND_INSTANCES of `jetbrains.mps.baseLanguage.structure.CastExpression` (1 hit) → `«CAST»`.
2. `mps_mcp_list_node_intentions(nodeReference = «CAST»)` (default `includeAncestors = true`).
   **Expected (live-verified):** contains
   `RemoveCastExpr_Intention` / description `Remove Cast Expression` with `targetNode = «CAST»`,
   **and** ancestor entries such as `ToggleMethodStatic_Intention` (description
   `Make 'hookRemoveCast' Static`) whose `targetNode` is the containing method — *not* `«CAST»`.
   This is why an apply must always use the entry's own `targetNode`.
3. Apply `jetbrains.mps.baseLanguage.intentions.RemoveCastExpr_Intention` on `«CAST»`.
   **Expected (live-verified):** `applied:true`, **`targetNode: null`**, warning
   `"the target node no longer exists after the apply (deleted or replaced)"`, and
   `problems.before = 0 errors / after = 1 error` — removing the cast deliberately *introduces*
   the type error `Object is not a subtype of String`. This checks that the apply tool reports
   problem-count changes in both directions.
4. Print `«I_ROOT»`. **Expected:** `hookRemoveCast` body is now `return o;` (no `(String)`).

### I-03 — Flip Binary Operation
1. Locate: FIND_INSTANCES of `jetbrains.mps.baseLanguage.structure.LessThanExpression` in
   `«I_ROOT»` → expect **2 hits** (in `hookFlipBinary` and in the `for` condition). Pick the one
   whose parent is a `ReturnStatement`: for each hit call
   `mps_mcp_query_nodes(operation="GET_PARENT", parameters={"nodeReference": <hit>})` and choose
   the hit whose parent concept is `ReturnStatement` → `«LT»`.
2. Apply `jetbrains.mps.baseLanguage.intentions.FlipBinaryOperation_Intention` on `«LT»`.
   **Expected:** `applied:true`, description `Flip Binary Operation`, `targetNode: null` + the
   node-no-longer-exists warning (the `<` expression is replaced by a new `>` expression),
   problems stay 1 error (the error introduced by I-02 persists; before == after).
3. Print `«I_ROOT»`. **Expected:** `hookFlipBinary` returns `b > a`.

### I-04 — Split into Declaration and Assignment
1. Locate: `LocalVariableDeclaration` with `propertyFilter {"name":"name","value":"x"}` → `«X»`.
2. Apply `jetbrains.mps.baseLanguage.intentions.SplitIntoDeclarationAndAssignment_Intention` on `«X»`.
   **Expected:** `applied:true`, description `Split into Declaration and Assignment`.
3. Print `«I_ROOT»`. **Expected:** `hookSplitDecl` contains `int x;` followed by `x = 5;`.

### I-05 — Replace For with While
1. Locate: `jetbrains.mps.baseLanguage.structure.ForStatement` (1 hit) → `«FOR»`.
2. Apply `jetbrains.mps.baseLanguage.intentions.ReplaceForLoopWithWhileLoop_Intention` on `«FOR»`.
   **Expected:** `applied:true`, description `Replace For with While`, `targetNode: null` + the
   node-no-longer-exists warning (the for statement is replaced by a while construct).
3. Print `«I_ROOT»`. **Expected:** `hookForToWhile` contains `while (` and contains no `for (`.

### I-06 — Make Field Volatile (property toggle + dynamic label) — includes N-02
1. Locate: `FieldDeclaration` named `counter` → `«FIELD»`.
2. `mps_mcp_list_node_intentions(nodeReference = «FIELD», includeAncestors = false)`.
   **Expected (live-verified):** contains `MakeFieldVolatile_Intention` with description
   `Make Field Volatile`; also contains `AddFinalModifierToAny_Intention` (`Add 'final' Modifier`),
   `AddStaticFieldModifier_Intention` (`Add 'static' Modifier`), `MakeFieldTransient_Intention`
   (`Make Field Transient`) and `ReplaceFieldWithProperty_Intention`
   (`Replace Field with Property ...` — **never apply this one**).
   **N-02 assertion (record separately):** the listing contains **no**
   `InvertIfCondition_Intention` entry — intentions are concept-scoped.
3. Apply `jetbrains.mps.baseLanguage.intentions.MakeFieldVolatile_Intention` on `«FIELD»`.
   **Expected (live-verified):** `applied:true`, description `Make Field Volatile`,
   `targetNode = «FIELD»` (property toggles do not replace the node).
4. Print `«I_ROOT»`. **Expected:** contains `volatile int counter`.
5. Re-list as in step 2. **Expected (live-verified):** the `MakeFieldVolatile_Intention` entry's
   description is now `Make Field Not Volatile` — toggle labels are dynamic; this is why applies
   match on `id`, not on `description`.

### I-07 — Toggle Method Static (concept-swapping apply)
1. Locate: `InstanceMethodDeclaration` named `hookToggleStatic` → `«TSM»`.
2. Apply `jetbrains.mps.baseLanguage.intentions.ToggleMethodStatic_Intention` on `«TSM»`.
   **Expected (live-verified mechanism):** `applied:true`, description
   `Make 'hookToggleStatic' Static`, **`targetNode: null`** + the node-no-longer-exists warning —
   this intention replaces the method with a `StaticMethodDeclaration` (new node). Problem counts
   unchanged (the method has no callers — deliberately: toggling a method *with* callers leaves
   dangling references, see Appendix).
3. Print `«I_ROOT»`. **Expected:** contains `public static int hookToggleStatic()`.

### I-08 — Replace Equality with equals()
1. Locate: `jetbrains.mps.baseLanguage.structure.EqualsExpression` (1 hit) → `«EQ»`.
2. Apply `jetbrains.mps.baseLanguage.intentions.ReplaceEqualityWithEquals_Intention` on `«EQ»`.
   **Expected:** `applied:true`, description `Replace Equality with equals()`, and the error count
   **rises from 1 to 3**: the generated `.equals()` call is itself flagged by the checker with
   `Reference to wrong overridden method` and, on its `baseMethodDeclaration` reference,
   `... equals(Object):boolean ... is out of search scope`. This is a suspected platform issue in
   the intention or in stub-method resolution (see Appendix, pitfall 9) — the two extra errors are
   the *expected* outcome of this step, not a failure. Score on `applied` + the print below.
3. Print `«I_ROOT»`. **Expected:** `hookEquality` contains `a.equals(b)`.

---

## 4. Phase Q — Manual quick-fixes

### Q-00 — the check report carries the fixes (foundation for Q-01…Q-06)
`mps_mcp_check_root_node_problems(nodeReference = «QF_ROOT»)` → read the report file.
Record the `reference` of each node entry named below.

**Expected (live-verified):**

| node (record as) | problem | quickFixes |
|---|---|---|
| LocalVariableDeclaration `s` — `«S_DECL»` | error `Object is not a subtype of String` | **none** — the entry has NO `quickFixes` array (**this is case Q-01**: not every problem has a fix) |
| LocalVariableDeclaration `n` — `«N_DECL»` | error `type string is not a subtype of int` | `jetbrains.mps.baseLanguage.typesystem.AddCast_QuickFix` (`Cast the initializer to int`) **and** `jetbrains.mps.baseLanguage.typesystem.ChangeExpectedType_QuickFix` (`Change type of n to string`), both `autoApplicable:false` |
| same `«N_DECL»` | warning `Unused variable` | `jetbrains.mps.baseLanguage.typesystem.RemoveUnusedLocalVariable_QuickFix` (`Remove Unused Local Variable`) |
| StringLiteral `"hi"` — `«HI_LIT»` | error `int is expected` | `AddCast_QuickFix` (`Cast the returned expression to int`) and `jetbrains.mps.baseLanguage.typesystem.ChangeMethodReturnType_QuickFix` (`Change return type of hookReturnType():int to string`) |
| VariableReference `l` — `«L_REF»` | error `int is expected` | `AddCast_QuickFix` (`Cast the returned expression to int`) and `ChangeMethodReturnType_QuickFix` (`Change return type of hookAddCast(long):int to long`) |
| IntegerConstant `5` — `«FIVE»` | warning `Variable 'unused' initializer is redundant` | `jetbrains.mps.baseLanguage.typesystem.RemoveUnusedAssignment_QuickFix` (`Remove unused assignment`) |
| LocalVariableDeclaration `unused` — `«UNUSED_DECL»` | warning `Unused variable` | `RemoveUnusedLocalVariable_QuickFix` |
| ClassifierType entries (≥1) | **info** `It's recommended to use string type` | `jetbrains.mps.baseLanguage.typesystem.ConvertString_QuickFix` (`Convert java.lang.String to string type`) — record one such node as `«STR_TYPE»` |

Q-00 is PASS if all rows match. Q-01 is PASS if the `«S_DECL»` row specifically has no
`quickFixes` array.

### Q-02 — pick one of two fixes on the same problem (Change Expected Type)
Apply on `«N_DECL»` with
`intentionId = "jetbrains.mps.baseLanguage.typesystem.ChangeExpectedType_QuickFix"`.
**Expected (live-verified):** `applied:true`, `type:"quickFix"`, description
`Change type of n to string`, `targetNode = «N_DECL»`, and root-wide error count drops by exactly 1
(`before.errors − after.errors = 1`; warnings unchanged). The two fixes on the problem have
different ids, so no `description` disambiguator is needed.

Print `«QF_ROOT»` (PLAIN TEXT). **Expected:** contains `string n = "text";`.

### Q-03 — Change Method Return Type
Apply on `«HI_LIT»` with `intentionId = ".....ChangeMethodReturnType_QuickFix"` (full id from Q-00).
**Expected:** `applied:true`, description `Change return type of hookReturnType():int to string`,
error count drops by 1. Print: `public string hookReturnType()`.

### Q-04 — Add Cast (a cast that actually fixes the error)
Apply on `«L_REF»` with `intentionId = ".....AddCast_QuickFix"`.
**Expected (live-verified):** `applied:true`, description `Cast the returned expression to int`,
error count drops by 1. Print: `hookAddCast` body contains `(int)`.

### Q-05 — problemMessage pinning (Remove unused assignment)
The `«FIVE»` node carries one problem, but this step demonstrates pinning anyway. Apply on `«FIVE»`
with `intentionId = ".....RemoveUnusedAssignment_QuickFix"` and
`problemMessage = "initializer is redundant"`.
**Expected:** `applied:true`, description `Remove unused assignment`, `targetNode: null` + the
node-no-longer-exists warning (the initializer expression `«FIVE»` is deleted with the
assignment), warnings drop by 1.
Print: `hookUnusedVar` contains `int unused;` (initializer gone, declaration still present).

### Q-06 — warning-severity fix that deletes a statement
Apply on `«UNUSED_DECL»` with `intentionId = ".....RemoveUnusedLocalVariable_QuickFix"`.
**Expected (live-verified):** `applied:true`, description `Remove Unused Local Variable`,
**`targetNode: null`** + node-no-longer-exists warning (the whole statement is deleted), warnings
drop. Print: `hookUnusedVar` body no longer contains `unused`.

### Q-07 — error-severity fix on the root node itself (Make Class Abstract)
1. `mps_mcp_check_root_node_problems(nodeReference = «ABS_ROOT»)`.
   **Expected (live-verified):** one error on the ClassConcept (message as in F-03) with quick-fix
   `jetbrains.mps.baseLanguage.typesystem.MakeClassAbstract_QuickFix`
   (`Make NotImplemented abstract`, `autoApplicable:false`).
2. Apply on `«ABS_ROOT»` with that id.
   **Expected (live-verified):** `applied:true`, description `Make NotImplemented abstract`,
   `problems.before = 1 error → after = 0`.
3. Print `«ABS_ROOT»`. **Expected:** contains `abstract class NotImplemented`.

### Q-08 — info-severity fix *(SKIP with a note if no info entry was found in Q-00)*
Apply on `«STR_TYPE»` with `intentionId = ".....ConvertString_QuickFix"`.
**Expected:** `applied:true`, description `Convert java.lang.String to string type`. Note: if
`«STR_TYPE»` is the type of `String s = o;`, the hookNoFix error remains (its message now says
`... is not a subtype of string`) — error count unchanged is correct here.

---

## 5. Phase A — Auto-applicable quick-fixes

### A-01 — intention creates the auto-fix condition; single-fix auto-apply
1. Locate in `«TOG_ROOT»`: `StaticMethodDeclaration` named `util` → `«UTIL»`.
2. Apply `jetbrains.mps.baseLanguage.intentions.ToggleMethodStatic_Intention` on `«UTIL»`.
   **Expected (live-verified):** `applied:true`, description **`Make 'util' Not Static`**
   (the toggle's other label), `targetNode: null` + node-gone warning, and problem counts
   **stay 3/3** — the errors change *kind*, not count: the previously unresolvable
   `UnknownInstanceMethodCall` can now be resolved as an instance call.
3. `mps_mcp_check_root_node_problems(nodeReference = «TOG_ROOT»)`.
   **Expected (live-verified):** the UnknownInstanceMethodCall node now reports
   `Error: Resolved unknown call` carrying
   `{"id":"jetbrains.mps.baseLanguage.typesystem.ResolvedUnknownNode_QuickFix","autoApplicable":true}`
   — note this fix has **no `description` field** (the fix declares no description block).
4. `mps_mcp_check_root_node_problems(nodeReference = «TOG_ROOT», autoApplyQuickFixes = true)`.
   **Expected (live-verified):**
   `{"ok":true,"data":"no problems found","details":{"appliedQuickFixes":["QuickFixRuntimeAdapter"]}}`
   — one auto-fix applied (its reported name degrades to the adapter class because the fix has no
   description), and the fix also resolved the follow-on `Not a legal statement` error.
5. Print `«TOG_ROOT»`. **Expected:** `hookAutoCall` contains `a.util();` as a resolved call
   (and the check in step 4 already proved the root is clean).

### A-02 — advertised auto-applicability on recovered unknown references
`mps_mcp_check_root_node_problems(nodeReference = «UNK_ROOT»)` (Helper now exists — F-06).
**Expected (live-verified):**
- the UnknownDotCall node reports `Error: Resolved unknown call` with
  `ResolvedUnknownNode_QuickFix`, `autoApplicable:true`;
- the UnknownNameRef node reports `Error: Resolved qualified name reference` with
  `ResolvedUnknownNode_QuickFix`, `autoApplicable:true`;
- the interim `int is expected` errors on both nodes still carry their **manual**
  (`autoApplicable:false`) `AddCast_QuickFix` / `ChangeMethodReturnType_QuickFix` entries —
  auto- and manual fixes coexist in one report.

### A-03 — auto-apply round 1: two fixes in one call, new problems surface
`mps_mcp_check_root_node_problems(nodeReference = «UNK_ROOT», autoApplyQuickFixes = true)`.
**Expected (live-verified):**
- `details.appliedQuickFixes = ["QuickFixRuntimeAdapter","QuickFixRuntimeAdapter"]` (exactly 2);
- the returned report is **not** clean: the two replacement nodes (`StaticMethodCall`,
  `StaticFieldReference`) each report `Error: Dynamic reference` — the resolution fix produces
  dynamic references, which a *different* auto-applicable rule flags.

This is the documented single-round semantics: one call = one worklist pass; if the fresh report
still exposes auto-applicable fixes, call again.

### A-04 — auto-apply round 2: convergence
Repeat the same call.
**Expected (live-verified):**
`{"ok":true,"data":"no problems found","details":{"appliedQuickFixes":["Make reference static","Make reference static"]}}`
(this fix *does* have a description block, hence the readable names).

Print `«UNK_ROOT»`. **Expected:** contains `Helper.assist()` and `Helper.LIMIT` — the placeholder
nodes were replaced by real, statically-referenced calls.

---

## 6. Phase N — Negative cases

### N-01 — unknown intention id
`mps_mcp_apply_intention(nodeReference = «I_ROOT», intentionId = "com.example.DoesNotExist_Intention")`.
**Expected (live-verified):** `ok:false`, `code:"NOT_FOUND"`, error text exactly:
`intention or quick fix 'com.example.DoesNotExist_Intention' not available on this node — re-run mps_mcp_list_node_intentions; the model may have changed`

### N-02 — wrong-concept absence
Already recorded in I-06 step 2 (no `InvertIfCondition_Intention` on a FieldDeclaration).

### N-03 — surround-with exclusion
Already recorded in I-01 step 2 (no surround-with entries on an IfStatement listing).

### N-04 — `autoApplyQuickFixes` on a model reference is ignored with a warning
`mps_mcp_check_root_node_problems(nodeReference = «MODEL», autoApplyQuickFixes = true)`.
**Expected (live-verified):** `ok:true` with warning exactly:
`autoApplyQuickFixes applies only to node references; ignored for a model reference`.
Assert **only** the warning; do not assert on `data` (the model branch validates model-level
aspects and may report "no problems found" even while individual roots still contain errors —
observed live).

---

## 7. Final Report & manual cleanup

### Final Report (print this table, completed, as the last output)

| Case | What | Result | Note |
|------|------|--------|------|
| S-00…S-03 | setup | | |
| F-01…F-06 | fixtures + parse `problems` | | |
| I-01…I-08 | intentions | | |
| N-03 | no surround-with listed | | |
| Q-00/Q-01 | report schema / problem without fix | | |
| Q-02…Q-08 | manual fixes | | |
| A-01…A-04 | auto-apply incl. convergence | | |
| N-01, N-02, N-04 | negative | | |

Result values: PASS / FAIL / SKIP. Every FAIL must quote the actual response text. Finish with one
sentence: either "All cases passed." or "N cases failed: <ids>."

### Manual cleanup (for the human — the agent must NOT do this)
The run leaves the solution `mcp.smoke.intentions` (6 root nodes) in the project. To reset for the
next run, in MPS: Project view → right-click solution `mcp.smoke.intentions` → *Delete*, and
confirm deleting the files. (Manual alternative: remove
`<PROJECT_PATH>/solutions/mcp.smoke.intentions/` and the module's entry from
`<PROJECT_PATH>/.mps/modules.xml`, then reload.)

---

## Appendix — why the fixtures look like this (pitfalls found while authoring)

These were discovered by running the scenario steps live; the fixtures were shaped around them.
Keep them in mind before "improving" the Java snippets.

1. **The parser constant-folds.** `"foo" + "bar"` arrives in the model as the single literal
   `"foobar"` — the *Merge String Constants* intention can never fire on parsed Java. Similarly,
   any hook relying on a constant expression surviving verbatim is unreliable.
2. **Not every type error carries a fix.** `String s = o;` (Object→String) reports
   `Object is not a subtype of String` with **no** quick-fixes, while `int n = "text";` gets the
   AddCast/ChangeExpectedType pair. Both facts are asserted (Q-01 vs Q-02).
3. **Static-through-instance Java parses to an `Unknown*` node.** `a.util()` with a static
   `util()` is legal Java, but the parser leaves an `UnknownInstanceMethodCall`; the
   "target method is not static" auto-fix family is therefore unreachable from parsed Java. The
   reachable auto-fix family is `ResolvedUnknownNode_QuickFix` (+ the follow-up
   `makeReferenceStatic`), which Phase A uses.
4. **Node-replacing applies return `targetNode: null`.** Any apply whose execute replaces or
   deletes the target node reports `targetNode: null` plus the node-no-longer-exists warning.
   Observed for `ToggleMethodStatic`, `RemoveCastExpr`, `FlipBinaryOperation`,
   `ReplaceForLoopWithWhileLoop`, `RemoveUnusedAssignment`, and `RemoveUnusedLocalVariable`.
   Expression-rewriting intentions generally build a fresh node rather than mutate in place, so
   expect this for most of them. It is correct behavior, not a failure.
5. **Do not toggle a method that has callers.** The replacement method gets a new node id; call
   sites keep a dangling reference which is *not* reliably auto-fixed and has been observed to
   self-heal only after later persistence/re-resolution — an unstable state no assertion should
   depend on. (`hookToggleStatic` is deliberately uncalled; `AutoToggle.util` is *deliberately*
   called through the Unknown-node path, which is stable.)
6. **Fixes without a description block** list with `description: null`/absent and appear in
   `appliedQuickFixes` as `QuickFixRuntimeAdapter`. Match auto-apply results by count, not name,
   unless the fix is known to have a description.
7. **One auto-apply call is one round.** Fixes applied in a round can surface new auto-applicable
   problems (A-03's `Dynamic reference`); loop until the report is clean or stops changing.
8. **Info-severity problems** appear in check reports (with fixes, e.g. `ConvertString_QuickFix`)
   but not in the parse response's `problems` array, which lists errors and warnings only.
9. **`ReplaceEqualityWithEquals` produces a call the checker flags** (`Reference to wrong
   overridden method` + `equals(Object):boolean ... is out of search scope`) even on a plain
   `String == String` — observed live 2026-07-13. This looks like a defect in the intention's node
   construction or in stub-method reference resolution, not in the MCP layer; I-08 freezes it as
   the expected outcome. If a future run shows I-08 ending with 1 error (i.e. the extra errors are
   gone), the platform issue was fixed — update I-08 rather than failing the run.
