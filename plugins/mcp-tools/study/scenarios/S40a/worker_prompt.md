You are working in the current folder, which contains the JetBrains MPS sample project Kaja: the
languages `jetbrains.mps.samples.Kaja`, `jetbrains.mps.samples.KajaAndOr` and
`jetbrains.mps.samples.KajaSceneConstruction`, the solution `jetbrains.mps.samples.JavaKaja` and the
sandbox `jetbrains.mps.samples.Kaja.sandbox`. MPS is running with the MCP server enabled and this
project open. Follow CLAUDE.md and the MPS skills.

An MPS of the release this project targets is in `~/MPSProjects/mcp-study/dist/MPS`: either the
platform-independent distribution or an installation for this machine's platform. A JDK is in
`~/MPSProjects/mcp-study/dist/jdk`, and `ant` is on the PATH.

Task: ship the Kaja languages as a plugin that users install into that MPS.

1. Add a build solution `Kaja.build` in `solutions/Kaja.build` with a model `Kaja.build` and one
   build script `KajaPlugin` that writes `build-plugin.xml` into this folder.
2. The script declares one plugin: id `jetbrains.mps.samples.Kaja`, name `Robot Kaja`, version
   `1.0`, packaged as `Kaja.zip`. The plugin contains the three languages with their generators and
   everything they need at run time. It does not contain the sandbox.
3. Users of the installed plugin must see the languages' concept icons.
4. Build `Kaja.zip` with one Ant run of `build-plugin.xml` against the MPS in `dist/MPS`. That run
   first regenerates the languages with that MPS, then compiles and packages them.

Done when: `mps_mcp_check_root_node_problems` reports no errors and no warnings on model
`Kaja.build`; `Kaja.zip` exists after that Ant run; and the sample's languages and solutions are
unchanged apart from generated files.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
