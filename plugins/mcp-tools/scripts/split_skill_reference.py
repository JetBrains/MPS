#!/usr/bin/env python3
"""Split an oversized skill reference Markdown file into references/<stem>/<slug>.md.

`SkillReferenceLayoutTest` fails any `references/**/*.md` file over 12288 bytes. This is the
maintained tool for the fix it names: cut the file along its `##` (or deeper) headings into one
file per section under `references/<stem>/`, and rewrite the original path as a short index
(title, optional preamble, and a `| Section | File |` table). Cutting is verbatim: in-file
`](#anchor)` links are retargeted to the section file that now holds the heading, and relative
`](other.md)` links gain a `../` hop because section files move one directory deeper. Code fences
are never treated as cut points or link/anchor targets.

Single-file usage (the primary interface):

  split_skill_reference.py <skill>/references/<stem>.md --level N
      [--extra PREFIX]... [--merge PREFIX]...
      [--slug PREFIX SLUG]... [--title PREFIX TITLE]...
      [--drop-line PREFIX]... [--drop-block FROM_PREFIX TO_BEFORE_PREFIX]...
      [--retitle FROM TO] [--preamble index|overview]
      [--overview-slug SLUG] [--overview-title TITLE]
      [--drop-only] [--dry-run]

  level        heading level to cut at (2 = every '## ' line outside code fences).
  extra        an additional cut point: a deeper heading, or a plain line (needs --slug/--title).
  merge        a level-heading prefix to NOT cut at; its content joins the previous section.
  slug/title   PREFIX SLUG or PREFIX TITLE overrides; required for a plain-line cut.
  drop-line / drop-block   navigation boilerplate to delete before splitting (a single line, or a
               [from, to_before) range), e.g. a stale "## Contents / when to read what" block.
  retitle      promote the first line (e.g. "## X" -> "# X") before the h1 check.
  preamble     force "index" (inline in the rewritten path) or "overview" (its own section file)
               instead of the default (index when the preamble is <= 2048 bytes).
  drop-only    apply drop/retitle only; keep the file whole (no split, no index).

Batch usage (for reproducing a prepared set of cuts):

  split_skill_reference.py --manifest manifest.json --catalog <skills-root> [--dry-run]

  Same schema the one-off D44 script used: a JSON list of entries, each an object with a
  catalog-relative "path" plus the flags above as object keys (level, extra, merge, slugs,
  titles, drop, retitle, preamble, overview_slug, overview_title, drop_only).

Refuses (exit 2, before touching anything) to split:
  - a file that is not directly inside a references/ directory whose parent has a SKILL.md —
    i.e. an already-split section file such as references/<stem>/<slug>.md. Section files are
    not split further: shorten it, hand-split it into sibling section files and add their rows
    to the parent index, or allow-list it in SkillReferenceLayoutTest.OVER_BUDGET with a reason.
  - a file whose references/<stem>/ output directory already exists.
  - a file that already looks like a generated index (it contains the standard index sentence).

Every other user error (an ambiguous prefix, a duplicate slug, a plain-line cut missing its
slug/title override, an anchor that resolves to no heading, a first line that is not an h1) is
reported on stderr with exit code 1.

Use --self-test to run this script's own regression fixtures.
"""

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
import tempfile
from pathlib import Path

PREAMBLE_INLINE_MAX = 2048
INDEX_SENTINEL = (
  "One file per section, each self-contained. Read only the files for your job, and when you "
  "need more than one, Read them all in one parallel batch."
)


class SplitError(Exception):
  """A user error in the input file or the requested cuts (reported on stderr, exit code 1)."""


def fence_mask(lines: list[str]) -> list[bool]:
  inside, mask = False, []
  for line in lines:
    if line.startswith('```'):
      mask.append(True)  # fence lines themselves are never cut points
      inside = not inside
      continue
    mask.append(inside)
  return mask


def find_one(lines: list[str], mask: list[bool], prefix: str, label: str) -> int:
  hits = [i for i, line in enumerate(lines) if not mask[i] and line.startswith(prefix)]
  if len(hits) != 1:
    raise SplitError(f"{label}: prefix {prefix!r} matched {len(hits)} lines {[h + 1 for h in hits]}")
  return hits[0]


def gh_anchor(heading_line: str) -> str:
  text = heading_line.lstrip('#').strip().lower()
  text = re.sub(r'[^\w\- ]', '', text)
  return text.replace(' ', '-')


def slugify(heading_line: str) -> str:
  text = heading_line.lstrip('#').strip().lower()
  text = re.sub(r'`[^`]*`', lambda m: m.group(0).strip('`'), text)
  text = re.sub(r'[^a-z0-9]+', '-', text).strip('-')
  return '-'.join(text.split('-')[:6]) or 'section'


def heading_level(line: str) -> int:
  m = re.match(r'^(#+) ', line)
  return len(m.group(1)) if m else 0


def check_refusals(file_path: Path) -> None:
  """Exit 2 (before any write) for every case this splitter refuses to handle."""
  if not file_path.is_file():
    print(f"error: {file_path} is not a file", file=sys.stderr)
    sys.exit(1)

  references_dir = file_path.parent
  skill_dir = references_dir.parent
  if references_dir.name != 'references' or not (skill_dir / 'SKILL.md').is_file():
    print(
      f"error: {file_path} is not directly inside a references/ directory whose parent contains "
      "SKILL.md — it looks like an already-split section file. Section files are not split "
      "further: shorten it, cut it into sibling section files by hand and add their rows to the "
      "parent index, or allow-list it in SkillReferenceLayoutTest.OVER_BUDGET with a reason.",
      file=sys.stderr,
    )
    sys.exit(2)

  out_dir = file_path.parent / file_path.stem
  if out_dir.exists():
    print(f"error: {out_dir} already exists — {file_path} looks already split.", file=sys.stderr)
    sys.exit(2)

  text = file_path.read_text(encoding='utf-8')
  if INDEX_SENTINEL in text:
    print(
      f"error: {file_path} already looks like a generated index (it contains the standard index "
      "sentence) — nothing to split.",
      file=sys.stderr,
    )
    sys.exit(2)


def process(label: str, file_path: Path, entry: dict, dry: bool) -> None:
  text = file_path.read_text(encoding='utf-8')
  lines = text.split('\n')
  mask = fence_mask(lines)

  # 1. drop navigation boilerplate
  kill: set[int] = set()
  for d in entry.get('drop', []):
    if 'line' in d:
      kill.add(find_one(lines, mask, d['line'], label))
    else:
      a = find_one(lines, mask, d['from'], label)
      b = find_one(lines, mask, d['to_before'], label)
      if b <= a:
        raise SplitError(f"{label}: drop block ends before it starts")
      kill.update(range(a, b))
  lines = [line for i, line in enumerate(lines) if i not in kill]
  mask = fence_mask(lines)
  if 'retitle' in entry:
    if lines[0] != entry['retitle']['from']:
      raise SplitError(f"{label}: first line is {lines[0]!r}")
    lines[0] = entry['retitle']['to']
  if not lines[0].startswith('# '):
    raise SplitError(f"{label}: first line must be an h1 title, got {lines[0]!r}")
  cleaned = '\n'.join(lines)
  if entry.get('drop_only'):  # file stays whole; only its navigation boilerplate goes
    print(f"{label}: {len(text.encode())} B -> {len(cleaned.encode())} B (drop only, not split)")
    if not dry:
      file_path.write_text(cleaned, encoding='utf-8')
    return

  if 'level' not in entry:
    raise SplitError(f"{label}: --level is required unless --drop-only is set")

  # 2. cut points
  merge = {find_one(lines, mask, p, label) for p in entry.get('merge', [])}
  cuts = [
    i for i, line in enumerate(lines)
    if not mask[i] and heading_level(line) == entry['level'] and i not in merge
  ]
  cuts += [find_one(lines, mask, p, label) for p in entry.get('extra', [])]
  cuts = sorted(set(cuts))
  overrides = {find_one(lines, mask, p, label): s for p, s in entry.get('slugs', {}).items()}
  if not cuts:
    raise SplitError(f"{label}: no cut points")

  stem = file_path.stem
  sections = []
  for k, c in enumerate(cuts):
    end = cuts[k + 1] if k + 1 < len(cuts) else len(lines)
    if c in overrides:
      slug = overrides[c]
    elif heading_level(lines[c]):
      slug = slugify(lines[c])
    else:
      raise SplitError(f"{label}: plain-line cut at L{c + 1} needs a slug override")
    title_over = {find_one(lines, mask, p, label): t for p, t in entry.get('titles', {}).items()}
    if not heading_level(lines[c]) and c not in title_over:
      raise SplitError(f"{label}: plain-line cut at L{c + 1} needs a titles override")
    sections.append({
      'slug': slug, 'start': c, 'end': end, 'plain': not heading_level(lines[c]),
      'title': title_over.get(c, lines[c].lstrip('#').strip()),
    })
  slugs = [s['slug'] for s in sections]
  dupes = {s for s in slugs if slugs.count(s) > 1}
  if dupes:
    raise SplitError(f"{label}: duplicate slugs {sorted(dupes)} — add slug overrides")

  title = lines[0]
  pre_body = '\n'.join(lines[1:cuts[0]]).strip('\n')
  mode = entry.get('preamble') or ('index' if len(pre_body.encode()) <= PREAMBLE_INLINE_MAX else 'overview')
  if mode == 'overview' and pre_body:
    sections.insert(0, {
      'slug': entry.get('overview_slug', 'overview'), 'start': None, 'end': None,
      'title': entry.get('overview_title', 'Overview — shared rules for every section below'),
      'body': title + '\n\n' + pre_body + '\n',
    })

  # 3. section bodies (verbatim), then lossless check
  for s in sections:
    if s['start'] is not None:
      s['body'] = '\n'.join(lines[s['start']:s['end']]).rstrip('\n') + '\n'
      if s.get('plain'):  # a cut inside a section gets a heading so the file says what it is
        s['body'] = f"### {s['title']}\n\n" + s['body']
  rebuilt = '\n'.join([title] + lines[1:cuts[0]] + lines[cuts[0]:])
  assert rebuilt == cleaned

  # 4. anchor map: every heading anchor -> the file that now holds it
  anchor_file = {}
  for s in sections:
    if s['start'] is None:
      continue
    for i in range(s['start'], s['end']):
      if not mask[i] and heading_level(lines[i]):
        anchor_file[gh_anchor(lines[i])] = s['slug']

  def rewrite(body: str, from_index: bool) -> str:
    def fix_anchor(m: re.Match) -> str:
      a = m.group(1)
      if a not in anchor_file:
        raise SplitError(f"{label}: anchor #{a} does not resolve to any heading")
      return f"]({stem}/{anchor_file[a]}.md)" if from_index else f"]({anchor_file[a]}.md)"

    def fix_rel(m: re.Match) -> str:
      target = m.group(1)
      if re.match(r'^(https?:|#|/|mailto:)', target) or from_index:
        return m.group(0)
      return f"](../{target})"

    out, inside = [], False
    for line in body.split('\n'):
      if line.startswith('```'):
        inside = not inside
      if not inside:
        line = re.sub(r'\]\(([^)\s#][^)\s]*)\)', fix_rel, line)
        line = re.sub(r'\]\(#([^)\s]+)\)', fix_anchor, line)
      out.append(line)
    return '\n'.join(out)

  for s in sections:
    s['body'] = rewrite(s['body'], from_index=False)

  # 5. index at the old path
  rows = '\n'.join(f"| {s['title']} | `references/{stem}/{s['slug']}.md` |" for s in sections)
  idx = [title, '']
  if mode == 'index' and pre_body:
    idx += [rewrite(pre_body, from_index=True), '']
  idx += [INDEX_SENTINEL, '', '| Section | File |', '|---|---|', rows, '']
  index = '\n'.join(idx)

  report = [f"{label}: {len(text.encode())} B -> index {len(index.encode())} B + {len(sections)} files"]
  for s in sections:
    n = len(s['body'].encode())
    flag = '  <-- OVER 8 KB' if n > 8192 else ''
    flag = '  <-- OVER 12 KB BUDGET' if n > 12288 else flag
    report.append(f"    {n:6d} B  {stem}/{s['slug']}.md{flag}")
  print('\n'.join(report))
  if dry:
    return
  out_dir = file_path.parent / stem
  if out_dir.exists():
    raise SplitError(f"{label}: {out_dir} already exists")
  out_dir.mkdir()
  for s in sections:
    (out_dir / f"{s['slug']}.md").write_text(s['body'], encoding='utf-8')
  file_path.write_text(index, encoding='utf-8')


def build_entry_from_args(args: argparse.Namespace) -> dict:
  entry: dict = {}
  if args.level is not None:
    entry['level'] = args.level
  if args.extra:
    entry['extra'] = args.extra
  if args.merge:
    entry['merge'] = args.merge
  if args.slug:
    entry['slugs'] = {prefix: slug for prefix, slug in args.slug}
  if args.title:
    entry['titles'] = {prefix: title for prefix, title in args.title}
  drops = [{'line': p} for p in (args.drop_line or [])]
  drops += [{'from': frm, 'to_before': to} for frm, to in (args.drop_block or [])]
  if drops:
    entry['drop'] = drops
  if args.retitle:
    entry['retitle'] = {'from': args.retitle[0], 'to': args.retitle[1]}
  if args.preamble:
    entry['preamble'] = args.preamble
  if args.overview_slug:
    entry['overview_slug'] = args.overview_slug
  if args.overview_title:
    entry['overview_title'] = args.overview_title
  if args.drop_only:
    entry['drop_only'] = True
  return entry


def print_next_steps() -> None:
  print()
  print('Next steps:')
  print('  - run validate_skill_catalog.py on the catalog')
  print('  - point any SKILL.md section-index rows and section-specific citations')
  print('    (§"...", "see ... below/above") at the new files')
  print('  - propagate the skill to .agents/skills and .claude/skills in this checkout')


POSITIVE_TEXT = (
  "# Sample Reference\n"
  "\n"
  "See [the other file](other.md) or jump to [Section Two](#section-two) below.\n"
  "\n"
  "## Section One\n"
  "\n"
  "Body of section one.\n"
  "\n"
  "```\n"
  "# not a real heading, just fenced text\n"
  "```\n"
  "\n"
  "## Section Two\n"
  "\n"
  "Body of section two, the anchor target.\n"
  "\n"
  "## Section Three\n"
  "\n"
  "Body of section three, linking to [the other file](other.md) again.\n"
)


def minimal_reference(extra_preamble: str = '') -> str:
  return (
    "# Minimal Reference\n"
    "\n"
    f"{extra_preamble}"
    "## Section One\n"
    "\n"
    "Body one.\n"
    "\n"
    "## Section Two\n"
    "\n"
    "Body two.\n"
  )


def run_self_test() -> None:
  script = str(Path(__file__).resolve())
  positives = 0
  negatives = 0

  with tempfile.TemporaryDirectory(prefix='split-skill-reference-') as tmp:
    root = Path(tmp)

    def make_skill(name: str) -> Path:
      skill = root / name
      (skill / 'references').mkdir(parents=True)
      (skill / 'SKILL.md').write_text(f"# {name}\n", encoding='utf-8')
      return skill

    def run(*args: str) -> subprocess.CompletedProcess:
      return subprocess.run([sys.executable, script, *args], capture_output=True, text=True)

    # --- positive: a real split, with fence-awareness and both kinds of link rewrite ---
    skill = make_skill('sample-skill')
    target = skill / 'references' / 'widgets.md'
    target.write_text(POSITIVE_TEXT, encoding='utf-8')
    (skill / 'references' / 'other.md').write_text('other\n', encoding='utf-8')

    result = run(str(target), '--level', '2')
    if result.returncode != 0:
      raise AssertionError(
        f"positive split must exit 0: rc={result.returncode}\nstdout={result.stdout}\nstderr={result.stderr}"
      )
    out_dir = skill / 'references' / 'widgets'
    expected_files = {'section-one.md', 'section-two.md', 'section-three.md'}
    actual_files = {p.name for p in out_dir.iterdir()}
    if actual_files != expected_files:
      raise AssertionError(f"expected section files {expected_files}, got {actual_files}")

    index_text = target.read_text(encoding='utf-8')
    if INDEX_SENTINEL not in index_text:
      raise AssertionError(f"index is missing the standard sentence:\n{index_text}")
    for name in expected_files:
      if f"`references/widgets/{name}`" not in index_text:
        raise AssertionError(f"index is missing a row for {name}:\n{index_text}")
    if "](widgets/section-two.md)" not in index_text:
      raise AssertionError(f"index anchor link was not rewritten:\n{index_text}")

    section_one = (out_dir / 'section-one.md').read_text(encoding='utf-8')
    if '# not a real heading' not in section_one:
      raise AssertionError(f"fenced heading-like line was lost:\n{section_one}")
    # actual_files == expected_files (checked above) already proves the fenced '#' line inside
    # Section One was not mistaken for a 4th cut point.

    section_three = (out_dir / 'section-three.md').read_text(encoding='utf-8')
    if '](../other.md)' not in section_three:
      raise AssertionError(f"relative link inside a section file was not rewritten:\n{section_three}")
    positives += 1

    # --- negative: nested section-file input ---
    result = run(str(out_dir / 'section-one.md'), '--level', '3')
    if result.returncode != 2 or 'not split further' not in result.stderr:
      raise AssertionError(f"splitting a section file must exit 2: rc={result.returncode} stderr={result.stderr}")
    negatives += 1

    # --- negative: references/<stem>/ already exists ---
    skill = make_skill('exists-fixture')
    exists_target = skill / 'references' / 'gadgets.md'
    exists_target.write_text(minimal_reference(), encoding='utf-8')
    (skill / 'references' / 'gadgets').mkdir()
    result = run(str(exists_target), '--level', '2')
    if result.returncode != 2 or 'already exists' not in result.stderr:
      raise AssertionError(f"existing output dir must exit 2: rc={result.returncode} stderr={result.stderr}")
    negatives += 1

    # --- negative: ambiguous prefix (matches more than one line) ---
    skill = make_skill('ambiguous-fixture')
    ambiguous_target = skill / 'references' / 'thingies.md'
    ambiguous_target.write_text(minimal_reference(), encoding='utf-8')
    result = run(str(ambiguous_target), '--level', '2', '--extra', '## Section')
    if result.returncode != 1 or 'matched' not in result.stderr:
      raise AssertionError(f"ambiguous prefix must be a user error: rc={result.returncode} stderr={result.stderr}")
    negatives += 1

    # --- negative: duplicate slugs ---
    skill = make_skill('duplicate-fixture')
    duplicate_target = skill / 'references' / 'doohickeys.md'
    duplicate_target.write_text(minimal_reference(), encoding='utf-8')
    result = run(
      str(duplicate_target), '--level', '2',
      '--slug', '## Section One', 'dup', '--slug', '## Section Two', 'dup',
    )
    if result.returncode != 1 or 'duplicate slugs' not in result.stderr:
      raise AssertionError(f"duplicate slugs must be a user error: rc={result.returncode} stderr={result.stderr}")
    negatives += 1

    # --- negative: plain-line cut without a slug/title override ---
    skill = make_skill('plain-fixture')
    plain_target = skill / 'references' / 'gizmos.md'
    plain_target.write_text(minimal_reference('Special note line.\n\n'), encoding='utf-8')
    result = run(plain_target.as_posix(), '--level', '2', '--extra', 'Special note line.')
    if result.returncode != 1 or 'needs a slug override' not in result.stderr:
      raise AssertionError(f"plain-line cut without a slug must be a user error: rc={result.returncode} stderr={result.stderr}")
    negatives += 1

    # --- negative: unresolved anchor ---
    skill = make_skill('anchor-fixture')
    anchor_target = skill / 'references' / 'sprockets.md'
    anchor_target.write_text(minimal_reference('See [nowhere](#does-not-exist).\n\n'), encoding='utf-8')
    result = run(str(anchor_target), '--level', '2')
    if result.returncode != 1 or 'does not resolve' not in result.stderr:
      raise AssertionError(f"unresolved anchor must be a user error: rc={result.returncode} stderr={result.stderr}")
    negatives += 1

  print(f"self-test passed: {positives} positive fixture(s) and {negatives} negative fixture(s)")


def build_parser() -> argparse.ArgumentParser:
  parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
  parser.add_argument('path', nargs='?', type=Path, help='the references/<stem>.md file to split')
  parser.add_argument('--level', type=int, help="heading level to cut at (2 = every '## ' line)")
  parser.add_argument('--extra', action='append', default=[], metavar='PREFIX',
                       help='an additional cut point (a deeper heading or a plain line)')
  parser.add_argument('--merge', action='append', default=[], metavar='PREFIX',
                       help='a level-heading prefix to not cut at')
  parser.add_argument('--slug', nargs=2, action='append', default=[], metavar=('PREFIX', 'SLUG'))
  parser.add_argument('--title', nargs=2, action='append', default=[], metavar=('PREFIX', 'TITLE'))
  parser.add_argument('--drop-line', dest='drop_line', action='append', default=[], metavar='PREFIX')
  parser.add_argument('--drop-block', dest='drop_block', nargs=2, action='append', default=[],
                       metavar=('FROM_PREFIX', 'TO_BEFORE_PREFIX'))
  parser.add_argument('--retitle', nargs=2, metavar=('FROM', 'TO'))
  parser.add_argument('--preamble', choices=['index', 'overview'])
  parser.add_argument('--overview-slug', dest='overview_slug', metavar='SLUG')
  parser.add_argument('--overview-title', dest='overview_title', metavar='TITLE')
  parser.add_argument('--drop-only', dest='drop_only', action='store_true',
                       help='apply drop/retitle only; keep the file whole')
  parser.add_argument('--dry-run', dest='dry_run', action='store_true')
  parser.add_argument('--manifest', type=Path, help='a manifest.json of entries, for batch use')
  parser.add_argument('--catalog', type=Path, help='the skills root manifest paths are relative to')
  parser.add_argument('--self-test', dest='self_test', action='store_true')
  return parser


def main() -> int:
  parser = build_parser()
  args = parser.parse_args()

  if args.self_test:
    run_self_test()
    return 0

  if args.manifest:
    if args.path:
      parser.error('--manifest cannot be combined with a single-file path')
    catalog = args.catalog or Path('.')
    manifest_entries = json.loads(args.manifest.read_text(encoding='utf-8'))
    try:
      for raw_entry in manifest_entries:
        entry = dict(raw_entry)
        label = entry.pop('path')
        file_path = catalog / label
        check_refusals(file_path)
        process(label, file_path, entry, args.dry_run)
    except SplitError as exc:
      print(f"error: {exc}", file=sys.stderr)
      return 1
    if not args.dry_run:
      print_next_steps()
    return 0

  if not args.path:
    parser.error('provide a path to split, --manifest, or --self-test')

  file_path = args.path
  check_refusals(file_path)
  entry = build_entry_from_args(args)
  try:
    process(str(args.path), file_path, entry, args.dry_run)
  except SplitError as exc:
    print(f"error: {exc}", file=sys.stderr)
    return 1
  if not args.dry_run:
    print_next_steps()
  return 0


if __name__ == '__main__':
  raise SystemExit(main())
