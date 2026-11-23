# Standalone IDE / RCP Distribution

A standalone IDE is a reduced MPS that ships only what end users need: your languages with editor support, refactorings and analysis, without the language-design tooling. You can customize icons, splash screen, help URL, update website, the set of languages and the set of plugins.

## Setup

- **Wizard (for users in the MPS UI):** the **Build Solution** wizard (launched from the Project View), output *Standalone IDE*. It creates the solution and model and three roots: two build scripts and an `MpsStartupScript`, and copies `splash.png`, `<name>.svg` and `<name>_16.svg` (`<name>` lowercased) into `<project>/icons/`. No MCP tool runs the wizard.
- **Manual (agents, or ask the user to run the wizard):** a solution and model with used languages `jetbrains.mps.build`, `jetbrains.mps.build.mps` and `jetbrains.mps.build.startup`, importing `jetbrains.mps.ide.build` (see `references/solution-setup.md`). Then rebuild what the wizard would create — see `references/standalone-manual-recipe.md`.

After either: point `mps_home` in both scripts at a **generic** MPS distribution, run **Reload Modules From Disk** (twice for a fresh group) where the editor reports dependency errors, package runtime jars (e.g. images) into the language plugin (`references/mps-plugins.md`), then make the build model and run both scripts.

## Two Scripts

1. **The plugin script** (Kaja sample: `Kajak`) generates and compiles the modules and packages them, plus branding and the platform-neutral distribution layout.
2. **The distribution script** (`KajakDistribution`) depends on the first and builds the per-OS distributions with native launchers for Windows, macOS and Linux. Its `mps_home` must point to a **generic** MPS, because a single-platform MPS lacks files other platforms need. With only a macOS `.app`, see `references/standalone-distribution.md`.

Give each script its own `fileName` so the generated Ant files don't overwrite each other.

## Dependencies

All are `BuildProjectDependency`s on `BuildProject` roots of `jetbrains.mps.ide.build`:

- `mpsStandalone` — the minimal set, artifacts at `$mps_home`. All most RCPs need.
- Optional plugin scripts, artifacts at `$mps_home/plugins`: `mpsMakePlugin` (building scripts inside the IDE), `mpsDebuggerPlugin` (debugger and Java execution), `mpsExecutionPlugin` (running external executables), `mpsVcs` (version control), and others such as `mpsCore` / `mpsPlugins` as the sample does.

## Project Structure (`parts`)

- **Branding** — `BuildMps_Branding` (keyword `idea branding`): product name, version, build number/date, splash and about screens, icons (start from the MPS originals, keep sizes and transparency), help (`BuildMps_BrandingHelp`), optional update website (`BuildMps_BrandingUpdateSite`, see below).
- **MPS plugins** — one or more `BuildMps_IdeaPlugin`s (`idea plugin`) with name, version, plugin dependencies and content (`BuildMps_Group`s). Any RCP with languages needs `jetbrains.mps.core`. See `references/mps-plugins.md`.
- **Groups** — `BuildMps_Group`s holding the transitive closure of your languages, see `references/groups.md`.
- **Tips** — `BuildMps_Tips` (`tips & tricks`), see below.

## Default Layout

1. Import folders and files from `mpsStandalone` (`BuildLayout_Import`).
2. A `bin` folder with the common configuration and properties files (the wizard adds it).
3. A `lib` folder: `mpsStandalone::lib` imported with `BuildLayout_ImportContent`, **excluding** the MPS sources, the original `branding.jar` and `mps-tips.jar`; then a new `lib/branding.jar` built from your branding. The name must stay `branding.jar` — the startup script and `product-info.json` put it on the boot classpath, and the launcher always loads `idea/MPSApplicationInfo.xml` from it.
4. A `plugins` folder with `mps-core` (every RCP needs it), any other MPS plugins you ship (e.g. the VCS plugins), and your plugins via `BuildMpsLayout_Plugin`. Library jars that a plugin needs go into subfolders of the plugin folder (copied with `BuildLayout_File`); they are added to the plugin classpath automatically.
5. A `build.number` property file with the metadata the platform requires; the script writes the build number into `build.txt`.

## Update Checker

`BuildMps_BrandingUpdateSite` has `checkUrl` (→ `check` attribute of `<update-urls>` in `ApplicationInfo.xml`), `updateUrl` (→ `patches`), and `updateChannel` (→ `update-channel` on `<version>`; must match a channel in your feed).

- **Never** reuse the MPS check URL (`https://www.jetbrains.com/mps/update.xml`) or an `MPS*` channel: your users would be offered MPS bugfix releases as updates to your IDE. Host your own `update.xml` with a product-specific channel.
- To disable the checker, delete the child (*no updateWebsite*) so `<update-urls>` is omitted — and make sure your own `branding.jar` actually ships. If `mpsStandalone`'s `branding.jar` is still copied (also through a later unfiltered copy of `$mps_home/lib`), the IDE keeps polling the MPS feed.
- Verify after a clean rebuild: `jar tf <rcp>/lib/branding.jar` lists `idea/MPSApplicationInfo.xml`, and that file has no `<update-urls>` and no `update-channel="MPS…"`.
- To switch off platform update checks entirely, add `-Dide.no.platform.update=true` to the `MpsStartupScript` VM options or the `vmoptions` file. The build language does not emit it automatically.

## `MpsStartupScript`

A root (language `jetbrains.mps.build.startup`) defining the branding reference, boot classpath (`bootClasspath`) and VM options (`vmOptions`, `vmOptions64`). Put launcher VM options such as `-Dide.no.platform.update=true` or `-Didea.trust.disabled=true` here.

Making the model writes the launcher files into `<solution output>/<model path>/` (for example `solutions/Kaja.ide.build/source_gen/Kaja/ide/build/`): `<script>.sh`, `<script>.bat`, `<script>.vmoptions` (from `vmOptions`; nearly empty by default), `<script>64.vmoptions` (from `vmOptions64`), `Info.plist.xml` and `product-info-{windows-amd64,linux-amd64,macos-amd64,macos-aarch64}.json`. `<script>` is the branding's `script` name. `Info.plist.xml` contains `$version$`, `$build$` and `$platform$`; the `product-info-*.json` files contain `$version$`, `$build$` and `$path.selector$`. The distribution layout replaces them with copy filters (`replace regex`), as `references/standalone-distribution.md` lists.

The generated `<script>.sh` reads `<script>64.vmoptions` only when the JDK is x86_64; started on an aarch64 JDK (Linux ARM, or the `.sh` on Apple silicon) it reads the nearly empty `<script>.vmoptions`. Fill `vmOptions` as well, or ship the 64-bit file under both names. The wizard's macOS archive already copies the 64-bit options as `<script>.vmoptions`.

## Tips and Tricks

`BuildMps_Tips` takes one of three sources: reuse all MPS tips (wizard default); import a directory with the structure of `mps-tips.jar` (HTML files plus css and image folders); or import from a solution whose `MPSTipsAndTricks` root (languages `jetbrains.mps.build.tips` + `jetbrains.mps.core.xml`) holds the tips — each tip is HTML text with at most one image. Package the tips into `lib` in the layout (the wizard does this).

## Windows Launcher Icon

The taskbar, File Explorer, task switcher and Task Manager take the icon from the `.exe` itself. Run `rcedit mps64.exe --set-icon "path-to-ico"` on the launcher and re-sign it afterwards.

Older scripts that still use script-based launchers on Windows and Linux can be converted: copy `$mps_home/bin/linux/mps` and `$mps_home/bin/win/mps64.exe` (mode 755) into `bin`, renamed to the product name (`<name>64.exe` on Windows); exclude `mps64.exe` from the step that copies Windows executables and `fsnotifier`; copy the generated `product-info-windows-amd64.json` into the distribution root as `product-info.json`, replacing `$version$`, `$build$` and `$path.selector$`, with CRLF line endings and without the trailing Ctrl-Z.

## JDK Lookup Order

The JetBrains Runtime ships in `$MPS_HOME/jbr` of the regular distribution — **not** in the generic one. You can bundle it with your IDE. The launcher uses the first JDK it finds:

- **Windows**: `MPS_JDK` env var → `mps64.exe.jdk` property → `..\jbr` → `JDK_HOME` → `JAVA_HOME`.
- **Linux**: `MPS_JDK` → `mps.jdk`, `jbr` or `jbr-x86` folders → `JDK_HOME` → `JAVA_HOME` → `java` on `$PATH`.
- **macOS**: `java` on `$PATH`.

## Trust Dialog

Since MPS 2022.2 a two-button "Trust project" dialog appears in MPS and MPS-based IDEs; the wizard enables it for standalone IDEs. Disable it with `-Didea.trust.disabled=true` in the startup script or `vmoptions` file.

## Generating and Running

Generate with **Rebuild Model** on the build model; run the main script first, then the distribution script, each with `ant -f <fileName> build` from the base directory or from the script's context menu in MPS. Output appears under `build/artifacts/<script name>/`.

The build script **compiles and packages** your languages but does **not regenerate** them. Make your languages in MPS first, run `ant -f <fileName> generate build`, or set *Execute a complete MPS make task* (`useMakeTask`) on the `mps` build plugin in the Inspector.
