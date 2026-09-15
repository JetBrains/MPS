# Referencing

**Definition.** A new language is built *with knowledge of* a referenced one and points into its nodes, but the two stay in **separate fragments** — semantically tied (it points in), not syntactically mixed. The cheapest modularity move in MPS, but **not decoupled**: changes to the referenced language's exported concepts or behavior contracts break consumers immediately.

**Choose it when** you only need a semantic link between separate models and the referencing language may know the referenced one directly. **Not when** constructs must be written inline (→ extension/embedding) or the referenced core must stay independent of this consumer (→ reuse).

**Running example.** A `metrics` language defines a catalog of named metrics (numeric or boolean). A separate `dashboards` language defines dashboards whose widgets *point at* metrics. Two fragments, one dependency direction (`dashboards` → `metrics`): the catalog never heard of dashboards, and a dashboard *references* a metric rather than containing one.

## MPS mechanics

**Structure — reference, never containment.** That distinction *is* referencing. → `mps-aspect-structure-concepts`.

```text
// metrics (referenced catalog, its own fragment)
concept Metric implements INamedConcept   children: MetricKind kind 1   // Numeric | Boolean
// dashboards (references metrics, contains none)
abstract concept Widget   references: Metric metric 1     // <-- cross-language reference
concept LineChart / StatusLight extends Widget            // want numeric / boolean
```

**Smart references + editor.** Keep wrappers near-invisible: the user types the target name (`Web.latency`) and MPS instantiates the wrapper after completion. → `mps-aspect-editor`, smart-reference shape in `mps-aspect-structure-concepts`.

**Search scope — the heart of referencing.** Every cross-language reference needs a `search scope` restricting valid targets. Start with the *narrowest* meaningful scope (over-broad scope is the #1 correctness/UX bug): climb to the owning root, walk its declared imports, aggregate legal targets. `contextNode` is the always-available scope-function implicit (the referrer, or its prospective parent during completion). When the scope naturally belongs to an ancestor, prefer supplying it from that ancestor's `ScopeProvider.getScope` over a reference-side function. → `mps-aspect-constraints`; scope-body syntax is smodel → `mps-model-manipulation`.

```text
link {metric} search scope:
  contextNode.ancestor<concept = Dashboard, +>.imports.catalog.metrics;  // only imported catalogs
```

**Behavior naming contracts — share knowledge, not strings.** The dashboard generator must know the *names* of functions the metrics generator emits. Centralize naming rules as **behavior methods on the referenced concept** and have both generators call them — turning brittle string conventions into typed contracts. → `mps-aspect-behavior`.

```text
concept behavior Metric {
  public string seriesId()     { this.parent : MetricsCatalog.name + "." + this.name; }
  public string accessorName() { "read_" + this.name; }
}
```

**Cross-language checks.** Referencing *permits* reasoning over referenced types — e.g. a status light binds only to a boolean metric, a line chart only to a numeric one. Implement as checking rules over the referenced type system. → `mps-aspect-typesystem`.

**Generation.** Keep generators **separate**: the dashboard generator emits code calling `metric.seriesId()`/`accessorName()`; it does not interleave into the metrics generator. → `mps-aspect-generator`.

## Recipe

1. **Accessories** — add the referenced language to used/extended languages + any generator runtime dep. (MPS dependency ≠ taxonomy verdict.) → `mps-aspect-accessories`
2. **Structure** — model foreign elements as `references`, never children.
3. **Editor** — project references compactly; rely on smart references.
4. **Constraints** — a `search scope` on *every* cross-language reference; start narrow.
5. **Behavior** — centralize naming contracts on the *referenced* language.
6. **Typesystem/checking** — reason over referenced types (allowed here).
7. **Generator** — keep separate; call the shared behavior contracts.
8. **Examples** — store catalog and dashboard models as separate roots to preserve the homogeneous-fragment property.

## Pitfalls

- **Over-broad scopes** — the #1 bug; offer only metrics of *imported* catalogs, not every metric in the project.
- **Duplicated naming logic** — both generators building `"read_" + name` independently; a later rename breaks one silently.
- **Accidental containment** — containing instead of referencing quietly changes the modularity kind.
- **Unstable exported surface** — referenced concept names, kinds, and behavior signatures are a public API; keep them narrow and stable.

**Validation:** see `validation.md` § Referencing.
