# Property Constraints — Validators, Setters, Getters

Open this file when defining a `NodePropertyConstraint` — picking validator vs. setter vs. getter, writing per-property bodies, aliasing the `{name}` property, declaring `set <read-only>`, or building sibling-uniqueness validators.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| Shape of `NodePropertyConstraint` | `references/property-constraints/nodepropertyconstraint-shape.md` |
| Key concept FQNs for property constraints | `references/property-constraints/key-concept-fqns.md` |
| Validator example — `Compound.cardinality` (ChemMastery) | `references/property-constraints/validator-example-compound-cardinality.md` |
| Derived getter example — `Element.details_url` (ChemMastery) | `references/property-constraints/derived-getter-example.md` |
| Property getter delegation and read-only semantics | `references/property-constraints/getter-delegation-read-only.md` |
| Validator that enforces sibling uniqueness | `references/property-constraints/sibling-uniqueness-validator.md` |
