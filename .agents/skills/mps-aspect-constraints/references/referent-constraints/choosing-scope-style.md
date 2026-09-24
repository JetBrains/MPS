## Choosing between the two approaches

Pick **inherited** when:
- The same scope serves many reference links in the language.
- The scope's content naturally lives on an ancestor (enclosing block, program, module).
- Multiple providers contribute overlapping scopes along the chain — `parent scope` composes them cleanly.

Pick **imperative reference scope** when:
- The scope is tiny and highly local to one reference.
- No reasonable ancestor would own it.

Any language that grows beyond a handful of references should gravitate to the inherited form.
