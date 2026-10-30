# S21 done criteria — Shell commands: fluent API, weaving, $CALL$ with arguments, pick output

**Status: drafted 2026-10-30 by a fable subagent, revised after two opus reviews; rehearsal round
46: `S21-opus-1` FAIL only on the weave-each gate, which the engine cannot satisfy (prompt and
criteria now ask for a weave template with `$LOOP$` + `$CALL$`), `S21-sonnet-1` FAIL on two gates
stricter than the prompt (the warning's location, the fragment label; relaxed), `S21-opus-2` PASS
on the revision (107 calls, 10 min; three wording fixes to criteria 1 and 6 after it). Freeze
after one more sonnet pass.**

## Fixture

`empty-project` (synthesized). Greenfield: language `mcp.study.shell` (with generator), solution
`mcp.study.shelldemo`, model `mcp.study.shelldemo.shells`. Output idiom: one fluent-API class per
shell whose chainable methods come from two sources — the shell's own commands (a loop in the
root template) and commands contributed by other roots (woven in). Plain Java 7.

## Topics forced

Weaving rule: `contextNodeQuery` through a label, **stable** `anchorQuery` through a fragment
label read with `get output list` (`GetOutputListByLabelAndInput`, `.first`), a weave template
that loops and calls (`$LOOP$` + `$CALL$` with arguments), a `DropRootRule` for the woven roots · `TemplateDeclaration` with
**two string parameters** and two fragments that share one `labelDeclaration` · `$CALL$`
(`TemplateCallMacro` with `actualArgument`s) from the root template — required · `$LOOP$` with
node-macro `mappingLabel` on a parameter, read by `$REF$` **pick output** (several outputs per
input, scope-filtered) · `$IF$` with alternative · `$VAR$` (`VarMacro2`) · reduction with in-line
switch (default = a template, no error) applied through `$COPY_SRC$` · genContext unique names
(in the `$CALL$` argument) · a generator **warning** (observable in the worker's MAKE response: Read of the transcript).

## Criteria

Observer, read-only, `projectPath` = run project dir; MPS only through `mcp_call.py` (`mps_mcp_*`).
Files are read on disk with `find`/`cat` (the IDEA file tools are not reachable); nodes with
`print_node`; generator messages with a Read of the worker's transcript.

File: `**/mcp.study.shelldemo/source_gen/mcp/study/shell/out/DevShell.java` (the only file);
`classes_gen/mcp/study/shell/out/DevShell.class`. Whitespace-normalised text, `if` bodies in
braces as MPS prints them, redundant parentheses accepted, JDK names imported (`List`,
`ArrayList` with `import java.util.*` lines, as MPS prints them) or qualified; member order matters.

1. **Structure.** Concepts/roles of step 1 (`mps_mcp_get_concept_details` with `languageRefs`; arg
   kinds with `print_node` `deep: true`; a `TEXT` left as the enum default, `isDefault: true`, counts as TEXT); the three roots of step 2 (`prune.hidden` true;
   `docker.status` has arg `service`).
2. **Order and members**: `log` field (`private final List<String> log = new ArrayList<String>();`); then the woven methods (criterion 3); then the own methods
   `help(String topic)` with `log.add("core:help"); log.add(String.valueOf(topic)); return this;`,
   `helpArgs(String topic)` returning `new String[]{String.valueOf(topic)}`, `quit()` with
   `log.add("core:quit"); return this;`, `quitArgs()` returning `new String[]{}`; then
   `commands()` and `usage()`. The fluent methods return `DevShell`.
3. **Woven methods**: for git `commit<u1>(String message)` / `commit<u1>Args(String message)`
   (`log.add("git:commit")`), `status<u2>()` / `status<u2>Args()` (`"git:status"`); for docker
   `status<u3>(String service)` (`"docker:status"`), `scale<u4>(String service, int replicas)`
   with two `log.add(String.valueOf(…))` lines and `scale<u4>Args` returning both; `<u2> != <u3>`;
   every `<u>` is a (possibly empty) identifier suffix, `[0-9A-Za-z_]*` (`unique name` gives
   `_…`, `unique valid identifier` may give none for the first); no `prune` member.
4. **Tail**: `commands()` returns `{"help", "quit"}`; `usage()` returns `"help topic; quit"`.
5. **Warning**: a MAKE response that generated the solution (transcript; an up-to-date later
   MAKE may print nothing) contains
   `hidden command prune skipped in Dev` (warning level); the warning comes from a `GenerationContextOp_ShowWarningMessage` in any generator query or
   mapping script (record where).
6. **Mechanisms** (`print_node`):
   - `Root_MappingRule` on Shell with `labelDeclaration`; one `TemplateDeclaration` with exactly
     **two string** `TemplateParameterDeclaration`s and two `TemplateFragment`s (the two methods)
     under one class context; **both fragments carry the same `labelDeclaration`** (a label keyed
     by the command); both call sites pass two arguments;
   - in the class template a placeholder member carries `$LOOP$` over `node.builtins` (hidden
     filtered; a loop over the `$VAR$` holding that list is the same) and a `TemplateCallMacro` with `actualArgument`s `"core"` and `node.name`; methods
     typed into the class template fail this item;
   - a `Weaving_MappingRule` on `Extension`: `contextNodeQuery` reads the shell class via the
     label with `node.shell`; `anchorQuery` uses `GenerationContextOp_GetOutputListByLabelAndInput`
     on the fragment label for the shell's visible builtins (`node` is the Extension, e.g.
     `node.shell`; the first builtin's list, or the builtins' lists concatenated) and returns `.first`; a member-name search, `member.first`/`member.last`, or a
     `$LABEL$` instead of the fragments' `labelDeclaration` fail this item;
     `ruleConsequence` is a `TemplateDeclarationReference` to a weave template (parameters recorded, not gated)
     whose placeholder member carries `$LOOP$` over the extension's non-hidden commands and a
     `TemplateCallMacro` whose `actualArgument`s are the extension name and a
     `GenerationContextOp_CreateUniqueName` (or `UniqueValidId`, or `CreateIndexedName`; record
     which) expression over the command name — the prompt has the weave template pass the unique name, so
     it sits in that argument, not in the called template; a `DropRootRule` on `Extension`;
   - the parameter template node carries `LoopMacro` over `node.args` with `mappingLabel` set, in
     both fragments; the parameter references in `String.valueOf(<param>)` carry `ReferenceMacro`
     with `GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope` (`pick output`);
     a plain `get output` is accepted only if the worker registered the two parameters under two
     labels (record it: the pick gate then fails);
   - the parameter's type carries `CopySrcNodeMacro` (no query, or `node`) and an `Arg` reduction with
     `InlineSwitch_RuleConsequence` whose `defaultConsequence` is an inline template (`String`
     or BaseLanguage `string` type), no error message; two conditional `Arg` rules or a `$SWITCH$` instead fail this item;
   - the method name `$PROPERTY$` reads the `name` parameter (`GenerationContextOp_ParameterRef`);
   - `usage()`'s return carries `IfMacro` with `alternativeConsequence`; a `VarMacro2` on the
     class or method holds the own-command list and is read (`GenerationContextOp_VarRef2`) by
     the `commands()` loop and the `usage()` property query.
7. **Clean.** `check_root_node_problems`: template model and samples 0 errors (warnings on template
   scaffolding, e.g. an unused placeholder field, are not problems).

Pass = 1–7. Accepted: the own-command block placed by a `$CALL$` on a placeholder *method* or
on a placeholder *field*; `String.valueOf` or `"" +`; the warning emitted from the condition of a
`hidden`-filtering rule instead of the query. A mapping script that only reports the warning is accepted. Not accepted: a second weaving rule, or rules beyond
the Shell root rule, the Extension weaving rule, the `Arg` reduction, an optional
`hidden`-filtering rule that emits the warning and the `DropRootRule` on `Extension`.

## Isolation

Greenfield ids, unique names (`mcp.study.shell*`). No restart needed before it.

## Risks

- Several outputs per input under one label make `get output` fail at generation time ("more
  than one output"); that failure is the intended push toward `pick output`. Workers may instead
  invent two labels — accepted but recorded.
- The anchor label is registered by the own-command `$CALL$` in the same step; `get output list`
  on it is resolved after the root template ran, so the first own method exists when weaving
  starts. The anchor query runs once per woven node, which is why it must point at a fixed
  member, not at `member.first`.
- Nested loops (commands × args) where an inner macro needs the outer element must use `$VAR$`;
  the prompt avoids that need (the inner lines read only the arg).
- Placeholder parameter references (`String.valueOf(topic)`) must point at the template's own
  parameter node; `$REF$` then overrides.
- `unique name` gives `<base>_<hash>_<idsuffix>`; criterion 3 gates on the suffix regex and on
  the query, not on one generator's naming scheme.
- Size: rehearsal `S21-opus-1` took 120 tool calls / 11 min.
- A `WeaveEach_RuleConsequence` cannot pass a per-element unique name: its `templateCall` arguments are
  evaluated once, with the rule's input, before the loop over the elements
  (`TemplateWeavingRuleInterpreted.ForeachConsequence`; `S21-opus-1` got `git_qgq` / `docker_qgq`). Hence
  the weave template with `$LOOP$` + `$CALL$`.
- Without the `DropRootRule` the Extension roots are copied into every micro-step's output, the weaving
  rule fires again on each copy, and the make fails with "failed to generate output after 10 repeated
  mappings" (`S21-opus-1`).
- Name uniqueness is only weakly gated: `_a`/`_b` suffixes follow positions, so `<u2> != <u3>` on one sample cannot tell guaranteed from accidental uniqueness; the recorded unique-name operation and its context argument carry the gate.
