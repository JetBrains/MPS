## `BaseConcept` built-in methods (inherited by every concept)

Every concept implicitly extends `BaseConcept`, which provides two virtual methods you can override to customise how nodes appear in the UI:

| Method | Purpose |
|---|---|
| `getPresentation()` → `String` | Text shown in completion menus and some tree views. Default returns the node's name (if any). Override to return a more descriptive label. |
| `getSideIcon()` → `Icon` | Icon shown in completion menus. Override to return a concept-specific icon. |

Both are declared on `BaseConcept` in `jetbrains.mps.lang.core.behavior` and are overridable virtual methods — set `overriddenMethod` to the `BaseConcept` declaration when overriding.
