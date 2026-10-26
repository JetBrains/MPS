# D97 — a Java-emitting generator needs `jetbrains.mps.baseLanguage` as a Generation Target

Status: implemented 2026-10-26 (MPS-40209), docs only. One reviewer round on the plan ("approve with changes", R1–R9) is folded in below and listed under "Review record"; the implementation review is recorded at the end.

## The defect (from `study/docs-defects.md`)

A generator whose templates emit BaseLanguage needs `jetbrains.mps.baseLanguage` declared as a Generation Target of its *language*. The `mps-aspect-generator` skill does not say this in a form workers act on. Since D63 (module-scope `check_root_node_problems`), the module check reports "… must specify the language 'jetbrains.mps.baseLanguage' as a generation target". The worker then pays for a dependency call, another MAKE and another check. Filed from round 21 (N4), PERFORMANCE ISSUE, low.

## Evidence (re-checked from the transcripts, 2026-10-26; the reviewer re-counted the steps)

Step numbers count tool uses in `*-worker.jsonl`. The round number is the evidence dir's number minus one.

| round (evidence dir) | cell | Generation Target ADD | what led to it | cost |
|---|---|---|---|---|
| 21 (`runs-r22`) | S6-opus-1 | :64 | the end-of-run module check at :62, after MAKEs at :39-40 and :58-59: "One module warning remains: the language should declare BaseLanguage as its generation target. Adding that and rebuilding" | 3 calls (:64-66) |
| 21 (`runs-r22`) | S6-sonnet-1 | :76 | the end-of-run module check at :73, after three MAKE rounds. The worker had read `references/module-structure.md` at :12 and still did not add it up front | 4 calls (:76-79) |
| 32 (`runs-r33`) | S6-opus-1 | :38, before the first MAKE | (no text names the reason) | 0 |
| 32 (`runs-r33`) | S6-sonnet-1 | :44, before the first MAKE | ":43 Before building I'll validate the generator model and add the BaseLanguage `generate-into` dependency on the language". This is `SKILL.md` step 2, followed literally | 0 |
| 42 (`runs-r43`) | S6-opus-1, S6-sonnet-1 | none | no module-scope check was run, so the warning never surfaced. Both cells PASS | 0, but the language ships without the target |

So 2 of 6 cells paid. The guidance already exists in `SKILL.md` step 2, but it is half a sentence at the end of a long step. It uses the `.mpl` spelling `generate-into` rather than the tool's scope name `Generation Target`. It names no tool call and no target language. And it sits at a point where no template exists yet. Round 42 shows a second gap that docs alone cannot close: a worker that skips the module check ships the language without the target and never learns about it. See the follow-up under "Not done here".

## How MPS decides (code facts)

- The warning comes from `ValidationUtil.warnMissingTargetLangRuntime` (`core/project-check/source/jetbrains/mps/project/validation/ValidationUtil.java:298-332`). It is a **WARNING** filed on the **generator** module (`:327`) that names the language. MAKE succeeds without the target.
- The languages it checks are the *target* languages of the generator's template models (`TemplateModelScanner.getTargetLanguages()`, `:212-215`). These are the languages of the output nodes, not the query languages. Only **loaded** models are scanned (`:208`). If templates emit `collections` or `closures` nodes, those languages are targets too, each with its own runtime (R5).
- A target is reported only if its runtime modules are not already covered by the source language's runtime (`:318-324`). `LanguageRuntime.getRuntimeModules()` follows `generatesInto` recursively (`LanguageRuntime.java:376-398`). One BaseLanguage target therefore covers what BaseLanguage itself generates into, but not BaseLanguage extensions that the templates emit directly.
- **Refresh (R1).** The `module_dependency` ADD (`JetBrainsMPSModuleMcpToolset.kt:141-160`) changes the descriptor in place and calls `setChanged()`, which fires `fireChanged()`. `ModuleUpdater` records the update, and at the class-loader refresh the language is reloaded. Its `onLoaded` runs `fixupLanguageRuntime` (`LanguageRegistry.java:638`), which re-reads the `GENERATES_INTO` dependencies. So for a language that has already been made, a re-check should clear the warning with no MAKE. **The catch:** `withAvailableLanguages` (`LanguageRegistry.java:400-407`) skips languages that have no loaded runtime. For a language that has never been made, the source side contributes no runtime modules, and a check before the first MAKE shows the warning even when the target is declared.
- **Consequence (R2).** The target language's runtime modules are missing from the compile path of consumer solutions. S6's generated Java (`int`, `String[]`) compiles anyway, which is why every cell passes. Output that uses a runtime class, such as a collections or closures runtime, would show up as `cannot resolve` in the *consumer's* `source_gen`.

## Decision: docs fix (**D**) now; a server hint as a follow-up

The entry names an **S** alternative: let `create_module(type="generator")` add the target. Rejected; the reviewer confirmed the reasoning:

1. `create_module` runs before any template exists, so the target language is unknown at that point. Templates may emit XML (`jetbrains.mps.core.xml`), plain text, or another DSL.
2. A wrong default is worse than none. A BaseLanguage target on an XML-emitting language puts BaseLanguage runtimes on every consumer's classpath, and nothing ever flags it as superfluous.
3. MPS's own *New Generator* path (`LanguageProducer.createGeneratorDescriptor` / `createTemplateModelIfNoneYet`, which `create_module` already calls, `JetBrainsMPSModuleMcpToolset.kt:446-495`) does not add one either.

## Changes

All edits go to the blueprint tree `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, then are propagated (see Validation).

1. **`mps-aspect-generator/SKILL.md`: a new step 8 just before MAKE (R3).** At that point the templates exist, it is where both round-32 cells added the target, and it is what the D97 entry proposes. The old step 8 becomes 9. The "(step 4)" back-reference at `:45` stays valid, and no test or `test_scenarios` doc greps the step numbers (R8). Draft:

   > 8. **Declare each output language as a Generation Target of the *language* (not the generator).** For Java output: `mps_mcp_module_dependency(operation="ADD", moduleName="<language>", targetModule="jetbrains.mps.baseLanguage", scope="Generation Target")`. Add one more for each BaseLanguage extension or other language whose nodes the templates emit directly (e.g. `jetbrains.mps.baseLanguage.collections`). Query languages don't count. In the `.mpl` this shows as `scope="generate-into"`. Without it, MAKE still succeeds, but consumers of the language lack the target's runtime modules. The module check then warns, on the generator, "'<language>' must specify the language '…' as a generation target to include its runtime modules into compilation". A check before the language's first MAKE shows this warning even when the target is declared; ignore it until then. See `references/module-structure.md`.

   Shorten step 2's tail to a pointer to step 8, so the two steps don't disagree. A sub-bullet under step 2 was rejected: step 2 is about the model's used languages, the very confusion the Critical Directive at `:30` warns about.

2. **`mps-aspect-generator/references/module-structure.md:68-76`.** Rewrite the paragraph around the XML snippet:
   - Lead with the tool call and the tool's scope name `Generation Target`, and present `generate-into` as its `.mpl` serialization.
   - Give BaseLanguage as the common case, with `core.xml` as the second example. Note that emitted extensions such as collections and closures are separate targets.
   - Say that it goes on the **language** (part A is about the generator module), and that the warning is reported on the generator.
   - Quote the warning verbatim, including the before-first-MAKE false positive.

   Size budget: the file is 10,167 B against `SkillReferenceLayoutTest`'s 12,288 B limit, so the rewrite must add no more than about 2 KB (R9).

3. **`mps-aspect-generator/references/common-failures.md`.**
   - Add a row: symptom "module check warns, on the generator, '… must specify the language 'X' as a generation target …'" → cause "the language does not declare X as a Generation Target" → fix "`mps_mcp_module_dependency(moduleName=<language>, targetModule=X, scope="Generation Target")`, then re-run the module check. No rebuild is needed if the language was already made. Before its first MAKE, the warning shows regardless" (R1).
   - Split the existing `cannot resolve` row (`:9`) by where the failure occurs (R2):
     - "in the generator's own `source_gen`" (a helper class the generator calls) keeps the fix "add a dependency to the generator module";
     - "in a consumer solution's `source_gen`" (a target-language runtime class) gets "declare the target language as a Generation Target of the language".

4. **`mps-model-manipulation/references/openapi-and-dependencies.md:56`.** The row "Generation targets missing | Language needs a generator dependency declared with scope `Generation Target`" quotes a message MPS never prints, and "generator dependency" points at the wrong module. Replace the symptom with the real warning text. Replace the cause with "the language does not list its output language (e.g. `jetbrains.mps.baseLanguage`) with scope `Generation Target`".

5. **`mps-aspect-accessories/references/module-level-deps.md:5,22` (R8).** The `mps_mcp_module_dependency` tool description points here, and the file lists `Generation Target` without saying what it is. Add one line: "on a language, names a language its generator emits; its runtime modules reach consumers' compile path (`generate-into` in the `.mpl`)."

6. **`mps-language-aspects-overview/SKILL.md:60` (R8, optional).** After the generator mention, add "(declare its output language as a Generation Target; see `mps-aspect-generator` step 8)". Take it only if the line reads naturally with it. The cross-skill wording must follow the boilerplate that `validate_skill_catalog.py` expects.

7. **`study/docs-defects.md`.** Inserting step 8 moves later `SKILL.md` lines down by about a line. Update the citations in the open D73 (`SKILL.md:56`) and D98 (`SKILL.md:59`) entries to the new lines (R8).

No code change and no test change.

## Validation

- `python3 -I plugins/mcp-tools/scripts/validate_skill_catalog.py`.
- Propagate every changed skill folder (`mps-aspect-generator`, `mps-model-manipulation`, `mps-aspect-accessories`, and `mps-language-aspects-overview` if item 6 is taken) over `.agents/skills/` and `.claude/skills/`, per CLAUDE.md *Skills*.
- Run **`McpContractAndSkillsTestSuite`**, the gate for skill-catalog changes (`.agents/quality-gates.md:29`). It includes `SkillCatalogReplicationTest` and `SkillReferenceLayoutTest`, which enforces the size budget (R9). Run `build_project` first; the suite does not compile (memory: stale bytecode).
- The working tree has unrelated uncommitted edits (`mps-node-editing`, `AbstractOps.kt`, …). Stage only the D97 files.
- Live confirmation of R1, when MPS MCP is up (not connected in this session): on an S6-like project after one MAKE, ADD the target and re-run the module check with no MAKE. Expect the warning to be gone. If it persists, change the common-failures fix to "then MAKE the language".

## Re-measure and bookkeeping

- Mark D97 "fixed (docs), re-measure outstanding" and move it to `docs-defects-archive.md` with the commit hash, as with D85 and D71.
- Re-measure on the next S6 round. Success means both cells add the target before their first MAKE (read the `mps_mcp_module_dependency` calls, since round 42 shows the warning can stay invisible), and no cell has a dependency + MAKE + check cycle after the warning.
- Commit: `mcp-tools - D97 generator skill: declare the output language as a Generation Target before MAKE` (format per `.agents/git.md`).

## Not done here (follow-up candidate, S)

All six S6 cells checked the `@generator` template model before MAKE (`r22` opus :38, sonnet :44; `r33` :32, :43; `r43` :29, :32). A model-scope check of a `@generator` model could add this one warning. It would compute the warning from the language's *declared* `GENERATES_INTO` dependencies versus the template target languages that have runtimes, not from the possibly stale `LanguageRuntime`. That would also close the round-42 blind spot, which docs cannot. File it as a new D entry only if the re-measure still shows misses.

## Review record

One round, verdict "approve with changes". Every finding is taken:

- R1 (medium) traced the open question: the warning refreshes on descriptor reload, but appears before the first MAKE regardless.
- R2 (medium): the cost is the consumer classpath; split the `cannot resolve` row.
- R3 (medium): place the step before MAKE, not in step 2.
- R4 (low): say the warning is reported on the generator.
- R5 (low): emitted extensions are separate targets.
- R6 (low): server hint, recorded as a follow-up.
- R7 (low): evidence wording and costs corrected.
- R8 (low): `module-level-deps.md`, the overview skill, and the D73/D98 line citations.
- R9 (medium): the gate is `McpContractAndSkillsTestSuite`; size budget; `python3 -I`; stage only D97 files.

R1's `withAvailableLanguages` claim and R9's gate and size figures were spot-checked against the code.

## Implementation review

One round on the uncommitted change. The verdict was "ship with changes". Every finding was taken except the two nits, and only one of those:

- I1 (medium): a consumer's runtime classpath comes from the dependencies cache written when it is generated (`BLDependenciesCache.java:85-93`). A plain MAKE of an unchanged consumer can therefore keep the stale cache. The consumer `cannot resolve` row now says MAKE the consumer with `"rebuild": true`.
- I2 (low): the copy-paste calls in `common-failures.md` and `openapi-and-dependencies.md` lacked the required `operation="ADD"`.
- I3 (low): the "re-check clears it" claim is not yet confirmed live. It now carries the fallback "if it persists, MAKE the language".
- Nit, taken: step 8 is split into two paragraphs after the tool call.
- Nit, declined: a cross-skill step pointer in the overview skill.

The paragraph split moved the D73 and D98 citations to `SKILL.md:59` and `:62`.

Added after review, at the user's request: `Extends` does not replace a Generation Target. `LanguageRuntime.rtModulesFromExtendsHierarchy` (`LanguageRuntime.java:389-392`) adds only the extended language's own runtime modules, not its `generatesInto` closure. A language that extends its output language can therefore pass the check without declaring the target. One sentence each in `module-structure.md` and in `module-level-deps.md` ("`Extends` typically needs a `Default` companion").
