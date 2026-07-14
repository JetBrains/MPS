# Tool usage policy

## YouTrack

* Use 'YouTrack' tools to read issue data. Do not scrape YouTrack web pages.
* Never create or update YouTrack issues, post comments, or change the issue state without an explicit user request.
* Every YouTrack issue comment or edit produced with AI assistance must include this trailer: `Co-Authored-By: <identity of the AI agent>`.
* If the MCP server is unavailable, say so clearly and ask the user how to proceed before doing anything that depends on issue data.
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
- **Prefer IDE rename over sed/grep scripts.** `rename_refactoring` is type-aware: it handles type references, parameter declarations, named-argument call sites, and file renames atomically without touching unrelated identifiers. Rename calls are safe and may be performed autonomously as part of a refactoring task.
- Use `get_file_problems` eagerly to validate code.
- When multiple IDEA projects are served, pass the absolute `projectPath` for the project that owns the code. Do not use a parent VCS root when the actual IDEA project is below it.
- If IntelliJ platform sources are needed, ask the user for their exact location and ask them to open that project in IDEA. Use the absolute platform path for IDEA MCP queries and do not modify or build platform sources.
- Never change the state of the IDE (which files are open, run configurations, breakpoints) without an explicit user request.
- If the MCP server is unavailable, stop only for work that requires IDEA-aware navigation, diagnostics, refactoring, builds, tests, or run configurations. Plain text, docs, and configuration work may continue with file tools.

## JetBrains MPS (mps_mcp_*)

- Use `mps_mcp_*` tools for changing, diagnostics, and inspecting currently open MPS modules, models, and nodes.
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

- Use the `teamcity` CLI (at `~/.local/bin/teamcity`) for all TC operations. The skill at `.agents/skills/teamcity-cli/` documents all commands. Check `teamcity auth status` first to confirm connectivity.
- TeamCity project and build configuration IDs include the concrete release version. Derive the prefix from the target MPS release: `2026.1` -> `MPS_20261`, `2026.2` -> `MPS_20262`, `2026.3` -> `MPS_20263`.
- Derive the target release from the current branch, the YouTrack fix version, or the user request. If those disagree, ask before triggering or watching builds.
- A concrete MPS version example for `2026.1`:
  - Distribution: `MPS_20261_Distribution`
  - Feature branches: `MPS_20261_FeatureBranches` (TC **project** ID, not a build config)
  - IntelliJ IDEA platform: `MPS_20261_IdeaPlatform`

### Feature branch build chain (`MPS_20261_FeatureBranches`)

The feature-branches project contains these build configurations:

| Build config ID                                            | Name                               |
|------------------------------------------------------------|------------------------------------|
| `MPS_20261_FeatureBranches_Binaries`                       | Binaries (root — runs first)       |
| `MPS_20261_FeatureBranches_DownloadableArtifactsNoInstallers` | Downloadable Artifacts (key gate) |
| `MPS_20261_FeatureBranches_TestsFromIdeaProject`           | Tests from IDEA Project            |
| `MPS_20261_FeatureBranches_TestBinaries`                   | Test Binaries                      |
| `MPS_20261_FeatureBranches_TestTypesystem`                 | Test Typesystem                    |
| `MPS_20261_FeatureBranches_TestParallelGeneration`         | Test Parallel Generation           |
| `MPS_20261_FeatureBranches_TestMbeddrBuild`                | Test Mbeddr Build                  |
| `MPS_20261_FeatureBranches_MpsProjectConsistencyTest`      | MPS Project Consistency Test       |
| `MPS_20261_FeatureBranches_Extensions`                     | Extensions                         |
| `MPS_20261_FeatureBranches_Statistics`                     | Statistics                         |
| `MPS_20261_FeatureBranches_LinuxDistribution`              | Linux Distribution                 |
| `MPS_20261_FeatureBranches_MacInstaller`                   | Mac Installer                      |
| `MPS_20261_FeatureBranches_WindowsInstaller`               | Windows Installer                  |

- The `Binaries` build is the root of the chain and runs first; downstream builds are triggered by VCS/snapshot dependency after it succeeds.
- `DownloadableArtifactsNoInstallers` is the key gate to wait for on feature branches.
- To trigger a feature-branch chain, start the versioned `FeatureBranches_Binaries` build for the branch, then watch the downstream gate build requested by the user or required by the workflow.
- To find a branch's build: `teamcity run list --job MPS_20261_FeatureBranches_Binaries --limit 5` (TeamCity branch names usually match git branch names without the leading version segment, e.g. `261/vaclav/MPS-39649` appears as `vaclav/MPS-39649`).
- To watch a build: `teamcity run watch <run-id>` (blocks until done).
- To check status without blocking: `teamcity run list --job <job-id> --limit 3`.
