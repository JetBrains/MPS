You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.loans` (Loan with a memo, renewals, an optional borrower, copies and a desk; Copy; Member;
Desk) and the solution `mcp.study.loans.sandbox` whose model `mcp.study.loans.sandbox` holds members and
loans. The language is shipped to customers as an MPS plugin; they keep many loans in projects you
cannot open, and `mcp.study.loans.sandbox` stands in for their models. MPS is running with the MCP
server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: change the language for the next release so that customers' existing loans keep working.

1. Rename `Loan.memo` to `remark`.
2. A loan no longer needs a desk: `Loan.desk` becomes optional.
3. Every loan must have at least one copy (`Loan.copies` is optional today).
4. Every loan must name its borrower (`Loan.borrower` is optional today).
5. Customers' existing loans keep their copies and borrowers when they upgrade. A loan that has
   no copy or no borrower stays an error: do not invent copies or borrowers. Customers edit each
   loan's copies and borrower in the loan editor and see nothing else for them there.
6. Rebuild the language and upgrade the sandbox the way a customer project would be upgraded.
7. Done when: the structure matches 1-4; the language builds cleanly; the sandbox is upgraded;
   `L-1` and `L-2` have no errors and keep their copies, borrower, remark and renewals; the only
   errors on `L-3-hold` are its missing copy and missing borrower.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
