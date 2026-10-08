You are working in the current folder, which contains a JetBrains MPS project with the language
`jetbrains.mps.samples.Expressions` (a small expression language with the types `Int`, `Long`,
`Float`, `Number`, `Element` and `Bool`) and the solution `jetbrains.mps.samples.Expressions.sandbox`
with model `jetbrains.mps.samples.Expressions.sandbox` holding the roots `Main`, `Simple` and
`TypeError`. MPS is running with the MCP server enabled and this project open. Follow CLAUDE.md
and the MPS skills.

Task: make `Bool` values assignable where a `Number` is required, and prove it with the type checker.

1. Create a model `jetbrains.mps.samples.Expressions.scratch` in the sandbox solution with one root
   `Probe` that holds `Number n = true` and `Int i = 1.3 F`, the way the existing sandbox roots hold
   their declarations.
2. Find out from the type checker that `Number n = true` is a type error before your change, and
   which typesystem rule reports it.
3. Add a typesystem rule to the language so that `Bool` is a subtype of `Number`. Rebuild the language.
4. Find out from the type checker that `Number n = true` is now accepted, that `Int i = 1.3 F` is
   still an error, and whether `true + 1` now type-checks, and with what type.
5. Write the before and after evidence to `EVIDENCE.md` in the current folder.

Done when: the language builds, `EVIDENCE.md` holds the evidence, the scratch model with `Probe` is
still there, and the sandbox model still holds only `Main`, `Simple` and `TypeError`, unchanged.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
