#!/usr/bin/env python3
"""Classify an MPS launch and build a standalone start/activate command.

From-sources MPS (IDEA run configuration ``MPS``, selector ``MPSSRC…``) keeps the
java reconstruction in ``mps_control.sh``. A standalone install (``.app``, ``mps.sh``)
must be started and activated through that install's launcher. Replaying its JVM
command starts a second IDE that does not own the MCP session.

  mps_launch.py annotate --capture FILE [--parent-bin PATH]
  mps_launch.py install --path PATH --out FILE
  mps_launch.py plan --capture FILE [--project DIR] --mode start|open
  mps_launch.py kind --capture FILE

``plan`` prints one JSON object: argv, env, and the vmoptions file used for a
standalone cold start. Study ``-D`` flags (call log, migration assistant, idea log)
are appended to a copy of the install's vmoptions and passed as ``MPS_VM_OPTIONS``
and ``IDEA_VM_OPTIONS``. Activation does not set those variables: the second
process must share the running instance's selector, and the flags are already on
the first process.
"""

from __future__ import annotations

import argparse
import json
import os
import sys
from pathlib import Path

STUDY_PREFIXES = (
    "-Dmps.mcp.calllog=",
    "-Dmps.migration.assistant.auto=",
    "-Didea.log.path=",
)
LAUNCHER_NAMES = {"mps", "mps.sh", "mps.bat", "mps64.exe"}


class BadInstall(Exception):
    """The path is not a standalone MPS install or launcher."""


def idea_home(vm_options: list[str]) -> str | None:
    prefix = "-Didea.home.path="
    for option in vm_options:
        if option.startswith(prefix):
            return option.split("=", 1)[1]
    return None


def selector_of(vm_options: list[str], recorded: str | None = None) -> str | None:
    if recorded:
        return recorded
    prefix = "-Didea.paths.selector="
    for option in vm_options:
        if option.startswith(prefix):
            return option.split("=", 1)[1]
    return None


def from_sources(selector: str | None) -> bool:
    return bool(selector) and "SRC" in selector


def launcher_candidates(idea_home_path: str | None, parent_bin: str | None = None) -> list[Path]:
    found: list[Path] = []
    if parent_bin:
        found.append(Path(parent_bin))
    if idea_home_path:
        home = Path(idea_home_path)
        found.extend([
            home / "MacOS" / "mps",
            home / "bin" / "mps.sh",
            home / "bin" / "mps.bat",
            home / "bin" / "mps64.exe",
            home.parent / "MacOS" / "mps",
        ])
    return found


def first_launcher(candidates: list[Path]) -> Path | None:
    for candidate in candidates:
        if candidate.is_file() and candidate.name in LAUNCHER_NAMES:
            return candidate
    return None


def kind_of(selector: str | None, launcher: Path | None) -> str:
    if from_sources(selector):
        return "sources"
    if launcher is not None:
        return "standalone"
    if selector and selector.startswith("MPS"):
        return "standalone"
    return "sources"


def install_root(launcher: Path) -> Path:
    """The path ``new_study_project.py --mps-home`` accepts: a .app or an install root."""
    if launcher.name == "mps" and launcher.parent.name == "MacOS":
        return launcher.parents[2]
    if launcher.parent.name == "bin":
        return launcher.parents[1]
    return launcher.parent


def find_vmoptions(install: Path) -> Path | None:
    roots = [install, install / "Contents"]
    relative = ("bin", "bin/mac", "bin/linux", "bin/win")
    names = ("mps.vmoptions", "mps64.vmoptions")
    for root in roots:
        for rel in relative:
            for name in names:
                candidate = root / rel / name
                if candidate.is_file():
                    return candidate
    return None


def resolve_install(path: Path) -> dict:
    path = path.expanduser().resolve()
    launcher: Path | None = None
    if path.is_file() and path.name in LAUNCHER_NAMES:
        launcher = path
    elif (path / "Contents" / "MacOS" / "mps").is_file():
        launcher = path / "Contents" / "MacOS" / "mps"
    elif (path / "MacOS" / "mps").is_file():
        launcher = path / "MacOS" / "mps"
    else:
        for name in ("mps.sh", "mps.bat", "mps64.exe"):
            candidate = path / "bin" / name
            if candidate.is_file():
                launcher = candidate
                break
    if launcher is None:
        raise BadInstall(
            f"{path} is not a standalone MPS (.app, install root with bin/mps.sh, or the launcher itself)")
    install = install_root(launcher)
    return {
        "kind": "standalone",
        "launcher": str(launcher),
        "install": str(install),
        "vmoptions": str(vm) if (vm := find_vmoptions(install)) else None,
    }


def annotate(capture: dict, parent_bin: str | None = None) -> dict:
    options = list(capture.get("vmOptions") or [])
    selector = selector_of(options, capture.get("selector"))
    launcher = None if from_sources(selector) else first_launcher(
        launcher_candidates(idea_home(options), parent_bin))
    kind = kind_of(selector, launcher)
    capture["kind"] = kind
    capture["selector"] = selector
    if kind == "standalone" and launcher is not None:
        capture["launcher"] = str(launcher)
        capture["install"] = str(install_root(launcher))
        vm = find_vmoptions(Path(capture["install"]))
        capture["vmoptions"] = str(vm) if vm else capture.get("vmoptions")
    else:
        capture.pop("launcher", None)
        capture.pop("install", None)
        if kind == "sources":
            capture.pop("vmoptions", None)
    return capture


def study_options(capture: dict, assistant_auto: str = "false") -> list[str]:
    chosen: list[str] = []
    seen: set[str] = set()
    for option in capture.get("vmOptions") or []:
        if any(option.startswith(prefix) for prefix in STUDY_PREFIXES):
            key = option.split("=", 1)[0]
            if key not in seen:
                chosen.append(option)
                seen.add(key)
    if "-Dmps.migration.assistant.auto" not in seen:
        chosen.append("-Dmps.migration.assistant.auto=" + (assistant_auto or "false"))
    return chosen


def compose_vmoptions(default_text: str, extras: list[str]) -> str:
    overridden = {option.split("=", 1)[0] for option in extras}
    kept = []
    for line in default_text.splitlines():
        stripped = line.strip()
        key = stripped.split("=", 1)[0] if stripped.startswith("-D") else None
        if key and key in overridden:
            continue
        kept.append(line)
    body = "\n".join(kept).rstrip()
    extra = "\n".join(extras)
    if body and extra:
        return body + "\n" + extra + "\n"
    return (body or extra) + ("\n" if body or extra else "")


def write_vmoptions(capture: dict, dest: Path, assistant_auto: str = "false") -> Path | None:
    extras = study_options(capture, assistant_auto)
    if not extras:
        return None
    default = ""
    source = capture.get("vmoptions")
    if source and Path(source).is_file():
        default = Path(source).read_text(encoding="utf-8", errors="replace")
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_text(compose_vmoptions(default, extras), encoding="utf-8")
    return dest


def plan(capture: dict, project: str | None, mode: str, assistant_auto: str = "false",
         vmoptions_dest: Path | None = None) -> dict:
    kind = capture.get("kind") or "sources"
    if kind != "standalone":
        return {"ok": True, "kind": "sources", "argv": None, "env": {}, "vmoptions": None,
                "project": project or None}
    launcher = capture.get("launcher")
    if not launcher:
        return {"ok": False, "kind": "standalone", "error":
                "standalone capture has no launcher — set MPS_INSTALL and run 'install'"}
    argv = [launcher]
    if project:
        argv.append(os.path.abspath(os.path.expanduser(project)))
    env: dict[str, str] = {}
    vmoptions = None
    if mode == "start":
        dest = vmoptions_dest or Path(os.environ.get("TMPDIR") or "/tmp") / "mps-study.vmoptions"
        written = write_vmoptions(capture, dest, assistant_auto)
        if written is not None:
            vmoptions = str(written)
            env["MPS_VM_OPTIONS"] = vmoptions
            env["IDEA_VM_OPTIONS"] = vmoptions
    return {"ok": True, "kind": "standalone", "argv": argv, "env": env,
            "vmoptions": vmoptions, "project": project or None, "launcher": launcher}


def _load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def _dump(path: Path, data: dict) -> None:
    path.write_text(json.dumps(data, indent=1) + "\n", encoding="utf-8")


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(prog="mps_launch.py")
    sub = parser.add_subparsers(dest="cmd", required=True)

    ann = sub.add_parser("annotate")
    ann.add_argument("--capture", required=True)
    ann.add_argument("--parent-bin")

    inst = sub.add_parser("install")
    inst.add_argument("--path", required=True)
    inst.add_argument("--out", required=True)

    planned = sub.add_parser("plan")
    planned.add_argument("--capture", required=True)
    planned.add_argument("--project")
    planned.add_argument("--mode", required=True, choices=("start", "open"))
    planned.add_argument("--assistant-auto", default="false")
    planned.add_argument("--vmoptions-dest")

    kind = sub.add_parser("kind")
    kind.add_argument("--capture", required=True)

    args = parser.parse_args(argv)
    try:
        if args.cmd == "annotate":
            path = Path(args.capture)
            data = annotate(_load(path), args.parent_bin)
            _dump(path, data)
            print(json.dumps({"ok": True, "kind": data["kind"], "selector": data.get("selector"),
                              "launcher": data.get("launcher"), "install": data.get("install")}))
            return 0
        if args.cmd == "install":
            data = resolve_install(Path(args.path))
            data["vmOptions"] = []
            data["mainClass"] = "jetbrains.mps.Launcher"
            _dump(Path(args.out), data)
            print(json.dumps({"ok": True, **data}))
            return 0
        if args.cmd == "plan":
            dest = Path(args.vmoptions_dest) if args.vmoptions_dest else None
            result = plan(_load(Path(args.capture)), args.project, args.mode,
                          args.assistant_auto, dest)
            print(json.dumps(result))
            return 0 if result.get("ok") else 3
        if args.cmd == "kind":
            print(_load(Path(args.capture)).get("kind") or "sources")
            return 0
    except BadInstall as bad:
        print(json.dumps({"ok": False, "error": str(bad)}))
        return 3
    return 2


if __name__ == "__main__":
    sys.exit(main())
