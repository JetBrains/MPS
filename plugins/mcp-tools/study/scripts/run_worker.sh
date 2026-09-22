#!/usr/bin/env bash
# Run one headless worker for the skill-script automation study.
#
# usage: run_worker.sh <scenario> <model> <run-no> <project-dir>
#   scenario     S1..S10 or SMOKE (directory under study/scenarios/; SMOKE is the read-only harness check)
#   model        claude model alias, e.g. opus | sonnet
#   run-no       1, 2, ...
#   project-dir  absolute path of the scratch MPS project (must be open in MPS)
#
# Writes to $RUNS (default ~/MPSProjects/mcp-study/runs):
#   <id>.meta.json        start/end timestamps, exit code, prompt sha, call-log byte offsets
#   <id>-worker.jsonl     claude stream-json transcript
#   <id>-server.jsonl     slice of the server call log covering this run
#   <id>-install.json     result of the pre-run skill install
# where <id> = <scenario>-<model>-<run-no>.
#
# The meta also pins the MPS process the run was measured against (`mpsPid`, `mpsStartTs`) and the
# isolation level (one MPS per round), so a round proves process continuity from the evidence
# instead of arguing it in prose. `PROJECT_SYNTHESIZED=1` records that the project came from
# `new_study_project.py` rather than a fixture tarball. For a lifecycle scenario (S10) the meta
# lists `relatedProjects` — the `<project>-target` directory the worker creates — because the
# analyser filters the server call log by project and would otherwise discard the whole run.
#
# Before every run the LIVE bundled skill catalog and AGENTS.md/CLAUDE.md are installed into the
# project through `mps_mcp_initialize_project_for_agents` (scripts/install_skills.py). Fixtures
# deliberately ship without them, so a round can never measure a stale point-in-time catalog
# (study lesson 20 / defect D16). The resulting catalog fingerprint is recorded as `skillsSha256`
# in the meta, beside `promptSha256` (the scenario) and `inventorySha256` (the tool surface), so
# every run is retro-auditable against the docs it actually read. Set SKIP_SKILL_INSTALL=1 to skip
# it; the meta then records the sha of whatever was already there and `skillsInstalled: false`.
#
# Requires: claude CLI, python3, MPS running with the MCP server on $MPS_MCP_URL and the
# call log enabled (-Dmps.mcp.calllog=$CALLLOG). The worker prompt is passed verbatim.
set -euo pipefail

SCENARIO=${1:?scenario}; MODEL=${2:?model}; RUN=${3:?run-no}; PROJECT=${4:?project-dir}
STUDY=${STUDY:-"$(cd "$(dirname "$0")/.." && pwd)"}
RUNS=${RUNS:-"$HOME/MPSProjects/mcp-study/runs"}
CALLLOG=${CALLLOG:-"$RUNS/server-calllog.jsonl"}
MAX_TURNS=${MAX_TURNS:-400}
ISOLATION=${ISOLATION:-per-round}
PROJECT_SYNTHESIZED=${PROJECT_SYNTHESIZED:-0}
PROMPT="$STUDY/scenarios/$SCENARIO/worker_prompt.md"
ID="$SCENARIO-$MODEL-$RUN"

[ -f "$PROMPT" ] || { echo "no prompt: $PROMPT" >&2; exit 2; }
[ -d "$PROJECT" ] || { echo "no project dir: $PROJECT" >&2; exit 2; }
[ -e "$RUNS/$ID-worker.jsonl" ] && { echo "run id already exists: $ID — bump the run number" >&2; exit 2; }

# User-level MPS agents can delegate calls that are missing from the parent transcript. Prove the
# catalog is clean before installation, call-log offsets, metadata, or any other run side effect.
# This remains mandatory when skill installation is skipped.
python3 "$STUDY/scripts/check_user_agents.py" || exit 3

mkdir -p "$RUNS"

# Fresh skills BEFORE the call-log offsets are taken, so the install's own MCP calls stay out of
# the run's server slice. A failed install aborts the run: measuring an unknown doc surface is
# worse than not measuring at all.
if [ "${SKIP_SKILL_INSTALL:-0}" = "1" ]; then
  SKILLS_INSTALLED=false
  SKILLS_SHA=$(python3 "$STUDY/scripts/install_skills.py" --sha-only "$PROJECT")
  echo '{"ok":true,"skipped":true}' > "$RUNS/$ID-install.json"
else
  SKILLS_INSTALLED=true
  if ! python3 "$STUDY/scripts/install_skills.py" --project "$PROJECT" > "$RUNS/$ID-install.json"; then
    echo "skill install failed for $ID:" >&2; cat "$RUNS/$ID-install.json" >&2; exit 3
  fi
  SKILLS_SHA=$(python3 -c 'import json,sys;print(json.load(open(sys.argv[1]))["skillsSha256"])' "$RUNS/$ID-install.json")
fi

# The MPS process under measurement. A round is one process (ISOLATION=per-round); recording it
# per run is what makes that checkable afterwards.
MPS_PID=$(pgrep -f '[j]etbrains\.mps\.Launcher' | head -1 || true)
# Epoch, not `ps -o lstart=`: that prints a locale-dependent string ("út 22 zář …") that two runs
# of the same process cannot be compared on. `etime` ([[dd-]hh:]mm:ss) is locale-free and exists on
# both macOS and Linux (`etimes` is Linux-only), so derive the start epoch from it.
MPS_START=$( [ -n "$MPS_PID" ] && ps -p "$MPS_PID" -o etime= | python3 -c '
import re, sys, time
raw = sys.stdin.read().strip()
m = re.match(r"(?:(\d+)-)?(?:(\d+):)?(\d+):(\d+)$", raw)
print(int(time.time()) - (int(m[1] or 0)*86400 + int(m[2] or 0)*3600 + int(m[3])*60 + int(m[4])) if m else "")
' || true )
# A lifecycle scenario drives a second project; name it so the analyser keeps its server traffic.
case "$SCENARIO" in
  S10*) RELATED="$PROJECT-target" ;;
  *)    RELATED=${RELATED_PROJECTS:-} ;;
esac

touch "$CALLLOG"
START_TS=$(date -u +%Y-%m-%dT%H:%M:%SZ)
START_OFF=$(stat -f %z "$CALLLOG" 2>/dev/null || stat -c %s "$CALLLOG")
PROMPT_SHA=$(shasum -a 256 "$PROMPT" | cut -d' ' -f1)
INVENTORY_SHA=$( [ -f "$RUNS/inventory.json" ] && shasum -a 256 "$RUNS/inventory.json" | cut -d' ' -f1 || echo null )

python3 - "$RUNS/$ID.meta.json" <<PY
import json,sys
json.dump({"id":"$ID","scenario":"$SCENARIO","model":"$MODEL","run":$RUN,"project":"$PROJECT",
  "relatedProjects":[p for p in "$RELATED".split(":") if p],
  "promptSha256":"$PROMPT_SHA","inventorySha256":"$INVENTORY_SHA","skillsSha256":"$SKILLS_SHA",
  "skillsInstalled":json.loads("$SKILLS_INSTALLED"),"maxTurns":$MAX_TURNS,
  "isolationLevel":"$ISOLATION","projectSynthesized":"$PROJECT_SYNTHESIZED"=="1",
  "mpsPid":int("$MPS_PID") if "$MPS_PID" else None,"mpsStartEpoch":int("$MPS_START") if "$MPS_START" else None,
  "startTs":"$START_TS","callLogStartOffset":$START_OFF,"status":"running","pid":$$},
  open(sys.argv[1],"w"),indent=1)
PY

set +e
# Clean environment: the harness may itself run inside an agent session whose provider/proxy
# settings (ANTHROPIC_BASE_URL, CLAUDE_CODE_*) would otherwise leak into the worker.
( cd "$PROJECT" && env -i HOME="$HOME" PATH="$PATH" USER="${USER:-$(id -un)}" SHELL="${SHELL:-/bin/zsh}" \
    LANG="${LANG:-en_US.UTF-8}" TERM="${TERM:-xterm-256color}" TMPDIR="${TMPDIR:-/tmp}" \
    ${MPS_MCP_URL:+MPS_MCP_URL="$MPS_MCP_URL"} \
    claude -p "$(cat "$PROMPT")" --model "$MODEL" \
    --output-format stream-json --verbose --max-turns "$MAX_TURNS" \
    --permission-mode bypassPermissions \
    --mcp-config "$STUDY/mcp.study.json" --strict-mcp-config \
    < /dev/null > "$RUNS/$ID-worker.jsonl" 2> "$RUNS/$ID-worker.stderr" )
EXIT=$?
set -e

END_TS=$(date -u +%Y-%m-%dT%H:%M:%SZ)
END_OFF=$(stat -f %z "$CALLLOG" 2>/dev/null || stat -c %s "$CALLLOG")
if [ "$END_OFF" -gt "$START_OFF" ]; then
  tail -c +$((START_OFF + 1)) "$CALLLOG" | head -c $((END_OFF - START_OFF)) > "$RUNS/$ID-server.jsonl"
else
  : > "$RUNS/$ID-server.jsonl"
fi

python3 - "$RUNS/$ID.meta.json" <<PY
import json,sys
p=sys.argv[1]; m=json.load(open(p))
m.update({"endTs":"$END_TS","exitCode":$EXIT,"callLogEndOffset":$END_OFF,"status":"finished",
  "serverLines":sum(1 for l in open("$RUNS/$ID-server.jsonl") if l.strip()),
  "workerEvents":sum(1 for l in open("$RUNS/$ID-worker.jsonl") if l.strip()),
  "taskPass":None,"taskEvidence":None})
json.dump(m,open(p,"w"),indent=1)
print(json.dumps({k:m[k] for k in ("id","exitCode","serverLines","workerEvents","startTs","endTs")}))
PY
