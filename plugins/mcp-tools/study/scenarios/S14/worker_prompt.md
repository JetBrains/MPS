You are working in the current folder, which contains a JetBrains MPS project with the solution
`flow.study` and its model `flow.study.code`, which holds one BaseLanguage class `Ledger` with a
static method `settle(int[] amounts, boolean strict)`. MPS is running with the MCP server enabled
and this project open. Follow CLAUDE.md and the MPS skills.

Task: answer five questions about which assignments in `settle` reach which reads, as MPS's
dataflow analysis decides them. Write the answers to `ANSWERS.md` in the current folder, one
`## Q<n>` section per question, each with the answer and the evidence it rests on.

1. Q1: Which assignments to `fee` can the read of `fee` in `total = total - fee` see?
2. Q2: Which assignments to `total` can the read of `total` in `return total` see?
3. Q3: Can the value written by the initializer `int last = -1` reach any read of `last`? If so, which?
4. Q4: Which assignments to `fee` can the read of `fee` in `System.out.println(fee)` see?
5. Q5: Which reads does the value written by `fee = fee + 1` feed?

Name each assignment and read by its source text, e.g. `int fee = 5` or `fee = 0`.

Done when: `ANSWERS.md` answers all five questions.

Do not modify any model of this project. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
