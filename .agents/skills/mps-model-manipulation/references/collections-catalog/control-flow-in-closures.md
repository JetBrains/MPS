## Control flow within closures

Inside a closure passed to `selectMany`/`translate`/`forEach`/sequence initializer:

- `skip;` — abort this element, go to next input element (concept: `SkipStatement`).
- `stop;` — terminate the outer sequence construction entirely, discarding the rest of the input (concept: `StopStatement`).
- `yield expr;` — emit into the output sequence (from closures language; see `closures-catalog.md`).

`skip`/`stop` only make sense in the enumerated contexts; using them elsewhere yields a typesystem error.
