---
name: study-run-cleanup
description: Clean old MPS skill-study scratch projects under ~/MPSProjects/mcp-study. Use when the user asks to clean, prune, or reclaim disk from old run projects, proj-r directories, or archive/workspace. Not for transcripts, and not part of a measurement round.
---

# Study run cleanup

Observer-only. This skill is not in the bundled `mps-*` catalog, so a measured worker does not
load it. The same file is copied to `.claude/skills/study-run-cleanup/SKILL.md`. Keep the two
copies identical. Do not replace either with a symlink.

The procedure is `plugins/mcp-tools/study/instructions/cleanup.md`. Read it and follow it. Do not
keep a second copy here.

## Before any deletion

- Dry-run is the default. Print the paths. Apply only the list a human accepted.
- The deletion unit is a directory that contains `.mps`. Never a bucket (`r10`, `unclosed`,
  `s15`), never `harness*`, never a probe or fixture-build tree.
- The archive that existed on 2026-10-30 is classified and kept. The first dry-run does not emit
  a delete list for `archive/workspace` or `archive/fixtures`. Directory suffix is not the study
  round; do not map `rN` to `round-N`.
- A scratch with no `*.fixture.json` stamp is not eligible. Every existing scratch is in that
  state. "Two newest per family" applies only after a stamp records the fixture name and sha256.
- Stop if MPS has the project open, including under its pre-move `proj/` or `proj-rN/` path, or
  if a listed open path does not exist on disk.
- Do not delete transcripts in this step. Moving old files out of live `runs/` is a separately
  named dry-run, and it leaves `inventory.json` in place.
