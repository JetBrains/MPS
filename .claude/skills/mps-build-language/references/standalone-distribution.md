# Standalone IDE: the Distribution Script

The wizard's distribution script `<Name>Distribution` (file `buildDistribution.xml`, macros `mps_home` and `version`, a `BuildProjectDependency` on the main script without artifacts) builds one archive per platform. Each archive imports the main script's layout and adds what is listed below. Checked against MPS 2026.1.2; the rest of the recipe is in `references/standalone-manual-recipe.md`.

## Archives

`<script>` = the branding's script name; `gen/` = the folder where making the model writes the launcher files (see `references/standalone-ide.md`); mode 644 unless noted; `$mps_home/` omitted from source paths.

- Linux `<Name>-${build.number}.tar.gz` (gzip): `lib/jna/` ← `lib/jna/amd64/libjnidispatch.so`; `lib/pty4j/linux/x86-64/` ← `lib/pty4j/x86-64/libpty.so`; `bin/` ← `bin/linux/*` except `mps` (755), `gen/<script>.vmoptions`, `gen/<script>64.vmoptions`, `gen/<script>.sh` (755), `bin/linux/mps` as `<script>` (755).
- Windows `<Name>-${build.number}.win.zip`: `bin/` ← the two vmoptions as `<script>.exe.vmoptions` and `<script>64.exe.vmoptions`, `bin/win/*` except `*.bat` and `mps64.exe` (`*.exe` 755), `gen/<script>.bat` (755), `bin/win/mps64.exe` as `<script>64.exe` (755); `lib/jna/` ← `lib/jna/amd64/jnidispatch.dll`; `lib/pty4j/win/x86-64/` ← `cyglaunch.exe`, `win-helper.dll`, `winpty-agent.exe`, `winpty.dll` from `lib/pty4j/x86-64/`.
- macOS `<Name>-${build.number}.macos.zip`, all under `<Name> ${version}.app/Contents/`: the layout without `build.txt`; `Resources/` ← `build.txt`, `bin/mac/Contents/Resources/mps.icns` as `<script>.icns`, the product info; `MacOS/` ← `bin/mac/Contents/MacOS/mps-x64` as `<script>` (755); `gen/Info.plist.xml` as `Info.plist`; `bin/` ← `bin/mac/libnst64.dylib`, `bin/mac/libmacscreenmenu64.dylib`, `bin/mac/amd64/restarter`, `bin/mac/fsnotifier`, `bin/mac/printenv` (executables 755), `gen/<script>64.vmoptions` as `<script>.vmoptions`; `lib/jna/` ← `lib/jna/amd64/libjnidispatch.jnilib`; `lib/pty4j/darwin/` ← `lib/pty4j/x86-64/libpty.dylib`.
- macOS aarch64 `<Name>-${build.number}-macos-aarch64.zip`: the macOS archive with `aarch64` for `amd64` in the jna and restarter paths, `mps-aarch64` for `mps-x64`, and `product-info-macos-aarch64.json`.
- Optional, not made by the wizard: a platform-independent `<Name>-${build.number}.zip`, like MPS's own generic `${build.number}.zip`. The main script produces only the unpacked folder `build/artifacts/<Name>/`. To ship it as an archive, import the main layout and add `bin/` with `gen/<script>.sh` and `gen/<script>.bat` (755), `gen/<script>.vmoptions` and `gen/<script>64.vmoptions` (LF), and the same two again as `<script>.exe.vmoptions` and `<script>64.exe.vmoptions` (CRLF), because the `.bat` reads only the `.exe.vmoptions` names. Native files can be added for the platforms your `$mps_home` provides.

Each platform archive copies `gen/product-info-<platform>.json` as `product-info.json` (macOS: into `Resources/`; others: the archive root) with `replace regex` `\$version\$` → `${version}`, `\$build\$` → `${build.number}` (the main script's macro), `\$path\.selector\$` → the selector the startup script uses, `<product><major>.<minor>` (`IDEA_PATHS_SELECTOR` in `gen/<script>.sh`, for example `Kaja1.0`). The wizard writes `<script>1.0` instead, which differs in case unless the product name is the script name, and then the native launcher and `<script>.sh` use different config folders on a case-sensitive file system. `Info.plist` gets the first two plus `\$platform\$` → `x86_64` (`arm64` for aarch64). Text files get LF line endings, Windows ones CRLF.

After changing a copy filter or the layout, run the distribution script with `clean build`: Ant's `copy` skips a target file that is newer than its source, even when the filters changed.

**Bundle id.** The startup script writes `CFBundleIdentifier` into `gen/Info.plist.xml` as `com.<settings folder>.<product>`, lower-cased, with spaces kept. The settings folder is the branding's `vendor` child (labelled *settings folder*); with no `vendor` child, the id is `com.<product>`. The company name is not used. A settings folder `Kaja Robotics` with product `Kaja` gives `com.kaja robotics.kaja`. Apple allows only ASCII letters, digits, hyphens and periods in a bundle id, and macOS names the app's preferences file after it (`~/Library/Preferences/com.kaja robotics.kaja.plist`). An ad hoc signed app with that id still starts; Developer ID signing and notarization were not tried.

The settings folder is also the vendor folder of the user's config, caches and logs (`IDEA_VENDOR_NAME`, `idea.vendor.name`); when there is no `vendor` child, that folder falls back to the company name. A `vendor` child with empty text is not the same: the id drops it, but the vendor folder becomes empty. So the simplest fix is to delete the *settings folder* child (the editor then shows `<no vendor>`): the id becomes `com.kaja`, and the folder is still `Kaja Robotics`. To keep the settings folder and still get a valid id, add a fourth `replace regex` to each macOS `Info.plist` copy, for example `com\.kaja robotics\.kaja` → `com.kajarobotics.kaja` (no flags, a plain-text value).

## Building Against a macOS MPS

The distribution script needs a **generic** MPS, because it collects the native files of every platform. If only a macOS `.app` is available, `$mps_home` is `<MPS>.app/Contents`, and you can build only the platform-neutral layout plus a macOS archive for the installed app's architecture (drop the other macOS zip, and make the `Info.plist` copy filter's `$platform$` replacement match: `arm64` or `x86_64`). The wizard's generic paths map to:

| Generic distribution | macOS `.app/Contents` |
|---|---|
| `bin/mac/Contents/MacOS/mps-x64`, `mps-aarch64` | `MacOS/mps` (the architecture of the installed app) |
| `bin/mac/Contents/Resources/mps.icns` | `Resources/mps.icns` |
| `bin/mac/*` (dylibs, `fsnotifier`, `printenv`), `bin/mac/<arch>/restarter` | `bin/libnst64.dylib`, `bin/libmacscreenmenu64.dylib`, `bin/fsnotifier`, `bin/printenv`, `bin/restarter` |
| `lib/jna/<arch>/libjnidispatch.jnilib` | `lib/jna/libjnidispatch.jnilib` |
| `lib/pty4j/x86-64/libpty.dylib` (wizard, both architectures) | `lib/pty4j/darwin/libpty.dylib` |
| `build.txt` | `Resources/build.txt` (its content is rewritten anyway). Also exclude `build.txt` from the `lib` import: it copies `lib/build.txt` unchanged, and in 2026.1.2 that file is stale (`MPS-261.27258.712` vs `MPS-261.27258.1085`) |

The macOS launcher copied from a signed MPS app no longer matches its signature once `Info.plist` changes, and macOS kills it at start (exit 137). Re-sign the built `.app` — with your Developer ID for distribution, or ad hoc (`codesign --force --deep -s - <App>.app`) for a local test.

