You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.fleet` (Vehicle with a plate, a free-text mileage and services; Service with what and
cost) and the solution `mcp.study.fleet.sandbox` whose model `mcp.study.fleet.sandbox` holds five
vehicles. The language is shipped to customers as an MPS plugin; they keep many vehicles in projects
you cannot open, and the sandbox stands in for their models. MPS is running with the MCP server
enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: `Vehicle.mileage` is free text today (values like `12000 km`, ` 8500 ` or `150km`). For the
next release the mileage is an integer number of kilometres.

1. A text converts when, after removing all spaces and one trailing `km`, only digits remain. A
   vehicle without a mileage stays without one.
2. Customers' existing vehicles keep their mileage when they upgrade. A text that cannot be
   converted must not be lost, and the upgrade must report it to the customer, naming the vehicle
   and the text, so that they can enter the number by hand.
3. The vehicle editor shows the integer mileage and no longer the old text.
4. Rebuild the language and upgrade the sandbox the way a customer project would be upgraded.
5. Done when: the language builds cleanly; after the upgrade `V-1` has mileage 12000, `V-2` 8500,
   `V-5` 150, `V-4` none; `V-3` has no integer mileage, still holds `twelve thousand`, and the upgrade
   reported it; the sandbox has no errors.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
