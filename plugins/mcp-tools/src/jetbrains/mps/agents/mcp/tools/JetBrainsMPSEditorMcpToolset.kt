package jetbrains.mps.agents.mcp.tools

import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.LanguageAspect
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.action.SNodeFactoryOperations
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.model.EditableSModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSEditorMcpToolset : AbstractNodeOps() {

    private companion object {
        // BaseConcept properties that are not user-visible content and would just be noise if
        // scaffolded as cells. Every concept inherits these, so any check that wants to decide
        // whether a concept has "real" content of its own must exclude them.
        private val BASECONCEPT_NOISE_PROPERTIES = setOf("virtualPackage", "shortDescription")
        // BaseConcept containment links that are not user-visible content (smodelAttribute is the
        // annotation slot). Inherited by every concept and excluded from cell scaffolding.
        private val BASECONCEPT_NOISE_CONTAINMENTS = setOf("smodelAttribute")
        // The `name` property is scaffolded by a dedicated branch ("Name:" label, before the
        // generic property loop), so the main property loop and the components-coverage set skip
        // it. The marker-detection check does NOT — a concept that declares only `name` still has
        // scaffoldable content and should not be treated as a marker.
        private const val NAME_PROPERTY = "name"
        // Property names skipped by the generic property loop and excluded from the
        // components-coverage `allElements` set (since `name` is handled separately and the
        // BaseConcept noise is never scaffolded).
        private val PROPERTIES_HANDLED_OUTSIDE_GENERIC_LOOP =
            BASECONCEPT_NOISE_PROPERTIES + NAME_PROPERTY
    }

    private data class RefCellWiring(
        val refCellConcept: SConcept,
        val inlineEditorLink: SContainmentLink,
        val inlineEditorConcept: SConcept,
        val inlineCellModelLink: SContainmentLink,
        val propertyCellConcept: SConcept,
        val relationDeclLink: SReferenceLink
    )

    private fun addStyleItem(node: SNode, styleItemConcept: SConcept?) {
        if (styleItemConcept == null) return
        val styleItemLink = node.concept.containmentLinks.find { it.name == "styleItem" } ?: return
        val item = SNodeFactoryOperations.addNewChild(node, styleItemLink, styleItemConcept)
        item.concept.properties.find { it.name == "flag" }?.let { item.setProperty(it, "true") }
    }

    private fun addReferenceCellWithNameEditor(
        parent: SNode,
        parentLink: SContainmentLink,
        relationSource: SNodeReference?,
        targetConcept: SAbstractConcept,
        wiring: RefCellWiring,
        readOnly: Boolean,
        referenceStyle: String?,
        mpsProject: MPSProject
    ): SNode {
        val refCell = SNodeFactoryOperations.addNewChild(parent, parentLink, wiring.refCellConcept)
        relationSource?.let { refCell.setReference(wiring.relationDeclLink, it) }

        val inlineEditor = SNodeFactoryOperations.setNewChild(refCell, wiring.inlineEditorLink, wiring.inlineEditorConcept)
        val inlinePropCell = SNodeFactoryOperations.setNewChild(inlineEditor, wiring.inlineCellModelLink, wiring.propertyCellConcept)

        targetConcept.properties.find { it.name == "name" }?.sourceNode?.let {
            inlinePropCell.setReference(wiring.relationDeclLink, it)
        }

        if (readOnly) {
            wiring.propertyCellConcept.properties.find { it.name == "readOnly" }?.let { inlinePropCell.setProperty(it, "true") }
        }

        if (referenceStyle != null) {
            applyStyle(refCell, referenceStyle, mpsProject)
        }
        return refCell
    }

    @McpTool
    @McpDescription(
        """
        Generates a default `ConceptEditorDeclaration` (or `EditorComponentDeclaration` when `type="component"`) for a concept, wiring properties/children/references to default cell models. If the target concept is uncompiled or its structure is out of date, this tool automatically attempts to build (make) the structure model (self-healing). However, if this automatic build fails, or if the language runtime remains stale or hollow after compilation, the tool cannot retrieve the concept details and the operation will fail. For details on the canonical structure-to-aspect editing and compilation prerequisite chain, see the Critical Directives in the `mps-mcp-workflow` skill.
    """
    )
    suspend fun mps_mcp_scaffold_editor(
        @McpDescription("The persistent reference c:... or r:... of the declaration of the concept that needs an editor, or its fully qualified name.") conceptRef: String,
        @McpDescription("Target editor model where the editor node should be created: a persistent model reference (preferred), or the model's long/short name resolved in the project selected by projectPath.") modelReference: String,
        @McpDescription("Optional: A persistent reference to a StyleClass to automatically apply to constant cells like the concept alias.") keywordStyle: String? = null,
        @McpDescription("Optional: A persistent reference to a StyleClass to apply to reference cells.") referenceStyle: String? = null,
        @McpDescription("Whether to automatically detect and include existing suitable editor components.") detectComponents: Boolean = false,
        @McpDescription("Optional: A persistent reference to an existing EditorComponentDeclaration, or a JSON array of references. Omit or pass [] for no explicit components.") includeComponents: String? = null,
        @McpDescription("Optional: The type of editor to create: 'editor' (default) or 'component'.") type: String = "editor",
        @McpDescription("Optional: A property name or JSON array of property names to include. Omit for all; [] for none.") includeProperties: String? = null,
        @McpDescription("Optional: A reference name or JSON array of reference names to include. Omit for all; [] for none.") includeReferences: String? = null,
        @McpDescription("Optional: A containment link name or JSON array of containment link names to include. Omit for all; [] for none.") includeChildren: String? = null
    ): String = mps_mcp_scaffold_editor(
        conceptRef,
        modelReference,
        keywordStyle,
        referenceStyle,
        detectComponents,
        parseNullableStringOrJsonArray(includeComponents),
        type,
        parseNullableStringOrJsonArray(includeProperties),
        parseNullableStringOrJsonArray(includeReferences),
        parseNullableStringOrJsonArray(includeChildren),
    )

    /**
     * Internal list-typed entry point for [mps_mcp_scaffold_editor]. Deliberately *not*
     * annotated with `@McpTool`: the String-typed overload above accepts a single value or a
     * JSON array while preserving the underlying null-versus-empty-list semantics.
     * Retained as a direct entry point for in-process callers and tests.
     */
    suspend fun mps_mcp_scaffold_editor(
        conceptRef: String,
        modelReference: String,
        keywordStyle: String? = null,
        referenceStyle: String? = null,
        detectComponents: Boolean = false,
        includeComponents: List<String>?,
        type: String = "editor",
        includeProperties: List<String>? = null,
        includeReferences: List<String>? = null,
        includeChildren: List<String>? = null
    ): String {
        if (type != "editor" && type != "component") {
            return errJson("Invalid 'type' parameter '$type': expected 'editor' or 'component'")
        }
        return withMpsProject("Scaffolding MPS editor") { mpsProject ->
            scaffoldEditorImpl(
                mpsProject = mpsProject,
                conceptRef = conceptRef,
                modelReference = modelReference,
                keywordStyle = keywordStyle,
                referenceStyle = referenceStyle,
                detectComponents = detectComponents,
                includeComponents = includeComponents,
                type = type,
                includeProperties = includeProperties,
                includeReferences = includeReferences,
                includeChildren = includeChildren
            )
        }
    }

    private suspend fun scaffoldEditorImpl(
        mpsProject: jetbrains.mps.project.MPSProject,
        conceptRef: String,
        modelReference: String,
        keywordStyle: String?,
        referenceStyle: String?,
        detectComponents: Boolean,
        includeComponents: List<String>?,
        type: String,
        includeProperties: List<String>?,
        includeReferences: List<String>?,
        includeChildren: List<String>?
    ): String {
        // Only skip the make if the concept is properly loaded (valid) and its structure model does not need generation.
        // This avoids skipping make for concepts that were just created but not yet compiled/indexed.
        val structureModelForMake = mpsProject.modelAccess.computeReadAction {
            val c = try {
                resolveConceptPreferringProject(mpsProject, conceptRef)
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                logger.warn("Failed to resolve concept '$conceptRef'", e)
                null
            }
            val model = try {
                resolveConceptNodePreferringProject(mpsProject, conceptRef)?.model
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                logger.warn("Failed to resolve concept node '$conceptRef'", e)
                null
            }

            var generationRequired = false
            if (model != null) {
                try {
                    // Use reflection for ModelGenerationStatusManager to avoid optional generator-engine dependency
                    val mgsmClass = Class.forName("jetbrains.mps.generator.ModelGenerationStatusManager")
                    val mgsm = mpsProject.getComponent(mgsmClass)
                    if (mgsm != null) {
                        val method = mgsmClass.getMethod("generationRequired", org.jetbrains.mps.openapi.model.SModel::class.java)
                        generationRequired = method.invoke(mgsm, model) as Boolean
                    }
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    logger.warn("Reflection failure checking generation status for model '${model.name}' via ModelGenerationStatusManager", e)
                    if (model is EditableSModel && model.isChanged) {
                        generationRequired = true
                    }
                }
            }

            // If a concept is not valid (not properly loaded in runtime) or generation is required for its model, we must perform a make.
            // A null sourceNode also signals a stale/hollow runtime descriptor: c.isValid only checks
            // that *some* descriptor is present, but a hollow descriptor (no origin, empty
            // properties/references/children) leaves nothing to scaffold from.
            if (c != null && c.isValid && c.sourceNode != null && !generationRequired) null
            else model
        }
        if (structureModelForMake != null) {
            val makeResult = performMake(mpsProject, listOf(structureModelForMake), emptyList(), true)
            if (!makeResult.success) {
                return errJson("Failed to make the structure model for concept '$conceptRef': ${makeResult.message}")
            }
        }

        var result: String? = null
        var error: String? = null
        executeShortCommandOnEdt(mpsProject) {
                // Hoisted so the finally block can roll back a partially created editor on any
                // error path — required-resource lookups that set `error` and return early, an
                // exception during cell construction, or the empty-cells branch below.
                var editorDeclaration: SNode? = null
                // The marker-editor path also creates a SubstituteMenu root node so MPS can drive
                // substitution from the surrounding containment slot. If anything fails between
                // creating it and `model.save()`, the menu would leak alongside the rolled-back
                // editor declaration — track it so the finally block can remove it as a pair.
                var createdMenu: SNode? = null
                // Tracks a `type` child added to a PRE-EXISTING SubstituteMenu in the additive-
                // repair branch (existing menu with no `type` → mint a MenuTypeDefault inside it
                // so substitution actually works). On rollback the child must be removed without
                // touching the surrounding menu, which the user authored — `createdMenu` is the
                // wrong handle for that case because deleting the whole menu would destroy work.
                var repairedMenuTypeChild: SNode? = null
                // Rollback trigger. Previous shape used `error != null`, which forced the catch
                // block to assign `error` BEFORE every rethrow path (cancellation, Error). That
                // ordering was load-bearing and easy to break in a future edit. With a dedicated
                // `succeeded` flag set only on the happy path, rollback fires on every non-success
                // exit (early return, ordinary exception, cancellation, Error) without needing
                // any particular statement order in the catch.
                var succeeded = false
                try {
                    val repo = mpsProject.repository
                    fun requiredConcept(name: String): SConcept? = (resolveConcept(repo, name) as? SConcept) ?: run {
                        error = "Concept '$name' not found"
                        null
                    }

                    fun requiredContainmentLink(concept: SConcept, linkName: String, conceptName: String): SContainmentLink? =
                        concept.containmentLinks.find { it.name == linkName } ?: run {
                            error = "Containment link '$linkName' not found in $conceptName"
                            null
                        }

                    fun requiredReferenceLink(concept: SConcept, linkName: String, conceptName: String): SReferenceLink? =
                        concept.referenceLinks.find { it.name == linkName } ?: run {
                            error = "Reference link '$linkName' not found in $conceptName"
                            null
                        }

                    fun requiredProperty(concept: SConcept, propertyName: String, conceptName: String): org.jetbrains.mps.openapi.language.SProperty? =
                        concept.properties.find { it.name == propertyName } ?: run {
                            error = "Property '$propertyName' not found in $conceptName"
                            null
                        }

                    val sConcept = resolveConceptPreferringProject(mpsProject, conceptRef) ?: run {
                        error = "Concept '$conceptRef' not found"
                        return@executeShortCommandOnEdt
                    }

                    // Model-level staleness gate. Delegates to MPS's canonical
                    // `ModelGenerationStatusManager.generationRequired` (the same predicate the
                    // project view's outdated indicator uses) plus a LanguageRegistry presence
                    // check. Accepts the false positive that any unbuilt edit anywhere in the
                    // structure model blocks scaffolding for every concept in that model — the
                    // cost is one extra idempotent rebuild, which is what the user would do
                    // anyway. See `checkScaffoldingStaleness` for the tradeoff rationale.
                    when (val staleness = checkScaffoldingStaleness(sConcept, mpsProject)) {
                        ScaffoldingStaleness.Fresh -> Unit
                        is ScaffoldingStaleness.Stale -> {
                            error = "Cannot scaffold editor for '${structureQualifiedName(sConcept)}': " +
                                    "${staleness.reason}. ${staleness.recoveryHint}"
                            return@executeShortCommandOnEdt
                        }
                    }

                    val model = when (val r = resolveEditableModel(mpsProject, modelReference)) {
                        is EditableModelResolution.Ok -> r.model
                        is EditableModelResolution.Err -> {
                            error = r.errJson
                            return@executeShortCommandOnEdt
                        }
                    }

                    // Resolve editor concepts and links
                    val editorConceptName =
                        if (type == "component") "jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" else "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration"
                    val editorConcept = requiredConcept(editorConceptName) ?: return@executeShortCommandOnEdt

                    // Create editor/component
                    val editor = SNodeFactoryOperations.createNewRootNode(model, editorConcept, null)
                    editorDeclaration = editor
                    if (type == "component" && editorConcept.properties.contains(SNodeUtil.property_INamedConcept_name)) {
                        editor.setProperty(SNodeUtil.property_INamedConcept_name, "${sConcept.name}_Component")
                    }

                    val conceptDeclLink = requiredReferenceLink(editorConcept, "conceptDeclaration", editorConceptName) ?: return@executeShortCommandOnEdt
                    // sConcept.sourceNode is non-null once the language is compiled and its runtime
                    // classes are loaded into the ConceptRegistry.  performMake now waits for
                    // afterLanguagesLoaded before returning, so this should be non-null after a
                    // successful build.  The resolveConceptNode fallback is kept as a safety net
                    // for the edge case where the 10-second registry-wait times out.
                    val sourceNode = sConcept.sourceNode
                        ?: resolveConceptNodePreferringProject(mpsProject, conceptRef)?.reference
                        ?: run {
                            error = "Concept '$conceptRef' has no source node"
                            return@executeShortCommandOnEdt
                        }
                    editor.setReference(conceptDeclLink, sourceNode)

                    // Set virtual folder
                    sourceNode.resolve(repo)?.let { sourceNodeResolved ->
                        val virtualPackage = sourceNodeResolved.concept.properties.find { it.name == "virtualPackage" }
                            ?.let(sourceNodeResolved::getProperty)
                            ?.takeIf { it.isNotEmpty() }
                        val editorVirtualPackageProp = editorConcept.properties.find { it.name == "virtualPackage" }
                        if (virtualPackage != null && editorVirtualPackageProp != null) {
                            editor.setProperty(editorVirtualPackageProp, virtualPackage)
                        }
                    }

                    // Main Collection (indent layout)
                    val collectionConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellModel_Collection") ?: return@executeShortCommandOnEdt
                    val cellModelLink = requiredContainmentLink(editorConcept, "cellModel", editorConceptName) ?: return@executeShortCommandOnEdt
                    // Clear an existing cellModel (e.g. from node factory) to avoid "transfer" behavior
                    editor.getChildren(cellModelLink).toList().forEach { it.delete() }

                    // Pre-resolve cell concepts and links used by both the smart-ref branch and the
                    // references loop, then bundle them into RefCellWiring.
                    val refCellConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellModel_RefCell") ?: return@executeShortCommandOnEdt
                    val inlineEditorLink = requiredContainmentLink(refCellConcept, "editorComponent", "CellModel_RefCell") ?: return@executeShortCommandOnEdt
                    val inlineEditorConcept = requiredConcept("jetbrains.mps.lang.editor.structure.InlineEditorComponent") ?: return@executeShortCommandOnEdt
                    val inlineCellModelLink = requiredContainmentLink(inlineEditorConcept, "cellModel", "InlineEditorComponent") ?: return@executeShortCommandOnEdt
                    val propertyCellConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellModel_Property") ?: return@executeShortCommandOnEdt
                    val relationDeclLink = requiredReferenceLink(propertyCellConcept, "relationDeclaration", "CellModel_Property") ?: return@executeShortCommandOnEdt
                    val refCellWiring =
                        RefCellWiring(refCellConcept, inlineEditorLink, inlineEditorConcept, inlineCellModelLink, propertyCellConcept, relationDeclLink)

                    val smartRefLink = getSmartReferenceLink(sConcept, repo)
                    if (smartRefLink != null && type != "component") {
                        // Smart-reference scaffolding produces a single ref cell and bypasses
                        // the components/properties/references/children pipeline below. Combining
                        // it with explicit `includeComponents`/`detectComponents` would silently
                        // drop the caller's input — reject the combination so the misalignment
                        // surfaces here rather than as an unexpected-empty-editor downstream.
                        val explicitNonEmpty = !includeComponents.isNullOrEmpty()
                        if (explicitNonEmpty || detectComponents) {
                            error = "Concept '${structureQualifiedName(sConcept)}' has a smart reference link; " +
                                    "scaffolding emits a single reference cell and cannot also include " +
                                    "editor components. Either drop `includeComponents`/`detectComponents`, " +
                                    "or scaffold with `type = \"component\"` to bypass the smart-ref shortcut."
                            return@executeShortCommandOnEdt
                        }

                        addReferenceCellWithNameEditor(
                            parent = editor,
                            parentLink = cellModelLink,
                            relationSource = smartRefLink.sourceNode,
                            targetConcept = smartRefLink.targetConcept,
                            wiring = refCellWiring,
                            readOnly = true,
                            referenceStyle = referenceStyle,
                            mpsProject = mpsProject
                        )

                        saveModelAndModule(model)
                        val refStr = PersistenceFacade.getInstance().asString(editor.reference)
                        result = jsonObject {
                            addProperty("editorNodeRef", refStr)
                            addProperty("message", "Scaffolded smart reference editor.")
                        }.toString()
                        // Mark success BEFORE the early return: the finally block keys rollback
                        // off `!succeeded`, so an early return on the happy path that forgets
                        // this flag would otherwise delete the just-saved editor node.
                        succeeded = true
                        return@executeShortCommandOnEdt
                    }

                    val mainCollection = SNodeFactoryOperations.addNewChild(editor, cellModelLink, collectionConcept)

                    val cellLayoutLink = requiredContainmentLink(collectionConcept, "cellLayout", "CellModel_Collection") ?: return@executeShortCommandOnEdt
                    // Style Items concepts
                    val onNewLineConcept = resolveConcept(repo, "jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem") as? SConcept
                    val indentConcept = resolveConcept(repo, "jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem") as? SConcept
                    val newLineChildrenConcept =
                        resolveConcept(repo, "jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem") as? SConcept

                    // Helper to determine if a concept element (property, reference, or child) should be included.
                    // CONTRACT: If the caller explicitly requested a subset of elements via `includeNames`, we respect that
                    // subset exclusively (shadowing/ignoring `excludedNames`). If `includeNames` is null (default),
                    // we include all elements except those explicitly marked in `excludedNames`.
                    fun includeElement(name: String, includeNames: List<String>?, excludedNames: Set<String> = emptySet()): Boolean {
                        return includeNames?.contains(name) ?: (name !in excludedNames)
                    }

                    val indentLayoutConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellLayout_Indent") ?: return@executeShortCommandOnEdt
                    SNodeFactoryOperations.setNewChild(mainCollection, cellLayoutLink, indentLayoutConcept)

                    val childCellModelLink = requiredContainmentLink(collectionConcept, "childCellModel", "CellModel_Collection") ?: return@executeShortCommandOnEdt

                    // Collect suitable components
                    val includedComponents = mutableListOf<SNode>()
                    val coveredElements = mutableSetOf<SNodeReference>()

                    val availableComponents = mutableListOf<SNode>()
                    // Components explicitly listed by the caller bypass the coverage filter below —
                    // explicit user intent should not be silently dropped just because a component
                    // happens not to render any of the target concept's properties/refs/children
                    // (e.g. an alias-only or header-only component).
                    val explicitComponents = mutableSetOf<SNode>()

                    // 1. Resolve explicitly included components
                    includeComponents?.forEach { ref ->
                        val nodeReference = resolveNodeReferencePreferringProject(mpsProject, ref)
                        val node = nodeReference?.resolve(repo)
                        if (node != null && structureQualifiedName(node.concept) == "jetbrains.mps.lang.editor.structure.EditorComponentDeclaration") {
                            availableComponents.add(node)
                            explicitComponents.add(node)
                        }
                    }

                    // 2. Detect suitable components
                    if (detectComponents) {
                        val superConcepts = SConceptOperations.getAllSuperConcepts(sConcept, true).toSet()
                        val languages = superConcepts.map { it.language }.distinct()
                        for (lang in languages) {
                            val module = lang.sourceModule
                            if (module is Language) {
                                val editorModel = LanguageAspect.EDITOR.get(module)
                                editorModel?.rootNodes?.forEach { root ->
                                    if (structureQualifiedName(root.concept) != "jetbrains.mps.lang.editor.structure.EditorComponentDeclaration") return@forEach
                                    val targetConceptNode = root.references.find { it.link.name == "conceptDeclaration" }?.targetNode ?: return@forEach
                                    val targetSConcept = MetaAdapterByDeclaration.getConcept(targetConceptNode)
                                    if (targetSConcept in superConcepts && root !in availableComponents) {
                                        availableComponents.add(root)
                                    }
                                }
                            }
                        }
                    }

                    // 3. Determine which components to include and what they cover
                    val allElements = mutableSetOf<SNodeReference>()
                    sConcept.properties.forEach {
                        if (includeElement(it.name, includeProperties, PROPERTIES_HANDLED_OUTSIDE_GENERIC_LOOP)) {
                            it.sourceNode?.let(allElements::add)
                        }
                    }
                    sConcept.referenceLinks.forEach {
                        if (includeElement(it.name, includeReferences)) {
                            it.sourceNode?.let(allElements::add)
                        }
                    }
                    sConcept.containmentLinks.forEach {
                        if (includeElement(it.name, includeChildren, BASECONCEPT_NOISE_CONTAINMENTS)) {
                            it.sourceNode?.let(allElements::add)
                        }
                    }
                    // name property is special but we can include it if covered
                    if (includeProperties == null || includeProperties.contains(NAME_PROPERTY)) {
                        sConcept.properties.find { it.name == NAME_PROPERTY }?.sourceNode?.let { allElements.add(it) }
                    }

                    for (comp in availableComponents) {
                        val compCovered = mutableSetOf<SNodeReference>()
                        val cells = SNodeOperations.getNodeDescendants(comp, null, true)
                        for (cell in cells) {
                            val rel = cell.references.find { it.link.name == "relationDeclaration" }?.targetNode
                            if (rel != null) {
                                val relRef = rel.reference
                                if (allElements.contains(relRef)) {
                                    compCovered.add(relRef)
                                }
                            }
                        }
                        if (compCovered.isNotEmpty() || comp in explicitComponents) {
                            includedComponents.add(comp)
                            coveredElements.addAll(compCovered)
                            allElements.removeAll(compCovered)
                        }
                    }

                    // 4. Add CellModel_Component for each included component
                    val componentCellConcept = resolveConcept(repo, "jetbrains.mps.lang.editor.structure.CellModel_Component") as? SConcept
                    val editorComponentLink = componentCellConcept?.referenceLinks?.find { it.name == "editorComponent" }

                    if (componentCellConcept != null && editorComponentLink != null) {
                        for (comp in includedComponents) {
                            val compCell = SNodeFactoryOperations.addNewChild(mainCollection, childCellModelLink, componentCellConcept)
                            compCell.setReferenceTarget(editorComponentLink, comp)
                            addStyleItem(compCell, onNewLineConcept)
                        }
                    }

                    var aliasAdded = false
                    var propertyCount = 0
                    var childCount = 0
                    var referenceCount = 0

                    val constantConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellModel_Constant") ?: return@executeShortCommandOnEdt
                    val textProp = requiredProperty(constantConcept, "text", "CellModel_Constant") ?: return@executeShortCommandOnEdt

                    fun addConstantCell(text: String, style: String? = null, addNewLineStyle: Boolean = false): SNode {
                        val cell = SNodeFactoryOperations.addNewChild(mainCollection, childCellModelLink, constantConcept)
                        cell.setProperty(textProp, text)
                        if (addNewLineStyle) {
                            addStyleItem(cell, onNewLineConcept)
                        }
                        if (style != null) {
                            applyStyle(cell, style, mpsProject)
                        }
                        return cell
                    }

                    // Constant for alias
                    val alias = sConcept.conceptAlias
                    if (alias.isNotEmpty() && type != "component") {
                        // If components were emitted above (each carrying onNewLine), the alias
                        // would otherwise glue to the trailing edge of the last component cell
                        // in an indent layout. Force a new line in that case.
                        addConstantCell(alias, keywordStyle, addNewLineStyle = includedComponents.isNotEmpty())
                        aliasAdded = true
                    }

                    // Properties — propertyCellConcept and relationDeclLink were pre-resolved
                    // above for the smart-ref branch.

                    // name property first
                    val nameProp = sConcept.properties.find { it.name == NAME_PROPERTY }
                    if (nameProp != null && (includeProperties == null || includeProperties.contains(NAME_PROPERTY))) {
                        val propSourceNode = nameProp.sourceNode
                        if (propSourceNode != null && propSourceNode !in coveredElements) {
                            addConstantCell("Name:", addNewLineStyle = true)
                            val propCell = SNodeFactoryOperations.addNewChild(mainCollection, childCellModelLink, propertyCellConcept)
                            propCell.setReference(relationDeclLink, propSourceNode)
                            propertyCount++
                        }
                    }

                    for (prop in sConcept.properties) {
                        if (prop.name in PROPERTIES_HANDLED_OUTSIDE_GENERIC_LOOP) continue
                        if (includeProperties != null && !includeProperties.contains(prop.name)) continue
                        val propSourceNode = prop.sourceNode ?: continue
                        if (coveredElements.contains(propSourceNode)) continue

                        addConstantCell("${prop.name}:", addNewLineStyle = true)

                        val propCell = SNodeFactoryOperations.addNewChild(mainCollection, childCellModelLink, propertyCellConcept)
                        propCell.setReference(relationDeclLink, propSourceNode)
                        propertyCount++
                    }

                    // References — cell concepts were pre-resolved above into refCellWiring.
                    for (ref in sConcept.referenceLinks) {
                        if (includeReferences != null && !includeReferences.contains(ref.name)) continue
                        val refSourceNode = ref.sourceNode ?: continue
                        if (coveredElements.contains(refSourceNode)) continue

                        addConstantCell("${ref.name}:", addNewLineStyle = true)

                        addReferenceCellWithNameEditor(
                            parent = mainCollection,
                            parentLink = childCellModelLink,
                            relationSource = refSourceNode,
                            targetConcept = ref.targetConcept,
                            wiring = refCellWiring,
                            readOnly = false,
                            referenceStyle = referenceStyle,
                            mpsProject = mpsProject
                        )
                        referenceCount++
                    }

                    // Children
                    val refNodeListConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellModel_RefNodeList") ?: return@executeShortCommandOnEdt
                    val refNodeConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellModel_RefNode") ?: return@executeShortCommandOnEdt

                    for (link in sConcept.containmentLinks) {
                        if (link.name in BASECONCEPT_NOISE_CONTAINMENTS) continue
                        if (includeChildren != null && !includeChildren.contains(link.name)) continue
                        val linkSourceNode = link.sourceNode ?: continue
                        if (coveredElements.contains(linkSourceNode)) continue

                        addConstantCell("${link.name}:", addNewLineStyle = true)

                        if (link.isMultiple) {
                            val listCell = SNodeFactoryOperations.addNewChild(mainCollection, childCellModelLink, refNodeListConcept)
                            listCell.setReference(relationDeclLink, linkSourceNode)
                            addStyleItem(listCell, onNewLineConcept)
                            addStyleItem(listCell, indentConcept)
                            addStyleItem(listCell, newLineChildrenConcept)

                            val listCellLayoutLink = requiredContainmentLink(refNodeListConcept, "cellLayout", "CellModel_RefNodeList") ?: return@executeShortCommandOnEdt
                            SNodeFactoryOperations.setNewChild(listCell, listCellLayoutLink, indentLayoutConcept)
                        } else {
                            val nodeCell = SNodeFactoryOperations.addNewChild(mainCollection, childCellModelLink, refNodeConcept)
                            nodeCell.setReference(relationDeclLink, linkSourceNode)
                            addStyleItem(nodeCell, onNewLineConcept)
                            addStyleItem(nodeCell, indentConcept)
                        }
                        childCount++
                    }

                    // If scaffolding produced no cells at all (no alias, no components, no
                    // properties/references/children), and the concept has no structural
                    // content of its own to render, the concept is a "marker" — a concrete
                    // placeholder used to occupy a slot in a list (e.g. an EmptyLine in a
                    // sequence of statements). For these concepts, the natural editor is a
                    // single editable empty cell, paired with an empty default SubstituteMenu
                    // root node attached to the concept. MPS then drives substitution from
                    // the surrounding containment slot's concept (e.g. Statement sub-concepts
                    // inside a Statement[] list). Mirrors the EmptyLine pattern from the Kaja
                    // sample.
                    //
                    // If the concept *does* have structural content but the caller filtered
                    // it all out via `includeProperties` / `includeReferences` /
                    // `includeChildren`, this is not a marker — silently scaffolding one
                    // would diverge from the caller's intent, so we surface an explicit error.
                    //
                    // `SAbstractConcept.getProperties()` (and the link accessors) return inherited
                    // members too — every concept inherits `virtualPackage` / `shortDescription`
                    // and `smodelAttribute` from BaseConcept, so a naive `isNotEmpty()` check would
                    // mark every concept as having content and leave the marker path unreachable.
                    // Mirror the same exclusions the scaffolding loops above use so a structurally
                    // empty concept like EmptyLine is correctly recognised as a marker.
                    val conceptHasOwnContent = sConcept.properties.any { it.name !in BASECONCEPT_NOISE_PROPERTIES } ||
                            sConcept.referenceLinks.isNotEmpty() ||
                            sConcept.containmentLinks.any { it.name !in BASECONCEPT_NOISE_CONTAINMENTS }
                    val totalCells = (if (aliasAdded) 1 else 0) + propertyCount + referenceCount + childCount + includedComponents.size
                    if (totalCells == 0) {
                        val canScaffoldMarker = type == "editor" && !sConcept.isAbstract && !conceptHasOwnContent
                        if (!canScaffoldMarker) {
                            // Accumulate every applicable rejection — a concept can fail more than
                            // one constraint at once (e.g. abstract AND filter-emptied), and
                            // reporting only the first would leave the operator chasing the same
                            // dead end after they fix that one cause. Each entry is (reason, hint).
                            val rejections = buildList<Pair<String, String>> {
                                if (conceptHasOwnContent) add(
                                    "all structural content was filtered out by the `include*` lists" to
                                            "Loosen the `includeProperties` / `includeReferences` / `includeChildren` filters, or omit them to include everything."
                                )
                                if (type == "component") add(
                                    "editor components require explicit cells" to
                                            "Include explicit content via `includeProperties` / `includeReferences` / `includeChildren` / `includeComponents`."
                                )
                                if (sConcept.isAbstract) add(
                                    "the concept is abstract" to
                                            "Make the concept concrete to use it as a marker placeholder, or scaffold its concrete sub-concepts instead."
                                )
                            }
                            // canScaffoldMarker == false implies at least one rejection holds.
                            check(rejections.isNotEmpty()) {
                                "Unreachable: canScaffoldMarker invariant violated for '${structureQualifiedName(sConcept)}'"
                            }
                            // Numbering keeps the hints parseable when multiple causes fire — otherwise
                            // three remediation steps run together into a single wall of prose. With a
                            // single cause we drop the numbering so the message stays terse.
                            val reasonText = rejections.joinToString("; ") { it.first }
                            val hintText = if (rejections.size == 1) {
                                rejections.single().second
                            } else {
                                rejections.withIndex().joinToString(separator = " ") { (i, r) -> "(${i + 1}) ${r.second}" }
                            }
                            error = "Scaffolding produced no editor cells for '${structureQualifiedName(sConcept)}': $reasonText. $hintText"
                            return@executeShortCommandOnEdt
                        }

                        // Scaffold the editable-empty-cell pattern, with the constant cell set
                        // directly as the editor's cellModel — no CellModel_Collection wrapper,
                        // mirroring EmptyLine_Editor in the Kaja sample. `setNewChild` would
                        // also clear the prior child on this single-cardinality link, but make
                        // the intent explicit.
                        mainCollection.delete()

                        val styleItemLink = requiredContainmentLink(constantConcept, "styleItem", "CellModel_Constant") ?: return@executeShortCommandOnEdt
                        val editableStyleConcept = requiredConcept("jetbrains.mps.lang.editor.structure.EditableStyleClassItem") ?: return@executeShortCommandOnEdt
                        val flagProp = requiredProperty(editableStyleConcept, "flag", "EditableStyleClassItem") ?: return@executeShortCommandOnEdt

                        val emptyCell = SNodeFactoryOperations.setNewChild(editor, cellModelLink, constantConcept)
                        emptyCell.setProperty(textProp, "")
                        SNodeFactoryOperations.addNewChild(emptyCell, styleItemLink, editableStyleConcept)
                            .setProperty(flagProp, "true")

                        // Attach a menuDescriptor with a CellMenuPart_ReplaceNode_CustomNodeConcept
                        // pointing at the direct super-concept, so the surrounding slot's
                        // substitution offers sibling concepts. Only meaningful when the super
                        // is not BaseConcept — otherwise the replacement would be vacuous.
                        // Mirrors the EmptyLine_Editor pattern in the Kaja sample.
                        //
                        // If the super extends BaseConcept directly OR its sourceNode is
                        // unavailable (compiled-only super with no structure aspect in the
                        // current repo), the descriptor is skipped and the diagnostic message
                        // records that fact so the caller isn't led to believe substitution is
                        // wired up. The skip-with-note branch is hard to drive from an
                        // integration test in the standard MPS distribution — every concept
                        // whose runtime is loaded also has its structure aspect available —
                        // so it is verified by reading the surrounding code rather than by a
                        // dedicated test.
                        val directSuper = sConcept.superConcept
                        val menuDescriptorNote: String = when {
                            directSuper == null || structureQualifiedName(directSuper) == "jetbrains.mps.lang.core.structure.BaseConcept" -> ""
                            directSuper.sourceNode == null ->
                                " (menuDescriptor skipped: super-concept '${structureQualifiedName(directSuper)}' has no source node in this repo)"
                            else -> {
                                val menuDescriptorLink = requiredContainmentLink(constantConcept, "menuDescriptor", "CellModel_Constant") ?: return@executeShortCommandOnEdt
                                val cellMenuDescriptorConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellMenuDescriptor") ?: return@executeShortCommandOnEdt
                                val cellMenuPartLink = requiredContainmentLink(cellMenuDescriptorConcept, "cellMenuPart", "CellMenuDescriptor") ?: return@executeShortCommandOnEdt
                                val replaceNodeCustomConcept = requiredConcept("jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceNode_CustomNodeConcept") ?: return@executeShortCommandOnEdt
                                val replacementConceptLink = requiredReferenceLink(replaceNodeCustomConcept, "replacementConcept", "CellMenuPart_ReplaceNode_CustomNodeConcept") ?: return@executeShortCommandOnEdt

                                val descriptor = SNodeFactoryOperations.setNewChild(emptyCell, menuDescriptorLink, cellMenuDescriptorConcept)
                                val replacePart = SNodeFactoryOperations.addNewChild(descriptor, cellMenuPartLink, replaceNodeCustomConcept)
                                replacePart.setReference(replacementConceptLink, directSuper.sourceNode!!)
                                ""
                            }
                        }

                        // Ensure a functional default SubstituteMenu root node exists for this
                        // concept. With one in place, MPS routes substitution via the cell's
                        // containment slot (the standard EmptyLine flow). Three cases:
                        //
                        //   (a) no existing menu  → create one with a MenuTypeDefault `type`.
                        //   (b) existing menu, has a `type` child (any concept)
                        //                         → leave it alone. The user has expressed an
                        //                           intent; overwriting could discard wrap/select
                        //                           customisations or replace a deliberate
                        //                           MenuTypeReference / contributed menu.
                        //   (c) existing menu, no `type` child
                        //                         → ADDITIVELY repair by inserting a
                        //                           MenuTypeDefault. Without a `type`, substitution
                        //                           is broken and reporting "kept as-is" would
                        //                           leave the caller with a silently non-working
                        //                           editor. The repair is non-destructive: no
                        //                           existing child is replaced, no reference is
                        //                           rewired; we only fill in what was missing.
                        //
                        // The match uses exact-concept equality (`root.concept == substituteMenuConcept`)
                        // rather than `isSubConceptOf`. SubstituteMenu has no subconcepts in the
                        // stock MPS distribution, and custom subconcepts authored downstream are
                        // rare enough that the false-negative risk (a duplicate default menu sitting
                        // alongside a user-authored subconcept menu) is acceptable; matching by
                        // supertype would require an additional read-action call per root and risk
                        // silently treating an unrelated `SubstituteMenu`-derived node as a marker
                        // menu. Revisit if a subconcept use case shows up in practice.
                        //
                        // SubstituteMenu and its conceptDeclaration link are required for the
                        // detection scan; `type` link and MenuTypeDefault concept are required only
                        // when we have to mint a fresh menu or repair a typeless one. Resolving
                        // them lazily lets rerun-on-fully-formed-existing-menu succeed even on
                        // stripped-down MPS distributions where MenuTypeDefault was removed or
                        // `type` was renamed.
                        val substituteMenuConcept = requiredConcept("jetbrains.mps.lang.editor.structure.SubstituteMenu") ?: return@executeShortCommandOnEdt
                        val menuConceptDeclLink = requiredReferenceLink(substituteMenuConcept, "conceptDeclaration", "SubstituteMenu") ?: return@executeShortCommandOnEdt

                        val existingMenu = model.rootNodes.firstOrNull { root ->
                            root.concept == substituteMenuConcept &&
                                    root.getReferenceTarget(menuConceptDeclLink)?.reference == sourceNode
                        }

                        // Helper: lazily resolves the `type` link + MenuTypeDefault concept so we
                        // only fail on missing symbols when we actually need them. Returns null
                        // and sets `error` on any lookup failure — callers should then early-
                        // return so the editor declaration rolls back cleanly.
                        fun resolveMenuTypeWiring(): Pair<SContainmentLink, SConcept>? {
                            val typeLink = requiredContainmentLink(substituteMenuConcept, "type", "SubstituteMenu") ?: return null
                            val defaultConcept = requiredConcept("jetbrains.mps.lang.editor.structure.MenuTypeDefault") ?: return null
                            return typeLink to defaultConcept
                        }

                        val menuMsg: String
                        val menuRefNode: SNode
                        val menuCreated: Boolean
                        when {
                            existingMenu == null -> {
                                val (menuTypeLink, menuTypeDefaultConcept) = resolveMenuTypeWiring() ?: return@executeShortCommandOnEdt
                                val newMenu = SNodeFactoryOperations.createNewRootNode(model, substituteMenuConcept, null)
                                createdMenu = newMenu
                                newMenu.setReference(menuConceptDeclLink, sourceNode)
                                SNodeFactoryOperations.setNewChild(newMenu, menuTypeLink, menuTypeDefaultConcept)
                                menuMsg = " with new empty default SubstituteMenu"
                                menuRefNode = newMenu
                                menuCreated = true
                            }
                            existingMenu.children.none { it.containmentLink?.name == "type" } -> {
                                val (menuTypeLink, menuTypeDefaultConcept) = resolveMenuTypeWiring() ?: return@executeShortCommandOnEdt
                                val typeChild = SNodeFactoryOperations.setNewChild(existingMenu, menuTypeLink, menuTypeDefaultConcept)
                                repairedMenuTypeChild = typeChild
                                menuMsg = " (existing SubstituteMenu had no `type` child; added MenuTypeDefault)"
                                menuRefNode = existingMenu
                                menuCreated = false
                            }
                            else -> {
                                menuMsg = " (SubstituteMenu already exists, kept as-is)"
                                menuRefNode = existingMenu
                                menuCreated = false
                            }
                        }

                        saveModelAndModule(model)
                        val refStr = PersistenceFacade.getInstance().asString(editor.reference)
                        val menuRefStr = PersistenceFacade.getInstance().asString(menuRefNode.reference)
                        result = jsonObject {
                            addProperty("editorNodeRef", refStr)
                            addProperty("substituteMenuRef", menuRefStr)
                            addProperty("substituteMenuCreated", menuCreated)
                            addProperty("message", "Scaffolded marker editor: editable empty cell$menuMsg$menuDescriptorNote.")
                        }.toString()
                        succeeded = true
                        return@executeShortCommandOnEdt
                    }

                    saveModelAndModule(model)

                    val refStr = PersistenceFacade.getInstance().asString(editor.reference)
                    val typeStr = if (type == "component") "editor component" else "editor"
                    val msg = "Scaffolded $typeStr with $propertyCount properties, $referenceCount references, and $childCount children."
                    result = jsonObject {
                        addProperty("editorNodeRef", refStr)
                        addProperty("message", msg)
                    }.toString()
                    succeeded = true
                } catch (e: Throwable) {
                    // Rethrow cancellation and Errors before recording a user-visible message:
                    // those paths propagate out before this method returns, so the caller never
                    // sees `error`. Rollback is keyed off `succeeded` in `finally`, not off
                    // `error`, so the ordering here is no longer load-bearing.
                    rethrowIfCancellation(e)
                    if (e is Error) throw e
                    error = e.message ?: e::class.simpleName ?: "unknown error"
                } finally {
                    // Roll back the partially created editor on any non-success exit: required-
                    // resource lookups that set `error` and return early, the empty-cells branch,
                    // an ordinary exception during cell construction, a cancellation, or an
                    // Error. `model.save()` only runs on the success path, so the on-disk file
                    // is untouched until rollback is no longer possible.
                    if (!succeeded) {
                        editorDeclaration?.let {
                            try {
                                it.delete()
                            } catch (rollbackEx: Exception) {
                                // Best-effort rollback: never escalate to the caller. We still
                                // log so that an editor leak (orphan editorDeclaration left in
                                // the model after a failed scaffold) is diagnosable. The original
                                // `error` set above is what the user sees; this is supplemental
                                // diagnostics only.
                                logger.warn("Rollback of partially-built editor failed; original error: $error", rollbackEx)
                            }
                        }
                        createdMenu?.let {
                            try {
                                it.delete()
                            } catch (rollbackEx: Exception) {
                                logger.warn("Rollback of partially-built marker SubstituteMenu failed; original error: $error", rollbackEx)
                            }
                        }
                        // Undo additive repair (added `type` child on a pre-existing user menu)
                        // without touching the surrounding menu — `createdMenu` is null in this
                        // case, so the rollback above wouldn't have caught the type child.
                        repairedMenuTypeChild?.let {
                            try {
                                it.delete()
                            } catch (rollbackEx: Exception) {
                                logger.warn("Rollback of additively-repaired SubstituteMenu type child failed; original error: $error", rollbackEx)
                            }
                        }
                    }
                }
            }
        val err = error
        return if (err != null) {
            err.takeIf { it.startsWith("{\"ok\":") } ?: errJson(err)
        } else if (result != null) {
            okJson(result)
        } else {
            errJson("scaffolding produced no result")
        }
    }

    private fun applyStyle(node: SNode, styleRef: String, mpsProject: MPSProject) {
        val repo = mpsProject.repository
        val sStyleRef = resolveNodeReferencePreferringProject(mpsProject, styleRef) ?: run {
            logger.debug("applyStyle: failed to resolve node reference for styleRef '$styleRef'")
            return
        }
        val styleNode = sStyleRef.resolve(repo) ?: run {
            logger.debug("applyStyle: failed to resolve styleNode for reference '$sStyleRef'")
            return
        }

        val styleItemLink = node.concept.containmentLinks.find { it.name == "styleItem" } ?: run {
            logger.debug("applyStyle: styleItem link not found in concept '${node.concept.name}'")
            return
        }
        // ApplyStyleClass holds a `target` containment of type StyleReference; the actual
        // styleClass reference lives on the StyleClassReference subtype. Wiring it directly on
        // ApplyStyleClass would silently no-op because that concept has no `styleClass` ref
        // link of its own.
        val applyStyleConcept = resolveConcept(repo, "jetbrains.mps.lang.editor.structure.ApplyStyleClass") as? SConcept ?: run {
            logger.debug("applyStyle: failed to resolve ApplyStyleClass concept")
            return
        }
        val targetLink = applyStyleConcept.containmentLinks.find { it.name == "target" } ?: run {
            logger.debug("applyStyle: target link not found in ApplyStyleClass")
            return
        }
        val styleClassReferenceConcept = resolveConcept(repo, "jetbrains.mps.lang.editor.structure.StyleClassReference") as? SConcept ?: run {
            logger.debug("applyStyle: failed to resolve StyleClassReference concept")
            return
        }
        val styleClassLink = styleClassReferenceConcept.referenceLinks.find { it.name == "styleClass" } ?: run {
            logger.debug("applyStyle: styleClass link not found in StyleClassReference")
            return
        }

        val applyStyle = SNodeFactoryOperations.addNewChild(node, styleItemLink, applyStyleConcept)
        val styleClassRef = SNodeFactoryOperations.setNewChild(applyStyle, targetLink, styleClassReferenceConcept)
        styleClassRef.setReference(styleClassLink, styleNode.reference)
    }
}
