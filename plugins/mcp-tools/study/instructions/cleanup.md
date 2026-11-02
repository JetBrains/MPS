# Cleaning old run projects

This process removes scratch MPS projects that are no longer evidence. It does not remove
transcripts, and it is not part of `run_worker.sh`. The observer skill
`study-run-cleanup` points here. It is not in the bundled `mps-*` catalog.

This process has not been run against the archive that existed on 2026-10-30 (`archive/workspace`
about 2.7 GB, `archive/runs` about 194 MB). The first real run is a dry-run. A human accepts the
list before anything is deleted.

## When

After a round is written up, or when `archive/workspace` is what is using the disk. Never during
a live round. Never while a tarball rebuild is in progress under `build/`.

## What a run project is

A run project is a directory that contains `.mps`. It lives under
`~/MPSProjects/mcp-study/workspace/` or `~/MPSProjects/mcp-study/archive/workspace/`.

It is not a transcript under `runs/` or `archive/runs/`. It is not a tarball. It is not a bucket.
The current archive's top-level names (`r10`, `r27`, `unclosed`, `s15`, `s10-2026-09-24`) are
buckets. Deleting a bucket deletes every scratch inside it, including ones that are not eligible.
The deletion unit is the directory that contains `.mps`, never its parent bucket.

## Never delete

- anything in the git checkout
- `fixtures/` (current tarballs) or `runs/inventory.json`
- `build/` while a rebuild is in progress
- `archive/other/` — list it and stop
- `archive/fixtures/` — list it and stop, except an explicit later decision about
  `archive/fixtures/dropped/`. A sha256 check is not enough: `pins.md` tells you to keep the older
  `archive/fixtures/r6/statechart.tar.gz`, and that file's hash is not in the pin table
- a directory MPS still has open. Compare `mps_mcp_list_open_projects` and the running process
  command line with the candidate's current path **and** with its pre-move path (`proj/<id>`,
  `proj-rN/<id>`). If any listed path does not exist on disk, or its basename equals the
  candidate's, stop. Do not delete out from under an open project whose path was renamed by the
  layout move
- `harness` and any name starting with `harness`
- a non-scenario name: `fixture-recipes-misgen`, `probe-recipe`, `inspect-*`, `kaja-src`,
  `flow-src`, `genplan-*`, `gentest-*`, `d122-live`, `live-get-type`, `a8-probe`, and the other
  odd names under `unclosed/`. Those are build trees and probes. `fixtures/inputs/s15/DEFECT.md`
  still cites `fixture-recipes-misgen`

## The current archive is classified, not deleted

The first dry-run against the archive that already exists **classifies and keeps**. It does not
emit a delete list for `archive/workspace` or `archive/fixtures`.

Why the obvious rules do not apply to those trees:

- Directory suffix is not the study round. Round 10's evidence is `runs-r11`; `r10` was a stray
  trial. Round 22's projects were later moved to what is now `archive/workspace/r27`. Mapping
  `rN` to `reports/hotspot/round-N.md` deletes the wrong tree. Do not do that.
- A report matches a scratch only if the report, or that bucket's `*.meta.json`, names that
  scratch's current path or its legacy path (`proj-rN/<run-id>`, `proj/<run-id>`). A missing
  hotspot report is not permission to delete. Disagreement between the study round and the
  directory suffix means keep.
- Search citations in hotspot reports, `reports/index.md`, `fixtures/inputs/`, and
  `instructions/defects.md`. A bare run id such as `S4-sonnet-1` occurs in more than one round;
  it keeps every scratch of that name.
- No existing scratch has a fixture stamp. Family cannot be told from the directory name
  (`S3` has been `recipes`, `recipes-full`, and `recipes-broken`, and those tarballs were
  rebuilt). "Two newest per family" does not apply to these trees. Keep them and say so.
- `projectSynthesized: false` in a meta file only means some tarball was used. It is not a
  fixture name.

## What may be deleted, later

Dry-run is the default. Print every path. Deletion requires an explicit apply of that printed
list. No `rm` of `workspace/`, `archive/`, or the study root.

A scratch is eligible only when all of these hold:

1. It contains `.mps`, and it is not in the never-delete list above.
2. A stamp sits next to it, not inside it: `workspace/<id>.fixture.json` or, once archived,
   `archive/workspace/<suffix>/<id>.fixture.json`. The stamp is `{"fixture","sha256"}` or
   `{"synthesized": true}`, written at unpack time (see the runbook procedure card). No stamp
   means not eligible. Say so. This is the state of every scratch that already exists.
3. The round that used it has a committed hotspot report or an archived review that names this
   scratch's path, and no open row in `instructions/defects.md` cites that path. A citation of
   the run id alone is not enough to decide, and it is enough to keep.
4. It is not one of the two newest stamped scratches of that fixture name and sha256. "Newest"
   is the stamp's file date, not the directory suffix sorted as text (`r10` < `r3`). If the
   family cannot be told, keep it.
5. MPS does not have it open, by the check above.

After the active round's eval is saved, move `workspace/<id>` to
`archive/workspace/<suffix>/<id>` using the same suffix the report will cite, not the study
round number, and move the stamp with it. `workspace/harness` may stay.

## Transcripts are a different step

Do not delete `archive/runs` or the historical files still sitting in live `runs/` as part of
project cleanup. An optional, separately named, also dry-run step may move live `runs/` files
older than the active round into `archive/runs/unbucketed/`, leaving `inventory.json` in place.
"Older" is a date or an explicit list. It is not `rN` compared with the study round number.
Name that step when you run it. Do not fold it into project cleanup.
