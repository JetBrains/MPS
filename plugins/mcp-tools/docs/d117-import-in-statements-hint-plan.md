# D117 — `import` lines in non-CLASS `parse_java_and_insert` code get an unhelpful syntax error

Status: implemented 2026-10-27, not committed; implementation review settled in two rounds (fixes: probed EXPRESSION
input, the narrowed declaration character class, no debug output). `AbstractOpsPropertyProblemsTest` 122/122 and
`McpToolsIntegrationTestSuite` with `MCP_TESTS=McpJavaToolsTestSuite` 80/80 green. Live replay of transcript line 155
done the same day on a restarted MPS (console mode; recorded in the D117 archive entry). Plan draft 5, approved (round 4), live-probed before the change
(see "Live probes"). Remedy **S** (server message), no docs change. Review rounds 1–3 ("approve
with changes" each time; 1, 2 and 1 blocking) are folded in; see "Review log".

## The defect (from `study/docs-defects.md:49`)

`import …;` lines in `featureKind:"STATEMENTS"` code produce "Syntax error on token import, assert expected …", with
no hint that imports are not accepted there and that fully qualified names are needed. Filed remedy: **S** — detect
leading `import` declarations in non-class feature kinds and say "use fully qualified names (or featureKind CLASS)";
**D** alternative — one bullet in `parameters-rules.md`.

## What the transcript shows (re-read 2026-10-27, `~/MPSProjects/mcp-study/runs-r43/S1-opus-1-worker.jsonl`, 0-based JSONL line index)

| line | what happened |
|---|---|
| `155` | `parse_java_and_insert`, `featureKind:"STATEMENTS"`, `insert.mode:"replace"` into a constraints scope body; `code` starts with `import org.jetbrains.mps.openapi.model.SNode; import java.util.List; import java.util.ArrayList; import jetbrains.mps.scope.ListScope;` on one line |
| `156` | `INVALID_REQUEST`: `The Java code has syntax errors (the parser accepts Java 8 syntax): line 1: Syntax error on token "import", assert expected; line 1: Syntax error on token "import", yield expected; line 1: Syntax error on token "import", assert expected (and 1 more). Nothing was inserted: the parser's recovery would have repaired the code … Fix the code: an expression that is not a statement needs return, an if, or featureKind: "EXPRESSION"; newer syntax … is not supported. To insert the repaired result anyway, pass recovery: true.` |
| `157` | worker: "Use fully qualified names instead." |
| `158` | same code with every name fully qualified and no imports → `ok:true` (with a `problems` array, not clean) |

Cost: 1 turn (opus worked it out). The message's generic advice (expression statements, newer syntax, `recovery:
true`) points the wrong way for this input; a weaker worker could follow `recovery: true` and get a silently
repaired body whose short names resolve only by chance. That, more than the one turn, is why the message is worth
fixing.

## Live probes (2026-10-27, MPS 2026.1 build 261.25134, current code, all via `insert.mode:"console"`)

| input (`STATEMENTS` unless noted) | result |
|---|---|
| `import java.util.List; import java.util.ArrayList;` + two statements | rejected, `line 1: … "import", assert expected; line 1: … "import", yield expected` + the generic advice (one ecj error per import, as in the transcript) |
| `import java.util.List; x != null && y;` | rejected; the header error **and** `line 1: Syntax error on token "!=", invalid AssignmentOperator` — a same-line body error that the offset split must keep (test 5) |
| `EXPRESSION`: `import java.util.List; new java.util.ArrayList<String>()` | rejected, `line 1: … "import", delete this token` + the EXPRESSION-wrapper note |
| `/* c */` / `package p.q;` / `import java.util.List;` / `int n = 1;` on four lines | rejected, `line 2: … "package" …; line 3: … "import" …` — header detection must skip the leading comment |
| `recovery: true`, the two-import input | **`ok:true`**, recovery warning, one `problems` error `StaticFieldReference: No reference in the obligatory role 'variableDeclaration'`; `idea.log` logs `SEVERE … SReference - Could not resolve reference 'classifier' from … ClassifierType` for the short `List<String>` the dropped import was meant to resolve (not in the envelope) |
| `recovery: true`, `import java.util.List;` alone | `ok:true`; the console body prints as `{ assert List.<no static member>; }` |

So ecj's recovery does not drop an import: it turns it into an `assert` statement on a broken static field reference.
That settles round 2's open question: test 4 expects `ok:true` with the hint in the warning (the `Parser returned
no nodes` branch stays covered by the plan but is not what a header produces), and it confirms that offering
`recovery: true` for a header is wrong.

## Where the message comes from

`JetBrainsMPSJavaMcpToolset.prepareJavaParseResult` (`JetBrainsMPSJavaMcpToolset.kt:95-199`, one caller at `:933`,
which serves root, child, replace and console mode):

- `effectiveJavaParseSource` maps `FIELD`/`METHOD`/`NESTED_CLASS` → `CLASS_CONTENT` and wraps `EXPRESSION` as
  `Object __mcp_expr__ = <code>;` under `STATEMENTS` (`:70-82`).
- When `parseResult.errorMsg != null`, `JavaSyntaxProblems.errors(...)` re-runs ecj reflectively and
  `JavaSyntaxProblems.describe(...)` formats up to three errors (`java/JavaSyntaxProblems.kt`).
- Without an explicit `recovery: true` the call is rejected with `syntaxErrorRejection(details)` (`:173`, `:201-207`);
  with it, the same details go into a warning (`:165-170`).

Only `CLASS` (`parseCompilationUnit`, `JavaSyntaxProblems.kt:45`) accepts `import` / `package` declarations;
`CLASS_CONTENT` and `STATEMENTS` (and therefore `FIELD`, `METHOD`, `NESTED_CLASS`, `EXPRESSION`) reject them.
`CLASS_STUB` never reaches this code: the request schema rejects it (`McpToolInputSchemas.kt:552`).

Model imports for qualified names: `JavaParseResolver.updateModelDependencies` (`JavaParseResolver.kt:345-366`)
imports the models of references that **resolved**, and a model is reachable only through the module's existing
dependencies (only the JDK dependency is staged, `addJDKDependency`). Console mode needs
`mps_mcp_model_dependency(modelReference:"console", …)` first (`CONSOLE_UNRESOLVED_NAMES_WARNING`, `:39-43`). The
hint must not promise more than that.

## Changes

### 1. `java/JavaSyntaxProblems.kt` — detect a leading header

Add two pure functions (no MPS, no ecj), so they are unit-testable:

```kotlin
data class Header(val declarations: List<String>, val end: Int)

/**
 * D117: the `import` / `package` declarations [code] starts with, in order, each trimmed up to and including its
 * `;`, and [Header.end], the offset in [code] just past the last `;`. Whitespace and `//` / `/* */` comments
 * before and between them are skipped; scanning stops at the first other token. Null when there is none. Only
 * featureKind CLASS accepts these, so a header explains the syntax errors of any other kind.
 */
fun leadingHeader(code: String): Header?
```

Matching: after skipping whitespace and comments, repeatedly match `(import|package)\b[^;=(){}<>"]*;` (the
excluded characters never occur in a declaration, so an import missing its `;` does not swallow the next
statement — implementation review). `import` and
`package` are reserved words, so any such leading token is a header attempt; `\b` excludes `important = 1;` /
`imports.add(x);`. Comments inside a declaration such as `import/*c*/a.B;` fall out of the character class; an annotated
`@Ann package p;` starts with `@` and is not detected (generic message, harmless). An `import` after the first statement is not detected (not seen in any round; it keeps the generic message).

```kotlin
/** The D117 hint for [declarations] under the requested [featureKindText]; null when the list is empty. */
fun headerHint(declarations: List<String>, featureKindText: String): String?
```

Two sentences at most. With at least one `import` (the example name comes from the first import, so the worker sees its own class:
`import a.B;` → `a.B`; a static import drops the member, `import static a.B.c;` → `a.B`; a type wildcard
`import a.b.*;` → `a.b.<Class>`):

> The code starts with `import java.util.List;` (and 3 more declarations), but featureKind "STATEMENTS" accepts no
> `import` or `package` declarations. Remove them and write the classes fully qualified (`java.util.List`): they
> resolve against the target model's imports and module dependencies, and outside the MPS Console the tool imports
> the models they point to, while console code needs `mps_mcp_model_dependency(modelReference: "console", …)` first.

One wording for every mode: a `child` / `replace` into the console input is recognised as a console insert only
after preparation (`ConsoleAwareResolution`, `JetBrainsMPSJavaMcpToolset.kt:493-496`, `:661-664`), so
`prepareJavaParseResult` cannot tell console from model code. The hint does not recommend featureKind "CLASS":
console mode accepts only EXPRESSION / STATEMENTS (`:402`), and for a model body CLASS is not an alternative either.
With only a `package` declaration, the second sentence is "Remove the `package` declaration." (no qualified-name
advice).

### 2. `JetBrainsMPSJavaMcpToolset.prepareJavaParseResult` — use it

Inside the existing `if (parseResult.errorMsg != null)` branch, once `syntaxDetails` is set and only when
`effectiveSource.featureKind != FeatureKind.CLASS`:

```kotlin
// D117: ecj reports a leading `import` as "Syntax error on token import, assert expected", which says nothing
// about the cause; name it. CLASS accepts a header, and CLASS_STUB is rejected before this point.
val header = JavaSyntaxProblems.leadingHeader(code)
val headerHint = JavaSyntaxProblems.headerHint(
    header?.declarations.orEmpty(),
    if (isExpression) "EXPRESSION" else featureKind.name,
)
```

- Detection runs on the caller's `code`, not `effectiveSource.code`, so an `EXPRESSION` that starts with `import`
  is caught. The requested kind's text is derived from the existing `featureKind` / `isExpression` parameters
  (`featureKind` is still `METHOD`, not `CLASS_CONTENT`, here), so `prepareJavaParseResult`'s signature does not
  change.
- **Errors kept** — split by character offset, not line (the transcript puts imports and code on one line):
  `JavaSyntaxProblems.Problem` gains `sourceStart`, read reflectively with `getSourceStart` next to
  `getSourceLineNumber` (`JavaSyntaxProblems.kt:63-66`). The problems with `sourceStart >= header.end` (for
  `EXPRESSION` shifted back by the length of the `Object __mcp_expr__ = ` prefix, `JetBrainsMPSJavaMcpToolset.kt:81`)
  go through `describe` and follow the hint as `Other parser errors: …`, so a body with its own syntax error is
  reported in the same call; the header's own "assert expected" errors are dropped. A cascade error ecj places
  after the header shows up there too — mild noise, accepted. `sourceStart` is nullable per problem (its own
  `runCatching`, so a failing `getSourceStart` does not void the whole `errors()` call); a null or negative value
  counts as unknown and that problem is kept. When `errors()` itself returns null, the existing `errorMsg`
  fallback applies, with the hint in front.
- **Rejection** — `syntaxErrorRejection(details, headerHint)`: with a hint, the message is
  `The Java code has syntax errors (the parser accepts Java 8 syntax): <hint> [Other parser errors: …] Nothing was
  inserted.` Dropped with the header's ecj errors are the expression-statement / newer-syntax advice and the
  `recovery: true` opt-in: none of it applies, and recovery is no fix for a header — even a benign recovery leaves
  short names that resolve only by chance. Without a hint the message is unchanged byte for byte.
- **Recovery warning** (`recovery && recoveryExplicit`) — append the hint to the existing warning text.
- **No nodes after recovery** (`:180-183`, today `Parser returned no nodes: <syntaxDetails>`): ecj's recovery may
  drop everything for a header-led input. With a hint, that `Err` reads `Parser returned no nodes: <hint> [Other
  parser errors: …]` — the same pruned details as the rejection, so the "assert expected" noise does not return on
  the `recovery: true` path.

### 3. Tests

Unit — `unit/AbstractOpsPropertyProblemsTest.kt`, next to the existing `effectiveJavaParseSource` tests (`:1514`,
`:1522`; already in `McpNodeToolsTestSuite.java:43`, so no suite registration):

- one import → that import; four imports on one line (the transcript's shape) → all four, in order;
- `import static a.B.c;`, `import a.b.*;`, `import/*c*/a.B;`, `package p.q;` followed by imports;
- leading blank lines, `//` and `/* */` comments before / between the declarations; `header.end` is the offset
  just past the last `;` in each case (e.g. `/* c */ import a.B; x();` → the offset of ` x();`);
- no header → null; `important = 1;`, `imports.add(x);`, `int x; import a.B;` → empty;
- `headerHint`: names the requested kind, the first declaration, the "and N more" count, and the first import's
  qualified-name example: `import a.B;` → `a.B`, `import static a.B.c;` / `import static a.B.*;` → `a.B` (drop
  the member), `import a.b.*;` → `a.b.<Class>`; always names `mps_mcp_model_dependency`; package-only → "Remove
  the `package` declaration." and no qualified-name clause; empty list → null.

Integration — `integration/JetBrainsMPSJavaMcpToolsetIntegrationTest.kt` (`McpJavaToolsTestSuite.java:24`), using
`seedMethodWithBody` (`:1037`) as the D45 body tests around `:890` do:

1. `STATEMENTS` with `import java.util.List;` + `List<String> xs = null;`, `child` into the method's `body` →
   `ok:false`, `INVALID_REQUEST`; error contains `featureKind "STATEMENTS"`, `fully qualified`,
   `mps_mcp_model_dependency`, `import java.util.List;`; does **not** contain `recovery: true`, `assert expected`
   or `featureKind "CLASS"`; body unchanged.
2. `METHOD` with a leading import and a `contextNodeRef` to the seeded class → same hint, naming `METHOD`.
   `seedMethodWithBody` returns only `(methodRef, bodyRef)`; read the method's parent ref in `readOnRepo` (no
   helper signature change).
3. `EXPRESSION` whose code starts with `import java.util.List;` → hint naming `EXPRESSION` (the preparation
   rejection fires before the D45 expression-in-StatementList gate).
4. `recovery: true` with a leading import → `ok:true` (live probe), a warning contains the hint, and the inserted
   body holds an `AssertStatement` (pins the "recovery is no fix" claim; if ecj ever changes and the call ends in
   `Parser returned no nodes`, the test should fail loudly so the branch gets its own assertion).
5. A header plus a body syntax error on the same line (`/* c */ import java.util.List; a != null && b;`) → the
   hint **and** `Other parser errors:` naming the body error; not `assert expected`. Integration, since it needs
   real ecj offsets.

`ConceptFunctionParameterBindingIntegrationTest:416` (no-import syntax error, already asserts `recovery: true`) gets
one extra `assertFalse(error.contains("featureKind \""))` to pin the byte-for-byte claim; no new test for it. Console
inserts need a live console, which the integration fixture does not have (`:496`, `:513` only test its absence); the
single wording is covered by the unit test.

Existing CLASS-with-imports tests (`:94`, `:120`, `:145`, `:170`) must stay green: the hint is never computed for
`CLASS`.

### 4. Validation

- `build_project` (IDEA MCP), then run `McpJavaToolsTestSuite` and `McpNodeToolsTestSuite`, checking the new test
  names appear in the results (stale-bytecode trap) and that no other `JUnitStarter` JVM is running machine-wide
  before starting.
- Live check when the MPS MCP server is up (it is not connected in this session): on a `recipes` study copy, replay
  transcript line 155's request and confirm the new message; then the line-158 form still inserts.

### 5. Bookkeeping

- Move D117 from `docs-defects.md` to `docs-defects-archive.md` as fixed (S), with this plan linked and re-measure
  S1 outstanding; extend the header paragraph's archive list.
- Commit as `mcp-tools - D117 parse_java_and_insert names leading import declarations in non-CLASS code`.

## Out of scope / rejected

- **D** (a bullet in `parameters-rules.md`): the worker did not read that file before line 155, and the message now
  says it at the point of failure; a bullet would add bytes for every reader to fix a once-seen, one-turn defect.
  The always-loaded tool description is not changed either.
- **Accepting the imports** — strip them and parse `STATEMENTS` inside a synthetic compilation unit
  (`<imports> class __Mcp { void __m() { <code> } }`) so short names resolve through them: it would make the
  transcript's input just work, but it touches line numbers, expression unwrapping, `ConceptFunction` parameter
  binding and recovery for a defect seen once. Revisit if D117 recurs.
- `import` after the first statement: still the generic message.

## Review log

Round 1 (draft 1, "approve with changes"):

1. BLOCKING — the hint claimed "the tool adds the model imports that qualified names need"; only resolved names
   in modules that already depend on the target are imported, and console mode needs `mps_mcp_model_dependency`.
   Reworded, console variant added.
2. The `recovery: true` decision was circular (test 4 was to justify it). Decided up front; test 4 now only
   asserts the warning.
3. `package`-only hint unspecified — variant and unit case added.
4. Qualified-name regex replaced by `(import|package)\b[^;]*;`.
5. Guard is `!= CLASS`; `CLASS_STUB` is unreachable (schema rejects it).
6. No new featureKind-text parameter; derived from `featureKind` / `isExpression`. (A `consoleMode` flag is added
   for finding 1 instead.)
7. Duplicate no-import test dropped in favour of one assertion on `ConceptFunctionParameterBindingIntegrationTest:416`;
   fixture helper named; EXPRESSION case added.
8. ecj details dropped when the hint is present; hint capped at two sentences.

Round 2 (draft 2, "approve with changes"):

1. BLOCKING — `insert.mode == "console"` misses console `child` / `replace`, which are recognised only after
   preparation. `consoleMode` dropped; one wording true in every mode, and no "use CLASS" advice (console cannot).
2. BLOCKING — `recovery: true` may end in `Parser returned no nodes` (`:180-183`) without the hint. Hint appended
   there too; test 4 accepts both outcomes.
3. `seedMethodWithBody` returns no class ref — test 2 reads the method's parent.
4. Dropping all ecj details could hide a body error — only header-line errors are dropped; the rest follow as
   `Other parser errors:` (test 5).
5. "imports the models" holds with the default `resolveReferences`; accepted as is.

Round 3 (draft 3, "approve with changes"):

1. BLOCKING — the line-based split dropped same-line body errors (the transcript's shape; test 5 contradicted it),
   and the header position was not returned. Split by ecj `getSourceStart` against `Header.end`, with the
   EXPRESSION prefix shift; same-line test.
2. Test 1 still asserted `"CLASS"` — now asserts `mps_mcp_model_dependency` and the absence of `featureKind "CLASS"`.
3. The no-nodes message shape is now specified with the same pruned details; asserted in test 4's `ok:false` branch.

Round 4 (draft 4, "approve"): offset split confirmed consistent, EXPRESSION shift exact (`:79-81` only prepends).
Two optional notes folded in: per-problem nullable `sourceStart`, and a negative offset counts as unknown.
