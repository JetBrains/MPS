# Build-language cells S40a/S40b: rehearsal and freeze (2026-11-24)

Scope: the first rehearsal of the two `mps-build-language` cells drafted on 2026-11-23 (`5c79e998e548`). S40a packages
the Kaja sample's languages as an MPS plugin; S40b builds a standalone "Kaja IDE" without the wizard. Both are
regression and cost cells for the skill text revised from the 2026-11-23 Kaja trials (`c1dbfcaf6fe0`,
`fe8407bd931f`, `b2b3c24ae8d8`), not generalisation cells (`../../scenarios/coverage/build-shared-criteria.md`).
Evidence: the round's `runs/` (`S40*.eval.md`, `*-worker-tmp/`, `*-eval-listings/`, `*.ports.log`,
`S40b-opus-2-extended-idea.log`), archived under `~/MPSProjects/mcp-study/archive/runs/s40-rehearsal-2026-11-24/`.

## Setup

- MPS under test: 261.25134 from sources (this branch), call log on, one restart and SMOKE before every run.
- `dist/MPS`: variant **G**. The machine had no MPS 2026.1 any more (only 2026.2), so the platform-independent
  `MPS-2026.1.2.zip` was downloaded once and checked against its published sha256 (`../../fixtures/pins.md`).
  `dist/jdk` is the machine's JBR 25.0.4.
- Fixture `kaja-build` built from `samples/robot_Kaja` at `b2b3c24ae8d8`. Opening and making it rewrote no
  descriptor or model file.
- Workers: opus and sonnet at `medium`, `bypassPermissions`; one catalog (`skillsSha256 6cf53d48f462…`) for all runs.
  Evaluators: generic Opus subagents. The project-scope `study-*` agents are not in this worktree.

## Results

| Run | Verdict | Tool calls (MCP) | Turns | Min | $ | Notes |
|---|---|---|---|---|---|---|
| S40a-opus-1 | PASS | 31 (17) | 34 | 2.3 | 1.42 | one blueprint insert, `copyResources`, `generate build`; 0 failed calls |
| S40a-sonnet-1 | PASS | 44 (23) | 47 | 2.8 | 0.86 | `useMakeTask`; first Ant run failed on a generator without `path` (D145) |
| S40b-opus-1 | aborted | 5 | – | – | – | stopped by the observer: trial blueprints from 2026-11-23 in the shared `$TMPDIR` |
| S40b-opus-2 | PASS | 94 (47) | 97 | 10.4 | 4.97 | 2 Ant runs; added the startup-wizard options; extended check: the IDE started |
| S40b-sonnet-1 | PASS | 101 (52) | 104 | 12.1 | 2.64 | 5 Ant runs; fixed the bundle id with a copy filter (D146), needed `clean` (D147) |

Both models passed both cells. Neither worker stopped for the wizard, read MPS sources or used the
`sampleJavaExtensions` build as a template. In variant G the Ant steps left no trace in `~/Library/…/MPS2026.1`,
and no second listening Java process appeared (3-s port sampling). The extended check started the Kaja IDE
(`IDE: Kaja IDE`, Robot Kaja among the bundled plugins, 0 `ERROR`/`SEVERE`). It also confirmed that
`-Dintellij.startup.wizard=false -Didea.initially.ask.config=never` skip the first-start wizard, which until then
had been read from bytecode only.

S40a cost far less than the draft expected (31–44 calls against 60–95). The revised skill carries every trap the
ad-hoc run hit, and both workers set `mps_home`, `sourcesKind`, the library jar and the icons in their first
blueprint. The trap table now records what the rehearsal saw. Reload needed its second pass for opus (7 → 6 → 0)
but not for sonnet (21 → 0).

## What changed in the cells (rev 6, frozen)

- **S40a criterion 5 gains an observer clean-room replay.** The fixture's `source_gen`/`classes_gen` are current, MPS
  rewrites only changed files, and the generated `<generate>` runs at log level `warn`. So nothing in a run shows
  that its Ant call regenerated anything. With `useMakeTask` the zip even held the classes the MPS under test had
  compiled. The observer now reruns the worker's own Ant command on a copy without generated folders (about 15 s, no
  MPS). Both runs passed it: 183 Java files regenerated, six icons and 282 classes in the module jar. The icons item
  accepts `useMakeTask`, and the quick fix's inert `icons/**` resources entries no longer count. Lesson 54.
- **Shared preflight 5: the workers' temp folders.** Workers run with the observer's `TMPDIR`. The trial
  blueprints and `/tmp` struggle logs of 2026-11-23 were in reach, so `S40b-opus-1` was aborted and the leftovers
  archived (`archive/tmpdir-adhoc-2026-11-23/`). After every run the observer now moves the worker's own temp files
  into `$RUNS/<id>-worker-tmp/`. Lesson 53.
- **Shared preflight 1** describes the one-time zip download. **Preflight 4** is no longer required in variant G.
  The integrity text says the Ant files come from MAKE, names their `source_gen` copies, and confines the
  mtime-window rule to the archives. The side-effect section records the findings, including the Toolbox-owned
  `mps.vmoptions`, and gives the port sampler.
- **S40a and S40b criteria wording**: the module reference as `startingPoint`, and `ls` for descriptor paths;
  content through a referenced group; the import target ids `vcs-git` `…/830621552390848443` and `mps-make`
  `…/1749160936187056322`, all quoted ids verified; plugin dependencies graded in the model; failed Ant runs
  recorded, and the last successful run graded; Linux x86-64 with `file` checks on launchers and native libraries;
  only the three named placeholders count; `product-info.json` paths; no bundled JBR required; the
  `CFBundleIdentifier` recorded; the extended-check plist name and wizard options; sizes 30–50 and 80–130.

The worker prompts did not change.

## Defects filed

- D145: the `BuildMps_Generator` blueprint lacks `path`, and "bad file" is not listed as a failure.
- D146: the generated bundle id carries the company's space.
- D147: a distribution re-run after a filter change needs `clean`.

## Open

- Variant P (an installed MPS of the release) has not been rehearsed. Compare S40b runs only within a variant.
- n = 1 per model and cell. These are regression and cost cells, not model discriminators.
