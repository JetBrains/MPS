# `flows-gen` fixture (S23, S24)

**Status: built 2026-10-30** by an opus observer helper through MPS MCP only (77 calls, `FIXTURE.log`),
interpreted generator, all step-6 checks passed. Tarball: `~/MPSProjects/mcp-study/fixtures/flows-gen.tar.gz`,
sha256 `af093a666e49b573bbacf1155ea94080349c2f957c9a6eabb5115739995ed8cc`. A rebuild mints new node ids:
re-pin the section *Pins* below and in `../../fixtures/README.md`.

**New: `flows-gen`** — the one observer-built fixture of this set (S23 and S24 share it). Fixed
names, MCP replay recipe (log every call to `scenarios/S23/FIXTURE.log`, pin ids in `FIXTURE.md`,
as S15's `DEFECT.log`/`DEFECT.md`). Start from a synthesized empty project opened alone.

1. `mps_mcp_create_module` language `mcp.study.flows` (with generator, dir `<proj>/languages`);
   `mps_mcp_module_dependency` add `jetbrains.mps.baseLanguage` as generation target of the
   language. The generator stays **interpreted** (default; do not enable "Generate Templates";
   check `generator/source_gen/.../Generator.java` extends `TemplateModuleInterpreted2`). Solution
   `mcp.study.flowsdemo` (`<proj>/solutions`), model `mcp.study.flowsdemo.flows` using the language.
2. `mps_mcp_alter_structure` CREATE_CONCEPTS: root `Flow` (INamedConcept; string `owner`;
   `steps: Step[1..n]`); abstract `Step`; `Approve` (string `role`); `Notify` (string `channel`,
   string `text`); `Wait` (int `hours`); `Comment` (string `text`), all extending `Step`; root
   `Escalation` (INamedConcept; reference `flow: Flow`; string `to`; int `afterHours`). No editors.
3. Samples (`insert_root_node_from_json`): Flow `Release` (owner `qa`; Approve `lead`, Notify
   `slack`/`Build ready`, Wait 24, Comment `ping ops`, Approve `cto`, Notify `mail`/`Shipped`);
   Flow `Hotfix` (owner `oncall`; Approve `lead`, Wait 0, Notify `slack`/`Patched`); Escalation
   `releaseStuck` (Release, to `cto`, 48); Escalation `hotfixStuck` (Hotfix, to `lead`, 2).
4. Template model `mcp.study.flows.generator.templates@generator`: used languages
   `jetbrains.mps.lang.generator`, `jetbrains.mps.lang.generator.generationContext`,
   `jetbrains.mps.baseLanguage`, `jetbrains.mps.lang.smodel`; imports `mcp.study.flows.structure`
   (`mps_mcp_model_dependency` ADD). After **every** `parse_java_and_insert`, run
   `check_root_node_problems(autoApplyQuickFixes=true)` on the root to clear "Dynamic reference"
   errors. Roots:
   - `MappingConfiguration` `main`: labels `flowClass` (Flow → ClassConcept), `approversMethod`
     (Flow → InstanceMethodDeclaration); `Root_MappingRule` Flow → `FlowClass`, `labelDeclaration`
     `flowClass`; `reductionMappingRule` in this order: **R1** `Wait`, `conditionFunction`
     `if (node.hours == 0) { genContext.show warning "zero wait in " + node.ancestor<Flow>.name;
     return true; } return false;`, consequence `AbandonInput_RuleConsequence`;
     **R2** `Wait` → `TemplateDeclarationReference` `WaitStatement`; **R3** `Approve` →
     `InlineTemplateWithContext_RuleConsequence` (class context with method
     `run(java.util.List<String> trail)`; fragment `trail.add("approve:x");`, `$PROPERTY$` value
     `"approve:" + node.role`); **R4** `Notify` → `InlineSwitch_RuleConsequence`: case
     `channel == "slack"` → fragment `trail.add("notify:slack:x");` (`"notify:slack:" + node.text`),
     case `"mail"` → `trail.add("mail:x");` (`"mail:" + node.text`), `defaultConsequence`
     `DismissTopMappingRule` + `GeneratorMessage` error `"unknown channel"`; **R5** `Comment` →
     `AbandonInput_RuleConsequence`. `Weaving_MappingRule` on `Escalation`: `contextNodeQuery`
     `get output flowClass for node.flow`, `anchorQuery` `get output approversMethod for node.flow`,
     consequence `TemplateDeclarationReference` `EscalateMethod`. `DropRootRule` on `Escalation`.
   - `FlowClass` (root mode, package `mcp.study.flows.out`, `RootTemplateAnnotation` Flow):
     `$PROPERTY$` name `node.name + "Flow"`; `public static final String OWNER = "x";`
     (`$PROPERTY$` `node.owner`); `public void run(java.util.List<String> trail) { trail.add("step"); }`
     with `$COPY_SRCL$` `node.steps` on the statement; `public java.util.List<String> approvers()
     { java.util.List<String> r = new java.util.ArrayList<String>(); r.add("x"); return r; }` with
     `$LOOP$` `node.steps.ofConcept<Approve>` + `$PROPERTY$` `node.role` on `r.add`, and `$LABEL$`
     `approversMethod` on the method (default key = the Flow).
   - `WaitStatement` (`TemplateDeclaration`, applicable Wait): class context, fragment
     `trail.add("wait:" + 0);` with `$PROPERTY$` `node.hours` on the `IntegerConstant`.
   - `EscalateMethod` (`TemplateDeclaration`, applicable Escalation): class context, fragment
     `public void escalate_x(java.util.List<String> trail) { trail.add("x"); }`, `$PROPERTY$`
     name `"escalate_" + node.name`, value `"escalate:" + node.to + ":" + node.afterHours`.
5. **Defect D-ORDER**: `mps_mcp_alter_nodes MOVE_CHILD` R1 after R2 (first applicable wins: zero
   waits now print `"wait:" + 0`, the warning never fires).
6. `MAKE` language, generator, solution with `rebuild: true`. Expected Java text (as built; MPS prints
   `List`/`ArrayList` with `import java.util.List; import java.util.ArrayList;`, so qualified and imported
   names are both accepted)
   (`solutions/mcp.study.flowsdemo/source_gen/mcp/study/flows/out/`), compared as text in every
   criterion (a folded literal such as `"wait:24"` is also accepted):
   `ReleaseFlow.java`: `public static final String OWNER = "qa";` · `public void
   escalate_releaseStuck(java.util.List<String> trail) { trail.add("escalate:cto:48"); }` ·
   `run`: `trail.add("approve:lead"); trail.add("notify:slack:Build ready"); trail.add("wait:" + 24);
   trail.add("approve:cto"); trail.add("mail:Shipped");` · `approvers()`: `r.add("lead"); r.add("cto");`.
   Member order: `OWNER`, `run`, `escalate_releaseStuck`, `approvers`.
   `HotfixFlow.java`: `OWNER = "oncall"`; `escalate_hotfixStuck` adds `"escalate:lead:2"`; `run`:
   `trail.add("approve:lead"); trail.add("wait:" + 0); trail.add("notify:slack:Patched");`;
   `approvers()`: `r.add("lead");`. Then `DROP_TRANSIENT_MODELS`, `mps_mcp_close_project`, tar
   `flows-gen/` with `classes_gen` and `source_gen`, standard excludes.

## Built details

Choices the recipe left open, as built: modules live in `<proj>/languages/mcp.study.flows` and
`<proj>/solutions/mcp.study.flowsdemo`; the four used languages come from the template model's
`jetbrains.mps.devkit.templates` devkit (the ADDs were no-ops); the R4 cases test
`"slack".equals(node.channel)` / `"mail".equals(node.channel)` and are in-line templates with
context (a class with `run(trail)` holding the fragment); context classes `WaitContext`,
`EscalateContext`, `ApproveContext`, `SlackContext`, `MailContext`; R1's warning carries no node.
Before the D-ORDER injection a sanity MAKE printed "zero wait in Hotfix" and no wait line in
`HotfixFlow`, so the correct order works. Blueprints: `~/MPSProjects/mcp-study/fixtures-build/flows-gen-blueprints/`.

Generated `ReleaseFlow.java` body (after `package mcp.study.flows.out;` and the two imports):

```
public class ReleaseFlow {
  public static final String OWNER = "qa";
  public void run(List<String> trail) {
    trail.add("approve:lead");
    trail.add("notify:slack:Build ready");
    trail.add("wait:" + 24);
    trail.add("approve:cto");
    trail.add("mail:Shipped");
  }
  public void escalate_releaseStuck(List<String> trail) {
    trail.add("escalate:cto:48");
  }
  public List<String> approvers() {
    List<String> r = new ArrayList<String>();
    r.add("lead");
    r.add("cto");
    return r;
  }
}
```

`HotfixFlow.java`: `OWNER = "oncall"`; `run`: `trail.add("approve:lead"); trail.add("wait:" + 0);
trail.add("notify:slack:Patched");`; `escalate_hotfixStuck` adds `"escalate:lead:2"`; `approvers()`:
`r.add("lead");`. Same member order.

## Pins

S = `r:d84a36bd-946c-4d96-8553-cd9df4829dcd(mcp.study.flows.structure)/`,
T = `r:f5e41ac0-4666-4735-892f-9ad21437fb0e(mcp.study.flows.generator.templates@generator)/`,
M = `r:55d55113-0641-4a83-904e-e7db961310e5(mcp.study.flowsdemo.flows)/`.

- Modules: language `96b3227d-8209-460a-b6de-254a3f1b1f2f(mcp.study.flows)`, generator
  `5ce4c5bb-74e8-4314-916c-aa37311b76a8(mcp.study.flows.generator)`, solution
  `6840f4e4-28e9-4a5f-ad6d-16cb627116a4(mcp.study.flowsdemo)`.
- Concepts: Flow S`7787628450228108317`, Step `…318`, Approve `…319`, Notify `…320`, Wait `…321`,
  Comment `…322`, Escalation `…323`.
- `main` T`7787628450227719486`; root rule T`7787628450228140315`; reduction rules in order (after the
  injection): R2 T`7787628450228140402`, R1 T`7787628450228140353`, R3 T`7787628450228140404`,
  R4 T`7787628450228140406` (switch `…407`, slack case `…408`, mail case `…419`, DismissTop default
  `…430`), R5 T`7787628450228140486`; weaving rule T`7787628450228140316` (contextNodeQuery `…317`,
  anchorQuery `…326`); DropRootRule T`7787628450228140352`.
- Labels: `flowClass` T`7787628450228113631`, `approversMethod` T`7787628450228113632`.
- Templates: FlowClass T`7787628450228113633`, WaitStatement T`7787628450228126491`, EscalateMethod
  T`7787628450228126492`.
- Samples: Release M`7787628450228113618`, Hotfix M`7787628450228113625`, releaseStuck
  M`7787628450228113629`, hotfixStuck M`7787628450228113630`.

