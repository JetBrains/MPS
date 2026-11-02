# Plan: Grazie SEVERE on EDT from `mps_mcp_check_root_node_problems`

Status: proposed, not implemented (2026-11-02).
Origin: `~/MPSProjects/mcp-study/guide-slim/handoff-edt-grazie-check-root-node-problems.md`

## Diagnosis (summary)

- Report-only `mps_mcp_check_root_node_problems` (`JetBrainsMPSNodeMcpToolset.kt:861-865`) runs
  `runRootCheckers` on the EDT via `executeShortReadOnEdt`.
- `NonTypesystemChecker` runs `check_NamingPolicy_NonTypesystemRule`; for title-case policies it calls
  `NativeLanguageAnalyzer.isActionDescProperlyCapitalized` -> `LangDetector.getLang` -> `LangTool.getTool`
  with no thread guard.
- Grazie's `LanguageDetectorHolder.get()` (`GrazieUtils.kt:117-136`) lazily fills a private `@Volatile INSTANCE`
  using `runBlockingCancellable`. On the EDT / in a write action this triggers
  `assertRunBlockingBackgroundThreadAndNoWriteAction`, which **logs** a SEVERE (`#c.i.o.progress`,
  attributed to our plugin) and **continues**; the EDT is blocked during detector init and first `JLanguageTool` build.
- Check results are correct (no exception escapes, the rule is not skipped). Happens at most once per MPS process
  (static holder; not reset by MAKE / language reload). The editor highlighter runs the same rule on the
  background `Highlighter` thread, so it never trips this; if it warms the holder first, MCP calls are silent.
- No public API reports whether `LanguageDetectorHolder` is initialised.

Severity: low (log noise + one-time EDT stall; potential freeze up to modal timeout on slow init). Not urgent.

## Fix 1 (main, `..`): run report-only check off the EDT

- In `mps_mcp_check_root_node_problems`, change the report-only (`else`) branch from `executeShortReadOnEdt`
  to `executeBackgroundRead` (`AbstractOps.kt:3221`, runs on `Dispatchers.Default` with `withModalTimeout`).
- Keep the `autoApplyQuickFixes=true` branch on `executeShortCommandOnEdt` (it writes).
- Error handling: `executeBackgroundRead` does not capture a `McpUserException` thrown inside the read and
  rethrow it outside, unlike `executeShortReadOnEdt`. Preferred: add that capture to `executeBackgroundRead`
  itself (benefits all callers). Alternative: catch at this call site. The check body mostly returns `errJson`,
  but resolve paths can throw.
- Timeout semantics: the read is not cancellable, so the timeout only releases the caller; the check keeps
  running in the background. Not worse than today, and it no longer blocks the UI. Model/module sweeps are
  already bounded by `moduleCheckBudgetMs`.
- Precedent: the editor highlighter runs these checkers on a background thread in a read action.

## Fix 2: leave other `runRootCheckers` EDT callers as is (for now)

These need EDT / write command and cannot simply move:
- `mps_mcp_list_node_intentions` with `includeQuickFixes=true` (`executeShortReadOnEdt`)
- `mps_mcp_apply_intention` (`executeShortCommandOnEdt`, re-checks after write)
- `mps_mcp_parse_java_and_insert` post-insert check (inside `executeShortCommandOnEdt`)

They only trip the SEVERE if they are the first title-case naming check of the session. Covered by Fix 3 if desired.

## Fix 3 (optional backstop, `mps-spellcheck` MPS model — not `source_gen`)

Edit the model behind `../../mps-spellcheck/modules/spellcheck/source_gen/jetbrains/mps/editor/spellcheck/NativeLanguageAnalyzer.java`
via MPS MCP tools:
- Add a one-time non-blocking warm-up: static flag + pooled-thread call to `LangDetector.getLang("warm up")`.
- In `isActionDescProperlyCapitalized`: if on EDT or in a write action and warm-up has not completed,
  start the warm-up, log once at warning, and return `true` (skip check — same as the existing headless/test guard).
- Later or background callers get the real verdict.
- Cost: one EDT check per session may miss a real capitalisation violation. Ship only together with Fix 1.

## Not recommended

- Pre-warming Grazie at MCP server startup: races with the first call; adds nothing over Fix 3.
- Blocking (`runBlocking`) for init from inside the read: exactly the freeze the platform assertion prevents.

## Verification

1. Restart MPS (the holder is per-process; the current session is already warm).
2. Run one report-only `mps_mcp_check_root_node_problems` on the `ConvertToLines` root.
   - Before change: `#c.i.o.progress` SEVERE in `../../../log/idea.log`.
   - After change: no SEVERE, same `no problems found` verdict.
3. `AbstractOpsModalTimeoutTest` still passes.
4. If Fix 3 is done: first `apply_intention` / `list_node_intentions(includeQuickFixes=true)` after restart logs
   only the one-time warning, no SEVERE.
