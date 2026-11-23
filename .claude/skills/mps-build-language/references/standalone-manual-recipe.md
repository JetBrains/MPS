# Standalone IDE Without the Wizard

Agents cannot run the **Build Solution** wizard, so they rebuild its output by hand. Background (scripts, branding, layout, update checker) is in `references/standalone-ide.md`.

## What the Wizard Creates

The wizard writes three roots that match the running MPS. Without it you rebuild them yourself; this outline summarizes what they contain. Check every role with `mps_mcp_get_concept_details` (`detail: "shape"`).

**Main script `<Name>`** (no `fileName`, so `build.xml`; set your own):

- Macros: `mps_home` (folder), `date` (var, date `yyyyMMdd`), `build.number` (var, the running MPS build with `.SNAPSHOT`, e.g. `261.27258.SNAPSHOT`; when `$mps_home` is a different build, take the baseline from its `build.txt` instead (`Resources/build.txt` in a macOS app): `MPS-261.27258.1085` → `261.27258.SNAPSHOT`); plus a folder macro per IDE path macro.
- Dependencies on `mpsStandalone`, `mpsMakePlugin`, `mpsCore`, `mpsVcs`, `mpsPlugins` (table below).
- Parts: `idea branding` (company; product, full and script names; version as the `version` child (`BuildMps_BrandingVersion`; the 2026.1 wizard template still sets the deprecated `major = 1` / `minor = 0` next to it, the child takes precedence, so remove the two properties to clear the `!deprecated` marks; never set `bugfixNr` / `eap`; for a branding that has only the old properties, the intention `jetbrains.mps.build.mps.intentions.ConvertBrandingVersion` converts them); build number and date; splash `icons/splash.png`; svg icons `icons/<name>.svg` and `icons/<name>_16.svg` (`<name>` lowercased); welcome logo; plugins URL); `tips & tricks mps-tips` importing the MPS tips; your `idea plugin` (content: your group; depends on `jetbrains.mps.core`, plus `jetbrains.mps.testing` if a solution uses test languages); the `mps group` with your modules.
- Layout, imported from the dependencies (import targets in the second table below) except your own parts and the two `$mps_home` files:
  - `languages`, `license`, `LICENSE.txt` (from `mpsStandalone`, like `bin` and `lib`);
  - `bin`: `log.properties` from `bin`, plus `$mps_home/bin/idea.properties` with `replace regex "\.MPS(\w+)"`, flags `g` → `\.${build.number}`;
  - `lib`: all of `lib` except `jna/`, `pty4j/`, `MPS-src.zip`, `branding.jar`, `mps-tips.jar` (with a macOS `$mps_home` also `build.txt`, whose `lib/` copy is outdated); then the tips as `mps-tips.jar` and `jar branding.jar` with `files of <branding>`;
  - `plugins`: `vcs-svn`, `vcs-git`, `mps-core`, `mps-make`, `java`, `mps-repository`, `mps-rcp`, and your plugin with auto packaging;
  - a `build.number` properties file (`build.number`, `date`, `version = 1.0`), and `$mps_home/build.txt` (`$mps_home/Resources/build.txt` with a macOS `$mps_home`) with `replace regex ".+"`, flags `g` → `${build.number}`.

**Distribution script `<Name>Distribution`** (file `buildDistribution.xml`): macros `mps_home` and `version`; a `BuildProjectDependency` on the main script without artifacts; one archive per platform (Linux `tar.gz`, Windows zip, macOS zip, macOS aarch64 zip). Each archive imports the main script's layout, adds the platform's native files from `$mps_home`, and copies the generated launcher files and `product-info-<platform>.json` (as `product-info.json`) as listed in `references/standalone-distribution.md`.

**Startup script `<Name>Scripts`** (`MpsStartupScript`): a copy of the default template, with `branding` pointing at your branding.

**Icons.** The wizard also copies the running MPS's splash and icons into `<project>/icons/`. Copy them yourself from `$mps_home/lib/branding.jar` (`splash.png`, `mps.svg` → `<name>.svg`, `mps_16.svg` → `<name>_16.svg`, `MPS_welcomeScreen.png` → `logo.png`; `unzip -j`), then replace them with your own images of the same sizes. MPS's originals are: `splash.png` 640×400 (with `splash@2x.png` 1280×800), welcome logo `MPS_welcomeScreen.png` 80×80 (`@2x` 160×160), `mps.svg` 90×90 and `mps_16.svg` 16×16. Python image libraries installed in the user site may not be importable under `python3 -I`; `sips` on macOS can resize and convert.

Order: set up the solution (`references/standalone-ide.md`), main script, distribution script, startup script, icons; then make the model (it writes the launcher files) and run the main script before the distribution script.

## Where to Get the Template

In order of preference:

1. **Ask the user to run the wizard** (the **Build Solution** wizard from the Project View, output *Standalone IDE*) when someone works in the MPS UI, then continue through MCP. This is the fastest route, and the output matches the running MPS.
2. **Read the wizard's code whenever it is visible.** It is the exact template for the running MPS, which may differ from 2026.1.2, the version the outline and `references/standalone-distribution.md` were checked against. Without it, those two files suffice. Print `r:f9ed10bf-2cd1-4bab-a5dd-e89f55ef9fd1(jetbrains.mps.build.mps.pluginSolution.plugin)/8722937377469658290` (`BuildGeneratorImpl`, module `jetbrains.mps.build.mps.pluginSolution`, shipped read-only in MPS 2026.1) with `format: "PLAIN TEXT"`; if the reference does not resolve, try `mps_mcp_search_root_node_by_name` `names: "BuildGeneratorImpl"`, `scope: "all"`. `createBuildScripts` quotes the main script, `addStandaloneBuild` the distribution script, `addStartupScripts` the startup script. The printout (about 36 KB) is saved to a temp file as a JSON envelope whose `data` is one escaped string; decode it before grepping: `python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["data"])' <file> > wizard.txt`. If the model is not visible, the generated Java ships in `$mps_home/plugins/mps-build-ui/languages/build/jetbrains.mps.build.mps.pluginSolution-src.jar` (`unzip -p … jetbrains/mps/build/mps/pluginSolution/plugin/BuildGeneratorImpl.java | grep …`); its string literals hold the same paths and patterns. This is MPS implementation code: it may be absent, and its shape can change between versions, so treat it as a reference, not a dependency.
3. **Build from the outline above**, taking concrete nodes from what is always available: the build solution imports `jetbrains.mps.ide.build`, so its roots are visible. They include MPS's own branding (`BuildMps_Branding` in the `mps` script `…/4301118715654192646`, found with `FIND_INSTANCES` `scope: "all"`), MPS's startup script (`MpsStartupScript` root `mps`, `…/716066598061903713`) and `mpsDistribution` (`…/4301118715654497533`) with the per-platform archives. Use them for structure only: their paths point into the MPS build tree, not at `$mps_home`. To recheck the native files for a newer MPS, compare `mpsDistribution`'s per-platform archives (which files each platform takes) with its first archive `${build.number}.zip`, whose `MPS ${version}/` folder is the generic distribution and so gives each file's path below `$mps_home`.

Dependency targets (all `BuildProject` roots of model `r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)`):

| Script | Node id | Artifacts |
|---|---|---|
| `mpsStandalone` | `1392391688312941958` | `$mps_home` |
| `mpsMakePlugin` | `6265574260762011003` | `$mps_home/plugins` |
| `mpsCore` | `6503539749405386437` | `$mps_home/plugins` |
| `mpsVcs` | `1545517825663017278` | `$mps_home/plugins` |
| `mpsPlugins` | `6391307088354381121` | `$mps_home/plugins` |

Import targets of the main layout, all in the same model. Set each import's `target` by this `r:` reference: an import of a same-named entry found elsewhere can be out of scope. In `mpsVcs`, for example, `vcs-svn` and `vcs-git` are themselves imports of `mpsVcsPlatform`'s plugins, and pointing at them fails with "out of search scope".

| Entry | Concept, owning script | Node id |
|---|---|---|
| `languages` | `BuildLayout_Folder`, `mpsStandalone` | `1392391688313033161` |
| `license` | `BuildLayout_Folder`, `mpsStandalone` | `1348803421063031332` |
| `LICENSE.txt` | `BuildLayout_File`, `mpsStandalone` | `6592914549081490655` |
| `bin` (`import files from`) | `BuildLayout_Folder`, `mpsStandalone` | `3684398890534586740` |
| `lib` (`import files from`) | `BuildLayout_Folder`, `mpsStandalone` | `1392391688313033167` |
| `vcs-svn` | `BuildMpsLayout_Plugin`, `mpsVcsPlatform` (visible through `mpsVcs`) | `3885636410299698415` |
| `vcs-git` | `BuildMpsLayout_Plugin`, `mpsVcsPlatform` (visible through `mpsVcs`) | `830621552390848443` |
| `mps-core` | `BuildMpsLayout_Plugin`, `mpsCore` | `5372118684794832737` |
| `mps-make` | `BuildMpsLayout_Plugin`, `mpsMakePlugin` | `1749160936187056322` |
| `java` | `BuildMpsLayout_Plugin`, `mpsMakePlugin` | `2023622575087543856` |
| `mps-repository` | `BuildMpsLayout_Plugin`, `mpsPlugins` | `4722211339021478944` |
| `mps-rcp` | `BuildMpsLayout_Plugin`, `mpsPlugins` | `6515321972666279903` |

`import` is `BuildLayout_Import` (reference `target`); `import files from` is `BuildLayout_ImportContent` (reference `target`, child `selectors` with `BuildFileIncludeSelector` / `BuildFileExcludeSelector`). Other layout concepts these scripts need are listed in `references/concept-catalog.md`.

For the startup script, start from `MPSStartupScript_template` (`r:6782bec3-b6b2-41c7-b127-59558bac4a8c(jetbrains.mps.build.startup.defaults)/716066598061903713`), the root the wizard copies. It ships with the `jetbrains.mps.build.startup` language; if it is missing, use the `mps` startup script of `jetbrains.mps.ide.build`. Check that every `bootClasspath` entry exists in the target MPS's `lib/` folder (`ls $mps_home/lib`). Do not check it against `launch[].bootClassPathJarNames` in `product-info.json`: in 2026.1.2 that lists the same missing `mps-boot-util.jar`. `COPY_NODE` copies only within the same model, so print it as JSON (`deep: true`), turn it into a blueprint and insert it into your model; then set its `branding` reference.

The `name` of `BuildMps_Branding` is a read-only derived value (`<full name> <major>.<minor>`, a constraints getter), so references to it (from `MpsStartupScript` and from the `files of <branding>` entry that builds `branding.jar`) must use its `r:` node reference after insertion.

Known gaps in the wizard's output, checked against MPS 2026.1.2 (the outline above already avoids the first):

- The `bin` import keeps only `log.xml`, but the distribution ships `bin/log.properties`, so nothing is copied; include `log.properties` instead.
- The branding's welcome-screen logo points to `icons/logo.png`, which the wizard does not create; supply your own image (`MPS_welcomeScreen.png` in `$mps_home/lib/branding.jar` is the MPS original).
- The startup template's boot classpath lists `lib/mps-boot-util.jar`, which the 2026.1.2 distribution does not ship (every other entry exists); remove it from `bootClasspath`.
