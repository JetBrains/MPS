#!/usr/bin/env bash
# Run one headless worker for the skill-script automation study.
#
# usage: run_worker.sh <scenario> <model> <run-no> <project-dir>
#   scenario     S1..S10 or SMOKE (directory under study/scenarios/; SMOKE is the read-only harness check)
#   model        worker model id for the observer harness (claude alias or Junie CLI id)
#   run-no       1, 2, ...
#   project-dir  absolute path of the scratch MPS project (must be open in MPS)
#
# Writes to $RUNS (default ~/MPSProjects/mcp-study/runs):
#   <id>.meta.json              start/end timestamps, exit code, prompt sha, call-log byte offsets
#   <id>-worker.jsonl           claude stream-json transcript (Junie: filled after normalize)
#   <id>-worker.native.jsonl    Junie --json-output-file capture
#   <id>-worker.stdout          Junie stdout sidecar (startup banner; not JSON)
#   <id>-server.jsonl           slice of the server call log covering this run
#   <id>-install.json           result of the pre-run skill install
#   <id>-mcp/mcp.json           the worker's MCP config, generated from $MPS_MCP_URL (unless MCP_CONFIG)
# where <id> = <scenario>-<modelSlug>-<run-no>.
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
# and the guide files' fingerprint as `guidesSha256` in the meta, beside `promptSha256` (the
# scenario) and `inventorySha256` (the tool surface), so every run is retro-auditable against the
# docs it actually read. Set SKIP_SKILL_INSTALL=1 to skip it; the meta then records the shas of
# whatever was already there and `skillsInstalled: false`.
#
# EFFORT (optional) pins the worker's effort level and is passed as `--effort`. Claude accepts
# low|medium|high|xhigh|max, Junie low|medium|high. It is recorded as `effort` in the meta. Unset
# prints a warning on stderr and means unpinned: the worker then takes whatever its CLI's saved settings say (for Claude, the
# `/effort` the observer last chose for that model), which silently varies between rounds.
#
# The MCP URL (study defect A3): a non-empty MPS_MCP_URL is used as given and must answer the MCP
# handshake; otherwise it is detected from the live MPS (scripts/mps_mcp_url.py: the launcher's
# listening ports, confirmed on serverInfo.name) and must be CONFIRMED — an unconfirmed guess
# (the selector's mcpServer.xml, or the 64343 default) exits 3. It is exported BEFORE
# install_skills.py and recorded as `mpsMcpUrl` / `mpsMcpUrlSource`. The worker's config
# is generated into $RUNS/<id>-mcp/ (scripts/worker_mcp_config.py) — no tracked config pins a port.
# MCP_CONFIG (optional) replaces it: a FILE for Claude, a DIRECTORY holding mcp.json for Junie; the
# meta records `mcpConfigSource` (env|generated) and `mcpConfigPath`.
#
# Requires: the observer harness CLI (`claude` or `junie`), python3, MPS running with the MCP
# server enabled and the call log enabled (-Dmps.mcp.calllog=$CALLLOG). The worker prompt
# is passed verbatim. WORKER_HARNESS (claude|junie) overrides auto-detect; default is claude when
# neither observer env is set, so `run_worker.sh SMOKE sonnet N` still works.
set -euo pipefail

SCENARIO=${1:?scenario}; MODEL=${2:?model}; RUN=${3:?run-no}; PROJECT=${4:?project-dir}
STUDY=${STUDY:-"$(cd "$(dirname "$0")/.." && pwd)"}
RUNS=${RUNS:-"$HOME/MPSProjects/mcp-study/runs"}
CALLLOG=${CALLLOG:-"$RUNS/server-calllog.jsonl"}
MAX_TURNS=${MAX_TURNS:-400}
ISOLATION=${ISOLATION:-per-round}
PROJECT_SYNTHESIZED=${PROJECT_SYNTHESIZED:-0}
EFFORT=${EFFORT:-}
MCP_CONFIG=${MCP_CONFIG:-}
PROMPT="$STUDY/scenarios/$SCENARIO/worker_prompt.md"
# Same character class as the plan: anything other than [A-Za-z0-9._-] becomes '-'.
MODEL_SLUG=$(printf '%s' "$MODEL" | python3 -c 'import re,sys; print(re.sub(r"[^A-Za-z0-9._-]", "-", sys.stdin.read().rstrip("\n")))')
ID="$SCENARIO-$MODEL_SLUG-$RUN"

# Same rules as list_worker_models.py. Observer JUNIE_* / CLAUDE_CODE_* are still visible here
# (this is the parent script, before env -i).
resolve_worker_harness() {
  local override="${WORKER_HARNESS:-}"
  if [ -n "$override" ]; then
    case "$override" in
      claude|junie) printf '%s\n' "$override"; return 0 ;;
      *) echo "unknown harness: $override (expected claude or junie)" >&2; return 2 ;;
    esac
  fi
  local junie=0 claude=0
  if [ -n "${JUNIE_TMPDIR:-}" ] || [ -n "${JUNIE_DATA:-}" ]; then
    junie=1
  fi
  if [ -n "${CLAUDE_CODE:-}" ] || [ -n "${CLAUDE_CODE_ENTRYPOINT:-}" ]; then
    claude=1
  fi
  if [ "$junie" -eq 1 ] && [ "$claude" -eq 1 ]; then
    echo "both Junie and Claude observer env vars are set; pass --harness or set WORKER_HARNESS" >&2
    return 2
  fi
  if [ "$junie" -eq 1 ]; then
    printf '%s\n' junie
  else
    printf '%s\n' claude
  fi
}

[ -f "$PROMPT" ] || { echo "no prompt: $PROMPT" >&2; exit 2; }
[ -d "$PROJECT" ] || { echo "no project dir: $PROJECT" >&2; exit 2; }
if [ -e "$RUNS/$ID.meta.json" ] || [ -e "$RUNS/$ID-worker.jsonl" ] || [ -e "$RUNS/$ID-worker.native.jsonl" ]; then
  echo "run id already exists: $ID — bump the run number" >&2
  exit 2
fi

# User-level MPS agents can delegate calls that are missing from the parent transcript. Prove the
# catalog is clean before installation, call-log offsets, metadata, or any other run side effect.
# This remains mandatory when skill installation is skipped.
python3 "$STUDY/scripts/check_user_agents.py" || exit 3

HARNESS=$(resolve_worker_harness) || exit 2
if [ "$HARNESS" = junie ]; then
  command -v junie >/dev/null || { echo "junie CLI not on PATH" >&2; exit 2; }
else
  command -v claude >/dev/null || { echo "claude CLI not on PATH" >&2; exit 2; }
fi

if [ -n "$EFFORT" ]; then
  case "$HARNESS:$EFFORT" in
    claude:low|claude:medium|claude:high|claude:xhigh|claude:max|junie:low|junie:medium|junie:high) ;;
    *) echo "EFFORT=$EFFORT is not a $HARNESS effort level" >&2; exit 2 ;;
  esac
  EFFORT_ARGS=(--effort "$EFFORT")
else
  echo "EFFORT unset: worker $MODEL inherits the effort from its CLI settings (not pinned)" >&2
  EFFORT_ARGS=()
fi

if [ -n "$MCP_CONFIG" ]; then
  if [ "$HARNESS" = junie ]; then
    [ -d "$MCP_CONFIG" ] || { echo "MCP_CONFIG must be a directory for Junie: $MCP_CONFIG" >&2; exit 2; }
    MCP_CONFIG=$(cd "$MCP_CONFIG" && pwd)
  else
    [ -f "$MCP_CONFIG" ] || { echo "MCP_CONFIG must be a file for Claude: $MCP_CONFIG" >&2; exit 2; }
    MCP_CONFIG="$(cd "$(dirname "$MCP_CONFIG")" && pwd)/$(basename "$MCP_CONFIG")"
  fi
fi   # absolute: the worker runs with the project as its cwd

# One MCP URL for the install, the handshake, the worker config and the meta. Exported before
# install_skills.py, which otherwise falls back to the constant. A detected URL must be confirmed
# (the server answered as MPS); a run against a guessed port would measure nothing.
DETECTED_PID=""
if [ -n "${MPS_MCP_URL:-}" ]; then
  MPS_MCP_URL_SOURCE=env
  if ! python3 "$STUDY/scripts/tools_inventory.py" --url "$MPS_MCP_URL" --out /dev/null >/dev/null; then
    echo "MPS MCP does not answer the handshake at MPS_MCP_URL=$MPS_MCP_URL — start MPS with the" \
      "MCP server enabled, or fix MPS_MCP_URL (see: $STUDY/scripts/mps_control.sh url --json)" >&2
    exit 3
  fi
else
  DETECTED=$(python3 "$STUDY/scripts/mps_mcp_url.py" --json) ||
    { echo "MPS is not running: no MCP URL to detect" >&2; exit 3; }
  read -r MPS_MCP_URL MPS_MCP_URL_SOURCE URL_CONFIRMED DETECTED_PID <<< "$(printf '%s' "$DETECTED" | python3 -c '
import json, sys
d = json.load(sys.stdin)
print(d.get("url") or "-", d.get("source") or "unknown", "true" if d.get("confirmed") else "false",
      d.get("pid") or "")')"
  if [ "$URL_CONFIRMED" != true ]; then
    echo "MPS MCP not confirmed at $MPS_MCP_URL (source $MPS_MCP_URL_SOURCE); run" \
      "$STUDY/scripts/mps_control.sh wait, or set MPS_MCP_URL" >&2
    exit 3
  fi
fi
export MPS_MCP_URL

mkdir -p "$RUNS"

if [ -n "$MCP_CONFIG" ]; then
  MCP_CONFIG_SOURCE=env
  MCP_CONFIG_PATH=$MCP_CONFIG
else
  MCP_CONFIG_SOURCE=generated
  MCP_CONFIG_PATH=$(python3 "$STUDY/scripts/worker_mcp_config.py" --harness "$HARNESS" \
    --url "$MPS_MCP_URL" --out-dir "$RUNS/$ID-mcp")
fi

# Fresh skills BEFORE the call-log offsets are taken, so the install's own MCP calls stay out of
# the run's server slice. A failed install aborts the run: measuring an unknown doc surface is
# worse than not measuring at all.
if [ "${SKIP_SKILL_INSTALL:-0}" = "1" ]; then
  SKILLS_INSTALLED=false
  SKILLS_SHA=$(python3 "$STUDY/scripts/install_skills.py" --sha-only "$PROJECT")
  GUIDES_SHA=$(python3 "$STUDY/scripts/install_skills.py" --guides-sha-only "$PROJECT")
  echo '{"ok":true,"skipped":true}' > "$RUNS/$ID-install.json"
else
  SKILLS_INSTALLED=true
  if ! python3 "$STUDY/scripts/install_skills.py" --project "$PROJECT" > "$RUNS/$ID-install.json"; then
    echo "skill install failed for $ID:" >&2; cat "$RUNS/$ID-install.json" >&2; exit 3
  fi
  SKILLS_SHA=$(python3 -c 'import json,sys;print(json.load(open(sys.argv[1]))["skillsSha256"])' "$RUNS/$ID-install.json")
  GUIDES_SHA=$(python3 -c 'import json,sys;print(json.load(open(sys.argv[1]))["guidesSha256"])' "$RUNS/$ID-install.json")
fi

# The MPS process under measurement. A round is one process (ISOLATION=per-round); recording it
# per run is what makes that checkable afterwards. A detected URL names the launcher that answered
# (with several launchers, e.g. a lingering activation process, pgrep's first is not necessarily
# it); a user-set MPS_MCP_URL does not, so that branch keeps the first pgrep match.
if [ -n "$DETECTED_PID" ]; then
  MPS_PID=$DETECTED_PID
else
  MPS_PID=$(pgrep -f '[j]etbrains\.mps\.Launcher' | head -1 || true)
fi
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
json.dump({"id":"$ID","scenario":"$SCENARIO","model":"$MODEL","modelSlug":"$MODEL_SLUG",
  "harness":"$HARNESS","effort":"$EFFORT" or None,"run":$RUN,"project":"$PROJECT",
  "relatedProjects":[p for p in "$RELATED".split(":") if p],
  "promptSha256":"$PROMPT_SHA","inventorySha256":"$INVENTORY_SHA","skillsSha256":"$SKILLS_SHA","guidesSha256":"$GUIDES_SHA",
  "skillsInstalled":json.loads("$SKILLS_INSTALLED"),"maxTurns":$MAX_TURNS,
  "isolationLevel":"$ISOLATION","projectSynthesized":"$PROJECT_SYNTHESIZED"=="1",
  "mpsPid":int("$MPS_PID") if "$MPS_PID" else None,"mpsStartEpoch":int("$MPS_START") if "$MPS_START" else None,
  "mpsMcpUrl":"$MPS_MCP_URL","mpsMcpUrlSource":"$MPS_MCP_URL_SOURCE","mcpConfigSource":"$MCP_CONFIG_SOURCE","mcpConfigPath":"$MCP_CONFIG_PATH",
  "startTs":"$START_TS","callLogStartOffset":$START_OFF,"status":"running","pid":$$},
  open(sys.argv[1],"w"),indent=1)
PY

set +e
# Clean environment: the harness may itself run inside an agent session whose provider/proxy
# settings (ANTHROPIC_BASE_URL, CLAUDE_CODE_*, JUNIE_TMPDIR, JUNIE_DATA) would otherwise leak
# into the worker. env -i lists the allowlist; do not pass observer JUNIE_TMPDIR / JUNIE_DATA.
WORKER_ENV=(env -i HOME="$HOME" PATH="$PATH" USER="${USER:-$(id -un)}" SHELL="${SHELL:-/bin/zsh}" \
  LANG="${LANG:-en_US.UTF-8}" TERM="${TERM:-xterm-256color}" TMPDIR="${TMPDIR:-/tmp}" \
  MPS_MCP_URL="$MPS_MCP_URL")
if [ "$HARNESS" = junie ]; then
  ( cd "$PROJECT" && "${WORKER_ENV[@]}" \
      junie --task "$(cat "$PROMPT")" --model "$MODEL" ${EFFORT_ARGS[@]+"${EFFORT_ARGS[@]}"} \
      -p "$PROJECT" \
      --output-format json-stream --json-output-file "$RUNS/$ID-worker.native.jsonl" \
      --skip-update-check \
      --mcp-default-locations=false --mcp-location "$MCP_CONFIG_PATH" \
      < /dev/null > "$RUNS/$ID-worker.stdout" 2> "$RUNS/$ID-worker.stderr" )
else
  ( cd "$PROJECT" && "${WORKER_ENV[@]}" \
      claude -p "$(cat "$PROMPT")" --model "$MODEL" ${EFFORT_ARGS[@]+"${EFFORT_ARGS[@]}"} \
      --output-format stream-json --verbose --max-turns "$MAX_TURNS" \
      --permission-mode bypassPermissions \
      --mcp-config "$MCP_CONFIG_PATH" --strict-mcp-config \
      < /dev/null > "$RUNS/$ID-worker.jsonl" 2> "$RUNS/$ID-worker.stderr" )
fi
EXIT=$?
set -e

if [ "$HARNESS" = junie ]; then
  if [ -f "$RUNS/$ID-worker.native.jsonl" ]; then
    python3 "$STUDY/scripts/normalize_transcript.py" \
      "$RUNS/$ID-worker.native.jsonl" "$RUNS/$ID-worker.jsonl"
  else
    : > "$RUNS/$ID-worker.jsonl"
  fi
fi

END_TS=$(date -u +%Y-%m-%dT%H:%M:%SZ)
END_OFF=$(stat -f %z "$CALLLOG" 2>/dev/null || stat -c %s "$CALLLOG")
if [ "$END_OFF" -gt "$START_OFF" ]; then
  tail -c +$((START_OFF + 1)) "$CALLLOG" | head -c $((END_OFF - START_OFF)) > "$RUNS/$ID-server.jsonl"
else
  : > "$RUNS/$ID-server.jsonl"
fi

python3 - "$RUNS/$ID.meta.json" <<PY
import json,os,sys
p=sys.argv[1]; m=json.load(open(p))
worker="$RUNS/$ID-worker.jsonl"
native="$RUNS/$ID-worker.native.jsonl"
events_path = worker if os.path.exists(worker) else native
events = sum(1 for l in open(events_path) if l.strip()) if os.path.exists(events_path) else 0
m.update({"endTs":"$END_TS","exitCode":$EXIT,"callLogEndOffset":$END_OFF,"status":"finished",
  "serverLines":sum(1 for l in open("$RUNS/$ID-server.jsonl") if l.strip()),
  "workerEvents":events,
  "taskPass":None,"taskEvidence":None})
json.dump(m,open(p,"w"),indent=1)
print(json.dumps({k:m[k] for k in ("id","exitCode","serverLines","workerEvents","startTs","endTs")}))
PY
