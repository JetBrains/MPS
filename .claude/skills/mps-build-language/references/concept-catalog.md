# Concept Catalog

FQN reference for the commonly used concepts of the build-language stack. For exact roles, cardinalities and the full concept list, call `mps_mcp_get_concept_details` with `languageRefs` = the language and `detail: "shape"`.

## `jetbrains.mps.build` (`798100da-4f0a-421a-b991-71f8c50ce5d2`)

| Concept | QName | Role in |
|---|---|---|
| `BuildProject` | `...structure.BuildProject` | Root |
| `BuildJavaPlugin` | `...structure.BuildJavaPlugin` | plugins |
| `BuildFolderMacro` | `...structure.BuildFolderMacro` | macros |
| `BuildVariableMacro` | `...structure.BuildVariableMacro` | macros |
| `BuildVariableMacroInitWithString` | `...structure.BuildVariableMacroInitWithString` | variable-macro init |
| `BuildVariableMacroInitWithDate` | `...structure.BuildVariableMacroInitWithDate` | variable-macro init |
| `BuildVariableMacroInitWithValueFromFile` | `...structure.BuildVariableMacroInitWithValueFromFile` | variable-macro init (`load property file`) |
| `BuildVariableMacroInitWithFileContent` | `...structure.BuildVariableMacroInitWithFileContent` | variable-macro init |
| `BuildString` / `BuildStringNotEmpty` | `...structure.BuildString` / `BuildStringNotEmpty` | string container |
| `BuildTextStringPart` | `...structure.BuildTextStringPart` | string piece |
| `BuildVarRefStringPart` | `...structure.BuildVarRefStringPart` | `${macro}` in a string |
| `BuildProjectDependency` | `...structure.BuildProjectDependency` | dependencies (→ `BuildProject`) |
| `BuildExternalLayoutDependency` | `...structure.BuildExternalLayoutDependency` | dependencies (→ `BuildExternalLayout`) |
| `BuildExternalLayout` | `...structure.BuildExternalLayout` | root: described-only layout such as `IDEA` |
| `BuildSourceProjectRelativePath` | `...structure.BuildSourceProjectRelativePath` | paths |
| `BuildSourceMacroRelativePath` | `...structure.BuildSourceMacroRelativePath` | paths |
| `BuildCompositePath` | `...structure.BuildCompositePath` | path segments |
| `BuildInputFiles` | `...structure.BuildInputFiles` | file set w/ selectors |
| `BuildFileIncludesSelector` | `...structure.BuildFileIncludesSelector` | include-pattern |
| `BuildSource_JavaOptions` | `...structure.BuildSource_JavaOptions` | parts |
| `BuildSource_JavaModule` | `...structure.BuildSource_JavaModule` | parts |
| `BuildSource_JavaLibrary` | `...structure.BuildSource_JavaLibrary` | parts |
| `BuildSource_JavaContentRoot` | `...structure.BuildSource_JavaContentRoot` | inside JavaModule |
| `BuildSource_JavaContentFolder` | `...structure.BuildSource_JavaContentFolder` | source / test / excluded folder (`kind`, `relativePath`) |
| `BuildSource_JavaDependencyJar` / `Module` / `Library` | `...structure.BuildSource_JavaDependency...` | Java deps |
| `BuildLayout` | `...structure.BuildLayout` | project.layout |
| `BuildLayout_Folder` | `...structure.BuildLayout_Folder` | layout |
| `BuildLayout_Zip` | `...structure.BuildLayout_Zip` | layout |
| `BuildLayout_Jar` | `...structure.BuildLayout_Jar` | layout |
| `BuildLayout_File` | `...structure.BuildLayout_File` | layout |
| `BuildLayout_Files` | `...structure.BuildLayout_Files` | layout (`files from`) |
| `BuildLayout_Import` | `...structure.BuildLayout_Import` | layout (`import`) |
| `BuildLayout_ImportContent` | `...structure.BuildLayout_ImportContent` | layout (`import files from`) |
| `BuildLayout_Tar` | `...structure.BuildLayout_Tar` | layout (`tar`; `compression` = `none` / `gzip` / `bzip2`) |
| `BuildLayout_Filemode` | `...structure.BuildLayout_Filemode` | layout (`filemode`, `dirmode`; wraps `children`) |
| `BuildLayout_EchoProperties` | `...structure.BuildLayout_EchoProperties` | layout (`properties file`; child `fileName`, `entries` of `BuildLayout_EchoPropertyEntry`: property `key`, child `value`) |
| `BuildLayout_FilesOf` | `...structure.BuildLayout_FilesOf` | layout (`files of`, reference `element`, e.g. the branding) |
| `BuildLayout_CopyFilterReplaceRegex` | `...structure.BuildLayout_CopyFilterReplaceRegex` | `parameters` of `BuildLayout_File` / `_Files` (`replace regex`: `pattern`, `flags`, child `value`) |
| `BuildLayout_CopyFilterFixCRLF` | `...structure.BuildLayout_CopyFilterFixCRLF` | `parameters` (`fix eol`: `eol` = `local` / `asis` / `cr` / `lf` / `crlf`, `removeEOF`) |
| `BuildLayout_CopyGlobMapper` | `...structure.BuildLayout_CopyGlobMapper` | `parameters` (`filename glob mapper`: `from`, child `to`) |
| `BuildLayout_CopyRegexMapper` | `...structure.BuildLayout_CopyRegexMapper` | `parameters` (`filename regex mapper`: `pattern`, `replace`) |
| `BuildFileIncludeSelector` / `BuildFileExcludeSelector` | `...structure.BuildFileIncludeSelector` / `...BuildFileExcludeSelector` | `selectors` of `BuildLayout_ImportContent`, and `parameters` of `BuildLayout_Files` (`include` / `exclude`: `pattern`) |
| `BuildLayout_CompileOutputOf` | `...structure.BuildLayout_CompileOutputOf` (reference `module`) | layout: compiled classes of a declared `BuildSource_CompilablePart` — a `BuildSource_JavaModule` or an MPS `BuildMps_Module` |

## `jetbrains.mps.build.mps` (`0cf935df-4699-4e9c-a132-fa109541cba3`)

| Concept | QName |
|---|---|
| `BuildMPSPlugin` | `...structure.BuildMPSPlugin` |
| `BuildMps_Language` | `...structure.BuildMps_Language` |
| `BuildMps_Solution` | `...structure.BuildMps_Solution` |
| `BuildMps_Generator` | `...structure.BuildMps_Generator` |
| `BuildMps_DevKit` | `...structure.BuildMps_DevKit` |
| `BuildMps_Group` | `...structure.BuildMps_Group` |
| `BuildMps_IdeaPlugin` | `...structure.BuildMps_IdeaPlugin` (`idea plugin`: MPS plugin declaration) |
| `BuildMps_IdeaPluginGroup` | `...structure.BuildMps_IdeaPluginGroup` |
| `BuildMps_IdeaPluginModule` | `...structure.BuildMps_IdeaPluginModule` |
| `BuildMps_IdeaPluginDependency` | `...structure.BuildMps_IdeaPluginDependency` |
| `BuildMps_ModuleModelRoot` | `...structure.BuildMps_ModuleModelRoot` |
| `BuildMps_ModuleResources` | `...structure.BuildMps_ModuleResources` |
| `BuildMps_ExtractedModuleDependency` | `...structure.BuildMps_ExtractedModuleDependency` |
| `BuildMps_ModuleDependencyOnModule` | `...structure.BuildMps_ModuleDependencyOnModule` |
| `BuildMps_ModuleDependencyTargetLanguage` | `...structure.BuildMps_ModuleDependencyTargetLanguage` |
| `BuildMps_ModuleSolutionRuntime` | `...structure.BuildMps_ModuleSolutionRuntime` |
| `BuildMpsLayout_Plugin` | `...structure.BuildMpsLayout_Plugin` |
| `BuildMpsLayout_AutoPluginLayoutType` | `...structure.BuildMpsLayout_AutoPluginLayoutType` |
| `BuildMpsLayout_ManualPluginLayoutType` | `...structure.BuildMpsLayout_ManualPluginLayoutType` |
| `BuildMpsLayout_PluginDescriptor` | `...structure.BuildMpsLayout_PluginDescriptor` |
| `BuildMpsAspect` | `...structure.BuildMpsAspect` |
| `BuildMps_Branding` | `...structure.BuildMps_Branding` (`idea branding`, standalone IDE) |
| `BuildMps_BrandingUpdateSite` | `...structure.BuildMps_BrandingUpdateSite` (`Update website`) |
| `BuildMps_Tips` | `...structure.BuildMps_Tips` (`tips & tricks`) |
| `BuildMps_TipsPackage` | `...structure.BuildMps_TipsPackage` (layout; alias `package tips & tricks`, shown as `tips of <tips> -> <name>`; reference `tips`, property `name` = the jar name, e.g. `mps-tips.jar`) |

## `jetbrains.mps.build.mps.tests`

| Concept | QName |
|---|---|
| `BuildModuleTestsPlugin` | `...structure.BuildModuleTestsPlugin` |
| `BuildAspect_MpsTestModules` | `...structure.BuildAspect_MpsTestModules` |
| `BuildMps_TestModules_Content` | `...structure.BuildMps_TestModules_Content` |
| `BuildMps_TestModuleGroup` | `...structure.BuildMps_TestModuleGroup` |
| `BuildMps_TestModule` | `...structure.BuildMps_TestModule` |
| `BuildMps_TestModules_Options` | `...structure.BuildMps_TestModules_Options` |
| `RequiredPlugin` | `...structure.RequiredPlugin` (in `requiredPlugins` of the options) |

## `jetbrains.mps.build.mps.runner`

| Concept | QName |
|---|---|
| `BuildSolutionRunnerPlugin` | `...structure.BuildSolutionRunnerPlugin` |
| `BuildSolutionRunnerAspect` | `...structure.BuildSolutionRunnerAspect` (`run code`) |
| `RequiredPlugin` | `...structure.RequiredPlugin` |

## `jetbrains.mps.build.startup`

| Concept | QName |
|---|---|
| `MpsStartupScript` | `...structure.MpsStartupScript` (root: branding, boot classpath, VM options) |

## `jetbrains.mps.build.tips`

| Concept | QName |
|---|---|
| `MPSTipsAndTricks` | `...structure.MPSTipsAndTricks` (root: list of tips) |

## `jetbrains.mps.build.workflow`

| Concept | QName |
|---|---|
| `BwfTask` | `...structure.BwfTask` |
| `BwfSubTask` | `...structure.BwfSubTask` |
| `BwfTaskPart` | `...structure.BwfTaskPart` |
| `BwfAntStatement` | `...structure.BwfAntStatement` |
