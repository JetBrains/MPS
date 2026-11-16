#!/usr/bin/env python3
"""Root pins of the S39 fixtures (`prints/<copy>/roots.tsv`), recipe v2 (A20).

usage:
  roots.py pin   (--project DIR | --from-dir DIR) OUT.tsv [--url URL]
  roots.py check (--project DIR | --from-dir DIR) ROOTS.tsv [--except NAME ...] [--allow-missing NAME ...]
                 [--only NAME ...] [--deep-only] [--url URL]

One TSV row per root of the sandbox, constraints, editor, structure and tests@tests models:
model short name, root name, concept (short), node id, deep, text. A leading `#` line records the recipe,
the plugin revision and the MPS that printed it; readers skip `#` lines.

- deep = sha256[:16] of the stored-content projection of `mps_mcp_print_node {deep: true}`: per node its
  conceptReference, reference, the stored properties as sorted [name, value] pairs (a property printed with
  `isDefault: true`, i.e. an unset enum shown as its default literal, is left out), the references as sorted
  [role, targetReference] pairs, and the non-empty child roles sorted by role, children in stored order.
  Everything the printer derives from the language or from the open projects is dropped (names, docs,
  deprecation, types, cardinalities, `*ContainingProject` / `*EditableFromCurrentProject`, `declared`,
  `conceptLoaded`, problems, target names), so the hash does not depend on the renderer's metadata or on
  which other projects are open (A20 causes 1 and 2).
- text = sha256[:16] of `mps_mcp_print_node {format: "PLAIN TEXT", editorHints: []}` with trailing
  whitespace removed from every line and trailing blank lines removed. Leading whitespace is kept.

Property values are the printed (display) values. A language that is not loaded prints enum values raw
(`<id>/<name>`), so print after a MAKE (the pin procedure does; an evaluator prints after the worker's make).

`check` keys roots by (model, node id), prints one line per root (equal / deep-diff / text-diff / missing /
new) and a JSON summary. NAME arguments are root names resolved through the pinned rows. `--only` prints and
compares only the named pinned roots; `--deep-only` skips the PLAIN TEXT print and the text column.
Exit codes: 0 = no unexpected difference; 1 = a root outside `--except` differs, or a root outside
`--allow-missing` is missing (`new` roots never fail); 2 = the check could not run (MPS unreachable, a tool
error, bad arguments), reported as a JSON line with `"ok": false`.

MPS access is read-only: `mps_mcp_get_project_structure` and `mps_mcp_print_node`, plus
`mps_mcp_list_open_projects` for the `pin` header. The MCP client calls itself `mps-study-s39-roots`, so the
call-log analysis does not count these calls as evaluator calls. URL: `--url`, else `$MPS_MCP_URL` (an
evaluator sets it from the run meta, the observer from `mps_control.sh url`).

`--from-dir DIR` reads saved prints instead of MPS: `<root>.json` (the deep print's `data`) and `<root>.txt`
(the PLAIN TEXT `data`); model and id come from each JSON's `reference`. Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import datetime
import hashlib
import json
import os
import re
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
SCRIPTS = HERE.parents[2] / "scripts"
CHECKOUT = HERE.parents[5]
MODEL_ORDER = ["sandbox", "constraints", "editor", "structure", "tests@tests"]
RECIPE = "recipe v2"
CLIENT_NAME = "mps-study-s39-roots"


class PinError(Exception):
    pass


# ---------------------------------------------------------------- hashing

def sha16(text: str) -> str:
    return hashlib.sha256(text.encode("utf-8")).hexdigest()[:16]


def projection(node: dict) -> list:
    """The stored content of one printed node (see the module doc)."""
    props = sorted([p.get("name"), p.get("value", "")] for p in node.get("properties") or []
                   if not p.get("isDefault"))
    refs = sorted([r.get("role"), r.get("targetReference")] for r in node.get("references") or [])
    groups = []
    for role in node.get("children") or []:
        if role.get("childrenTruncated") or ("children" in role and "nodes" not in role):
            raise PinError(f"children of role {role.get('role')!r} under {node.get('reference')} are not inlined; "
                           "print with deep=true")
        kids = role.get("nodes") or []
        if kids:
            groups.append([role.get("role"), [projection(k) for k in kids]])
    groups.sort(key=lambda g: g[0])
    return [node.get("conceptReference"), node.get("reference"), props, refs, groups]


def deep_hash(data: dict) -> str:
    return sha16(json.dumps(projection(data), separators=(",", ":"), ensure_ascii=False))


def normalized_text(text: str) -> str:
    lines = [line.rstrip() for line in text.split("\n")]
    while lines and lines[-1] == "":
        lines.pop()
    return "\n".join(lines)


def text_hash(text: str) -> str:
    return sha16(normalized_text(text))


# ---------------------------------------------------------------- sources

def model_short(model_ref_or_name: str) -> str:
    m = re.match(r"r:[^(]*\(([^)]*)\)", model_ref_or_name)
    name = m.group(1) if m else model_ref_or_name
    return name.split(".")[-1]


def node_id(reference: str) -> str:
    return reference.rsplit("/", 1)[-1]


class Root:
    def __init__(self, model: str, name: str, concept: str, nid: str, deep: str, text: str):
        self.model, self.name, self.concept, self.id, self.deep, self.text = model, name, concept, nid, deep, text

    @property
    def key(self) -> tuple:
        return self.model, self.id

    def row(self) -> str:
        return "\t".join([self.model, self.name, self.concept, self.id, self.deep, self.text])


def _ordered(roots: list) -> list:
    rank = {m: i for i, m in enumerate(MODEL_ORDER)}
    return sorted(roots, key=lambda r: rank[r.model])  # stable: keeps the source order within a model


def roots_from_dir(directory: Path) -> list:
    roots = []
    for jf in sorted(directory.glob("*.json")):
        data = json.loads(jf.read_text(encoding="utf-8"))
        if not isinstance(data, dict) or "reference" not in data:
            continue
        model = model_short(data["reference"])
        if model not in MODEL_ORDER:
            continue
        tf = jf.with_suffix(".txt")
        if not tf.exists():
            raise PinError(f"{tf} is missing")
        roots.append(Root(model, data.get("name", jf.stem), data.get("concept", ""), node_id(data["reference"]),
                          deep_hash(data), text_hash(tf.read_text(encoding="utf-8"))))
    return _ordered(roots)


class Mps:
    def __init__(self, project: str, url: str | None):
        sys.path.insert(0, str(SCRIPTS))
        from tools_inventory import McpClient, env_url  # noqa: E402
        from mcp_call import resolve_envelope  # noqa: E402
        self.project = project
        self.resolve = resolve_envelope
        self.client = McpClient(url or env_url(), timeout=300)
        self.client.initialize(client_name=CLIENT_NAME)

    def call(self, tool: str, args: dict):
        result = self.client.call("tools/call", {"name": tool, "arguments": dict(args, projectPath=self.project)})
        texts = [c.get("text", "") for c in result.get("content", []) if c.get("type") == "text"]
        try:
            env = json.loads(self.resolve(texts[0] if texts else "{}"))
        except ValueError:
            raise PinError(f"{tool}: not a JSON envelope: {(texts[0] if texts else '')[:300]}")
        if not isinstance(env, dict):
            raise PinError(f"{tool}: not a JSON envelope: {str(env)[:300]}")
        if env.get("ok") is False:
            raise PinError(f"{tool} {args.get('nodeReference', '')}: {env.get('error')}")
        data = env.get("data")
        # A PLAIN TEXT above maxInlineBytes is a raw .txt path, which resolve_envelope leaves alone.
        if isinstance(data, str) and data.endswith(".txt") and os.path.isfile(data):
            data = Path(data).read_text(encoding="utf-8")
        return data

    def roots(self, only_ids=None, deep_only: bool = False) -> list:
        """Every root of the pinned models; with `only_ids` (a set of (model, id)) only those roots are printed
        and other roots are listed with empty hashes, and `deep_only` skips the PLAIN TEXT print."""
        st = self.call("mps_mcp_get_project_structure",
                       dict(includeModels=True, includeRootNodes=True, nodeDetail="names", maxInlineBytes=2000000))
        if not isinstance(st, dict) or not isinstance(st.get("modules"), list):
            raise PinError(f"unexpected project structure: {str(st)[:300]}")
        roots = []
        for module in st["modules"]:
            for md in module.get("models") or []:
                model = model_short(md["name"])
                if model not in MODEL_ORDER:
                    continue
                for r in md.get("rootNodes") or []:
                    ref = r["reference"]
                    nid = node_id(ref)
                    deep_h = text_h = ""
                    if only_ids is None or (model, nid) in only_ids:
                        deep = self.call("mps_mcp_print_node", dict(nodeReference=ref, deep=True, maxInlineBytes=2000000))
                        if not isinstance(deep, dict):
                            raise PinError(f"unexpected deep print of {ref}")
                        deep_h = deep_hash(deep)
                        if not deep_only:
                            text = self.call("mps_mcp_print_node", dict(nodeReference=ref, format="PLAIN TEXT",
                                                                        editorHints=[], maxInlineBytes=2000000))
                            if not isinstance(text, str):
                                raise PinError(f"unexpected PLAIN TEXT print of {ref}")
                            text_h = text_hash(text)
                    roots.append(Root(model, r["name"], r.get("concept", ""), nid, deep_h, text_h))
        return _ordered(roots)

    def header(self) -> str:
        info = self.call("mps_mcp_list_open_projects", {})
        opened = ",".join(sorted(p.get("name", "?") for p in info.get("projects", [])))
        return f"MPS {info.get('mpsBuild', '?')}; open projects {opened}"


def plugin_revision() -> str:
    def git(*args):
        try:
            return subprocess.run(["git", "-C", str(CHECKOUT), *args], capture_output=True, text=True).stdout.strip()
        except OSError:  # no git on this machine: the header says "?"
            return ""
    sha = git("rev-parse", "--short=12", "HEAD") or "?"
    dirty = "+dirty" if git("status", "--porcelain", "--", "plugins/mcp-tools/src") else ""
    classes = CHECKOUT / "plugins/mcp-tools/classes/jetbrains/mps/agents/mcp/tools"
    stamps = []
    for rel in ["common/AbstractOps.class", "common/CellPlainText.class", "JetBrainsMPSNodeMcpToolset.class"]:
        f = classes / rel
        if f.exists():
            stamps.append(f"{Path(rel).stem} {datetime.datetime.fromtimestamp(f.stat().st_mtime):%Y-%m-%dT%H:%M}")
    return f"plugin {sha}{dirty}; classes {', '.join(stamps) or 'n/a'}"


# ---------------------------------------------------------------- tsv

def read_tsv(path: Path) -> list:
    roots = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if not line.strip() or line.startswith("#"):
            continue
        f = line.split("\t")
        if len(f) != 6:
            raise PinError(f"{path}: not a 6-column row: {line!r}")
        roots.append(Root(*f))
    return roots


def compare(pinned: list, current: list, except_=(), allow_missing=(), only=(), deep_only=False) -> dict:
    known = {r.name for r in pinned}
    unknown = sorted((set(except_) | set(allow_missing) | set(only)) - known)
    if unknown:
        raise PinError(f"not pinned: {', '.join(unknown)}")
    cur = {r.key: r for r in current}
    lines, failures, counts = [], [], {}
    pinned_keys = set()
    for p in pinned:
        pinned_keys.add(p.key)
        if only and p.name not in only:
            continue
        c = cur.get(p.key)
        if c is None:
            status = "missing"
            failed = p.name not in allow_missing
        else:
            diffs = [] if c.deep == p.deep else ["deep"]
            if not deep_only and c.text != p.text:
                diffs.append("text")
            status = "equal" if not diffs else "-".join(diffs) + "-diff"
            failed = bool(diffs) and p.name not in except_
        counts[status] = counts.get(status, 0) + 1
        lines.append(f"{status}\t{p.model}\t{p.name}\t{p.id}" + ("\texcepted" if status not in ("equal", "missing") and p.name in except_ else "")
                     + ("\tallowed" if status == "missing" and p.name in allow_missing else ""))
        if failed:
            failures.append(f"{p.model}/{p.name}")
    if not only:
        for c in current:
            if c.key not in pinned_keys:
                counts["new"] = counts.get("new", 0) + 1
                lines.append(f"new\t{c.model}\t{c.name}\t{c.id}")
    return {"lines": lines, "counts": counts, "failures": failures, "ok": not failures}


# ---------------------------------------------------------------- cli

def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("mode", choices=["pin", "check"])
    src = ap.add_mutually_exclusive_group(required=True)
    src.add_argument("--project", help="MPS project base directory (the projectPath of every call)")
    src.add_argument("--from-dir", type=Path, help="saved <root>.json / <root>.txt prints instead of MPS")
    ap.add_argument("tsv", type=Path)
    ap.add_argument("--url", help="MCP endpoint (default: $MPS_MCP_URL)")
    ap.add_argument("--except", dest="except_", nargs="*", default=[], metavar="NAME")
    ap.add_argument("--allow-missing", nargs="*", default=[], metavar="NAME")
    ap.add_argument("--only", nargs="*", default=[], metavar="NAME")
    ap.add_argument("--deep-only", action="store_true")
    a = ap.parse_args(argv)
    try:
        if a.mode == "pin" and (a.except_ or a.allow_missing or a.only or a.deep_only):
            raise PinError("--except, --allow-missing, --only and --deep-only apply to check only")
        pinned = read_tsv(a.tsv) if a.mode == "check" else []
        if a.from_dir:
            current, origin = roots_from_dir(a.from_dir), f"from-dir {a.from_dir}"
        else:
            mps = Mps(a.project, a.url)
            only_ids = {r.key for r in pinned if r.name in a.only} if a.only else None
            current = mps.roots(only_ids, a.deep_only)
            origin = mps.header() if a.mode == "pin" else ""
        if a.mode == "pin":
            stamp = datetime.datetime.now().astimezone().isoformat(timespec="seconds")
            head = f"# {RECIPE}; pinned {stamp}; {plugin_revision()}; {origin}; {len(current)} roots"
            a.tsv.write_text(head + "\n" + "".join(r.row() + "\n" for r in current), encoding="utf-8")
            print(f"{len(current)} roots -> {a.tsv}")
            return 0
        result = compare(pinned, current, a.except_, a.allow_missing, a.only, a.deep_only)
    except PinError as e:
        print(json.dumps({"ok": False, "error": str(e)}))
        return 2
    except Exception as e:  # MPS unreachable, MCP protocol error, unreadable file: the check did not run
        print(json.dumps({"ok": False, "error": f"{type(e).__name__}: {e}"}))
        return 2
    print("\n".join(result["lines"]))
    print(json.dumps({"ok": result["ok"], "counts": result["counts"], "failures": result["failures"]}))
    return 0 if result["ok"] else 1


if __name__ == "__main__":
    sys.exit(main())
