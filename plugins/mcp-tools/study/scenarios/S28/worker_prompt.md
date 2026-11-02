You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.shifts` (Roster with a crew of Workers, shifts and an optional lead; Shift with a day, a
covered flag and an optional worker) and the solution `mcp.study.shifts.sandbox` whose model
`mcp.study.shifts.sandbox` holds three rosters. The language is used only inside this project and has
never been published; that model is the only one that uses it. MPS is running with the MCP server
enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: change the language and bring the three rosters along. Move the existing values with Console
commands over all rosters, not by editing shifts one by one.

1. A shift can be worked by several workers: replace the single worker of a Shift by a list of
   workers. Every existing assignment is kept (Mon->Ann, Thu->Ann, Tue->Bob, Thu->Di, Fri->Cy,
   Sun->Ed, Tue->Ed); unassigned shifts stay unassigned. At the end the language must not keep the
   old single-worker slot.
2. Every roster must name a lead. A roster that has none gets the first worker of its crew.
3. Rename `Shift.day` to `date`.
4. Remove the `covered` flag from shifts; what is stored in it is not needed.
5. Rebuild the language.
6. Done when: the structure matches 1-4 with nothing left over from the old slots; the language
   builds cleanly; `Week1`'s lead is Ann, `Week2`'s Cy, `Week3`'s Ed; the seven assignments above are
   the only ones; MPS reports no errors on any root in the sandbox.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
