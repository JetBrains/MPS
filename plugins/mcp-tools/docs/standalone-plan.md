# Standalone MPS support for the eval study: analysis and implementation plan

Written 2026-11-02 as a handoff for a later agent. Nothing in this plan has been implemented yet.

- Origin: an S2 probe against an installed `MPS.app`. It was written up as
  `standalone-s2.md`, a file that was never committed and had been removed from the worktree
  by the time this plan was written. This plan is therefore self-contained. The probe's
  findings, as far as they still matter, were:
  - **Scenario result.** S2 itself passed once the fixture was opened by hand. `Guard` was
    created, the language rebuilt, and `check_root_node_problems` on the sandbox model found
    no problems.
  - **Migration.** The Migration Assistant did not appear. `../../../.mps/migration.xml` stayed at
    baseline 261.
  - **Harness blind to the process.** The harness reported MPS down while MCP answered on
    64344 (§2.3).
  - **No safe call-log path.** There was no scripted way to turn the call log on for an
    already-running `.app`. A `start` without a fresh capture would have replayed the
    from-sources capture, starting the wrong MPS.
  - **`open` failed on jdwp.** The `open` activation died on the user vmoptions' jdwp line
    (`transport error 202: bind failed: Address already in use`). It succeeded once
    `MPS_VM_OPTIONS`/`IDEA_VM_OPTIONS` pointed at a copy without that line.
  - **Shipped catalog installed.** `install_skills.py` installed the shipped catalog (33
    skills; 15 `SKILL.md` files differ from this checkout).
  - **Withdrawn claim.** The probe's "8 structure tools missing from the live server" claim was
    wrong (§2.4).
  - **Launcher path.** Process path: `/Users/vaclav/Applications/MPS.app/Contents/MacOS/mps`.
    There is no `/Applications/MPS.app`.
  - **Daily project closed.** The user's project `robot_Kaja` was closed for the probe and
    reopened afterwards.
  - **Leftover scratch.** The scratch `~/MPSProjects/mcp-study/workspace/S2-dist-1-20261102T1546`
    was left on disk.
- Review: a reviewer subagent checked the v1 proposal read-only. Its corrections were verified
  in-session and are folded in here.
- Evidence: raw captures from the live instance are in
  `~/MPSProjects/mcp-study/notes/standalone-2026-11-02/` (outside the repo, Toolbox token
  redacted). The files are listed in §2.6.

Study root: `../study` (below, `$STUDY`). Unless a path says otherwise, all
paths are relative to it.

---

## 0. Read first

- Project rules: `/Users/vaclav/work/MPS/myMPS-fix/CLAUDE.md` and `.agents/*.md`. Commit format
  is in `../../../.agents/git.md`. Commit only when the user asks.
- Study procedure: `instructions/runbook.md` (step 1 "Preflight", step 2 "Instrument", and the
  script references for `mps_control.sh` and `mps_mcp_url.py`). Background lessons are in
  `instructions/lessons.md`: 27 (capture while alive), 28 (shutdown states), 30 (the modal
  open prompt) and 47 (workers reading the MPS sources).
- Ownership rules for MPS processes. They come from user memory and are binding:
  - Never `kill` an MPS process. Restart only through `scripts/mps_control.sh`.
  - Never close or shut down the user's daily standalone MPS without telling the user first.
    It is their working IDE; it had `/Users/vaclav/MPSSamples 2026.2/robot_Kaja` open.
  - Never edit `~/Library/Application Support/JetBrains/MPS2026.2/*`. That covers the user's
    `mps.vmoptions`, `options/mcpServer.xml` and `options/mcpToolDisallowList.xml`.
  - Two Claude sessions may share this worktree. Before running any unit or MPS suite, check
    that no other session runs one.
- Harness unit tests:
  `cd $STUDY/scripts && python3 -m unittest discover -s tests -p 'test_*.py'`.
  They need no MPS. 41 tests touch `test_mps_launch.py` and `test_mps_mcp_url.py`.

## 1. Goal and non-goals

**Goal.** A study round can run against an installed MPS distribution (macOS `.app`, Linux
tarball) as cleanly as against a from-sources MPS:

- the harness detects it, captures it, starts it, opens projects in it, and shuts it down;
- the server call log can be turned on;
- every run's meta records which build and catalog were measured;
- analysis never silently pools standalone runs with from-sources runs.

**Why standalone at all.** It measures what a real user of build X experiences:

- the shipped skill catalog and the shipped tool surface;
- no MPS sources on any path MCP reports. Lesson 47: from-sources workers read the checkout
  22–37 times per run, and a standalone worker cannot.

It does **not** measure doc remedies in this checkout. That stays the job of from-sources
rounds.

**Non-goals:**

- Windows (the harness depends on `pgrep` and `lsof`).
- Building a distribution or plugin from this checkout for a standalone install. The checkout
  branch is `261/vaclav/MCP3`, and the install is 262.
- Editing user config or tracked run configurations.

## 2. Analysis: verified facts

Every item below was observed on 2026-11-02 against `/Users/vaclav/Applications/MPS.app` (pid
13492, MPS 2026.2, build `262.11879.672`, selector `MPS2026.2`, MCP on port 64344), unless it
says otherwise.

### 2.1 Process identity

- `ps -o ppid=,args=` gives `1 /Users/vaclav/Applications/MPS.app/Contents/MacOS/mps` and
  nothing else: no `-D` options and no main class. `pgrep -f jetbrains.mps.Launcher` finds
  nothing.
- `Contents/jbr/Contents/Home/bin/jcmd -l` gives `13492 jetbrains.mps.Launcher` in 0.16 s.
  `jps -l` agrees. A foreign JDK's `jcmd` (corretto-11) also attaches, in about 0.2 s.
  Attaching needs the same user, which holds.
- `jcmd <pid> VM.command_line` has everything `ps` lacks:
  - `jvm_args`, which starts with the **pseudo-tokens `abort vfprintf`** (JNI hooks the native
    launcher installs) before the first `-` option;
  - `-Didea.paths.selector=MPS2026.2`;
  - `-Didea.home.path=/Users/vaclav/Applications/MPS.app/Contents`;
  - `-Djb.vmOptionsFile=/Users/vaclav/Library/Application Support/JetBrains/MPS2026.2/mps.vmoptions`,
    a value **with a space**;
  - the user's `-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5044`;
  - `java_command: jetbrains.mps.Launcher`, and a `java_class_path (initial)` made of install
    jars.
- A study `start <project>` puts the project path in argv. A pattern anchored on
  `…/MacOS/mps$` would miss that process. **Detect by main class, not by argv.**

### 2.2 Native launcher semantics (strings in `Contents/MacOS/mps`, `Resources/product-info.json`, live `jvm_args`)

- `../../../product-info.json` has `envVarBaseName: "MPS"`, so the env vars are `MPS_VM_OPTIONS` and
  `MPS_PROPERTIES`. `launch[0].additionalJvmArguments` contains
  `-Didea.paths.selector=MPS2026.2` and `-Didea.home.path=$APP_PACKAGE/Contents`. **The
  selector comes from product info, not from any vmoptions file.**
- VM options are read in two steps: `[1] Reading main VM options file` (the install
  `bin/mps.vmoptions`, always read), then `[2] Looking for user VM options file`. Step 2 reads
  `$MPS_VM_OPTIONS` if set, otherwise `<config>/mps.vmoptions`. The live `jvm_args` show
  `-Xmx2048m` (install) followed by `-Xmx4096m` and the jdwp line (user). **`MPS_VM_OPTIONS`
  replaces only the user file.** The install file is still read, so a study file must not copy
  it.
- The launcher also reads `IJ_JAVA_OPTIONS`.
- A custom properties file is honoured: the strings contain
  `Looking for custom properties environment variable` and `-Didea.properties.file=`. It shows
  up in the JVM only as `-Didea.properties.file=…`, never as `-Didea.config.path`. The launcher
  has no `idea.config` string, so it **always looks for the user vmoptions in the default
  config directory**, whatever a properties file says. Conclusion: set the profile's
  `-Didea.config.path` and its siblings **directly in the study vmoptions file**, and do not
  use `MPS_PROPERTIES`.
- The original probe showed that activation (a second launcher process with a project path)
  reached the running pid even with `MPS_VM_OPTIONS` pointing at a different file. That fits:
  the selector is unchanged, so the directory lock is the same.

### 2.3 What breaks in the harness today

| Where | Today | Effect on a native launcher |
|---|---|---|
| `scripts/mps_mcp_url.py:46` `LAUNCHER_PATTERN`, `:145` `launcher_pids()` | `pgrep -f jetbrains.mps.Launcher` | no pid, so exit 3 "MPS is not running" while MCP answers |
| `scripts/mps_mcp_url.py:76` `parse_process_args()` | parses `ps` args | no selector or config path, so the `mcpServer.xml` fallback is blind too |
| `scripts/mps_control.sh:57` `mps_pid()` | same pgrep | `capture`, `open`, `shutdown`, `start` all treat MPS as down |
| `scripts/mps_control.sh:112` `do_capture()` | `jcmd` next to `ps`'s first token | looks for `…/MacOS/jcmd`, does not exist, dies |
| `do_capture()` Python tokenizer | rejoins non-`-` words onto the previous token | `abort vfprintf` becomes a bogus first VM "option" |
| `scripts/mps_launch.py:210` `plan(mode="open")` | sets no `MPS_VM_OPTIONS` (rationale: "share the selector", which is wrong per §2.2) | activation reads the user file, whose jdwp `*:5044` is taken, so exit 2 `transport error 202: bind failed` (original probe, problem 3) |
| `scripts/mps_launch.py:197` `write_vmoptions()` for `start` | copies the install file + study flags into `MPS_VM_OPTIONS` | works, but double-reads the install file; silently drops the user's `-Xmx4096m` (a heap change nobody records) |
| `scripts/mps_launch.py:35` `LAUNCHER_NAMES`, `:119` `resolve_install()` | `mps`, `mps.sh`, `mps.bat`, `mps64.exe`; Linux probes only `bin/mps.sh` | Linux tarballs ship a native `bin/mps`; `resolve_install` never picks it |
| `scripts/mps_control.sh:459` `do_start()` | refuses if **any** `mps_pid` | cannot start a study instance next to the daily one |
| `scripts/mps_control.sh:401` `do_shutdown()` | `close_project(shutdownWithLastProject=true)` on the first resolved URL; polls any `mps_pid` (`:431`) | with two instances it can **shut down the user's IDE**, and it never sees its own exit |
| `scripts/run_worker.sh:219-222` | `mpsPid` from the detected pid, else pgrep | empty on a native launcher, so the meta does not name the process under measurement |
| `instructions/runbook.md:61` | call-log check via `ps … pgrep … grep calllog` | prints nothing for a native launcher |

### 2.4 Tool surface and catalog

- **The original report's problem 5 was wrong.** `mps_mcp_create_enum`,
  `mps_mcp_rename_concept_link` and the other six "missing tools" are `private suspend fun` in
  `../src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSLanguageStructureMcpToolset.kt`
  (`:1076`, `:1367`, …), reached through `mps_mcp_alter_structure`. They are not MCP tools, are
  absent from from-sources inventories (`~/MPSProjects/mcp-study/archive/runs/r49/inventory.json`,
  54 tools), and no catalog names them.
- **Non-MPS tools appear on both kinds.** From-sources inventories list 9
  (`execute_run_configuration`, `get_run_configurations`, `create_new_file`,
  `find_files_by_glob`, `find_files_by_name_keyword`, `list_directory_tree`, `read_file`,
  `apply_patch`, `get_repositories`). The standalone server listed 13. The difference comes from
  **per-selector config**:
  - the daily `MPS2026.2/options/mcpToolDisallowList.xml` disallows 18 tools, including
    `find_files_by_glob` and `find_files_by_name_keyword`;
  - `mcpServer.xml` has `enableBraveMode=true` and `mcpServerPort=64344`.
- `install_skills.py` installs what the **running plugin** ships, through
  `mps_mcp_initialize_project_for_agents`. On the shipped plugin that works, writes 33 skills
  plus guides, and stamps `MPS_MCP_SKILL_VERSION.txt`
  (`version=2026.2 build=262.11879.672`). 15 of 33 `SKILL.md` files differ from this checkout's
  catalog. That is expected and correct for a "shipped experience" round.
- `mps_mcp_list_open_projects` returns `mpsVersion`, `mpsBuild`, `mpsEap` and `logDirectory`
  (`JetBrainsMPSProjectMcpToolset.kt:114-121`). It does **not** return a selector or config
  path.

### 2.5 Environment risks

- **Toolbox-managed install.** The user vmoptions has `-Dide.managed.by.toolbox=…`. Toolbox can
  update the `.app` in place between runs.
- **User vmoptions carry Toolbox notification options and the jdwp line.** A study
  `MPS_VM_OPTIONS` replaces them all. That is desirable, but the harness should record that it
  happened.
- **Fixture migration baseline.** The pinned statechart tarball did not raise the Migration
  Assistant on 262. A synthesized empty project must be made with `new_study_project.py
  --mps-home "$MPS_INSTALL"` (already documented).
- **Ktor warnings.** `Pending StreamableHttp transport timed out without SSE stream` appeared
  in `idea.log`. It is not known to be distribution-only. Note it if it recurs.

### 2.6 Evidence files (`~/MPSProjects/mcp-study/notes/standalone-2026-11-02/`)

| File | Content |
|---|---|
| `jcmd-VM.command_line-native-262.txt` | full `VM.command_line` dump of pid 13492, token redacted. **Use it, trimmed, as unit-test data** (copy it into `scripts/tests/testdata/` and replace `/Users/vaclav` with a placeholder) |
| `jcmd-l.txt` | `jcmd -l` output |
| `ps-args.txt` | `ps` ppid + args |
| `product-info-excerpt.json` | name, build, `envVarBaseName`, `launch[]` (with `additionalJvmArguments`) |
| `launcher-strings.txt` | the vmoptions and properties lookup strings from the native launcher |
| `install-mps.vmoptions` | install `bin/mps.vmoptions` without comments |
| `user-mps.vmoptions` | user file: jdwp, `-Xmx4096m`, Toolbox options (token redacted) |
| `mcpServer.xml`, `mcpToolDisallowList.xml` | daily selector's MCP settings, copied to seed or compare a profile |

## 3. Design decisions

1. **Detection = `jcmd -l`, filtered to `jetbrains.mps.Launcher`.** The pgrep pattern stays as
   a fallback (no `jcmd` found, or a JVM started with `-XX:-UsePerfData`). There is no
   argv-based native-launcher pattern.
2. **One shared Python module** (proposed: `scripts/mps_process.py`) owns:
   - finding `jcmd`;
   - listing MPS pids;
   - parsing the `jcmd` dump;
   - finding the owner of a port.

   `mps_mcp_url.py`, `mps_launch.py`, `mps_control.sh` (through small CLI subcommands) and
   `run_worker.sh` all use it. This removes the three copies of "how do I find MPS".
3. **The standalone study instance runs in its own profile with its own MCP port** (part B).
   The study never touches the daily instance. All profile paths go into the study vmoptions
   file, passed as `MPS_VM_OPTIONS` and `IDEA_VM_OPTIONS`, for `start` **and** `open`.
4. **A standalone study instance is addressed by its port** (pinned URL, pid = owner of the
   listening port), never by "first launcher found".
5. **Until part B lands and its probe passes,** `shutdown`, `restart` and `open` exit 3 on a
   standalone capture with no profile, with a message that points here. `start` stays allowed
   only when no MPS with the same selector is running.
6. **Provenance is recorded per run; pooling across kinds or builds is opt-in.**

## 4. Implementation plan

Work in this order. Each part ends green on the harness unit tests. Parts A and C1/C2 need no
MPS restart. Part B needs one live probe, and that probe needs the user's consent because it
starts a second MPS.

### Part A — detection and capture (mechanical, no live changes)

**A1. `scripts/mps_process.py` (new)**

- `find_jcmd(hints: list[str]) -> str | None`. Order:
  1. next to `ps`'s first token when its basename is `java`;
  2. derived from an install or launcher hint: `<x>.app/Contents/MacOS/mps` →
     `<x>.app/Contents/jbr/Contents/Home/bin/jcmd`, `<root>/bin/mps*` →
     `<root>/jbr/bin/jcmd`, and `<idea.home>/jbr/...` for both layouts;
  3. `shutil.which("jcmd")`.

  Hints come from the capture (`install`, `launcher`, `javaBin`) and `$MPS_INSTALL`.
- `mps_pids() -> list[int]`: `jcmd -l` lines whose second field is exactly
  `jetbrains.mps.Launcher`. On no `jcmd` or an empty result, fall back to `pgrep -f
  '[j]etbrains\.mps\.Launcher'`. Exclude the activation process only by "listens on nothing"
  later, as today.
- `parse_command_line(dump: str) -> {jvmArgs: [..], javaCommand, classpath}`. The tokenizer
  **drops leading words before the first `-` token** (`abort`, `vfprintf`) and rejoins spaced
  values onto the previous `-` token, as `do_capture` does today. Move that logic here and
  delete the copy in `do_capture`.
- `jvm_info(pid) -> {selector, configPath, ideaHome, jbVmOptionsFile, xmx, calllog, logPath,
  jdwp}`, read from `jcmd <pid> VM.command_line`. `ps` args stay a cheap first try for
  from-sources processes.
- `port_owner(port) -> int | None`: `lsof -nP -iTCP:<port> -sTCP:LISTEN -t`.
- CLI for shell callers: `mps_process.py pids`, `mps_process.py info <pid> --json`,
  `mps_process.py port-owner <port>`, and `mps_process.py jcmd [--hint …]`.
- Tests (`tests/test_mps_process.py`):
  - parse the trimmed native dump; assert `abort`/`vfprintf` are dropped;
  - assert `jbVmOptionsFile` keeps its space, and the selector is `MPS2026.2`;
  - jcmd derivation for the macOS `.app`, the Linux root, and a from-sources `java`;
  - `jcmd -l` parsing, including a line for a non-MPS JVM (`com.intellij.mcpserver.stdio...`)
    that must be ignored.

**A2. `scripts/mps_mcp_url.py`**

- `launcher_pids()` → `mps_process.mps_pids()`.
- `_detect_one()`: if `parse_process_args(ps)` yields no selector, use
  `mps_process.jvm_info(pid)` for selector and config path. Keep `CONFIG_PATH_RE` for
  from-sources.
- Update the error text "no jetbrains.mps.Launcher process" to say how detection works now.
- Tests: a native case in `tests/test_mps_mcp_url.py` with mocked `_run`/`mps_process` (empty
  `ps` args, canned `jcmd`), expecting the selector and an `mcpServer.xml` port.

**A3. `scripts/mps_control.sh`**

- `mps_pid()` → `python3 "$STUDY/scripts/mps_process.py" pids | head -1`, or the pinned pid in
  part B.
- `do_capture()`: get the dump through `mps_process.py` (it finds `jcmd`), and record the new
  fields `jbVmOptionsFile`, `xmx`, `selector` and `jdwpStripped: true|false`. `annotate` already
  classifies the result as standalone (`idea.home.path/MacOS/mps` exists).
- Guard (design decision 5): `do_open`, `do_shutdown` and `restart` exit 3 when
  `capture_kind == standalone` and the capture has no `profile`. The message: "standalone
  without a study profile would act on the user's IDE; see
  reports/assessments/standalone-plan.md part B".

**A4. `scripts/mps_launch.py`**

- Add native Linux `bin/mps` to `resolve_install()`: check `bin/mps` is a regular executable
  file before `mps.sh`. `LAUNCHER_NAMES` already has `mps`.
- Fix the module docstring and the `plan()` comment. The selector comes from product info.
  Activation not setting `MPS_VM_OPTIONS` is a bug, not a requirement.
- Tests: a Linux tarball fixture with `bin/mps` + `bin/mps.sh` resolves to `bin/mps`.

**A5. `scripts/run_worker.sh`**

`MPS_PID` fallback (`:222`) → `mps_process.py pids | head -1`, or the pinned port owner in part
B.

**Acceptance for A:**

- Unit tests green.
- Against the running daily instance, read-only:
  - `scripts/mps_control.sh url --json` gives `confirmed: true`, `port: 64344`,
    `selector: MPS2026.2`;
  - `CAPTURE=$TMPDIR/mps-study-cmdline-standalone.json scripts/mps_control.sh capture` gives
    `kind: standalone`, a launcher under `MPS.app`, and no `abort` token in `vmOptions`;
  - `shutdown` and `open` on that capture refuse with the A3 message.

  None of these change the instance. `capture` only runs `jcmd`, which is read-only.

### Part B — study-owned standalone instance (design; probe first)

**B1. `install --profile`**

`mps_control.sh install <path> [--profile <dir>]`. The default profile is
`~/MPSProjects/mcp-study/profiles/<selector>-study`, with the selector read from the install's
`../../../product-info.json` `dataDirectoryName`. It writes `profile`, `mcpPort` (default 64354, or
`$STUDY_MCP_PORT`) and `profileSeeded` into the capture.

Seeding is idempotent and done by `mps_launch.py seed-profile`:

- `<profile>/config/options/mcpServer.xml` with `enableMcpServer=true`,
  `enableBraveMode=true` and `mcpServerPort=<port>`;
- `<profile>/config/options/mcpToolDisallowList.xml`. **This is a decision to make once and
  record in `instructions/fixtures.md`.** Recommended: mirror the from-sources study selector's
  list (read `~/Library/Application Support/JetBrains/MPSSRC2026.1/options/mcpToolDisallowList.xml`
  if it exists), so both kinds expose the same IDE tools. Otherwise use an empty list, and C1
  records it;
- `confirmOpenNewProject2` set to "open in this window" (lesson 30). Find the exact options
  file and key in the platform sources, following `../../../.agents/tools.md`;
- pre-created `config/`, `system/`, `../..` and `log/` directories, so the
  import-settings wizard is skipped.

**B2. One study vmoptions file per launch**

`mps_launch.write_vmoptions()` is rewritten. It **no longer copies the install file**, which
the launcher reads anyway. `start` and `open` each write
`$TMPDIR/mps-study-<selector>-<mode>.vmoptions` with:

- **both modes:** `-Didea.config.path=<profile>/config`, `-Didea.system.path=<profile>/system`,
  `-Didea.plugins.path=<profile>/plugins` and `-Didea.log.path=<profile>/log`, or the `idelog`
  value. These place the directory lock, so activation reaches the study instance and not the
  daily one;
- **`start` only:**
  - `-Dmps.migration.assistant.auto=<…>`;
  - `-Dmps.mcp.calllog=<…>` if set;
  - `-Didea.trust.all.projects=true` (verify in the probe; fallback: seed
    `options/trusted-paths.xml` with `~/MPSProjects/mcp-study/workspace`);
  - `-Xmx<N>`, with `N` from `$STUDY_XMX` (default `4096m`) and recorded in the meta.

`do_start_standalone` and `do_open_standalone` set both `MPS_VM_OPTIONS` and `IDEA_VM_OPTIONS`
and **unset `IJ_JAVA_OPTIONS`** in the child environment.

Tests:

- the activation file contains the profile path flags and no study `-D` flags;
- no file ever contains `-agentlib:jdwp`, `-agentpath` or `-javaagent`;
- `start` contains the study flags and `-Xmx`.

**B3. Port-addressed control**

When the capture has a `profile`:

- `resolve_url` pins `MPS_MCP_URL=http://localhost:<mcpPort>/stream` and skips detection
  (keep a handshake check that `serverInfo.name` contains `MPS`);
- `mps_pid()` returns `mps_process.py port-owner <mcpPort>`. Before MCP listens (`start` →
  `wait`), use the pid that `do_start_standalone` printed, saved into the capture as
  `startedPid`;
- `do_start` refuses only if that pid or port owner is alive; another MPS running is fine;
- `do_shutdown` targets only the pinned URL and polls only that pid;
- `run_worker.sh` sees the profile via `$CAPTURE` (it must take the same `CAPTURE` env, which
  the runbook must say) and uses the pinned URL plus port owner. `mpsMcpUrlSource: profile`.

**B probe (live, needs the user's go-ahead because it starts a second MPS)**

1. With the daily MPS left running, run:
   `MPS_INSTALL=/Users/vaclav/Applications/MPS.app CAPTURE=$TMPDIR/mps-study-cmdline-standalone.json`
   `scripts/mps_control.sh install --profile ~/MPSProjects/mcp-study/profiles/MPS2026.2-study`.
2. Synthesize a harness project:
   `new_study_project.py --dir ~/MPSProjects/mcp-study/workspace/harness-standalone-<stamp>
   --mps-home "$MPS_INSTALL"`. Then `start <harness>` and `wait`.
3. Record:
   - every dialog that appears (data-sharing consent, EULA, tips, What's New, trust,
     import), and the flag or seed that suppresses each. Add the fixes to B1/B2 and repeat
     until `wait` succeeds unattended;
   - `list_open_projects`: `logDirectory` under the profile, `mpsBuild` 262.11879.672;
   - the call log file grows after one tool call;
   - `tools_inventory.py` names; diff them against `r49/inventory.json`.
4. Open a second synthesized scratch, `close_project` it, then `shutdown`.
5. Throughout, the daily instance must keep its pid (13492, or whatever it is then), its open
   project, and its port 64344. Check this before and after with `mps_process.py pids` and
   `port-owner 64344`.
6. If any step needs a human click, the fallback design is "the study owns the daily instance
   for the round". The observer announces which project is closed and reopens it at wrap-up,
   the A3 guard is lifted only with an explicit `STUDY_OWNS_DAILY_MPS=1`, and `open` still
   uses a jdwp-free activation file (profile flags omitted).

Write the probe results into a short `reports/assessments/standalone-profile-probe.md` and link
it from `reports/index.md`.

### Part C — provenance, analysis, docs

**C1. Meta fields (`scripts/run_worker.sh`, meta heredoc at `:245`)**

| Field | Source |
|---|---|
| `mpsKind` | capture `kind`, defaulting to `sources` |
| `mpsBuild`, `mpsVersion` | `list_open_projects` envelope (`data.mpsBuild`, `data.mpsVersion`), one MCP call before the run's call-log offset |
| `mpsSelector`, `mpsLauncher`, `mpsProfile`, `mpsXmx` | capture / `mps_process.py info` |
| `skillsStamp` | contents of `<project>/.claude/skills/MPS_MCP_SKILL_VERSION.txt`, or `absent` |
| `disallowedIdeTools` | sorted names from `<config>/options/mcpToolDisallowList.xml` of the instance (profile config, or the selector default) |

Update the meta description in `instructions/runbook.md` ("run_worker.sh" section around the
`mpsPid` text, ~`:311-316`).

**C2. `scripts/analyze_runs.py`**

- Group runs by `(mpsKind, mpsBuild)`. Old metas without these fields map to
  `("sources", None)`.
- With more than one group in `$RUNS`, exit non-zero with a listing, unless `--pool-builds`
  is passed.
- Put the group in the report header.
- Add a test with two metas of different kinds.

**C3. Catalog ↔ toolset guard**

In `install_skills.py --check-tools <inventory.json>`, or a separate small script:

- regex `\bmps_mcp_[a-z][a-z0-9_]*\b` over the installed `mps-*` skill files plus `../../../AGENTS.md`
  and `CLAUDE.md`, excluding the bare prefix (`mps_mcp_*` in prose);
- set difference against the inventory names. A non-empty "documented but absent" set gives
  exit 6, and the runbook makes it a preflight stop.

The reviewer ran this check: both catalogs pass today. The check guards future drift and does
not fix an observed defect. Test it with a tiny fake catalog.

**C4. `instructions/runbook.md`**

Add a "Standalone track" subsection under step 1:

1. **Gate 0, purpose.** Choose one:
   - *shipped experience of build X* (standalone);
   - *remedy in this checkout* (from sources).

   Never both in one round.
2. Pause Toolbox auto-update for the install, and re-check `mpsBuild` at wrap-up.
3. Use a per-kind `CAPTURE` (`$TMPDIR/mps-study-cmdline-standalone.json`), exported for
   `mps_control.sh` **and** `run_worker.sh`.
4. `install --profile`, `calllog`, `idelog`, `start <harness>`, `wait`.
5. `new_study_project.py --mps-home "$MPS_INSTALL"`.
6. Inventory, C3 guard, then run.

Fix the stale text:

- `mps_mcp_url.py` reference ("starts from the launcher pids (`pgrep -f …`)");
- preflight call-log check `runbook.md:61` → `jcmd <pid> VM.command_line | tr ' ' '\n' |
  grep calllog`, or `mps_process.py info <pid> --json | jq .calllog`;
- the `start` paragraph ("appended to a copy of the install's `mps.vmoptions`");
- the `open` paragraph ("does **not** set `MPS_VM_OPTIONS`").

Also update the header comments in `mps_control.sh`, `mps_launch.py` and `mps_mcp_url.py`.

**C5. Housekeeping**

- `../../../.claude/skills/skill-optimization-study/SKILL.md`: one line in step 1/2 pointing to the
  standalone track. Check whether this skill has a blueprint that must be propagated; the
  `mps-*` skills do, the study skill probably not.
- Add a lesson to `instructions/lessons.md` after part B lands: "A standalone install is
  someone's IDE: detect by main class, own a profile and a port, never act on the first
  launcher".

## 5. Verification checklist (final)

- [ ] `python3 -m unittest discover -s tests -p 'test_*.py'` green (in `$STUDY/scripts`).
- [ ] From-sources regression: on the from-sources MPS, `capture`, `url --json`, `restart`
      and `wait` behave as before. A SMOKE run's meta has `mpsKind: sources` and a
      non-empty `mpsBuild`.
- [ ] Standalone (after the B probe): `install --profile`, `start`, `wait`, SMOKE via
      `run_worker.sh`, then `shutdown`. Meta has `mpsKind: standalone`,
      `mpsBuild: 262.11879.672`, `mpsProfile`, `skillsStamp`, `disallowedIdeTools`, and a
      non-empty `mpsPid` equal to the owner of the port. The daily MPS is untouched.
- [ ] `analyze_runs.py` refuses the mixed `$RUNS` without `--pool-builds`.
- [ ] `grep` the `idea.log` of the run window (profile `../../../log`) for `SEVERE` (memory: clean
  tool envelopes can hide SEVERE traces).

## 6. Open questions for the user

1. Disallow list for the study profile: mirror the from-sources study selector (recommended),
   empty, or copy the daily `MPS2026.2` one?
2. Study heap for a standalone `start`: 4096m like the daily user setting, or the install
   default of 2048m?
3. Is starting a second MPS next to the daily one acceptable on this machine (memory, the
   indexing load)? If not, take the B probe's fallback ("study owns the daily instance") from
   the start.
4. Should the original report's index line in `reports/index.md` mention that problem 5 was
   withdrawn?
