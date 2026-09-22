# macOS examples

Replace `PROJECT` with the absolute project directory (the folder MPS should open). Replace `PID` with the running `jetbrains.mps.Launcher` pid.

## From sources — activate a running instance

```bash
PROJECT="/Users/you/work/MPS/myMPS-fix"
# PID from: ps aux | grep -i '[j]etbrains.mps.Launcher'

# java binary of the running JVM (first token of its command line)
JAVA=$(ps -ww -p "$PID" -o args= | awk '{print $1}')
JCMD="$(dirname "$JAVA")/jcmd"

"$JCMD" "$PID" VM.command_line > "$TMPDIR/mps-jcmd.txt"
CWD=$(lsof -a -p "$PID" -d cwd | awk 'END{print $NF}')
# CWD is typically $PROJECT/bin
```

Reconstruct and launch. Export `PROJECT` and `JAVA` (the process java from above), cwd is `<checkout>/bin`. Rejoin tokens that do not start with `-` so `IntelliJ IDEA.app` stays one path; strip jdwp and `idea_rt.jar`.

```bash
export PROJECT="/Users/you/work/MPS/myMPS-fix"
export JAVA
export CWD

python3 - <<'PY'
import os, subprocess, time
from pathlib import Path

text = Path(os.environ.get("TMPDIR", "/tmp"), "mps-jcmd.txt").read_text()
project = os.environ["PROJECT"]
java = os.environ.get("JAVA") or "/usr/bin/java"
cwd = os.environ.get("CWD") or (project + "/bin")

def field(name, end_keys):
    key = name + ": "
    i = text.find(key)
    rest = text[i + len(key):]
    for nxt in end_keys:
        j = rest.find(nxt)
        if j >= 0:
            rest = rest[:j]
            break
    return rest.strip()

jvm_args = field("jvm_args", ["\njava_command:"])
classpath = field("java_class_path (initial)", ["\nLauncher Type:"])
java_command = field("java_command", ["\njava_class_path", "\nLauncher Type:"])

raw = jvm_args.split()
tokens = []
for t in raw:
    if t.startswith("-") or not tokens:
        tokens.append(t)
    else:
        tokens[-1] += " " + t

filtered = [t for t in tokens
            if not t.startswith("-agentlib:jdwp")
            and not (t.startswith("-javaagent:") and "idea_rt.jar" in t)]

cmd = [java, *filtered, "-classpath", classpath, java_command, project]
p = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True, timeout=90)
print("exit", p.returncode, "seconds-not-printed")
print(p.stdout)
print(p.stderr)
raise SystemExit(p.returncode)
PY
```

Expect exit `0` in a few seconds. Then:

```bash
# MCP: mps_mcp_list_open_projects with projectPath="$PROJECT"
```

Cold start from sources (nothing running): put `$PROJECT` in the IDEA run configuration **Program arguments**, working directory `$PROJECT/bin`, or run the same reconstructed command **keeping** jdwp / `idea_rt`.

## Standalone — activate or start

Find the `.app` from `ps` (do not guess Toolbox vs `/Applications`):

```bash
PROJECT="/Users/you/work/myProject"
# Native launcher:
#   /Users/you/Applications/MPS.app/Contents/MacOS/mps
# or /Applications/MPS 2024.3.app/Contents/MacOS/mps

APP="/Applications/MPS 2024.3.app"
"$APP/Contents/MacOS/mps" "$PROJECT"
# If MPS was already running with this app's selector, this process should exit.

# Apple Events alternative (same .app, not a generic name):
open -a "$APP" "$PROJECT"
```

If `ps` shows `java` under `…/MPS.app/Contents/jbr/…` rather than `MacOS/mps`, still launch `$APP/Contents/MacOS/mps "$PROJECT"` so `DirectoryLock` hits that install.

Toolbox: use the exact `Contents/MacOS/mps` from the running process. `open -a MPS` may pick another version.

## Sanity checks

```bash
ps -ww -p "$PID" -o args= | tr ' ' '\n' | grep idea.paths.selector
# from sources:  -Didea.paths.selector=MPSSRC2026.1
# standalone:    -Didea.paths.selector=MPS2024.3
```
