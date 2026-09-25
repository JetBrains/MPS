package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.agents.mcp.tools.*

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.google.gson.JsonSyntaxException
import com.intellij.ide.plugins.PluginManagerCore
import com.intellij.mcpserver.reportToolActivity
import com.intellij.openapi.diagnostic.Logger
import com.intellij.openapi.extensions.PluginId
import com.intellij.openapi.project.Project
import jetbrains.mps.findUsages.InstanceLookup
import jetbrains.mps.findUsages.NodeUsageLookup
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations
import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.nodeEditor.cells.PropertyAccessor
import jetbrains.mps.nodeEditor.cells.SPropertyAccessor
import jetbrains.mps.nodeEditor.selection.EditorCellLabelSelection
import jetbrains.mps.openapi.editor.EditorComponent
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Label
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage
import jetbrains.mps.openapi.editor.selection.Selection
import jetbrains.mps.openapi.editor.selection.SingularSelection
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.EditableFilteringScope
import jetbrains.mps.project.MPSProject
import jetbrains.mps.resolve.ResolverComponent
import jetbrains.mps.scope.ErrorScope
import jetbrains.mps.scope.VisibleDepsSearchScope
import jetbrains.mps.smodel.BaseScope
import jetbrains.mps.smodel.ConceptDescendantsCache
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.SReference as SRefImpl
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.action.NodeFactoryManager
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.constraints.ModelConstraints
import kotlinx.coroutines.currentCoroutineContext
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SConceptFeature
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SEnumeration
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.model.EditableSModel
import org.jetbrains.mps.openapi.model.ResolveInfo
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.model.SReference
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.module.FindUsagesFacade
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.module.SModuleReference
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.module.SearchScope
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.jetbrains.mps.openapi.util.ProgressMonitor
import java.util.Random
import java.util.concurrent.atomic.AtomicBoolean

abstract class AbstractNodeOps : AbstractOps() {

    private val nodeOpsLogger = Logger.getInstance(AbstractNodeOps::class.java)

    // Snapshot of a single reference pending application during the stage-then-apply phase of
    // updateNodeFromBlueprint. Lifted to a class-level type so the data-class machinery is
    // generated once at load time rather than per invocation.
    private data class StagedReference(
        val link: SReferenceLink,
        val targetRefStr: String,
        val errorPath: String,
        val xmlReferencePath: String,
        val xmlReferenceIndex: Int
    )

    private fun restoreReference(node: SNode, link: SReferenceLink, target: ResolveInfo?) {
        if (target == null) {
            node.dropReference(link)
        }
        else {
            node.setReference(link, target)
        }
    }

    protected fun readNodeJsonOrFile(jsonOrPath: String?, dryRun: Boolean = false): String? {
        return readJsonOrFile(jsonOrPath, dryRun)?.let { unwrapNodeJsonEnvelope(it) }
    }

    private fun unwrapNodeJsonEnvelope(json: String): String {
        val trimmed = json.trimStart()
        if (!trimmed.startsWith("{") || !trimmed.contains("\"ok\"")) return json
        val obj = try {
            JsonParser.parseString(json).takeIf { it.isJsonObject }?.asJsonObject ?: return json
        } catch (e: JsonSyntaxException) {
            return json
        }
        if (!obj.has("ok")) return json

        val ok = try {
            obj.get("ok").asBoolean
        } catch (e: IllegalStateException) {
            return json
        } catch (e: UnsupportedOperationException) {
            return json
        }
        if (!ok) {
            val error = obj.get("error")?.takeIf { it.isJsonPrimitive }?.asString ?: "unknown error"
            throw McpInvalidRequestException("MCP response envelope contains an error instead of node JSON data: $error")
        }

        val data = obj.get("data") ?: return json
        if (!data.isJsonObject && !data.isJsonArray) {
            throw McpInvalidRequestException("MCP response envelope data is not a node JSON blueprint object or array")
        }
        return data.toString()
    }

    private fun JsonObject.requireArray(field: String, path: String): JsonArray? {
        val element = get(field) ?: return null
        if (!element.isJsonArray) {
            throw McpInvalidRequestException(
                "'$field' at $path must be a JSON array, but got ${element.javaClass.simpleName}. " +
                "Check the JSON blueprint format — see the mps-node-editing skill for reference."
            )
        }
        return element.asJsonArray
    }

    /**
     * Builds a detached [SNode] tree from a JSON blueprint. The caller attaches the result.
     *
     * [enclosingNode] is the node the result will become a child of, when the caller knows it. It is
     * handed to the concept's node factories, several of which need it — `jetbrains.mps.lang.behavior`'s
     * `ConceptMethod` factory reads the enclosing `ConceptBehavior` to decide `isAbstract` / `isVirtual`,
     * and `jetbrains.mps.lang.structure`'s `SetStructureIds` scans the enclosing concept declaration so
     * a generated `propertyId` / `linkId` / `memberId` cannot collide with a sibling's. Nested blueprint
     * children get their (not yet attached) parent automatically.
     */
    fun instantiateNode(
        jsonObject: JsonObject,
        model: SModel,
        dryRun: Boolean = false,
        jsonPath: String = "$",
        warnings: MutableList<String>? = null,
        mpsProject: MPSProject? = null,
        enclosingNode: SNode? = null
    ): SNode? {
        val conceptName = jsonObject.get("concept")?.asString
        val conceptRef = jsonObject.get("conceptReference")?.asString
        
        if (conceptName.isNullOrEmpty() && conceptRef.isNullOrEmpty()) {
            throw McpInvalidRequestException("Missing 'concept' or 'conceptReference' property in JSON at path '$jsonPath'")
        }

        val sConcept = run {
            // Try conceptReference first (c:... form), fall back to concept name if it fails or is absent.
            // Name-based resolution is more reliable because agents tend to get names right
            // but occasionally produce slightly incorrect concept reference IDs.
            val byRef = if (!conceptRef.isNullOrEmpty()) {
                (if (mpsProject != null) resolveConceptPreferringProject(mpsProject, conceptRef) else resolveConcept(model.repository, conceptRef)) as? SConcept
            }
            else null
            val byName = if (!conceptName.isNullOrEmpty()) {
                (if (mpsProject != null) resolveConceptPreferringProject(mpsProject, conceptName) else resolveConcept(model.repository, conceptName)) as? SConcept
            }
            else null
            byRef ?: byName
        } ?: throw McpNotFoundException("Concept '$conceptName' with reference '$conceptRef' not found")

        // Ensure language is imported
        if (!dryRun && model is SModelInternal) {
            val language = sConcept.language
            if (!model.importedLanguageIds().contains(language)) {
                model.addLanguage(language)
            }
        }

        // Node factories (the language's "actions" aspect) must see the target model and the enclosing
        // node. Several of them set up state that cannot be derived from the concept alone:
        // `jetbrains.mps.lang.behavior`'s ConceptMethod factory walks up to the enclosing
        // ConceptBehavior to decide isAbstract/isVirtual, `jetbrains.mps.lang.structure`'s
        // SetStructureIds scans the model (or the enclosing concept declaration) so a generated
        // conceptId/propertyId/linkId cannot collide, and lightweight-DSL concepts such as
        // `MigrationScript` run a whole initializer off the model (fromVersion, the language-version
        // bump, model imports, a module dependency). Passing nulls here made those factories silently
        // no-op — every smodel helper on the path is null-tolerant, and the one real NPE is swallowed
        // by the DSL descriptor's own `catch (Exception e) { e.printStackTrace(); }` — so the caller
        // got an ordinary success envelope with a half-built node.
        //
        // Deliberately NOT SNodeFactoryOperations.createNewNode / NodeFactoryManager.createNode: those
        // also run createNodeStructure, which auto-fills every mandatory containment role with a default
        // concrete child. A blueprint is authoritative about the roles it names and the roles it omits are
        // the caller's to fill later, so we run setupNode alone and keep mandatory roles empty — the same
        // observable shape as before this call passed a model at all.
        //
        // A dry run withholds the model: factory side effects land on the model and module, not on the
        // detached node, and nothing rolls them back.
        val newNode = SModelOperations.createNewNode(if (dryRun) null else model, null, sConcept)
        if (!dryRun) {
            // A throwing factory must not turn an otherwise valid insert into a failure: it is not the
            // blueprint that is wrong. Report it and keep the node we have. Cancellation is not a
            // factory failure and must propagate.
            //
            // Note this only catches a factory that actually throws. A factory that swallows its own
            // exception is still invisible here — notably every `AutoInitDSLClass` initializer, which
            // runs through `DSLDescriptor.initializeInstance`'s own catch and only reaches idea.log.
            try {
                NodeFactoryManager.setupNode(newNode.concept, newNode, null, enclosingNode, model)
            } catch (t: Throwable) {
                rethrowIfCancellation(t)
                val detail = t.message ?: t.javaClass.name
                warnings?.add(
                    "node factory for concept '${sConcept.name}' at $jsonPath failed: $detail — " +
                        "the node was created but may be missing factory-initialized properties, " +
                        "children or references"
                )
                nodeOpsLogger.warn("node factory failed for concept '${sConcept.name}' at $jsonPath", t)
            }
        }

        // Set name if present and supported
        val name = jsonObject.get("name")?.asString
        if (name != null) {
            val nameProperty = SNodeUtil.property_INamedConcept_name
            if (sConcept.properties.contains(nameProperty)) {
                newNode.setProperty(nameProperty, name)
            }
        }

        // Properties
        val properties = jsonObject.requireArray("properties", jsonPath)
        if (properties != null) {
            properties.forEachIndexed { propIndex, propElement ->
                val propObject = propElement.asJsonObject
                val propName = propObject.get("name")?.asString ?: return@forEachIndexed
                val propValue = propObject.get("value")?.asString
                val sProperty = sConcept.properties.find { it.name == propName }
                    ?: throw McpInvalidRequestException(
                        "Unknown property '$propName' at $jsonPath.properties[$propIndex]: " +
                                "concept '${sConcept.name}' has no such property"
                    )
                setProperty(newNode, sProperty, propValue)
            }
        }

        // References BEFORE children, deliberately: a nested child is created by a recursive call
        // that hands the child's node factory this node as its `enclosingNode`, and some factories
        // read the enclosing node's references — `jetbrains.mps.lang.behavior`'s ConceptMethod
        // factory follows `ConceptBehavior.concept` to decide isAbstract/isVirtual. Applying
        // children first left those references unset, so a one-call blueprint silently produced a
        // different node than the same content split across two calls: the same class of silent
        // divergence this method was fixed for.
        //
        // The trade-off, accepted: a reference given as a *name* is resolved against the role's
        // scope, and a scope that draws on this node's own children can no longer see them. That
        // direction fails loudly (an unresolved reference, reported in `warnings` and by
        // check_root_node_problems) rather than silently, which is the better failure.
        val references = jsonObject.requireArray("references", jsonPath)
        if (references != null) {
            references.forEachIndexed { index, refElement ->
                val refObject = refElement.asJsonObject
                val roleName = refObject.get("role")?.asString ?: return@forEachIndexed
                val targetRefStr = (refObject.get("targetReference") ?: refObject.get("target"))?.asString
                val link = sConcept.referenceLinks.find { it.name == roleName }
                    ?: throw McpInvalidRequestException(
                        "Unknown reference role '$roleName' at $jsonPath.references[$index]: " +
                                "concept '${sConcept.name}' has no such reference link"
                    )
                if (!targetRefStr.isNullOrEmpty()) {
                    applyReferenceUpdate(
                        ownerNode = newNode,
                        link = link,
                        targetRefStr = targetRefStr,
                        model = model,
                        repository = model.repository,
                        parentConceptName = sConcept.name,
                        roleName = roleName,
                        errorPath = "$jsonPath.references[$index]",
                        xmlReferencePath = jsonPath,
                        xmlReferenceIndex = index,
                        dryRun = dryRun,
                        allowDynamicReference = !dryRun,
                        assignResolvedReferenceOnDryRun = true,
                        mpsProject = mpsProject
                    )?.let { warnings?.add(it) }
                }
            }
        }

        // Children
        val children = jsonObject.requireArray("children", jsonPath)
        if (children != null) {
            // Roles whose factory-produced content has already been dropped, see below.
            val clearedRoles = mutableSetOf<String>()
            children.forEachIndexed { roleIndex, childRoleElement ->
                val childRoleObject = childRoleElement.asJsonObject
                val roleName = childRoleObject.get("role")?.asString ?: return@forEachIndexed
                val childNodes = childRoleObject.requireArray("nodes", "$jsonPath.children[$roleIndex]") ?: return@forEachIndexed
                val link = sConcept.containmentLinks.find { it.name == roleName }
                    ?: throw McpInvalidRequestException(
                        "Unknown child role '$roleName' at $jsonPath.children[$roleIndex]: " +
                                "concept '${sConcept.name}' has no such containment link"
                    )
                // The blueprint is authoritative for the roles it names: drop whatever the node factory
                // put in this role so the two don't accumulate. Roles the blueprint does NOT name keep
                // their factory content — that is how `MigrationScript` keeps the `superclass` the
                // migration factory wires to its design-time-only classifier.
                // Guarded so a blueprint listing the same role twice doesn't wipe the children its own
                // earlier entry just added.
                if (clearedRoles.add(roleName)) {
                    newNode.getChildren(link).toList().forEach { it.delete() }
                }
                childNodes.forEachIndexed { nodeIndex, nodeElement ->
                    val childPath = "$jsonPath.children[$roleIndex].nodes[$nodeIndex]"
                    val childNode = instantiateNode(
                        nodeElement.asJsonObject, model, dryRun, childPath, warnings, mpsProject,
                        enclosingNode = newNode
                    )
                    if (childNode != null) {
                        if (!childNode.concept.isSubConceptOf(link.targetConcept)) {
                            throw AssignabilityException(
                                jsonPath = childPath,
                                actualConcept = childNode.concept.name,
                                expectedConcepts = listOf(link.targetConcept.name),
                                parentConcept = sConcept.name,
                                role = link.name
                            )
                        }
                        newNode.addChild(link, childNode)
                    }
                }
            }
        }

        return newNode
    }

    private fun failIfXMLReferenceIsUsed(targetRefStr: String, jsonPath: String, index: Int) {
        // Detect MPS XML short IDs (e.g. "23xMseU$JuM", "37ibr6CxHv8") — these are the compact
        // base-encoded form used inside .mps XML files and are NOT valid MCP node references.
        // Using them silently produces a null/dangling reference; fail loudly instead.
        //
        // Distinguishing them from plain identifiers (which the API legitimately accepts for
        // name-based auto-resolution) requires more than a generic [0-9A-Za-z$_]{8,20} match —
        // identifiers like "walkToWall" or "MyClassName" trip that filter. Real XML short IDs
        // additionally either start with a digit (illegal as the first char of a JVM identifier)
        // or contain '$' (technically legal but virtually never used in user-named things).
        if (looksLikeMpsXmlShortId(targetRefStr)) {
            throw McpInvalidReferenceException(
                "Invalid node reference at $jsonPath.references[$index]: " +
                        "'$targetRefStr' looks like an MPS XML short ID (from a .mps file). " +
                        "These cannot be used as target references — they are an internal encoding " +
                        "that differs from the persistent references used by the MCP API. " +
                        "Use the persistent reference from mps_mcp_print_node output instead " +
                        "(e.g. 'r:<modelId>/<nodeId>'). " +
                        "If the input is actually a legitimate name that happens to match this " +
                        "heuristic (8–20 chars containing '${'$'}' or leading digit, e.g. '_my_var${'$'}'), " +
                        "qualify it with a model prefix (e.g. 'my.model.NodeName') — names " +
                        "containing '.' bypass the check."
            )
        }
    }

    private fun looksLikeMpsXmlShortId(s: String): Boolean {
        if (s.length !in 8..20) return false
        if (s.contains('.') || s.startsWith("r:") || s.startsWith("i:")) return false
        if (!s.matches(Regex("[0-9A-Za-z\$_]+"))) return false
        // Containing '$' or starting with a digit are both illegal/extremely rare in plain
        // JVM identifiers but normal for MPS-encoded short IDs. Require at least one of these
        // to avoid false-positives on plain camelCase / PascalCase names.
        return s.contains('$') || s.first().isDigit()
    }

    private fun applyReferenceUpdate(
        ownerNode: SNode,
        link: SReferenceLink,
        targetRefStr: String,
        model: SModel,
        repository: SRepository,
        parentConceptName: String,
        roleName: String,
        errorPath: String,
        xmlReferencePath: String,
        xmlReferenceIndex: Int,
        dryRun: Boolean,
        allowDynamicReference: Boolean,
        assignResolvedReferenceOnDryRun: Boolean = false,
        validateXmlReference: Boolean = true,
        persistentReferencesOnly: Boolean = true,
        mpsProject: MPSProject? = null
    ): String? {
        if (validateXmlReference) {
            failIfXMLReferenceIsUsed(targetRefStr, xmlReferencePath, xmlReferenceIndex)
        }
        val targetRef = if (persistentReferencesOnly) {
            resolveReferenceTarget(mpsProject, repository, targetRefStr)
        } else {
            if (mpsProject != null) resolveNodeReferencePreferringProject(mpsProject, targetRefStr) else resolveNodeReference(repository, targetRefStr)
        }
        val targetNode = targetRef?.resolve(repository)
        if (targetNode != null) {
            validateReferenceTarget(targetNode, link, parentConceptName, roleName, errorPath)
            if (!dryRun || assignResolvedReferenceOnDryRun) {
                ownerNode.setReference(link, targetRef)
            }
            if (!dryRun) {
                ensureReferenceDependencies(model, targetRef, targetNode)
            }
            return null
        }
        if (targetRef != null) {
            if (!dryRun || assignResolvedReferenceOnDryRun) {
                ownerNode.setReference(link, targetRef)
            }
        } else if (!dryRun && allowDynamicReference) {
            ownerNode.setReference(link, ResolveInfo.of(targetRefStr))
        } else if (dryRun && allowDynamicReference) {
            // Production run would create a dynamic reference here; dry-run reports success
            // without doing so. Surface the divergence through the caller's warnings channel
            // so it is visible in the MCP response, not only in the IDE log.
            val msg = "Dry run at $errorPath: target '$targetRefStr' did not resolve; " +
                    "production run would create a dynamic reference, but dry-run skips this step."
            nodeOpsLogger.warn(msg)
            return msg
        }
        return null
    }

    private fun resolveReferenceTarget(mpsProject: MPSProject?, repository: SRepository, targetRefStr: String): SNodeReference? {
        val isPersistentRef = targetRefStr.startsWith("r:") || targetRefStr.startsWith("i:") || targetRefStr.contains(".")
        if (!isPersistentRef) return null
        if (mpsProject == null) return resolveNodeReference(repository, targetRefStr)

        resolveNodeReference(mpsProject, targetRefStr)?.let { return it }
        return resolveNodeReference(repository, targetRefStr)
    }

    private fun validateReferenceTarget(
        targetNode: SNode,
        link: SReferenceLink,
        parentConceptName: String,
        roleName: String,
        errorPath: String
    ) {
        if (!targetNode.concept.isSubConceptOf(link.targetConcept)) {
            throw AssignabilityException(
                jsonPath = errorPath,
                actualConcept = targetNode.concept.name,
                expectedConcepts = listOf(link.targetConcept.name),
                parentConcept = parentConceptName,
                role = roleName
            )
        }
    }

    private fun ensureReferenceDependencies(model: SModel, targetRef: SNodeReference, targetNode: SNode) {
        val targetModelRef = targetRef.modelReference ?: return
        val editableModel = model as? SModelInternal ?: return
        if (editableModel.modelImports.contains(targetModelRef)) return
        editableModel.addModelImport(targetModelRef)

        val targetModule = targetNode.model?.module ?: return
        val currentModule = model.module ?: return
        if (targetModule != currentModule) {
            (currentModule as? AbstractModule)?.addDependency(targetModule.moduleReference, false)
        }
    }

    fun updateNodeFromBlueprint(
        node: SNode,
        jsonObject: JsonObject,
        dryRun: Boolean = false,
        jsonPath: String = "$",
        warnings: MutableList<String>? = null,
        mpsProject: MPSProject? = null
    ) {
        val model = node.model ?: throw IllegalArgumentException("Node must be in a model")
        val sConcept = node.concept

        // Stage-then-apply: validate everything (instantiate new children, resolve references)
        // BEFORE deleting the existing children/references. If any step throws, the original
        // node is left intact instead of being emptied with no rollback.

        // Stage properties (including `name`): this tool is a full-root rewrite, so every
        // property in the blueprint — name included — is applied to match it. The apply phase
        // below skips nulling `name` only to avoid a transient nameless state, not to ignore a
        // rename; the staged value (if the blueprint supplied one) overwrites it afterward.
        val stagedProperties = mutableListOf<Pair<SProperty, String?>>()
        val properties = jsonObject.requireArray("properties", jsonPath)
        if (properties != null) {
            properties.forEachIndexed { propIndex, propElement ->
                val propObject = propElement.asJsonObject
                val propName = propObject.get("name")?.asString ?: return@forEachIndexed
                val propValue = propObject.get("value")?.asString
                val sProperty = sConcept.properties.find { it.name == propName }
                    ?: throw McpInvalidRequestException(
                        "Unknown property '$propName' at $jsonPath.properties[$propIndex]: " +
                                "concept '${sConcept.name}' has no such property"
                    )
                stagedProperties += sProperty to propValue
            }
        }

        // Stage children: instantiate detached SNodes and run assignability checks. Anything
        // that throws here (unknown concept, malformed nested blueprint, assignability mismatch)
        // surfaces before any destructive op.
        val stagedChildren = mutableListOf<Pair<SContainmentLink, SNode>>()
        val children = jsonObject.requireArray("children", jsonPath)
        if (children != null) {
            children.forEachIndexed { roleIndex, childRoleElement ->
                val childRoleObject = childRoleElement.asJsonObject
                val roleName = childRoleObject.get("role")?.asString ?: return@forEachIndexed
                val childNodes = childRoleObject.requireArray("nodes", "$jsonPath.children[$roleIndex]") ?: return@forEachIndexed
                val link = sConcept.containmentLinks.find { it.name == roleName }
                    ?: throw McpInvalidRequestException(
                        "Unknown child role '$roleName' at $jsonPath.children[$roleIndex]: " +
                                "concept '${sConcept.name}' has no such containment link"
                    )
                childNodes.forEachIndexed { nodeIndex, nodeElement ->
                    val childPath = "$jsonPath.children[$roleIndex].nodes[$nodeIndex]"
                    val childNode = instantiateNode(
                        nodeElement.asJsonObject, model, dryRun, childPath, warnings, mpsProject,
                        enclosingNode = node
                    ) ?: return@forEachIndexed
                    if (!childNode.concept.isSubConceptOf(link.targetConcept)) {
                        throw AssignabilityException(
                            jsonPath = childPath,
                            actualConcept = childNode.concept.name,
                            expectedConcepts = listOf(link.targetConcept.name),
                            parentConcept = sConcept.name,
                            role = link.name
                        )
                    }
                    stagedChildren += link to childNode
                }
            }
        }

        // Stage references: pre-validate (XML-short-id rejection, target resolution,
        // assignability) without writing. Application uses applyReferenceUpdate in Phase 2.
        val stagedReferences = mutableListOf<StagedReference>()
        val references = jsonObject.requireArray("references", jsonPath)
        if (references != null) {
            references.forEachIndexed { index, refElement ->
                val refObject = refElement.asJsonObject
                val roleName = refObject.get("role")?.asString ?: return@forEachIndexed
                val targetRefStr = (refObject.get("targetReference") ?: refObject.get("target"))?.asString
                val link = sConcept.referenceLinks.find { it.name == roleName }
                    ?: throw McpInvalidRequestException(
                        "Unknown reference role '$roleName' at $jsonPath.references[$index]: " +
                                "concept '${sConcept.name}' has no such reference link"
                    )
                if (targetRefStr.isNullOrEmpty()) return@forEachIndexed

                failIfXMLReferenceIsUsed(targetRefStr, jsonPath, index)
                val targetRef = resolveReferenceTarget(mpsProject, model.repository, targetRefStr)
                val targetNode = targetRef?.resolve(model.repository)
                if (targetNode != null) {
                    validateReferenceTarget(targetNode, link, sConcept.name, roleName, "$jsonPath.references[$index]")
                }

                stagedReferences += StagedReference(
                    link = link,
                    targetRefStr = targetRefStr,
                    errorPath = "$jsonPath.references[$index]",
                    xmlReferencePath = jsonPath,
                    xmlReferenceIndex = index
                )
            }
        }

        if (dryRun) return

        // All staging succeeded; apply destructively.
        //
        // NOTE: The apply phase itself is not transactional within itself — the three
        // steps below (properties, children, references) are sequenced operations on
        // the live node. If a step throws after a prior step has mutated the node,
        // the node is left in a partially-updated state with no rollback.
        //
        // The validate/stage phase above significantly reduces this risk by catching
        // most semantic errors (concept assignability, reference resolution, role
        // cardinality, XML schema, etc.) before any mutation begins. Apply-phase
        // failures are therefore expected only for low-level platform errors
        // (storage I/O, SModel listener exceptions, concurrent modification, etc.).
        //
        // Callers that need stronger guarantees should wrap this in an outer
        // transactional unit (e.g. a command + manual snapshot/restore).

        // 1. Properties: clear existing values, then re-apply the staged ones (which now include
        // `name`). `name` is not nulled in the clear step to avoid a transient nameless state;
        // the staged value (if the blueprint supplied one) overwrites it in the next line.
        sConcept.properties.forEach {
            if (it != SNodeUtil.property_INamedConcept_name) {
                node.setProperty(it, null)
            }
        }
        stagedProperties.forEach { (property, value) -> setProperty(node, property, value) }

        // 2. Children: delete originals, attach staged.
        node.children.toList().forEach { it.delete() }
        stagedChildren.forEach { (link, childNode) -> node.addChild(link, childNode) }

        // 3. References: drop originals, apply staged.
        //
        // SNode.dropReference(SReferenceLink) removes by link, not by SReference identity.
        // For multi-cardinality roles (0..n / 1..n), a single role can hold several references
        // sharing the same link; the platform's dropReference call removes one matching
        // reference per invocation. Iterating `node.references.toList()` produces one entry per
        // existing reference, so calling dropReference(it.link) once per entry empties the
        // role one-at-a-time. The end state is no references on the node, which is what the
        // apply phase needs before re-staging.
        node.references.toList().forEach { node.dropReference(it.link) }
        stagedReferences.forEach { staged ->
            applyReferenceUpdate(
                ownerNode = node,
                link = staged.link,
                targetRefStr = staged.targetRefStr,
                model = model,
                repository = model.repository,
                parentConceptName = sConcept.name,
                roleName = staged.link.name,
                errorPath = staged.errorPath,
                xmlReferencePath = staged.xmlReferencePath,
                xmlReferenceIndex = staged.xmlReferenceIndex,
                dryRun = false,
                allowDynamicReference = true,
                validateXmlReference = false,
                mpsProject = mpsProject
            )
        }
    }

    protected suspend fun update_node_child(mpsProject: MPSProject, nodeReference: String?, childRole: String?, childJson: String?, childToReplaceOrDeleteRef: String?, position: Int? = null, dryRun: Boolean = false, responseDetail: String? = null): String {
        currentCoroutineContext().reportToolActivity("Updating MPS node child")
        return executeShortCommandOnEdt(mpsProject) {
            when {
                childToReplaceOrDeleteRef != null && childJson != null ->
                    replaceNodeChild(mpsProject, childToReplaceOrDeleteRef, childJson, dryRun)
                childToReplaceOrDeleteRef != null ->
                    deleteNodeChild(mpsProject, childToReplaceOrDeleteRef, dryRun)
                nodeReference != null && childRole != null && childJson != null ->
                    addNodeChild(mpsProject, nodeReference, childRole, childJson, position, dryRun, responseDetail)
                else ->
                    errJson("Invalid parameters for child update", McpErrorCode.INVALID_REQUEST)
            }
        }
    }

    private fun replaceNodeChild(mpsProject: MPSProject, childRef: String, childJson: String, dryRun: Boolean): String {
        val (childNode, model, console) = when (val r = resolveEditableNodeAllowingConsole(mpsProject, childRef, { "Child node '$it' not found" })) {
            is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
            is ConsoleAwareResolution.Err -> return r.errJson
        }
        val parent = childNode.parent ?: return errJson("Node '$childRef' has no parent (it might be a root node)", McpErrorCode.INVALID_REQUEST)
        val role = childNode.containmentLink ?: return errJson("Node has no containment link", McpErrorCode.INVALID_REQUEST)

        val jsonObject = try {
            parseJson(childJson)
        } catch (e: Exception) {
            return invalidJson(e.message)
        }
        val nodeWarnings = mutableListOf<String>()
        val newChild = try {
            instantiateNode(jsonObject, model, dryRun, warnings = nodeWarnings, mpsProject = mpsProject, enclosingNode = parent)
        } catch (e: Exception) {
            return errJson("Failed to instantiate new child node from JSON: ${e.message}", McpErrorCode.INVALID_REQUEST, warnings = nodeWarnings)
        }
        if (newChild == null) return errJson("Failed to instantiate new child node from JSON", McpErrorCode.INVALID_REQUEST, warnings = nodeWarnings)

        if (!newChild.concept.isSubConceptOf(role.targetConcept)) {
            throw AssignabilityException(
                jsonPath = "$",
                actualConcept = newChild.concept.name,
                expectedConcepts = listOf(role.targetConcept.name),
                parentConcept = parent.concept.name,
                role = role.name
            )
        }

        if (dryRun) {
            return okJson(jsonObject {
                addProperty("dryRun", true)
                addProperty("message", "Dry run successful for node replacement")
            }, warnings = nodeWarnings)
        }

        parent.insertChildBefore(role, newChild, childNode)
        childNode.delete()
        val fixResult = performFixReferences(mpsProject, newChild)
        val warn = persistOrRefreshConsole(model, console)
        return okJson(
            withFixReferencesInfo(nodeInfoJsonObject(parent, mpsProject), fixResult),
            warnings = nodeWarnings + listOfNotNull(warn)
        )
    }

    // Deletion: no fix-references step — removing a child doesn't relocate
    // any references, so the response intentionally omits `data.fixReferences`.
    private fun deleteNodeChild(mpsProject: MPSProject, childRef: String, dryRun: Boolean): String {
        val (childNode, model, console) = when (val r = resolveEditableNodeAllowingConsole(mpsProject, childRef, { "Child node '$it' not found" })) {
            is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
            is ConsoleAwareResolution.Err -> return r.errJson
        }
        val parent = childNode.parent ?: return errJson("Node '$childRef' has no parent (it might be a root node)", McpErrorCode.INVALID_REQUEST)
        if (childNode.containmentLink == null) return errJson("Node has no containment link", McpErrorCode.INVALID_REQUEST)

        if (dryRun) {
            return okJson(jsonObject {
                addProperty("dryRun", true)
                addProperty("message", "Dry run successful for node deletion")
            })
        }

        childNode.delete()
        val warn = persistOrRefreshConsole(model, console)
        return okJson(nodeInfoJsonObject(parent, mpsProject), warnings = listOfNotNull(warn))
    }

    /** Result of [resolveInsertIndex]: where a new child should be placed in a containment role. */
    protected sealed class InsertIndex {
        /** Insert before the existing child at this in-range index (`0 <= index < count`). */
        data class At(val index: Int) : InsertIndex()

        /** Append at the end of the role. */
        object Append : InsertIndex()

        /** The requested position is invalid; [message] is ready to hand to `errJson`. */
        data class Invalid(val message: String) : InsertIndex()
    }

    /**
     * Where a new child lands in a **multiple-cardinality** containment role, given the caller's
     * requested 0-based [requested] position and the role's current child [count]. Centralizes the
     * append/clamp/reject rule shared by the insert paths — `mps_mcp_update_node` ADD CHILD
     * ([addNodeChild]), `mps_mcp_parse_java_and_insert`, and MOVE_NODE_TO_PARENT: `null`/`-1`
     * append; a value `>= count` clamps to an append (not rejected); a value `< -1` is meaningless
     * as an index and is rejected. NOT used by MOVE_CHILD, which repositions a node already in the
     * role and so clamps to `count - 1` with its own message.
     */
    protected fun resolveInsertIndex(roleName: String, requested: Int?, count: Int): InsertIndex = when {
        requested == null || requested == -1 -> InsertIndex.Append
        requested < -1 -> InsertIndex.Invalid(
            "position $requested is invalid for role '$roleName'; use -1 or omit " +
                "position to append, or supply a value >= 0"
        )
        requested >= count -> InsertIndex.Append
        else -> InsertIndex.At(requested)
    }

    private fun addNodeChild(mpsProject: MPSProject, nodeReference: String, childRole: String, childJson: String, position: Int?, dryRun: Boolean, responseDetail: String? = null): String {
        val summarize = when (val r = resolveResponseDetail(responseDetail, 1)) {
            is ResponseDetailResolution.Ok -> r.summary
            is ResponseDetailResolution.Err -> return r.errJson
        }
        val (parent, model, console) = when (val r = resolveEditableNodeAllowingConsole(mpsProject, nodeReference, { "Parent node '$it' not found" })) {
            is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
            is ConsoleAwareResolution.Err -> return r.errJson
        }
        val role = parent.concept.containmentLinks.find { it.name == childRole } ?: return errJson("Child role '$childRole' not found in concept '${parent.concept.name}'", McpErrorCode.NOT_FOUND)

        // Snapshot existing children only for multi-cardinality roles; for 0..1 / 1 the
        // count and order are irrelevant — the role either replaces or rejects.
        val existingChildrenInRole: List<SNode> =
            if (role.isMultiple) parent.getChildren(role).toList() else emptyList()

        // Validate `position` up front — and, for multi-cardinality roles, resolve where the child
        // lands — so we never partially mutate the model. Single-cardinality roles ignore the index
        // (they replace the lone occupant below) and accept only the -1/0 sentinels.
        val insertIndex: InsertIndex = if (role.isMultiple) {
            when (val ix = resolveInsertIndex(childRole, position, existingChildrenInRole.size)) {
                is InsertIndex.Invalid -> return errJson(ix.message, McpErrorCode.INVALID_REQUEST)
                else -> ix
            }
        } else {
            if (position != null && position != -1 && position != 0) {
                return errJson(
                    "position $position not applicable to single-cardinality role '$childRole' (only -1 or 0 are allowed)",
                    McpErrorCode.INVALID_REQUEST
                )
            }
            InsertIndex.Append
        }

        val jsonObject = try {
            parseJson(childJson)
        } catch (e: Exception) {
            return invalidJson(e.message)
        }
        val nodeWarnings = mutableListOf<String>()
        val newChild = try {
            instantiateNode(jsonObject, model, dryRun, warnings = nodeWarnings, mpsProject = mpsProject, enclosingNode = parent)
        } catch (e: Exception) {
            return errJson("Failed to instantiate child node from JSON: ${e.message}", McpErrorCode.INVALID_REQUEST, warnings = nodeWarnings)
        }
        if (newChild == null) return errJson("Failed to instantiate child node from JSON", McpErrorCode.INVALID_REQUEST, warnings = nodeWarnings)

        // Check before replacing the occupant of a single-cardinality role: MPS commands do not roll
        // back, so a delete ahead of a failing check would stick.
        if (!newChild.concept.isSubConceptOf(role.targetConcept)) {
            throw AssignabilityException(
                jsonPath = "$",
                actualConcept = newChild.concept.name,
                expectedConcepts = listOf(role.targetConcept.name),
                parentConcept = parent.concept.name,
                role = role.name
            )
        }

        if (!role.isMultiple && !dryRun) {
            parent.getChildren(role).forEach { it.delete() }
        }

        if (dryRun) {
            return okJson(jsonObject {
                addProperty("dryRun", true)
                addProperty("message", "Dry run successful for node addition")
            }, warnings = nodeWarnings)
        }

        when (insertIndex) {
            is InsertIndex.At -> {
                // index is in [0, existingChildrenInRole.size); the snapshot was taken before any mutation.
                parent.insertChildBefore(role, newChild, existingChildrenInRole[insertIndex.index])
            }
            // Append covers every multi-cardinality append/clamp case and all single-cardinality
            // inserts (Invalid was already returned above).
            else -> parent.addChild(role, newChild)
        }
        val fixResult = performFixReferences(mpsProject, newChild)
        val warn = persistOrRefreshConsole(model, console)
        if (summarize) {
            return okJson(jsonObject {
                addProperty("added", 1)
                add("nodes", JsonArray().apply { add(createdNodeSummaryJsonObject(newChild)) })
                add("fixReferences", aggregateFixReferencesJsonObject(listOf(fixResult)))
            }, warnings = nodeWarnings + listOfNotNull(warn))
        }
        // Report the new child's actual index so a caller that overshot `position` (now clamped
        // to an append) can see where it landed.
        return okJson(
            withFixReferencesInfo(nodeInfoJsonObjectWithIndex(newChild, mpsProject), fixResult),
            warnings = nodeWarnings + listOfNotNull(warn)
        )
    }

    protected suspend fun update_node_reference(mpsProject: MPSProject, nodeReference: String, referenceRole: String, targetNodeRefStr: String?): String {
        currentCoroutineContext().reportToolActivity("Updating MPS node reference '$referenceRole'")
        return executeShortCommandOnEdt(mpsProject) {
            val (node, model, console) = when (val r = resolveEditableNodeAllowingConsole(mpsProject, nodeReference)) {
                is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
                is ConsoleAwareResolution.Err -> return@executeShortCommandOnEdt r.errJson
            }

            val sReferenceLink = node.concept.referenceLinks.find { it.name == referenceRole } ?: return@executeShortCommandOnEdt errJson("Reference link '$referenceRole' not found in concept '${node.concept.name}'", McpErrorCode.NOT_FOUND)

            var fixResult: FixReferencesResult? = null
            if (targetNodeRefStr != null) {
                val previousReference = node.getReference(sReferenceLink)?.describeTarget()
                applyReferenceUpdate(
                    ownerNode = node,
                    link = sReferenceLink,
                    targetRefStr = targetNodeRefStr,
                    model = model,
                    repository = mpsProject.repository,
                    parentConceptName = node.concept.name,
                    roleName = referenceRole,
                    errorPath = "targetNodeReference",
                    xmlReferencePath = "$",
                    xmlReferenceIndex = 0,
                    dryRun = false,
                    allowDynamicReference = true,
                    validateXmlReference = false,
                    // Keep this true so a bare plain name is NOT routed through the global
                    // first-match root lookup (resolveNodeReference), which ignores the reference
                    // role's search scope and could bind an out-of-scope or ambiguous root.
                    // Persistent r:/i: refs and the explicit Model.Root form still resolve directly
                    // via resolveReferenceTarget; a bare name returns null there and is stored as a
                    // dynamic reference, then resolved within scope by the pass below (parity with
                    // the blueprint-insert path, which also uses the default true).
                    persistentReferencesOnly = true,
                    mpsProject = mpsProject
                )
                // A bare plain name is stored by applyReferenceUpdate as a dynamic reference.
                // Resolve just this role through its scope so an in-scope name is materialized,
                // while unrelated references on this node/subtree are left untouched. If resolution
                // still fails, restore the previous value and fail loudly.
                val currentReference = node.getReference(sReferenceLink)
                val needsScopeResolution = (currentReference as? SRefImpl)?.resolveInfo == targetNodeRefStr ||
                        currentReference?.targetNode == null
                if (needsScopeResolution) {
                    fixResult = performFixReference(mpsProject, node, sReferenceLink)
                    if (node.getReference(sReferenceLink)?.targetNode == null) {
                        // Compute the diagnostic while the unresolved (dynamic) reference is still
                        // attached — its search scope is needed to tell "no such name" from
                        // "ambiguous name" — then restore the previous value and fail.
                        val detail = describeByNameResolutionFailure(node, sReferenceLink, targetNodeRefStr, referenceRole)
                        restoreReference(node, sReferenceLink, previousReference)
                        persistOrRefreshConsole(model, console)
                        return@executeShortCommandOnEdt errJson(detail, McpErrorCode.NOT_FOUND)
                    }
                }
            } else {
                // Deletion
                node.dropReference(sReferenceLink)
            }

            val warn = persistOrRefreshConsole(model, console)
            val info = if (fixResult != null) {
                withFixReferencesInfo(nodeInfoJsonObject(node, mpsProject), fixResult)
            } else {
                nodeInfoJsonObject(node, mpsProject)
            }
            okJson(info, warnings = listOfNotNull(warn))
        }
    }

    /**
     * Builds the NOT_FOUND error detail for a SET-REFERENCE-by-name that failed scope resolution.
     * The platform's [jetbrains.mps.scope.Scope.resolve] collapses two distinct failures into a
     * single null return: a name that matches NO in-scope node, and a name that matches MORE THAN
     * ONE (it refuses to guess between equally-named candidates). The ambiguous case is common with
     * the model-wide default scope used by references that declare no custom search scope — e.g. two
     * same-named nodes in different roots of the same model — and the old generic "did not resolve
     * to a node in scope" wording hid it, so a caller read an ambiguous name as "not found" and never
     * learned to disambiguate with a persistent reference.
     *
     * Re-enumerates the role's search scope (best-effort: any failure falls back to the generic
     * wording) and counts candidates whose reference text equals [name]. Runs only on the
     * already-failed path, so the extra scope walk never costs anything on the success path.
     */
    private fun describeByNameResolutionFailure(node: SNode, link: SReferenceLink, name: String, role: String): String {
        val generic = "Reference target '$name' for role '$role' did not resolve to a node in scope. " +
                "Pass a persistent node reference (r:...) or a name that is unique within the role's search scope."
        val matches = try {
            val reference = node.getReference(link) ?: return generic
            val scope = ModelConstraints.getScope(reference)
            if (scope is ErrorScope) return generic
            // getAvailableElements does a prefix match; keep only exact-name candidates, capped — we
            // only need to tell "none" from "two or more" and to surface a few references to act on.
            val found = ArrayList<SNode>()
            for (candidate in scope.getAvailableElements(name)) {
                if (scope.getReferenceText(node, candidate) == name) {
                    found.add(candidate)
                    if (found.size >= 6) break
                }
            }
            found
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            return generic
        }
        if (matches.size < 2) {
            return "Reference target '$name' for role '$role' did not resolve: no node named '$name' was found in the " +
                    "role's search scope. Pass a persistent node reference (r:...) or a name that exists and is unique " +
                    "within the role's search scope."
        }
        val shown = matches.take(5).joinToString(", ") { PersistenceFacade.getInstance().asString(it.reference) }
        val count = if (matches.size > 5) "at least ${matches.size}" else matches.size.toString()
        return "Reference target '$name' for role '$role' is ambiguous: $count nodes named '$name' are in the role's " +
                "search scope ($shown). By-name resolution requires a unique match — pass a persistent node reference " +
                "(r:...) to disambiguate."
    }

    private fun performFixReference(mpsProject: MPSProject, node: SNode, link: SReferenceLink): FixReferencesResult {
        val reference = node.getReference(link)
            ?: return FixReferencesResult(fixed = 0, repointed = 0, stillBroken = 0, message = "No reference found")
        val targetBefore = reference.targetNode

        val smodelRef = reference as? SRefImpl
        val info = smodelRef?.resolveInfo
        if (info.isNullOrEmpty()) {
            val name = targetBefore?.name
            if (name != null) {
                smodelRef?.resolveInfo = name
            }
        }

        val resolver = mpsProject.getComponent(ResolverComponent::class.java)
        resolver?.resolveScopesOnly(reference, mpsProject.repository)

        val targetAfter = node.getReference(link)?.targetNode
        val sourceModel = node.model
        if (sourceModel is SModelInternal && targetAfter != null) {
            ensureReferenceDependencies(sourceModel, targetAfter.reference, targetAfter)
        }

        val fixed = if (targetBefore == null && targetAfter != null) 1 else 0
        val repointed = if (targetBefore != null && targetAfter != null && targetAfter != targetBefore) 1 else 0
        val stillBroken = if (targetBefore == null && targetAfter == null) 1 else 0
        val message = when {
            fixed == 0 && repointed == 0 && stillBroken == 0 -> "Reference is already correctly resolved"
            fixed == 0 && repointed == 0 -> "1 broken reference could not be resolved"
            repointed > 0 -> "1 reference repointed to correct target"
            else -> "1 broken reference resolved"
        }
        return FixReferencesResult(fixed = fixed, repointed = repointed, stillBroken = stillBroken, message = message)
    }

    /**
     * Resolution of the `responseDetail` parameter shared by the node-creating tools: either the
     * decision (summary or the full per-node envelopes) or a ready error envelope for an
     * unrecognized literal. Validated before any mutation so a typo costs nothing.
     *
     * With no explicit value, a call that creates [SUMMARY_RESPONSE_THRESHOLD] or more top-level
     * nodes answers with the summary — a 40-root bulk insert used to answer with 33 KB of node
     * envelopes, `conceptDoc` repeated per root (study hotspot 5) — and a smaller one keeps the
     * full envelopes. The count is the number of *top-level* nodes created (array elements), which
     * is what drives the response size; a deep single-node blueprint stays on the full path.
     */
    protected sealed class ResponseDetailResolution {
        data class Ok(val summary: Boolean) : ResponseDetailResolution()
        data class Err(val errJson: String) : ResponseDetailResolution()
    }

    protected fun resolveResponseDetail(requested: String?, topLevelNodeCount: Int): ResponseDetailResolution {
        val normalized = requested?.trim()?.lowercase()
        return when {
            normalized.isNullOrEmpty() -> ResponseDetailResolution.Ok(topLevelNodeCount >= SUMMARY_RESPONSE_THRESHOLD)
            normalized == "summary" -> ResponseDetailResolution.Ok(true)
            normalized == "full" -> ResponseDetailResolution.Ok(false)
            else -> ResponseDetailResolution.Err(
                errJson(
                    "Invalid responseDetail '$requested'. Allowed values: summary, full",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
    }

    /** `{name, reference, concept}` — the summary entry for one newly created node. */
    protected fun createdNodeSummaryJsonObject(n: SNode): JsonObject = jsonObject {
        addProperty("name", n.name ?: n.presentation)
        addProperty("reference", PersistenceFacade.getInstance().asString(n.reference))
        addProperty("concept", n.concept.name)
    }

    /**
     * Aggregate `fixReferences` counters for a summary response: dropping the per-node envelopes
     * must not drop the one fact a bulk insert has to report — whether any reference is still broken.
     */
    protected fun aggregateFixReferencesJsonObject(results: List<FixReferencesResult>): JsonObject = jsonObject {
        addProperty("fixed", results.sumOf { it.fixed })
        addProperty("repointed", results.sumOf { it.repointed })
        addProperty("stillBroken", results.sumOf { it.stillBroken })
    }

    /**
     * Outcome of [performFixReferences]. `fixed` counts references that were null before and now
     * resolve to a target; `repointed` counts references that were resolved before and now point
     * elsewhere; `stillBroken` counts references that were null before and remain unresolved.
     */
    protected data class FixReferencesResult(
        val fixed: Int,
        val repointed: Int,
        val stillBroken: Int,
        val message: String,
    )

    protected fun performFixReferences(mpsProject: MPSProject, node: SNode): FixReferencesResult {
        val repo = mpsProject.repository
        val allRefs = mutableListOf<SReference>()
        val srcNodes = mutableListOf<SNode>()
        val refLinks = mutableListOf<SReferenceLink>()
        val targetsBefore = mutableListOf<SNode?>()
        val queue = ArrayDeque<SNode>()
        queue.add(node)
        while (queue.isNotEmpty()) {
            val current = queue.removeFirst()
            for (ref in current.references) {
                allRefs.add(ref)
                srcNodes.add(current)
                refLinks.add(ref.link)
                targetsBefore.add(ref.targetNode)
            }
            for (child in current.children) queue.add(child)
        }

        if (allRefs.isEmpty()) {
            return FixReferencesResult(fixed = 0, repointed = 0, stillBroken = 0, message = "No references found")
        }

        // Ensure every reference has resolveInfo so ScopeResolver can work on it
        for (ref in allRefs) {
            val smodelRef = ref as? SRefImpl ?: continue
            // Read resolveInfo once: the property is a getter and a second read could in
            // principle return a different value (TOCTOU), making the guard inconsistent with
            // the subsequent assignment.
            val info = smodelRef.resolveInfo
            if (info.isNullOrEmpty()) {
                val name = ref.targetNode?.name
                if (name != null) {
                    smodelRef.resolveInfo = name
                }
            }
        }

        // Attempt scope-based re-resolution on every reference
        val resolver = mpsProject.getComponent(ResolverComponent::class.java)
        resolver?.resolveScopesOnly(allRefs, repo)

        // Auto-add model imports and module dependencies for newly-resolved references
        val sourceModel = node.model
        if (sourceModel is SModelInternal) {
            for (i in allRefs.indices) {
                val targetAfter = srcNodes[i].getReference(refLinks[i])?.targetNode ?: continue
                val targetModelRef = targetAfter.model?.reference ?: continue
                if (!sourceModel.modelImports.contains(targetModelRef)) {
                    sourceModel.addModelImport(targetModelRef)
                    val targetModule = targetAfter.model?.module
                    val currentModule = sourceModel.module
                    if (targetModule != null && currentModule != null && targetModule != currentModule) {
                        (currentModule as? AbstractModule)?.addDependency(targetModule.moduleReference, false)
                    }
                }
            }
        }

        // Compare before/after per reference to count what changed
        var fixed = 0       // was null → now resolved
        var repointed = 0   // was resolved but wrong → now different target
        var stillBroken = 0 // was null → still null
        for (i in allRefs.indices) {
            val targetAfter = srcNodes[i].getReference(refLinks[i])?.targetNode
            val targetBefore = targetsBefore[i]
            when {
                targetBefore == null && targetAfter != null -> fixed++
                targetBefore == null && targetAfter == null -> stillBroken++
                targetBefore != null && targetAfter != null && targetAfter != targetBefore -> repointed++
            }
        }

        val message = when {
            fixed == 0 && repointed == 0 && stillBroken == 0 -> "All references are already correctly resolved"
            fixed == 0 && repointed == 0 -> "$stillBroken broken reference(s) could not be resolved"
            else -> buildString {
                if (fixed > 0) append("$fixed broken reference(s) resolved")
                if (repointed > 0) { if (fixed > 0) append(", "); append("$repointed reference(s) repointed to correct target") }
                if (stillBroken > 0) append("; $stillBroken remain broken")
            }
        }

        return FixReferencesResult(fixed = fixed, repointed = repointed, stillBroken = stillBroken, message = message)
    }

    /**
     * Returns the given node-info object enriched with a `fixReferences` sub-object describing
     * the outcome of [performFixReferences]. Callers receive the counts (fixed / repointed /
     * stillBroken) and the human-readable message instead of the result being silently dropped.
     */
    protected fun withFixReferencesInfo(nodeInfo: JsonObject, fixResult: FixReferencesResult): JsonObject {
        val fixInfo = JsonObject()
        fixInfo.addProperty("fixed", fixResult.fixed)
        fixInfo.addProperty("repointed", fixResult.repointed)
        fixInfo.addProperty("stillBroken", fixResult.stillBroken)
        fixInfo.addProperty("message", fixResult.message)
        nodeInfo.add("fixReferences", fixInfo)
        return nodeInfo
    }

    protected fun setProperty(node: SNode, sProperty: SProperty, propertyValue: String?) {
        val type = sProperty.type
        if (type is SEnumeration && propertyValue != null) {
            val literal = type.getLiteral(propertyValue)
            if (literal != null) {
                SNodeAccessUtil.setPropertyValue(node, sProperty, literal)
                return
            }
            // fallback to presentation
            val byPresentation = type.literals.find { it.presentation == propertyValue }
            if (byPresentation != null) {
                SNodeAccessUtil.setPropertyValue(node, sProperty, byPresentation)
                return
            }
        }
        node.setProperty(sProperty, propertyValue)
    }

    protected sealed class SearchScopeResolution {
        /**
         * [rootFilter] is non-null only for scope "roots": a SearchScope can narrow the search
         * no further than the roots' containing models, so callers must additionally drop
         * candidate nodes whose containing root is not in this set.
         */
        data class Ok(val scope: SearchScope, val rootFilter: Set<SNodeReference>? = null) : SearchScopeResolution()
        data class Err(val errJson: String) : SearchScopeResolution()
    }

    /**
     * Builds the SearchScope corresponding to the 'scope' parameter shared by FIND_USAGES,
     * FIND_INSTANCES and root-node-by-name search. Supported values: "all", "editable",
     * "models" (requires "models"), "modules" (requires "modules"), "roots" (requires "roots"
     * node references — non-root references widen to their containing root). The "models"/
     * "modules"/"roots" parameters each accept either a JSON array of references or a single bare
     * reference string (see [scopeRefStrings]). Returns the scope (plus the root filter for scope
     * "roots") or an error result.
     *
     * The default "all"/"editable" scopes are rooted at [mpsProject], not at the shared global
     * module repository. Explicit "models"/"modules"/"roots" scopes may name elements from other
     * open MPS projects; those elements are queried read-only, matching normal MPS cross-project
     * dependency/reference semantics.
     */
    protected fun buildSearchScope(
        mpsProject: MPSProject,
        scopeParam: String,
        params: JsonObject
    ): SearchScopeResolution {
        val repo = mpsProject.repository
        return when (scopeParam) {
            // Project-confined, NOT instance-global (see KDoc): root the default scopes at the
            // project the projectPath selected, never the shared global module repository.
            "all" -> {
                // Project's own modules (+ owned generators) plus their VISIBLE dependency closure:
                // used languages, read-only library/Modules-Pool entries, devkit-exported solutions,
                // accessory models, and imported modules from other open projects.
                // Hoisted into a local: each property read runs its own read action and rebuilds
                // the list, so reuse the single result for both constructor arguments.
                val projectModules = mpsProject.projectModulesWithGenerators
                SearchScopeResolution.Ok(
                    VisibleDepsSearchScope(
                        repo,
                        projectModules,
                        projectModules.flatMap { it.usedLanguages }
                    )
                )
            }
            // Project's own editable modules only (mpsProject.scope == ProjectScope).
            "editable" -> SearchScopeResolution.Ok(EditableFilteringScope(mpsProject.scope))
            "models" -> {
                val modelRefStrings = when (val r = scopeRefStrings(params, "models")) {
                    is RefStrings.Ok -> r.references
                    is RefStrings.Err -> return SearchScopeResolution.Err(r.errJson)
                }
                val modelRefs = mutableSetOf<SModelReference>()
                for (refStr in modelRefStrings) {
                    val model = resolveModelPreferringProject(mpsProject, refStr)
                    if (model == null) {
                        return SearchScopeResolution.Err(
                            errJson(
                                "Parameter 'models' contains an unresolved model reference: '$refStr'",
                                McpErrorCode.INVALID_REQUEST,
                            )
                        )
                    }
                    modelRefs.add(model.reference)
                }
                SearchScopeResolution.Ok(filteredScope(repo, allowedModels = modelRefs, allowedModules = null))
            }
            "modules" -> {
                val moduleRefStrings = when (val r = scopeRefStrings(params, "modules")) {
                    is RefStrings.Ok -> r.references
                    is RefStrings.Err -> return SearchScopeResolution.Err(r.errJson)
                }
                val moduleRefs = mutableSetOf<SModuleReference>()
                for (refStr in moduleRefStrings) {
                    val module = resolveModulePreferringProject(mpsProject, refStr)
                    if (module == null) {
                        return SearchScopeResolution.Err(
                            errJson(
                                "Parameter 'modules' contains an unresolved module reference: '$refStr'",
                                McpErrorCode.INVALID_REQUEST,
                            )
                        )
                    }
                    moduleRefs.add(module.moduleReference)
                }
                SearchScopeResolution.Ok(filteredScope(repo, allowedModels = null, allowedModules = moduleRefs))
            }
            "roots" -> {
                val element = params.get("roots")
                if (element == null || element.isJsonNull) {
                    return SearchScopeResolution.Err(
                        errJson(
                            "Parameter 'roots' is missing for scope 'roots'. Scope 'roots' searches within the subtrees of the specified roots. If you intended to match only root nodes across the repository, use parameter 'rootsOnly': true with scope 'editable' or 'all'.",
                            McpErrorCode.INVALID_REQUEST,
                        )
                    )
                }
                val rootRefStrings = when (val r = refStrings(element, "roots")) {
                    is RefStrings.Ok -> r.references
                    is RefStrings.Err -> return SearchScopeResolution.Err(r.errJson)
                }
                val rootRefs = mutableSetOf<SNodeReference>()
                val modelRefs = mutableSetOf<SModelReference>()
                for (refStr in rootRefStrings) {
                    val node = try {
                        resolveNodeReferencePreferringProject(mpsProject, refStr)?.resolve(repo)
                    }
                    catch (e: McpInvalidReferenceException) {
                        return SearchScopeResolution.Err(
                            errJson(
                                "Parameter 'roots' contains an invalid root reference '$refStr': ${e.message}",
                                McpErrorCode.INVALID_REQUEST,
                            )
                        )
                    }
                    if (node == null) {
                        return SearchScopeResolution.Err(
                            errJson(
                                "Parameter 'roots' contains an unresolved root reference: '$refStr'",
                                McpErrorCode.INVALID_REQUEST,
                            )
                        )
                    }
                    rootRefs.add(node.containingRoot.reference)
                    node.model?.reference?.let { modelRefs.add(it) }
                }
                SearchScopeResolution.Ok(filteredScope(repo, allowedModels = modelRefs, allowedModules = null), rootRefs)
            }
            else -> SearchScopeResolution.Err(errJson("Unsupported scope: $scopeParam"))
        }
    }

    /** Outcome of validating a `parameters` key that names one reference or an array of them. */
    private sealed interface RefStrings {
        data class Ok(val references: List<String>) : RefStrings
        data class Err(val errJson: String) : RefStrings
    }

    /**
     * Validates an explicit search-scope selector without throwing from the surrounding read action.
     * A single bare string remains supported for compatibility with [JetBrainsMPSRootNodeMcpToolset];
     * arrays must be nonempty and every element must be a nonblank JSON string.
     */
    private fun scopeRefStrings(params: JsonObject, name: String): RefStrings {
        val element = params.get(name)
        if (element == null || element.isJsonNull) {
            return RefStrings.Err(
                errJson("Parameter '$name' is missing for scope '$name'", McpErrorCode.INVALID_REQUEST)
            )
        }
        return refStrings(element, name)
    }

    /**
     * The shape check shared by the scope selectors and FIND_INSTANCES' `conceptRefs`: one nonblank
     * string, or a nonempty array of nonblank strings. [element] must already be known present and
     * non-null, so the "missing" wording stays with the caller that knows what absence means there.
     */
    private fun refStrings(element: JsonElement, name: String): RefStrings {
        if (element.isJsonPrimitive) {
            if (!element.asJsonPrimitive.isString || element.asString.isBlank()) {
                return invalidRefStrings(name)
            }
            return RefStrings.Ok(listOf(element.asString))
        }

        if (!element.isJsonArray) {
            return invalidRefStrings(name)
        }

        val values = element.asJsonArray
        if (values.size() == 0) {
            return RefStrings.Err(
                errJson(
                    "Parameter '$name' must be a nonempty array of nonblank strings",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }

        val references = ArrayList<String>(values.size())
        for ((index, value) in values.withIndex()) {
            if (!value.isJsonPrimitive || !value.asJsonPrimitive.isString || value.asString.isBlank()) {
                return RefStrings.Err(
                    errJson(
                        "Parameter '$name[$index]' must be a nonblank string",
                        McpErrorCode.INVALID_REQUEST,
                    )
                )
            }
            references.add(value.asString)
        }
        return RefStrings.Ok(references)
    }

    private fun invalidRefStrings(name: String): RefStrings.Err =
        RefStrings.Err(
            errJson(
                "Parameter '$name' must be a nonblank string or a nonempty array of nonblank strings",
                McpErrorCode.INVALID_REQUEST,
            )
        )

    /**
     * Builds a [BaseScope] restricted to either an explicit set of model references or
     * an explicit set of module references. Exactly one of [allowedModels] / [allowedModules]
     * must be non-null. The 'other' axis is derived: explicit-models contributes its containing
     * modules; explicit-modules contributes all its models.
     */
    protected fun filteredScope(
        repo: SRepository,
        allowedModels: Set<SModelReference>?,
        allowedModules: Set<SModuleReference>?,
    ): BaseScope {
        require((allowedModels == null) != (allowedModules == null)) {
            "exactly one of allowedModels / allowedModules must be non-null"
        }
        // For the explicit-models case the module allow-set is derived from the models' owning
        // modules, so resolve(SModuleReference) cannot leak modules outside the filter: an
        // unrestricted module resolve would let a models-scoped search accept references
        // targeting modules outside the filter set.
        val effectiveModules = allowedModules
            ?: allowedModels!!.mapNotNull { it.resolve(repo)?.module?.moduleReference }.toSet()
        return object : BaseScope() {
            override fun getModules(): Iterable<SModule> =
                effectiveModules.mapNotNull { it.resolve(repo) }

            override fun getModels(): Iterable<SModel> =
                allowedModels?.mapNotNull { it.resolve(repo) }
                    ?: getModules().flatMap { it.models }

            override fun resolve(reference: SModelReference): SModel? =
                if (allowedModels == null || reference in allowedModels) reference.resolve(repo) else null

            override fun resolve(reference: SModuleReference): SModule? =
                if (reference in effectiveModules) reference.resolve(repo) else null
        }
    }

    /**
     * Runs the find-usages facade over [searchScope] and, when the index produced **zero raw
     * candidates**, falls back to a direct model walk over the scope's models. The gate watches
     * raw facade callbacks, not what [collector] kept: the fallback compensates for missing
     * index coverage (e.g. freshly created models), not for caller-side filter misses —
     * triggering on a filtered-empty result would walk the whole scope only to re-apply the
     * same filter. [collector] may be invoked concurrently; synchronize shared state inside it
     * (the gate itself is an atomic for the same reason — a plain local would have no
     * happens-before edge with pooled-thread callbacks and could read a stale zero).
     */
    protected fun findUsagesWithFallback(
        searchScope: SearchScope,
        targets: Set<SNode>,
        monitor: ProgressMonitor,
        collector: (SReference) -> Unit
    ) {
        val sawAny = AtomicBoolean(false)
        val counting: (SReference) -> Unit = { sawAny.set(true); collector(it) }
        FindUsagesFacade.getInstance().findUsages(searchScope, targets, { counting(it) }, monitor)
        if (!sawAny.get() && !monitor.isCanceled) {
            val lookup = NodeUsageLookup(targets) { counting(it) }
            for (m in searchScope.models) {
                if (monitor.isCanceled) break
                lookup.collectUsages(m, monitor)
            }
        }
    }

    /**
     * [findUsagesWithFallback]'s instance-search counterpart: facade first, direct
     * [InstanceLookup] walk for the concepts the index produced no raw candidate for.
     *
     * The gate is **per concept**, not per call. The facade's index coverage is per model, so in a
     * request that batches several concepts one indexed concept must not suppress the fallback for
     * an unindexed one: a batched query has to answer each concept exactly as a single-concept
     * query would. For a single concept this is the previous all-or-nothing gate. Attribution
     * happens on the raw facade callback, before any caller-side filter, for the reason the
     * previous gate used raw callbacks: the fallback compensates for missing index coverage, not
     * for caller-side filter misses.
     *
     * The fallback walk answers the same question the facade does: [InstanceLookup] asks
     * `FastNodeFinder` with `includeInherited=false`, so for a non-exact query the uncovered
     * concepts are expanded with their descendants first, exactly as `InstancesSearchType` expands
     * its query set. Without that expansion a non-exact query served by the fallback silently
     * drops every subconcept instance — e.g. counting `AbstractConceptDeclaration` over a model
     * whose index entry lags a just-saved write yields only the `ConceptDeclaration` nodes the
     * requested `ConceptDeclaration` concept also pulls in, never the `InterfaceConceptDeclaration`
     * ones. The collector must still apply its own per-concept predicate to whatever arrives, as
     * [opFindInstances] does.
     *
     * [collector] may be invoked concurrently; synchronize shared state inside it.
     */
    protected fun findInstancesWithFallback(
        searchScope: SearchScope,
        concepts: Set<SAbstractConcept>,
        exact: Boolean,
        monitor: ProgressMonitor,
        collector: (SNode) -> Unit
    ) {
        // Synchronized rather than atomic for the same reason the previous gate was an atomic:
        // pooled-thread callbacks need a happens-before edge with the post-facade read below.
        val unseen = concepts.toMutableSet()
        val counting: (SNode) -> Unit = { node ->
            synchronized(unseen) {
                if (unseen.isNotEmpty()) {
                    unseen.removeAll { conceptMatches(node, it, exact) }
                }
            }
            collector(node)
        }
        FindUsagesFacade.getInstance().findInstances(searchScope, concepts, exact, { counting(it) }, monitor)
        val uncovered = synchronized(unseen) { unseen.toSet() }
        if (uncovered.isNotEmpty() && !monitor.isCanceled) {
            val lookupConcepts =
                if (exact) uncovered
                else uncovered.flatMapTo(LinkedHashSet()) { ConceptDescendantsCache.getInstance().getDescendants(it) }
            val lookup = InstanceLookup(lookupConcepts) { collector(it) }
            for (m in searchScope.models) {
                if (monitor.isCanceled) break
                lookup.collectInstances(m, monitor)
            }
        }
    }

    /**
     * The "is an instance of" predicate FIND_INSTANCES attributes a node by: identity under
     * [exact], assignability otherwise (which crosses implemented interfaces, so an interface
     * concept matches its implementors). Kept in one place because it decides both which concepts
     * the index is considered to cover ([findInstancesWithFallback]) and which requested concept a
     * counted node belongs to ([opFindInstances]) — the two must not drift apart.
     */
    private fun conceptMatches(node: SNode, concept: SAbstractConcept, exact: Boolean): Boolean =
        if (exact) node.concept == concept else node.concept.isSubConceptOf(concept)

    /**
     * FIND_INSTANCES — finds nodes that are instances of one or more concepts. The canonical home
     * is mps_mcp_query_nodes; mps_mcp_query_structure keeps dispatching here (unadvertised) so
     * pre-move skill copies installed in other projects continue to work.
     *
     * `conceptRefs` batches several concepts into one scan (study remedy M1: the measured chain was
     * one call per concept, three of which overflowed into temp files purely because every node was
     * serialized to be counted). `detail:"count"` answers with one row per requested concept and
     * builds no node records at all.
     */
    protected suspend fun opFindInstances(
        mpsProject: MPSProject,
        params: JsonObject,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        val conceptRefs = when (val r = requestedConceptRefs(params)) {
            is RefStrings.Ok -> r.references
            is RefStrings.Err -> return r.errJson
        }
        val detailParam = params.paramString("detail")
        val countOnly = when (detailParam?.trim()?.lowercase() ?: DETAIL_NODES) {
            DETAIL_NODES -> false
            DETAIL_COUNT -> true
            else -> return errJson(
                "Invalid detail '$detailParam'. Allowed values: $DETAIL_NODES, $DETAIL_COUNT",
                McpErrorCode.INVALID_REQUEST,
            )
        }
        val scopeParam = params.paramString("scope") ?: "editable"
        val exact = params.paramBoolean("exact", default = false)
        val sampleOnly = params.paramBoolean("sampleOnly", default = false)
        val rootsOnly = params.paramBoolean("rootsOnly", default = false)
        if (countOnly && sampleOnly) {
            return errJson(
                "detail '$DETAIL_COUNT' and sampleOnly:true ask for opposite things — how many " +
                    "instances there are, versus one example node. Drop 'sampleOnly' to count, or " +
                    "drop 'detail' to get the sample.",
                McpErrorCode.INVALID_REQUEST,
            )
        }
        // takeIf: agents commonly pass explicit nulls for optional params; Gson surfaces
        // "propertyFilter": null as JsonNull, which must mean "no filter", not INVALID_REQUEST.
        val propertyFilter = params.get("propertyFilter")?.takeIf { !it.isJsonNull }
        var filterName: String? = null
        var filterValue: String? = null
        if (propertyFilter != null) {
            val obj = if (propertyFilter.isJsonObject) propertyFilter.asJsonObject else null
            filterName = obj?.get("name")?.takeIf { it.isJsonPrimitive }?.asString
            filterValue = obj?.get("value")?.takeIf { it.isJsonPrimitive }?.asString
            if (filterName == null || filterValue == null) {
                return errJson(
                    "Parameter 'propertyFilter' must be an object {\"name\": \"<propertyName>\", \"value\": \"<expectedValue>\"}",
                    McpErrorCode.INVALID_REQUEST,
                )
            }
        }
        val monitor = coroutineProgressMonitor()
        return executeBackgroundRead(mpsProject) {
            // One entry per requested reference, in input order: a `detail:"count"` row set mirrors
            // the request, so a repeated reference keeps its own row. An unresolvable reference
            // rejects the whole query rather than silently dropping a row, matching the
            // all-or-nothing policy of the explicit scope selectors.
            val requested = ArrayList<SAbstractConcept>(conceptRefs.size)
            for (ref in conceptRefs) {
                requested.add(
                    resolveConceptPreferringProject(mpsProject, ref)
                        ?: return@executeBackgroundRead errJson("Concept '$ref' not found", McpErrorCode.NOT_FOUND)
                )
            }
            val (searchScope, rootFilter) = when (val r = buildSearchScope(mpsProject, scopeParam, params)) {
                is SearchScopeResolution.Ok -> r.scope to r.rootFilter
                is SearchScopeResolution.Err -> return@executeBackgroundRead r.errJson
            }

            val results = mutableSetOf<SNode>()
            val counts = IntArray(requested.size)
            var sample: SNode? = null
            var count = 0
            val random = Random()
            val collectAccepted: (SNode) -> Unit = { node ->
                synchronized(results) {
                    if (sampleOnly) {
                        // Reservoir sampling: every accepted node becomes the sample with
                        // probability 1/count without materializing the full result set.
                        count++
                        if (count == 1 || random.nextInt(count) == 0) {
                            sample = node
                        }
                    } else if (results.add(node) && countOnly) {
                        // Tally on first sight only. Both the facade and the fallback walk can
                        // report one node once per concept it matches (the facade expands a
                        // non-exact query with the concepts' descendants, the fallback loops
                        // over the requested set), so the dedup set is what keeps a count from
                        // counting the same node twice. Rows overlap by construction: with
                        // exact:false an instance of a subconcept counts for every requested
                        // superconcept too, so the rows do not sum to a node total.
                        for (i in requested.indices) {
                            if (conceptMatches(node, requested[i], exact)) counts[i]++
                        }
                    }
                }
            }
            if (rootFilter != null) {
                // The specified roots are already in memory. An index query of their containing
                // models can miss a just-created subtree when other hits of a wide concept skip
                // the FastNodeFinder fallback, then rootFilter drops every remaining candidate.
                val repo = mpsProject.repository
                for (rootRef in rootFilter) {
                    if (monitor.isCanceled) break
                    val root = rootRef.resolve(repo) ?: continue
                    for (node in org.jetbrains.mps.openapi.model.SNodeUtil.getDescendants(root)) {
                        if (monitor.isCanceled) break
                        val accepted = requested.any { conceptMatches(node, it, exact) } &&
                            (!rootsOnly || node.parent == null) &&
                            (filterName == null || propertyValueByName(node, filterName) == filterValue)
                        if (accepted) collectAccepted(node)
                    }
                }
            } else {
                findInstancesWithFallback(searchScope, requested.toSet(), exact, monitor) { node ->
                    // Defensive: both paths already report exact instances of the requested concepts
                    // for an exact query (the facade does not expand the query set, the fallback walk
                    // asks FastNodeFinder with includeInherited=false), so this narrows nothing today.
                    // Kept because neither guarantee is part of either contract, and generalised over
                    // the requested set so a batched query does not drop a node matching another entry.
                    val accepted = !monitor.isCanceled &&
                        (!exact || requested.any { node.concept == it }) &&
                        (!rootsOnly || node.parent == null) &&
                        (filterName == null || propertyValueByName(node, filterName) == filterValue)
                    if (accepted) collectAccepted(node)
                }
            }
            if (monitor.isCanceled) {
                return@executeBackgroundRead errJson("Operation canceled")
            }
            if (countOnly) {
                val rows = JsonArray()
                for (i in requested.indices) {
                    val row = JsonObject()
                    row.addProperty("concept", structureQualifiedName(requested[i]))
                    row.addProperty("conceptReference", PersistenceFacade.getInstance().asString(requested[i]))
                    row.addProperty("count", counts[i])
                    rows.add(row)
                }
                return@executeBackgroundRead finalizeResult(rows.toString(), maxInlineBytes)
            }
            if (sampleOnly) {
                sample?.let { results.add(it) }
            }
            val cache = ProjectMembershipCache(mpsProject)
            finalizeResult("[" + results.joinToString(",") { nodeInfoJson(it, mpsProject, cache) } + "]", maxInlineBytes)
        }
    }

    /**
     * Reads FIND_INSTANCES' concept selector: the plural `conceptRefs` (a single reference or a
     * nonempty array of them) or the singular `conceptRef` / `conceptReference`.
     *
     * `conceptRefs` is deliberately **not** a third spelling folded into [PARAM_CONCEPT_REF]: a
     * [BlobKey] holds spellings of one key with one arity, and this key takes many values. Sending
     * the plural together with either singular spelling is rejected naming the one to keep — the
     * same "reject the ignored key" policy [paramString] applies to two spellings of one key,
     * because a caller who sent both cannot tell which one won. The arity conflict is reported
     * first when all three are present, so the message names the key that survives. Neither being
     * present never gets here: [FIND_INSTANCES_KEYS] requires one, and the dispatcher checks it.
     */
    private fun requestedConceptRefs(params: JsonObject): RefStrings {
        val plural = params.get(PARAM_CONCEPT_REFS)?.takeUnless { it.isJsonNull }
        val singular = PARAM_CONCEPT_REF.spellings.filter { params.get(it)?.takeUnless { v -> v.isJsonNull } != null }
        if (plural == null) {
            return RefStrings.Ok(listOf(checkNotNull(params.paramString(PARAM_CONCEPT_REF))))
        }
        if (singular.isNotEmpty()) {
            return RefStrings.Err(
                errJson(
                    "'parameters' carries '$PARAM_CONCEPT_REFS' and ${singular.joinToString(" and ") { "'$it'" }}, " +
                        "which select the concepts to search for in two different ways. Keep " +
                        "'$PARAM_CONCEPT_REFS' (it accepts a single reference as well as an array) and remove " +
                        singular.joinToString(", ") { "'$it'" } + ".",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
        return refStrings(plural, PARAM_CONCEPT_REFS)
    }

    private fun propertyValueByName(node: SNode, propertyName: String): String? =
        node.concept.properties.find { it.name == propertyName }?.let { node.getProperty(it) }

    // ── MPS Console access (shared by the console-insert and console-read tools) ──────────────────
    //
    // The console (jetbrains.mps.console) is an optional plugin, so these helpers reach it
    // reflectively rather than via a compile-time dependency (mirrors the run-configuration
    // toolset). The meta IDs come from the generated
    // jetbrains.mps.console.tool.DialogConsoleTab.{LINKS,CONCEPTS}.

    private companion object {
        /** Shared cap on the number of nodes/cells serialized for one selection region (see [selectionInfoJsonObject]). */
        private const val MAX_SELECTION_ITEMS = 20
        /** Shared cap on the number of editor messages serialized per cell (see [cellMessagesJsonArray]). */
        private const val MAX_CELL_MESSAGES = 5
        private const val CONSOLE_PLUGIN_ID = "jetbrains.mps.console"
        private const val CONSOLE_TOOL_FQN = "jetbrains.mps.console.plugin.ConsoleTool_Tool"
        private const val PROJECT_PLUGIN_MANAGER_FQN = "jetbrains.mps.plugins.projectplugins.ProjectPluginManager"

        // jetbrains.mps.console.base.structure.CommandHolder.command — the single editable command
        // the console input editor renders; its target concept is the console `Command` interface.
        private val CONSOLE_COMMAND_LINK: SContainmentLink = MetaAdapterFactory.getContainmentLink(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x4e27160acb4484bL, 0x4e27160acb44924L, "command"
        )

        // jetbrains.mps.console.base.structure.ConsoleRoot — the console model's single root, plus its
        // `commandHolder` child link pointing at the current (editable) CommandHolder. History lives
        // under a separate `history` link, so the current command is ConsoleRoot.commandHolder.command.
        private val CONSOLE_ROOT_CONCEPT: SConcept = MetaAdapterFactory.getConcept(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x15fb34051f725a2cL, "jetbrains.mps.console.base.structure.ConsoleRoot"
        )
        private val CONSOLE_COMMAND_HOLDER_LINK: SContainmentLink = MetaAdapterFactory.getContainmentLink(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder"
        )

        // The console history: `ConsoleRoot.history` (a `History` node) whose `item` children are
        // `HistoryItem`s in execution order — interleaved `CommandHolder`s (executed commands) and
        // `Response`s (their output). A `ModifiedCommandHistoryItem` is a `CommandHolder` that also
        // carries a `modifiedCommand` (an edited recall); its `getCommandToEdit()` returns that
        // instead of `command`, which [effectiveConsoleCommand] mirrors.
        private val CONSOLE_HISTORY_LINK: SContainmentLink = MetaAdapterFactory.getContainmentLink(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x15fb34051f725a2cL, 0x15fb34051f725bafL, "history"
        )
        private val CONSOLE_HISTORY_ITEM_LINK: SContainmentLink = MetaAdapterFactory.getContainmentLink(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0xa835f28c1aa02beL, 0x63da33792b5df49aL, "item"
        )
        private val CONSOLE_COMMAND_HOLDER_CONCEPT: SConcept = MetaAdapterFactory.getConcept(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x4e27160acb4484bL, "jetbrains.mps.console.base.structure.CommandHolder"
        )
        private val CONSOLE_MODIFIED_HISTORY_ITEM_CONCEPT: SConcept = MetaAdapterFactory.getConcept(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x9992dadc6de20a7L, "jetbrains.mps.console.base.structure.ModifiedCommandHistoryItem"
        )
        private val CONSOLE_MODIFIED_COMMAND_LINK: SContainmentLink = MetaAdapterFactory.getContainmentLink(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x9992dadc6de20a7L, 0x9992dadc6de20d6L, "modifiedCommand"
        )
    }

    /** Resolved handle to the console's current editable tab and its backing temporary model. */
    protected sealed class ConsoleResolution {
        data class Ok(val tab: Any, val consoleModel: SModel) : ConsoleResolution()
        data class Err(val errJson: String) : ConsoleResolution()
    }

    /**
     * The console `Command` interface concept (the target of `CommandHolder.command`). The
     * console-insert tool uses it to check that a blueprint resolves to an insertable command.
     */
    protected fun consoleCommandConcept(): SAbstractConcept = CONSOLE_COMMAND_LINK.targetConcept

    /**
     * Locates the MPS Console tool's current editable tab via reflection, so this plugin does not
     * carry a compile-time dependency on the optional `jetbrains.mps.console` plugin (mirrors the
     * reflective access in [JetBrainsMPSRunConfigurationMcpToolset]). The console classes are loaded
     * through the console plugin's own classloader; that classloader also sees `ProjectPluginManager`
     * (core MPS), so it is used for both lookups, keeping the `getTool(Class)` identity check valid.
     *
     * Returns a pre-formatted [ConsoleResolution.Err] envelope when the plugin is disabled, the tool
     * is not registered, or no editable tab exists. Must run on the EDT (reads Swing tab state).
     */
    protected fun resolveConsoleEditableTab(ideaProject: Project): ConsoleResolution {
        val consoleClassLoader = PluginManagerCore.getPlugin(PluginId.getId(CONSOLE_PLUGIN_ID))?.pluginClassLoader
            ?: return ConsoleResolution.Err(
                errJson(
                    "The MPS Console plugin ($CONSOLE_PLUGIN_ID) is not available; cannot access the MPS Console.",
                    McpErrorCode.NOT_FOUND
                )
            )
        return try {
            val consoleToolClass = Class.forName(CONSOLE_TOOL_FQN, true, consoleClassLoader)
            val pluginManagerClass = Class.forName(PROJECT_PLUGIN_MANAGER_FQN, true, consoleClassLoader)
            val pluginManager = pluginManagerClass.getMethod("getInstance", Project::class.java)
                .invoke(null, ideaProject)
                ?: return ConsoleResolution.Err(
                    errJson("ProjectPluginManager is unavailable for this project.", McpErrorCode.INTERNAL_ERROR)
                )
            val tool = pluginManagerClass.getMethod("getTool", Class::class.java)
                .invoke(pluginManager, consoleToolClass)
                ?: return ConsoleResolution.Err(
                    errJson(
                        "The MPS Console tool is not registered for this project (the Console tool window may not be initialized yet).",
                        McpErrorCode.NOT_FOUND
                    )
                )
            val tab = consoleToolClass.getMethod("getCurrentEditableTab").invoke(tool)
                ?: return ConsoleResolution.Err(
                    errJson("No editable tab is available in the MPS Console tool window.", McpErrorCode.NOT_FOUND)
                )
            val consoleModel = tab.javaClass.getMethod("getConsoleModel").invoke(tab) as? SModel
                ?: return ConsoleResolution.Err(
                    errJson("The MPS Console tab has no backing model.", McpErrorCode.INTERNAL_ERROR)
                )
            ConsoleResolution.Ok(tab, consoleModel)
        } catch (e: ReflectiveOperationException) {
            ConsoleResolution.Err(
                errJson("Failed to access the MPS Console tool: ${e.message}", McpErrorCode.INTERNAL_ERROR)
            )
        }
    }

    /** The console model's single `ConsoleRoot`, or null if the model has none. */
    private fun consoleRoot(consoleModel: SModel): SNode? =
        consoleModel.rootNodes.firstOrNull { it.concept.isSubConceptOf(CONSOLE_ROOT_CONCEPT) }

    /**
     * The command node currently shown in the MPS Console input editor — `ConsoleRoot.commandHolder.command`
     * — or null when the input is empty. Must be called under a read action on [consoleModel]'s repository.
     */
    protected fun currentConsoleCommand(consoleModel: SModel): SNode? {
        val commandHolder = consoleRoot(consoleModel)?.getChildren(CONSOLE_COMMAND_HOLDER_LINK)?.firstOrNull()
            ?: return null
        return commandHolder.getChildren(CONSOLE_COMMAND_LINK).firstOrNull()
    }

    /** A console-scoped write target: the editable temporary console model plus its tab (for import refresh). */
    protected class ConsoleTarget(val tab: Any, val consoleModel: SModel)

    /** Result of [resolveEditableNodeAllowingConsole]. [console] is non-null iff the node was admitted
     *  via the console fallback (i.e. it is inside the current console command and must NOT be persisted). */
    protected sealed class ConsoleAwareResolution {
        data class Ok(val node: SNode, val model: EditableSModel, val console: ConsoleTarget?) : ConsoleAwareResolution()
        data class Err(val errJson: String) : ConsoleAwareResolution()
    }

    /**
     * Resolves [nodeReference] for an editable write. Normal project nodes go through the standard
     * project guard. A node that the project guard rejects is admitted ONLY when it lives inside the
     * current console input command of [mpsProject]'s console (never history, never another project).
     * Must be called on the EDT (the console fallback reads Swing tab state) — i.e. inside
     * executeShortCommandOnEdt, like the existing resolves.
     */
    protected fun resolveEditableNodeAllowingConsole(
        mpsProject: MPSProject,
        nodeReference: String,
        missingMessageBuilder: (String) -> String = { "Node '$it' not found" },
        nonEditableMessage: String = "Model containing the node is not editable",
    ): ConsoleAwareResolution {
        val repository = mpsProject.repository
        val node = (resolveNodeReference(mpsProject, nodeReference) ?: resolveNodeReference(repository, nodeReference))?.resolve(repository)
            ?: return ConsoleAwareResolution.Err(errJson(missingMessageBuilder(nodeReference), McpErrorCode.NOT_FOUND))
        val model = node.model
        if (model !is EditableSModel) {
            return ConsoleAwareResolution.Err(errJson(nonEditableMessage, McpErrorCode.NOT_EDITABLE))
        }
        if (isModuleInProject(repository, model)) {
            return ConsoleAwareResolution.Ok(node, model, console = null)
        }
        // Not a project module — the only writes we allow are inside THIS project's current console command.
        val console = when (val r = resolveConsoleEditableTab(mpsProject.project)) {
            is ConsoleResolution.Ok -> r
            // No console available: this is just a non-project node we won't touch. Preserve the
            // cross-project refusal (do NOT surface a console-specific error here).
            is ConsoleResolution.Err -> return ConsoleAwareResolution.Err(crossProjectErr("Node '$nodeReference'"))
        }
        if (model.reference != console.consoleModel.reference) {
            return ConsoleAwareResolution.Err(crossProjectErr("Node '$nodeReference'"))
        }
        val currentCommand = currentConsoleCommand(console.consoleModel)
        if (currentCommand == null || !isSameOrDescendantOf(node, currentCommand)) {
            return ConsoleAwareResolution.Err(errJson(
                "Node '$nodeReference' is not inside the current MPS Console input command. " +
                    "Console history and stale console references cannot be edited.",
                McpErrorCode.INVALID_REQUEST
            ))
        }
        return ConsoleAwareResolution.Ok(node, model, ConsoleTarget(console.tab, console.consoleModel))
    }

    /**
     * Finalizes a successful edit: persists a normal project model, OR — for a console target — skips
     * persistence (the console model is a throwaway temp model) and, when [refreshImports] is set,
     * refreshes the console's languages/imports/module dependencies so newly introduced references
     * stay resolvable.
     *
     * [refreshImports] mirrors the parse-java `postProcess.importUsedLanguages` flag. `addNodeImports`
     * adds used languages to the console model (it runs `ModelDependencyUpdate.updateUsedLanguages()`),
     * so a caller that opted out of import management (`importUsedLanguages=false`) must NOT have those
     * imports re-expanded behind its back — that would defeat the suppression `resolveIteratively`
     * already applied (it even strips languages its resolution passes added under the same flag), and
     * break symmetry with the root/child/replace project modes. The plain `mps_mcp_update_node` callers
     * have no such flag and pass the default (always refresh), since the console temp model has no other
     * mechanism to keep an edited node's references resolvable.
     *
     * The import refresh is best-effort; its failure is returned as a warning string (or null).
     */
    protected fun persistOrRefreshConsole(
        model: EditableSModel,
        console: ConsoleTarget?,
        refreshImports: Boolean = true,
    ): String? {
        if (console == null) {
            saveModelAndModule(model)
            return null
        }
        if (!refreshImports) return null
        return currentConsoleCommand(console.consoleModel)?.let { addConsoleNodeImports(console.tab, it) }
            ?.let { "Failed to update MPS Console imports after the edit: $it" }
    }

    protected fun insertConsoleCommand(tab: Any, command: SNode): String? {
        return try {
            tab.javaClass.getMethod("insertCommand", SNode::class.java).invoke(tab, command)
            null
        } catch (e: ReflectiveOperationException) {
            reflectionFailureDetail(e)
        }
    }

    protected fun addConsoleNodeImports(tab: Any, node: SNode): String? {
        return try {
            val method = generateSequence(tab.javaClass) { it.superclass }
                .mapNotNull { cls ->
                    try {
                        cls.getDeclaredMethod("addNodeImports", SNode::class.java)
                    } catch (_: NoSuchMethodException) {
                        null
                    }
                }
                .firstOrNull()
                ?: throw NoSuchMethodException("addNodeImports(${SNode::class.java.name})")
            method.isAccessible = true
            method.invoke(tab, node)
            null
        } catch (e: ReflectiveOperationException) {
            reflectionFailureDetail(e)
        }
    }

    protected fun isSameOrDescendantOf(node: SNode, ancestor: SNode): Boolean {
        // Compare by node reference rather than instance identity: resolve() and the parent walk
        // are not guaranteed to hand back the same SNode wrapper instance for one logical node
        // (adapter/attribute wrappers can differ), so `==` is unreliable. SNodeReference equality
        // is value-based and uniquely identifies a node, so it is the robust identity test here.
        val ancestorRef = ancestor.reference
        var current: SNode? = node
        while (current != null) {
            if (current.reference == ancestorRef) return true
            current = current.parent
        }
        return false
    }

    /**
     * The console history entries — `ConsoleRoot.history.item` — in execution order (oldest first).
     * Includes both `CommandHolder`s (executed commands) and `Response`s (their output); callers
     * filter by [isConsoleCommandHolder]. Empty when there is no console root or no history.
     * Must be called under a read action on [consoleModel]'s repository.
     */
    protected fun consoleHistoryItems(consoleModel: SModel): List<SNode> {
        val history = consoleRoot(consoleModel)?.getChildren(CONSOLE_HISTORY_LINK)?.firstOrNull()
            ?: return emptyList()
        return history.getChildren(CONSOLE_HISTORY_ITEM_LINK).toList()
    }

    /** True when [node] is a console `CommandHolder` (an executed-command history entry, incl. `ModifiedCommandHistoryItem`). */
    protected fun isConsoleCommandHolder(node: SNode): Boolean =
        node.concept.isSubConceptOf(CONSOLE_COMMAND_HOLDER_CONCEPT)

    /** True when [node] is a `CommandHolder` sitting in the console history (`History.item`), not the current input slot. */
    protected fun isConsoleHistoryEntry(node: SNode): Boolean =
        isConsoleCommandHolder(node) && node.containmentLink == CONSOLE_HISTORY_ITEM_LINK

    /**
     * The command an entry recalls into the input slot — mirrors `CommandHolder.getCommandToEdit()`:
     * the `modifiedCommand` of a `ModifiedCommandHistoryItem`, otherwise the plain `command`. Null when
     * the entry holds neither. Must be called under a read action on the entry's repository.
     */
    protected fun effectiveConsoleCommand(historyEntry: SNode): SNode? {
        if (historyEntry.concept.isSubConceptOf(CONSOLE_MODIFIED_HISTORY_ITEM_CONCEPT)) {
            historyEntry.getChildren(CONSOLE_MODIFIED_COMMAND_LINK).firstOrNull()?.let { return it }
        }
        return historyEntry.getChildren(CONSOLE_COMMAND_LINK).firstOrNull()
    }

    // ── editor caret / selection serialization ─────────────────────────────────────────────
    // Shared, testable serializers for the caret and selection state of an MPS editor, used by
    // mps_mcp_get_current_editor_root_node (source='editor'). Kept here (rather than private in the
    // toolset) so an integration-test probe can drive them directly against a HeadlessEditorComponent.
    // Must be called under a model read action on the editor's repository.

    /**
     * The caret (cursor) position, as an always-present skeleton object: `present` plus the shared
     * cell descriptor (see [cellJsonObject]) of the cell the caret sits in. Every field is emitted
     * even when unavailable, so an agent can read the object and see explicitly that the cursor is
     * outside any node (or no editor cell holds it) instead of inferring it from a missing key.
     *
     * Derived from [EditorComponent.getDeepestSelectedCell]: the deepest (leaf) editor cell the caret
     * sits in. Note MPS returns `null` here while a multi-node range is selected (the deepest selection
     * is then not a single cell), in which case `present` is `false` and the region is reported under
     * `selection` instead.
     */
    protected fun caretInfoJsonObject(editorComponent: EditorComponent?): JsonObject {
        val cell: EditorCell? = editorComponent?.deepestSelectedCell
        val cellObj = cellJsonObject(cell)
        return jsonObject {
            addProperty("present", cell?.sNode != null)
            for ((key, value) in cellObj.entrySet()) {
                add(key, value)
            }
        }
    }

    /**
     * A single editor cell described as JSON — reused by [caretInfoJsonObject] and by every cell of a
     * selection region ([selectionInfoJsonObject]). Always a full skeleton (empty strings / `-1` /
     * `false` / an empty [feature][cellFeatureJsonObject]) when [cell] is `null`, so absence is explicit.
     *
     * Fields: `cellId`; `cellType` (the cell's runtime class, e.g. `EditorCell_Property` /
     * `EditorCell_Constant` / `EditorCell_Collection`); the cell's *semantic* node (`nodeReference` /
     * `nodeConcept` / `nodeName`, plus `nodeConceptQualifiedName` and the persistent `nodeConceptReference`);
     * the cell's *contextual* node (`contextualNodeReference` / `contextualNodeConcept` / `contextualNodeName`,
     * plus `contextualNodeConceptQualifiedName` / `contextualNodeConceptReference`) — the node whose
     * projection built the cell, which differs from the semantic node inside a RefCell; `cellText` and the
     * label offsets `caretPosition` / `selectionStart` / `selectionEnd` (label cells only, `-1` otherwise);
     * the cell flags `isBig` (a whole-node cell) / `editable` (an editable label) / `referenceCell` (a genuine
     * reference cell) / `errorState`; the interaction flags `selectable` ([EditorCell.isSelectable]) and
     * `selected` ([EditorCell.isSelected]) (a `readOnly` flag is deliberately omitted — the openapi cell
     * exposes no stable read-only accessor); the projected `feature`; and the editor `messages` attached to
     * the cell (see [cellMessagesJsonArray], `[]` when there are none or [cell] is `null`).
     */
    protected fun cellJsonObject(cell: EditorCell?): JsonObject {
        val node: SNode? = cell?.sNode
        val contextualNode: SNode? = cell?.contextualNode
        val labelCell = cell as? EditorCell_Label
        return jsonObject {
            addProperty("cellId", cell?.cellId ?: "")
            addProperty("cellType", cell?.javaClass?.simpleName ?: "")
            // The semantic node (used for selection and editor actions) and its concept identity.
            addProperty("nodeReference", node?.let { PersistenceFacade.getInstance().asString(it.reference) } ?: "")
            addProperty("nodeConcept", node?.concept?.name ?: "")
            addProperty("nodeName", node?.let { it.name ?: it.presentation } ?: "")
            addProperty("nodeConceptQualifiedName", node?.let { structureQualifiedName(it.concept) } ?: "")
            addProperty("nodeConceptReference", node?.let { PersistenceFacade.getInstance().asString(it.concept) } ?: "")
            // The contextual node: the node whose projection built the cell. Differs from the semantic
            // node inside a RefCell (semantic == the referencing node, contextual == the referenced
            // target). Empty strings when there is no contextual node; may equal the semantic node.
            addProperty("contextualNodeReference", contextualNode?.let { PersistenceFacade.getInstance().asString(it.reference) } ?: "")
            addProperty("contextualNodeConcept", contextualNode?.concept?.name ?: "")
            addProperty("contextualNodeName", contextualNode?.let { it.name ?: it.presentation } ?: "")
            addProperty("contextualNodeConceptQualifiedName", contextualNode?.let { structureQualifiedName(it.concept) } ?: "")
            addProperty("contextualNodeConceptReference", contextualNode?.let { PersistenceFacade.getInstance().asString(it.concept) } ?: "")
            // The projected text of the label cell, and the caret / character-selection offsets within
            // it. Empty / -1 for a non-label cell (e.g. a collection cell) or no cell.
            addProperty("cellText", labelCell?.text ?: "")
            addProperty("caretPosition", labelCell?.caretPosition ?: -1)
            addProperty("selectionStart", labelCell?.selectionStart ?: -1)
            addProperty("selectionEnd", labelCell?.selectionEnd ?: -1)
            addProperty("isBig", cell?.isBig ?: false)
            addProperty("editable", labelCell?.isEditable ?: false)
            addProperty("referenceCell", cell?.isReferenceCell ?: false)
            addProperty("errorState", cell?.isErrorState ?: false)
            // Interaction flags: whether the cell can be selected and whether it currently is. No stable
            // openapi read-only accessor exists, so a readOnly flag is intentionally not emitted.
            addProperty("selectable", cell?.isSelectable ?: false)
            addProperty("selected", cell?.isSelected ?: false)
            add("feature", cellFeatureJsonObject(cell))
            add("messages", cellMessagesJsonArray(cell))
        }
    }

    /**
     * The editor messages attached to [cell] ([EditorCell.getMessages]) as a compact JSON array — see
     * [messagesJsonArray] for the per-entry shape. Returns an empty array (`[]`) when the cell has no
     * messages or [cell] is `null`.
     */
    private fun cellMessagesJsonArray(cell: EditorCell?): JsonArray =
        messagesJsonArray(cell?.messages ?: emptyList())

    /**
     * Maps editor [messages] to a compact JSON array, each entry `{ status, message, priority }`: `status`
     * is the shared severity string ([problemSeverity] over [SimpleEditorMessage.getStatus]), `message` the
     * message text ([SimpleEditorMessage.getMessage]) and `priority` its integer priority
     * ([SimpleEditorMessage.getPriority]). Entries with a `null`/blank message are skipped, and at most
     * [MAX_CELL_MESSAGES] are emitted so a heavily-annotated cell cannot blow the inline-result budget.
     * Deliberately omits color / formatting / gutter data, which is not useful to an agent.
     */
    protected fun messagesJsonArray(messages: List<SimpleEditorMessage>): JsonArray {
        val array = JsonArray()
        for (message in messages) {
            val text = message.message
            if (text.isNullOrBlank()) continue
            array.add(jsonObject {
                addProperty("status", problemSeverity(message.status))
                addProperty("message", text)
                addProperty("priority", message.priority)
            })
            if (array.size() >= MAX_CELL_MESSAGES) break
        }
        return array
    }

    /**
     * The concept feature the cell projects. Uses [EditorCell.getSRole] first — set for reference and child
     * cells, and for property cells in generated editors — then falls back to the property behind an
     * [EditorCell_Property]'s model accessor for property cells whose `sRole` is `null`. The latter happens
     * in MPS's own hand-written bootstrap editors (e.g. the `ConceptDeclaration` editor), where the `name`
     * / `rootable` / … property cells carry no `sRole`; without this fallback the caret's projected property
     * would be reported as `""` there.
     */
    protected fun cellProjectedFeature(cell: EditorCell?): SConceptFeature? {
        if (cell == null) return null
        cell.sRole?.let { return it }
        return when (val accessor = (cell as? EditorCell_Property)?.modelAccessor) {
            // PropertyAccessor exposes the SProperty directly; SPropertyAccessor only exposes the property
            // name, so resolve it against the accessor's node concept (falling back to the cell's node).
            is PropertyAccessor -> accessor.property
            is SPropertyAccessor -> {
                val node = accessor.node ?: cell.sNode
                node?.concept?.properties?.firstOrNull { it.name == accessor.propertyName }
            }
            else -> null
        }
    }

    /**
     * The node whose concept declares [feature] (the cell's projected role), so property/reference values
     * are read from the correct node even in a nested RefCell projection — where the semantic node
     * ([EditorCell.getSNode], used for selection) differs from the contextual node
     * ([EditorCell.getContextualNode], the node the cell was built from). Node choice, using concept
     * assignability (inherited features included, via [SAbstractConcept.isSubConceptOf] against
     * [SConceptFeature.getOwner]):
     *  - For a genuine reference cell ([EditorCell.isReferenceCell]) the projected reference role is edited
     *    on the *semantic* (referencing) node, while the contextual node is the reference *target*; the
     *    semantic node is therefore preferred, so a self-referential link (target sharing the referencing
     *    concept) still reads the reference from the source rather than the target.
     *  - Otherwise (nested target-property/reference cells, navigation-only references, plain cells) the
     *    *contextual* node is preferred, then the semantic node — so a nested RefCell target cell reads its
     *    value from the referenced target.
     * Returns `null` when neither node supports the feature — the feature metadata is still emitted, but
     * with no value read from an incompatible node.
     */
    private fun featureNodeFor(cell: EditorCell?, feature: SConceptFeature?): SNode? {
        if (cell == null || feature == null) return null
        val owner = feature.owner
        val semantic = cell.sNode
        val contextual = cell.contextualNode
        val preferred = if (cell.isReferenceCell) semantic else contextual
        val fallback = if (cell.isReferenceCell) contextual else semantic
        if (preferred != null && preferred.concept.isSubConceptOf(owner)) return preferred
        if (fallback != null && fallback.concept.isSubConceptOf(owner)) return fallback
        return null
    }

    /**
     * Describes the concept feature the cell projects: `kind` (`property` / `reference` / `child`, or
     * `""` when the cell maps to no feature, e.g. a punctuation constant), the feature `name`, the
     * concept it is declared in (`declaredIn` simple name, plus `declaredInQualifiedName` and the
     * persistent `declaredInConceptReference`), its current `value`, the `valueNodeReference` of the node
     * the value was read from, and — for a reference role — the `targetReference` and the target concept
     * (`targetConcept` simple name, plus `targetConceptQualifiedName` and `targetConceptReference`). Every
     * field is always present.
     *
     * The value is read from [featureNodeFor] — the node whose concept actually declares the feature
     * (contextual node preferred, then semantic) — so a nested RefCell target-property/reference cell
     * reads its value from the referenced target rather than the referencing node; `valueNodeReference`
     * identifies that node.
     *
     * `navigational` distinguishes the *editing* role from a *navigation* role, addressing that
     * [EditorCell.getSRole] returns the `NAVIGATABLE_SREFERENCE` style (a Ctrl+click navigation target,
     * e.g. the constructor a `this(` keyword points at) *before* the edited role: it is `true` iff the
     * role is a reference the cell does not actually edit (a reference role on a cell whose
     * [EditorCell.isReferenceCell] is `false`). A genuine reference cell has `referenceCell == true` and
     * `navigational == false`.
     *
     * For a property cell `value` is the property's display value (enum properties resolved to the
     * literal name, matching `print_node`, via [propertyDisplayValue]); for a reference role `value` is
     * the target node's presentation, `targetReference` the target's persistent reference (or the raw
     * target reference when unresolved), and the target-concept fields the target's concept — for a child
     * cell (and when no feature applies) all target/value fields are `""`. The `kind` classification comes
     * from the shared [featureKind]; the reference resolution mirrors the node-hierarchy printout.
     */
    protected fun cellFeatureJsonObject(cell: EditorCell?): JsonObject {
        val feature: SConceptFeature? = cellProjectedFeature(cell)
        val kind = if (feature != null) featureKind(feature) else ""
        // The node whose concept actually declares the feature — contextual preferred, then semantic.
        val featureNode: SNode? = featureNodeFor(cell, feature)
        var value = ""
        // The persistent reference of the node the value was read from (empty when no compatible node).
        var valueNodeReference = ""
        // For a reference role, the persistent reference and concept of the target node — resolved when
        // possible, otherwise the raw (dangling) target reference so an agent can still diagnose it.
        // Empty for property / child cells and when no feature applies.
        var targetReference = ""
        var targetConcept = ""
        var targetConceptQualifiedName = ""
        var targetConceptReference = ""
        // A reference the cell only navigates to (not edits): getSRole() returns the NAVIGATABLE_SREFERENCE
        // style before the edited role, but only a genuine reference cell (isReferenceCell) edits it.
        val navigational = feature is SReferenceLink && cell != null && !cell.isReferenceCell
        if (feature != null && featureNode != null) {
            valueNodeReference = PersistenceFacade.getInstance().asString(featureNode.reference)
            when (feature) {
                is SProperty -> value = propertyDisplayValue(featureNode, feature) ?: ""
                is SReferenceLink -> {
                    val reference = featureNode.getReference(feature)
                    val target = reference?.targetNode
                    if (target != null) {
                        value = target.name ?: target.presentation
                        targetReference = PersistenceFacade.getInstance().asString(target.reference)
                        targetConcept = target.concept.name
                        targetConceptQualifiedName = structureQualifiedName(target.concept)
                        targetConceptReference = PersistenceFacade.getInstance().asString(target.concept)
                    }
                    else if (reference != null) {
                        targetReference = PersistenceFacade.getInstance().asString(reference.targetNodeReference)
                    }
                }
            }
        }
        return jsonObject {
            addProperty("kind", kind)
            addProperty("name", feature?.name ?: "")
            addProperty("declaredIn", feature?.owner?.name ?: "")
            addProperty("declaredInQualifiedName", feature?.let { structureQualifiedName(it.owner) } ?: "")
            addProperty("declaredInConceptReference", feature?.let { PersistenceFacade.getInstance().asString(it.owner) } ?: "")
            addProperty("value", value)
            addProperty("valueNodeReference", valueNodeReference)
            addProperty("targetReference", targetReference)
            addProperty("targetConcept", targetConcept)
            addProperty("targetConceptQualifiedName", targetConceptQualifiedName)
            addProperty("targetConceptReference", targetConceptReference)
            addProperty("navigational", navigational)
        }
    }

    /** Shared cap on the number of selection nodes/cells serialized (see [selectionInfoJsonObject]); exposed for tests. */
    protected val selectionItemLimit: Int get() = MAX_SELECTION_ITEMS

    /** Shared cap on the number of editor messages serialized per cell (see [messagesJsonArray]); exposed for tests. */
    protected val cellMessageLimit: Int get() = MAX_CELL_MESSAGES

    /**
     * The active selection region, as an always-present skeleton object. `present` is `true` only for a
     * genuine region — a non-trivial character range inside a single label cell, or one/more whole cells
     * (nodes) selected — and `false` for a bare caret. `kind` is `"text"` / `"nodes"` / `""`, and
     * `direction` the selection direction (`LEFT` / `RIGHT` / `NONE`; `""` when there is no region).
     * `nodes` lists the nodes in the region ([Selection.getSelectedNodes]) and `cells` the selected cells
     * ([Selection.getSelectedCells], via [cellJsonObject]); both are empty (`[]`) when there is no region
     * and are capped at [MAX_SELECTION_ITEMS] to keep the response inline-bounded. `nodeCount` /
     * `cellCount` are the true totals of the selection; `nodesReturned` / `cellsReturned` are the array
     * sizes and `nodesTruncated` / `cellsTruncated` flag whether the arrays were capped. `text` carries
     * the selected characters for a character range, `""` otherwise. Kept empty rather than omitted so an
     * agent can read the object and see explicitly that no region is selected.
     */
    protected fun selectionInfoJsonObject(editorComponent: EditorComponent?): JsonObject {
        val selection: Selection? = editorComponent?.selectionManager?.selection
        val selectedNodes: List<SNode> = selection?.selectedNodes ?: emptyList()
        val selectedCells: List<EditorCell> = selection?.selectedCells ?: emptyList()

        // A non-trivial character selection lives inside a single label cell (its start != end offset).
        val labelCell = selectedCells.singleOrNull() as? EditorCell_Label
        val hasTextRange = labelCell != null && labelCell.selectionStart != labelCell.selectionEnd
        val selectedText = if (hasTextRange) (labelCell.selectedText ?: "") else ""

        // A node/cell selection is any selection carrying nodes that is not a caret/text-in-label
        // selection (EditorCellLabelSelection covers the bare-caret and text-range cases). This makes a
        // single whole-node ("big" cell) selection a genuine region too, not just a multi-node range.
        val isNodeSelection = selection != null && selection !is EditorCellLabelSelection && selectedNodes.isNotEmpty()

        val present = hasTextRange || isNodeSelection
        val kind = when {
            hasTextRange -> "text"
            isNodeSelection -> "nodes"
            else -> ""
        }

        // Totals reflect the whole selection; the arrays are capped at MAX_SELECTION_ITEMS so a large
        // selection cannot blow the inline-result budget, and the capping is reported explicitly.
        val nodeCount = if (present) selectedNodes.size else 0
        val cellCount = if (present) selectedCells.size else 0
        val nodesArray = JsonArray()
        val cellsArray = JsonArray()
        if (present) {
            for (n in selectedNodes.take(MAX_SELECTION_ITEMS)) {
                nodesArray.add(jsonObject {
                    addProperty("name", n.name ?: n.presentation)
                    addProperty("concept", n.concept.name)
                    addProperty("reference", PersistenceFacade.getInstance().asString(n.reference))
                })
            }
            for (c in selectedCells.take(MAX_SELECTION_ITEMS)) {
                // A range selection only sets EditorCell.isSelected() while painting. Membership in
                // Selection.selectedCells is the stable selection signal exposed to MCP consumers.
                cellsArray.add(cellJsonObject(c).apply { addProperty("selected", true) })
            }
        }

        return jsonObject {
            addProperty("present", present)
            addProperty("kind", kind)
            addProperty("direction", if (present) (selection?.direction?.name ?: "") else "")
            addProperty("nodeCount", nodeCount)
            addProperty("nodesReturned", nodesArray.size())
            addProperty("nodesTruncated", nodeCount > nodesArray.size())
            add("nodes", nodesArray)
            addProperty("cellCount", cellCount)
            addProperty("cellsReturned", cellsArray.size())
            addProperty("cellsTruncated", cellCount > cellsArray.size())
            add("cells", cellsArray)
            addProperty("text", selectedText)
        }
    }

    /**
     * Attaches the editor-specific state to the node-info [info] object and returns it:
     * `selectedNodeReference` (the selected cell's node — present for an ordinary caret too, NOT only a
     * whole-node selection; kept for backward compatibility), `bigCellSelected` (whether the current
     * top-level selection is a genuine whole-node/"big" cell), and the always-present `caret` / `selection`
     * skeletons ([caretInfoJsonObject] / [selectionInfoJsonObject]). Mutates and returns [info]; otherwise
     * side-effect free. Shared by `mps_mcp_get_current_editor_root_node` and the headless test probe. Must
     * be called under a model read action on the editor's repository.
     */
    protected fun addEditorState(info: JsonObject, editorComponent: EditorComponent?): JsonObject {
        // NOTE: EditorComponent.getSelectedNode() returns the selected cell's node without an isBig() check,
        // so it is present for an ordinary caret too (e.g. a caret inside a property cell). Use
        // bigCellSelected to tell whether the whole node is actually selected.
        val selectedNode = editorComponent?.selectedNode
        if (selectedNode != null) {
            info.addProperty("selectedNodeReference", PersistenceFacade.getInstance().asString(selectedNode.reference))
        }
        // Whether the current (top-level) selection is a genuine whole-node ("big") cell selection, rather
        // than a caret / text selection inside a leaf cell.
        val topSelectionCell = (editorComponent?.selectionManager?.selection as? SingularSelection)?.editorCell
        info.addProperty("bigCellSelected", topSelectionCell?.isBig == true)
        info.add("caret", caretInfoJsonObject(editorComponent))
        info.add("selection", selectionInfoJsonObject(editorComponent))
        return info
    }
}
