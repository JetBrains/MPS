# Linux examples

Replace `PROJECT` with the absolute project directory. Replace `PID` with the running `jetbrains.mps.Launcher` pid.

## From sources — activate a running instance

```bash
PROJECT="/home/you/work/MPS/myMPS-fix"
# PID from: ps aux | grep -i '[j]etbrains.mps.Launcher'

# Prefer /proc over ps — arguments are NUL-separated, so spaces stay intact
tr '\0' '\n' < /proc/$PID/cmdline | head
JAVA=$(tr '\0' '\n' < /proc/$PID/cmdline | head -n1)
JCMD="$(dirname "$JAVA")/jcmd"
CWD=$(readlink /proc/$PID/cwd)   # typically $PROJECT/bin

"$JCMD" "$PID" VM.command_line > "$TMPDIR/mps-jcmd.txt"
```

Reconstruct (same joining/stripping as macOS). Use only the first token of `java_command` as the main class — `jcmd` reports `"<main-class> [args]"`, and a leftover project path is args, not part of the class name:

```bash
export PROJECT="/home/you/work/MPS/myMPS-fix"
export JAVA
python3 - <<'PY'
import os, subprocess
from pathlib import Path

text = Path(os.environ.get("TMPDIR", "/tmp"), "mps-jcmd.txt").read_text()
project = os.environ["PROJECT"]
java = os.environ["JAVA"]

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
# jcmd reports "<main-class> [args]"; leftover project path is args, not part of the class name
main_class = (java_command.split() or ["jetbrains.mps.Launcher"])[0]

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

cmd = [java, *filtered, "-classpath", classpath, main_class, project]
p = subprocess.run(cmd, cwd=project + "/bin", capture_output=True, text=True, timeout=90)
print(p.stdout)
print(p.stderr)
raise SystemExit(p.returncode)
PY
```

Expect exit `0` in a few seconds. Then call `mps_mcp_list_open_projects` with `projectPath="$PROJECT"`.

Cold start: IDEA run configuration `MPS` with Program arguments = `$PROJECT`, or the reconstructed command keeping jdwp / `idea_rt`.

If `jcmd` is missing, you can rebuild from `/proc/$PID/cmdline` (NUL-separated) plus `/proc/$PID/environ` for confirmation of `idea.paths.selector`. Still strip jdwp and `idea_rt` when activating.

## Standalone — activate or start

```bash
PROJECT="/home/you/work/myProject"

# From ps: /opt/mps/bin/mps.sh   or   ~/.local/share/JetBrains/Toolbox/apps/MPS/.../bin/mps.sh
MPS_SH="/opt/mps/bin/mps.sh"
"$MPS_SH" "$PROJECT"
```

The script execs `java` with `-Didea.paths.selector=MPS20xx.y` and `MAIN_CLASS=jetbrains.mps.Launcher`, then `"$@"`. A second invocation against the same install should activate and exit.

Toolbox: copy the exact `mps.sh` path from the running process; do not start a different version from `$PATH`.

Optional cold-start flag (not needed for activation):

```bash
"$MPS_SH" dontReopenProjects "$PROJECT"
```

## Sanity checks

```bash
tr '\0' '\n' < /proc/$PID/cmdline | grep idea.paths.selector
# from sources:  -Didea.paths.selector=MPSSRC2026.2
# standalone:    -Didea.paths.selector=MPS2024.3
```
