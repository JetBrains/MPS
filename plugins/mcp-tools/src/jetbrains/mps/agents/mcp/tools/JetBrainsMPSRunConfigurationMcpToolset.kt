package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

import com.intellij.execution.RunManager
import com.intellij.execution.configurations.ConfigurationFactory
import com.intellij.execution.configurations.ConfigurationType
import com.intellij.execution.configurations.ConfigurationTypeUtil
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.classloading.ClassLoaderManager
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SInterfaceConcept
import org.jetbrains.mps.openapi.language.SProperty
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
        Creates and registers an MPS run configuration targeting a root node (IMainClass / ClassConcept-with-main → "Java Application"; ITestCase → "JUnit Tests"). Java Application paths require the owning module's `compileInMPS=true`; otherwise the call is refused with INVALID_REQUEST. Re-invoking with the same effective name replaces the existing config of that type rather than creating a duplicate. Returns `{"name", "type", "uniqueId"}` on success. See the `mps-run-configurations` skill (`references/runnable-shapes.md` for the dispatch predicates and `compileInMPS` gate; `references/create-and-execute.md` for naming, replacement semantics, and `execute_run_configuration` follow-up).
        """
    )
    suspend fun mps_mcp_create_run_configuration(
        @McpDescription("Reference of the root node that the run configuration should target (r:... or i:... or 'ModelName.RootName').")
        nodeReference: String,
        @McpDescription("Optional name for the new run configuration. Defaults to a name derived from the node.")
        configurationName: String? = null,
    ): String = withMpsProject("Creating MPS run configuration") { mpsProject ->
        executeShortCommandOnEdt(mpsProject) {
            val repo = mpsProject.repository
            val node = resolveNodeReference(mpsProject, nodeReference)?.resolve(repo)
            if (node == null) {
                if (resolveNodeReference(repo, nodeReference)?.resolve(repo) != null) {
                    return@executeShortCommandOnEdt crossProjectErr("Node '$nodeReference'")
                }
                return@executeShortCommandOnEdt errJson(
                    "Node '$nodeReference' not found", McpErrorCode.NOT_FOUND
                )
            }

            if (node.parent != null) {
                return@executeShortCommandOnEdt errJson(
                    "Node '$nodeReference' is not a root node; run configurations target root nodes only",
                    McpErrorCode.INVALID_REQUEST
                )
            }

            // Kind dispatch wraps reflective probing (ClassConcept.getMainMethod) so a missing
            // baseLanguage behavior descriptor surfaces as a structured INTERNAL_ERROR rather
            // than escaping the executor and trashing the caller's response envelope. The
            // configureAs* reflection later in the same try-block surfaces under the same
            // catch — they share the same failure mode, no need for two separate catches.
            try {
                val kind = determineKind(node) ?: return@executeShortCommandOnEdt errJson(
                    "Concept '${node.concept.name}' is not runnable through this tool: " +
                            "the root must implement IMainClass or ITestCase, or be a " +
                            "ClassConcept whose getMainMethod() resolves a static " +
                            "main(<String[]-subtype>) method (visibility is not checked)",
                    McpErrorCode.INVALID_REQUEST
                )

                // Producer parity: skip modules whose Java is compiled outside MPS. The IDE
                // producers (Java_Producer.ProducerPart_*) refuse the same way; replicating
                // it here keeps the tool from registering a configuration that will fail at
                // launch with ClassNotFoundException because classes_gen is empty.
                if (kind.isJavaApp && !isCompileInMps(node)) {
                    val moduleName = SNodeOperations.getModel(node)?.module?.moduleName ?: "?"
                    val nodeLabel = node.name ?: node.nodeId.toString()
                    return@executeShortCommandOnEdt errJson(
                        "Module '$moduleName' (owner of node '$nodeLabel') has " +
                                "compileInMPS=false; the standard MPS Java producer skips such " +
                                "modules because their classes_gen is empty at launch. Either " +
                                "flip the module's JavaModuleFacet compile setting to MPS, or " +
                                "launch via the JPS-built classpath using the IDEA MCP " +
                                "execute_run_configuration tool on the generated .java file.",
                        McpErrorCode.INVALID_REQUEST
                    )
                }

                val typeId = if (kind == ConfigKind.TEST_CASE) JUNIT_TYPE_ID else JAVA_TYPE_ID
                val configurationType = findConfigurationType(typeId)
                    ?: return@executeShortCommandOnEdt errJson(
                        "Run configuration type '$typeId' is not registered; the corresponding MPS plugin may be disabled",
                        McpErrorCode.NOT_FOUND
                    )
                val factory = primaryFactory(configurationType)
                    ?: return@executeShortCommandOnEdt errJson(
                        "Run configuration type '$typeId' has no registered factories",
                        McpErrorCode.NOT_FOUND
                    )

                val ideaProject = mpsProject.project
                val runManager = RunManager.getInstance(ideaProject)

                val effectiveName = configurationName?.takeIf { it.isNotBlank() }
                    ?: deriveName(node, kind)
                val settings = runManager.createConfiguration(effectiveName, factory)
                val cfg = settings.configuration

                if (kind == ConfigKind.TEST_CASE) {
                    configureAsTestCase(cfg, node)
                } else {
                    configureAsMain(cfg, node)
                }

                runManager.addConfiguration(settings)

                okJson(jsonObject {
                    addProperty("name", settings.name)
                    addProperty("type", typeId)
                    addProperty("uniqueId", settings.uniqueID)
                })
            } catch (e: ReflectiveOperationException) {
                errJson(
                    "Failed to populate run configuration: ${e.message}",
                    McpErrorCode.INTERNAL_ERROR
                )
            }
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
}
