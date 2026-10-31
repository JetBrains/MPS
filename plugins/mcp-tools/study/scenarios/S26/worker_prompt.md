You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.tickets` (Event with perks and an optional highlight that points at one of its perks;
perks are EarlyBird with cutoffDays and percent, or Backstage with passes) and the solution
`mcp.study.tickets.sandbox` whose model `mcp.study.tickets.sandbox` holds two events. The language is
shipped to customers as an MPS plugin; they keep many events in projects you cannot open, and the
sandbox stands in for their models. MPS is running with the MCP server enabled and this project open.
Follow CLAUDE.md and the MPS skills.

Task: replace the EarlyBird perk for the next release.

1. Add a perk concept `TimedDiscount` with the same data as EarlyBird (`cutoffDays`, `percent`) plus a
   string `label` that may stay empty, and a readable editor for it.
2. After customers upgrade, every existing EarlyBird is a TimedDiscount with its cutoffDays and
   percent, and every highlight that pointed at an EarlyBird points at that TimedDiscount. The upgrade
   must move the existing data without any hand-written code.
3. Users must no longer be able to create an EarlyBird anywhere (completion must not offer it), but
   customers' models that still hold one must keep opening and checking.
4. Rebuild the language and upgrade the sandbox the way a customer project would be upgraded.
5. Done when: the language builds cleanly; the sandbox holds no EarlyBird and three TimedDiscounts
   (`early30` 30/15, `early7` 7/5, `summerEarly` 14/10); `Spring Gala`'s highlight points at `early7`;
   the sandbox has no errors.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
