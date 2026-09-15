# Reuse

**Definition.** A language developed **independently** of the context where it is later reused. Defining constraint: the **reusable core may not depend on the host** — it cannot import host concepts. Instead the core exposes **hooks** (abstract concepts, abstract behavior contracts, generator hook points) that a separate **adapter** language specializes. This is what separates reuse from referencing (where the consumer *may* know the other directly).

**Choose it when** you want a core valuable across many host domains. **Not when** a direct dependency on a single host is acceptable (→ referencing/extension) — reuse's extra abstraction only pays off when independence has real value. Highest design cost, highest long-term payoff.

**Running example.** A `statemachine` core models `State`s and `Transition`s — valuable everywhere (door controller, checkout flow, protocol), so it must **not** know what triggers a transition or what it does. Those variation points are left as **abstract hooks**: `Guard` (when may it fire?) and `Action` (what happens?). A separate adapter binds them to one concrete host.

## MPS mechanics

**Structure — the hook is an abstract concept**, the *only* place host-specific semantics may enter. → `mps-aspect-structure-concepts`.

```text
// statemachine (core — knows nothing about sensors/IO/any host)
concept Transition  references: State target 1   children: Guard guard 0..1; Action action 0..1
abstract concept Guard  extends BaseConcept       // <-- hook: firing condition
abstract concept Action extends BaseConcept       // <-- hook: effect
// statemachine.sensors (adapter — depends on statemachine AND a sensor/IO host)
concept ThresholdGuard  extends Guard   references: Sensor sensor 1   properties: above : int
concept SetOutputAction extends Action  references: Output output 1   properties: value : int
```

The core never references `Sensor`/`Output`; only the adapter does. Swap the adapter → the same state machine drives a different host.

**Behavior/typesystem — an abstract contract keeps core rules stable.** The core defines abstract behavior the adapter fulfills; core rules are expressed **only** in terms of the contract, never the host. → `mps-aspect-behavior` + `mps-aspect-typesystem`.

```text
// core:    concept behavior Guard  { public boolean evaluate() is abstract; }
// adapter: ThresholdGuard.evaluate overrides Guard.evaluate { sensor.read() > above }
```

## Two generation strategies — pick deliberately

| Variant | Generator shape | Best when | Main cost |
|---|---|---|---|
| **Separated** | Core emits an abstract/generic artifact; adapter emits a subclass/configuration | Clean architecture; a runtime indirection layer is acceptable | An extra abstraction layer |
| **Interwoven** | Core/host emits **hook nodes**; adapter **injects** code by reduction/weaving | Generated code must be physically inlined into the host artifact | Brittle generator ordering & contracts |

**Separated** (the default): the core emits a driver class with the transition skeleton plus **abstract** hook methods; the adapter emits a subclass implementing them. Source modularity survives into the generated code. → `mps-aspect-generator`.

```text
// core emits:    abstract class DoorControllerBase { ... abstract boolean guard_0(); abstract void action_0(); }
// adapter emits: class DoorController extends DoorControllerBase {
//                  boolean guard_0() { return io.read("pressure") > 50; } void action_0() { io.write("latch",1); } }
```

**Interwoven** (only when inlining is mandatory): when action code must live *inside* the core's generated `step()` rather than behind a virtual call, the core emits a **`PlaceholderStatement`** at each hook site and the adapter reduces it. Not magic weaving — a **planned generator hook** plus **generator priorities** guaranteeing the placeholder exists before the adapter runs and is gone before text gen. → + `mps-aspect-generation-plan`.

```text
// core emits inside step():   placeholder("sm.action", transition);
// adapter reduction:          PlaceholderStatement [id == "sm.action"] -> the action's concrete statements
```

## Recipe

1. **Core language** — forbid direct imports of host concepts. If you need host knowledge, it is no longer a reusable core.
2. **Structure** — introduce an abstract hook concept (`Guard`, `Action`) as the sole entry point for host specifics.
3. **Behavior/typesystem** — expose abstract methods/contracts (`evaluate()`, `perform()`); express core rules only in terms of them.
4. **Adapter language** — a *separate* module depending on both core and host; put **all** cross-language references here.
5. **Separated generation** — core emits abstract methods/extension points; adapter implements them.
6. **Interwoven generation** — core/host emits explicit placeholder hooks; adapter reduces them; define priorities carefully.
7. **Fragments** — core models stay homogeneous and independent; adapter models may be host-specific.
8. **Contracts as public APIs** — version and test method names, placeholder IDs, mapping labels.

Robust sequence: stabilize the core abstraction → add the adapter → choose separated vs interwoven based on whether you can afford the runtime abstraction layer.

## Pitfalls

- **Host leakage into the core** — one import of a host concept (`Sensor` in `statemachine`) destroys reusability; enforce as a review rule.
- **Unplanned interwoven generation** — if the core generator never emitted hooks, interwoven reuse can't be made clean later; decide separated-vs-interwoven *before* writing the core generator.
- **Fragile priority chains** — make interwoven priorities explicit, not incidental, with generation plans or generator priorities.
- **Skipping the adapter** — host references in the core "just this once" collapse reuse into referencing.

**Validation:** see `validation.md` § Reuse.
