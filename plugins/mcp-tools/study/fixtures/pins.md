# Current fixture tarballs

The only record of a current tarball's sha256. Rebuild notes point here instead of copying the hash.
Files live in `~/MPSProjects/mcp-study/fixtures/`, not in git. An empty project is synthesized by
`scripts/new_study_project.py` and has no tarball.

| fixture | sha256 | date |
|---|---|---|
| `expressions` | `5c0720b056207ea7987ab7729cd408b12ac4b02c6ec90170667ac0dfc69b8b40` | file date not separately documented |
| `flow-java` | `027d26ec143b71461851d3d6fd81c209df86ed622dd0598d25b786a70c045b41` | file date not separately documented |
| `alerts` | `7557fde745c46c15e5a0589358fedcc88dadbb0601f8d783d8ef7c4155d3a801` | 2026-11-01 (base of `alerts2`; ad-hoc editor exercises E1–E4) |
| `alerts2` | `0db5f86f350f5a47c3f79516d3f96b1c54f313903faa2cebab181e35bb28b7a6` | 2026-11-01 (S31, S33; base of `alerts2-broken`) |
| `alerts2-broken` | `96631ae2acf303e1ec96a8914dc17cf9887361c49857fbcac11205263c7007b2` | 2026-11-01 (S34) |
| `alerts2-compact` | `69849f69cd2027b047f0296b5859b1962a47d78563a8e0c0484723dcc424ccdb` | 2026-11-09 (S38b; the audited H1-opus-2 scratch) |
| `alerts3` | `54fbd2302d3648e2f9c595aa19e16c523370b3b0c7b8bf574e75b98653a88895` | 2026-11-11 (S39a; `alerts2-compact` + book `Night`, recipe `inputs/s39/FIXTURE.md`) |
| `alerts3-broken` | `812229f04228498d65e8426e9b25206cb77b6bf4acd7cbbc8615ea86a773f1af` | 2026-11-11 (S39b; `alerts3` + reference Triage view + seeds D-A…D-F, `inputs/s39/FIXTURE.md`) |
| `alerts3-hard` | `62df2d48a48057e8214f43986119dc69c0fed614fcf25b45555a50834b438f8a` | 2026-11-11 (S39b rev. 2; `alerts3` + reference Triage view + seeds H1–H5, D-C, D-D, D-F, `inputs/s39/FIXTURE.md` Step 4) |
| `fleet` | `2c813cea120ec6afb6bd4cfb0a266586a89b59217b90b7096f6b593c1d8f8ba7` | 2026-10-31 |
| `flows-gen` | `af093a666e49b573bbacf1155ea94080349c2f957c9a6eabb5115739995ed8cc` | 2026-10-30 |
| `kaja-dataflow` | `e8ee8fc579774969e883d18326243075a1fa16666409e3804dac446899406aec` | file date not separately documented |
| `kaja-dataflow-2` | `47964de81ba0999d06db198f12ec603492412fbc91454f64d048536160113acf` | file date not separately documented |
| `kaja-editor` | `8a64206f7adac869e93c812fa7faf3019337f0595744b756505a26f12ae1c312` | 2026-11-01 (S35) |
| `kaja-build` | `9e47ad47f886bdf85aac167e7546d67afa9db2293a50f1d7c537751e7df6cfb7` | 2026-11-24 (S40a, S40b; `samples/robot_Kaja` at `b2b3c24ae8d8`, made with MPS 261.25134 from sources) |
| `loans` | `a1dd53cc86df503c25fd523513d54fc0064425073b8a0d1e89ab859218870711` | 2026-10-31 |
| `recipes` | `40f91e40596ec449625663e92658c16336ff4da75dd3a008824a45b0c440ce81` | 2026-09-24 (the r3/r4/r12 copy; the 2026-09-16 file pinned before was `recipes-full` plus a doc surface, now `archive/fixtures/wrong-recipes-2026-09-16/`) |
| `recipes-editor` | `fb40e0c196cd14f25a39d5e0bbd1f579552c92d2340da871f14ab29d893dbaa5` | 2026-11-01 (S32) |
| `recipes-broken` | `0dc4878ee65187a3cf227730e79aa0827f5a2d55660e5c035e02e4d774893bf1` | file date not separately documented |
| `recipes-full` | `37d9c83af98f27514534086edff4181b9faaa3e0156dc98dd0e27f91a7df5953` | file date not separately documented |
| `recipes-gen` | `e9fd62584d0c0358affd82d729662197c1871d6a5a62618d2c421744092a96f3` | 2026-10-29 |
| `recipes-gen-broken` | `a0370dbd8445e098dd7fdad6988c0d5c66e2a4d63363e64aea1ecef3b303c6ce` | 2026-11-02 (S36) |
| `recipes-misgen` | `ec971bc6005223ae608ae37b30851aabdc2f0eb0710b84a299b3448cc8709199` | 2026-10-23 |
| `shifts` | `f5e15bf37f5c80301c80c824327419ff1d641db3614b8a02f2a5bde8bba3bc35` | 2026-10-31 |
| `statechart` | `d9dd23be9843b99d2487caae16601648290062c2b042eebc545a83fe21c7820e` | file date not separately documented |
| `tickets` | `6d45a25cb5c7c85fed139a08f9de89322b1e99c385bafa8fa49a02c1921e732b` | 2026-10-31 |

The current `statechart` file is the copy shared by the later `fixtures-r8` and `fixtures-r12` archives. The older `fixtures-r6` copy differed and was not promoted; it remains under `archive/fixtures/r6/`.

## `dist/` for S40a and S40b (outside the tarballs)

`~/MPSProjects/mcp-study/dist/` on the observer machine, as of 2026-11-24 (variant G):

| link | target | build | source |
|---|---|---|---|
| `dist/MPS` | `dist/MPS-2026.1.2/MPS 2026.1.2` (unpacked `MPS-2026.1.2.zip`) | `MPS-261.27258.1085` | `https://download.jetbrains.com/mps/2026.1/MPS-2026.1.2.zip`, sha256 `adcc8a2bfd1f6f32518e386c523f608aba157fdb41ab503372fbcf7a9365d75d` (matches the published `.sha256`), 699,807,194 bytes, kept in `dist/dl-2026.1.2/` |
| `dist/jdk` | `~/Library/Java/JavaVirtualMachines/jbr-25.0.4/Contents/Home` | JBR 25.0.4 | the machine's JBR |
