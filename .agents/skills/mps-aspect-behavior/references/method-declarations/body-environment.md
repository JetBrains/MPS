## Body environment

Inside a method body:

- `this` — the receiver node, typed as `node<OwningConcept>` (instance methods only — non-virtual, virtual, abstract; not available in `static` or `virtual static` bodies)
- all concept properties/children/references are in scope via smodel syntax (`this.prop`, `this.childRole`, etc.)
- call other behavior methods with `this.otherMethod(...)` / `someNode.otherMethod(...)` (instance) or `OwningConcept.otherMethod(...)` (static)

For MPS-typed return types (`sequence<node<X>>`, `list<node<X>>`) the Java parser caveats from the `mps-model-manipulation` skill apply — construct or replace `returnType` with the correct MPS blueprint after parsing.
