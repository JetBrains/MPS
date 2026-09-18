# Upstream investigation: the platform rejects `mps_mcp_*` calls before dispatch when `projectPath` is absent

Status: **investigation complete, ready to file upstream. Nothing has been filed.** Written
2026-09-17 as remedy **M3b** of
[`round3-remedies-implementation-plan.md`](round3-remedies-implementation-plan.md). Filing —
whether as a YouTrack issue against the platform's MCP server, a patch, or a conversation with its
owners — is a separate decision this document does not take. Everything below is verified against
the shipped platform jar and the study's own measurements; it is written to stand alone for whoever
files it, without needing the study reports.

The MPS-side mitigation (**M3a**) has already landed and is *not* waiting on this. This document is
about removing a cost that no amount of MPS-side documentation can remove.

## The symptom

The first `mps_mcp_*` call of a fresh agent session is routinely rejected with

```
Unable to determine the target project for the current MCP tool call.
  | You may specify the project path via `…` parameter when calling a tool.
  | If you're aware of the current working directory you may pass it as `…`.
  | In the case when it's unobvious which project to use you have to ASK the USER
  | about a project providing him a numbered list of the projects.
  | Currently open projects: …
```

The call never reaches the MPS tool. The agent then repeats the identical call with `projectPath`
added — taken from the rejection message, which helpfully lists the open projects — and it
succeeds. The rejection is therefore a pure round trip: no work is done, no information is gained
that the rejection message did not itself supply, and one turn is spent.

The structural reason it is the *first* call that fails is worth stating plainly, because it is
what makes the cost unavoidable from the client side. The framework's own `projectPath` parameter
description reads *"Pass this value ALWAYS if you are aware of it."* At the start of a session the
agent is precisely **not** aware of it: it knows its working directory, which in many checkouts is
the repository root, and the selector matches only a path at or inside an open project — an
ancestor such as the repo root is rejected. The one tool designed to answer "what is the project
path?" is itself behind the same selector (see *What the platform already has*, below).

## Measured cost

From `study/HOTSPOT_REPORT_round3.md` (round 3 of the MPS agent-workflow study; two measured worker
cells, S1 greenfield and S3 bulk, plus an observer session):

| Observation | Source |
|---|---|
| 2 consecutive `alter_structure CREATE_ENUM` calls rejected, then repeated verbatim with `projectPath`; **2 wasted turns**, 488 B of error text each | §2.10, `S1-sonnet-1:11-13` |
| **2 of the round's 5 error envelopes** — the single most frequent error class in the round | §2.10 |
| It hit the **observer session twice** in the same round, i.e. it reaches real users, not only the harness | §2.10 |
| **3 pre-dispatch rejections across the two worker cells** (2 in S1, 1 in S3) | §5 cross-check, below |
| Present in **round 2 as well** and unactioned since (round 2 labelled it `D4/D18`; that was a conflation — D4 is a separate suggestion-scoping issue, since closed, and this is **D18** alone) | round-2 report §N3b |

The cost is small per occurrence and perfectly reproducible per *session*: one to two turns at the
start of every fresh agent session that touches MPS. In the study's own accounting a turn is the
expensive unit (≈ 97,000 tokens of fixed per-turn context, flat across three rounds), which is why
a two-turn defect ranks alongside remedies that remove several tool calls.

### The call-log cross-check, and why the gap is attributable to this family

Round 3 captured two independent counts of the same activity:

- `server_calls` — from `McpCallLogListener`, the IDE-side `ToolCallListener` that logs every call
  the MCP server **dispatches**: 60 (S1) / 15 (S3).
- `mps_calls` — from the client transcript, i.e. every call the agent **issued**: 62 (S1) / 16 (S3).

The two differ by exactly 2 and 1 — the three rejections above. A call rejected before dispatch is
counted by the client and never seen by the listener, which is the expected signature of a
pre-dispatch rejection (`HOTSPOT_REPORT_round3.md` §5).

The refinement that makes this attribution sound, rather than merely arithmetically consistent, is
the listener's own contract. `McpCallLogListener.kt:30-32` documents it:

> `ok=false` / `error` mean the tool threw (including cancellation); a tool that returned an
> `{"ok":false,…}` error envelope is a successful call at this level.

So an ordinary in-tool rejection — a bad parameter, an unresolved reference, any `{"ok":false}`
envelope MPS produces deliberately — **still logs as a dispatched call** and is counted on both
sides. It cannot open a gap between `server_calls` and `mps_calls`. Only a call that never reaches
a tool can, and in this data set the only such calls are the missing-`projectPath` rejections. The
gap is therefore evidence for this defect family specifically, not a generic "some calls failed"
figure.

(The two figures have different scopes and should not be blended: "2 of 5 error envelopes" is the
S1 cell, whose transcript the defect table was built from; the 2 + 1 = 3 is the round total across
both worker cells. Both are quoted above as they stand in the report.)

## Where the rejection lives

The string does not occur anywhere in MPS's own sources — `git grep "Unable to determine the target
project"` returns only documentation that *quotes* it (the `mps-mcp-workflow` skill, the
`mps_mcp_initialize_project_for_agents` description, the study reports and plans). It was located
instead in the bundled platform distribution:

```
plugins/mcpserver/lib/mcpserver.jar
  ├── com/intellij/mcpserver/impl/McpProjectLocationInputs.class   ← the rejection sentence
  └── com/intellij/mcpserver/McpCallInfoKt.class                   ← the guidance + project list
```

The message an agent sees is assembled from two platform classes: the first sentence is the
resolution failure, and the guidance block with `Currently open projects: …` is a separate template
in `McpCallInfoKt` (which also holds the two distinguishable failure modes, `"No project opened"`
and `"No exact project is specified while multiple projects are opened."`). Note what that template
tells the agent to do: *"you have to ASK the USER about a project providing him a numbered list"* —
which an unattended agent session cannot do. What makes recovery possible in practice is not that
instruction but the appended project list, which is what M3a's rule exploits.

**How it was found.** The string is absent from tracked sources, so the search moved to the
bundled, git-ignored platform jars (`.gitignore` excludes `/plugins/mcpserver`). Unpacking
`mcpserver.jar` and grepping every entry finds the literal in **exactly one** class,
`com/intellij/mcpserver/impl/McpProjectLocationInputs` — the same class in the same location in a
stock IntelliJ IDEA installation, which additionally ships a
`McpProjectLocationInputs$resolveProject$1` continuation class, naming the step that resolves.

Two consequences:

1. The rejection is **the platform's**, not MPS's. No `try`/`catch` inside an MPS tool can observe
   or recover from it: the tool body never runs. (This is the same class of problem as the D20 wire
   shape crash fixed in `190aa53fa82c`, where argument binding failed before any MPS frame was on
   the stack — and it has the same consequence, that MPS cannot fix it in `mcp-tools`.)
2. It is therefore **not actionable in this repository**, which is the whole reason this is an
   upstream item rather than a remedy.

### What the class does — and the four inputs it already chains

`javap` on the bundled class is more informative than the plan assumed, and it changes the ask.
The class is a four-field data class with a single resolution entry point:

```java
public final class com.intellij.mcpserver.impl.McpProjectLocationInputs {
  private final java.lang.String projectPathFromArgument;
  private final java.lang.String projectPathFromCallHeader;
  private final java.lang.String projectPathFromSessionHeader;
  private final java.util.Set<java.lang.String> roots;
  public final java.lang.Object resolveProject(kotlin.coroutines.Continuation<? super Project>);
  …
}
```

Its string constants spell out the algorithm:

```
Resolving project in chaining mode...
Skipping call header project resolution because call header is empty
Skipping session header project resolution because session header is empty
Skipping roots project resolution because roots are empty
Unable to determine the target project for the current MCP tool call.
```

Two points follow, and they are the substance of this report:

1. **`resolveProject` is typed to return a non-nullable `Project`.** At this level there is no
   "resolved to nothing" outcome: it either yields a project or fails. That is why the rejection is
   unconditional, and why nothing a tool declares about itself can currently soften it.
2. **The selector already accepts the path from four sources, chained**: the tool's own
   `projectPath` argument, a **per-call header**, a **per-session header**, and the MCP protocol's
   **`roots`** set. Only the first is what agents actually use, and it is the only one that must be
   repeated on every call. Three of the four are session-scoped or connection-scoped.

## What the platform already has

The platform's *post-dispatch* API already tolerates "no project", which is the asymmetry this
report is about. `com.intellij.mcpserver.McpCallInfoKt` declares both accessors on the call's
coroutine context, plus the error constructor:

```java
public static final Project getProject(CoroutineContext);        // required — fails without one
public static final Project getProjectOrNull(CoroutineContext);   // Project? in Kotlin
public static final McpExpectedError noSuitableProjectError(String);
```

MPS uses the tolerant one:

- `com.intellij.mcpserver.projectOrNull` is public platform API, and MPS imports it —
  `JetBrainsMPSProjectMcpToolset.kt:8`.
- `mps_mcp_list_open_projects` (`JetBrainsMPSProjectMcpToolset.kt:46-68`) is written against it:
  it reads `ProjectManager.getInstance().openProjects` and describes each one, and it needs no
  resolved project to do so. Its whole purpose is to answer *"which project should I pass?"*

So the platform supports a tool that runs without a resolved project — but a tool written that way
still never runs, because the pre-dispatch `resolveProject` gate has already failed the call.
`projectOrNull` can only report "no project" to a tool that was allowed to start. That tool is the
natural escape hatch for the symptom, and it never gets the chance to be one: a discovery call that
can only be made once you already know the answer is not a discovery call.

## The ask

### Question 0, to settle before filing anything: is a session-scoped input enough?

Given the chained inputs above, the cheapest possible resolution of D18 may need **no upstream
change at all**: if a client declares the MPS project's base directory as an MCP **root** (or sends
the session header), the selector should resolve every later call without a `projectPath` argument
— including the very first one, which is the whole cost.

This has **not been tested**, and this document does not claim it works. Testing it needs a live
MCP session with a client that declares roots, and the checkout's interactive MPS instance was
blocked by a modal dialog when this was written. It is recorded first because it is cheap to check
and would make the rest of this report unnecessary:

- Does the MPS MCP server receive the MCP `roots` list from the client at all, and is it populated
  in `McpProjectLocationInputs.roots`? (The log line `Skipping roots project resolution because
  roots are empty` is the observable.)
- If a root points at the repository **root** while the MPS project lives in a subdirectory, does
  `roots` resolution match at-or-inside like the argument does, or does it fail the same way an
  ancestor `projectPath` fails? For MPS this is the common case and would decide whether roots are
  actually a fix.
- What are the call/session header names, and can an agent set them?

If the answer is that one of these already works, the remedy is client configuration plus a
documentation line in `mps-mcp-workflow/SKILL.md`, and it supersedes M3a's per-call rule.

### The upstream question, if question 0 fails

**Can a tool opt out of the platform's `projectPath` selector?**

Concretely, one of:

- a per-tool annotation or descriptor flag meaning *"this tool resolves its own project, or needs
  none — dispatch me without a resolved project and let `projectOrNull` return `null`"*; or
- a documented convention by which a tool whose implementation only ever uses `projectOrNull`
  (never the project-required accessor) is exempted from pre-dispatch resolution; or
- if neither is possible, confirmation that the selector is mandatory by design, so downstream
  plugins can stop looking for an opt-out and document the two-turn handshake as permanent.

A narrower variant would also solve the measured problem: exempt only tools that are explicitly
declared as *discovery* tools, so that at minimum "list the open projects" is reachable from a cold
start. MPS has exactly one such tool, and the mitigation below shows that one reachable discovery
call is enough to remove the whole cost.

Filing artefacts, if wanted: the two transcripts are `S1-sonnet-1:11-13` and the round-3 observer
session; the `server_calls`/`mps_calls` cross-check is `HOTSPOT_REPORT_round3.md` §5; the call-log
mechanism is `McpCallLogListener` (`-Dmps.mcp.calllog=<file>`, off by default) and is described in
[`skill-script-automation-study.md`](skill-script-automation-study.md) §4.1.

## What MPS already does about it (M3a, landed)

Round 3 also found that MPS's *own* guidance was contradictory, which made the handshake worse than
it needed to be: the repo-root guides said to pass the path reactively (*"when a tool reports 'no
project'"*), the agent template said to pass it unconditionally, and the framework's parameter text
said to pass it *"if you are aware of it"* — which at session start is never.

**M3a** replaced that with a single unconditional rule, stated where it is read before the first
call, carrying the recovery. It landed in Phase 1 of the round-3 remedies
(`ec7ee30a17a7`) as a Critical Directive in `mps-mcp-workflow/SKILL.md:23`:

> **Pass `projectPath` on every `mps_mcp_*` call, starting with the first one.** […] a call without
> it is rejected *before dispatch* […] You will usually not know that path at the start of a
> session: make the call anyway, and take the path from the rejection message, which lists the open
> projects (`Currently open projects: {…}`); `mps_mcp_list_open_projects` reports the same value as
> `mpsProjectBaseDirectory` when it can run. Reuse that one path for every later call in the
> session.

**2026-09-18 follow-up.** The empty first call above was later replaced by a cheaper probe: if the
agent is not yet aware of `projectPath`, pass the session CWD on the first call and scrape the
rejection list only if that is unmatched. That removes the measured omitted-`projectPath` cost when
CWD is at or inside the open project. It does not remove the ancestor/subdirectory case this
document is about, nor the gated discovery tool.

That is still the best a *documentation* fix can do, and it is explicitly a mitigation: the CWD
probe avoids the rejection in the common in-project layout, and otherwise makes it recoverable in
one turn instead of two-plus. The rejection itself still happens when CWD is an ancestor, and still
costs the turn. Note the hedge "when it can run" in the last sentence — it is there precisely
because the discovery tool is behind the same selector. Removing that remaining cost needs either a
client-configuration answer to question 0 or an upstream change; either one would also let that
hedge be deleted.

## Bookkeeping

- Study defect **D18** (`study/docs-defects.md`) tracks the symptom; this document is the
  write-up it points at.
- Round-2 remedy **N3b** first proposed the upstream investigation
  (`study/HOTSPOT_REPORT_round2.md:225`); this document discharges it.
- A round-4 re-measure is the only way to show the remaining cost after M3a, and would also
  quantify what an upstream fix would save: the expected signature is the
  `server_calls`/`mps_calls` gap closing to zero.
