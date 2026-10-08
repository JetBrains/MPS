# Variable Declarations, Type Blueprints, and Initializers

Type-child choices for `LocalVariableDeclaration`, method return types, and parameter types; plus blueprints for the smodel collection / sequence / set / list / map types and their creator expressions.

## Type child choices

When declaring a local variable that holds a node or collection of nodes:

| Intended MPS type | Type child concept | Notes |
|---|---|---|
| `node<C>` | `SNodeType` (ref → concept of C) | single node reference |
| `nlist<C>` | `SNodeListType` (ref `elementConcept` → ConceptDeclaration) | persistent children collection (link list) |
| `node-ptr<C>` | `SNodePointerType` (ref `concept` → ConceptDeclaration) | persistent pointer to a node (survives detach / reload) |
| `concept<C>` | `SConceptType` (ref `conceptDeclaration`) | typed concept handle (e.g. for reflection) |
| `search scope` | `SearchScopeType` | resolution scope for references |
| `enummember<E>` | `SEnumerationMemberType` (ref `enumerationDeclaration`) | single member of an MPS enum |
| `sequence<node<C>>` | `SequenceType(elementType: SNodeType)` | lazy iterable |
| `list<node<C>>` | `ListType(elementType: SNodeType)` | mutable ordered list |
| `set<node<C>>` | `SetType(elementType: SNodeType)` | mutable unordered set |
| `boolean` | `BooleanType` | primitive |

All four collection types follow the same nesting pattern:
```
CollectionType
  elementType: SNodeType
                 concept → <ConceptDeclaration noderef>
```

## Smodel type blueprints

### `node<C>` — a typed node reference

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
  "references": [{ "role": "concept", "target": "<ConceptDeclaration-noderef>" }]
}
```

### `nlist<C>` — persistent child collection

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.SNodeListType",
  "references": [{ "role": "elementConcept", "target": "<ConceptDeclaration-noderef>" }]
}
```

`nlist<C>` is what you get when you declare a 0..n child link — it is persistent (writes go straight to the parent), unlike a `list<node<C>>` which is an independent in-memory list.

### `node-ptr<C>` — persistent node pointer

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.SNodePointerType",
  "references": [{ "role": "concept", "target": "<ConceptDeclaration-noderef>" }]
}
```

Use `node-ptr<C>` when you need to remember a node across operations that might detach it, or to store a reference outside the current model/session. Dereference with `.resolve(repo)` (behavior method).

### `concept<C>` — typed concept handle

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.SConceptType",
  "references": [{ "role": "conceptDeclaration", "target": "<ConceptDeclaration-noderef>" }]
}
```

Populate with a `concept/C/` literal (`SConceptTypeLiteral`, id `5472444609684539882`) or the `.concept` operation on a node.

### `search scope` and `enummember<E>`

```text
{ "concept": "jetbrains.mps.lang.smodel.structure.SearchScopeType" }

{
  "concept": "jetbrains.mps.lang.smodel.structure.SEnumerationMemberType",
  "references": [{ "role": "enumerationDeclaration", "target": "<EnumerationDeclaration-noderef>" }]
}
```

## Collection type blueprints (for use with `mps_mcp_update_node`)

Use these to correct a type that the Java parser produced incorrectly (usually a method return type).

The pure collection type table (`SequenceType`, `ListType`, `SetType`, their creators and the `sequence` ⊃ `list`/`set` hierarchy) is in `references/collections-catalog/core-concepts-types-null-semantics.md` in the `mps-collections-and-closures` skill root after loading that companion skill from the same origin.

### `sequence<node<Type>>` (read-only iterable return types)

```json
{
  "concept": "jetbrains.mps.baseLanguage.collections.structure.SequenceType",
  "children": [{
    "role": "elementType",
    "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
      "references": [{
        "role": "concept",
        "target": "r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)/1068431790189"
      }]
    }]
  }]
}
```

### `list<node<Type>>` (modifiable list return types)

```json
{
  "concept": "jetbrains.mps.baseLanguage.collections.structure.ListType",
  "children": [{
    "role": "elementType",
    "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
      "references": [{
        "role": "concept",
        "target": "r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)/1068431790189"
      }]
    }]
  }]
}
```

### `new arraylist<node<Type>>` (parsed automatically; shown for manual construction)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression",
  "children": [{
    "role": "creator",
    "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit",
      "children": [{
        "role": "elementType",
        "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
          "references": [{
            "role": "concept",
            "target": "r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)/1068431790189"
          }]
        }]
      }]
    }]
  }]
}
```

Replace the `target` ref with the concept declaration node ref appropriate for your element type (e.g. `CatchClause`, `Expression`, etc.). Use `mps_mcp_search_concepts` to find the node ref for a given concept name.

### `new hashset<node<Classifier>>` (manually constructed set)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression",
  "children": [{
    "role": "creator",
    "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.collections.structure.HashSetCreator",
      "children": [{
        "role": "elementType",
        "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
          "references": [{
            "role": "concept",
            "target": "<concept-declaration-noderef>"
          }]
        }]
      }]
    }]
  }]
}
```

## Variable initializers for collections

| MPS expression | Creator concept | Wrapping concept |
|---|---|---|
| `new arraylist<node<C>>` | `ListCreatorWithInit` | `GenericNewExpression` |
| `new hashset<node<C>>` | `HashSetCreator` | `GenericNewExpression` |

Both creators take a single `elementType` child (an `SNodeType` with `concept` reference). `GenericNewExpression` wraps the creator via the `creator` role.

**Note**: MPS syntax has no `()` on these constructors — `new arraylist<T>` is written without parentheses, unlike Java's `new ArrayList<T>()`.
