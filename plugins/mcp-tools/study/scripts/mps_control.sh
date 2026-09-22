#!/usr/bin/env bash
# MPS process control for the study observer: capture, shutdown, start, wait, restart.
#
# usage: mps_control.sh capture|open|shutdown|start|wait|restart [project-dir]
#
# [project-dir] is optional everywhere and always the SAME project: the one to close on shutdown,
# to open on start, to require as loaded on wait. Pass it whenever you know it — without it,
# shutdown and wait fall back to parsing the platform's pre-dispatch rejection listing.
#
#   capture   record the running MPS's launch command line (idempotent while MPS lives)
#   open      activate the RUNNING MPS with [project-dir] (short-lived second process)
#   shutdown  close the single open project WITH shutdownWithLastProject=true, then poll the pid
#   start     relaunch MPS DETACHED from the capture, optionally opening [project-dir]
#   wait      readiness handshake: MCP tools/list, then list_open_projects
#   restart   capture (if absent) -> shutdown -> start -> wait
#
# The capture lives in $TMPDIR (CAPTURE=$TMPDIR/mps-study-cmdline.json), NOT in $RUNS: wrap-up
# deletes ~/MPSProjects/mcp-study/, and mps-project-management restricts helper dumps to $TMPDIR.
# It must be taken while MPS is alive — after the application exits there is nothing left to
# inspect (study lesson 27). `shutdown` therefore refuses without it.
#
# Shutdown is MCP: mps_mcp_close_project(shutdownWithLastProject=true) exits the application only
# when the project being closed is the last one open, and never from the Welcome screen. The exit
# is fire-and-forget after the close, so a confirm-exit dialog can leave MPS alive at the Welcome
# screen with MCP unusable (study lesson 28) — this script reports that state instead of retrying.
#
# There is still no MCP tool that opens a project: `start` passes the path on the command line.
# If MPS is down and no capture exists, use the IDEA `MPS` run configuration with the project path
# as a program argument instead of reconstructing a command.
set -uo pipefail

STUDY=${STUDY:-"$(cd "$(dirname "$0")/.." && pwd)"}
CAPTURE=${CAPTURE:-"${TMPDIR:-/tmp}/mps-study-cmdline.json"}
MPS_MCP_URL=${MPS_MCP_URL:-http://localhost:64343/stream}
SHUTDOWN_WAIT=${SHUTDOWN_WAIT:-60}     # seconds to wait for the pid to disappear
READY_WAIT=${READY_WAIT:-300}          # seconds to wait for MCP to answer after a start

die() { echo "$*" >&2; exit 3; }
mps_pid() { pgrep -f '[j]etbrains\.mps\.Launcher' | head -1; }

# --- capture ---------------------------------------------------------------------------------
# The java binary and working directory are not in the jcmd dump: the binary is the first token of
# the process command line and the cwd comes from lsof (mps-project-management/examples-macos.md).
# Classpath and VM options come from `jcmd VM.command_line`, which reports the classpath separately
# as `java_class_path (initial)`. Tokens that do not start with `-` are rejoined onto the previous
# one: classpaths and agent paths contain spaces ("IntelliJ IDEA.app").
# jdwp and the idea_rt.jar javaagent are stripped deliberately, also for a cold start: the study
# wants no debugger port and no run-configuration agent.
do_capture() {
  local pid; pid=$(mps_pid)
  [ -n "$pid" ] || die "MPS is not running: nothing to capture"
  local java jcmd cwd dump
  java=$(ps -ww -p "$pid" -o args= | awk '{print $1}')
  jcmd="$(dirname "$java")/jcmd"
  [ -x "$jcmd" ] || die "no jcmd next to the running JBR: $jcmd"
  cwd=$(lsof -a -p "$pid" -d cwd 2>/dev/null | awk 'END{print $NF}')
  dump="${TMPDIR:-/tmp}/mps-study-jcmd.txt"
  "$jcmd" "$pid" VM.command_line > "$dump" || die "jcmd VM.command_line failed for pid $pid"

  PID="$pid" JAVA="$java" CWD="$cwd" DUMP="$dump" OUT="$CAPTURE" python3 - <<'PY'
import json, os, re

dump = open(os.environ["DUMP"], encoding="utf-8", errors="replace").read()

def field(name, stops):
    start = dump.find(name + ":")
    if start < 0:
        return ""
    start += len(name) + 1
    end = min([p for p in (dump.find(s, start) for s in stops) if p >= 0] or [len(dump)])
    return dump[start:end].strip()

jvm_args = field("jvm_args", ["\njava_command:"])
classpath = field("java_class_path (initial)", ["\nLauncher Type:"])
java_command = field("java_command", ["\njava_class_path", "\nLauncher Type:"])

tokens = []
for t in jvm_args.split():
    if t.startswith("-") or not tokens:
        tokens.append(t)
    else:
        tokens[-1] += " " + t

drop = re.compile(r"^(-agentlib:jdwp|-javaagent:.*idea_rt\.jar)")
vm = [t for t in tokens if not drop.match(t) and not t.startswith("-classpath") and t != "-cp"]
selector = next((t.split("=", 1)[1] for t in vm if t.startswith("-Didea.paths.selector=")), None)
calllog = next((t for t in vm if t.startswith("-Dmps.mcp.calllog=")), None)
main = (java_command.split() or ["jetbrains.mps.Launcher"])[0]

json.dump({"pid": int(os.environ["PID"]), "javaBin": os.environ["JAVA"],
           "cwd": os.environ["CWD"], "vmOptions": vm, "classpath": classpath,
           "mainClass": main, "selector": selector, "callLogOption": calllog},
          open(os.environ["OUT"], "w"), indent=1)
print(json.dumps({"ok": True, "capture": os.environ["OUT"], "pid": int(os.environ["PID"]),
                  "selector": selector, "callLog": calllog is not None,
                  "vmOptions": len(vm), "classpathChars": len(classpath)}))
PY
}

# --- open (activate a running MPS with a project) ---------------------------------------------
# A short-lived second process hands the path to the running instance over DirectoryLock and exits.
# Same protocol as mps-project-management/examples-macos.md, reusing the capture, with one
# correction the S10 rehearsal forced: `java_command` from jcmd is "<main-class> [args]", so an MPS
# that was itself started WITH a project path (`start <project>`, or "start MPS with the project
# open") reports "jetbrains.mps.Launcher /path/to/previous/project". Passing that whole field as
# the main class fails with `ClassNotFoundException: jetbrains.mps.Launcher .path.to.previous...`.
# The capture stores only the first token as `mainClass`; never reconstruct from the raw field.
#
# Open only from the Welcome screen unless `confirmOpenNewProject2` is known not to be "ask":
# opening while another project is open raises the modal New Window / This Window prompt, which
# blocks every mps_mcp_* call (study lesson 30).
do_open() {
  local project="${1:?open needs a project directory}"
  [ -f "$CAPTURE" ] || die "no capture at $CAPTURE — run 'capture' first"
  [ -n "$(mps_pid)" ] || die "MPS is not running — use 'start' (a cold start), not 'open'"
  [ -d "$project" ] || die "no such project directory: $project"

  CAPTURE="$CAPTURE" PROJECT="$project" python3 - <<'ACTIVATE'
import json, os, subprocess, time
cap = json.load(open(os.environ["CAPTURE"]))
project = os.path.abspath(os.path.expanduser(os.environ["PROJECT"]))
cmd = [cap["javaBin"], *cap["vmOptions"]]
if cap.get("classpath"):
    cmd += ["-classpath", cap["classpath"]]
cmd += [cap["mainClass"], project]          # mainClass is the FIRST token only
t0 = time.time()
try:
    p = subprocess.run(cmd, cwd=cap.get("cwd") or None, capture_output=True, text=True, timeout=120)
except subprocess.TimeoutExpired:
    raise SystemExit("activation did not exit within 120s: it started a second IDE, so the "
                     "selector does not match the running instance")
elapsed = round(time.time() - t0, 1)
if p.returncode != 0:
    raise SystemExit("activation failed (exit %s after %ss): %s"
                     % (p.returncode, elapsed, (p.stderr or p.stdout or "").strip()[-400:]))
print(json.dumps({"ok": True, "activatedSeconds": elapsed, "project": project}))
ACTIVATE
  [ $? -eq 0 ] || exit 3
  # Exit 0 only means the request was handed over; confirm the open actually landed.
  local waited=0
  while [ "$waited" -lt 60 ]; do
    if open_projects "$project" | grep -qF "$project"; then
      echo "{\"ok\":true,\"opened\":\"$project\",\"confirmedAfterSeconds\":$waited}"; return 0
    fi
    sleep 3; waited=$((waited + 3))
  done
  die "activation exited cleanly but $project is not listed after 60s — check log/idea.log"
}

# --- shutdown --------------------------------------------------------------------------------
# Finding the project to close is itself gated: `mps_mcp_list_open_projects` with no projectPath is
# rejected BEFORE dispatch, and that rejection lists the open projects
# (`Currently open projects: {...}`). open_projects() therefore accepts all three shapes: a normal
# envelope (when a path was supplied), the rejection listing, and an empty Welcome-screen listing.
open_projects() {
  local path="${1:-}" args='{}'
  [ -n "$path" ] && args="{\"projectPath\":\"$path\"}"
  python3 "$STUDY/scripts/mcp_call.py" mps_mcp_list_open_projects "$args" --raw 2>/dev/null |
    python3 -c '
import json, re, sys

raw = sys.stdin.read()

def dirs_of(obj):
    """A project record names its directory differently per shape: the tool envelope uses
    mpsProjectBaseDirectory/basePath, the pre-dispatch rejection listing uses plain `path`."""
    out = []
    for p in obj.get("projects", []) or []:
        if isinstance(p, dict):
            d = p.get("mpsProjectBaseDirectory") or p.get("basePath") or p.get("path")
            if d:
                out.append(d)
    return out

found = []
try:                                     # success envelope (a projectPath was supplied)
    payload = json.loads(raw)
    data = payload.get("data")
    if isinstance(data, dict):
        found = dirs_of(data)
except ValueError:
    pass
if not found:
    # Pre-dispatch rejection: PLAIN TEXT (mcp_call.py even exits 0), carrying the listing.
    m = re.search(r"Currently open projects:\s*(\{.*\})", raw, re.S)
    if m:
        try:
            found = dirs_of(json.loads(m.group(1)))
        except ValueError:
            found = []
    if not found:
        found = re.findall(r"\"(?:mpsProjectBaseDirectory|basePath|path)\"\s*:\s*\"([^\"]+)\"", raw)
print("\n".join(found))'
}

do_shutdown() {
  [ -f "$CAPTURE" ] || die "no capture at $CAPTURE — run 'capture' while MPS is still alive"
  local pid; pid=$(mps_pid)
  [ -n "$pid" ] || { echo '{"ok":true,"alreadyDown":true}'; return 0; }

  local projects project count
  projects=$(open_projects "${1:-}") || die "cannot list open projects (is MCP up?)"
  count=$(printf '%s\n' "$projects" | grep -c .)
  if [ "$count" -ne 1 ]; then
    die "shutdown needs exactly one open project, found $count:
$projects
With none open MPS cannot be stopped over MCP (Welcome screen); with several, close the extras
first so the close of the last one carries the shutdown."
  fi
  project=$(printf '%s\n' "$projects" | grep . | head -1)

  echo "closing and shutting down: $project" >&2
  python3 "$STUDY/scripts/mcp_call.py" mps_mcp_close_project \
    "{\"projectPath\":\"$project\",\"shutdownWithLastProject\":true}"
  local rc=$?
  # exit 4 = server unreachable, the EXPECTED outcome once the application has exited.
  [ $rc -eq 0 ] || [ $rc -eq 4 ] ||
    die "close_project failed (exit $rc) — a modal dialog may be open; ask the user to dismiss it, then retry"

  local waited=0
  while [ -n "$(mps_pid)" ] && [ "$waited" -lt "$SHUTDOWN_WAIT" ]; do sleep 2; waited=$((waited + 2)); done
  if [ -n "$(mps_pid)" ]; then
    echo "MPS is still alive after ${SHUTDOWN_WAIT}s. Two known states:" >&2
    echo "  1. a confirm-exit dialog is up — ask the user to dismiss it;" >&2
    echo "  2. the project closed but the app stayed: MPS sits at the Welcome screen and MCP is" >&2
    echo "     dead (no project => every call is rejected before dispatch). Recover with 'start'." >&2
    exit 3
  fi
  echo "{\"ok\":true,\"closed\":\"$project\",\"exited\":true,\"waitedSeconds\":$waited}"
}

# --- start -----------------------------------------------------------------------------------
# Detached: a cold start IS the IDE and must outlive this shell. The ~90s foreground timeout in
# mps-project-management applies to ACTIVATION (a short-lived second process), not to this.
do_start() {
  [ -f "$CAPTURE" ] || die "no capture at $CAPTURE — use the IDEA \`MPS\` run configuration instead"
  [ -z "$(mps_pid)" ] || die "MPS is already running (pid $(mps_pid)) — use 'restart' or activate it"
  local project="${1:-}" log="${TMPDIR:-/tmp}/mps-study-start.log"

  CAPTURE="$CAPTURE" PROJECT="$project" LOGFILE="$log" python3 - <<'PY'
import json, os, subprocess
cap = json.load(open(os.environ["CAPTURE"]))
cmd = [cap["javaBin"], *cap["vmOptions"]]
if cap.get("classpath"):
    cmd += ["-classpath", cap["classpath"]]
cmd.append(cap["mainClass"])
project = os.environ.get("PROJECT") or ""
if project:
    cmd.append(project)
log = open(os.environ["LOGFILE"], "ab")
proc = subprocess.Popen(cmd, cwd=cap.get("cwd") or None, stdout=log, stderr=log,
                        stdin=subprocess.DEVNULL, start_new_session=True)
print(json.dumps({"ok": True, "pid": proc.pid, "project": project or None,
                  "log": os.environ["LOGFILE"]}))
PY
}

# --- wait ------------------------------------------------------------------------------------
# Readiness is a handshake, never `ps`: the process exists long before MCP answers and long before
# indexing settles. With a project directory, readiness means that project is listed. Without one,
# a pre-dispatch rejection that carries a non-empty project listing is itself proof the server
# dispatches and the project is loaded.
do_wait() {
  local want="${1:-}" waited=0 listed
  while [ "$waited" -lt "$READY_WAIT" ]; do
    if python3 "$STUDY/scripts/tools_inventory.py" --out "${TMPDIR:-/tmp}/mps-study-ready.json" >/dev/null 2>&1; then
      listed=$(open_projects "$want")
      if [ -n "$want" ]; then
        if printf '%s\n' "$listed" | grep -qF "$want"; then
          READY="${TMPDIR:-/tmp}/mps-study-ready.json" WAITED=$waited PROJ="$want" python3 -c '
import json, os
d = json.load(open(os.environ["READY"]))
print(json.dumps({"ok": True, "tools": len(d.get("tools", [])),
                  "project": os.environ["PROJ"], "waitedSeconds": int(os.environ["WAITED"])}))'
          return 0
        fi
      elif [ -n "$(printf '%s\n' "$listed" | grep .)" ]; then
        READY="${TMPDIR:-/tmp}/mps-study-ready.json" WAITED=$waited LISTED="$listed" python3 -c '
import json, os
d = json.load(open(os.environ["READY"]))
print(json.dumps({"ok": True, "tools": len(d.get("tools", [])),
                  "projects": [p for p in os.environ["LISTED"].splitlines() if p],
                  "waitedSeconds": int(os.environ["WAITED"])}))'
        return 0
      fi
    fi
    sleep 5; waited=$((waited + 5))
  done
  die "MPS did not answer MCP with a loaded project within ${READY_WAIT}s"
}

case "${1:-}" in
  capture)  do_capture ;;
  open)     do_open "${2:-}" ;;
  shutdown) do_shutdown "${2:-}" ;;
  start)    do_start "${2:-}" ;;
  wait)     do_wait "${2:-}" ;;
  restart)
    [ -f "$CAPTURE" ] || do_capture >/dev/null
    do_shutdown "${2:-}" && do_start "${2:-}" && do_wait "${2:-}" ;;
  *) echo "usage: $(basename "$0") capture|open|shutdown|start|wait|restart [project-dir]" >&2; exit 2 ;;
esac
