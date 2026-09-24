## Key concept FQNs for property constraints

All under `jetbrains.mps.lang.constraints.structure` unless noted:

| Surface | FQN | Notes |
|---|---|---|
| validator function wrapper | `ConstraintFunction_PropertyValidator` | Holds `body` → `StatementList`; trailing expression is the boolean result |
| getter function wrapper | `ConstraintFunction_PropertyGetter` | Holds `body`; returns the displayed value |
| setter function wrapper | `ConstraintFunction_PropertySetter` | Holds `body`; must assign `node.<prop> = propertyValue` after transforming |
| `propertyValue` | `ConstraintsFunctionParameter_propertyValue` | Candidate value inside validator/setter |
| `node` | `ConstraintsFunctionParameter_node` | Owning node inside getter/validator/setter |
