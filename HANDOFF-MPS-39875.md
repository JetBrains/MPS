# Hand-off: MPS-39875 — broken inner-class references in `java_classes` stubs

Audience: an agent (or engineer) picking this up. Self-contained; assumes no memory of the session.

- **Issue:** [MPS-39875](https://youtrack.jetbrains.com/issue/MPS-39875) — "Java stubs: references on inner classes inside the java stub model are broken."
- **Subsystem:** BaseLanguage / java stubs (`core/java-stub`).
- **Branch / fix commit:** `261/vaclav/stub`, `fd7eb739b3e4` ("MPS-39875 - resolve inner-class stub references when the imported folder is not a classpath root").
- **Status:** Fixed + committed. One **uncommitted** follow-up test method (see [Working-tree state](#working-tree-state)). Confirmed **not a regression**.

---

## TL;DR

Importing compiled Java classes as a `java_classes` stub from a folder that is **not a proper classpath root** breaks inner-class references. Root cause: a stub model's *name* comes from the **imported folder structure**, but a reference's *package* is computed from the target class's **bytecode fqn**; when they disagree, `StubReferenceFactory` cannot tell that a class's own inner classes live in the same model.

Two manifestations:
- **Named package, folder ≠ package** → inner classes load as members, but their field/method references are unresolved (red).
- **Default (empty) package** → `new SModelName("")` throws, is caught in `ASMModelLoader.completeModel`, and aborts the whole load → the class shows up as an empty shell.

The fix makes `StubReferenceFactory.create` (a) not build an `SModelName` from an empty package, and (b) resolve within the current model when it owns the target's top classifier. Only otherwise-broken references are affected.

The separate "type variable lost" observation (`OuterClass<A>.InnerClass__1` shown as `InnerClass__1`) is **by design**, not part of this bug.

---

## Root cause (verified)

1. `JavaClassStubsModelRoot.getModelDescriptors_` (`core/java-stub/source_gen/jetbrains/mps/persistence/java/library/JavaClassStubsModelRoot.java`, ~L191-236) derives each stub model's package **from directory names**, recursively (`pack = prefix + '.' + dirName`), and only descends into **subdirectories** (never `.class` files sitting directly in the model-root folder).
2. `ClassifierUpdater.addClassifierReference` (`core/java-stub/source_gen/jetbrains/mps/baseLanguage/javastub/ClassifierUpdater.java`, ~L658-668) computes a reference's `pack` from the target class's **bytecode fqn** (`NameUtil.namespaceFromLongName(clsType.getName())`).
3. `StubReferenceFactory.create` (`core/java-stub/source/jetbrains/mps/java/stub/StubReferenceFactory.java`) decided "same model" by **string-comparing** `pack` (bytecode) with `myModelLongName` (folder-derived): `if (pack.equals(myModelLongName)) …`. When the imported folder is not a classpath root these differ, so it fell through to `findModels(new SModelName(pack, myStereotype))` and then to a broken `SNodePointer(null, targetNodeId)` — even though the inner-class target is a member of the very class being loaded (same model).
   - For a **default-package** class, `pack == ""`, and `new SModelName("", stereotype)` **throws** (`"Simple name of the model should not be empty"`) → propagates through `ClassifierUpdater → ASMModelLoader.completeModel` → aborts the load → empty class.

**Trigger** is *not* default-vs-named package nor inside-vs-outside the project — it is **importing a folder that is not the classpath root**, e.g.:
- `javac OuterClass.java` (no `-d`) leaves `OuterClass.class` in a folder whose name ≠ its package; or
- selecting the **parent** of the classpath root as the library path (this was Maria's actual case — an extra segment gets *prepended*, so the real package becomes a *suffix* of the model name, e.g. model `untitled17.foo` vs bytecode package `foo`).

Importing a proper classpath root (folder path == package) works fine — which is why it did not reproduce for people who imported correctly.

---

## The fix (`fd7eb739b3e4`)

File: `core/java-stub/source/jetbrains/mps/java/stub/StubReferenceFactory.java` (hand-written; **not** generated). Method `create(...)`. Diff summary:

```java
// (a) never construct SModelName from an empty (default) package -> avoids the throw that aborts the load
Collection<VisibleModel> possibleModels = pack.isEmpty()
    ? Collections.<VisibleModel>emptyList()
    : findModels(new SModelName(pack, myStereotype));

if (possibleModels.isEmpty()) {
  // (b) folder-derived model name != reference's bytecode package: if THIS model owns the target's
  //     top classifier, resolve within it instead of leaving the reference broken.
  if (myModel.isKnownRoot(targetTopClassifier)) {
    source.setReference(role, ResolveInfo.of(new SNodePointer(myModelReference, targetNodeId), resolveInfo));
    return;
  }
  source.setReference(role, ResolveInfo.of(new SNodePointer(null, targetNodeId), resolveInfo)); // unchanged fallback
  return;
}
// ... rest unchanged ...
```

**Rationale / safety:** the `isKnownRoot(targetTopClassifier)` check is name-independent, so it recognizes intra-model references regardless of the folder/package name mismatch. Both changes only affect references that would *otherwise be broken*; every well-formed resolution path (line-80 same-model shortcut, single/multi model-by-name matches) is untouched. Documented narrow limitation in-code: if several non-classpath-root folders are merged into one model and collide on a short root name, the fallback could pick a same-named root — still strictly better than the guaranteed-broken reference it replaces.

---

## Tests

File: `core/java-stub/test/jetbrains/mps/java/stub/InnerClassStubReferenceTest.java` (`EnvironmentAware`; registered in `testbench/tests/jetbrains/mps/testsuites/CoreTestSuite.java`, ~L66). Builds **real** stub models via `JavaClassStubsModelRoot` over a fake, unregistered `SModuleBase` (so `findModels` is always empty → the fix path is genuinely exercised, not resolving against some ambient model). Named-package cases reuse the compiled `Outer1` fixture from `ParameterizedInnerClassTest`; the default-package case is compiled in-test via `ToolProvider`.

| Test method | Scenario | Expectation |
|---|---|---|
| `test_MPS_39875_classpathRoot_namedPackage` | folder path == package (well-formed) | resolves (regression guard) |
| `test_MPS_39875_folderNameMismatch_namedPackage` | folder name shares nothing with package (`xxx` vs `jetbrains.mps.java.stub`) | resolves after fix |
| `test_MPS_39875_importedOneLevelTooHigh_namedPackage` | **Maria's actual case**: imported one level too high → real package is a *suffix* of the model name (`extra.jetbrains.mps.java.stub`) | resolves after fix — **uncommitted** |
| `test_MPS_39875_defaultPackage_subfolder` | default-package classes in a subfolder (would crash pre-fix) | loads without crashing; refs resolve |
| `test_MPS_39875_defaultPackage_atRoot_producesNoStubModel` | default-package classes directly in the model-root folder | documents: **no** stub model is produced |

All five pass on the fixed code; the mismatch tests fail on the pre-fix code (red-pre-fix / green-post-fix verified).

### Running these tests

`InnerClassStubReferenceTest` is `EnvironmentAware` — it needs the MPS core platform *pushed* by a suite runner (`jetbrains.mps.testbench.junit.runners.PushEnvironmentRunnerBuilder`), so running the single class as a plain JUnit config gives a null platform. Options:
- Run the whole `CoreTestSuite` (heavy but self-bootstraps the environment).
- For fast iteration, create a throwaway one-class suite mirroring `CoreTestSuite` (env init in a static block + the push-runner constructor) and run it via idea-mcp `execute_run_configuration(filePath=<suite>.java, line=<class-decl line>)`. (Such a temp suite was used during the session and then removed.)

---

## Reproducing live (optional, for demonstration)

1. Write `OuterClass.java` in a named package `foo` (the MPS-33174 / MPS-39875 sample; inner classes `InnerClass__1/__2`, static `InnerStaticClass`). Compile so classes land at `<root>/extra/foo/OuterClass.class` (an extra `extra/` level above the classpath root).
2. In an MPS solution, add a `java_classes` model root with `contentPath=<root>` (i.e. **one level too high**) + a JDK dependency.
3. Reload → the stub model is named `extra.foo`; open `OuterClass` → inner-class references are red ("Unresolved reference: …").
4. Selecting `<root>/extra` as the classpath root instead makes them resolve (that is the user-side workaround).

**Gotchas discovered:**
- `mps_mcp_reload_all` does **not** re-scan a `java_classes` model root after only its `contentPath` changes in the `.msd` (a stale model lingers). To switch layouts reliably, **delete + recreate** the solution.
- Default-package classes cannot form a stub model at all (`JavaPackageNameStub("")` / `SModelName("")` reject a blank name), and classes directly in the model-root folder (not a subfolder) produce no model (the scan only descends into subdirectories).

---

## Triage: is it a regression? — No

- `2025.3.0` (tag, 2025-12-16) contains the **pre-fix, buggy** `StubReferenceFactory.create` byte-for-byte (same-model-by-name + `findModels(new SModelName(pack,…))` + dangling `SNodePointer(null,…)`, no `isKnownRoot` fallback). Both manifestations exist there.
- The mechanism is old: the same-model-by-name line last changed in **2016**; the `SModelName` empty-name rejection is from **2020** (MPS-20636).
- The recent inner-class commits **MPS-33174** (Dec 2025) and **MPS-39689** (May 2026) are **not** ancestors of `2025.3.0` and only changed the **ASM-layer type modeling** (which classifier/type-args a field type resolves to), not the stub reference-resolution path. They did not cause this.
- Nuance: on 2025.3 (pre-MPS-33174) the field type would *display* as `OuterClass<A>` (the enclosing class) rather than `InnerClass__1`, but the reference is still broken in the non-classpath-root case — same symptom, different classifier shown.

Conclusion: long-standing latent defect, surfaced by a non-standard import. Consistent with Maria moving it out of the 2026.1 blocker set into a bugfix.

---

## The "type variable lost" observation is by design (not fixed, nothing to fix)

`OuterClass<A>.InnerClass__1` is stored as `ClassifierType(InnerClass__1)` with an **empty** `parameter` list (shown as `InnerClass__1`). The owner's `<A>` belongs to the enclosing class and is **not** stored on the inner `ClassifierType`:
- `check_ClassifierType_NonTypesystemRule` (baseLanguage typesystem) requires `parameter.count == the classifier's own type-var count` (InnerClass__1 has none) — storing `<A>` there would be a "wrong number of type parameters" error;
- `ClassifierType.collectGenericSubstitutions` recovers the enclosing type variables structurally from the member hierarchy.

So the current representation is correct; only the *editor display* of the enclosing `Outer<A>.` qualifier is absent, which is general baseLanguage inner-type rendering, not stub-specific.

---

## Known residual limitation (out of scope for MPS-39875)

The fix rescues only references whose target top classifier is in **the current model**. **Cross-package** references inside a mis-rooted library still do not resolve (the target's top classifier lives in a different, also-misnamed model). Maria's `OuterClass` sample has no cross-package references, so her case is fully handled; this residual gap only affects multi-package libraries imported at the wrong level.

---

## Working-tree state

- Committed on `261/vaclav/stub` (`fd7eb739b3e4`): `StubReferenceFactory.java`, `InnerClassStubReferenceTest.java` (4 methods), `CoreTestSuite.java`.
- **Uncommitted** (working tree): the 5th test method `test_MPS_39875_importedOneLevelTooHigh_namedPackage` added to `InnerClassStubReferenceTest.java` — Maria's exact "one level too high" case. Passes. Ready to commit (amend `fd7eb739b3e4` or a follow-up).
- Throwaway session artifacts (a temp `mps39875.repro` solution under `.output/`, external fixtures under `~/mps39875-external`, and a temp env-push suite in `testbench/tests/.../JavaStubReproSuite.java`) were removed. If a broken `mps39875.repro` module lingers in a running MPS instance, unregister/delete it.

---

## Key file pointers

- Fix: `core/java-stub/source/jetbrains/mps/java/stub/StubReferenceFactory.java` (`create`, ~L76-142)
- Tests: `core/java-stub/test/jetbrains/mps/java/stub/InnerClassStubReferenceTest.java`
- Suite registration: `testbench/tests/jetbrains/mps/testsuites/CoreTestSuite.java`
- Folder→package scan: `core/java-stub/source_gen/jetbrains/mps/persistence/java/library/JavaClassStubsModelRoot.java` (`getModelDescriptors_`)
- Reference package computation: `core/java-stub/source_gen/jetbrains/mps/baseLanguage/javastub/ClassifierUpdater.java` (`addClassifierReference`, `getTypeByASMType`)
- Named-package test fixture: `core/java-stub/test/jetbrains/mps/java/stub/ParameterizedInnerClassTest.java` (`Outer1`)
- Related: MPS-33174 (inner parameterized classes, ASM layer), MPS-39689 (deeply nested parameterized classes)
