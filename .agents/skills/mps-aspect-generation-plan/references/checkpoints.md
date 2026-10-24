# Checkpoints and Cross-Model Reference Resolution

Checkpoints persist the transient model state at a point in time. Other plans (or later steps in the same plan) can look up nodes in the persisted checkpoint via mapping labels, enabling cross-model reference resolution.

## `CheckpointSpecification` subtypes (child role `cpSpec` of `Checkpoint`)

| Concept | Description |
|---|---|
| `InPlaceCheckpointSpec` | Declares a new checkpoint inline; has a `name` property |
| `DeclaredCheckpointSpec` | References a `CheckpointDeclaration` step declared elsewhere; has a `cpDecl` reference |
| `InPlaceCheckpointRefSpec` | References another `Checkpoint` step by its node ref; has a `checkpoint` reference |

## `CheckpointDeclaration` step

A pure declaration with a `name`. It does not persist state; it is a shared label that other plans use via `DeclaredCheckpointSpec`. Keep declarations in a shared plan and reference them from others.

## `CheckpointSynchronization` step

Contains a `checkpoint` child (a `CheckpointSpecification`). Reads mapping labels from the named checkpoint but does not persist anything itself (read-only). Used when a plan needs to resolve references into another plan's checkpoint without producing its own.

## Pattern for cross-model generation

```
Plan A:
  transform language Foo
  checkpoint "after_foo"          ← InPlaceCheckpointSpec
  transform language Bar          ← Bar generators resolve refs via "after_foo"

Plan B (another model, same genplan):
  synchronize with checkpoint "after_foo"   ← reads A's checkpoint
  transform language Baz
```

## Cross-model reference resolution rules

Mapping labels populated during phase N are accessible to phase N+1 only if:
1. The models share the same generation plan.
2. That plan inserts a `Checkpoint` between phases N and N+1.

In generator templates, use:
- `genContext.get output by label and input` — for nodes generated through reduction/root mapping rules
- `genContext.get output for model` — for nodes generated through conditional root mapping rules

The checkpoint model is persisted in the generator caches (as `<plan>-<checkpoint>` files) until a rebuild. It lives in the shared `checkpoints` module (one for all open projects) as `<model>@<checkpoint name>`, lower-cased with non-alphanumerics as `_` (e.g. `foo.structure@descriptorclasses`); `mps_mcp_generation` `PLAN` gives it as the CHECKPOINT step's `checkpointModelName` (when `persisted: true`) and `TRANSIENT_MODELS` lists it under `checkpoints` with its `reference`. A debug root inside each checkpoint lists mapping label names with pointers to the stored input and output nodes.
