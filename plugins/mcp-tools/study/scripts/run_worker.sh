#!/usr/bin/env bash
# Run one headless worker for the skill-script automation study.
#
# usage: run_worker.sh <scenario> <model> <run-no> <project-dir>
#   scenario     S1..S8 (directory under study/scenarios/)
#   model        claude model alias, e.g. opus | sonnet
#   run-no       1, 2, ...
#   project-dir  absolute path of the scratch MPS project (must be open in MPS)
#
# Writes to $RUNS (default ~/MPSProjects/mcp-study/runs):
#   <id>.meta.json        start/end timestamps, exit code, prompt sha, call-log byte offsets
#   <id>-worker.jsonl     claude stream-json transcript
#   <id>-server.jsonl     slice of the server call log covering this run
# where <id> = <scenario>-<model>-<run-no>.
#
# Requires: claude CLI, python3, MPS running with the MCP server on $MPS_MCP_URL and the
# call log enabled (-Dmps.mcp.calllog=$CALLLOG). The worker prompt is passed verbatim.
set -euo pipefail

SCENARIO=${1:?scenario}; MODEL=${2:?model}; RUN=${3:?run-no}; PROJECT=${4:?project-dir}
STUDY=${STUDY:-"$(cd "$(dirname "$0")/.." && pwd)"}
RUNS=${RUNS:-"$HOME/MPSProjects/mcp-study/runs"}
CALLLOG=${CALLLOG:-"$RUNS/server-calllog.jsonl"}
MAX_TURNS=${MAX_TURNS:-400}
PROMPT="$STUDY/scenarios/$SCENARIO/worker_prompt.md"
ID="$SCENARIO-$MODEL-$RUN"

[ -f "$PROMPT" ] || { echo "no prompt: $PROMPT" >&2; exit 2; }
[ -d "$PROJECT" ] || { echo "no project dir: $PROJECT" >&2; exit 2; }
mkdir -p "$RUNS"
[ -e "$RUNS/$ID-worker.jsonl" ] && { echo "run id already exists: $ID" >&2; exit 2; }

touch "$CALLLOG"
START_TS=$(date -u +%Y-%m-%dT%H:%M:%SZ)
START_OFF=$(stat -f %z "$CALLLOG" 2>/dev/null || stat -c %s "$CALLLOG")
PROMPT_SHA=$(shasum -a 256 "$PROMPT" | cut -d' ' -f1)
INVENTORY_SHA=$( [ -f "$RUNS/inventory.json" ] && shasum -a 256 "$RUNS/inventory.json" | cut -d' ' -f1 || echo null )

python3 - "$RUNS/$ID.meta.json" <<PY
import json,sys
json.dump({"id":"$ID","scenario":"$SCENARIO","model":"$MODEL","run":$RUN,"project":"$PROJECT",
  "promptSha256":"$PROMPT_SHA","inventorySha256":"$INVENTORY_SHA","maxTurns":$MAX_TURNS,
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
