# Terminology: "Plugin", "Tool", "Action Group" Disambiguation

These words are heavily overloaded. Always disambiguate before designing:

| Term | Meaning in this skill |
|---|---|
| **MPS plugin solution** | A regular `Solution` module that contains `jetbrains.mps.lang.plugin` models. It is **not** the same as an IntelliJ plugin jar. At build time it can generate `startup.properties` / `plugin.xml`, but during development it is loaded and reloaded dynamically by MPS. |
| **MPS plugin** (the folder in `plugins/`) | The deployable artifact packaged by the MPS Build Language (`BuildMps_IdeaPlugin`), installed into MPS or an MPS-based IDE. A plugin solution is *packaged into* such a plugin. Don't confuse the two. |
| **ApplicationPlugin / ProjectPlugin** (root concept) | A custom plugin lifecycle hook — `init`/`dispose` code that runs once per application or once per project. Most plugin solutions do **not** need one. Only use them for bespoke startup/shutdown logic that can't be attached to a tool/action/component. |
| **Tool** (`ToolDeclaration` / `TabbedToolDeclaration`) | A **tool window** — the dockable panels on the IDE sides (Messages, Project, TODO, Inspector). "Tool" in this skill never means "CLI tool". |
| **ActionGroup** (`ActionGroupDeclaration`) | A named container of menu items / actions. Groups can be popup menus, toolbars, or just lists. **Don't confuse with `BootstrapGroup` / `InterfaceGroup`**: those are wrappers around groups defined elsewhere (e.g. in IDEA's `plugin.xml` or generated from IntelliJ) so you can target them from MPS. |
| **Action** (`ActionDeclaration`) | A single executable menu item / button. |
| **Anchor** (`GroupAnchor`) | A named extension point **inside** a group — other contributors can attach actions at that anchor. Written with alias `->` (e.g. `-> showHelp`). |
| **EditorMenu / SubstituteMenu** | Part of the **editor** aspect (`jetbrains.mps.lang.editor`) — not this area. Those drive the projectional editor's Alt+Enter/Ctrl+Space. The plugin language drives the host IDE shell (menus, toolbars, tool windows, shortcuts). |
| **Intention** | An Alt+Enter context action — lives in the intentions aspect, not here. See `mps-aspect-intentions`. |
| **Node Factory / node setup (the "actions" aspect)** | Per-concept setup functions for newly created nodes. Different language (`jetbrains.mps.lang.actions`), different skill (`mps-aspect-actions`). |

## Where Plugin Code Lives

- **Module**: a regular `Solution`. Mark its compilation mode as "Regular MPS module contributing extensions to MPS".
- **Model**: one or more models using `jetbrains.mps.lang.plugin` and `jetbrains.mps.lang.plugin.standalone`. The canonical model name is `<solution_name>.plugin` — when named this way MPS auto-registers the plugin. If you deviate, add a `StandalonePluginDescriptor` root with `needInitConfig = true`.
- **Build script**: for distribution, ensure the build script copies `startup.properties` from the solution's resources (inspector: `resources files from ./solutions/.../models include startup.properties`). See `mps-build-language` skill.

The preexisting MPS group names (`MainMenu`, `EditorPopup`, `NodeActions`, `ModelActions`, `ModuleActions`, `MainToolbar`, `ProjectViewPopupMenu`, etc.) are defined in `jetbrains.mps.ide.actions`. Import that model (as a dependency) when you need to reference them.
