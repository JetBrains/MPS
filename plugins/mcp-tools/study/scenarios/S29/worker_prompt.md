You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.loans` (Loan with a memo, renewals, an optional borrower, copies and a desk; Copy; Member;
Desk) and the solution `mcp.study.loans.sandbox` whose model `mcp.study.loans.sandbox` holds members and
loans. MPS is running with the MCP server enabled and this project open. Follow CLAUDE.md and the
MPS skills. Nobody can answer questions while you work; decide and carry on.

Task: two changes to the language.

1. Rename `Copy.days` to `loanDays`.
2. From now on every loan names its borrower (`Loan.borrower` is optional today). Existing loans
   keep their borrower; a loan that has none stays an error — do not invent a borrower.
3. Rebuild the language and bring the existing loans along.
4. Done when: the structure matches 1-2; the language builds cleanly; `L-1` still names Ada and
   `L-2` Bo with no errors; `L-3-hold`'s only error is its missing borrower.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
