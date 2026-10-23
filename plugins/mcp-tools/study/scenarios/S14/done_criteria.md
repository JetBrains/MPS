# S14 done criteria (observer, read-only, projectPath = run project dir)

**Prompt frozen 2026-10-23** (`promptSha256` `9c33cf5b4cae…`) after the round-40 baseline:
`S14-opus-1` passed with all five answers read from its own console probe of the engine.

Fixture: `flow-java.tar.gz` (`../../fixtures/README.md`): a synthesized empty project plus
solution `flow.study` with model `flow.study.code`, which holds one class, `Ledger`. The worker
must not change any model, so every answer below is fixed by the fixture.
`check_root_node_problems` on the model answers "no problems found": no "Unused assignment" or
other dataflow warning hands the worker an answer.

The answers were read from the engine on 2026-10-23 (MPS 2026.1, build 261.25134), not derived by
hand. A console probe, `engine_probe.txt` next to this file (Java statements), built the program with
`DataFlow.buildProgram(<settle>)`, the same builder the shipped checks use, and printed
`program.analyze(new ReachingDefinitionsAnalyzer())` and `ReachingReadsAnalyzer` per instruction.
To re-pin after a fixture or runtime change, insert its text with
`mps_mcp_parse_java_and_insert` (`featureKind: "STATEMENTS"`, `insert.mode: "console"`), run it
with `mps_mcp_run_console_command`, read `/tmp/df-probe.txt`, then `mps_mcp_clear_console`. The
probe is observer tooling: workers never see it.

The gap this cell measures: def-use questions that `FIND_USAGES` cannot answer, because it is
structural and flow-insensitive, and that the checker never reports. Today an agent answers them
by simulating the method in its head. This is the tool-free baseline for a later
`mps_mcp_query_dataflow` `REACHING_WRITES` / `REACHING_READS`. That tool now exists: round 40 is the
baseline, round 41 ran this cell with it (`../../dataflow-exposure-assessment.md`, Recommendation).

```java
public static int settle(int[] amounts, boolean strict) {
  int total = 0;
  int fee = 5;
  int last = -1;
  for (int a : amounts) {
    if (a < 0) {
      if (strict) { return -1; }
      continue;
    }
    last = a;
    total = total + a;
  }
  if (total > 100) {
    fee = 0;
  }
  try {
    total = total - fee;
    if (last > 50) {
      fee = fee + 1;
    }
  } finally {
    System.out.println(fee);
  }
  return total;
}
```

References (model `r:ef31fc21-bbc2-41af-84c2-82df86dfcd50(flow.study.code)`, abbreviated `<code>`):

| what | reference | program index |
|---|---|---|
| class `Ledger` | `<code>/915666084355835808` | |
| method `settle` | `<code>/915666084355835810` | |
| `int total = 0` | `<code>/915666084355835817` | 5 |
| `int fee = 5` | `<code>/915666084355835821` | 8 |
| `int last = -1` | `<code>/915666084355835825` | 12 |
| `last = a` | `<code>/915666084355835848` | 32 |
| `total = total + a` | `<code>/915666084355835852` | 35 |
| `fee = 0` | `<code>/915666084355835868` | 42 |
| `total = total - fee` | `<code>/915666084355835874` | 49 |
| its read of `fee` | `<code>/915666084355835878` | 48 |
| read of `last` in `last > 50` | `<code>/915666084355835881` | 50 |
| `fee = fee + 1` | `<code>/915666084355835886` | 56 |
| read of `fee` in `println(fee)` | `<code>/915666084355835923` | 65 |
| read of `total` in `return total` | `<code>/915666084355835899` | 67 |

## Answers (read `ANSWERS.md`)

1. **Q1: `int fee = 5` and `fee = 0`.** Reaching definitions of `fee` at instruction 48 are
   {8, 42}. Naming `fee = fee + 1` fails: it comes later in the same `try`.
2. **Q2: `total = total - fee` only.** Reaching definitions of `total` at instruction 67 are {49}.
   `int total = 0` and `total = total + a` reach the `finally` block through the try's exception
   edge (instruction 45 → 59). They do not reach the `return`: that path takes the `ret` at
   instruction 60, which runs the `finally` and leaves the method. Naming either one fails.
3. **Q3: yes, the read in `last > 50`.** `int last = -1` (12) feeds read 50, on the path where
   `amounts` is empty, or every element is negative and `strict` is false.
   "No, it is always overwritten" fails.
4. **Q4: `int fee = 5`, `fee = 0` and `fee = fee + 1`, all three.** Reaching definitions of `fee`
   at instruction 65 are {8, 42, 56}. Leaving one out fails. Mentioning that the `finally` is also
   reached on the exception path is a plus, not required.
5. **Q5: only the read in `System.out.println(fee)`.** After instruction 56 the reaching reads of
   `fee` are {65}. Naming the read in `total = total - fee` fails, and so does naming the right side
   of `fee = fee + 1` itself.
6. **Models unchanged.** `mps_mcp_check_root_node_problems` on `<code>` still answers "no problems
   found". `mps_mcp_get_project_structure(startingPoint=<code>, includeRootNodes=true)` still lists
   exactly `Ledger`. No `.mps` model file in the project differs from the fixture. `.mps/` files
   that MPS rewrites on opening do not count.

An answer that is right but rests on a misread of the program also fails. One example is Q2
"`total = total - fee`, because the loop always runs". Read the evidence line, not only the answer.

Pass = criteria 1–6 hold.

## Process signals (transcript; report separately from the pass)

- **P1 engine, not simulation.** `DF_console_runs` > 0 means the worker used the MPS Console;
  read the transcript to see whether a run probed the dataflow runtime. Without such a probe, every
  answer was simulated from a printout. Both are baseline facts. The tool's before/after
  comparison needs to know which one the baseline was.
- **P2 reading cost.** `print_node` calls on `Ledger` or `settle`. One deep print is enough to
  simulate. More prints, or `query_nodes` `FIND_USAGES` per variable, are the turns
  `REACHING_WRITES` / `REACHING_READS` would replace.
- **P3 no checker shortcut.** A `check_root_node_problems` on `<code>` answers nothing here (the
  model is clean). Count it, but it is not an error.
- **P4 tool use** (since round 41). `DF_reaching_queries` (and `DF_queries`): did the worker ask
  `REACHING_WRITES` / `REACHING_READS`, and did it still fall back to a console probe (P1)? A run
  without the tool (round 40, or `disallowedTools` in the meta) has 0 by construction.
