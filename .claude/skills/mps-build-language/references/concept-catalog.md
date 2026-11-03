# Concept Catalog

Full FQN reference for every concept in the build-language stack.

## `jetbrains.mps.build` (`798100da-4f0a-421a-b991-71f8c50ce5d2`)

| Concept | QName | Role in |
|---|---|---|
| `BuildProject` | `...structure.BuildProject` | Root |
| `BuildJavaPlugin` | `...structure.BuildJavaPlugin` | plugins |
| `BuildFolderMacro` | `...structure.BuildFolderMacro` | macros |
| `BuildVariableMacro` | `...structure.BuildVariableMacro` | macros |
| `BuildVariableMacroInitWithString` | `...structure.BuildVariableMacroInitWithString` | variable-macro init |
| `BuildVariableMacroInitWithDate` | `...structure.BuildVariableMacroInitWithDate` | variable-macro init |
| `BuildVariableMacroInitWithPropertyFile` | `...structure.BuildVariableMacroInitWithPropertyFile` | variable-macro init |
| `BuildVariableMacroInitWithFileContent` | `...structure.BuildVariableMacroInitWithFileContent` | variable-macro init |
| `BuildString` / `BuildStringNotEmpty` | `...structure.BuildString` / `BuildStringNotEmpty` | string container |
| `BuildTextStringPart` | `...structure.BuildTextStringPart` | string piece |
| `BuildStringVarRef` | `...structure.BuildStringVarRef` | `${macro}` in a string |
| `BuildProjectDependency` | `...structure.BuildProjectDependency` | dependencies |
| `BuildExternalLayoutDependency` | `...structure.BuildExternalLayoutDependency` | dependencies |
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
| `BuildLayout_Fileset` | `...structure.BuildLayout_Fileset` | layout |
| `BuildLayout_ImportContent` | `...structure.BuildLayout_ImportContent` | layout |
| `BuildLayout_CopyOfContainer` | `...structure.BuildLayout_CopyOfContainer` | layout |
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
| `BuildMps_IdeaPlugin` | `...structure.BuildMps_IdeaPlugin` |
| `BuildMps_IdeaPluginGroup` | `...structure.BuildMps_IdeaPluginGroup` |
| `BuildMps_IdeaPluginModules` | `...structure.BuildMps_IdeaPluginModules` |
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
| `BuildMpsAspect` | `...structure.BuildMpsAspect` |
| `BuildLayout_IdeaBranding` | `...structure.BuildLayout_IdeaBranding` (standalone IDE) |
| `BuildLayout_IdeaPlugin` | `...structure.BuildLayout_IdeaPlugin` (manual IDEA-plugin layout) |

## `jetbrains.mps.build.mps.tests`

| Concept | QName |
|---|---|
| `BuildModuleTestsPlugin` | `...structure.BuildModuleTestsPlugin` |
| `BuildAspect_MpsTestModules` | `...structure.BuildAspect_MpsTestModules` |
| `BuildMps_TestModules_Content` | `...structure.BuildMps_TestModules_Content` |
| `BuildMps_TestModuleGroup` | `...structure.BuildMps_TestModuleGroup` |
| `BuildMps_TestModule` | `...structure.BuildMps_TestModule` |

## `jetbrains.mps.build.mps.runner`

| Concept | QName |
|---|---|
| `BuildSolutionRunnerPlugin` | `...structure.BuildSolutionRunnerPlugin` |

## `jetbrains.mps.build.workflow`

| Concept | QName |
|---|---|
| `BwfTask` | `...structure.BwfTask` |
| `BwfSubTask` | `...structure.BwfSubTask` |
| `BwfTaskPart` | `...structure.BwfTaskPart` |
| `BwfAntStatement` | `...structure.BwfAntStatement` |
