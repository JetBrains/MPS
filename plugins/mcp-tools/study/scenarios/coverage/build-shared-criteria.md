# Build-language cells (S40a, S40b): shared preflight, integrity, side effects

Rev 5, 2026-11-24 (rehearsed in variant G). Read with `../S40a/done_criteria.md` and `../S40b/done_criteria.md`.

## What these cells are evidence of

The `mps-build-language` skill was revised on 2026-11-23 (`c1dbfcaf6fe0`, `fe8407bd931f`, `b2b3c24ae8d8`, branch `2026.1`) from
ad-hoc runs on this very task, and its text quotes the Kaja sample (`kaja_images.jar`, `Kaja_JDK`,
`solutions/Kaja.ide.build/...`). S40a and S40b are therefore **regression and cost cells for that text**, not
evidence that the skill generalises to another project. A generalisation cell needs a second sample.

## Preflight (observer, before every S40 run; abort the cell when one fails)

1. **Release line.** The MPS under test and `~/MPSProjects/mcp-study/dist/MPS` are of the same release line:
   the first component of `mpsBuild` from `mps_mcp_list_open_projects` equals the baseline in `dist/MPS/build.txt`
   (macOS app: `dist/MPS/Resources/build.txt`; `MPS-261.<build>` → `261`). When the machine has no MPS of that
   release, download the platform-independent zip once into its own empty folder
   (`https://download.jetbrains.com/mps/<major>/MPS-<version>.zip` and its `.sha256`; 2026.1.2 is 700 MB), check the
   sha256, unzip it beside the download and point `dist/MPS` at the unpacked `MPS <version>` folder (variant G), as the
   2026-11-24 rehearsal did; when that is not possible, skip both cells, which is not a failure. The generated Ant scripts and the wizard-style
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
   caches). In variant G it is not required: the 2026-11-24 rehearsal showed that the Ant `generate` worker of a
   platform-independent `dist/` touches no `~/Library/…/JetBrains/MPS2026.1` folder ("Side effects").
5. **No Kaja leftovers in the worker's temp folders.** Workers run with the observer's `TMPDIR` (`run_worker.sh`
   passes it through `env -i`) and some write blueprints and Ant logs to `$TMPDIR/kaja*` or `/tmp/kaja*`. A later
   worker that finds an earlier run's or an ad-hoc trial's blueprints there can reuse them, and the names are the
   worker's choice (`$TMPDIR/kaja`, `$TMPDIR/kajagen`, `$TMPDIR/kajabuild`, `/tmp/kajabuild`, `/tmp/kw` in the
   rehearsal). Before every launch, `ls -d $TMPDIR/[Kk]aja* /tmp/[Kk]aja*` prints nothing; after every run, take
   the paths the transcript names (`grep -o` for `$TMPDIR/…`, `/tmp/…` and `/var/folders/…/T/…` in the tool inputs,
   minus the MCP server's `mps-node-*.json`) and move those files to
   `$RUNS/<id>-worker-tmp/` (evidence: criterion 5 of S40a may need the Ant log) and delete unpacked archive copies
   (S40b workers leave up to 2.3 GB). The 2026-11-24 rehearsal found the
   2026-11-23 trial blueprints (`kaja-main-*.json`, `kaja-dist-*.json`, `kaja-startup-*.json`, `kajaplug/`) in
   `$TMPDIR` and aborted `S40b-opus-1` after 5 calls; they are archived under `archive/tmpdir-adhoc-2026-11-23/`.
   Do not move by timestamp: a `find -newer` sweep also catches files of the running MPS and Ant (`jlinenative-*`,
   `mps-workbench-make-*.alive`, `dictionary-storage*`, `jetbrainsd-*`, `mps-<date>-<n>`), and `run_worker.sh` rewrites
   `<id>.meta.json` at the end, so `-newer` that file finds nothing (both seen in the 2026-11-24 re-measure).

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

- The generated Ant files (`build-plugin.xml`, the `build*.xml` of S40b) come only from an MPS MAKE of the build
  model, and everything under `build/` only from Ant. No `Write`/`Edit` of those paths and no shell command in
  the transcript that writes them (`zip`, `unzip -o` into `build/`, `tar` creating an archive, `cp`/`mv`/`sed -i`
  into them). Unpacking an archive to a scratch folder **outside** the project to inspect it is fine.
- The graded archives' mtimes (`Kaja.zip`; S40b's downloads) lie inside the window of the last successful Ant run
  that produced them (the `ant` command's start and end in the transcript). The Ant files the scripts name in
  `fileName` (S40a `build-plugin.xml`; S40b for example `build.xml` and `buildDistribution.xml`) have mtimes inside
  some MAKE of the build model and equal that model's `source_gen` copies, which are named after the root
  (`source_gen/<model path>/Kaja.xml`, `KajaDistribution.xml`, `KajaPlugin.xml`), not after `fileName`; a rebuild leaves unchanged outputs (the
  startup script's launcher files) with an earlier MAKE's mtime. Files that Ant unpacks from jars (`mps-tips.jar`)
  keep the jar's entry dates.

## Sample unchanged (gating, both cells)

`diff -rq -x source_gen -x source_gen.caches -x classes_gen -x 'trace.info' <fixture>/languages <proj>/languages` (`<fixture>` = `kaja-build.tar.gz` extracted with `--strip-components=1` into a fresh scratch folder
outside the run project; delete it afterwards)
and the same for `solutions` with `-x Kaja.build` added; nothing may differ. Confirm once, on the fixture
build, that opening and making the sample rewrites none of its `.mpl`/`.msd`/`.mps` files; if it does,
compare against a fixture copy that was opened and made the same way, and record it here.

## Side effects

Rehearsal 2026-11-24 (variant G, four runs): the Ant `generate` step and the S40b layout runs touched none of
`~/Library/{Caches,Logs}/JetBrains/MPS2026.1` and created no `Kaja Robotics` folder, and no Java process other than the
MPS under test listened on a TCP port during any run. `~/Library/Application Support/JetBrains/MPS2026.1/mps.vmoptions`
changes on its own: JetBrains Toolbox rewrites it (it holds `-Dtoolbox.notification.token`), so ignore its mtime.
Keep checking per run, because variant P has not been rehearsed:

- Before and after the run: `stat -f '%Sm %N' ~/Library/{Caches,Logs,"Application Support"}/JetBrains/MPS2026.1`
  (and `ls -d ~/Library/*/"Kaja Robotics"` for S40b). A change other than Toolbox's means the headless Ant MPS
  shares folders with an installed MPS of that release.
- The `dist/` MPS bundles the MCP plugins. Sample the listening ports while the worker runs, so a second MCP
  endpoint `mps_mcp_url.py` could pick would show up; a one-off check afterwards cannot see it. The rehearsal's
  sampler, started right after the launch (`<mps-pid>` is the MPS under test):
  `while kill -0 $(cat $RUNS/<id>.wrapper.pid); do echo "$(date -u +%T) $(lsof -iTCP -sTCP:LISTEN -n -P | awk '$1=="java" && $2!=<mps-pid> {print $2":"$9}' | tr '\n' ' ')"; sleep 3; done > $RUNS/<id>.ports.log`.
  A line with more than the time stamp is a finding.
- Ant durations of each run (the worker's Bash default timeout is 120 s; the rehearsal's runs took 11–22 s for S40a
  and the S40b main script, 54 s for the S40b distribution script).
- Reads of `dist/` are expected (`X_outside_project`); reads of an MPS checkout's sources are the lesson-47
  signal.

## Cleanup

After the evaluation, keep the listings (`unzip -l`, `tar -tzvf`, `zipinfo`) as evidence and delete the run
project's `build/` (S40b leaves about 2 GB there in variant G: two archives of about 490 MB each and the unpacked
layouts; variant P: one archive and the layout), any `replay-<scratch>` copy, and what the worker left in
`$TMPDIR`/`/tmp` after moving it to `$RUNS/<id>-worker-tmp/` (preflight 5); old run projects go through
`study-run-cleanup`.

## Isolation

Kaja module ids, shared with `kaja-dataflow*` (S13, S16) and `kaja-editor` (S35): restart MPS before every
S40 run (Ant `generate` rewrites the run project's `source_gen`), never open two Kaja fixtures together, and
never open one next to the MPS checkout's own project, which loads `samples/robot_Kaja`. Run S40a before S40b
on a model; read S40b's plugin-part failures only when S40a passed on that model.
