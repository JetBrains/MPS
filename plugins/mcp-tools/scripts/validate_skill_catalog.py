#!/usr/bin/env python3
"""Validate locality invariants of the bundled MPS skill catalog."""

from __future__ import annotations

import argparse
import re
import tempfile
from pathlib import Path


COPIED_REFERENCE = Path("references/aspect-model-stereotypes.md")
CANONICAL_SKILL = "mps-mcp-workflow"
COPY_CONSUMERS = (
  "mps-aspect-accessories",
  "mps-aspect-actions",
  "mps-aspect-behavior",
  "mps-aspect-constraints",
  "mps-aspect-dataflow",
  "mps-aspect-editor",
  "mps-aspect-editor-menus-and-keymaps",
  "mps-aspect-generation-plan",
  "mps-aspect-generator",
  "mps-aspect-intentions",
  "mps-aspect-migrations",
  "mps-aspect-textgen",
  "mps-aspect-typesystem",
  "mps-language-aspects-overview",
  "mps-tests",
)
MARKDOWN_LINK = re.compile(r"\[[^\]]*]\(([^)]+)\)")
BACKTICK = re.compile(r"`([^`\n]+)`")
CROSS_SKILL_PATH = re.compile(
  r"(?:^|/)(mps-[a-z0-9-]+)/(?:SKILL\.md|references/[^\s`]+\.md)$"
)
PLAIN_CROSS_SKILL_PATH = re.compile(
  r"(?<![A-Za-z0-9_.-])(mps-[a-z0-9-]+/(?:SKILL\.md|references/[A-Za-z0-9_.-]+\.md))"
)
LOAD_CONTRACT = "same host-assigned originating server"


def is_within(path: Path, directory: Path) -> bool:
  try:
    path.relative_to(directory)
    return True
  except ValueError:
    return False


def validate_catalog(
  root: Path,
  canonical_skill: str = CANONICAL_SKILL,
  copy_consumers: tuple[str, ...] = COPY_CONSUMERS,
) -> list[str]:
  root = root.resolve()
  errors: list[str] = []

  for skill_root in sorted(path for path in root.iterdir() if path.is_dir()):
    entrypoint = skill_root / "SKILL.md"
    if not entrypoint.is_file():
      errors.append(f"{skill_root.name}: missing SKILL.md")
      continue
    if LOAD_CONTRACT not in entrypoint.read_text(encoding="utf-8"):
      errors.append(f"{skill_root.name}/SKILL.md: missing companion origin contract")

    for document in sorted(skill_root.rglob("*.md")):
      text = document.read_text(encoding="utf-8")
      relative_document = document.relative_to(root)

      for match in PLAIN_CROSS_SKILL_PATH.finditer(text):
        errors.append(f"{relative_document}: cross-skill pseudo-path: {match.group(1)}")

      for match in MARKDOWN_LINK.finditer(text):
        target = match.group(1).split("#", 1)[0].split("?", 1)[0]
        if not target or re.match(r"^[A-Za-z][A-Za-z0-9+.-]*:", target):
          continue
        resolved = (document.parent / target).resolve()
        if not is_within(resolved, skill_root.resolve()):
          errors.append(f"{relative_document}: Markdown link escapes skill root: {target}")
        elif not resolved.exists():
          errors.append(f"{relative_document}: Markdown link target is missing: {target}")

      for match in BACKTICK.finditer(text):
        target = match.group(1)
        if CROSS_SKILL_PATH.search(target):
          continue
        if target.startswith("references/") and target.endswith(".md"):
          transition = re.match(
            r" in (?:its|the )?`(mps-[a-z0-9-]+)` skill root"
            r"(?P<activation> after loading that companion skill from the same origin)?",
            text[match.end():],
          )
          owning_root = root / transition.group(1) if transition else skill_root
          if transition and owning_root != skill_root:
            paragraph_start = text.rfind("\n\n", 0, match.start()) + 2
            preceding_text = text[paragraph_start:match.start()]
            preceding_activation = re.search(
              rf"load the `{re.escape(transition.group(1))}` companion skill "
              r"from the same origin",
              preceding_text,
              re.IGNORECASE,
            )
            if not transition.group("activation") and not preceding_activation:
              errors.append(
                f"{relative_document}: companion supporting transition lacks "
                f"same-origin activation: {transition.group(1)}/{target}"
              )
          resolved = (owning_root / target).resolve()
          if not is_within(resolved, owning_root.resolve()):
            errors.append(
              f"{relative_document}: supporting path escapes {owning_root.name}: {target}"
            )
          elif not resolved.is_file():
            errors.append(
              f"{relative_document}: supporting file is missing from "
              f"{owning_root.name}: {target}"
            )
        elif target.startswith("../") and target.endswith((".md", "SKILL.md")):
          resolved = (document.parent / target).resolve()
          if not is_within(resolved, skill_root.resolve()):
            errors.append(f"{relative_document}: backticked path escapes skill root: {target}")
          elif not resolved.is_file():
            errors.append(f"{relative_document}: backticked file is missing: {target}")

  canonical = root / canonical_skill / COPIED_REFERENCE
  if not canonical.is_file():
    errors.append(f"{canonical.relative_to(root)}: canonical copied reference is missing")
  else:
    expected = canonical.read_bytes()
    for consumer in copy_consumers:
      copied = root / consumer / COPIED_REFERENCE
      if not copied.is_file():
        errors.append(f"{copied.relative_to(root)}: copied reference is missing")
      elif copied.read_bytes() != expected:
        errors.append(f"{copied.relative_to(root)}: copied reference differs from canonical")

  return errors


def write_skill(root: Path, name: str, body: str = "") -> Path:
  skill = root / name
  skill.mkdir(parents=True)
  (skill / "SKILL.md").write_text(
    f"# {name}\n\n{LOAD_CONTRACT}\n\n{body}", encoding="utf-8"
  )
  return skill


def run_self_test() -> None:
  cases = (
    ("missing target", "`references/missing.md`", "supporting file is missing", False),
    ("escaping link", "[outside](../outside.md)", "Markdown link escapes skill root", False),
    (
      "cross-skill pseudo-path",
      "`mps-other/references/detail.md`",
      "cross-skill pseudo-path",
      False,
    ),
    ("edited copy", "", "copied reference differs from canonical", True),
  )
  for label, body, expected_error, edit_copy in cases:
    with tempfile.TemporaryDirectory(prefix="skill-catalog-validator-") as temp:
      root = Path(temp) / "skills"
      canonical = write_skill(root, "mps-workflow")
      consumer = write_skill(root, "mps-consumer", body)
      (canonical / "references").mkdir()
      (consumer / "references").mkdir()
      (canonical / COPIED_REFERENCE).write_text("canonical\n", encoding="utf-8")
      (consumer / COPIED_REFERENCE).write_text(
        "edited\n" if edit_copy else "canonical\n", encoding="utf-8"
      )
      errors = validate_catalog(root, "mps-workflow", ("mps-consumer",))
      if not any(expected_error in error for error in errors):
        raise AssertionError(f"{label}: expected {expected_error!r}, got {errors!r}")

  with tempfile.TemporaryDirectory(prefix="skill-catalog-validator-") as temp:
    root = Path(temp) / "skills"
    canonical = write_skill(root, "mps-workflow")
    consumer = write_skill(root, "mps-consumer", "`references/../../outside.md`")
    (canonical / "references").mkdir()
    (consumer / "references").mkdir()
    (canonical / COPIED_REFERENCE).write_text("canonical\n", encoding="utf-8")
    (consumer / COPIED_REFERENCE).write_text("canonical\n", encoding="utf-8")
    (root / "outside.md").write_text("outside\n", encoding="utf-8")
    errors = validate_catalog(root, "mps-workflow", ("mps-consumer",))
    if not any("supporting path escapes" in error for error in errors):
      raise AssertionError(f"supporting escape: expected locality error, got {errors!r}")

  with tempfile.TemporaryDirectory(prefix="skill-catalog-validator-") as temp:
    root = Path(temp) / "skills"
    canonical = write_skill(root, "mps-workflow")
    consumer = write_skill(
      root,
      "mps-consumer",
      "`references/detail.md` in the `mps-other` skill root",
    )
    other = write_skill(root, "mps-other")
    for skill in (canonical, consumer, other):
      (skill / "references").mkdir()
    (canonical / COPIED_REFERENCE).write_text("canonical\n", encoding="utf-8")
    (consumer / COPIED_REFERENCE).write_text("canonical\n", encoding="utf-8")
    (other / "references/detail.md").write_text("detail\n", encoding="utf-8")
    errors = validate_catalog(root, "mps-workflow", ("mps-consumer",))
    if not any("transition lacks same-origin activation" in error for error in errors):
      raise AssertionError(f"omitted activation: expected activation error, got {errors!r}")

  with tempfile.TemporaryDirectory(prefix="skill-catalog-validator-") as temp:
    root = Path(temp) / "skills"
    canonical = write_skill(root, "mps-workflow")
    consumer = write_skill(
      root,
      "mps-consumer",
      "`references/local.md` and `references/detail.md` in the `mps-other` skill root "
      "after loading that companion skill from the same origin. "
      "Load the `mps-other` companion skill from the same origin, then open "
      "`references/detail2.md` in the `mps-other` skill root.",
    )
    other = write_skill(root, "mps-other")
    for skill in (canonical, consumer, other):
      (skill / "references").mkdir()
    (canonical / COPIED_REFERENCE).write_text("canonical\n", encoding="utf-8")
    (consumer / COPIED_REFERENCE).write_text("canonical\n", encoding="utf-8")
    (consumer / "references/local.md").write_text("local\n", encoding="utf-8")
    (other / "references/detail.md").write_text("detail\n", encoding="utf-8")
    (other / "references/detail2.md").write_text("detail2\n", encoding="utf-8")
    errors = validate_catalog(root, "mps-workflow", ("mps-consumer",))
    if errors:
      raise AssertionError(f"positive locality fixture: expected no errors, got {errors!r}")

  print(f"self-test passed: {len(cases) + 2} negative fixtures and 1 positive fixture")


def main() -> int:
  parser = argparse.ArgumentParser()
  parser.add_argument("catalog", nargs="?", type=Path)
  parser.add_argument("--self-test", action="store_true")
  args = parser.parse_args()
  if args.self_test:
    run_self_test()
  if args.catalog:
    errors = validate_catalog(args.catalog)
    if errors:
      print("\n".join(errors))
      return 1
    markdown_count = sum(1 for _ in args.catalog.rglob("*.md"))
    skill_count = sum(1 for path in args.catalog.iterdir() if path.is_dir())
    print(f"validated {skill_count} skills and {markdown_count} Markdown files")
  elif not args.self_test:
    parser.error("provide a catalog path, --self-test, or both")
  return 0


if __name__ == "__main__":
  raise SystemExit(main())
