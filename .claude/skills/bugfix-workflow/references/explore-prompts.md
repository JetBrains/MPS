# Phase 2 — Parallel Explore Agent Prompts

## MPS Source Analysis (2–3 parallel agents)

- **Reproduction path**: "Trace the code path described in issue <issue-id> from the entry point through to the failure. Return the 5–10 most relevant files with line ranges."
- **Similar code / existing handling**: "Find code that handles cases similar to the one described in <issue-id>. Look for existing error handling, related subsystems, and patterns. Return the 5–10 most relevant files."
- **Test coverage**: "Find existing tests that cover the subsystem or code path relevant to <issue-id>. Return relevant test files and test method names."

Read every file returned by the agents. Build a comprehensive picture of the code path, data flow, and invariants.

## Platform Analysis (if accessible)

If the IntelliJ platform project is accessible, launch a parallel Explore agent against the path the user provided:

- "In the IntelliJ platform sources at `<absolute platform path>`, find the platform APIs and classes that the MPS code (from the analysis above) relies on. Identify if any platform change could be involved in the bug. Return 5–10 key files."

Read the returned platform files.
