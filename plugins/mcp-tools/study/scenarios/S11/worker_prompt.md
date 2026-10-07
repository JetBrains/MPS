You are working in the current folder, which contains a JetBrains MPS project with the language
`jetbrains.mps.samples.Expressions` (a small expression language with the types `Int`, `Long`,
`Float`, `Number`, `Element` and `Bool`) and the solution `jetbrains.mps.samples.Expressions.sandbox`
with model `jetbrains.mps.samples.Expressions.sandbox` holding the roots `Main`, `Simple` and
`TypeError`. MPS is running with the MCP server enabled and this project open. Follow CLAUDE.md
and the MPS skills.

Task: answer five questions about the types of this language, as the MPS type checker decides
them. Write the answers to `ANSWERS.md` in the current folder, one `## Q<n>` section per question,
each with the answer and the evidence it rests on.

1. Q1: Is the type `Int` a subtype of `Float`, i.e. does an `Int` value fit where a `Float` is
   required?
2. Q2: List every supertype of `Int`.
3. Q3: In root `Main`, what type does the variable `E` (declared `var E = 10`) have, and which
   typesystem rule gives it that type?
4. Q4: In root `TypeError`, is the declaration `Int anotherInt = 1.3 F` well-typed?
5. Q5: In root `Main`, the initializer of `var D` is `10 * 2.6 F`. What type must its left operand
   `10` have in that position?

Done when: `ANSWERS.md` answers all five questions.

Do not modify any MPS model. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
