You are working in the current folder, which contains the JetBrains MPS sample project Kaja: the
languages `jetbrains.mps.samples.Kaja`, `jetbrains.mps.samples.KajaAndOr` and
`jetbrains.mps.samples.KajaSceneConstruction`, the solution `jetbrains.mps.samples.JavaKaja` and the
sandbox `jetbrains.mps.samples.Kaja.sandbox`. MPS is running with the MCP server enabled and this
project open. Nobody can use the MPS UI for you. Follow CLAUDE.md and the MPS skills.

An MPS of the release this project targets is in `~/MPSProjects/mcp-study/dist/MPS`: either the
platform-independent distribution or an installation for this machine's platform. A JDK is in
`~/MPSProjects/mcp-study/dist/jdk`, and `ant` is on the PATH.

Task: build "Kaja IDE", a standalone IDE based on that MPS, which users download and run without
installing MPS.

1. Add a build solution `Kaja.build` in `solutions/Kaja.build` with a model `Kaja.build` holding a
   build script `Kaja` for the IDE, a build script `KajaDistribution` for the downloads, and the
   IDE's startup script.
2. Branding: product `Kaja`, full name `Kaja IDE`, company `Kaja Robotics`, launcher name `kaja`,
   version `1.0`. Use your own images or MPS's.
3. The IDE contains one plugin, id `jetbrains.mps.samples.Kaja`, name `Robot Kaja`, with the three
   Kaja languages, their generators and everything they need at run time, but not the sandbox. It
   also contains Git support (`vcs-git`) and the MPS make plugin (`mps-make`).
4. The IDE never offers MPS updates and never shows the dialog that asks whether to trust a project.
5. `KajaDistribution` produces downloads that are ready to run on their platform: the native
   launcher and the start script named `kaja`, their VM options, the platform's native libraries, and
   the product metadata the launcher reads, with no template placeholders left. If the MPS in
   `dist/MPS` is the platform-independent distribution, produce one download for Linux and one for
   macOS on Apple silicon. If it is an installation for one platform, produce only the download for
   that platform and that installation's processor architecture.
6. Make the build model and run both scripts with Ant against the MPS in `dist/MPS`. You do not need
   to start the IDE.

Done when: `mps_mcp_check_root_node_problems` reports no errors and no warnings on any root of model
`Kaja.build`; the downloads item 5 asks for exist and are ready to run, with the Kaja plugin and the
Kaja branding inside; and the sample's languages and solutions are unchanged apart from generated
files.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
