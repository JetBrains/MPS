# Macro catalog and JSON blueprints

Read this when: attaching a macro to a template node, choosing between similar macros (COPY_SRC vs LOOP+COPY_SRC, IF with else, etc.), or debugging a macro that isn't firing.

> A blueprint written as JSON that holds a BaseLanguage body or nests more than ~5 node levels is generated with mps-node-editing's `scripts/blueprint.py`, not typed by hand; load the `mps-node-editing` companion skill from the same origin to run it.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| Where macros attach | `references/macro-catalog/macro-overview-and-table.md` |
| Fragments and root template annotation | `references/macro-catalog/fragments-and-root-template.md` |
| CopySrcNodeMacro (minimal, no query) | `references/macro-catalog/copy-src-node-macro.md` |
| CopySrcListMacro | `references/macro-catalog/copy-src-list-macro.md` |
| PropertyMacro | `references/macro-catalog/property-macro.md` |
| IfMacro | `references/macro-catalog/if-macro.md` |
| LoopMacro | `references/macro-catalog/loop-macro.md` |
| TemplateCallMacro | `references/macro-catalog/template-call-macro.md` |
| Verbatim patterns from the StateChart *sample* | `references/macro-catalog/statechart-verbatim-patterns.md` |
