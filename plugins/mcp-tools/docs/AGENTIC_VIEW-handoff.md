# AGENTIC_VIEW — handoff for the implementing agent

Starting point for implementing a new `mps_mcp_print_node` format, `AGENTIC_VIEW`. It is meant to combine the
strengths of `PLAIN TEXT` + `editorHints: "reflective"` with those of `JSON`. This file is the analysis. It is not a
spec: the notation sketch in §5 is a proposal for you to refine.

Evidence comes from the study of 2026-11-11. Its materials are **not in this repository**; they live in
`~/MPSProjects/mcp-study/adhoc-reflective/` (called "the study directory" below), which also holds the original of
this file:
- `report.md` (verdict, numbers, side findings);
- `plan.md` / `keys.md` / `qA.md` / `qB.md` (tasks with answer keys);
- `dumps/` (MCP envelopes of all three formats for 7 roots);
- `analyze.py` / `cost.py` (transcript metrics);
- `answers/grades.tsv`.

Question IDs such as `A6` or `B11` below refer to `keys.md`.

The numbers and code pointers below were re-checked against the dumps and the sources on 2026-11-11. Line numbers
are "around": search for the symbol.

**Status: final.** The implementation plan is `AGENTIC_VIEW-plan.md` in this directory. It takes the decisions that
§6 leaves open, or says which check answers them. Where the two files differ, the plan wins.

---

## 1. What the study established (short)

| | PLAIN TEXT + reflective (R) | JSON + temp file + `mps_dump.py tree` (J) | JSON inline | PLAIN TEXT, no hint (N) |
|---|---|---|---|---|
| Accuracy on shared structure questions | 68/68 (5 runs) | 94.5/95 (7 runs) | 14/14 | 18–69 % |
| Confident wrong answers (all items) | 0 | 1 (A6, a capability item) | 0 | 3 |
| Turns per 3-root battery | 4 | 7–12 (7–10 with default `maxInlineBytes`) | 4 | 4 |
| Marginal cost (input-token units, calibration subtracted) | 27–45k | 48–98k (54k / 74k J-default) | 89k | 24–27k |
| Δ context tokens per battery B | 11.8k | 9–13k | 45.4k | 2k |
| Tokens per char of payload | ≈0.33 | — | ≈0.50 | — |
| Node ids / references / target models | ✗ | ✔ | ✔ | ✗ |
| Which declared roles are empty (A6, B7) | ✔ | ✗ (empty optional roles are omitted; found only by printing the concept and its supertypes) | ✗ | ✗ |

**The key causal finding: cost is driven by turns, not by payload chars.**
- R wins because one print of a mid-size root fits inline.
- JSON deep of the same roots (8.5–45k compact chars, 13–124k in the pretty-printed temp file) goes to a file, and
  each file costs Bash/Python round trips. Every round trip re-reads the whole context.
- J + `mps_dump.py tree` ends with a context as small as R's. It is slower only because of the extra turns.

**The target:** one inline call per root, with everything an agent needs to understand the structure and to address
the next edit.

---

## 2. Option A — `PLAIN TEXT` + `editorHints: "reflective"`

### How it works

- The hint `jetbrains.mps.lang.core.editor.reflective` swaps every node's editor for the runtime default editor:
  - `editor/editor-runtime/source/jetbrains/mps/nodeEditor/AbstractDefaultEditor.java`
  - `DefaultEditor.java` (in the same directory)
  - `ReadOnlyDefaultEditor.java` (in the same directory)
  - `reflectiveEditor/ReflectiveHint.java`
  - `AbstractDefaultEditor.createEditor` picks `DefaultEditor` for a loaded concept. It picks
    `ReadOnlyDefaultEditor` when the concept is not loaded or the "reflective editor read-only" setting is on. The
    study saw only `DefaultEditor`; everything below describes that one.
- `print_node` then renders the editor cells to text through `showNodeAppearance` → `renderPlainText` in
  `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/MPSNodeMcpToolset.kt`, around lines 820 and 949.
  This requires building an editor component.
- Envelope: `{ok, data: "<text>", details: {editorHints: {source, applied, available[...]}}}`. Because the request
  passes `editorHints`, `available` comes back in the full form (`catalog.fullListing()`): 1.3–1.5 KB on every call.
  The files in `dumps/` were saved without `details`.

### Strengths (keep these)

1. **Fits inline.** About 2.6–7.5× smaller than compact JSON:

   | root | reflective | compact JSON |
   |---|---|---|
   | Maze | 3.5k | 26.6k |
   | Kaja editor | 17.6k | 45.3k |
   | template | 11.9k | 36k |

2. **Indented tree, one block per node, role labels inline** (`role : Concept name { … }`). Agents read it fluently,
   with no script.
3. **Every declared feature is listed**, including unset ones (`<no x>`) and empty lists (`<< ... >>`). This was the
   only format that answered "which roles does it have and which are empty" (A6, B7). It also showed `isVirtual`
   as an explicit `false` (A16); J answered A16 correctly too, but only by reasoning from absence.
4. **Defaults are resolved to their value** (`vertical : false`, `attractsFocus : noAttraction`). No reasoning
   about absence is needed.
5. **The name is in the header** (`ConceptDeclaration IfStatement {`). The editor uses `name`, else the most
   name-like string property; that property is not repeated below.
6. **Stored but undeclared features are shown too.** `AbstractDefaultEditor.init` adds them after the declared
   ones, so nothing stored is lost (BaseConcept features excepted, see weakness 5).

### Weaknesses (fix these)

1. **No node ids and no node references.** The agent cannot address an edit (A7) or follow anything to another node
   (B12). Every R worker answered `CANNOT` there.
2. **Reference targets are given by name only.** There is no target id or model, and the name is ambiguous across
   models.
3. **Concept names are short only.** There is no FQ name and no language.
4. **Attributes are printed in the slot of the node they annotate.** For example,
   `condition : CopySrcNodeMacro { … attributed node: LessThanExpression {…} }`. In the AST the LessThanExpression
   is the `condition` child and the macro sits in its `smodelAttribute` role.
   - Property and reference attributes (`$PROPERTY$`, `$REF$`) wrap their cell the same way, under
     `attributed property:` / `attributed reference:` (`AbstractDefaultEditor.addAttributedEntity`).
   - All 3 battery-B R workers decoded it correctly, but every one flagged it as confusing and was unsure on B11.
5. **BaseConcept features are hidden**, even when set: `virtualPackage`, `shortDescription`, `alias`, and
   `smodelAttribute` as a role. (`ReadOnlyDefaultEditor` does add the stored ones.)
6. **Noise grows with concept width.** One line per unset feature: 127 empty-feature rows in the Kaja editor, 176
   in the BaseLanguage `IfStatement_Editor`. The latter is 24.9k chars, above the 20000 inline default.
7. **No marker for "default" vs "set to the default value".** `<no value>` for a string reads as `""`. Strings have
   no quotes, so leading or trailing spaces are invisible.
8. **Several children of one role.** The role label appears once; further children follow with no index. Counting
   and insertion indices (A1, A11) work, but by hand.
9. **Rendering artefacts.**
   - Every line carries trailing padding: about 5% for reflective; for default PLAIN TEXT up to 6× (1999 → 318
     chars for `reduce_IfStatement`).
   - A `ClassConcept` prints `isDeprecated` twice. Both rows are **declared** properties: the concept inherits two
     properties of that name with different ids, `Classifier.isDeprecated` and `IBLDeprecatable.isDeprecated`. It
     is not a stored-but-undeclared value, as `report.md` suggests: the JSON dump has no `declared:false` entry.
     `ConceptMethodDeclaration` and the other methods print it once. AGENTIC_VIEW inherits the problem: see "Points to decide" in §6.
10. **Rendering cost.** It needs editor construction and cell layout, so it is a heavier code path than walking
    the model.

---

## 3. Option B — `JSON`

### How it works

- `nodeHierarchyJsonObject` in `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/AbstractOps.kt`
  (around line 1644; `addNodeFeatures` and `addNodeChildren` follow it) walks the model directly. No editor is
  involved.
- `finalizeResult` (around line 1342) inlines the result up to `maxInlineBytes` (default 20000), else writes a temp
  file holding the pretty-printed envelope (`saveToTempFile`).
- `deep=false` is the default and lists direct children as `{name, reference}` only.

### Strengths (keep these)

1. **Node identity everywhere.** Every node has `reference` (`r:<model-uuid>(model)/<node-id>`); every reference has
   `target` and `targetReference`. Agents answered A5, A7 and B12 directly and used ids to disambiguate (B11).
2. **The true AST.** Attributes sit in their real role `smodelAttribute` under the annotated node (B8, B11 had no
   ambiguity).
3. **Machine-consumable.** It is the only form the mutation tools accept. It round-trips into
   `mps_mcp_update_root_node_from_json` and friends; see `AbstractNodeOps.kt` around lines 887–1026, with keys
   `declared`, `conceptLoaded` and `isDefault`.
4. **Honest about the meta level.**
   - `declared:false` marks stored values the concept no longer declares.
   - `conceptLoaded:false` marks nodes of unbuilt or removed languages.
   - `isDefault:true` marks an enum at its default.
5. **Qualified concept** via `conceptReference`, plus role `type` / `cardinality`.

### Weaknesses (fix these)

1. **Verbosity.** Each property, reference and child role carries `type`, `doc`, `deprecated` and `typeReference`;
   every node carries `conceptReference`, with the full model UUID repeated in each `reference` and
   `targetReference`.
   - Dropping only `doc`, `deprecated`, `typeReference` and `conceptReference` halves it (measured offline on the Kaja
     editor: 45.3k → 23.5k).
   - UUID text is token-dense: about 0.50 tokens per char.
2. **Usually too big to inline**, which means temp file + script turns. That is the root cause of J's higher cost.
3. **Absence encodes defaults.** False booleans, empty strings, unset references and empty *optional* roles are
   omitted. An empty role of cardinality `1` or `1..n` is printed, with no nodes; none occurred in the study dumps.
   Agents had to reason from absence (A15, A16, B6, all marked "unsure"). They cannot list empty roles (A6:
   3× `CANNOT`, 1× confident "no other role"; B7: names only after printing the ConceptDeclaration and its
   supertypes).
4. **The default-marking asymmetry confused workers.** An enum default is printed with `isDefault:true`, while a
   boolean or string default is omitted. Several workers noted this.
5. **Hard to read nested.** One worker on inline JSON: "you have to count closing brackets to work out which node
   a deep-printed smodelAttribute belongs to". No parent pointers.
6. **`mps_dump.py tree`, the skill's remedy, drops data.**
   - It omits `isDefault` enum values (`staticScope`, `sourceCardinality`), reference target models and the parent.
     Workers fell back to raw JSON for those.
   - It is nevertheless the closest existing prototype of the target notation (§6).

---

## 4. Reference point — default `PLAIN TEXT` (no hint)

- Best for **reading code**. A BaseLanguage method body reads like Java and is several times smaller than any
  structural form, especially without padding.
- **Useless for structure:**
  - no concepts or roles;
  - stored flags are misread (`public virtual` for `isVirtual=false`);
  - a blank line may or may not be a node;
  - `$COPY_SRC$1 < 10` suggests the macro sits on the `1`;
  - layout bugs: the `ConceptDeclaration` child links print under "references:" (see `report.md` side finding 3).
- **Lesson for AGENTIC_VIEW:** a *short notation snippet* for code-like subtrees is valuable as an annotation, but
  never as a replacement for the structure.

---

## 5. Ideal feature set for AGENTIC_VIEW

Priority: **M** = must, **S** = should, **C** = could. The evidence column cites the study.

| # | Feature | Pri | From | Evidence / rationale |
|---|---|---|---|---|
| 1 | Indented tree, one line per node: `role: Concept #id "name" prop=value … -> ref=target` | M | R, mps_dump tree | R accuracy with zero scripting; `mps_dump tree` is 1.4–3.9× smaller than reflective while carrying ids |
| 2 | **Node id on every node** (`#3308300503039647847`). The model is given once in a header legend, so ids are short. | M | J | A5, A7 and B11 needed ids; this is R's main gap |
| 3 | **Reference = target name + target id, plus a model alias when cross-model** (`-> classifier=KajaFrame @m2#3308300503039473785`) | M | J | B12 (model of target); disambiguation; follow-up prints |
| 4 | **Model and concept legend in a header**: `m0 = r:1a01…(Kaja.sandbox.sandbox)`; concepts by short name unless ambiguous, with a legend of FQ names for concepts used | M | J (`conceptReference`), HTML `mN` scheme | FQ answers without repeating UUIDs per node; HTML already uses `mps-model-mN` aliases |
| 5 | **Attributes in their true AST position**, marked distinctly: `@attr: CopySrcNodeMacro #…` under the annotated node; property and reference attributes as `@prop(name): …` / `@ref(role): …` | M | J | Removes R's attribute-in-slot confusion (B8, B11) |
| 6 | **Empty declared roles listed compactly**, one line per node: `∅ actionMap keyMap parentStyleClass · addHints removeHints …`. On by default for **every** node, with an option to limit it to the printed root. | M | R | A6/B7 were R-only wins, and B7 asks about a descendant cell, so root-only would fail it. All these lines together cost ~1.6k chars for the Kaja editor, against 127 rows in reflective |
| 7 | **Index on multi-valued roles** (`commands[3]:`) | M | new | A1 counting and A11 insertion index were done by hand in every format |
| 8 | **Explicit defaults**: omit default-valued properties but list them on a "defaults" line, or mark them with `*` (`vertical=false*`). Treat enums, booleans and strings the same. On for every node by default. | M | R + J | A15, A16 and B6 were "unsure" in J, and all three ask about descendants; the enum-vs-boolean asymmetry confused workers; R had no marker at all |
| 9 | **Quoted strings with JSON escaping** (`text="Found a mark"`, `value=""`); unset shown as no entry or as the defaults line, never as `<no value>` | M | J | A15 ambiguity (`<no value>` vs `""`) |
| 10 | **Meta flags kept**: `!undeclared` on stored features the concept lacks; `!conceptNotLoaded` on a node, plus an envelope warning; an unresolved reference shown with its stored target reference | M | J | D89-class defects: never make content vanish. JSON prints `target: null` plus `targetReference` for an unresolved reference |
| 11 | **BaseConcept features shown when set** (`virtualPackage`, `shortDescription`, `alias`) | S | J | R hid `virtualPackage=command` |
| 12 | **No trailing padding; no full `editorHints.available` list** in the envelope | M | — | Padding up to 6× for N, ~5 % for R; the hint list is ~12 % of the R payload |
| 13 | **Built from the model, not from editor cells** (walk like `nodeHierarchyJsonObject`) | S | J | No EDT editor construction; independent of broken or unbuilt editors; same semantics as JSON |
| 14 | **Inline by default, with a size-aware cut**: when over budget, truncate depth with `(+N nodes — print #id)` stubs rather than spill to a temp file. If a file is unavoidable, write the raw text (`.txt`), not a JSON-escaped string. | S | `get_project_structure` `nodeDepth` / `childrenTruncated` | Turns, not chars, drove cost. A PLAIN TEXT temp file today is a JSON envelope with `\n` escapes, hard to Read |
| 15 | **Optional notation snippet for code-like subtrees** (`collapse` option): for an expression or statement subtree, one line `= "" + this.text` (the default-editor text) plus its root `#id`, instead of the full node tree | C | N | BaseLanguage bodies: notation 0.4k vs reflective 6.1k vs JSON 22k (CommentLine_Behavior). Keeps ids at the subtree root for edits |
| 16 | Role cardinality and target type only in a per-concept legend, or behind an option, not per node | C | J | `type`/`cardinality` per child role is part of JSON's bulk; rarely needed for comprehension |
| 17 | Depth and subtree knobs mirroring JSON (`deep`, `nodeDepth`) | S | J, `get_project_structure` | Large roots; staged exploration |
| 18 | A **documented, line-oriented grammar**: each line parses as `indent role[index]: Concept #id "name" k=v… -> r=t@m#id` | S | — | Lets `mps_dump.py`-style scripts and future tools parse it; keeps the door open for mutation-tool input later |

**Non-goals (v1).**
- Not a blueprint input for mutation tools; JSON stays that.
- No editor-hint or notation fidelity: that is what PLAIN TEXT, HTML and IMAGE are for.
- No docs or deprecation per feature. If it matters, mark only the deprecated ones (`!deprecated`).

---

## 6. Notation sketch (proposal — refine freely)

Constructed by hand from `dumps/ifTemplate.json.json` and `dumps/maze.json.json`; ids shortened with `…` here only.

The sketch is **abridged**; the real output must not drop any of this:
- the `returnType` and `visibility` children of the two methods and the `visibility` child of the class;
- the properties `nestedName="Foo"` and `resolveInfo=…` of the class and its members;
- the `ifFalseStatement` branch, with its own `CopySrcNodeMacro`;
- the subtrees that the `= …` snippets stand for (feature #15, off by default).

The real tree has 51 nodes.

```
# AGENTIC_VIEW 1  root=#3308300503039647832  model m0=r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)
# models   m1=r:f5e9b11f-5073-4786-8ed1-a9e42307c3f8(JavaKaja.runtime)  m2=r:b567205c-…(jetbrains.mps.samples.Kaja.structure)
# concepts TemplateDeclaration=jetbrains.mps.lang.generator.structure.TemplateDeclaration  ClassConcept=jetbrains.mps.baseLanguage.structure.ClassConcept  …
TemplateDeclaration #3308300503039647832 "reduce_IfStatement" virtualPackage="command" -> applicableConcept=IfStatement@m2#3308300503039647678
  ∅ parameter
  contentNode: ClassConcept #…836 "Foo" nonStatic=true
    superclass: ClassifierType #…842 -> classifier=KajaFrame@m1#3308300503039473785
    member[0]: ConstructorDeclaration #…838 "Foo"
      body: StatementList #…841  ∅ statement
    member[1]: InstanceMethodDeclaration #…843 "perform"
      body: StatementList #…846
        statement[0]: IfStatement #…847
          @attr: TemplateFragment #…890
          condition: LessThanExpression #…886   = 1 < 10
            @attr: CopySrcNodeMacro #…892
              sourceNodeQuery: SourceSubstituteMacro_SourceNodeQuery #…895   = node.condition
            leftExpression: IntegerConstant #…865 value="1"
            rightExpression: IntegerConstant #…889 value="10"
          ifTrue: StatementList #…849
            statement[0]: ExpressionStatement #…828   = System.out.println("");
              @attr: CopySrcNodeMacro #…835   query = node.trueBranch
```

And a DSL instance, where empty roles and defaults matter:

```
Script #8614576427117861066 "Maze"
  ∅ definitions
  body: CommandList #…067
    commands[0]: Require #…172 -> library=PlaygroundDefinition#…
    …
    commands[13]: RoutineDefinition #…929 "sniffAround"
```

Points to decide while implementing:
- **The `∅` / `@attr` / `#` / `@m` sigils.** ASCII alternatives (`empty:`, `+attr`, `id=`) may tokenize better;
  measure, don't guess.
- **Defaults: per-node `defaults:` line vs `*` suffix.** The `*` suffix keeps the value next to its name, but costs
  one entry per default property. 57 default-valued properties (~1.2k chars) in the Kaja editor. Do not restrict
  them to the printed root by default: A16 and B6 ask about descendants, and the §7 budget already counts them for
  every node.
- **The `= …` notation snippet (#15).** This is the riskiest feature: the default editor text must come from the real
  editor, which reintroduces editor construction. Make it optional and off by default in v1, or derive it only for
  BaseLanguage via textgen-like rendering.
- **Node ids are not always numbers.** Java stub nodes have ids such as `~System.out` or
  `~PrintStream.println(java.lang.String)`, and stub models have references such as
  `6354ebe7-…/java:java.lang(JDK/)`. `reduce_IfStatement` has 6 such targets among its 11 references. The
  `#id` and `@mN` tokens need an escaping or quoting rule, and the grammar (#18) must state it.
- **Two features with one name.** A concept can inherit two properties of the same name with different ids
  (`isDeprecated` in `ClassConcept`, §2 weakness 9). JSON would print two entries with the same `name` if both were
  set. In this case one of the two (`IBLDeprecatable.isDeprecated`) is itself deprecated, so dropping deprecated
  unset features removes the duplicate. For the general case, decide how AGENTIC_VIEW tells them apart, for example
  `isDeprecated@Classifier`.
- **Deprecated empty features.** Confirmed with `mps_mcp_get_concept_details`: of the 16 child roles of
  `ClassConcept`, 10 are deprecated (`field`, `constructor`, `staticMethod`, `property`, `method`, `staticField`,
  the three initializers, `staticInnerClassifiers`). So are the properties `shortDescription` and one
  `isDeprecated`. The `∅` and defaults output should drop deprecated features that are unset, and mark the ones
  that are set.
- **A missing required child** (cardinality `1` or `1..n`, empty) is an error, not a neutral empty role. JSON prints
  such a role; give it its own marker rather than hiding it among the `∅` names.
- **Concept legend cost.** The study roots use 19–28 concepts each (5 in the two smallest). A legend of FQ names for
  all of them costs 1–1.5k chars, which is not in the §7 budget. A legend of languages
  (`l0=jetbrains.mps.lang.editor`), with a concept listed only when its short name is ambiguous, is much cheaper.
- **Measure tokens, not only chars.** A 19-digit node id is token-dense, like a UUID. §7 is in chars.
- **Format literal.** Existing literals use a space (`PLAIN TEXT`). Accept `AGENTIC VIEW` and `AGENTIC_VIEW`
  (`format.uppercase()` is already applied in `print_node`), and update the error text "Allowed values: …" and the
  tool description (`MPSNodeMcpToolset.kt` around lines 1571–1607).

---

## 7. Size budget (estimated from the study dumps)

| root | `mps_dump tree` (≈ core of #1–#3) | + empty-role names (#6) | + default props (#8) | reflective | JSON compact |
|---|---|---|---|---|---|
| Maze (DSL) | 2.5k | +0.01k | +0 | 3.5k | 26.6k |
| dectab | 1.1k | +0.05k | +0 | 1.6k | 10.4k |
| CommentLine_Behavior | 2.2k | +0.26k | +0.38k | 6.1k | 22.4k |
| Kaja IfStatement_Editor | 4.8k | +1.6k | +1.2k | 17.6k | 45.3k |
| reduce_IfStatement | 3.7k | +0.5k | +0.4k | 11.9k | 36.0k |
| ConceptEditorDeclaration (concept) | 1.0k | +0.16k | +0.09k | 1.9k | 8.5k |
| BL IfStatement_Editor | 6.4k | +2.4k | +1.6k | 24.9k | 63.3k |

The `mps_dump tree` column was re-measured from the dumps and holds. The two `+` columns are estimates. The
reflective dumps support them: the empty-row role names sum to 1.6k for the Kaja editor and 2.4k for the BL editor,
and the Kaja editor has about 57 valued property rows that the JSON does not store. The estimates still count
deprecated features, so the real figures for BaseLanguage nodes will be lower.

**Expected outcome.** The three columns sum to **0.4–0.5× reflective** for the wide roots (editors, the template,
the behavior) and to **0.65–0.7×** for the small ones (Maze, dectab, the concept). Against compact JSON it is
**0.1–0.17×**.
- These sums exclude the reference-target ids (#3) and the header legend (#4). Budget ~25 chars per reference
  (7–27 references per root) plus a model legend of 0–0.3k. That brings the totals to about 0.45–0.55× reflective
  for the wide roots and 0.75–0.9× for the small ones. The concept legend comes on top (see §6).
- So the gain over reflective is in the wide roots. For small roots the size is near parity, and the gain is the
  ids and target models.
- Even the widest root tested (BL `IfStatement_Editor`, ~11–12k) stays well under the 20000 inline default, so one
  call per root becomes the norm.

---

## 8. Implementation pointers

- **Entry point.** `MPSNodeMcpToolset.print_node`, around lines 1583–1620: format dispatch, `editorHints`
  warning for JSON, `withMpsProject` + `executeShortReadOnEdt` + `resolveNodeReferencePreferringProject`.
  - Add a branch for the new literal.
  - Reuse the JSON path's resolution, `unresolvedPrintNode` errors, and `unloadedConceptsWarnings`.
- **Traversal semantics to copy.** `AbstractOps.nodeHierarchyJsonObject`, `addNodeFeatures` and `addNodeChildren`,
  around lines 1644–1825:
  - declared vs stored features and the `declared:false` rules;
  - `conceptLoaded:false`;
  - enum default handling with `isDefault`, around line 1701: "study defects D5/D12", emit the literal name;
  - `ProjectMembershipCache` and the cross-project markers `containingProject` / `editableFromCurrentProject`.
    Consider a compact marker such as `!foreign(m3)` in the legend.
- **Which declared features are empty.** Iterate `node.concept.properties`, `referenceLinks` and `containmentLinks`,
  as `DefaultEditor.init` does around lines 87–100. Keep its BaseConcept owner filter for the *empty* features,
  and add the BaseConcept features that are set (the JSON walk already prints those, e.g. `virtualPackage`).
- **Name header.** Mirror `AbstractDefaultEditor.getNameProperty`, around line 146: `name`, else the most name-like
  string property. Or simply use `node.name` / `INamedConcept`, and state the rule in the docs.
- **Attributes.** `SNode.getChildren(smodelAttribute)` and `AttributeOperations` (property and link attributes carry
  the role or property name they annotate). Print them under the annotated node with the `@attr` / `@prop(x)` /
  `@ref(x)` markers.
- **Envelope.** `finalizeResult`, around line 1342, takes JSON. PLAIN TEXT passes its text as a JSON string
  (`finalizeResult(JsonPrimitive(text).toString(), …)` at the end of `showNodeAppearance`), so over the limit the
  temp file is a pretty-printed envelope with the text as one escaped string. A text format needs its own path.
  - For the file case prefer a raw `.txt`.
  - Add `details` such as `{nodes, truncatedAt, legend: {models, concepts}}` only if they are cheap.
- **Tests.**
  - Integration tests live in `plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/integration/` (pattern:
    `PrintNodeGridTextIntegrationTest.kt`, `PrintNodeEditorHintsIntegrationTest.kt`).
  - A new test class must be **registered in the suite** (`@SuiteClasses` of `McpNodeToolsTestSuite.java`, where
    the other `PrintNode*` tests are). There is no pattern discovery, so an
    unregistered test never runs in CI.
  - `execute_run_configuration` does not compile, so `build_project` first.
  - Unit-level grammar tests can use the study fixtures: the Kaja sample, `reduce_IfStatement`, and the
    `ConceptEditorDeclaration` concept (references in `plan.md`, in the study directory).
- **Docs.**
  - Tool description in `MPSNodeMcpToolset.kt`.
  - Skill blueprints under `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, in
    `mps-mcp-workflow/references/analysis-tools/`. `print-node-output.md` is at 12174 of its **12288-byte cap**
    (`SkillReferenceLayoutTest`), so put the new format into its own reference file.
  - Draft for the reflective guidance: `proposed/print-node-reflective.md` in the study directory, which
    AGENTIC_VIEW may supersede. Its line "Stored values that the concept does not declare are listed too, so a
    feature can appear twice" repeats the wrong `isDeprecated` explanation (§2 weakness 9).
  - Propagate each changed skill folder to `.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest`)
    and run `plugins/mcp-tools/scripts/validate_skill_catalog.py`.
- **`mps_dump.py`** (`…/skills/mps-mcp-workflow/scripts/mps_dump.py`). If AGENTIC_VIEW lands, `tree` can become a
  thin compatibility layer. Its known gaps (§3 item 6) are the same ones AGENTIC_VIEW must not have.

---

## 9. Validation plan (reuse the harness)

The harness (`build.py`, primers, `analyze.py`, `cost.py`, `runs.tsv`) is in the study directory.

1. **Arm.** Add arm **A** = `format: "AGENTIC VIEW"` to `build.py`, with a 4–6-line primer describing the grammar
   (sigils, legend, `∅`, defaults).
2. **Batteries.** Re-run batteries A and B with opus and sonnet, using the same questions and keys. Reverse the
   question order for sonnet. Calibrate once per model.
3. **Success criteria.**

   | measure | target |
   |---|---|
   | Accuracy on shared items | ≥ R and J (68/68) |
   | Capability items A5/A7/B12 (ids, references, target model) | answered, as J does |
   | Capability items A6/B7 (empty roles) | answered, as R does |
   | Turns per battery | 4 (one print per root, no script) |
   | Marginal cost | ≤ R (27–45k) |
   | Δ context | below R (5.9k / 11.8k) |
   | Confident wrong answers | 0 |

4. **Edit-loop scenario.** Add one, which the study did not measure: "rename the TraceMessage text and move the
   second `Require` to the end", checked with `check_root_node_problems`. It shows whether the ids in AGENTIC_VIEW
   remove the follow-up JSON print that R needs.
5. **Robustness checks.**
   - A node of an unbuilt language (`conceptLoaded:false` path).
   - A foreign-project node (cross-project markers).
   - A root over 20 KB of JSON (BL `IfStatement_Editor`, `r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)/1075379419312`):
     it must stay inline or truncate with stubs.
6. **Metrics.** Use `analyze.py` / `cost.py`; append the new runs to `runs.tsv` (run name → transcript id).
