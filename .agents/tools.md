# Tool usage policy

## YouTrack

* Use 'YouTrack' tools to read issue data. Do not scrape YouTrack web pages.
* Never create or update YouTrack issues, post comments, or change the issue state without an explicit user request.
* Every YouTrack issue comment or edit produced with AI assistance must include this trailer: `Co-Authored-By: <identity of the AI agent>`.
* If the MCP server is unavailable, say so clearly — but for **reading** you may fall back to the public REST API instead of blocking the whole task:
  `curl -s "https://youtrack.jetbrains.com/api/issues/<ID>?fields=idReadable,summary,description,customFields(name,value(name))"` and `.../api/issues/<ID>/comments?fields=text,author(name),created`.
  State that you used the fallback. Never use REST to **write**: comments and field changes always require the MCP tools and an explicit user request.
* The YouTrack issues related to this project are grouped in these project ids:
  * `MPS` - the MPS core functionality
  * `MPSSPRT` - support issues submitted by MPS customers
  * `IDEA` - issues of the underlying IntelliJ platform
* Use `get_issue` for a known issue ID such as `MPS-39848`.
* Use `search_issues` for lists. Common queries:
  * `for: me #Unresolved Fix versions: 2026.1*`
  * `project: MPS #Unresolved <search terms>`
  * `links: MPS-39848`
* **Creating an issue:** always call `get_issue_fields_schema` for the target project first and copy the field names verbatim from its `properties` keys — do not guess names or add your own quoting around them (e.g. the key is `Fix versions`, not `"Fix versions"`).
  * Array-typed fields (`Fix versions`, `Affected versions`, `Fixed in builds`, …) must be passed as a JSON array of strings even for a single value, e.g. `"Fix versions": ["2026.1.1"]`.
  * The schema's top-level `"required": []` is **not reliable** — a project can still enforce a field (e.g. `Affected versions`) at creation time via workflow rules that aren't reflected in the schema. If `create_issue` fails with `"<Field> is required"`, just add that field and retry; don't assume the schema is complete.
  * The default YouTrack project field's value is `MPS`. Confirm the exact project key with the user (or `find_projects`) before creating — don't assume; a fuzzy `find_projects` query can match several similarly named projects (e.g. `MPS`, `MPSJetPad`, `MPS_exceptions`).
  * There is no dedicated API field for the mandatory `Co-Authored-By` trailer (see above) — append it as the last line of the `description` text itself.
  * After creation, `get_issue` the new ID once to confirm the fields actually landed as intended (custom field updates can silently partially fail; check `failedToUpdateFields` in the `create_issue` response too).

## JetBrains IntelliJ IDEA

- Use 'IDEA' tools for diagnostics, inspecting currently open files, and symbol renames.
- Hosts expose this surface differently: some offer `get_file_problems`, `build_project`, `get_run_configurations`, `execute_run_configuration` as top-level tools, others only a generic `execute_tool` that takes them as a command (`execute_tool(command="get_file_problems --filePath <path>")`). Check both before reporting a tool as missing — the same caution as for `mps_mcp_*` names below.
- **Prefer IDE rename over sed/grep scripts.** `rename_refactoring` is type-aware: it handles type references, parameter declarations, named-argument call sites, and file renames atomically without touching unrelated identifiers. Rename calls are safe and may be performed autonomously as part of a refactoring task.
- Use `get_file_problems` eagerly to validate code.
- When multiple IDEA projects are served, pass the absolute `projectPath` for the project that owns the code. Do not use a parent VCS root when the actual IDEA project is below it.
- If IntelliJ platform sources are needed, first look for a sibling checkout (`../intellij-community` or similar) and probe it with any IDEA tool — the error message lists the projects that are currently open, which answers "is it open?" in one call. Only then ask the user for their exact location and ask them to open that project in IDEA. Use the absolute platform path as `projectPath`. Verify access with `search_symbol` (e.g. `org.jetbrains.kotlin.jsr223.KotlinJsr223StandardScriptEngineFactory4Idea`); do not use `list_directory_tree` as the availability check — it can return empty even when the project is loaded. Do not modify, compile, or run platform sources, and do not switch the platform Git branch.
- Never change the state of the IDE (which files are open, run configurations, breakpoints) without an explicit user request.
- If the MCP server is unavailable, stop only for work that requires IDEA-aware navigation, diagnostics, refactoring, builds, tests, or run configurations. Plain text, docs, and configuration work may continue with file tools.

## JetBrains MPS (mps_mcp_*)

- Use `mps_mcp_*` tools for changing, diagnostics, and inspecting currently open MPS modules, models, and nodes. The `mps-mcp-workflow` skill is the single source of truth for the toolset — load it instead of relying on remembered tool names, and use `references/mcp-tools-index.md` for the full inventory.
- Match tools by the stable `mps_mcp_*` suffix; clients wrap them with their own prefix. Never conclude the toolset is missing because a name you guessed for it is absent — check what you were actually given.
- `mps_mcp_initialize_project_for_agents` is **not** an availability probe — it writes the skill catalog and agent guides into the repository. Probe with `mps_mcp_list_open_projects`.
- When no project or multiple projects are reported, call `mps_mcp_list_open_projects` and pass the intended project's `mpsProjectBaseDirectory` as `projectPath` to later calls. Ask the user if the correct project is not obvious.
- Never change the IDE state (which files are open, run configurations, breakpoints) without an explicit user request.
- If the MCP server is unavailable, stop for MPS model, language, generator, module, or node work and direct the user to fix the setup. Plain JVM, docs, and configuration work may continue with file tools when it does not require model-aware access.

## External access

- Do not install dependencies, download large artifacts, trigger remote builds, or use authenticated external services unless the task requires it.
- If a required network or authenticated command fails because access is unavailable, report the exact dependency and ask how to proceed.
- Prefer repository-local scripts, existing run configurations, and MCP tools over ad hoc external commands.

## GitHub (gh CLI)

- Use the `gh` CLI for all GitHub operations: reading and creating issues, pull requests, comments, checks, and releases.
- Never create PRs, post comments, or change PR/issue state without an explicit user request.
- If `gh` is not installed or not authenticated, say so clearly.

## TeamCity

- Use the `teamcity` CLI (at `~/.local/bin/teamcity`) for all TC operations. The skill at `.agents/skills/teamcity-cli/` documents commands. Check `teamcity auth status` first.
- Project and build-configuration IDs include the release. Derive them from the target MPS version: `2026.1` → `MPS_20261`, `2026.2` → `MPS_20262`. `<ver>` in `MPS_<ver>…` always means that compact digits-only form, so `MPS_<ver>_FeatureBranches` for 2026.1 is `MPS_20261_FeatureBranches` — not `MPS_2026.1_…`. Never assume which version `master` holds — it advances every release.
- Derive the target release from the current branch, the YouTrack fix version, or the user request. If those disagree, ask before triggering or watching builds.
- Confirm coordinates from the version project, not from memory:
  `teamcity project param list MPS_<ver> | grep -E "mps.git.branch|mps.idea.platform.number"`
  `mps.git.branch` is the git base branch; `mps.idea.platform.number` is the git branch prefix. Do not trust `mps.version` — it is stale in some projects.
- Each version has three relevant sub-projects: `MPS_<ver>_Distribution` (the version's default git branch), `MPS_<ver>_FeatureBranches` (non-default branches matching `+:<prefix>/*`), and `MPS_<ver>_IdeaPlatform`.
- TeamCity logical branch names omit the numeric git prefix: git `261/vaclav/topic` is TeamCity `vaclav/topic`. Filtering by the full git name or `--branch @this` silently returns "No runs found".
- On feature branches, the VCS trigger is on the composite `..._DownloadableArtifactsNoInstallers` (branch filter `+:*` / `-:<default>`). Pushing a matching branch starts the chain. If you must start it by hand, start that composite with `--no-push`, not `Binaries`. Starting `Binaries` alone does not run tests. A full chain takes roughly 45–60 minutes.
- The composite aggregates Binaries, Test Binaries, Tests from IDEA Project, Test Typesystem, Extensions, Test Mbeddr Build, and the installer/distribution jobs. Paused or scheduled-only jobs (`Statistics`, `Test Parallel Generation`, sometimes an installer) are not a failure if missing. `MPS Project Consistency Test` depends on `Binaries` but is **not** a snapshot dependency of the composite — do not wait for it as part of the chain.
- `Extensions` and `Test Mbeddr Build` check out external repositories at branches pinned by project parameters. Failures there are often unrelated to this repository.
- Do not start, cancel, or re-run `Distribution` jobs unless the user explicitly asks.
- `teamcity run start` auto-pushes the current branch unless `--no-push` is given. Always pass `--no-push` unless the user has asked you to push. Composite logs are empty — drill into children with `teamcity run tree`.
- `teamcity run list` truncates the JOB column, so it cannot tell you which job failed; identify jobs with `teamcity run tree <compositeRunId>` or `teamcity run view <runId>`.
- The binary is often not on `PATH`, and each shell invocation is a fresh shell: call `~/.local/bin/teamcity` or prepend `export PATH="$HOME/.local/bin:$PATH";`.
