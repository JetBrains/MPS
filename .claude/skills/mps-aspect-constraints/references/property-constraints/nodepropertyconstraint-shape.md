## Shape of `NodePropertyConstraint`

`NodePropertyConstraint`:
- `applicableProperty` — ref to the `PropertyDeclaration`
- `propertyGetter` — `ConstraintFunction_PropertyGetter` body; returns what the editor shows / callers read
- `propertySetter` — `ConstraintFunction_PropertySetter` body; receives `propertyValue` and `node`, stores transformed value (e.g. clamp, normalize, parse)
- `propertyValidator` — `ConstraintFunction_PropertyValidator` body; returns `boolean`; rejects invalid user input without storing

Available parameters inside the body (concept FQNs under `jetbrains.mps.lang.constraints.structure`):
- `node` — `ConstraintsFunctionParameter_node` — the owning node (typed)
- `propertyValue` — `ConstraintsFunctionParameter_propertyValue` — candidate value (setter/validator)

> **⚠ Watch out — naming inconsistency**: property-constraint parameters use `Constraint**s**FunctionParameter_*` (plural `Constraints`), while most placement-rule parameters in `canbe-rules.md` use the singular `ConstraintFunctionParameter_*`. The only placement-rule parameter that follows the plural form is `ConstraintsFunctionParameter_node`. Copy the FQNs exactly — a missing or extra `s` silently fails to resolve and the blueprint will be rejected.

Use setters for normalization (trim, clamp, uppercase), validators for pure acceptance checks, getters only when the stored value differs from the displayed value. The body's trailing expression is the returned value — no explicit `return` keyword is required on a validator/getter.
