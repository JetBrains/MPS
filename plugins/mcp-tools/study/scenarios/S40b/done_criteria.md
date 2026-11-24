# S40b done criteria — Kaja IDE, a standalone MPS-based IDE (observer, read-only, projectPath = run project dir)

Status: **rev 6, 2026-11-24, rehearsed in variant G; prompt frozen.** Rehearsal (MPS 261.25134 from sources,
`dist/MPS` = the 2026.1.2 zip, `MPS-261.27258.1085`): `S40b-opus-2` (medium) PASS in 94 tool calls (47 MCP, 0 failed),
10 min, Ant 22 s + 54 s, and the observer's extended check started the IDE; `S40b-sonnet-1` (medium) PASS in
101 (52 MCP, 1 harmless NOT_FOUND), 12 min, five Ant runs. (`S40b-opus-1` was aborted after 5 calls: trial blueprints in `$TMPDIR`, shared
preflight 5.) Variant P is still unrehearsed. Rev 6 folds in the rehearsal's criteria defects. Written from three
ad-hoc runs on 2026-11-23 (`2026.1` branch, MPS 261.25134 from sources, target the MPS 2026.1.2 **macOS app**, so
only platform-neutral and macOS archives could be built): about 130 tool calls before the skill revisions, about
80 after the first and about 85 after the second (0 failed MCP calls; the remaining cost was launching the built
app, which this cell leaves to the observer). `dist/MPS` is whatever MPS of the release the observer machine has (`../coverage/build-shared-criteria.md`,
"Variants"), so the cell runs in one of two variants, recorded per run and compared only within a variant:
**G** (the platform-independent distribution): two of the wizard's four archives, Linux and macOS aarch64, which
cover tar and zip, file modes, the glob and regex mappers, `Info.plist`, the platform switch and the launch check;
**P** (an installation for the host platform, for example the `Contents` of a macOS app): only the host's archive,
assembled from that installation's paths, which exercises `standalone-distribution.md` "Building Against a macOS
MPS". Windows (CRLF, `.exe.vmoptions`) is not covered in either. Shared preflight, integrity, side effects and isolation: `../coverage/build-shared-criteria.md`.

Fixture: `kaja-build`, as S40a. Size: 80–130 tool calls in all (Bash, Skill and MCP; the rehearsal's opus run: 94,
of which 47 MCP), about 10 minutes, `build/` about 2 GB in variant G. Run after S40a on the same model.

Traps seen in the ad-hoc runs:

| trap | forced by | skill text |
|---|---|---|
| the wizard is not reachable; the skill must not stop on "ask the user to run the wizard" | "Nobody can use the MPS UI" | `standalone-manual-recipe.md` "Where to Get the Template" |
| the branding has no stored name: references to it need node references | criterion 3 | `SKILL.md`, `standalone-manual-recipe.md` |
| macro references by name (`version`) stay unresolved after an insert | criterion 2 | `SKILL.md`, `plugins-and-macros.md` |
| `vcs-git` is imported from `mpsVcsPlatform` (through `mpsVcs`), `mps-make` from `mpsMakePlugin`; importing `mpsVcs`'s own import node is out of scope | prompt item 3 | `standalone-manual-recipe.md` layout outline |
| the MPS `branding.jar` must be excluded from the imported `lib`, else the IDE polls the MPS update feed | prompt item 4 | `standalone-ide.md` "Update Checker" |
| the trust dialog is switched off by a VM option of the startup script | prompt item 4 | `standalone-ide.md` "Trust Dialog" |
| per-platform files, renames, modes and placeholders | prompt item 5 | `standalone-distribution.md` |
| the runtime solution's library jar must be in the plugin layout (as S40a) | prompt item 3 and MAKE | `mps-plugins.md` |
| the main script runs before the distribution script | prompt item 6 | `standalone-ide.md` "Generating and Running" |

## Criteria

0. **Integrity holds** (`../coverage/build-shared-criteria.md`). Preflight is a precondition, not a criterion: when it fails, the run is void and is not evaluated.
1. **The build model.** `mps_mcp_get_project_structure` (`includeModels`, `includeDependencies`; `startingPoint` the
   module reference `<uuid>(Kaja.build)`, because the bare name resolves to the model): Solution `Kaja.build` under
   `solutions/Kaja.build/` (`ls solutions/Kaja.build/*.msd`; no MCP tool reports the path), model `Kaja.build` with used languages
   `jetbrains.mps.build`, `jetbrains.mps.build.mps` and `jetbrains.mps.build.startup`, and a module dependency on
   `jetbrains.mps.ide.build`. Roots (`mps_mcp_get_compact_project_structure`, `nodeDepth: 0`): a `BuildProject` `Kaja`,
   a `BuildProject` `KajaDistribution` with a `BuildProjectDependency` on `Kaja`, and one `MpsStartupScript` (any
   name; the wizard's is `KajaScripts`). The two scripts write different files (`fileName`; empty means `build.xml`).
2. **Clean.** `mps_mcp_check_root_node_problems` on model `Kaja.build`: no errors and no warnings on any root. Info
   messages do not count.
3. **The declaration.** In `Kaja` (AGENTIC VIEW; print the `(+N)` nodes you need):
   - a `BuildProjectDependency` on `mpsStandalone` (`r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)/1392391688312941958`);
     `vcs-git` and `mps-make` reach the layout through `BuildLayout_Import`s whose targets are the `BuildMpsLayout_Plugin`
     nodes `vcs-git` (`…/830621552390848443`, a root of `mpsVcsPlatform` `…/7246064732104303799`) and `mps-make`
     (`…/1749160936187056322`, in `mpsMakePlugin` `…/6265574260762011003`). Grade on those target ids: no read tool
     returns a node's containing root. A `BuildProjectDependency` on `mpsVcs` (`…/1545517825663017278`) brings
     `mpsVcsPlatform` in, so a direct dependency on `mpsVcsPlatform` is not required (the rehearsal's opus run depended on
     `mpsStandalone`, `mpsMakePlugin`, `mpsCore`, `mpsVcs` and `mpsPlugins`); record which scripts are depended on (the
     wizard also adds `mpsCore` and `mpsPlugins`). Further imported plugins (`java`, which `mps-make` needs,
     `mps-repository`, `mps-rcp`) are recorded. Plain file copies from `$mps_home/plugins` instead are recorded as F\*,
     not failed;
   - one `BuildMps_Branding`: product name `Kaja`, full name `Kaja IDE`, company `Kaja Robotics`, script name `kaja`,
     version 1.0 (the `version` child, `BuildMps_BrandingVersion`; the deprecated `major`/`minor` properties the wizard
     template still sets beside it are recorded, not graded), and **no** `BuildMps_BrandingUpdateSite` child (role
     `updateWebsite` in the AGENTIC VIEW: empty);
   - one `BuildMps_IdeaPlugin` with `id` `jetbrains.mps.samples.Kaja` and name `Robot Kaja`, whose content holds the
     three languages with generators and `jetbrains.mps.samples.JavaKaja` (directly or through a referenced group), not
     the sandbox, with a plugin dependency in the model whose target is the `jetbrains.mps.core` plugin node
     (`…/4973949960459588488`) or the `com.intellij.modules.mps` node (`…/4973949960459706697`). The generated
     `plugin.xml` always lists `com.intellij.modules.mps`, so its `<depends>` lines are recorded, not graded;
   - the `MpsStartupScript`'s `branding` points at that branding, and its `vmOptions64` contain
     `-Didea.trust.disabled=true` or `-Didea.trust.all.projects=true` (both exist in the 2026.1.2 platform; record which).
     The option in `vmOptions` only fails: every launcher of the required archives reads the 64-bit options
     (`standalone-ide.md`).
4. **Ant runs against `dist/`** (either variant). In the transcript: `ant` on the main script's file, then on the distribution
   script's file, each `BUILD SUCCESSFUL`, with `mps_home` resolving to `~/MPSProjects/mcp-study/dist/MPS` or to that symlink's target (`readlink`; record which). A run
   against the MPS under test fails. With more runs than two (`S40b-sonnet-1`: five, all successful), grade the last
   distribution run, the one that produced the archives (integrity mtimes), and the last main run before it; record
   the others. A distribution run after a model change needs `clean`: Ant's `copy` skips up-to-date files even when
   a filter changed (`S40b-sonnet-1` steps 97 → 99).
5. **The downloads.** Under `<project>/build/artifacts/KajaDistribution/` (or the folder the generated file sets,
   record):
   - variant G: one Linux x86-64 archive (the generic distribution has Linux natives for amd64 only) and one macOS
     Apple-silicon archive. The wizard's names are `Kaja-<build>.tar.gz` and
     `Kaja-<build>-macos-aarch64.zip`; other names pass when the content (criterion 7) identifies the platform;
   - variant P: one archive for the host platform and the installation's architecture (a macOS app: the macOS archive
     for the architecture `file dist/MPS/MacOS/mps` reports; a Linux installation: the Linux archive). An archive
     for another platform assembled from the host's native files is recorded as F\* (it cannot run there), not failed.
   Further archives (Windows, macOS Intel, a platform-independent zip) are recorded, not required.
6. **Common content**, in every required archive (`tar -tzvf`, `unzip -l`, `unzip -p`, `zipinfo` for modes; nothing written into
   the project). Paths are relative to the IDE folder: the archive root for Linux as the wizard builds it (one top
   folder such as `Kaja 1.0/` is accepted, record), `<name>.app/Contents/` for macOS.
   - Exactly one entry `lib/branding.jar` in the listing; its `idea/MPSApplicationInfo.xml` names `Kaja IDE` (full
     name) and `Kaja Robotics`, and has no `<update-urls>` element and no `update-channel="MPS…"`.
   - One folder under `plugins/` (any name) holding the jars of the three languages, their generators and `JavaKaja`,
     plus `kaja_images.jar`; its descriptor jar's `plugin.xml` has `<id>jetbrains.mps.samples.Kaja</id>`. No sandbox jar.
   - `plugins/mps-core`, `plugins/vcs-git` and `plugins/mps-make` exist.
   - `build.txt` (macOS: `Resources/build.txt`) equals `build.number` in the IDE folder's `build.number` file and does not
     start with `MPS-`.
7. **Ready to run** (prompt item 5).
   Variant G takes the native files from the generic layout (`standalone-distribution.md` "Archives"); variant P from
   the installation's own paths ("Building Against a macOS MPS"); the checks below are the same.
   - The archives bundle no Java runtime (the generic distribution has none; the launchers find one as
     `standalone-ide.md` describes). "Ready to run" means ready once a JDK is found; a bundled JBR is recorded, not
     required.
   - The native libraries have the archive's architecture: `file` on the extracted Linux `lib/jna/libjnidispatch.so`
     (x86-64) and the macOS `lib/jna/libjnidispatch.jnilib` (arm64 for Apple silicon; the generic distribution's
     `lib/jna/aarch64/` file is thin arm64, `lib/jna/amd64/` thin x86_64) and `lib/pty4j/darwin/libpty.dylib` (it
     must contain the archive's architecture; the 2026.1.2 file is universal, so the `aarch64/` and `x86-64/` sources
     are the same bytes).
   - Only the named template placeholders count. `product-info.json` keeps platform macros such as `$TITLE$`,
     `$DESCR$` (the error-report URL), `$APP_PACKAGE`, `$USER_HOME` and `$IDE_CACHE_DIR` in MPS's own file too, and the
     IDE fills them in at run time; do not grep for every `$…$`.
   - Linux: `bin/kaja.sh` and `bin/kaja`, both mode 755, and `file` on the extracted `bin/kaja` reports an ELF x86-64
     executable; `bin/kaja64.vmoptions` containing the trust option of
     criterion 3; `lib/jna/libjnidispatch.so` (flat, as the wizard builds it; an architecture subfolder is recorded); `product-info.json` in the IDE folder with no `$version$`, `$build$` or
     `$path.selector$` left, and whose `launcherPath` and `vmOptionsFilePath` (relative to the folder of
     `product-info.json`) name files that are in the archive.
   - macOS: `MacOS/kaja` (755); `Info.plist` with no `$version$`, `$build$` or `$platform$` left and naming the archive's
     architecture (`arm64` for Apple silicon, `x86_64` for Intel); `Resources/product-info.json` without the three
     placeholders, its `launcherPath` and `vmOptionsFilePath` naming files in the app (relative to `Resources/`:
     `../MacOS/kaja`, `../bin/kaja.vmoptions`);
     `bin/kaja.vmoptions` containing the trust option; `lib/jna/libjnidispatch.jnilib` and `lib/pty4j/darwin/libpty.dylib`.
     Extract `MacOS/kaja` to a scratch folder outside the project (`unzip -p … > $TMPDIR/kaja-launcher`) and run `file`
     on it: the same architecture as `Info.plist` names. Record `CFBundleIdentifier`, not graded: the generator
     derives it from the company and script names, `com.kaja robotics.kaja` with a space, which Apple's rules do not
     allow, yet the app started (`S40b-opus-2`). A fix in the model (`S40b-sonnet-1`: a `replace regex` copy filter on
     `Info.plist` giving `com.kajarobotics.kaja`) is fine; an edit of the built file is an integrity failure.
   MPS's own `mps*` launchers left in `bin/` next to these are recorded, not failed.
8. **The sample is unchanged** (`../coverage/build-shared-criteria.md`).

## Extended check (observer, after the evaluation, not gating; macOS observer machines only, skip otherwise)

Extract the macOS archive to a scratch folder and re-sign it ad hoc (`codesign --force --deep -s - <app>`; the copied
launcher no longer matches its signature and is killed at start, exit 137). Start `<app>/Contents/MacOS/kaja` in the
background with `Kaja_JDK` set to a JDK **bundle** folder, for example `<MPS app>/Contents/jbr` or
`~/Library/Java/JavaVirtualMachines/jbr-25.0.4` (the rehearsal; the launcher appends
`Contents/Home` itself, so `…/jbr/Contents/Home` fails). The macOS launcher reads `$Kaja_JDK` (the branding's product
name, case-sensitive; `envVarBaseName` in `product-info.json`), then
`~/Library/Application Support/Kaja Robotics/<selector>/kaja.jdk`, `Contents/jbr`, `$JDK_HOME` and `$JAVA_HOME`, never
`PATH`. Without a usable runtime it prints nothing and exits 1 or waits on a modal alert: if no `idea.log` appears within
about 10 s, kill it and rerun with `IJ_LAUNCHER_DEBUG=1`. Wait for `~/Library/Logs/Kaja Robotics/*/idea.log` to show
`IDE: Kaja IDE` and the Kaja plugin among "Loaded bundled plugins" (rehearsal: within 2 s). With an empty config
folder the IDE then stops in the platform's first-start wizard (settings import); reaching it counts as started.
To skip it, `bin/kaja.vmoptions` needs `-Dintellij.startup.wizard=false -Didea.initially.ask.config=never`; add them
to the extracted app's copy when the worker did not. Confirmed 2026-11-24 (`S40b-opus-2`, whose worker had added
them): the log shows `IdeStartupWizard - IDE startup isEnabled = false` and "No configs imported, starting with
clean configs". Then kill the IDE and delete the scratch folder, `~/Library/Logs/Kaja Robotics`,
`~/Library/Caches/Kaja Robotics`, `~/Library/Application Support/Kaja Robotics` and the preferences file the launch
created, `~/Library/Preferences/<CFBundleIdentifier>.plist` (rehearsal:
`com.kaja robotics.kaja.plist`); keep a copy of `idea.log` as `$RUNS/<id>-extended-idea.log`. A start without
`ERROR`/`SEVERE` lines is the expected result (rehearsal: 0, three platform `WARN`s). The trust option's effect is
not exercised unless a project is opened in that IDE; record it as unverified otherwise.

## Process signals (record, do not gate)

- Tool calls; MAKE count and failures; Ant runs and failures; Ant durations.
- Template source: `BuildGeneratorImpl` printed (model, or the Java in the `-src.jar`), `jetbrains.mps.ide.build` roots
  (`mps`, `mpsDistribution`, the `mps` startup script) printed, `jetbrains.mps.build.startup.defaults`
  `MPSStartupScript_template` printed (the rehearsal's opus run), the classpath read from `dist/MPS/bin/mps.sh`, or the
  outline only.
- Whether the worker stopped or asked for the wizard (a stop fails through the criteria; record it as a defect of
  "Where to Get the Template").
- Reload passes; unresolved references repaired after inserts (macros, branding).
- "out of search scope" errors on `BuildLayout_Import` targets.
- Skill files read, in particular `standalone-manual-recipe.md`, `standalone-distribution.md`, `standalone-ide.md`.
