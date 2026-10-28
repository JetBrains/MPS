# RepositoryInitializer vs. BuildManager preload race: initial analysis

Status: root cause found and fix verified locally on 2026-10-28 (see the "second pass" section at the end), branch `262/vaclav/merge`. The sections up to "Useful commands" are the initial analysis and keep their original wording; the second pass corrects them.
The analysis separates what has been **verified** from what is still a **hypothesis**; please keep that separation
when you extend it.

## Summary

On the 262 platform the test application fails to instantiate the preloaded application service
`com.intellij.compiler.server.BuildManager` (Java plugin). That failure is reported inside the platform's
`service preloading (async)` coroutine. If it lands before `RepositoryInitializer.initComponent()` has run,
`initComponent()` never runs. The Bootstrap, Workbench and Plugin library contributors are then never registered,
so the test JVM runs without the MPS modules shipped in plugins: `lang.test`, the execution languages,
`jetbrains.mps.ide`, and so on. Which event comes first is a matter of timing, so the result is a flaky, all-or-nothing
mass failure.

There are two ways out, and they are independent:

1. Stop `BuildManager` (or any other preload) from failing in the test application.
2. Make `RepositoryInitializer` register its libraries even when a sibling preload fails.

(2) also protects production, because any third-party plugin with a broken preloaded service could trigger the same
effect.

## How to recognise it

- The TeamCity build "Tests from IDEA Project" (`MPS_20262_FeatureBranches_TestsFromIdeaProject`,
  `MPS_20262_Distribution_TestsFromIdeaProject`) shows a cascade in `McpToolsIntegrationTestSuite`:
  - `Concept not found: concept='jetbrains.mps.lang.test.structure.NodesTestCase'` (and `...execution.demo.structure.SomeConcept`)
    from `JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest`
  - `Run configuration type 'Java Application' is not registered; the corresponding MPS plugin may be disabled`
  - `open_node` returns `INTERNAL_ERROR`; the log shows an NPE because `NavigationSupport.getInstance(project)` is null
- The suite passes locally, both alone and as a sub-suite. The plugin list and the classpath are identical to a
  green build.
- The decisive check is in the build artifact `testlog.zip`. In `idea.2.log` (the log that contains
  `Loaded custom plugins`), look for:
  ```
  INFO - jetbrains.mps.library.LibraryInitializer - Adding libraries from BootstrapLibraryContributor
  INFO - jetbrains.mps.library.LibraryInitializer - Adding libraries from PluginLibraryContributor
  ```
  If they are **missing**, this race was lost. Only `SetLibraryContributor` (4 libraries) is loaded then, and
  `ModulesWatcher` reports ~317 modules in the class-loading graph instead of ~413. Its "absent in a repository" list
  then includes `org.junit.junit5`, `jetbrains.mps.lang.test*` and `jetbrains.mps.baseLanguage.unitTest`.

## Evidence (verified)

| Build (TestsFromIdeaProject) | Revision | Libraries added | BuildManager failure propagated | Outcome |
|---|---|---|---|---|
| 6729083 (262, pre-merge) | `3b2f34fd60e0` | line 206, 2599 ms | line 214, after | green |
| 6737408 (262, post-merge) | `b88eac47ddf7` | never | - | 34 failures |
| 6737482 (262, post-merge) | `a0dbbf7ab5a8` | never | line 187, **before** | 32 failures |
| 6738379 (262, re-run) | `a0dbbf7ab5a8` (same as 6737482) | line 209, 2575 ms | line 214, after | 2 failures, unrelated to this race |
| 6737473 (2026.1, 261 platform) | `9fe8eaf03026` | yes | no BuildManager error at all | green |

These are line numbers in the respective `testlog/idea.2.log`. The same revision both lost (6737482) and won
(6738379), so the cause is timing, not code.

Other verified facts:

- **Where the error is reported.** The error is `InstantiationException: Class 'class com.intellij.compiler.server.BuildManager'
  does not define any of supported signatures '[()void, (CoroutineScope)void, (Application)void,
  (Application,CoroutineScope)void, (ComponentManager)void]'`. It is first logged at INFO, then re-reported as
  `UnhandledException` by `CoroutineExceptionHandlerImpl`, in the coroutine context
  `CoroutineName(service preloading (async))` of `ComponentManager(ApplicationImpl)`. On stderr the same failure
  appears as `Exception in thread "DefaultDispatcher-worker-N @jetbrains.mps.repository.RepositoryInitializer preloading#NN"`.
  So the failure surfaces while the `RepositoryInitializer` preload coroutine is running.
- **The preload declaration.** `BuildManager` is declared
  `<applicationService serviceImplementation="com.intellij.compiler.server.BuildManager" preload="true"/>` in
  `plugins/java/lib/intellij.java.compiler.impl.jar`. The test app loads the plugin "Java (262.10010968.737-MPS)".
  On 2026.1 the plugin is "Java (261.23567.999-mps)" and `BuildManager` instantiates fine.
- **The constructor exists.** In the local copy of that jar, `BuildManager` has exactly one constructor,
  `public BuildManager(kotlinx.coroutines.CoroutineScope)`, which is in the supported list. There is exactly one
  `kotlinx/coroutines/CoroutineScope.class` among the jars (`lib/intellij.libraries.kotlinx.coroutines.core.jar`) and
  exactly one `BuildManager.class` (`plugins/java/lib/intellij.java.compiler.impl.jar`).
- **The real reason is hidden.** `InstantiateKt.findConstructor` (in `lib/intellij.platform.ide.jar`) calls
  `MethodHandles.privateLookupIn(clazz, lookup())` and then `Lookup.findConstructor(clazz, type)` for each supported
  `MethodType`. It swallows `NoSuchMethodException` and `IllegalAccessException` (exception table targets 49 and 54)
  and rethrows only other `Throwable`s. So the underlying reason why `(CoroutineScope)void` did not match is not in
  the log.
- **It reproduces locally.** A local `McpToolsIntegrationTestSuite` run (macOS, JBR 25.0.4) logs the same
  BuildManager error 7 times. The race is just usually won there.
- **Other suites are exposed.** `PlatformTestSuite` on TeamCity logs the BuildManager error too (7 times in build
  6737482), so it is exposed to the same race. It happened to win in all builds examined.
- **How the task is launched.** `RepositoryInitializer` (`plugins/mps-repository/source/jetbrains/mps/repository/RepositoryInitializer.java`)
  receives a `CoroutineScope` in its constructor and runs `AppJavaExecutorUtil.executeOnPooledIoThread(coroutineScope, this::initComponent)`.
  That method is plain `BuildersKt.launch(scope, Dispatchers.IO, CoroutineStart.DEFAULT) { task.run() }`
  (`lib/intellij.platform.projectModel.jar`). A `DEFAULT`-started coroutine whose job is cancelled before dispatch
  never runs its body.
- **What `initComponent()` registers.** It registers `BootstrapLibraryContributor`, `WorkbenchLibraryContributor`
  (only when `PathManager.isFromSources()`), `PluginLibraryContributor` and the `AdditionalLibrariesManager`
  contributor. None of the `Adding libraries from ...` lines from it appear in a losing run.

## Mechanism (hypothesis, to be confirmed)

The preloads of one plugin set are launched as siblings under a common `service preloading (async)` job. When the
`BuildManager` preload fails, that job is cancelled. With it, either of these goes:

- (a) the `RepositoryInitializer` instantiation itself, while it is still inside its constructor; or
- (b) the `coroutineScope` handed to the `RepositoryInitializer` constructor, if that scope is derived from the
  preloading coroutine rather than from the plugin's service scope.

Either way the `launch` from `executeOnPooledIoThread` is cancelled before `initComponent` starts. If `initComponent`
has already started, it completes (it is blocking code), which is why the race can be won.

Still open:

1. Is it (a) or (b)? A breakpoint in the `RepositoryInitializer` constructor will tell. Evaluate
   `coroutineScope.getCoroutineContext().get(Job.Key)` and its parent chain, and check `isCancelled` at the moment of
   the `launch`.
2. Why does `findConstructor` not match `(CoroutineScope)void`? Put a breakpoint in
   `com.intellij.platform.instanceContainer.instantiation.InstantiateKt.findConstructor` on the two catch handlers and
   inspect the swallowed exception. Candidates are a `NoSuchMethodException` from a class-loader mismatch for
   `CoroutineScope` (plugin class loader vs core) or an `IllegalAccessException` from `privateLookupIn`. Also compare
   `BuildManager.class.getClassLoader()` with `CoroutineScope.class.getClassLoader()`. The jar on the TeamCity agent
   comes from the platform download, so check that it matches the local one (local copy: 2026-10-05).
3. Who loads the Java plugin in `McpToolsIntegrationTestSuite`? It is in `Loaded custom plugins` although the suite
   does not add it explicitly. `IdeaEnvironment` / plugin dependencies pull it in. If the tests don't need
   `intellij.java.compiler.impl`, keeping it out removes the trigger.
4. Does any production startup path hit the same structure? In the product `BuildManager` presumably instantiates,
   but any failing preloaded service from another plugin would have the same effect on `RepositoryInitializer`.

## Reproducing deterministically (suggested, not tried)

The race is normally won locally, so force the losing order with a temporary, local-only change:

- Delay inside the `RepositoryInitializer` constructor before `executeOnPooledIoThread(...)`, e.g. `Thread.sleep(2000)`,
  so the BuildManager failure propagates first. Expect `Adding libraries from PluginLibraryContributor` to disappear
  from the test `idea.log` and `JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest` to fail with `Concept not found`.
- Run with `MCP_TESTS=JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest` through the `McpToolsIntegrationTestSuite`
  run configuration (about 80 s). Build first: `execute_run_configuration` does not compile.
- The test application's `idea.log` is under the MPSCmdLineTest system dir. On TeamCity it is in `testlog.zip`.
- Revert the delay afterwards. Do not commit it.

## Fix options

### A. Make `initComponent` immune to the cancellation (in our code, smallest change)

The change goes in `RepositoryInitializer`. Candidates:

- Launch with `CoroutineStart.ATOMIC`, so the body is guaranteed to start even if the job is cancelled before
  dispatch. Our code is blocking, so it then runs to completion.
- Or run `initComponent` outside the cancellable scope, e.g. `ApplicationManager.getApplication().executeOnPooledThread(...)`.
  That trades structured concurrency for robustness and needs a look at what `dispose()` expects; `disposeComponent`
  unloads `myContributors`.

Either way, log loudly when the scope was already cancelled.

Check before changing:

- Does the platform wait for this work? `IdeaEnvironment` / `EnvironmentBase` "Initializing libraries" runs right after.
  Make sure the ordering assumptions between `RepositoryInitializer` and `EnvironmentBase.initLibraries` still hold.
- If the cause is (a), cancellation of the constructor itself, ATOMIC is not enough. The service then has to be
  instantiated outside the preload, or must not be `preload=TRUE`. The platform already warns about this:
  "`preload=TRUE` must be used only for core services (service=jetbrains.mps.repository.RepositoryInitializer,
  plugin=jetbrains.mps.repository)".

### B. Remove the trigger in the test application

- Find out why `BuildManager` does not instantiate (open question 2) and fix the cause. It may be a platform/plugin
  version mismatch in the downloaded artifacts; report it upstream if so.
- Or keep `intellij.java.compiler.impl` / the Java plugin out of `McpToolsIntegrationTestSuite` and `PlatformTestSuite`,
  if no test needs it. Check the run-configuration tests: "Java Application" comes from MPS execution plugins, not
  from the IDEA Java plugin.

### C. Fail fast (complements A or B)

In `McpToolsIntegrationTestSuite` (and possibly `BaseMpsSuite`), after `IdeaEnvironment.init()`, assert that a module
from a plugin library resolves, e.g. `jetbrains.mps.lang.test`. A lost race then gives one clear initialization error
instead of ~30 confusing test failures.

## Not part of this problem

These turned up in the same builds and are tracked separately:

- `ProjectTest.diffModule (jetbrains.mps.ide.build)`: an empty `trace.info` from a merge resolution. Fixed in
  `51ca7bf98187`.
- `AbstractOpsMakeTest.performMake restores the save-transient setting when the make is cancelled`: it fails
  deterministically, together with HTML-balloon class-init errors (`--add-opens` for `javax.swing.text.html.parser` /
  `sun.swing.text` was missing). `e09aeaa484ce` adds them to `McpToolsIntegrationTestSuite.xml`. Whether that cures the
  test is unconfirmed until the next TeamCity run.

## Useful commands

```bash
# failed tests and the test-app logs of a TestsFromIdeaProject build
teamcity run tests <id> --failed
teamcity run download <id> -a testlog.zip     # unzip into its own empty directory
grep -n "BuildManager' does not define\|Adding libraries from\|modules are marked as invalid" testlog/idea.2.log

# constructor of BuildManager in the downloaded platform plugin
javap -cp plugins/java/lib/intellij.java.compiler.impl.jar -p com.intellij.compiler.server.BuildManager | grep "BuildManager("
```

## Update 2026-10-28, second pass: root cause found, fix verified locally

Method: a temporary probe in the `McpToolsIntegrationTestSuite` static initializer (after `ourEnvironment.init()`, removed
again afterwards) repeated the platform's lookup and printed class loaders and the cause chain; two filtered runs
(`MCP_TESTS=McpTestSelectionTest`, ~25 s each) before and after the fix; platform sources from `lib/src/platform-sources.zip`.

### Verified

- **Why `BuildManager` does not instantiate.** `MethodHandles.privateLookupIn(BuildManager.class, lookup())
  .findConstructor(BuildManager.class, methodType(void.class, CoroutineScope.class))` throws
  `IllegalAccessException: no such constructor: com.intellij.compiler.server.BuildManager.<init>(CoroutineScope)void/newInvokeSpecial`,
  caused by `NoClassDefFoundError: com/intellij/openapi/projectRoots/JavaSdkVersion`, caused by
  `ClassNotFoundException: com.intellij.openapi.projectRoots.JavaSdkVersion`. Linking `BuildManager` needs `JavaSdkVersion`
  (its `getRuntimeSdk`/`getBuildProcessRuntimeSdk` methods return `Pair<Sdk, JavaSdkVersion>`); the JDK reports a
  `LinkageError` during method-handle resolution as `IllegalAccessException`/`NoSuchMethodException`, which
  `InstantiateKt.findConstructor` swallows. `bm.getDeclaredConstructors()` fails with the same `NoClassDefFoundError`.
  It is **not** a class-loader mismatch: `BuildManager`, `ComponentManagerImpl` and `kotlinx.coroutines.CoroutineScope`
  are all defined by `jdk.internal.loader.ClassLoaders$AppClassLoader` (the Java plugin comes from `plugin.path` with
  `-Didea.use.core.classloader.for.plugin.path=true` from the run configuration; `IdeaEnvironment` additionally sets
  `idea.force.use.core.classloader`). `intellij.libraries.kotlinx.coroutines.core` is `loading="embedded"` on both platforms.
- **Why the class is missing.** On the 262 platform `JavaSdkVersion` lives in `plugins/java/lib/intellij.java.syntax.jar`,
  and **no** `.idea/libraries/*.xml` references that jar. On 261 it was in `plugins/java/lib/java-impl.jar`, which the
  `java-impl` library includes. In unit-test mode the Java plugin's classes come only from the test classpath
  (`IdeaEnvironment.setPluginPathProperty`: "complete plugin's classpath has to be in global CP already"); the test
  classpath gets the Java plugin jars through the `idea-runtime` library (testbench, RUNTIME scope) and `java-impl`.
  `32d590362bf4` "Idea libraries: new locations for java libs" (2026-07-31) re-pointed `idea-runtime`, `java-impl` and
  `jps-builders` to the new jar names but did not add `intellij.java.syntax.jar`. Classpath drift after the platform bump,
  not a platform bug.
- **Why only tests are affected.** In production the plugin's whole `lib` directory is on its class loader, so
  `BuildManager` links; the dev-launched MPS (`log/idea.log`) and the installed MPS 262.10968.569
  (`~/Library/Logs/JetBrains/MPS2026.2/idea.log`) log the error 0 times. In the test JVM the failure *propagates* only
  because `TestLoggerFactory$TestLogger.error` rethrows: `ServiceInstanceInitializer.createInstance` catches the
  `InstantiationException` and calls `LOG.error(e)` before falling back to `instantiateWithContainer` — in a test that
  call throws `TestLoggerAssertionError` (the local log shows it as the cause chain of the `UnhandledException`).
  `LazyInstanceHolder` records `CannotInitialize`, the waiting `preloadService` rethrows, and the
  `"<service> preloading"` child coroutine's `catch (Throwable) { LOG.error(e) }` rethrows the same error again
  (`TestLogger.error` rethrows a `TestLoggerAssertionError` whose message matches). The child fails, the parent
  `service preloading (async)` job is cancelled, and every sibling that has not been dispatched yet is cancelled with it.
  In production both `LOG.error` calls only log; the batch is never cancelled. The doc's earlier claim that fix (2)
  "also protects production" therefore does not hold for this mechanism.
- **Mechanism: neither (a) nor (b).** The `RepositoryInitializer` service is simply never instantiated when the race is
  lost. `LazyInstanceHolder.initialize` launches the constructor `UNDISPATCHED` in the **container** scope under
  `withContext(NonCancellable)`, so once the `RepositoryInitializer preloading` child has started, the constructor runs to
  completion inline and `initComponent` is launched in the instance scope (`instanceCoroutineScope` →
  `scopeHolder.containerScope` for a class from a non-plugin class loader), which the preload failure never cancels.
  Lost race ⇔ the `RepositoryInitializer preloading` child was cancelled before it was dispatched. Consequently **fix
  option A cannot work**: `CoroutineStart.ATOMIC` or a pooled thread in `executeOnPooledIoThread` only matter once the
  constructor runs, and it never does. The stderr thread name `@jetbrains.mps.repository.RepositoryInitializer preloading`
  is the worker that finished the last child and finalized the parent job; it is not evidence that the failure occurred
  inside that coroutine. Local timeline: INFO at 382 ms; the parent completes at 1016 ms, right after the
  `RepositoryInitializer` constructor (blocking `getService` calls, ~600 ms) returned inline; `Adding libraries from ...`
  at 1017 ms. The race is won locally by about 1 ms.
- **Who loads the Java plugin.** `EnvironmentConfig.defaultConfig()` → `withMakePlugin()` →
  `addDistributedPlugin("java", "com.intellij.java")`; `McpToolsIntegrationTestSuite` starts from `defaultConfig()`.
  It is needed (make), so option "keep the Java plugin out" is not available.
- **Fix verified locally (option B).** Adding
  `<root url="jar://$PROJECT_DIR$/plugins/java/lib/intellij.java.syntax.jar!/" />` to `.idea/libraries/idea_runtime.xml`
  (next to `intellij.java.compiler.impl.jar`). Same filtered run afterwards: probe `findConstructor` OK,
  `BuildManager' does not define` 0× (5× before), `Unhandled exception in` 0×, no `NoClassDefFoundError`/`ClassNotFoundException`,
  no ERROR/SEVERE records, `Adding libraries from Bootstrap/PluginLibraryContributor` present, 0 `testFailed`.
  The change is in the working tree, uncommitted. TeamCity confirmation is still pending.

### Still open

- Other startup paths of the Java plugin may reference further classes from jars that no IDEA library lists
  (`intellij.java.analysis*.jar`, `intellij.java.psi.impl.jar`, `intellij.java.execution*.jar`, ...). Only the
  `BuildManager` preload is exercised at startup; nothing else failed in the trial run.
- Fix C (fail fast) remains useful on its own: `EnvironmentBase.initLibraries` could request
  `RepositoryInitializer` explicitly (`getService`) so the test environment does not depend on preload timing, and
  `BaseMpsSuite` could assert that a plugin-library module (e.g. `jetbrains.mps.lang.test`) resolves after `init()`.

### Diagnostic recipe

`Class 'X' does not define any of supported signatures` from `ComponentManagerImpl` hides a linking failure of `X`
whenever `javap` shows a supported constructor. Reproduce the lookup in the same JVM and print the cause chain:

```java
Class<?> x = Class.forName("com.intellij.compiler.server.BuildManager", false, loader);
try { x.getDeclaredConstructors(); } catch (Throwable t) { t.printStackTrace(); } // NoClassDefFoundError names the missing class
try {
  MethodHandles.privateLookupIn(x, MethodHandles.lookup())
      .findConstructor(x, MethodType.methodType(void.class, kotlinx.coroutines.CoroutineScope.class));
} catch (Throwable t) { for (Throwable c = t; c != null; c = c.getCause()) System.err.println(c); }
```

Then find the jar: `for j in lib/*.jar plugins/java/lib/*.jar; do unzip -l $j | grep -q 'projectRoots/JavaSdkVersion.class' && echo $j; done`
and check it is referenced from `.idea/libraries/`.

### Side check: `e09aeaa484ce` (Swing HTML `--add-opens` in the suite run configuration)

Two filtered runs of `MCP_TESTS=AbstractOpsMakeTest` on 2026-10-28, same code, ~4 min each:

| Run configuration | `ExtendableHTMLViewFactory` errors in test `idea.log` | Tests | Result |
|---|---|---|---|
| with the two opens (as committed) | 0 | 10 | 1 failure: `performMake restores the save-transient setting when the make is cancelled`, `TestLoggerAssertionError: Trying to unregister non-registered module: test.lang…@transient1` raised in `TransientModelsComponent` during project dispose (`IdeaEnvironment.closeProject` ← `ModuleInProjectTest.after`) |
| without them (edited on disk, confirmed by the `InaccessibleObjectException … does not "opens javax.swing.text.html.parser"` in the log) | 7, all logged at INFO by `IdeEventQueue`, 0 ERROR/SEVERE records | 10 | 0 failures |

So the commit is correct but not necessary for the verdict: the opens are part of the platform's own list
(`lib/intellij.platform.ide.impl.jar!/META-INF/OpenedPackages.txt`, lines 37 and 48) and they remove seven spurious
`ExceptionInInitializerError`/`NoClassDefFoundError` traces per run that `TransientModelBalloonDisplayer.showBalloon`
triggers after a make. They do not cure `AbstractOpsMakeTest`; that failure is a flaky double unregister of the transient
module at project dispose and is independent of the HTML balloon (it occurred with the opens present and no HTML error in
the log). Note for re-runs: IDEA launched the in-memory run configuration once right after the on-disk edit; the IDEA
`search_text` view of `.idea/runConfigurations/` shows when the edit has been picked up.
