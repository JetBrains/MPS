# Build-language cells (S40a, S40b): shared preflight, integrity, side effects

Draft rev 4, 2026-11-23. Read with `../S40a/done_criteria.md` and `../S40b/done_criteria.md`.

## What these cells are evidence of

The `mps-build-language` skill was revised on 2026-11-23 (`c1dbfcaf6fe0`, `fe8407bd931f`, `b2b3c24ae8d8`, branch `2026.1`) from
ad-hoc runs on this very task, and its text quotes the Kaja sample (`kaja_images.jar`, `Kaja_JDK`,
`solutions/Kaja.ide.build/...`). S40a and S40b are therefore **regression and cost cells for that text**, not
evidence that the skill generalises to another project. A generalisation cell needs a second sample.

## Preflight (observer, before every S40 run; abort the cell when one fails)

1. **Release line.** The MPS under test and `~/MPSProjects/mcp-study/dist/MPS` are of the same release line:
   the first component of `mpsBuild` from `mps_mcp_list_open_projects` equals the baseline in `dist/MPS/build.txt`
   (macOS app: `dist/MPS/Resources/build.txt`; `MPS-261.<build>` → `261`). When the machine has no MPS of that
   release, skip both cells; that is not a failure. The generated Ant scripts and the wizard-style
   layout come from the running MPS's own `mps` / `mpsStandalone` scripts, and Ant `generate` loads the
   sample into the `dist/` MPS, so a 263 MPS against a 261 `dist/` measures version drift, not the skill.
2. **Skill revision.** After `install_skills.py`, `<run project>/.claude/skills/mps-build-language/references/standalone-manual-recipe.md`
   (or the `.agents/skills/` copy) exists. Without it the catalog is the pre-revision one, which still
   describes IDEA plugins.
3. **`dist/` and its variant** (see "Variants" for how to record it).
   - Variant G when `dist/MPS/bin/linux/mps` exists: `ls dist/MPS/bin/win/mps64.exe dist/MPS/bin/mac/Contents/MacOS/mps-aarch64 dist/MPS/bin/mac/Contents/Resources/mps.icns dist/MPS/lib/jna/amd64/libjnidispatch.so dist/MPS/lib/jna/aarch64/libjnidispatch.jnilib`,
     and `file dist/MPS/bin/mac/Contents/MacOS/mps-aarch64` reports a thin arm64 binary.
   - Variant P otherwise. macOS app: `ls dist/MPS/MacOS/mps dist/MPS/Resources/mps.icns dist/MPS/lib/jna/libjnidispatch.jnilib dist/MPS/lib/pty4j/darwin/libpty.dylib`,
     and `file dist/MPS/MacOS/mps` gives the architecture S40b's archive must have. A Linux installation: `ls dist/MPS/bin/mps.sh dist/MPS/lib` (untested: specified from MPS's own Linux tarball layout; the first S40b run on Linux is a rehearsal). Windows hosts: not specified; skip S40b.
   - `../../fixtures/pins.md` records what `dist/MPS` points at and its `build.txt` (variant G also the zip's file name and sha256).
   - `dist/jdk/bin/java -version` reports a JDK the release runs on (25 for 2026.1), and `ant -version` answers.
4. **No MPS of the `dist/` release is running** (`pgrep -fl 'MPS 2026'` or the equivalent). In variant P this holds
   always (the installation is the developer's IDE, and the Ant `generate` worker most likely shares its config and
   caches); in variant G until the rehearsal has shown where that worker keeps its config and system folders (below).

## Variants

`dist/MPS` is a symlink the observer points at the MPS of the release that the machine already has, so no
per-release download is needed:

- **G** — the platform-independent zip, unpacked. Preferred when it is at hand; S40b then builds the Linux and the
  macOS aarch64 archives.
- **P** — an installation for the host platform: on macOS the `Contents` folder of the installed app
  (`/Applications/MPS <version>.app/Contents` or `~/Applications/…`), on Linux the install folder. S40b then builds
  only the host's archive, from that installation's paths.

S40a is the same in both variants (any MPS of the release serves as `mps_home` for a plugin). S40b results are
compared only within a variant. In variant P the installation is also the developer's IDE: it must not run during
the cell (preflight 4).

Record `distVariant: G|P`, the `readlink` of `dist/MPS` and its `build.txt` as the first line of each S40 evaluation and
in the run's notes. A round uses one variant for all its S40b runs; never compare or pool S40b runs across variants.

## Integrity (gating, both cells)

- No worker write to the generated Ant files (`build-plugin.xml`, `build*.xml` of S40b) or under
  `build/artifacts/` other than through Ant: no `Write`/`Edit` of those paths and no shell command in the
  transcript that writes them (`zip`, `unzip -o` into `build/`, `tar` creating an archive, `cp`/`mv`/`sed -i`
  into them). Unpacking an archive to a scratch folder **outside** the project to inspect it is fine.
- The graded artefacts' mtimes lie inside the window of the last successful Ant run that produced them
  (the `ant` command's start and end in the transcript).

## Sample unchanged (gating, both cells)

`diff -rq -x source_gen -x source_gen.caches -x classes_gen -x 'trace.info' <fixture>/languages <proj>/languages`
and the same for `solutions` with `-x Kaja.build` added; nothing may differ. Confirm once, on the fixture
build, that opening and making the sample rewrites none of its `.mpl`/`.msd`/`.mps` files; if it does,
compare against a fixture copy that was opened and made the same way, and record it here.

## Side effects (record at the rehearsal, then fold into this file)

- Before and after the run: `ls -ld ~/Library/{Caches,Logs,"Application Support"}/JetBrains/MPS2026.1*` (and
  `Kaja Robotics` for S40b). A change means the headless Ant MPS shares folders with an installed MPS of that
  release.
- The `dist/` MPS bundles the MCP plugins. Check during the Ant `generate` step that it does not open a second MCP
  endpoint `mps_mcp_url.py` could pick (`lsof -iTCP -sTCP:LISTEN | grep java` before and during).
- Ant durations of each run (the worker's Bash default timeout is 120 s).
- Reads of `dist/` are expected (`X_outside_project`); reads of an MPS checkout's sources are the lesson-47
  signal.

## Cleanup

After the evaluation, keep the listings (`unzip -l`, `tar -tzvf`, `zipinfo`) as evidence and delete the run
project's `build/` (S40b leaves about 1 GB there in variant G: two archives and the unpacked layout; variant P: one archive and the layout); old run projects go
through `study-run-cleanup`.

## Isolation

Kaja module ids, shared with `kaja-dataflow*` (S13, S16) and `kaja-editor` (S35): restart MPS before every
S40 run (Ant `generate` rewrites the run project's `source_gen`), never open two Kaja fixtures together, and
never open one next to the MPS checkout's own project, which loads `samples/robot_Kaja`. Run S40a before S40b
on a model; read S40b's plugin-part failures only when S40a passed on that model.
