package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

import com.intellij.execution.RunManager
import com.intellij.execution.configurations.ConfigurationFactory
import com.intellij.execution.configurations.ConfigurationType
import com.intellij.execution.configurations.ConfigurationTypeUtil
import com.google.gson.JsonParser
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.classloading.ClassLoaderManager
import jetbrains.mps.persistence.PersistenceRegistry
import jetbrains.mps.project.MPSProject
import jetbrains.mps.util.NameUtil
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SInterfaceConcept
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSRunConfigurationMcpToolset : AbstractOps() {

    private companion object {
        // jetbrains.mps.execution.util.structure.IMainClass
        private val IMAIN_CLASS: SInterfaceConcept = MetaAdapterFactory.getInterfaceConcept(
            0x4caf0310491e41f5uL.toLong(), 0x8a9b2006b3a94898uL.toLong(), 0x40c1a7cb987d20d5uL.toLong(),
            "jetbrains.mps.execution.util.structure.IMainClass"
        )

        // jetbrains.mps.baseLanguage.unitTest.structure.ITestCase — implemented by BaseLanguage
        // TestCase as well as by lang.test NodesTestCase / EditorTestCase / MigrationTestCase / ...
        private val ITEST_CASE: SInterfaceConcept = MetaAdapterFactory.getInterfaceConcept(
            0xf61473f9130f42f6uL.toLong(), 0xb98d6c438812c2f6uL.toLong(), 0x11b2709bd56L,
            "jetbrains.mps.baseLanguage.unitTest.structure.ITestCase"
        )

        // jetbrains.mps.baseLanguage.structure.ClassConcept — covered by Java_Producer's
        // ProducerPart_NodeClassConcept_d1i8dk_a producer in execution-configurations: it fires
        // for plain BaseLanguage classes whose ClassConcept.getMainMethod() resolves to a
        // public-static-void-main(String[]) method, and yields the same node-aware
        // Java_Configuration as the IMainClass path.
        private val CLASS_CONCEPT: SConcept = MetaAdapterFactory.getConcept(
            0xf3061a5392264cc5uL.toLong(), 0xa443f952ceaf5816uL.toLong(), 0xf8c108ca66L,
            "jetbrains.mps.baseLanguage.structure.ClassConcept"
        )

        // jetbrains.mps.lang.module.ModuleDescriptor.compileInMPS — read from the SModule's
        // descriptor stub. Java_Producer skips configuration creation when this property is
        // false because the module's source_gen is compiled externally (JPS) and the launch
        // would fail with "Could not find or load main class". Mirror that gate here so the
        // tool doesn't register a configuration that immediately fails at launch.
        private val COMPILE_IN_MPS: SProperty = MetaAdapterFactory.getProperty(
            0x86ef829012bb4ca7uL.toLong(), 0x947f093788f263a9uL.toLong(),
            0x5869770da61dfe1eL, 0x5869770da61dfe24L,
            "compileInMPS"
        )

        // The MPS execution-configurations plugin registers the Java run configuration type
        // as a ConfigTypeEnvoy whose id is "Java Application". The inner factory has id "Java",
        // but ConfigurationTypeUtil.findConfigurationType matches on type.id, not factory id.
        private const val JAVA_TYPE_ID = "Java Application"
        private const val JUNIT_TYPE_ID = "JUnit Tests"
    }

    /**
     * Discriminator for the three run-configuration dispatch paths the tool supports.
     * Mirrors the three [ProducerPart_*] entries Java_Producer / JUnitTests_Producer register.
     */
    private enum class ConfigKind {
        TEST_CASE,      // ITestCase → JUnit Tests
        MAIN_CLASS,     // IMainClass → Java Application, name "Node <n>"
        CLASS_CONCEPT;  // ClassConcept w/ main → Java Application, name "Class <n>"

        /**
         * True for the two paths that produce a `JAVA_TYPE_ID` "Java Application" configuration
         * via [configureAsMain]; the [TEST_CASE] path uses `JUNIT_TYPE_ID` and [configureAsTestCase]
         * instead. Enumerated positively (rather than `this != TEST_CASE`) so adding a fourth
         * kind in the future does not silently fall into the Java App branch.
         */
        val isJavaApp: Boolean get() = this == MAIN_CLASS || this == CLASS_CONCEPT
    }

    @McpTool
    @McpDescription(
        """
        Creates or replaces an MPS run configuration. `nodeReference` is a root, or an array of test roots. `modelReference` is a model, or an array of models. Both can be combined into one JUnit config. One model alone stays live; any other set is a snapshot, refreshed by repeating the call. Configs are permanent and written at the next save. A Java Application, and any JUnit config beyond one test root, requires `compileInMPS=true` on the owning modules. Returns `name`, `type` and `uniqueId`; JUnit configs also return `runType`, `testCaseCount` and `live`. See the `mps-run-configurations` skill.
        """
    )
    suspend fun mps_mcp_create_run_configuration(
        @McpDescription("A root, or a JSON array of test roots (a real array or the array written as a string). Omit when modelReference is set.")
        nodeReference: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("A model, or a JSON array of models, to run all of its tests. One model alone stays live; combined with other targets it becomes a snapshot.")
        modelReference: JsonOrText? = null,
        @McpDescription("Optional name. Defaults from the target. Pass it for every snapshot so two lists that start with the same root do not replace each other.")
        configurationName: String? = null,
    ): String = rejectMissingParameters(
        "mps_mcp_create_run_configuration",
        RequiredParameter(
            "nodeReference",
            nodeReference.text.ifBlank { modelReference?.text.orEmpty() },
            "a root reference (or an array of test roots), or set modelReference to a model (or an array of models)",
        ),
    ) ?: withMpsProject("Creating MPS run configuration") { mpsProject ->
        executeShortCommandOnEdt(mpsProject) {
            try {
                createRunConfiguration(mpsProject, nodeReference, modelReference, configurationName)
            } catch (e: ReflectiveOperationException) {
                errJson(
                    "Failed to populate run configuration: ${e.message}",
                    McpErrorCode.INTERNAL_ERROR
                )
            }
        }
    }

    private fun createRunConfiguration(
        mpsProject: MPSProject,
        nodeReference: JsonOrText,
        modelReference: JsonOrText?,
        configurationName: String?,
    ): String {
        val nodeInput = parseRefInput(nodeReference)
        val modelInput = parseRefInput(modelReference)
        if (nodeInput.entries.isEmpty() && modelInput.entries.isEmpty()) {
            return errJson(
                "nodeReference and modelReference are empty; pass a root, a model, or both.",
                McpErrorCode.INVALID_REQUEST,
            )
        }

        val failures = mutableListOf<EntryFailure>()
        val nodeHits = mutableListOf<Hit<SNode>>()
        nodeInput.entries.forEachIndexed { index, ref ->
            val label = entryLabel("nodeReference", nodeInput.indexed, index)
            when (val resolved = resolveNodeEntry(mpsProject, ref, label)) {
                is Resolved.Found -> nodeHits += Hit(label, ref, resolved.value)
                is Resolved.Failed -> failures += resolved.failure
            }
        }
        val modelHits = mutableListOf<Hit<SModel>>()
        modelInput.entries.forEachIndexed { index, ref ->
            val label = entryLabel("modelReference", modelInput.indexed, index)
            when (val resolved = resolveModelIdentity(mpsProject, ref, label)) {
                is Resolved.Found -> modelHits += Hit(label, ref, resolved.value)
                is Resolved.Failed -> failures += resolved.failure
            }
        }

        val nodes = collapse(nodeHits) { it.reference }
        val models = collapse(modelHits) { it.reference }
        // An entry that failed to resolve still counts as a target, so a bad reference does not
        // hide the not-a-test check on the others and one retry fixes everything.
        val several = nodes.size + models.size + failures.size > 1
        val roots = mutableListOf<Hit<SNode>>()
        // A test method is not a target: like any other non-root it gets the non-root sentence.
        for (hit in nodes) {
            if (hit.value.parent == null) {
                roots += hit
            } else {
                failures += EntryFailure(McpErrorCode.INVALID_REQUEST, nonRootSentence(hit.ref), hit.label)
            }
        }

        val needsProbes = models.isNotEmpty() || (several && roots.isNotEmpty())
        val probes = if (!needsProbes) null else {
            try {
                TestProbes(mpsProject)
            } catch (e: JUnitTypeMissing) {
                // Report the entry failures already found rather than hiding them behind the type.
                return if (failures.isEmpty()) missingType(JUNIT_TYPE_ID) else rejectEntries(failures)
            }
        }
        // The test roots the config will hold, in config order: one model's own roots for the live
        // config, the union otherwise. Discovered once and reused for every check below.
        var discovered = emptyList<SNode>()
        if (probes != null) {
            for (hit in models) failures += modelProblems(hit.value, hit.label, probes)
            if (several) {
                for (hit in roots) {
                    if (probes.wrap(hit.value) == null) {
                        val sentence = if (SNodeOperations.isInstanceOf(hit.value, ITEST_CASE)) {
                            noTestMethodsSentence(hit.value)
                        } else {
                            nonTestSentence(hit.value)
                        }
                        failures += EntryFailure(McpErrorCode.INVALID_REQUEST, sentence, hit.label)
                    }
                }
            }
            val wrapped = roots.map { it.value }.filter { probes.wrap(it) != null }
            discovered = if (models.size == 1 && roots.isEmpty()) {
                discover(models.single().value, probes)
            } else {
                unionOf(wrapped, models.map { it.value }, probes)
            }
            val targetModels = models.map { it.value } + wrapped.mapNotNull { SNodeOperations.getModel(it) }
            failures += compileInMpsFailures(targetModels)
            failures += legacyMixFailure(discovered, probes)
        }

        // Every non-empty input either resolved to a target or added a failure.
        if (failures.isNotEmpty()) return rejectEntries(failures)
        if (roots.size == 1 && models.isEmpty()) {
            return createForSingleRoot(mpsProject, roots.single().value, configurationName)
        }

        val probe = probes ?: return missingType(JUNIT_TYPE_ID)
        if (models.size == 1 && roots.isEmpty()) {
            val model = models.single().value
            return registerJUnit(mpsProject, configurationName, liveModelName(model)) { cfg, cl, name, uniqueId ->
                configureAsModel(cfg, cl, model)
                applyInProcessFlag(cfg, cl, discovered, probe)
                junitOk(name, uniqueId, "MODEL", discovered.size, live = true)
            }
        }

        // Every listed root passed the not-a-test check, so the union discovered above is complete.
        val name = if (models.isNotEmpty()) snapshotModelName(models.first().value) else severalRootsName(discovered.first())
        return registerJUnit(mpsProject, configurationName, name) { cfg, cl, registeredName, uniqueId ->
            configureAsNodeList(cfg, cl, discovered)
            applyInProcessFlag(cfg, cl, discovered, probe)
            junitOk(registeredName, uniqueId, "NODE", discovered.size, live = false)
        }
    }

    /**
     * Resolves which producer path applies to [node]. Returns null when none does — the caller
     * surfaces that as INVALID_REQUEST. Test dispatch wins over MAIN_CLASS when both are
     * applicable (tests are the more specific producer); MAIN_CLASS in turn wins over
     * CLASS_CONCEPT for the same reason.
     *
     * The MAIN_CLASS-over-CLASS_CONCEPT case is defensive only: in stock baseLanguage, no
     * `ClassConcept` (or its sibling Classifiers) implements `IMainClass`, and `IMainClass`
     * lives in `jetbrains.mps.execution.util` — a language whose role is precisely to expose
     * runnable DSL roots that are NOT baseLanguage classes. A downstream language could in
     * theory subclass `ClassConcept` and also mix in `IMainClass`; the precedence here makes
     * sure such a hybrid is routed through the IMainClass producer to match the gutter's
     * `Node <name>` naming, rather than the `Class <name>` ClassConcept naming.
     *
     * The ClassConcept branch uses `ClassConcept.getMainMethod()` from baseLanguage's behavior
     * descriptor; that method walks `staticMethods` and returns the first one whose
     * `StaticMethodDeclaration.isMainMethod` accepts it (name == "main", single parameter that
     * is a strong subtype of `String[]`). That single call captures the whole producer
     * predicate — we do not need to re-check shape here.
     */
    private fun determineKind(node: SNode): ConfigKind? {
        if (SNodeOperations.isInstanceOf(node, ITEST_CASE)) return ConfigKind.TEST_CASE
        if (SNodeOperations.isInstanceOf(node, IMAIN_CLASS)) return ConfigKind.MAIN_CLASS
        if (SNodeOperations.isInstanceOf(node, CLASS_CONCEPT) &&
            invokeGetMainMethod(node) != null
        ) {
            return ConfigKind.CLASS_CONCEPT
        }
        return null
    }

    /**
     * Reads the `compileInMPS` boolean off the module-descriptor stub that backs the model's
     * owning module. Returns false when either the model or the stub is unavailable; that
     * matches Java_Producer's effective behavior — it calls `getBoolean(getModuleStub(...))`,
     * which returns false for a missing stub and so the producer refuses to fire.
     */
    private fun isCompileInMps(node: SNode): Boolean {
        val model = SNodeOperations.getModel(node) ?: return false
        val moduleStub = SModelOperations.getModuleStub(model) ?: return false
        return SPropertyOperations.getBoolean(moduleStub, COMPILE_IN_MPS)
    }

    private fun configureAsMain(cfg: Any, node: SNode) {
        // Java_Configuration#getNode() returns NodeBySeveralConcepts_Configuration; that class
        // exposes setNode(SNode). Both classes are generated MPS plugin code; access them via
        // reflection so mcp-tools does not need a hard dependency on execution-configurations.
        // If a future Java_Configuration variant lazily allocates the holder and returns null,
        // throw NoSuchMethodException so the caller's ReflectiveOperationException catch path
        // converts it into a structured INTERNAL_ERROR envelope.
        val nodeHolder = cfg.javaClass.getMethod("getNode").invoke(cfg)
            ?: throw NoSuchMethodException("Java_Configuration#getNode() returned null")
        val setNode = nodeHolder.javaClass.getMethod("setNode", SNode::class.java)
        setNode.invoke(nodeHolder, node)
    }

    private fun configureAsTestCase(cfg: Any, node: SNode) {
        // JUnitTests_Configuration#getJUnitSettings() -> JUnitSettings_Configuration
        // settings.setJUnitRunType(JUnitRunTypes.NODE)
        // settings.setTestCases(PointerUtils.nodeToCloneableList(node))
        // if (!ITestCase#canRunInProcess(node)) settings.setInProcessFlag(false)
        val settings = cfg.javaClass.getMethod("getJUnitSettings").invoke(cfg)
            ?: throw NoSuchMethodException("JUnitTests_Configuration#getJUnitSettings() returned null")
        val cl = cfg.javaClass.classLoader

        // JUnitRunTypes is the enum that holds NODE, but setJUnitRunType declares its parameter
        // as the JUnitRunType interface that the enum implements. Look up the setter against
        // the interface to avoid NoSuchMethodException.
        val runTypeInterface = Class.forName(
            "jetbrains.mps.baseLanguage.unitTest.execution.settings.JUnitRunType",
            true, cl
        )
        val runTypesEnum = Class.forName(
            "jetbrains.mps.baseLanguage.unitTest.execution.settings.JUnitRunTypes",
            true, cl
        )
        // Look the constant up by iterating enumConstants instead of java.lang.Enum.valueOf,
        // which throws IllegalArgumentException (a RuntimeException) when the constant is
        // missing. Surfacing a NoSuchMethodException keeps the failure inside the
        // ReflectiveOperationException catch path in mps_mcp_create_run_configuration.
        val nodeRunType = runTypesEnum.enumConstants.firstOrNull { (it as Enum<*>).name == "NODE" }
            ?: throw NoSuchMethodException("JUnitRunTypes.NODE constant not found")
        settings.javaClass.getMethod("setJUnitRunType", runTypeInterface).invoke(settings, nodeRunType)

        val pointerUtilsClass = Class.forName("jetbrains.mps.execution.lib.PointerUtils", true, cl)
        val cloneableList = pointerUtilsClass
            .getMethod("nodeToCloneableList", SNode::class.java)
            .invoke(null, node)

        // setTestCases declares its parameter as java.util.List (the runtime list is a
        // cloneable list of SNodeReference). Pick the setter by name + a List-assignable
        // parameter type to stay tolerant of overload variations across MPS versions while
        // also rejecting unrelated single-arg overloads that might appear in the future.
        // The setter's declared parameter type is java.util.List at the JVM level; use
        // MutableList::class.java because kotlin.collections.List maps to the read-only
        // interface in Kotlin's type system but still resolves to java.util.List at runtime
        // via MutableList — this keeps Kotlin's reflection lint clean.
        val listClass: Class<*> = MutableList::class.java
        val setTestCases = settings.javaClass.methods.firstOrNull {
            it.name == "setTestCases" && it.parameterCount == 1 &&
                    listClass.isAssignableFrom(it.parameterTypes[0])
        } ?: throw NoSuchMethodException("JUnitSettings_Configuration#setTestCases(List) not found")
        setTestCases.invoke(settings, cloneableList)

        // Mirror JUnitTests_Producer.ProducerPart_NlistITestCase: when the test case's
        // canRunInProcess behavior returns false (e.g. tests that need a separate JVM),
        // the standard producer clears the in-process flag. Do the same here so the
        // configuration we register behaves identically to one created via the gutter.
        if (!invokeCanRunInProcess(cl, node)) {
            // Require a primitive-boolean parameter so a future tri-state overload (e.g. an
            // enum-valued setInProcessFlag) does not get selected and then ArgumentMismatch
            // when invoked with a Boolean.
            val setInProcessFlag = settings.javaClass.methods.firstOrNull {
                it.name == "setInProcessFlag" && it.parameterCount == 1 &&
                        it.parameterTypes[0] == java.lang.Boolean.TYPE
            } ?: throw NoSuchMethodException("JUnitSettings_Configuration#setInProcessFlag(boolean) not found")
            setInProcessFlag.invoke(settings, false)
        }
    }

    private fun invokeCanRunInProcess(cl: ClassLoader, node: SNode): Boolean {
        val descriptorClass = Class.forName(
            "jetbrains.mps.baseLanguage.unitTest.behavior.ITestCase__BehaviorDescriptor",
            true, cl
        )
        val sMethod = descriptorClass.getField("canRunInProcess_id5_jSk8paieB").get(null)
        val invoke = sMethod.javaClass.methods.firstOrNull {
            it.name == "invoke" && it.parameterCount == 2 &&
                    it.parameterTypes[0] == SNode::class.java &&
                    it.parameterTypes[1].isArray
        } ?: throw NoSuchMethodException("SMethod#invoke(SNode, Object[]) not found")
        val result = invoke.invoke(sMethod, node, arrayOfNulls<Any>(0))
        return result as? Boolean ?: false
    }

    /**
     * Invokes `ClassConcept.getMainMethod` via baseLanguage's behavior descriptor and returns
     * the resolved main-method node, or null if the class has no qualifying main. Mirrors the
     * SMethod-field reflection pattern in [invokeCanRunInProcess] so mcp-tools stays free of a
     * hard compile-time dependency on `jetbrains.mps.baseLanguage.behavior`.
     *
     * The descriptor is generated into the `jetbrains.mps.baseLanguage` module's runtime jar,
     * which the mcp-tools plugin classloader does **not** see directly. (The IMainClass test
     * path reaches its own descriptor through `cfg.javaClass.classLoader`, but we run this
     * probe **before** the configuration exists, so that handle isn't available yet.) Resolve
     * the baseLanguage module via the node's repository and load through
     * `ClassLoaderManager.getClassLoader(module)` — the same fallback
     * `JetBrainsMPSJavaMcpToolset.fixMethodReferences` uses for `MethodResolveUtil`.
     */
    private fun invokeGetMainMethod(node: SNode): SNode? {
        val descriptorClass = loadBaseLanguageClass(
            node, "jetbrains.mps.baseLanguage.behavior.ClassConcept__BehaviorDescriptor"
        )
        val sMethod = descriptorClass.getField("getMainMethod_idhEwIClG").get(null)
        val invoke = sMethod.javaClass.methods.firstOrNull {
            it.name == "invoke" && it.parameterCount == 2 &&
                    it.parameterTypes[0] == SNode::class.java &&
                    it.parameterTypes[1].isArray
        } ?: throw NoSuchMethodException("SMethod#invoke(SNode, Object[]) not found")
        return invoke.invoke(sMethod, node, arrayOfNulls<Any>(0)) as? SNode
    }

    /**
     * Locates a class shipped with the baseLanguage runtime by routing through MPS's per-module
     * classloader. The first `Class.forName` attempt covers environments where the toolset's
     * own classloader happens to see baseLanguage (e.g. some test harnesses). On a ClassNotFound,
     * fall back to the baseLanguage module's own classloader via `ClassLoaderManager`.
     *
     * The `NoSuchMethodException` produced when the module is missing flows back through the
     * tool's `ReflectiveOperationException` catch, converting to a structured INTERNAL_ERROR
     * envelope instead of a raw stack trace.
     */
    // `ClassLoaderManager.getInstance()` is deprecated in favor of a ComponentHost lookup that
    // requires an MPS Environment handle not currently plumbed into mcp-tools. JavaMcpToolset
    // suppresses the same warning for the same reason — track migration there.
    @Suppress("DEPRECATION")
    private fun loadBaseLanguageClass(node: SNode, fqn: String): Class<*> {
        try {
            return Class.forName(fqn)
        } catch (e: ClassNotFoundException) {
            val repo = SNodeOperations.getModel(node)?.repository
                ?: throw NoSuchMethodException(
                    "Cannot resolve baseLanguage classloader: node has no model/repository (looking up $fqn)"
                )
            val module = repo.modules.firstOrNull { it.moduleName == "jetbrains.mps.baseLanguage" }
                ?: throw NoSuchMethodException(
                    "jetbrains.mps.baseLanguage module is not loaded; cannot resolve $fqn"
                )
            val cl = ClassLoaderManager.getInstance().getClassLoader(module)
                ?: throw NoSuchMethodException(
                    "No classloader for jetbrains.mps.baseLanguage; cannot resolve $fqn"
                )
            return cl.loadClass(fqn)
        }
    }

    private fun deriveName(node: SNode, kind: ConfigKind): String {
        val baseName = node.name ?: node.nodeId.toString()
        return when (kind) {
            ConfigKind.TEST_CASE -> baseName
            ConfigKind.MAIN_CLASS -> "Node $baseName"
            ConfigKind.CLASS_CONCEPT -> "Class $baseName"
        }
    }

    private fun findConfigurationType(id: String): ConfigurationType? =
        ConfigurationTypeUtil.findConfigurationType(id)

    private fun primaryFactory(type: ConfigurationType): ConfigurationFactory? {
        val factories = type.configurationFactories
        if (factories.isEmpty()) return null
        return factories.firstOrNull { it.id == type.id } ?: factories.first()
    }

    private data class RefInput(val entries: List<String>, val indexed: Boolean)

    private data class EntryFailure(val code: McpErrorCode, val sentence: String, val label: String)

    private data class Hit<T>(val label: String, val ref: String, val value: T)

    private sealed class Resolved<T> {
        class Found<T>(val value: T) : Resolved<T>()
        class Failed<T>(val failure: EntryFailure) : Resolved<T>()
    }

    private class JUnitTypeMissing : Exception()

    private fun parseRefInput(raw: JsonOrText?): RefInput {
        if (raw == null || raw.text.isBlank()) return RefInput(emptyList(), indexed = false)
        val text = raw.text.trim()
        val element = try {
            JsonParser.parseString(text)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            null
        }
        if (element != null && element.isJsonArray) {
            val values = element.asJsonArray.map { child ->
                when {
                    child.isJsonNull -> ""
                    child.isJsonPrimitive && child.asJsonPrimitive.isString -> child.asString
                    else -> child.toString()
                }
            }
            return RefInput(values, indexed = true)
        }
        // A scalar written as a JSON string ("\"r:...\"") unwraps, as in parseStringOrJsonArray. Only a
        // leading quote counts: lenient Gson also reads a bare name as a string and stops at a '#'.
        if (element != null && text.startsWith('"') && element.isJsonPrimitive && element.asJsonPrimitive.isString) {
            return RefInput(listOf(element.asString), indexed = false)
        }
        return RefInput(listOf(text), indexed = false)
    }

    private fun entryLabel(param: String, indexed: Boolean, index: Int): String =
        if (indexed) "$param[$index]" else param

    private fun <T> failed(code: McpErrorCode, sentence: String, label: String): Resolved<T> =
        Resolved.Failed(EntryFailure(code, sentence, label))

    private fun resolveNodeEntry(mpsProject: MPSProject, ref: String, label: String): Resolved<SNode> {
        if (ref.isBlank()) return failed(McpErrorCode.INVALID_REQUEST, "reference is blank", label)
        return try {
            val repo = mpsProject.repository
            val inProject = resolveNodeReference(mpsProject, ref)?.resolve(repo)
            if (inProject != null) return Resolved.Found(inProject)
            if (resolveNodeReference(repo, ref)?.resolve(repo) != null) {
                return failed(McpErrorCode.INVALID_REQUEST, crossProjectSentence("Node '$ref'"), label)
            }
            if (resolveModel(mpsProject, ref, projectOnly = true) != null) {
                return failed(
                    McpErrorCode.INVALID_REQUEST,
                    "'$ref' is a model; pass it in modelReference to run all its tests",
                    label,
                )
            }
            if (resolveModel(repo, ref) != null) {
                return failed(McpErrorCode.INVALID_REQUEST, crossProjectSentence("Model '$ref'"), label)
            }
            failed(McpErrorCode.NOT_FOUND, "Node '$ref' not found", label)
        } catch (e: McpInvalidReferenceException) {
            failed(e.errorCode, e.message ?: "invalid reference", label)
        }
    }

    private fun resolveModelIdentity(mpsProject: MPSProject, ref: String, label: String): Resolved<SModel> {
        if (ref.isBlank()) return failed(McpErrorCode.INVALID_REQUEST, "reference is blank", label)
        return try {
            val found = resolveModel(mpsProject, ref, projectOnly = true)
            if (found != null) return Resolved.Found(found)
            if (resolveModel(mpsProject.repository, ref) != null) {
                return failed(McpErrorCode.INVALID_REQUEST, crossProjectSentence("Model '$ref'"), label)
            }
            failed(McpErrorCode.NOT_FOUND, "Model '$ref' not found", label)
        } catch (e: McpInvalidReferenceException) {
            failed(e.errorCode, e.message ?: "invalid reference", label)
        }
    }

    private fun crossProjectSentence(what: String): String =
        JsonParser.parseString(crossProjectErr(what)).asJsonObject.get("error").asString

    private fun nonRootSentence(ref: String) =
        "Node '$ref' is not a root node; run configurations target root nodes only"

    private fun notRunnableSentence(node: SNode) =
        "Concept '${node.concept.name}' is not runnable through this tool: " +
            "the root must implement IMainClass or ITestCase, or be a " +
            "ClassConcept whose getMainMethod() resolves a static " +
            "main(<String[]-subtype>) method (visibility is not checked)"

    private fun nonTestSentence(node: SNode): String {
        val name = node.name ?: node.nodeId.toString()
        return "Root '$name' is not a test; a Java Application config runs one main, so pass it in a call of its own."
    }

    // Discovery skips a test case with no uncommented test method, as the IDE's model run does.
    private fun noTestMethodsSentence(node: SNode): String {
        val name = node.name ?: node.nodeId.toString()
        return "Test case '$name' has no test methods; add one, or leave it out of a multi-target configuration."
    }

    private fun modelName(model: SModel): String = model.name.value

    private fun <T> collapse(items: List<Hit<T>>, key: (T) -> Any): List<Hit<T>> {
        val seen = LinkedHashSet<Any>()
        return items.filter { seen.add(key(it.value)) }
    }

    private fun modelProblems(model: SModel, label: String, probes: TestProbes): List<EntryFailure> {
        val name = modelName(model)
        val problems = mutableListOf<EntryFailure>()
        if (model.isReadOnly) {
            problems += EntryFailure(
                McpErrorCode.INVALID_REQUEST,
                "Model '$name' is read-only; the IDE does not create a run configuration for a read-only model.",
                label,
            )
        }
        if (model.module == null) {
            problems += EntryFailure(
                McpErrorCode.INVALID_REQUEST,
                "Model '$name' has no module; cannot create a run configuration for it.",
                label,
            )
        }
        if (discover(model, probes).isEmpty()) {
            problems += EntryFailure(
                McpErrorCode.INVALID_REQUEST,
                "No tests found in model $name.",
                label,
            )
        }
        return problems
    }

    private fun discover(model: SModel, probes: TestProbes): List<SNode> =
        model.rootNodes.mapNotNull { root -> if (probes.wrap(root) != null) root else null }

    private fun unionOf(roots: List<SNode>, models: List<SModel>, probes: TestProbes): List<SNode> {
        val seen = LinkedHashSet<Any>()
        val union = mutableListOf<SNode>()
        for (root in roots) {
            if (probes.wrap(root) != null && seen.add(root.reference)) union += root
        }
        for (model in models) {
            for (root in discover(model, probes)) {
                if (seen.add(root.reference)) union += root
            }
        }
        return union
    }

    private fun isCompileInMps(model: SModel): Boolean {
        val moduleStub = SModelOperations.getModuleStub(model) ?: return false
        return SPropertyOperations.getBoolean(moduleStub, COMPILE_IN_MPS)
    }

    private fun compileInMpsFailures(models: Collection<SModel>): List<EntryFailure> {
        val offenders = LinkedHashMap<String, String>()
        for (model in models) {
            val module = model.module ?: continue
            val key = module.moduleReference.toString()
            if (key in offenders || isCompileInMps(model)) continue
            offenders[key] = module.moduleName ?: "?"
        }
        if (offenders.isEmpty()) return emptyList()
        val names = offenders.values.toList()
        val sentence = if (names.size == 1) {
            "Module '${names.single()}' must be compiled by MPS (compileInMPS=false). Can't run tests."
        } else {
            val listed = names.dropLast(1).joinToString(", ") { "'$it'" }
            "Modules $listed and '${names.last()}' must be compiled by MPS (compileInMPS=false). Can't run tests."
        }
        return listOf(EntryFailure(McpErrorCode.INVALID_REQUEST, sentence, "compileInMPS"))
    }

    private fun legacyMixFailure(tests: List<SNode>, probes: TestProbes): List<EntryFailure> {
        if (tests.size < 2) return emptyList()
        val flags = tests.map { probes.useCompatibilityMode(it) }
        if (flags.none { it } || flags.all { it }) return emptyList()
        val names = tests.zip(flags).filter { it.second }.map { (node, _) ->
            probes.testName(node) ?: node.name ?: node.nodeId.toString()
        }
        return listOf(
            EntryFailure(
                McpErrorCode.INVALID_REQUEST,
                "Cannot mix legacy (compatibility-mode) and modern tests in one configuration. " +
                    "Give these legacy tests a configuration of their own: ${names.joinToString(", ")}.",
                "tests",
            )
        )
    }

    private fun shortModelName(model: SModel): String = NameUtil.shortNameFromLongName(modelName(model))

    private fun liveModelName(model: SModel) = "Tests in '${shortModelName(model)}'"

    private fun snapshotModelName(model: SModel) = "Tests in '${shortModelName(model)}',..."

    private fun severalRootsName(node: SNode) = "${node.name ?: node.nodeId},..."

    private fun rejectEntries(failures: List<EntryFailure>): String {
        if (failures.size == 1) {
            val only = failures.single()
            return errJson(only.sentence, only.code)
        }
        val code = if (failures.all { it.code == McpErrorCode.NOT_FOUND }) {
            McpErrorCode.NOT_FOUND
        } else {
            McpErrorCode.INVALID_REQUEST
        }
        val body = buildString {
            append("${failures.size} entries failed:")
            for (failure in failures.sortedWith(compareBy({ labelRank(it.label) }, { labelIndex(it.label) }))) {
                append('\n')
                append(failure.label)
                append(": ")
                append(failure.sentence)
            }
        }
        return errJson(body, code)
    }

    // nodeReference entries, then modelReference entries, then the call-wide checks; stable within each.
    private fun labelRank(label: String): Int = when (label.substringBefore('[')) {
        "nodeReference" -> 0
        "modelReference" -> 1
        else -> 2
    }

    private fun labelIndex(label: String): Int =
        label.substringAfter('[', "").substringBefore(']').toIntOrNull() ?: -1

    private fun missingType(typeId: String) = errJson(
        "Run configuration type '$typeId' is not registered; the corresponding MPS plugin may be disabled",
        McpErrorCode.NOT_FOUND,
    )

    private fun missingFactory(typeId: String) = errJson(
        "Run configuration type '$typeId' has no registered factories",
        McpErrorCode.NOT_FOUND,
    )

    private fun javaOk(name: String, typeId: String, uniqueId: String): String =
        okJson(jsonObject {
            addProperty("name", name)
            addProperty("type", typeId)
            addProperty("uniqueId", uniqueId)
        })

    private fun junitOk(name: String, uniqueId: String, runType: String, count: Int, live: Boolean): String =
        okJson(jsonObject {
            addProperty("name", name)
            addProperty("type", JUNIT_TYPE_ID)
            addProperty("uniqueId", uniqueId)
            addProperty("runType", runType)
            addProperty("testCaseCount", count)
            addProperty("live", live)
        })

    private fun javaCompileSentence(node: SNode): String {
        val moduleName = SNodeOperations.getModel(node)?.module?.moduleName ?: "?"
        val nodeLabel = node.name ?: node.nodeId.toString()
        return "Module '$moduleName' (owner of node '$nodeLabel') has " +
            "compileInMPS=false; the standard MPS Java producer skips such " +
            "modules because their classes_gen is empty at launch. Either " +
            "flip the module's JavaModuleFacet compile setting to MPS, or " +
            "launch via the JPS-built classpath using the IDEA MCP " +
            "execute_run_configuration tool on the generated .java file."
    }

    private fun createForSingleRoot(mpsProject: MPSProject, node: SNode, configurationName: String?): String {
        val kind = determineKind(node) ?: return errJson(notRunnableSentence(node), McpErrorCode.INVALID_REQUEST)
        if (kind.isJavaApp && !isCompileInMps(node)) {
            return errJson(javaCompileSentence(node), McpErrorCode.INVALID_REQUEST)
        }
        val typeId = if (kind == ConfigKind.TEST_CASE) JUNIT_TYPE_ID else JAVA_TYPE_ID
        val configurationType = findConfigurationType(typeId) ?: return missingType(typeId)
        val factory = primaryFactory(configurationType) ?: return missingFactory(typeId)
        val runManager = RunManager.getInstance(mpsProject.project)
        val effectiveName = configurationName?.takeIf { it.isNotBlank() } ?: deriveName(node, kind)
        val settings = runManager.createConfiguration(effectiveName, factory)
        val cfg = settings.configuration
        if (kind == ConfigKind.TEST_CASE) {
            configureAsTestCase(cfg, node)
            runManager.addConfiguration(settings)
            return junitOk(settings.name, settings.uniqueID, "NODE", 1, live = false)
        }
        configureAsMain(cfg, node)
        runManager.addConfiguration(settings)
        return javaOk(settings.name, typeId, settings.uniqueID)
    }

    private fun registerJUnit(
        mpsProject: MPSProject,
        configurationName: String?,
        derivedName: String,
        configure: (cfg: Any, cl: ClassLoader, name: String, uniqueId: String) -> String,
    ): String {
        val configurationType = findConfigurationType(JUNIT_TYPE_ID) ?: return missingType(JUNIT_TYPE_ID)
        val factory = primaryFactory(configurationType) ?: return missingFactory(JUNIT_TYPE_ID)
        val runManager = RunManager.getInstance(mpsProject.project)
        val name = configurationName?.takeIf { it.isNotBlank() } ?: derivedName
        val settings = runManager.createConfiguration(name, factory)
        val json = configure(settings.configuration, settings.configuration.javaClass.classLoader, settings.name, settings.uniqueID)
        runManager.addConfiguration(settings)
        return json
    }

    private fun junitSettings(cfg: Any): Any =
        cfg.javaClass.getMethod("getJUnitSettings").invoke(cfg)
            ?: throw NoSuchMethodException("JUnitTests_Configuration#getJUnitSettings() returned null")

    private fun setJUnitRunType(settings: Any, cl: ClassLoader, constant: String) {
        val runTypeInterface = Class.forName(
            "jetbrains.mps.baseLanguage.unitTest.execution.settings.JUnitRunType",
            true, cl,
        )
        val runTypesEnum = Class.forName(
            "jetbrains.mps.baseLanguage.unitTest.execution.settings.JUnitRunTypes",
            true, cl,
        )
        val runType = runTypesEnum.enumConstants.firstOrNull { (it as Enum<*>).name == constant }
            ?: throw NoSuchMethodException("JUnitRunTypes.$constant constant not found")
        settings.javaClass.getMethod("setJUnitRunType", runTypeInterface).invoke(settings, runType)
    }

    private fun invokeStringSetter(settings: Any, name: String, value: String) {
        val setter = settings.javaClass.methods.firstOrNull {
            it.name == name && it.parameterCount == 1 && it.parameterTypes[0] == String::class.java
        } ?: throw NoSuchMethodException("JUnitSettings_Configuration#$name(String) not found")
        setter.invoke(settings, value)
    }

    private fun configureAsModel(cfg: Any, cl: ClassLoader, model: SModel) {
        val settings = junitSettings(cfg)
        setJUnitRunType(settings, cl, "MODEL")
        val module = model.module ?: throw NoSuchMethodException("Model '${modelName(model)}' has no module")
        invokeStringSetter(settings, "setModelRef", PersistenceRegistry.getInstance().asString(model.reference))
        invokeStringSetter(settings, "setModuleRef", module.moduleReference.toString())
    }

    private fun configureAsNodeList(cfg: Any, cl: ClassLoader, nodes: List<SNode>) {
        val settings = junitSettings(cfg)
        setJUnitRunType(settings, cl, "NODE")
        val pointerUtils = Class.forName("jetbrains.mps.execution.lib.PointerUtils", true, cl)
        val listMethod = pointerUtils.methods.firstOrNull {
            it.name == "nodesToCloneableList" && it.parameterCount == 1
        } ?: throw NoSuchMethodException("PointerUtils#nodesToCloneableList not found")
        val list = listMethod.invoke(null, java.util.ArrayList(nodes))
        val setTestCases = settings.javaClass.methods.firstOrNull {
            it.name == "setTestCases" && it.parameterCount == 1 &&
                MutableList::class.java.isAssignableFrom(it.parameterTypes[0])
        } ?: throw NoSuchMethodException("JUnitSettings_Configuration#setTestCases(List) not found")
        setTestCases.invoke(settings, list)
    }

    private fun clearInProcessFlag(settings: Any) {
        val setter = settings.javaClass.methods.firstOrNull {
            it.name == "setInProcessFlag" && it.parameterCount == 1 &&
                it.parameterTypes[0] == java.lang.Boolean.TYPE
        } ?: throw NoSuchMethodException("JUnitSettings_Configuration#setInProcessFlag(boolean) not found")
        setter.invoke(settings, false)
    }

    private fun applyInProcessFlag(cfg: Any, cl: ClassLoader, tests: List<SNode>, probes: TestProbes) {
        if (tests.any { !canRunInProcess(it, cl, probes) }) {
            clearInProcessFlag(junitSettings(cfg))
        }
    }

    // An ITestCase asks its behavior, as the IDE's list producer does. Any other discovered test
    // (a JUnit3/4 ClassConcept) answers from its descriptor's CAN_RUN_IN_PROCESS, which every
    // discovery participant sets explicitly.
    private fun canRunInProcess(node: SNode, cl: ClassLoader, probes: TestProbes): Boolean =
        if (SNodeOperations.isInstanceOf(node, ITEST_CASE)) invokeCanRunInProcess(cl, node) else probes.canRunInProcess(node)

    /**
     * Loads [TestNodeWrapperFactory] through the JUnit configuration classloader. Creating the
     * probe configuration does not register it. [JUnitRunTypes.collect] is deliberately not used:
     * it opens a modal task and deadlocks inside [executeShortCommandOnEdt].
     */
    private inner class TestProbes(mpsProject: MPSProject) {
        val classLoader: ClassLoader
        private val factory: Any
        private val tryToWrap: java.lang.reflect.Method
        // Looked up on the public ITestNodeWrapper interface, not on the wrapper's own class.
        private val useCompatibilityMode: java.lang.reflect.Method
        private val canRunInProcess: java.lang.reflect.Method
        private val getName: java.lang.reflect.Method
        private val cache = HashMap<SNode, Any?>()

        init {
            val type = findConfigurationType(JUNIT_TYPE_ID) ?: throw JUnitTypeMissing()
            val cfgFactory = primaryFactory(type) ?: throw JUnitTypeMissing()
            val settings = RunManager.getInstance(mpsProject.project).createConfiguration("probe", cfgFactory)
            classLoader = settings.configuration.javaClass.classLoader
                ?: throw NoSuchMethodException("JUnit configuration has no classloader")
            val factoryClass = Class.forName(
                "jetbrains.mps.baseLanguage.unitTest.execution.client.TestNodeWrapperFactory",
                true, classLoader,
            )
            val ctor = factoryClass.constructors.firstOrNull { it.parameterCount == 1 }
                ?: throw NoSuchMethodException("TestNodeWrapperFactory(ComponentHost) not found")
            factory = try {
                ctor.newInstance(mpsProject.platform)
            } catch (e: IllegalArgumentException) {
                throw NoSuchMethodException("TestNodeWrapperFactory could not take the project platform: ${e.message}")
            }
            tryToWrap = factoryClass.getMethod("tryToWrap", SNode::class.java)
            val wrapperInterface = Class.forName(
                "jetbrains.mps.baseLanguage.unitTest.execution.client.ITestNodeWrapper",
                true, classLoader,
            )
            useCompatibilityMode = wrapperInterface.getMethod("useCompatibilityMode")
            canRunInProcess = wrapperInterface.getMethod("canRunInProcess")
            getName = wrapperInterface.getMethod("getName")
        }

        private fun wrapped(node: SNode): Any =
            wrap(node) ?: throw NoSuchMethodException("'${node.name ?: node.nodeId}' is no longer a discovered test")

        fun useCompatibilityMode(node: SNode): Boolean = useCompatibilityMode.invoke(wrapped(node)) as Boolean

        fun canRunInProcess(node: SNode): Boolean = canRunInProcess.invoke(wrapped(node)) as Boolean

        fun testName(node: SNode): String? = getName.invoke(wrapped(node)) as? String

        fun wrap(node: SNode): Any? {
            if (cache.containsKey(node)) return cache[node]
            val wrapped = tryToWrap.invoke(factory, node)
            cache[node] = wrapped
            return wrapped
        }
    }
}
