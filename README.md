[![official JetBrains project](https://jb.gg/badges/official-flat-square.svg)](https://confluence.jetbrains.com/display/ALL/JetBrains+on+GitHub)
JetBrains MPS
=============

[Learn Meta Programming with Us](https://www.jetbrains.com/mps/)

<i>Design your own Domain Specific Language with full development environment. Get code editor with completion, semantics and type checking with one click. Write generators to compile your DSL into multiple target languages, such as Java, C, XML, and many more.</i>

Useful links
------------

- [Home page](https://www.jetbrains.com/mps/)
- [Documentation](https://www.jetbrains.com/mps/learn/)
- [JetBrains MPS wiki space](http://confluence.jetbrains.com/display/MPS/Welcome+to+JetBrains+MPS+Space)
- [Issue tracker](https://youtrack.jetbrains.net/issues/MPS)
- [Forum](https://platform.jetbrains.com/c/mps)

Building MPS from sources
-------------------------
Download IntelliJ IDEA from the JetBrains website. Community edition will work just fine.
1. Fork the MPS [GitHub repository](https://github.com/JetBrains/MPS) into your own space using the GitHub UI (go to the MPS repo and press the fork button at the top. This will create a fork of the repository in your github space).
2. Clone your fork to your local machine: git clone git@github.com:<yourGitHubName>/MPS.git. Depending on your internet connection, this may take a long time, MPS is big. Consider using the _--depth_ git parameter to clone only part of the history of the project to save time and space.
3. It is preferable to work in your own branch, so create a new branch to work in git checkout -b my_branch_name.
4. Open the project in [IntelliJ IDEA](https://www.jetbrains.com/idea). You have to install the Ant plugin as well as the Plugin DevKit plugin, without which the MPS project cannot be compiled.
5. Attach JB JDK 25 to the project.
    1. Download latest JB JDK 25 for your OS and your version of MPS. Go to [the MPS TeamCity site](https://teamcity.jetbrains.com/project/MPS?mode=builds#all-projects), scroll to the build configuration that corresponds to the MPS version that you are trying to build and locate the JDK distribution (e.g. _2022.2 -> Distribution -> Get Resources_). Click on the _Artifacts_ symbol of the last successful build of _Get Resources_ and choose the distribution that you need. Make sure you grab *jbrsdk* not *jbsdk*.
    2. *Main menu -> File -> Project Structure* opens the Project Structure dialog.
    3. Under *Platform Settings -> SDK*, add a new JDK named "JB JDK 25".
6. Additionally, create an *IntelliJ Platform Plugin SDK* in the same *Platform Settings -> SDK* dialog and name it "IDEA IC".
The *ideaIntegrationCommon*, *IDEAPlugin* and *ups-idea-plugin* modules need this SDK and they will be using it automatically as soon as you create it and give it the "IDEA IC" name.
For more details on how to add an IntelliJ Platform Plugin SDK, consult this [help page](https://www.jetbrains.org/intellij/sdk/docs/basics/getting_started/setting_up_environment.html).
7. Rebuild the project from the _Build_ menu (it will take quite a while the first time). If you get errors reported, please revisit point 4. Without the Ant plugin, IDEA is not able to download the dependencies.
8. Run the _MPS -> Run_ run configuration in the _Run_ menu. (From menu _Run_ select _Run..._, which shows a popup menu, then expand the _MPS_ option into a submenu with mouse or with the right arrow key and choose "Run" from the submenu)
9. To debug MPS, got again to the _Run_ menu and select _Debug..._, which shows a popup menu. In this menu expand the _MPS_ option into a submenu with mouse or with the right arrow key and choose "Debug" from the submenu.
10. Once MPS starts, open the _MPS_ project (point MPS to the root folder of what you've cloned).

Setting up for Coding Agents
----------------------------
This project is configured to work with coding agents (like Claude or GitHub Copilot) through the Model Context Protocol (MCP).

### Agent-config Files and Directories

| File/Directory            | Purpose                                                        |
|:--------------------------|:---------------------------------------------------------------|
| `AGENTS.md` / `CLAUDE.md` | Main entry point and general guidelines for coding agents.     |
| `.agents/skills/` / `.claude/skills/`      | Custom capabilities and workflows for agents.                  |
| `.agents/`                | Detailed rules and conventions (Git, naming, tools, etc.).     |
| `.ai/mcp/mcp.json`        | Template configuration for MCP servers (YouTrack, IDEA, MPS). |
| `.mcp.json`               | Mcp configuration for Claude Code.                             |

### Setup Instructions

1.  **Start the IDEA MCP Server:**
    - Install the **MCP Server** plugin in IntelliJ IDEA.
    - Go to `Settings -> MCP Server` and check **Enable MCP Server**.
    - The server will start on port `64342`.
2.  **Uncheck Unneeded Tools:**
    - In `Settings -> MCP Serve -> Exposed Tools`, you can see a list of available tools.
    - Uncheck any tools that you don't want the agent to use to keep the context clean and focused.
3.  **Configure YouTrack Token:**
    - Agents need a token to access YouTrack issues.
    - Create a personal permanent token in YouTrack: `Profile -> Account Security -> Tokens`.
    - Install the token by setting the `YOUTRACK_TOKEN` environment variable in your shell or agent configuration.
    - Some agents do not read the token from environment variables. You can copy the `.ai/mcp/mcp.json` file to the user home folder as e.g. `HOME/.junie/mcp/mcp.json` or `HOME/.ai/mcp/mcp.json` and paste your YOUTRACK_TOKEN directly.
4.  **Install TeamCity CLI:**
    - Install the `teamcity` CLI tool.
    - Ensure it is available at `~/.local/bin/teamcity` and is in your `PATH`.
    - Authenticate using `teamcity auth login`.
    - To enable agents to use it do `teamcity skill install` or `teamcity skill install --project`.
5.  **ENABLE_TOOL_SEARCH**: in `.claude/settings.json`
    - Set to `"true"` to enable deferred (on-demand) tool loading.
    - Without this flag, JetBrains Central CLI — which proxies Claude Code — disables tool search, causing all MCP tools to be loaded eagerly and included in every context window.
    - With the flag set, tool schemas are fetched only when needed, keeping the context uncluttered.
    - See: https://github.com/JetBrains/central-cli/issues/205

Download
--------

If you'd prefer a ready-to-use build, please head over to the [Download](https://www.jetbrains.com/mps/download/) page and grab an installation package of your choice.

License
-------

_MPS is licensed under the Apache 2 open-source license. See the [complete MPS license agreement](https://www.jetbrains.com/mps/download/license.html) for full details._

System requirements
-------------------

To build JetBrains MPS from sources you need JDK 25. Older JDK versions are currently not supported for building MPS from sources.

IntelliJ IDEA Community or Ultimate edition shall be used to open the project. The versions of IntelliJ IDEA must reflect the version (branch) of the MPS project that you are opening:
* IDEA 2019.3.* for MPS 2019.3 and the 193.* branches
* The latest Idea EAP for the MPS master branch

For *MacOS* users it is required to use the JetBrains JDK (https://bintray.com/jetbrains/intellij-jdk/).



----------------------
_Develop with pleasure!
JetBrains MPS Team_
