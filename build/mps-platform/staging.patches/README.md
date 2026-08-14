Patches for MPS Platform

This directory contains patches that are applied to the "MPS Platform" during the staging process.

Patches are generated from commits made on top of the stable branch in the ultimate repository.

After a new stable branch is created, these commits are to be rebased on top of it.

To regenerate the whole set, run this in the ultimate repository:

    DEST=<mps-repo>/build/mps-platform/staging.patches
    rm -f "$DEST"/*.patch
    git format-patch -k -o "$DEST" <stable-branch>..HEAD

Run it in the ultimate repository, not in the community mirror: only there do the paths come out
prefixed with `community/` (which the `git apply -p2` in `mps/build/build/build.xml` expects) and
without the `GitOrigin-RevId` trailer the mirror adds.

Keep `-k`. It drops the `[PATCH n/m]` subject prefix, so adding a patch no longer means renumbering
every existing file. Git rejects `-n`/`--numbered` together with `-k`, so the counter cannot come
back by accident.
