# Follow-up plan: stop the study's sample projects shipping obsolete skills

> **Status: IMPLEMENTED 2026-09-17 (round 3), by a stronger variant than this plan describes.**
> The plan below kept the catalog inside the fixture and added a staleness *guard*
> (`skillsSha256` compared against a pre-recorded live fingerprint, exit 2 on mismatch). What
> shipped instead removes the catalog from the fixture entirely and **installs the live one per
> run**, so staleness is structurally impossible rather than merely detected:
>
> - fixtures exclude `.agents/`, `.claude/`, `AGENTS.md`, `CLAUDE.md` (`fixtures/README.md`);
> - `scripts/install_skills.py` purges every `mps-*` folder and both guides, then calls
>   `mps_mcp_initialize_project_for_agents`, and verifies both guides were *written* rather than
>   reported as already present;
> - `run_worker.sh` runs it before taking the call-log offsets (so the install's own MCP calls stay
>   out of the run's server slice), aborts the run if it fails, and records `skillsSha256` +
>   `skillsInstalled` in every meta; `SKIP_SKILL_INSTALL=1` is the escape hatch.
>
> Sections 1–5 below are kept as the design record. Step 3's guard is superseded, and step 5's
> "rebuild the existing fixtures once" was done (round-3 `fixtures-r3/`). Defects D16 and D19 are
> closed in `docs-defects.md`; see lesson 24.

Status (original): implementable with the **current** `mps_mcp_initialize_project_for_agents`. That
tool has no `refresh` / `dryRun` parameters, no provenance manifest, and no `catalogSha256` envelope
field (those live in the unimplemented `../docs/skill-refresh-implementation-plan.md`). Do not wait
on them. Origin: round-2 study, defect D16 and lesson 20.

## The defect, precisely

A scenario project's skills are a **point-in-time copy**, one or two tarball generations removed
from the catalog:

1. A human initialises a golden project once (`mps_mcp_initialize_project_for_agents`) — study
   `SKILL.md` step 3.
2. It is tarred into `fixtures/empty-project.tar.gz` — `fixtures/README.md`.
3. Every run extracts that tarball into `~/MPSProjects/mcp-study/proj/<run-id>/` — `harness.md`
   procedure card step 1.
4. `run_worker.sh` starts the worker with cwd = that copy, so the worker reads the **copy's**
   `.claude/skills/`.
5. The `recipes` fixture is a tar of a *passing S1 run's project*, so it inherits the same snapshot
   transitively.

Nothing re-installs, and nothing notices. `run_worker.sh:36-37` pins `promptSha256` and
`inventorySha256` (the **server tool** surface) into every meta — so a tool or parameter rename is
caught, while a catalog change is invisible. That asymmetry is the whole bug.

It bit round 2: the golden project was initialised 2026-09-15 13:25, the doc/script remedies landed
15:54 and 16:04 the same day, and at round start the fixture's catalog differed from the bundled one
in 33 entries, with no `scripts/` (R5 missing) and no `rootsChecked` (R2-docs missing). Refreshing it
by hand was a precondition for the round. Since `skill_reads` / `skill_read_bytes` is itself a ranked
hotspot, the distortion lands directly on a measured quantity.

Not a problem, and worth keeping that way: `~/.claude/skills` holds no `mps-*` skills, so the
project copy is the single source. Any future user-level MPS skill would shadow this and must be
checked in preflight.

## What the current initializer actually does

`mps_mcp_initialize_project_for_agents` today:

- copies the bundled `mps-*` catalog into `<targetDirectory>/.agents/skills/` and
  `<targetDirectory>/.claude/skills/`
- writes `AGENTS.md` / `CLAUDE.md` **only when those files are absent**
- **aborts without writing** if any incoming skill folder name already exists in either skills
  directory
- returns `installedSkillCount`, `skillsDirectories`, `guideFilesWritten`,
  `guideFilesAlreadyPresent`, and `agentsFileText` — not a catalog fingerprint

Refresh is therefore a caller-side clean reinstall, not a tool mode. For a **study sample
project** there is nothing to preserve: delete the installed skills and the two guide files, then
call the tool so it installs the live catalog and writes both guides from the bundled template.

Fingerprint the catalog locally (the tool does not). Hash only `mps-*` files so a later
`recipes-dsl` (or any other non-bundled skill) in the `recipes` fixture does not trip the guard:

```bash
catalog_sha() {
  local dir=$1
  find "$dir" -type d -name 'mps-*' -print0 \
    | xargs -0 -I{} find {} -type f \
    | sort \
    | xargs shasum -a 256 \
    | shasum -a 256 \
    | cut -d' ' -f1
}
```

Live side: a throwaway install of whatever the **running plugin** would write right now (not the
checkout's `resources/` tree, which may be ahead of an un-restarted MPS). Fixture side: the
extracted project's `.claude/skills`.

## Steps

### 1. Preflight (study `SKILL.md` step 1)

Record the live catalog fingerprint next to the tool inventory:

- `mkdir -p "$TMPDIR/mcp-catalog-probe"` (the directory must exist before the tool is called)
- `mps_mcp_initialize_project_for_agents(projectPath=<golden>, targetDirectory=$TMPDIR/mcp-catalog-probe)`
  — `projectPath` is the open golden project; `targetDirectory` is the empty probe dir so golden is
  not touched
- `catalog_sha "$TMPDIR/mcp-catalog-probe/.claude/skills" > "$RUNS/skills-catalog.sha256"`
- assert there are no user-level `mps-*` skills (`ls ~/.claude/skills`), since those would shadow
  the project copies
- delete the probe dir afterwards

### 2. Fixture build (study `SKILL.md` step 3 and `fixtures/README.md`)

Replace *"an empty MPS project … after `mps_mcp_initialize_project_for_agents`"* with an explicit
recipe against the golden project (nothing in it is sacred):

- delete both installed catalogs and both guides so the tool can write a fresh tree:
  - `rm -rf <golden>/.agents/skills <golden>/.claude/skills`
  - `rm -f <golden>/AGENTS.md <golden>/CLAUDE.md`
- `mps_mcp_initialize_project_for_agents(projectPath=<golden>)` with `targetDirectory` left empty
  (installs into the golden project itself when it has no enclosing VCS root)
- confirm `guideFilesWritten` lists both guides, `guideFilesAlreadyPresent` is empty, and
  `catalog_sha <golden>/.claude/skills` equals `$RUNS/skills-catalog.sha256`
- tar as today (`tar --exclude=.git --exclude='*/.mps/workspace.xml'`)
- state that `recipes` inherits `mps-*` skills from the S1 run it is built from, so it needs no
  separate re-init — but its `mps-*` fingerprint must be checked, not assumed

### 3. Make it a precondition in `run_worker.sh`

Two small additions, modelled on the existing re-run guard:

- `catalog_sha "$PROJECT/.claude/skills"` and record it as `skillsSha256` in the meta, beside
  `promptSha256` and `inventorySha256`
- if it differs from `$RUNS/skills-catalog.sha256` (or either file is missing), **exit 2** with
  *"fixture skills are stale: <fixture sha> vs live <live sha> — rebuild the fixture (see
  fixtures/README.md) or set SKIP_SKILL_CHECK=1"*, and honour `SKIP_SKILL_CHECK=1` as the documented
  escape hatch

Effect: a run whose doc surface is unknown becomes impossible to start by accident, and every
existing meta is retro-auditable — a meta without `skillsSha256` is a run of unknown provenance.

### 4. Docs and study bookkeeping

- `harness.md`: add `skillsSha256` to the meta description and the guard to the `run_worker.sh`
  section; add "verify the fixture's `mps-*` catalog sha" to the per-run procedure card
- `lessons.md`: amend lesson 20 — it documents the manual recipe but not the automation that
  enforces it
- `docs-defects.md`: add the harness half as **D19** (D16 is the catalog-propagation half) and close
  both when this lands
- `fixtures/README.md`: the empty-project row must spell out delete-then-init, not a bare
  `initialize` call (which aborts on colliding `mps-*` folders)

### 5. Rebuild the existing fixtures once

`empty-project.tar.gz` and `recipes.tar.gz` in `~/MPSProjects/mcp-study/fixtures/` predate any
fingerprint discipline, so the guard would reject them. Rebuild both after step 2 — `recipes`
requires a passing S1 run on the refreshed `empty-project`, so budget one run for it.

## Acceptance

- A deliberately stale fixture makes `run_worker.sh` exit 2 with the message above.
- A freshly built fixture runs, and its meta carries a `skillsSha256` equal to
  `$RUNS/skills-catalog.sha256`.
- `SKIP_SKILL_CHECK=1` starts a run against a stale fixture and the meta still records the real
  (mismatching) `skillsSha256`, so the deviation is in the evidence rather than hidden.
- `fixtures/README.md` alone is sufficient to rebuild a conformant fixture from scratch, using only
  the current initializer (delete skills + guides, then `mps_mcp_initialize_project_for_agents`).
