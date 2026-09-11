# Phase 6 — Review Checklist

Apply `.agents/workflow.md` (Reviews) and `.agents/conventions.md`. Those cover severity ordering, file:line citations, regressions, API compatibility and generated-source drift. The checks specific to a bugfix, in this order:

1. **Does the diff actually address the reported symptom?** Name the line that changes the observed behaviour, and the test that would have failed before it. A diff that is clean, minimal and irrelevant to the ticket is the failure mode this question exists to catch.
2. **Is the fix in the layer that owns the behaviour?** If it patches generated or hand-written code where an MPS model, language aspect or generator is the real source of truth, say so (`.agents/conventions.md`).
3. **Missing edge cases** — null/empty inputs, and the neighbouring cases the root cause implies.
4. **Anything in the diff that is not part of the fix** — stray formatting, unrelated files, regenerated sources that do not belong to this change.
