Fix a false-positive module-check warning in MPS core (study defect D136).

Context: you work in the MPS checkout /Users/vaclav/work/MPS/myMPS-fix (branch 261/vaclav/MCP3; the defect was
filed in 25a64ad01d6e and the workaround docs landed in 31145f5dc037). Read CLAUDE.md
and the `.agents/` rules it lists (git, conventions, quality-gates) before changing anything. MPS and IntelliJ
IDEA with their MCP servers are available; prefer the IDEA MCP tools for Java navigation, build and tests.

Symptom. A language L that both EXTENDS a language X and declares X as a Generation Target (`generate-into`)
gets a warning on its generator from the module check (`mps_mcp_check_root_node_problems` on the language, or
MPS's own module validation):
"'L' must specify the language 'X' as a generation target to include its runtime modules into compilation"
although L does declare X. It persists after a rebuild. It appears only when X itself generates into further
languages that have runtime modules (e.g. X generates into jetbrains.mps.baseLanguage). The current workaround,
documented in plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/mps-aspect-generator/references/module-structure.md,
is to also declare X's targets as Generation Targets of L. Two independent study agents hit it (2026-10-30,
exercise "calc + calc.sugar": sugar extends calc and generates into calc; calc generates into baseLanguage).

Analysis so far (verify it yourself before relying on it):
- core/kernel/source/jetbrains/mps/smodel/language/LanguageRuntime.java `getRuntimeModules()` (~line 376):
  the cycle guard is `final HashSet<LanguageRuntime> seen = new HashSet<>(myExtendedLanguages); seen.add(this);`
  then it walks `myGeneratesIntoTargets` with `rtModulesOfGenTarget`, which returns immediately for a language
  already in `seen`. X is in `seen` (extended), so X's own generation targets are never followed; only X's
  extends-hierarchy runtimes come in through `rtModulesFromExtendsHierarchy`.
- core/project-check/source/jetbrains/mps/project/validation/ValidationUtil.java
  `warnMissingTargetLangRuntime` (~line 298) compares L's `getRuntimeModules()` against X's full
  `getRuntimeModules()` (which does include X's targets), so it reports X as missing.
- The guard was introduced by 62d3dcdad40f "MPS-34452 StackOverflow in LR.getRuntimeModules" for generation-
  target cycles (L1 → L2 → L3 → L1). Seeding `seen` with the extended languages is not needed for that.
  Likely fix: seed `seen` with `this` only, keeping the cycle protection, so an extended language that is also a
  generation target contributes its targets. Decide whether that is the intended semantics of
  `getRuntimeModules()` (its Javadoc: runtimes of extended languages plus of generation targets) and check every
  caller (`grep -rn getRuntimeModules core plugins workbench --include=*.java --include=*.kt`, e.g. the make and
  classpath computation) for a behaviour change: the set can only grow, and only for a language that extends and
  generates into the same language.

Tasks:
1. Reproduce: create a small test (or find the right existing test suite for LanguageRuntime/LanguageRegistry or
   module validation in core or testbench; MPS tests must be registered in a suite — there is no pattern-based
   discovery) with languages X (generates into a language with a runtime solution) and L (extends X, generates
   into X); assert L.getRuntimeModules() contains X's target runtimes and the module check reports no warning.
   It must fail before the fix.
2. Fix LanguageRuntime.getRuntimeModules (keep the MPS-34452 cycle protection; add a cycle case to the test if
   none exists).
3. Run the new test and the suites that cover make/classpath and module validation (see .agents/quality-gates.md).
4. Remove the workaround from mps-aspect-generator/references/module-structure.md (the last two sentences of the
   paragraph that starts "This tells MPS:", from "A language that both extends and generates into"; keep the
   `Extends` is no substitute sentence, which stays true for plain extension) and the row "Module check warns on
   the generator ... although L declares X" in references/common-failures.md (edit the blueprint under
   plugins/mcp-tools/resources/…/skills, then propagate to .agents/skills and .claude/skills as CLAUDE.md
   describes; run plugins/mcp-tools/scripts/validate_skill_catalog.py).
5. Move D136 in plugins/mcp-tools/study/instructions/defects.md to instructions/defects-archive.md as fixed, with the commit.
6. Commit per .agents/git.md (ask for a YouTrack issue id first if the format requires one; do not push).
   Report: the root cause as verified, the change, the test evidence (fail before / pass after), and callers checked.