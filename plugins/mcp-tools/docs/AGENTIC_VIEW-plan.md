# AGENTIC VIEW — implementation plan

A fifth `mps_mcp_print_node` format: a compact, line-oriented tree with node ids, built from the model. Analysis and
evidence are in `AGENTIC_VIEW-handoff.md` (this directory); "handoff §5 #6" refers to it. Where the two files
differ, this plan wins.

- **Study directory**: `~/MPSProjects/mcp-study/adhoc-reflective/` (dumps, question batteries, keys, harness).
- **Study scripts**: `~/MPSProjects/mcp-study/adhoc-study/scripts/` (`mps_control.sh`, `mcp_call.py`,
  `run_worker.sh`, `worker_mcp_config.py`, `new_study_project.py`); the map is `plugins/mcp-tools/study/README.md`.
- **Work directory for this plan**: `~/MPSProjects/mcp-study/adhoc-agentic/` (new; prototype, live-check scripts,
  batteries, results). Nothing from it is committed.

**Status (2026-11-11): P0–P5 are done.** The decision log in §9 has the answers to Q1–Q10, the deviations and the
measured results; the study report is `report.md` in the work directory. P6 is open.

The phases run in order. Each has an exit gate; do not start the next phase before the gate holds.

| Phase | What | Gate |
|---|---|---|
| P0 | Offline prototype; settle the notation | Q1–Q3 answered; grammar and primer frozen |
| P1 | Server implementation | Compiles; `get_file_problems` clean |
| P2 | Automated tests | Umbrella suite green |
| P3 | Live checks against a running MPS | L1–L13 pass; IDE log clean |
| P4 | Measurement study | Success criteria met, or a recorded decision |
| P5 | Skills and tool descriptions | Catalog tests green; routing probe passes |
| P6 | Follow-ups | Listed, not part of the gate |

---

## 1. Decisions taken for v1

These are fixed unless a check in P0 or P3 overturns one. Each overturn is recorded in §9.

| # | Decision |
|---|---|
| D1 | Format literal `AGENTIC VIEW`. `AGENTIC_VIEW` is accepted too. Other literals keep their current matching. |
| D2 | Always the whole subtree. `deep` is ignored for this format. |
| D3 | One new tool parameter: `nodeDepth: Int = -1`, with the meaning it has in `get_project_structure` (`-1` all, `0` the node alone, `n` levels). Used by this format only. No other new parameter in v1: every parameter costs schema tokens in every session. |
| D4 | Over `maxInlineBytes` the output is cut by depth, not sent to a file (P1.4). A file is the last resort and is raw `.txt`. |
| D5 | Rendered from the model, in a new `common/AgenticViewRenderer.kt`. No editor is built. |
| D6 | Unset features are printed for every node. Deprecated features are printed only when set; a `# deprecated` header line names them once per concept of the printout, so that a reader can tell "declared, deprecated, unset" from "no such feature" (P0 probe, item B6). |
| D7 | No notation snippet (handoff §5 #15) and no cardinality or type legend (#16) in v1. |
| D8 | `editorHints` is ignored with the same warning that JSON gives. The envelope has no `editorHints` block. |
| D9 | The JSON walk (`nodeHierarchyJsonObject`) is not refactored. Agreement between the two is enforced by a parity test (P2) and a live parity check (L1), both under the mapping of §2.1. |
| D10 | Not an input for mutation tools. |
| D11 | A node id is printed as `PersistenceFacade` prints it in a node reference (it escapes `%`, `(`, `)`, `/`), with any whitespace also `%XX`-escaped. So an id never contains a space. `unescapeRefChars` decodes every `%XX`, so the id still resolves. |
| D12 | The `*` mark means "not stored; this is the value a reader gets". It is decided by the display value: an unset boolean prints its display value, or `false` when that is empty, with `*`; any other unset property whose display value is not empty prints `prop=value*` (an enum default, a value from a constraints getter). An unset property with an empty display value has nothing to print; it goes to the `empty:` line. |

## 2. Notation (working grammar, frozen at the end of P0)

```
# AGENTIC VIEW 1 | model m0=<model reference> | node reference = <model>/<id>
# models m1=<model reference> m2=<model reference> !foreign
# concepts <language>: Name Name … | <language>: Name …
# deprecated, printed only when set: <Concept>: <feature> <booleanProperty>=false … | <Concept>: …
# cut at depth 3 of 9: 41 of 88 nodes printed; print a "(+N)" node by its id to continue
<node line>
  <node line>
```

Node line, in this order; every part but the concept and the id is optional:

```
<indent><role>[<index>]: <Concept> #<id> <name> <prop>=<value>… -> <ref>=<target>@<mN>#<id>… <flags> (+N)
<indent>  empty: properties <p> <p>; references <r> <r>; children <c> <c>
```

| Part | Rule |
|---|---|
| indent | Two spaces per level. No tabs, no trailing spaces. |
| role | The containment role. Absent on the printed node itself. |
| `[index]` | Present when the role is multi-valued (`0..n`, `1..n`), even for a single child. Zero-based. |
| Concept | Short name. Its language is in the `# concepts` header. If two languages in the printout have the same short name, both are printed as `<language>.<Name>`. |
| `#id` | See D11. |
| name | The `name` property when set. It is not repeated among the properties. No presentation fallback. |
| `prop=value` | Stored properties, then unset ones that read as a value, marked `*` (D12). Declared order within each group. |
| `-> ref=target` | `target` is the target's name, else its presentation. `@mN` is omitted for the printed node's own model. A reference without a resolvable target prints `?` as the target and the flag after the token: `-> ref=?@mN#id !unresolved`, or `-> ref=? !unresolved` when no target reference is stored. |
| attributes | Children in `smodelAttribute` come first under their node, in stored order, with `@attr:` in place of the role and no index. A property attribute prints `@prop(<property>):`, a reference attribute `@ref(<role>):`, a child attribute `@child(<role>):` (Q5). |
| `empty:` line | Unset properties with an empty display value, unset references, empty child roles. A group without entries is left out; the line is absent when all three are. A required reference or child role (`1`, `1..n`) carries `!required`. |
| flags | `!undeclared` after a stored feature the concept does not declare. `!conceptNotLoaded` on a node. `!deprecated` after a set deprecated feature. `!foreign` after a model of another open project. |
| `(+N)` | The node has N descendants that are not printed (depth cut). |
| duplicate names | Two printed features of one node with the same name get `@<OwnerConcept>`: `isDeprecated@Classifier`. |

**Quoting.** A name, a reference target, an enum literal or a raw undeclared value is printed bare when it is a
plain token (letters, digits, `_`, `.`, `$`, `-`), and as a JSON string otherwise. A string property value is always
a JSON string. Booleans and integers are bare.

The `# deprecated` line lists, for each concept in the printout that has any, its deprecated properties, references
and child roles; a boolean property is written `name=false`. The line is absent when there are none.

BaseConcept features (`virtualPackage`, `shortDescription`, `alias`) are printed only when set and are not listed
in the `# deprecated` line. `smodelAttribute`
never appears on the `empty:` line.

### 2.1 Mapping to JSON deep (the parity rule)

| JSON deep | AGENTIC VIEW |
|---|---|
| node `reference`, `concept` | `#id` (+ model of the printout), Concept |
| child role and position in `nodes` | `role[index]`; for `smodelAttribute`, the order of the `@…:` lines |
| property entry of a stored property | `prop=value` with the same display value; the `name` property ↔ the name part |
| property entry of an unset property (`isDefault:true`, or a constraints-getter value) | `prop=value*` |
| — (omitted: a stored boolean `false`) | `prop=false` |
| property entry of an unset BaseConcept property (`shortDescription` or `alias` from a getter) | not printed |
| reference entry | `-> ref=target@mN#id`; `target: null` ↔ `? !unresolved` |
| `declared:false`, `conceptLoaded:false` | `!undeclared`, `!conceptNotLoaded` |
| empty role of cardinality `1` / `1..n` | on the `empty:` line with `!required` |
| — (omitted: unset boolean) | `prop=false*` |
| — (omitted: other unset property with an empty display value, unset reference, empty optional role) | on the `empty:` line, unless deprecated |
| `type`, `cardinality`, `doc`, `deprecated`, `typeReference`, `conceptReference` | not printed (`!deprecated` on a set deprecated feature only) |

Parity means: every left-hand item has its right-hand item, and every right-hand item is explained by one row.

## 3. Open questions and where each is answered

| # | Question | Answered by | Decision rule |
|---|---|---|---|
| Q1 | Sigils and the `empty:` line: ASCII as in §2, or Unicode (`∅`, `→`); labelled groups or `;`-separated ones | P0 token measurement | The cheapest variant in tokens; ASCII on a tie within 3% |
| Q2 | Defaults: `*` suffix on the node line, or a separate `defaults:` line | P0 tokens + reading probe | The cheaper one that scores full marks; `*` on a tie |
| Q3 | Concept legend: grouped by language (§2), or a language alias on every node (`l1:IfStatement`) | P0 tokens + reading probe (items P-FQ1, P-FQ2) | The cheaper one that answers both items |
| Q4 | Bare names: does a bare name after the id read reliably, or must names be quoted | P0 reading probe (name items of battery B) | Bare unless an item is lost |
| Q5 | Does `lang.core` have `ChildAttribute`? How do `PropertyAttribute` and `LinkAttribute` expose the feature they annotate? | P0: `mps_mcp_get_concept_details` on `jetbrains.mps.lang.core`; read `AttributeOperations` | Kinds that exist get their marker; anything else `@attr:` |
| Q6 | Is the depth cut usable: do agents continue from a `(+N)` node in one more call? | P4 battery C | If a C target is missed: cut the largest subtrees first instead of a uniform depth |
| Q7 | With AGENTIC VIEW at hand, do agents still print JSON before an edit? | P4 battery E, arm A-open (JSON allowed, prints counted) | A result; it sets the wording of the edit row in P5.1 |
| Q8 | Is a notation snippet needed for code-heavy roots? | P4, battery A target T3 (`CommentLine_Behavior`) | Not needed if arm A loses no T3 item and its T3 print is at most 0.6× the reflective one in tokens; otherwise it moves to P6 with the numbers |
| Q9 | Is it at least as fast as JSON deep? | L11 | If slower: profile the deprecation lookup first (P1.1) |
| Q10 | Do agents pick the right `print_node` variant once the skills say so? | P5.4 routing probe | The pass rule of P5.4 |

---

## P0. Offline prototype and notation

No server change. Input: `dumps/*.json.json` (JSON deep of the 7 study roots) plus one
`mps_mcp_get_concept_details(detail="full")` result per language used, saved to the work directory. The concept
records supply what the JSON omits: unset properties, unset references, empty optional roles, and `deprecated` per
feature. They do not give a feature's owner concept; the prototype prints `@?` where two names collide.

1. Answer Q5 from the sources. Fix §2 if needed.
2. Write `proto.py` in the work directory. It prints the §2 notation from a JSON dump and the concept records.
   Flags select the variants of Q1–Q4. It writes each printout in the form the tool delivers: the envelope
   `{"ok":true,"data":"<text>"}` with the text as one escaped JSON string.
3. **Token measurement.** There is no local tokenizer. One worker per variant runs 7 Bash `cat` calls, one per
   envelope file, and answers "OK". Do not use `Read` (it adds line numbers) and do not concatenate the files (Bash
   output is cut at about 30000 chars). Check each tool result's length in the transcript against the file size.
   Tokens = final context minus a calibration run that cats 7 empty files. Report chars and tokens per variant and
   root, and the share of the `empty:` lines and `*` values.
4. **Reading probe.** For the two cheapest variants, run battery B (16 questions, targets T4–T6) with one opus
   worker each. The worker gets the three prototype envelopes by `cat` instead of the tool. Add two keyed items:
   - P-FQ1: "the fully qualified name of the concept of the node with id …";
   - P-FQ2: "which language declares the concept of the node with id … " (the `IfStatement` statement of T5; the
     Kaja concept of the same name is the target of `applicableConcept` in the same printout).
5. **Primer.** Write the 4–6-line format primer for arm A from the frozen grammar. P5 reuses it in the reference.
6. **Size table.** Fill an "actual" column next to handoff §7 for all 7 roots (chars and tokens).

**Gate.** Q1–Q5 are recorded in §9. The probe scores 14/14 on the shared items, answers B7, B12, P-FQ1 and P-FQ2,
and has no confident wrong answer. §2 is updated and frozen. If the probe fails, change the notation and repeat
step 4 only.

## P1. Server implementation

Files, all under `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/`:

| File | Change |
|---|---|
| `common/AgenticViewRenderer.kt` (new) | `render(node, repository, currentProject): Rendering`. One model walk under a read action produces a list of lines, each with its depth and descendant count, plus the legends and `unloadedConcepts`. `Rendering.text(maxDepth)` assembles a printout. Quoting, id escaping and line assembly are separate functions that need no `SNode`. |
| `JetBrainsMPSNodeMcpToolset.kt` | `print_node`: literal dispatch (D1), `nodeDepth` parameter (D3), new branch, error text "Allowed values: JSON, HTML, PLAIN TEXT, IMAGE, AGENTIC VIEW". The full `@McpDescription` rewrite is in P5. |
| `common/AbstractOps.kt` | A text variant of `finalizeResult` that writes a raw `.txt` temp file with `deleteOnExit`. Do **not** add it to `createdTempJsonFiles`: that list is for files mutation tools consume and delete. |

### P1.1 Traversal

Copy the semantics of `addNodeFeatures` / `addNodeChildren` (`AbstractOps.kt`, around lines 1686–1825):

- Properties: declared ones in concept order, then stored undeclared ones (`!undeclared`, raw value). Values come
  from `propertyDisplayValue`; "stored" from `SNodeAccessUtil.hasProperty`; an enum default from
  `defaultEnumLiteralName`. A stored property prints its display value, or `false` for a stored boolean whose
  display value is empty. Unset properties follow D12: the display value decides between `prop=value*` and the
  `empty:` line.
- References: stored ones in stored order, with `!undeclared` as JSON does. Declared ones without a stored
  reference go to the `empty:` line.
- Children: declared roles in concept order, then undeclared stored roles. Empty declared roles go to the `empty:`
  line.
- Deprecation: the same source that `addDocAndDeprecated` uses (`getDeprecationInfo` of the feature declaration).
  Resolve it once per concept and cache it for the render.
- Unloaded concept: `!conceptNotLoaded`, stored features only, no `empty:` line; add the concept to
  `unloadedConcepts` and reuse `unloadedConceptsWarnings`.
- Foreign project: use `ProjectMembershipCache` once per model in the legend.

### P1.2 Entry point

Reuse the JSON branch: `withMpsProject`, `executeShortReadOnEdt`, `resolveNodeReferencePreferringProject`,
`unresolvedPrintNode`. `nodeDepth` passed with another format is ignored without a warning.

### P1.3 Envelope

`{ok, data: "<text>", details: {agenticView: {nodes, printedNodes, cutDepth?}}, warnings?}`. `cutDepth` is present
only after a cut. Warnings: unloaded concepts, ignored `editorHints`, and the cut.

### P1.4 Size-aware cut

1. Walk once. The effective depth is `nodeDepth`, or the tree's real depth for `-1`.
2. Measure a printout as `finalizeResult` does: the length of the text as a JSON string.
3. If it exceeds `maxInlineBytes`, take the largest smaller depth whose printout fits; depth `1` is the floor. The
   per-depth sizes come from the recorded lines, without a second walk.
4. If depth 1 still does not fit, write the full text to a `.txt` temp file and return its path, with a warning.
5. A cut adds the `# cut …` header line and a warning that says how to continue.

**Gate.** `build_project` succeeds; `get_file_problems` is clean on the three files.

## P2. Automated tests

| Test | Kind | Suite | Covers |
|---|---|---|---|
| `AgenticViewLinesTest` (new, `test/…/unit/`) | unit | `McpNodeToolsTestSuite` (next to `CellGridTextRendererTest`) | Quoting; id escaping (a foreign id with a space, `(`, `/`); line assembly; duplicate-name suffix; the `<language>.<Name>` rule for two concepts with one short name; `empty:` groups; depth selection from per-depth sizes |
| `PrintNodeAgenticViewIntegrationTest` (new, `test/…/integration/`) | integration | `McpNodeToolsTestSuite` | The cases below |
| `JetBrainsMPSNodeMcpToolsetIntegrationTest` | existing | — | The "Allowed values" assertion |

Integration cases, each on an existing fixture of the mcp-tools tests where one exists:

1. **Parity with JSON deep** under §2.1. A test-side parser reads the text by the §2 grammar and compares it with
   `nodeHierarchyToJson` of the same root.
2. Defaults: an unset boolean and an unset enum print with `*`; an enum stored at its default literal prints
   without it; an unset string and an unset integer are on the `empty:` line; an unset property with a constraints
   getter prints the getter's value with `*` (if a test fixture has one).
3. Empty features: an empty optional role and an unset reference are on the `empty:` line; a required empty role has
   `!required`; a deprecated empty role is absent.
4. Attributes: a node attribute, a property attribute and a reference attribute print under the annotated node with
   the right marker.
5. `!undeclared` and `!conceptNotLoaded`, on the fixtures the JSON tests for `declared:false` and
   `conceptLoaded:false` use; the envelope warning is present.
6. A reference into another model has `@mN` and a legend entry; a reference to a Java stub node rebuilds to a node
   reference that resolves; an unresolved reference prints `? !unresolved`.
7. `nodeDepth` 0, 1 and -1; the `(+N)` counts add up to the total.
8. A small `maxInlineBytes` gives a cut, not a file; a tiny one gives a `.txt` file whose content is the raw text.
9. `AGENTIC_VIEW`, `agentic view` and `AGENTIC VIEW` are accepted; `editorHints` gives the warning.
10. No line has trailing whitespace; two prints of the same node are identical.

**Gate** (`.agents/quality-gates.md`): `build_project`, then the `McpToolsIntegrationTestSuite` umbrella, because
`common/` changed. Check first that no test JVM runs, and afterwards that the new test names appear in the result.

## P3. Live checks

Setup:

1. **Before** restarting MPS, save a baseline of the 7 corpus roots in JSON deep, `PLAIN TEXT`, `PLAIN TEXT` +
   `reflective` and `HTML` with `mcp_call.py`.
2. `build_project`, then restart MPS with `mps_control.sh restart /Users/vaclav/work/MPS/myMPS-fix`. Never `kill`.
   Check that the capture belongs to this worktree. If the wait times out, the "Trust project" dialog is the usual
   cause: ask the user.
3. Run the checks with `mcp_call.py` and a script `live_checks.py` in the work directory, so that they do not depend
   on the tool schema of the orchestrating session. Note the start time for L12.

| # | Check | Pass when |
|---|---|---|
| L1 | Parity on the 7 corpus roots: `live_checks.py` parses each AGENTIC VIEW print and compares it with JSON deep under §2.1 | Parity on all 7 |
| L2 | Hygiene | No trailing spaces or tabs; a second print is identical |
| L3 | Attributes: `reduce_IfStatement` (4 node attributes), and one Kaja generator template with a property macro and one with a reference macro (find them with `mps_mcp_query_nodes`) | Each attribute is under the node it annotates, with `@attr:` / `@prop(x):` / `@ref(x):` |
| L4 | Stub ids: the 6 JDK targets of `reduce_IfStatement`; then print one of those targets itself with `nodeDepth: 1` | Each `<model>/<id>` rebuilt from the legend resolves in `print_node` |
| L5 | Unset features against reflective: Kaja `IfStatement_Editor` | The `empty:` entries plus the `*` values equal: the reflective `<no x>` and `<< ... >>` rows, plus the reflective value rows whose property the JSON does not store, minus deprecated features |
| L6 | Deprecated and duplicate features: the `ClassConcept` in `reduce_IfStatement` | No `field`, `constructor`, `staticMethod`; `isDeprecated` at most once, or with `@Owner` |
| L7 | Budget: BL `IfStatement_Editor` with the default limit; with `maxInlineBytes: 3000`; with `100` | Inline and uncut; cut, and the prints of its `(+N)` nodes together cover all 88 nodes; a `.txt` path whose file is the raw text |
| L8 | `nodeDepth` 0, 1, 2 on the Maze script | Depths as asked; printed nodes plus `(+N)` equal 49 |
| L9 | A non-root node; a node of a read-only stub model | Prints; the header names the right model |
| L10 | Literals and errors: `AGENTIC_VIEW`, `agentic view`, `AGENTIC`, `editorHints: "reflective"`, `deep: false` | Accepted, accepted, rejected with the five-literal message, warning, ignored |
| L11 | Speed: 5 timed calls each of AGENTIC VIEW, JSON deep and reflective on BL `IfStatement_Editor`, and on one root of more than 1000 nodes (it becomes battery C's target) | Median AGENTIC VIEW time at most that of JSON deep; record all three |
| L12 | IDE log: `mps_mcp_read_ide_log(sinceMinutes=<run window>, minLevel="WARN")` | No entry caused by the checks |
| L13 | Regression: print the baseline set again | JSON, `PLAIN TEXT`, reflective and `HTML` equal the baseline (temp paths aside) |

`!undeclared`, `!conceptNotLoaded`, an unresolved reference and a foreign-project node need special fixtures. They
are covered by the integration tests (P2 cases 5 and 6), not live.

Record the sizes from L1 in the "actual" column of the size table (server output next to the prototype's).

**Gate.** L1–L13 pass. A failure is fixed in P1/P2 and the affected checks are re-run after a new restart.

## P4. Measurement

### P4.0 Preparation

1. Copy the harness of the study directory to the work directory: `build.py`, `worker_prompt.md`, primers, `qA.md`,
   `qB.md`, `keys.md`, `analyze.py`, `cost.py`. Add the arm-A primer from P0.
2. **Worker isolation.** A subagent of a session in this checkout inherits `CLAUDE.md`, the project memory (which
   describes the earlier study and this format) and the session's cached tool schema. So workers are **headless
   processes**: `claude -p` with the work directory as cwd (no `CLAUDE.md`, no memory), `--mcp-config` from
   `worker_mcp_config.py`, `--model`, a pinned `--effort`, and `--output-format stream-json`. Do **not** use
   `run_worker.sh` in P4: it changes into the project directory and runs the skill initializer there, which is
   forbidden in this checkout. Put the launch into one wrapper script in the work directory. Launching needs allow
   rules: ask the user once. Point `analyze.py` and `cost.py` at the transcripts of these runs.
   Workers share one cwd: after each run, check that the memory folder of the work directory under
   `~/.claude/projects/` is still empty, so that no worker leaves notes for the next.
3. **Smoke run.** One worker lists the parameters of `mps_mcp_print_node` and quotes any instruction text it was
   given. Pass: `nodeDepth` is listed, and nothing from `CLAUDE.md` or the memory appears.
4. **Battery C.** Target: the root over 1000 nodes from L11. Write 6 questions with keys from its JSON deep: 2
   answerable above the cut, 3 below it, 1 node id.
5. **Battery E.** Task: "change the TraceMessage text to X and move the second `Require` to the end of the
   commands", on a copy of the Maze script. Dry-run it by hand once: confirm that the result passes
   `check_root_node_problems`. If it does not, choose another move.
6. An opus reviewer checks the new questions and keys (batteries C, E and the P5.4 tasks) before any run, as in the
   study.

### P4.1 Arms

| Arm | Worker may print with | Purpose |
|---|---|---|
| **A** | `AGENTIC VIEW` only | The new format |
| **R** | `PLAIN TEXT` + `reflective` only | Baseline, re-run |
| **J** | JSON, files, `mps_dump.py`; the J-default primer | Baseline, re-run |
| **A-open** (battery E) | `AGENTIC VIEW` and JSON, neither required | Q7 |
| **R+J** (battery E) | Reflective and JSON | Today's recommended route |

The baselines are re-run under the same launch method, because the model versions, the context size and the
launcher differ from 2026-11-11.

### P4.2 Batteries and runs

| Battery | Content | Runs |
|---|---|---|
| A, B | The 32 questions and keys of the study, unchanged. Reverse the order for sonnet. | Per battery: arm A opus ×2, sonnet ×2; arm R opus ×2, sonnet ×1; arm J opus ×2. 18 runs. |
| C | P4.0 step 4 | Arm A opus ×2, arm J opus ×2. 4 runs. |
| E | P4.0 step 5. Tools: `print_node` in the arm's formats, `mps_mcp_update_node`, `mps_mcp_alter_nodes`, `mps_mcp_check_root_node_problems`. | A-open, R+J, J; opus and sonnet. 6 runs. |
| CAL | Read the instructions, load the tool schema | opus, sonnet. 2 runs. |

30 runs. Opus and sonnet, as in the study.

Battery E setup: the orchestrator makes one copy of the Maze root per run with `mps_mcp_alter_nodes` `COPY_NODE` in
`Kaja.sandbox.sandbox` and gives the worker the reference of its copy. Grading: print the copy as JSON and compare
it with the expected tree; `check_root_node_problems` must be clean. Afterwards delete the copies, check with
`git status` that the sandbox model file is unchanged, and `git restore` it if not.

### P4.3 Metrics and success criteria

From `analyze.py` / `cost.py`: turns, Δ context tokens, marginal cost, print-result chars, duration, and for battery
E the number of JSON prints. From grading: accuracy, capability items, confident wrong answers. Grades go to
`answers/grades.tsv`, runs to `runs.tsv`.

Cost figures are compared as the **mean of the runs of one arm, battery and model**. Against R, a difference under
15% counts as equal (R's repeats differed by 3% in the study). J's repeats differed by 60%, so "below J" means below
the cheaper of the two J runs.

| Measure | Target |
|---|---|
| Accuracy on shared items (A: 13, B: 14) | Arm A loses no item in any run |
| A5, A7, B12 (id, reference, model of a target) | Answered (R cannot) |
| A6, B7 (empty roles) | Answered with role names (J cannot without extra prints) |
| A15, A16, B6 (defaults) | Answered without "(unsure)" |
| Confident wrong answers | 0 |
| Turns, batteries A and B | 4 in every arm-A run |
| Marginal cost, batteries A and B | Arm A at most equal to R, per model; below J |
| Δ context | Battery B (wide roots): arm A below R. Battery A (small roots): at most equal to R (handoff §7) |
| Battery C | All 6 answered in both runs; at most one extra print per question below the cut; no temp file read; cost below J |
| Battery E | The edit is correct and the check clean in every run; A-open takes fewer turns than R+J and than J. The JSON print count of A-open is reported (Q7). |

**Decision.**

- All targets met: go to P5 with AGENTIC VIEW as the default way to read structure.
- Accuracy targets met, a cost target missed: go to P5, but route by root kind as the numbers say, and record it in
  §9.
- An accuracy target missed, or a confident wrong answer: find the cause in the worker's NOTES and the transcript,
  fix the notation or the server, repeat P2/P3 for the change, and re-run only the failed battery in arm A.

Write the result as `report.md` in the work directory, in the form of the study's `report.md`. Answer Q6–Q8 in §9.

## P5. Skills and tool descriptions

Blueprints are under `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`. They are the source of truth.

### P5.1 The routing rule to teach

| Task | Variant |
|---|---|
| Understand a node or root: shape, roles, values, unset features; find the id of a node to edit; follow a reference | `AGENTIC VIEW` |
| Read code or a notation the way the user sees it | `PLAIN TEXT` |
| Get a blueprint for a mutation tool, or exact JSON for a script | `JSON`, `deep=true`, of the subtree to change only |
| See what an editor draws: layout, styles, colours, diagrams | `HTML` or `IMAGE` |
| Compare alternative editors | `PLAIN TEXT` / `HTML` + `editorHints` |
| A whole model | `mps_mcp_get_project_structure` + `mps_dump.py` |

`PLAIN TEXT` + `reflective` keeps one line: it shows what the reflective editor shows, and AGENTIC VIEW replaces it
for reading structure. If P4 chose routing by root kind, the first row is split accordingly. The wording of the
blueprint row follows Q7: if A-open workers edited by id without a JSON print, say that a JSON print is needed only
when the edit takes a blueprint.

### P5.2 Changes

| File | Change |
|---|---|
| `JetBrainsMPSNodeMcpToolset.kt`, `print_node` | `@McpDescription`: one sentence per variant with its use, AGENTIC VIEW first after JSON; `format`: "five literals"; `nodeDepth`; `deep`: "JSON only"; `maxInlineBytes`: for AGENTIC VIEW the limit cuts the depth instead of writing a file. Keep the length close to today's. |
| Other tool descriptions that send readers to `print_node (deep=true)`: `JetBrainsMPSProjectMcpToolset.kt` (around line 266), the root-node toolset (around line 60), `JetBrainsMPSConsoleMcpToolset.kt` (around line 186); list the rest with `grep -n print_node src/…/tools/*.kt` | Where the purpose is reading, name AGENTIC VIEW; where the JSON is consumed, leave it |
| `mps-mcp-workflow/SKILL.md`, `## Critical Directives` | A new directive with the routing rule in two lines and the pointer to the new reference |
| `mps-mcp-workflow/references/analysis-tools/print-node-agentic-view.md` (new) | The grammar of §2 with one worked example, the flags, the cut and how to continue (`nodeDepth`, print a `(+N)` node), what the format does not carry (cardinality, docs), read-only (D10), and the routing table of P5.1. Under 12288 bytes. |
| `…/analysis-tools/print-node-output.md` (12174 of 12288 bytes) | "five literals" and the new error text; replace the "Which one" paragraph by a pointer to the routing table; shorten the `reflective` bullet. Net size must not grow. |
| `…/references/analysis-tools.md` | A table row for the new reference |
| `…/analysis-tools/overview.md` | Line 7: a temp file holds the envelope, except the raw `.txt` of AGENTIC VIEW. Line 9: to make an AGENTIC VIEW print smaller, pass `nodeDepth`; the `maxInlineBytes` cut is the safety net. Line 11: AGENTIC VIEW to read, JSON for blueprints, with the pointer. |
| `…/references/mcp-tools-index.md` (18770 of its 18944-byte cap) | The `mps_mcp_print_node` line: five formats and the routing in half a sentence. Only 174 bytes are free: shorten the line elsewhere rather than raise the cap. |
| `mps-node-editing/SKILL.md`, `references/json-format.md` | Read with AGENTIC VIEW to find the target; print JSON only for the subtree that becomes a blueprint |
| `mps-node-editing/references/troubleshooting.md` (around line 18) | The quoted error text |
| `mps-aspect-editor/references/checking-editors.md` | Step 1: AGENTIC VIEW lists an editor root's cell models and style items with ids |
| `mps-aspect-generator` (the reference on reading templates) | Macros print as `@attr:` / `@prop(x):` / `@ref(x):` under the node they annotate |
| `mps-language-analysis/SKILL.md` | Sample nodes: AGENTIC VIEW to read one, JSON to reuse it as a blueprint |
| `plugins/mcp-tools/test_scenarios/` | `MPS_MCP_FULL_TEST_SCENARIO/07_…md` and `COVERAGE_MATRIX.md`: add the format |

**Sweep.** 65 skill files mention `print_node`. List every mention with
`grep -rn "print_node" <skills> --include='*.md'` and classify it: *read to understand* (change to AGENTIC VIEW),
*blueprint or script input* (stays JSON), *projection* (stays). Keep the classified list in the work directory and
apply the first class. Do not touch a mention whose following step consumes the JSON.

The drafts P1–P6 of the reflective study (`proposed/` in the study directory) are superseded: do not land its P1;
the pointers of its P3–P6 now go to the new reference.

### P5.3 Gates

1. Each reference under its cap (`SkillReferenceLayoutTest`: 12288 bytes, or the file's `OVER_BUDGET` entry).
2. Copy every changed skill folder over `.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest`).
3. `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py`.
4. A new unit test `SkillPrintNodeRoutingTest`, on the pattern of `SkillTypeQueryRoutingTest` and with the helpers
   of `SkillRoutingDocs`: the Critical Directives section, `overview.md`, `mcp-tools-index.md` and the tool
   description each name `AGENTIC VIEW`; the directive and the index link the new reference; the reference names all
   five literals. Register it in `McpContractAndSkillsTestSuite`.
5. `build_project`, then `McpContractAndSkillsTestSuite` and `McpNodeToolsTestSuite`.

### P5.4 Routing probe (Q10)

Workers must get the new skills the way a user's agent does, and nothing else. So the probe runs in a **scratch
study project**, not in this checkout:

1. Whole-project build and MPS restart, so that the plugin serves the new skill resources.
2. Create a fresh scratch project per run with `new_study_project.py` and open it next to the checkout (the two
   read tasks may share one project with `ALLOW_REUSED_PROJECT=1`; T-edit changes its project and never shares).
   `run_worker.sh` installs the live skill catalog into it before the run; check that the installed catalog equals
   the blueprints.
3. The read tasks address nodes of the checkout by reference. For the edit task, copy the Maze script into a model of
   the scratch project first; if the Kaja language cannot be used there, use a DSL root of a study fixture instead
   and adapt the task. Keys are written and reviewed in P4.0 step 6.

Three tasks, no format restriction, opus and sonnet, 6 runs:

| Task | Expected first `print_node` variant |
|---|---|
| T-read: "Describe the structure of the Kaja `IfStatement_Editor`: its cells, their roles, and which optional roles are unset." | `AGENTIC VIEW` |
| T-code: "What does `CommentLine_Behavior.isTODOComment` return for a line that starts with `todo`?" | `PLAIN TEXT` |
| T-edit: battery E's task | `AGENTIC VIEW`, then a direct edit by id or a JSON print of the edited subtree only |

Pass: the expected variant is the first print in at least 5 of 6 runs, no run prints a whole root as JSON deep for
T-read or T-code, and all answers and the edit are correct. On a miss, find in the transcript the sentence that
steered the worker, fix that skill text, and re-run the missed task.

## P6. Follow-ups (not gated)

- `mps_dump.py tree`: print `isDefault` values and target models (S5), or delegate to the new format.
- `PLAIN TEXT`: strip trailing padding (S1); compact `editorHints.available` for requested hints (S2).
- `ConceptDeclaration` plain-text layout bug (S3).
- Notation snippet for code subtrees, if Q8 says it is needed.
- `get_project_structure`: an AGENTIC VIEW node projection for whole models.

---

## 7. Commits

Local commits on the working branch, in the format of `.agents/git.md` (`mcp-tools - …`):

1. After P2: the format, the tests, the literal list in the error text.
2. After P5: skills, propagated copies, tool descriptions, `SkillPrintNodeRoutingTest`, test scenarios.
3. This plan and the handoff, with §9 filled in.

Do not push before the P4 verdict. If P4 rejects the format, commit 1 is dropped or reworked, and no skill ever
steers agents to it.

## 8. Risks

| Risk | Mitigation |
|---|---|
| The format drifts from JSON semantics | Parity under §2.1: P2 case 1 and L1 |
| Deprecation lookup per feature is slow | Cache per concept and render; L11 |
| A uniform depth cut hides a small important subtree | Battery C; Q6's rule |
| Agents treat the text as a blueprint | The reference and the tool description say it is read-only; T-edit in the probe |
| The skills steer too broadly and agents stop printing JSON before a blueprint edit | The sweep keeps blueprint mentions; T-edit checks the edit is correct |
| Workers see project memory or a stale tool schema | Headless workers from the work directory; the smoke run of P4.0 |
| Cost differences are noise | Two runs per cell for A, R and J (opus); the comparison rules of P4.3 |

## 9. Decision log

Fill in during the work: the answers to Q1–Q10, any overturned decision of §1, the actual sizes, and the P4 verdict.

| Date | Item | Result |
|---|---|---|
| 2026-11-11 | Q1 sigils | ASCII. Unicode was 2% smaller in chars but 0.5% larger in tokens (17252 vs 17172 for the 7 roots). |
| 2026-11-11 | Q2 defaults | `*` suffix. The `defaults:` line cost 2% more tokens (17516). |
| 2026-11-11 | Q3 concept legend | Grouped by language. The per-node alias was 0.7% cheaper (17048), inside the 3% tie band; both probes answered P-FQ1 and P-FQ2. |
| 2026-11-11 | Q4 bare names | Bare. Quoted names cost 0.3% more; no name item was lost. |
| 2026-11-11 | Q5 attribute kinds | `NodeAttribute`, `PropertyAttribute`, `LinkAttribute` and `ChildAttribute` all exist in `lang.core`; `AttributeOperations` has `isPropertyAttribute` / `isLinkAttribute` / `isChildAttribute` and `getPropertyAttributes(node, property)` etc. to find the annotated feature. |
| 2026-11-11 | P0 probe, B6 | Both probes scored 15/16 plus both FQ items; B6 (`vertical`, a deprecated property) was answered "unset (unsure)". Fix: the `# deprecated` header line (D6). |
| 2026-11-11 | P0 gate | With the `# deprecated` line the opus probe scored 14/14 on the shared items, answered B7, B12, P-FQ1 and P-FQ2, and had no confident wrong answer. The grammar of §2 is frozen. The header costs 1.8% more chars. |
| 2026-11-11 | P3 live checks | L1–L13 pass on the first implementation. Parity holds on the 7 roots and on a 1489-node root (`ClassifierType_Behavior`, battery C's target). Server sizes, chars: Maze 3.2k, dectab 1.7k, CommentLine_Behavior 4.3k, Kaja editor 10.1k, template 6.7k, concept 2.1k, BL editor 13.3k; the 1489-node root is 155k against 323k reflective and 1016k compact JSON. No SEVERE in the IDE log after the restart. The only baseline diff is an object hash that JSON already printed for a constrained string type (`SConstrainedStringDatatypeAdapter@…`), a defect that predates this work. |
| 2026-11-11 | Q9 speed | Median of 5 calls: BL editor 0.17 s (JSON 0.18, reflective 0.20); 1489-node root 0.19 s (JSON 0.21, reflective 0.36). |
| 2026-11-11 | D12 in practice | Values from constraints getters now show as such: `nestedName="Foo"*`, `resolveInfo="Foo"*`, a constructor's `name="Foo"*`. JSON prints them like stored values. |
| 2026-11-11 | P4 method | Workers are headless `claude -p` processes from an empty directory, with `--permission-mode default` and an explicit tool allow-list (a launcher with `bypassPermissions` was refused by the permission classifier). Cost is cache-neutral: a token new in a turn counts 1.25, a token already in the previous turn 0.1, output 5, minus calibration. The study's formula read the cache fields, and parallel runs that shared a cache entry differed by 30k units; with the neutral formula repeats agree within 3%. |
| 2026-11-11 | P4 batteries A, B | Arm A (8 runs): 13/13 and 14/14 on the shared items in every run; A5, A6, A7, B7 and B12 all answered; no confident wrong answer; 3 turns each (schema, three prints, answer). Arm R (6 runs): 13/13 and 14/14; CANNOT on ids, references and target model. Arm J (4 runs): one confident wrong answer (A1 = 16), one B12 CANNOT, A6 CANNOT twice; 9 and 17 turns. A15 (unset string) was marked unsure in 2 of 4 arm-A runs: the primer now says an unset string reads as empty. |
| 2026-11-11 | P4 cost, batteries A, B | Marginal cost, mean per cell. Battery A: A 19.8k (opus) / 20.7k (sonnet), R 21.3k / 22.2k, J 48.5k. Battery B: A 26.0k / 27.3k, R 32.5k / 31.9k, J 98.6k. Added context: battery A 6.5k (A) against 7.4k (R) and 8.8–10.2k (J); battery B 10.5k against 13.2k and 15.8–17.2k. So A is equal to R on the small roots (7% lower, inside the 15% band), 14–20% below R on the wide roots, and 0.26–0.41× J. |
| 2026-11-11 | Q7, battery E | All 6 edits correct and clean. Arm A-open printed no JSON in either run (AGENTIC VIEW once or twice, then `update_node` and MOVE_CHILD by id). Turns: A-open 6 (opus) / 5 (sonnet), R+J 8 / 6, J 6 / 5. Cost: A-open 36.2k / 30.0k, R+J 44.4k / 33.0k, J 33.4k / 47.7k. So A-open beats R+J; against J it is equal in turns and mixed in cost on this 49-node root. The target "fewer turns than J" is not met; the JSON print is not needed. |
| 2026-11-11 | Q6, battery C, first run | Answers 6/6 in all 4 runs. The cut was not exercised: both arm-A workers passed `maxInlineBytes: 400000` on their first call, the host saved the 155k result to a file, and they sliced it with Bash (31–39k units, like J at 31–33k). Cause: the primer announced the cut and the prompt gave the root's size. Fix: the `# cut` line states the size of the whole printout, the primer and the reference say to print the `(+N)` nodes needed instead of raising the limit, and arm A is re-run. |
| 2026-11-11 | P2 gate | Code review by an opus subagent: no correctness bug in the renderer; 1 major (no `!foreign` test) and 8 minor findings, all fixed (stricter parity checker, `fit` sized from per-line lengths, `!raw` for a stored value its type cannot render, attribute label from the attribute's own behavior). Umbrella suite: 1516 tests, 1 failure, in a test added for a stale enum value: `InvalidEnumerationLiteral.getName()` throws when the enumeration has no raw member type, which made JSON and AGENTIC VIEW answer INTERNAL_ERROR for such a node. `propertyDisplayValue` now returns no display value there. Focused re-run: 114 of 114. |
| 2026-11-11 | P4 verdict | Accuracy targets met in batteries A, B, C and E. Cost targets met in A and B. Go to P5 with AGENTIC VIEW as the default way to read structure. Open: battery C's cut was bypassed, see Q6. |
| 2026-11-11 | Q6, battery C, re-run | With the size in the `# cut` line and the guidance "print the `(+N)` nodes you need rather than raising `maxInlineBytes`": 3 runs (opus ×2, sonnet), 6/6 each, 4 turns (schema, one shallow print, 3–4 subtree prints in one turn, answer), no file read, 24.7–25.9k units against J's 31.5–33.0k. The uniform depth cut stays. |
| 2026-11-11 | P5 | An opus subagent classified all 111 `print_node` mentions (33 read, 6 format lists, 31 JSON, 14 projection, 27 other) and applied the read and format-list ones: 40 blueprint files in 14 skills, the new reference `print-node-agentic-view.md` (6.9 KB), a Critical Directive, the `print_node` description and four other tool descriptions, `SkillPrintNodeRoutingTest`. A second opus subagent reviewed the result: no major finding, 13 minor ones, all applied. Validator and `McpContractAndSkillsTestSuite` (302 tests) green. |
| 2026-11-11 | Q10, routing probe | Deviation from P5.4: the workers ran in a scratch directory holding a copy of the skill catalog and the installed-guide template as `CLAUDE.md`, not in a study project, because another session was using the same MPS for a study. 6 of 6 runs chose the expected first print: `AGENTIC VIEW` for T-read and T-edit, `PLAIN TEXT` for T-code. No run printed JSON. All answers and both edits are correct and check clean. The opus T-code run chose `PLAIN TEXT` from the tool description alone, without loading a skill. |
| 2026-11-11 | Final gate | `McpToolsIntegrationTestSuite` umbrella on the final tree: 1522 tests, 0 failed. Parity on the 7 roots holds on the final build; no ERROR or SEVERE in the IDE log of the MPS session that served the probe. |
| 2026-11-11 | P0 sizes | Prototype, chars: Maze 3.2k, dectab 1.7k, CommentLine_Behavior 4.2k, Kaja editor 10.0k, template 6.4k, concept 2.0k, BL editor 13.2k. That is 0.5–0.6× reflective for the wide roots and about 1× for the small ones; 0.12–0.23× compact JSON. Tokens: about 0.42 per char, 17.2k for all 7 roots. |
