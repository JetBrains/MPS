package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.references.*

import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.reflect.TypeToken
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.agents.mcp.tools.logging.McpCallOutcomes
import jetbrains.mps.ide.MPSCoreComponents
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.progress.EmptyProgressMonitor
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.action.SNodeFactoryOperations
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SEnumeration
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.util.*

enum class MPSStructureQueryOperation {
    GET_ENUMERATION_LITERALS,
    FIND_INSTANCES,
    IS_SUBCONCEPT_OF,
    GET_SUB_CONCEPTS,
    GET_ASSIGNABLE_CONCEPTS,
    GET_ALL_SUPERCONCEPTS,
    LIST_CONCEPT_ASPECTS,
    GET_ASSIGNABLE_REFERENCES,
    IS_SMART_REFERENCE
}

enum class MPSStructureAlterOperation {
    CREATE_CONCEPTS,
    CREATE_ENUM,
    UPDATE_CONCEPT_PROPERTY,
    UPDATE_CONCEPT_CHILD,
    UPDATE_CONCEPT_REFERENCE,
    RENAME_CONCEPT_PROPERTY,
    RENAME_CONCEPT_CHILD,
    RENAME_CONCEPT_REFERENCE
}

/**
 * `GET_ASSIGNABLE_REFERENCES` is the one structure operation whose blob is deserialized whole
 * into a data class ([GetAssignableReferencesRequest]) rather than read key by key, so Gson —
 * not the dispatcher — is what used to drop an unrecognised key. The list mirrors that class's
 * constructor; `McpToolInputSchemasTest.assignableReferencesKeysMirrorTheRequestDataClass` fails
 * if the two drift apart.
 */
internal val GET_ASSIGNABLE_REFERENCES_KEYS = ParameterKeys.of(
    required("contextNode", "the reference of the node holding the reference, or of its closest existing ancestor"),
    required("referenceRole", "the reference link's role name"),
    "owningConcept", "targetConcept", "containmentLink", "position",
    "mode", "limit", "offset",
    "scopeMode", "includeModules", "excludeModules",
    "kindFilter", "expectedDeclaringType", "receiverType", "argumentTypes", "argumentCount",
    "sortBy", "preferSameModel", "preferSameModule", "preferProjectCode",
    "includeReason", "includeTypeDistance", "includeInaccessible",
)

private val REQUIRED_CONCEPT_REF = required(PARAM_CONCEPT_REF, "the concept's reference or fully qualified name")

/**
 * The concept selector of the query operations that take exactly one concept. It also accepts
 * `conceptRefs`, the spelling `mps_mcp_get_concept_details` and FIND_INSTANCES use (study D55); an
 * array there is reduced to its first concept with a warning. The alter operations keep the strict
 * key: applying a write to the first of several concepts would be a partial mutation.
 */
private val QUERY_CONCEPT_REF = PARAM_CONCEPT_REF.withPlural(PARAM_CONCEPT_REFS)

private val REQUIRED_QUERY_CONCEPT_REF = required(QUERY_CONCEPT_REF, "the concept's reference or fully qualified name")

private val REQUIRED_STRUCTURE_MODEL_REF =
    required(PARAM_STRUCTURE_MODEL_REF, "the language's structure model reference")

private val CONCEPT_ONLY_KEYS = ParameterKeys.of(REQUIRED_QUERY_CONCEPT_REF)

private val CONCEPT_AND_LANGUAGES_KEYS = ParameterKeys.of(REQUIRED_QUERY_CONCEPT_REF, "languageRefs")

private val RENAME_ROLE_KEYS = ParameterKeys.of(
    REQUIRED_CONCEPT_REF,
    required("oldRole", "the role's current name"),
    required("newRole", "the role's new name"),
)

private val UPDATE_CONCEPT_LINK_KEYS = ParameterKeys.of(
    REQUIRED_CONCEPT_REF, required("role", "the link's role name"), "targetConcept", "multiple", "optional",
)

private fun queryStructureParameterKeys(operation: MPSStructureQueryOperation): ParameterKeys = when (operation) {
    // The property form, which enumerationRef replaces.
    MPSStructureQueryOperation.GET_ENUMERATION_LITERALS -> ParameterKeys.of(
        PARAM_ENUMERATION_REF,
        required(
            PARAM_NODE_REFERENCE,
            "the reference of a node whose concept has an enumeration-typed property (or pass enumerationRef alone instead)",
            unlessWith = PARAM_ENUMERATION_REF,
        ),
        required(
            "propertyName", "the name of an enumeration-typed property of nodeReference's concept",
            unlessWith = PARAM_ENUMERATION_REF,
        ),
    )
    MPSStructureQueryOperation.FIND_INSTANCES -> FIND_INSTANCES_KEYS
    MPSStructureQueryOperation.IS_SUBCONCEPT_OF -> ParameterKeys.of(
        REQUIRED_QUERY_CONCEPT_REF,
        required(PARAM_SUPER_CONCEPT_REF, "the candidate super-concept's or interface's reference or fully qualified name"),
    )
    MPSStructureQueryOperation.GET_SUB_CONCEPTS,
    MPSStructureQueryOperation.GET_ASSIGNABLE_CONCEPTS -> CONCEPT_AND_LANGUAGES_KEYS
    MPSStructureQueryOperation.GET_ASSIGNABLE_REFERENCES -> GET_ASSIGNABLE_REFERENCES_KEYS
    MPSStructureQueryOperation.GET_ALL_SUPERCONCEPTS -> CONCEPT_ONLY_KEYS
    MPSStructureQueryOperation.LIST_CONCEPT_ASPECTS -> ParameterKeys.of(REQUIRED_QUERY_CONCEPT_REF, "includeInherited")
    MPSStructureQueryOperation.IS_SMART_REFERENCE -> CONCEPT_ONLY_KEYS
}

private fun queryStructureActivity(operation: MPSStructureQueryOperation) = "Performing MPS structure query: $operation"

/**
 * `dryRun` is accepted only by the two operations that honour it. Every other operation read it
 * off the blob and mutated the model anyway — the same silent no-op
 * `mps_mcp_parse_java_and_insert` already rejects on its own blob.
 */
private fun alterStructureParameterKeys(operation: MPSStructureAlterOperation): ParameterKeys = when (operation) {
    MPSStructureAlterOperation.CREATE_CONCEPTS -> ParameterKeys.of(
        REQUIRED_STRUCTURE_MODEL_REF, "make", "conceptsJson", "interfaceConceptsJson", "conceptNames", "dryRun",
        requiredOneOf(
            "conceptsJson", "interfaceConceptsJson", "conceptNames",
            expected = "the concept blueprints (conceptsJson, interfaceConceptsJson — both may be sent) " +
                "or a list of concept names to create bare (conceptNames)",
        ),
    )
    MPSStructureAlterOperation.CREATE_ENUM -> ParameterKeys.of(
        REQUIRED_STRUCTURE_MODEL_REF,
        required("enumName", "the enumeration's name"),
        required(
            "valuesJson",
            "the literal array [{\"enumName\": …, \"enumPresentation\": …}, …], inline or as a temporary file path",
        ),
        "defaultEnumName", "dryRun",
    )
    MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY -> ParameterKeys.of(
        REQUIRED_CONCEPT_REF, required("propertyName", "the property's name"), "dataType",
    )
    MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
    MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE -> UPDATE_CONCEPT_LINK_KEYS
    MPSStructureAlterOperation.RENAME_CONCEPT_PROPERTY -> ParameterKeys.of(
        REQUIRED_CONCEPT_REF,
        required("oldName", "the property's current name"),
        required("newName", "the property's new name"),
    )
    MPSStructureAlterOperation.RENAME_CONCEPT_CHILD,
    MPSStructureAlterOperation.RENAME_CONCEPT_REFERENCE -> RENAME_ROLE_KEYS
}

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSLanguageStructureMcpToolset : AbstractNodeOps() {

    @McpTool
    @McpDescription(
        """
        Queries MPS language structure (read-only): check inheritance, list aspects, resolve references, query enumeration literals, check smart-reference status. For nodes that are instances of a concept use `mps_mcp_query_nodes` FIND_INSTANCES. Returns a JSON object with 'ok':true and 'data':{...} on success, or 'ok':false and 'error':"..." on failure. Failure responses may also include optional 'code', 'details', and 'warnings' fields. Parameters are passed as a JSON object (real JSON or its string form). For the full operation list, parameter formats, and JSON blueprint schemas, see the `mps-aspect-structure-concepts` skill.
    """
    )
    suspend fun mps_mcp_query_structure(
        @McpDescription("Required. The operation to perform (GET_ENUMERATION_LITERALS, IS_SUBCONCEPT_OF, GET_SUB_CONCEPTS, GET_ASSIGNABLE_CONCEPTS, GET_ALL_SUPERCONCEPTS, LIST_CONCEPT_ASPECTS, GET_ASSIGNABLE_REFERENCES, IS_SMART_REFERENCE)") operation: String = "",
        @McpDescription("Required. Parameters for the operation, as a JSON object — sent as real JSON or as its string form.") parameters: JsonOrText = JsonOrText.EMPTY
    ): String {
        // D43: both are Kotlin-optional so an omitted one is answered here, naming the key; see
        // mps_mcp_query_nodes for the order (a supplied but unknown operation wins over a blank blob).
        if (operation.isBlank()) {
            rejectMissingParameters(
                "mps_mcp_query_structure",
                requiredOperation<MPSStructureQueryOperation>(operation),
                requiredParametersBlob(parameters.text),
            )?.let { return it }
        }
        // Recorded because it returns before withMpsProject (D26).
        val op = resolveOperationOrNull<MPSStructureQueryOperation>(operation)
            ?: return McpCallOutcomes.record(unknownOperation<MPSStructureQueryOperation>(operation))
        rejectMissingParameters(
            "mps_mcp_query_structure",
            requiredParametersBlob(parameters.text, op.name, queryStructureParameterKeys(op)),
        )?.let { return it }
        return mps_mcp_query_structure(op, parameters.text)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_query_structure]. Deliberately *not* annotated
     * with `@McpTool`: the String-typed overload above is the registered tool, so an unrecognised
     * `operation` is reported as a classified INVALID_REQUEST error instead of crashing the MCP
     * framework's pre-call enum decode (see [resolveOperationOrNull]). Retained as a direct enum
     * entry point for in-process callers and tests.
     */
    suspend fun mps_mcp_query_structure(operation: MPSStructureQueryOperation, parameters: String): String = withMpsProject(queryStructureActivity(operation)) { mpsProject ->
        val gson = Gson()
        val params = try {
            gson.fromJson(parameters, JsonObject::class.java)
        } catch (e: Exception) {
            return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
        }
        params.rejectUnknownParameterKeys(operation.name, queryStructureParameterKeys(operation))
        params.rejectMissingParameterKeys(operation.name, queryStructureParameterKeys(operation))
        val pluralWarnings = params.collapsePluralParameterKeys(operation.name, queryStructureParameterKeys(operation))

        // Caught here rather than by withMpsProject, so a typed read that throws after the collapse
        // still reports which of the caller's concepts it was about.
        val response = try {
            when (operation) {
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS -> {
                    val enumerationRef = params.paramString(PARAM_ENUMERATION_REF)
                    val nodeReference = params.paramString(PARAM_NODE_REFERENCE)
                    val propertyName = params.paramString("propertyName")
                    if (enumerationRef != null) {
                        if (nodeReference != null || propertyName != null) {
                            return@withMpsProject errJson(
                                "Pass either 'enumerationRef' or both 'nodeReference' and 'propertyName', not both forms",
                                McpErrorCode.INVALID_REQUEST,
                            )
                        }
                        mps_mcp_get_enumeration_literals_by_declaration(enumerationRef)
                    } else {
                        mps_mcp_get_enumeration_literals(checkNotNull(nodeReference), checkNotNull(propertyName))
                    }
                }

                // Not advertised in the tool description anymore — FIND_INSTANCES moved to
                // mps_mcp_query_nodes. Kept dispatching so pre-move skill copies installed in
                // other projects continue to work.
                MPSStructureQueryOperation.FIND_INSTANCES -> opFindInstances(mpsProject, params)

                MPSStructureQueryOperation.IS_SUBCONCEPT_OF -> {
                    val conceptRef = params.requiredParamString(QUERY_CONCEPT_REF)
                    val superConceptRef = params.requiredParamString(PARAM_SUPER_CONCEPT_REF)
                    executeShortReadOnEdt(mpsProject) {
                        val concept = resolveConceptPreferringProject(mpsProject, conceptRef)
                            ?: return@executeShortReadOnEdt errJson("Concept '$conceptRef' not found", McpErrorCode.NOT_FOUND)
                        val superConcept = resolveConceptPreferringProject(mpsProject, superConceptRef)
                            ?: return@executeShortReadOnEdt errJson("Super concept '$superConceptRef' not found", McpErrorCode.NOT_FOUND)
                        okJson(concept.isSubConceptOf(superConcept).toString())
                    }
                }

                MPSStructureQueryOperation.GET_SUB_CONCEPTS,
                MPSStructureQueryOperation.GET_ASSIGNABLE_CONCEPTS -> {
                    val conceptRef = params.requiredParamString(QUERY_CONCEPT_REF)
                    val languageRefsElement = params.get("languageRefs")
                    executeShortReadOnEdt(mpsProject) {
                        val targetConcept = resolveConceptPreferringProject(mpsProject, conceptRef)
                            ?: return@executeShortReadOnEdt errJson("Concept '$conceptRef' not found", McpErrorCode.NOT_FOUND)
                        val allConcepts = mutableSetOf<SAbstractConcept>()
                        val languageRegistry = LanguageRegistry.getInstance(mpsProject.repository)

                        val languages = if (languageRefsElement != null && languageRefsElement.isJsonArray) {
                            val refs = gson.fromJson<List<String>>(languageRefsElement, object : TypeToken<List<String>>() {}.type)
                            if (refs.isEmpty()) {
                                languageRegistry.allLanguages
                            } else {
                                refs.mapNotNull { resolveLanguagePreferringProject(mpsProject, it) }
                            }
                        } else {
                            languageRegistry.allLanguages
                        }

                        val onlyAssignable = operation == MPSStructureQueryOperation.GET_ASSIGNABLE_CONCEPTS
                        for (lang in languages) {
                            val runtime = languageRegistry.getLanguage(lang) ?: continue
                            for (concept in runtime.concepts) {
                                if (concept.isSubConceptOf(targetConcept)) {
                                    if (onlyAssignable) {
                                        if (!concept.isAbstract) {
                                            allConcepts.add(concept)
                                        }
                                    } else {
                                        allConcepts.add(concept)
                                    }
                                }
                            }
                        }
                        val cache = ProjectMembershipCache(mpsProject)
                        val jsonResults = allConcepts.map { conceptInfoJson(it, mpsProject.repository, mpsProject, cache) }
                        finalizeResult("[" + jsonResults.joinToString(",") + "]")
                    }
                }

                MPSStructureQueryOperation.GET_ASSIGNABLE_REFERENCES -> {
                    val request = try {
                        Gson().fromJson(parameters, GetAssignableReferencesRequest::class.java)
                    } catch (e: Exception) {
                        return@withMpsProject invalidJson("Invalid parameters for GET_ASSIGNABLE_REFERENCES: ${e.message}")
                    }

                    val service = AssignableReferenceService(mpsProject)
                    val response = service.getAssignableReferences(request)

                    if (response.ok) {
                        Gson().toJson(response)
                    } else {
                        errJson(response.error)
                    }
                }

                MPSStructureQueryOperation.GET_ALL_SUPERCONCEPTS -> {
                    val conceptRef = params.requiredParamString(QUERY_CONCEPT_REF)
                    executeShortReadOnEdt(mpsProject) {
                        val concept = resolveConceptPreferringProject(mpsProject, conceptRef)
                            ?: return@executeShortReadOnEdt errJson("Concept '$conceptRef' not found", McpErrorCode.NOT_FOUND)
                        val allSuperConcepts = mutableSetOf<SAbstractConcept>()
                        populateSuperConceptsAndInterfaces(concept, allSuperConcepts)
                        val cache = ProjectMembershipCache(mpsProject)
                        val jsonResults = allSuperConcepts.map { conceptInfoJson(it, mpsProject.repository, mpsProject, cache) }
                        finalizeResult("[" + jsonResults.joinToString(",") + "]")
                    }
                }

                MPSStructureQueryOperation.LIST_CONCEPT_ASPECTS -> {
                    val conceptRef = params.requiredParamString(QUERY_CONCEPT_REF)
                    val includeInherited = params.paramBoolean("includeInherited", default = false)
                    mps_mcp_list_concept_aspects(conceptRef, includeInherited)
                }

                MPSStructureQueryOperation.IS_SMART_REFERENCE -> {
                    val conceptRef = params.requiredParamString(QUERY_CONCEPT_REF)
                    executeShortReadOnEdt(mpsProject) {
                        val concept = resolveConceptPreferringProject(mpsProject, conceptRef)
                            ?: return@executeShortReadOnEdt errJson("Concept not found: $conceptRef", McpErrorCode.NOT_FOUND)
                        val smartRefLink = getSmartReferenceLink(concept, mpsProject.repository)
                        val result = JsonObject()
                        result.addProperty("isSmartReference", smartRefLink != null)
                        if (smartRefLink != null) {
                            result.addProperty("characteristicReferenceName", smartRefLink.name)
                        }
                        okJson(gson.toJson(result))
                    }
                }
            }
        } catch (e: Throwable) {
            toolFailure(queryStructureActivity(operation), e)
        }
        withWarnings(response, pluralWarnings)
    }

    @McpTool
    @McpDescription(
        """
        Alters MPS language structure: create concepts/enums, manage and rename properties/children/references. Returns a JSON object with 'ok':true and 'data':{...} on success, or 'ok':false and 'error':"..." on failure. Failure responses may also include optional 'code', 'details', and 'warnings' fields. Parameters are passed as a JSON object (real JSON or its string form). For the full operation list, parameter formats, and JSON blueprint schemas, see the `mps-aspect-structure-concepts` skill.

        For `CREATE_CONCEPTS` with `make:true`, the response includes a `makeStatus` field (one of "success", "runtime_stale", "failed", or "skipped"). `makeStatus` is verified against the live runtime: "success" means the build succeeded AND every created concept's runtime descriptor was read back non-hollow, so dependent tools (`get_concept_details`, `scaffold_editor`) can be trusted immediately. The tool already forces a clean rebuild and, if the first (model-scoped) build leaves any descriptor hollow — which happens for a brand-new, never-before-deployed language — it automatically performs one module-scoped clean rebuild that materializes the runtime (`recoveryStage:"module-rebuild"` is then set). "runtime_stale" means descriptors are still hollow even after that; the still-hollow concept names are listed in `hollowConcepts` and a `descriptorRecoveryAction` is provided — recover by running `mps_mcp_alter_nodes` with `MAKE`, `rebuild=true`, targeting the language module (calling `mps_mcp_reload_all` alone is insufficient; restart MPS if it persists). For the canonical structure-to-aspect editing and compilation prerequisite chain, see the Critical Directives in the `mps-mcp-workflow` skill.
    """
    )
    suspend fun mps_mcp_alter_structure(
        @McpDescription("Required. The operation to perform (CREATE_CONCEPTS, CREATE_ENUM, UPDATE_CONCEPT_PROPERTY, RENAME_CONCEPT_PROPERTY, UPDATE_CONCEPT_CHILD, RENAME_CONCEPT_CHILD, UPDATE_CONCEPT_REFERENCE, RENAME_CONCEPT_REFERENCE)") operation: String = "",
        @McpDescription("Required. Parameters for the operation, as a JSON object — sent as real JSON or as its string form.") parameters: JsonOrText = JsonOrText.EMPTY
    ): String {
        // D43: as in mps_mcp_query_structure.
        if (operation.isBlank()) {
            rejectMissingParameters(
                "mps_mcp_alter_structure",
                requiredOperation<MPSStructureAlterOperation>(operation),
                requiredParametersBlob(parameters.text),
            )?.let { return it }
        }
        // Recorded because it returns before withMpsProject (D26).
        val op = resolveOperationOrNull<MPSStructureAlterOperation>(operation)
            ?: return McpCallOutcomes.record(unknownOperation<MPSStructureAlterOperation>(operation))
        rejectMissingParameters(
            "mps_mcp_alter_structure",
            requiredParametersBlob(parameters.text, op.name, alterStructureParameterKeys(op)),
        )?.let { return it }
        return mps_mcp_alter_structure(op, parameters.text)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_alter_structure]; see the sibling
     * [mps_mcp_query_structure] overload for why the registered `@McpTool` takes a String.
     */
    suspend fun mps_mcp_alter_structure(operation: MPSStructureAlterOperation, parameters: String): String = withMpsProject("Performing MPS structure alteration: $operation") { mpsProject ->
        val gson = Gson()
        val params = try {
            gson.fromJson(parameters, JsonObject::class.java)
        } catch (e: Exception) {
            return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
        }
        params.rejectUnknownParameterKeys(operation.name, alterStructureParameterKeys(operation))
        params.rejectMissingParameterKeys(operation.name, alterStructureParameterKeys(operation))
        val dryRun = params.paramBoolean("dryRun", default = false)

        when (operation) {
            MPSStructureAlterOperation.CREATE_CONCEPTS -> {
                val structureModelRef = params.requiredParamString(PARAM_STRUCTURE_MODEL_REF)
                val make = params.paramBoolean("make", default = false)
                val conceptsJsonPath = readStringOrInlineJsonParam(params, "conceptsJson")
                val interfaceConceptsJsonPath = readStringOrInlineJsonParam(params, "interfaceConceptsJson")
                if (conceptsJsonPath != null || interfaceConceptsJsonPath != null) {
                    createConceptsFull(conceptsJsonPath, interfaceConceptsJsonPath, structureModelRef, make, dryRun)
                } else {
                    val conceptNamesElement = checkNotNull(params.get("conceptNames"))
                    val conceptNames: Collection<String> = gson.fromJson(conceptNamesElement, object : TypeToken<Collection<String>>() {}.type)
                    if (dryRun) return@withMpsProject okJson("{}")
                    createConcepts(conceptNames, structureModelRef)
                }
            }

            MPSStructureAlterOperation.CREATE_ENUM -> {
                val structureModelRef = params.requiredParamString(PARAM_STRUCTURE_MODEL_REF)
                val enumName = params.requiredParamString("enumName")
                val valuesJson = checkNotNull(readStringOrInlineJsonParam(params, "valuesJson"))
                val defaultEnumName = params.paramString("defaultEnumName")
                mps_mcp_create_enum(structureModelRef, enumName, valuesJson, defaultEnumName, dryRun)
            }

            MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY -> {
                val conceptRef = params.requiredParamString(PARAM_CONCEPT_REF)
                val propertyName = params.requiredParamString("propertyName")
                val dataType = params.paramString("dataType")
                mps_mcp_update_concept_property(conceptRef, propertyName, dataType)
            }

            MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD -> {
                val conceptRef = params.requiredParamString(PARAM_CONCEPT_REF)
                val role = params.requiredParamString("role")
                val targetConcept = params.paramString("targetConcept")
                val multiple = params.paramBoolean("multiple", default = false)
                val optional = params.paramBoolean("optional", default = true)
                mps_mcp_update_concept_link(conceptRef, role, targetConcept, true, multiple, optional)
            }

            MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE -> {
                val conceptRef = params.requiredParamString(PARAM_CONCEPT_REF)
                val role = params.requiredParamString("role")
                // `multiple: false` is truthful, so it is accepted silently; `multiple: true` used to be
                // dropped and quietly produce a 0..1 link, which cost a study worker ~40 turns to notice.
                if (params.paramBoolean("multiple", default = false)) {
                    return@withMpsProject errJson(REFERENCES_ARE_SINGLE_VALUED, McpErrorCode.INVALID_REQUEST)
                }
                val targetConcept = params.paramString("targetConcept")
                val optional = params.paramBoolean("optional", default = true)
                mps_mcp_update_concept_link(conceptRef, role, targetConcept, false, false, optional)
            }

            MPSStructureAlterOperation.RENAME_CONCEPT_PROPERTY -> {
                val conceptRef = params.requiredParamString(PARAM_CONCEPT_REF)
                val oldName = params.requiredParamString("oldName")
                val newName = params.requiredParamString("newName")
                mps_mcp_rename_concept_property(conceptRef, oldName, newName)
            }

            MPSStructureAlterOperation.RENAME_CONCEPT_CHILD -> {
                val conceptRef = params.requiredParamString(PARAM_CONCEPT_REF)
                val oldRole = params.requiredParamString("oldRole")
                val newRole = params.requiredParamString("newRole")
                mps_mcp_rename_concept_link(conceptRef, oldRole, newRole, true)
            }

            MPSStructureAlterOperation.RENAME_CONCEPT_REFERENCE -> {
                val conceptRef = params.requiredParamString(PARAM_CONCEPT_REF)
                val oldRole = params.requiredParamString("oldRole")
                val newRole = params.requiredParamString("newRole")
                mps_mcp_rename_concept_link(conceptRef, oldRole, newRole, false)
            }
        }
    }

    private suspend fun createConceptsFull(
        conceptsJsonPath: String?,
        interfaceConceptsJsonPath: String?,
        structureModelRef: String,
        make: Boolean = false,
        dryRun: Boolean = false
    ): String = withMpsProject("Creating concepts from JSON") { mpsProject ->
        val concepts: List<StructureConceptSpec> = try {
            if (conceptsJsonPath != null) {
                val json = checkNotNull(readJsonOrFile(conceptsJsonPath, dryRun))
                parseStructureConceptSpecs(json, "conceptsJson")
            } else {
                emptyList()
            }
        } catch (e: ToolInputJsonException) {
            return@withMpsProject invalidJson(e.message)
        } catch (e: ToolInputSchemaException) {
            return@withMpsProject errJson(e.message, McpErrorCode.INVALID_REQUEST)
        }
        val interfaceConcepts: List<StructureInterfaceConceptSpec> = try {
            if (interfaceConceptsJsonPath != null) {
                val json = checkNotNull(readJsonOrFile(interfaceConceptsJsonPath, dryRun))
                parseStructureInterfaceConceptSpecs(json, "interfaceConceptsJson")
            } else {
                emptyList()
            }
        } catch (e: ToolInputJsonException) {
            return@withMpsProject invalidJson(e.message)
        } catch (e: ToolInputSchemaException) {
            return@withMpsProject errJson(e.message, McpErrorCode.INVALID_REQUEST)
        }
        if (dryRun) return@withMpsProject okJson("{}")
        // `failure` always holds a pre-formatted errJson string (or null on success). Plain
        // messages are wrapped at the assignment site via `errJson(...)`. The earlier shape used
        // two parallel vars and a "errorResponse takes precedence" comment, which only worked as
        // long as future contributors remembered the rule — a single var removes that hazard.
        var failure: String? = null
        val createdReferences = mutableMapOf<String, String>() // Track node references to return

        executeShortCommandOnEdt(mpsProject) {
            // Require an editable model up-front via the shared helper, which returns structured
            // NOT_FOUND / NOT_EDITABLE error codes. A silent fall-through here would let creation
            // appear to succeed in memory while save() is skipped — exactly the hollow-descriptor
            // failure mode the rest of this flow is meant to prevent.
            val model = when (val r = resolveEditableModel(mpsProject, structureModelRef)) {
                is EditableModelResolution.Ok -> r.model
                is EditableModelResolution.Err -> {
                    failure = r.errJson
                    return@executeShortCommandOnEdt
                }
            }

            // Validation phase: check for conflicts and invalid names.
            val validationErrors = mutableListOf<String>()
            val existingRootNames = collectExistingRootNames(model)

            // Shared "already seen in THIS request" set across the concept and interface loops:
            // a request that asks for both `concept Foo` and `interface Foo` is a duplicate even
            // though each loop alone would consider its own entry unique.
            val allNamesToCreate = mutableSetOf<String>()

            for (concept in concepts) {
                validationErrors += validateRootNodeName(concept.name, "Concept", existingRootNames, allNamesToCreate)
            }

            for (interfaceConcept in interfaceConcepts) {
                validationErrors += validateRootNodeName(interfaceConcept.name, "Interface", existingRootNames, allNamesToCreate)
            }

            if (validationErrors.isNotEmpty()) {
                failure = errJson("Validation errors:\n" + validationErrors.joinToString("\n"))
                return@executeShortCommandOnEdt
            }

            // Hoisted outside the try so the outer catch can roll back whatever was created
            // before the throw. The two passes below mutate this list as they create nodes.
            val createdNodes = mutableListOf<SNode>()
            try {
                // Create a registry of concepts/interfaces being created in this operation
                val conceptRegistry = mutableMapOf<String, SNode>()

                // First pass: create all concept nodes
                for (concept in concepts) {
                    val name = concept.name
                    val isAbstract = concept.isAbstract

                    val newConcept = SNodeFactoryOperations.createNewRootNode(model, CONCEPT_ConceptDeclaration, null)
                    newConcept.setProperty(PROP_Name, name)
                    conceptRegistry[name] = newConcept
                    createdNodes.add(newConcept)
                    createdReferences[name] = PersistenceFacade.getInstance().asString(newConcept.reference)

                    val conceptAlias = concept.conceptAlias
                    if (conceptAlias != null) {
                        newConcept.setProperty(PROP_ConceptAlias, conceptAlias)
                    }

                    val shortDescription = concept.shortDescription
                    if (shortDescription != null) {
                        newConcept.setProperty(PROP_ConceptShortDescription, shortDescription)
                    }

                    if (isAbstract) {
                        newConcept.setProperty(PROP_Abstract, "true")
                    }

                    val rootable = concept.rootable
                    if (rootable) {
                        newConcept.setProperty(PROP_Rootable, "true")
                    }

                    val virtualPackage = concept.virtualPackage
                    if (virtualPackage != null) {
                        newConcept.setProperty(PROP_VirtualPackage, virtualPackage)
                    }

                    // Add DocumentedNodeAnnotation if documentation is provided
                    val documentation = concept.documentation
                    if (documentation != null) {
                        addDocumentationAnnotation(newConcept, documentation)
                    }
                }

                for (interfaceConcept in interfaceConcepts) {
                    val name = interfaceConcept.name
                    val newInterface = SNodeFactoryOperations.createNewRootNode(model, CONCEPT_InterfaceConceptDeclaration, null)
                    newInterface.setProperty(PROP_Name, name)
                    conceptRegistry[name] = newInterface
                    createdNodes.add(newInterface)
                    createdReferences[name] = PersistenceFacade.getInstance().asString(newInterface.reference)

                    val shortDescription = interfaceConcept.shortDescription
                    if (shortDescription != null) {
                        newInterface.setProperty(PROP_ConceptShortDescription, shortDescription)
                    }

                    val virtualPackage = interfaceConcept.virtualPackage
                    if (virtualPackage != null) {
                        newInterface.setProperty(PROP_VirtualPackage, virtualPackage)
                    }

                    // Add DocumentedNodeAnnotation if documentation is provided
                    val documentation = interfaceConcept.documentation
                    if (documentation != null) {
                        addDocumentationAnnotation(newInterface, documentation)
                    }
                }

                // Second pass: add all details including properties, children, references, extends, implements
                val errors = mutableListOf<String>()

                fun processAbstractConcept(newConcept: SNode, concept: StructureMemberOwnerSpec) {
                    val conceptName = concept.name

                    // Properties
                    for (property in concept.properties) {
                        val propNode = SNodeFactoryOperations.addNewChild(newConcept, LINK_PropertyDeclaration, CONCEPT_PropertyDeclaration)
                        propNode.setProperty(PROP_Name, property.name)
                        val dataTypeNode = resolveDataType(property.type, mpsProject, model)
                        if (dataTypeNode != null) {
                            propNode.setReferenceTarget(LINK_PropertyDeclaration_DataType, dataTypeNode)
                        }
                    }

                    // Children and References
                    for (child in concept.children) {
                        val err = addLink(newConcept, child, true, mpsProject, model, conceptRegistry)
                        if (err != null) {
                            errors.add("In concept '$conceptName': $err")
                        }
                    }

                    for (reference in concept.references) {
                        val err = addLink(newConcept, reference, false, mpsProject, model, conceptRegistry)
                        if (err != null) {
                            errors.add("In concept '$conceptName': $err")
                        }
                    }
                }

                for (concept in concepts) {
                    val name = concept.name
                    val newConcept = conceptRegistry[name] ?: continue

                    processAbstractConcept(newConcept, concept)

                    // Extends
                    val extendsRef = concept.extendsRef
                    if (extendsRef != null) {
                        val extendsConcept = resolveConceptOrNode(extendsRef, mpsProject, model, conceptRegistry)
                        if (extendsConcept != null) {
                            newConcept.setReferenceTarget(LINK_Extends, extendsConcept)
                        } else {
                            errors.add("In concept '$name': Failed to resolve extends '$extendsRef'")
                        }
                    }

                    // Implements
                    for (intfcRef in concept.implementsRefs) {
                        val intfcNode = resolveConceptOrNode(intfcRef, mpsProject, model, conceptRegistry)
                        if (intfcNode != null) {
                            // Find the correct 'implements' link on ConceptDeclaration
                            val implementsLink = newConcept.concept.containmentLinks.find { it.name == "implements" }
                            if (implementsLink != null) {
                                val intfcRefNode = SNodeFactoryOperations.addNewChild(newConcept, implementsLink, CONCEPT_InterfaceConceptReference)
                                intfcRefNode.setReferenceTarget(LINK_InterfaceConceptReference_Intfc, intfcNode)
                            } else {
                                errors.add("In concept '$name': Could not find 'implements' link on ConceptDeclaration")
                            }
                        } else {
                            errors.add("In concept '$name': Failed to resolve implements '$intfcRef'")
                        }
                    }
                }

                for (interfaceConcept in interfaceConcepts) {
                    val name = interfaceConcept.name
                    val newInterface = conceptRegistry[name] ?: continue

                    processAbstractConcept(newInterface, interfaceConcept)

                    // Extended Interfaces
                    for (intfcRef in interfaceConcept.extendedInterfaces) {
                        val intfcNode = resolveConceptOrNode(intfcRef, mpsProject, model, conceptRegistry)
                        if (intfcNode != null) {
                            // Find the correct 'extends' link on InterfaceConceptDeclaration
                            val extendsLink = newInterface.concept.containmentLinks.find { it.name == "extends" }
                            if (extendsLink != null) {
                                val intfcRefNode = SNodeFactoryOperations.addNewChild(newInterface, extendsLink, CONCEPT_InterfaceConceptReference)
                                intfcRefNode.setReferenceTarget(LINK_InterfaceConceptReference_Intfc, intfcNode)
                            } else {
                                errors.add("In interface '$name': Could not find 'extends' link on InterfaceConceptDeclaration")
                            }
                        } else {
                            errors.add("In interface '$name': Failed to resolve extends '$intfcRef'")
                        }
                    }
                }

                if (errors.isNotEmpty()) {
                    // Rollback: delete all created nodes. Intentionally NOT calling save() here —
                    // the on-disk file still matches its pre-call state because the success path
                    // below is the only writer. Re-saving the post-rollback state would be a no-op
                    // semantically but would touch the file's mtime; more importantly, a future
                    // defensive save() added here would break the invariant that a failed
                    // CREATE_CONCEPTS leaves the file byte-identical to its pre-call contents.
                    safelyRollbackNodes(createdNodes)
                    failure = errJson("Errors during concept creation:\n" + errors.joinToString("\n"))
                } else {
                    // saveOrRollback persists, runs safelyRollbackNodes on failure, and returns a
                    // pre-formatted INTERNAL_ERROR errJson (or null on success). See its KDoc for
                    // why every successful structure-model write in this file goes through it.
                    failure = saveOrRollback(model, createdNodes, structureModelRef)
                }
            } catch (e: Throwable) {
                // Mirrors createConcepts / mps_mcp_create_enum: a throw out of the two creation
                // passes (e.g. from SNodeFactoryOperations, addLink, resolveDataType, listener
                // exceptions) would otherwise leave partially-built roots in the model with no
                // save() and no signal to the caller — to be picked up by the next unrelated save.
                rethrowIfCancellation(e)
                if (e is Error) throw e
                safelyRollbackNodes(createdNodes)
                failure = errJson(
                    "Failed to build concepts in structure model '$structureModelRef': ${e.message ?: e.javaClass.name}",
                    McpErrorCode.INTERNAL_ERROR,
                )
            }
        }
        val finalFailure = failure
        if (finalFailure != null) {
            finalFailure
        } else {
            // Return created concept references
            val gson = Gson()
            val result = mutableMapOf<String, Any>()
            result["createdReferences"] = createdReferences

            // If make is requested, run make on the structure model
            if (make) {
                val model = executeBackgroundRead(mpsProject) {
                    resolveModel(mpsProject, structureModelRef, projectOnly = true)
                }

                if (model == null) {
                    result["makeStatus"] = "skipped"
                    result["makeMessage"] = "Model not found for make operation"
                } else {
                    // Force `rebuild = true`. Adding concepts changes the structure aspect, but an
                    // incremental make often produces no class-file deltas for
                    // StructureAspectDescriptor — the subsequent ClassLoaderManager.reload then
                    // re-publishes the *previously* compiled, hollow descriptor and downstream
                    // tools (get_concept_details, scaffold_editor) read empty
                    // properties/references/children. A clean make regenerates the aspect
                    // descriptor classes so the reload picks up the new concepts. The caller asked
                    // for `make = true` specifically to consume the freshly built concepts; an
                    // incremental make here defeats that purpose.
                    var makeResult = performMake(mpsProject, listOf(model), emptyList(), true)

                    // Ground-truth readiness check. performMake's reload latch only proves that
                    // *a* reload fired; for a brand-new, never-before-deployed language it is
                    // vacuous (LanguageRegistry.onLoaded skips an already-present language, so the
                    // reload re-publishes the hollow descriptor while the latch still counts down
                    // and reports runtimeReady=true). Read each created concept's runtime
                    // descriptor directly to learn whether it actually materialized.
                    var hollow: List<String> = if (makeResult.success) {
                        executeBackgroundRead(mpsProject) {
                            hollowRuntimeConcepts(mpsProject.repository, createdReferences.values)
                        }
                    } else {
                        emptyList()
                    }

                    // Verification-gated recovery for the brand-new-language case. The first make
                    // above is model-scoped (cheap, and sufficient for an already-deployed
                    // language). For a never-before-deployed language it leaves the runtime
                    // descriptors hollow: the in-make reload cannot force the unload/load cycle
                    // because LanguageRegistry.onLoaded skips an already-present SLanguageId.
                    //
                    // The fix proven on a live server is a *module-scoped* clean rebuild: rebuilding
                    // the whole Language module (CLEAN_MAKE on the module resource, generator
                    // included) invalidates the module's classloader, which does drive a real
                    // unload/load and materializes the runtime. A model-scoped rebuild and a bare
                    // ClassLoaderManager.reload were both measured to be insufficient here, so we
                    // go straight to the module rebuild and only when verification demands it — the
                    // steady-state path pays for nothing.
                    var recoveryStage: String? = null
                    if (makeResult.success && hollow.isNotEmpty()) {
                        recoveryStage = "module-rebuild"
                        val module = executeBackgroundRead(mpsProject) { model.module }
                        makeResult = performMake(mpsProject, emptyList(), listOf(module), true)
                        hollow = if (makeResult.success) {
                            executeBackgroundRead(mpsProject) {
                                hollowRuntimeConcepts(mpsProject.repository, createdReferences.values)
                            }
                        } else {
                            emptyList()
                        }
                    }

                    // makeStatus is driven by ground truth: a successful build whose created
                    // concepts all read back non-hollow is `success`; anything that leaves a hollow
                    // descriptor is `runtime_stale`. The old `runtimeReady`-only downgrade is no
                    // longer consulted here — the per-concept check both subsumes it (a stale
                    // runtime yields hollow descriptors) and avoids its false positives (a latch
                    // timeout while the descriptors are in fact fine).
                    result["makeStatus"] = when {
                        !makeResult.success -> "failed"
                        hollow.isNotEmpty() -> "runtime_stale"
                        else -> "success"
                    }
                    result["makeMessage"] = makeResult.message
                    if (recoveryStage != null) {
                        // Present only when the first make left descriptors hollow and an extra
                        // module-scoped rebuild was performed. Exposed for observability.
                        result["recoveryStage"] = recoveryStage
                    }
                    if (hollow.isNotEmpty()) {
                        result["hollowConcepts"] = hollow
                        result["descriptorRecoveryAction"] =
                            "These concepts' runtime descriptors are still hollow after a clean " +
                                "rebuild plus an automatic module rebuild: ${hollow.joinToString(", ")}. " +
                                "Run mps_mcp_alter_nodes with operation=MAKE, rebuild=true, and the " +
                                "language module (not just the structure model) as the target, then " +
                                "retry; restart MPS if it persists."
                    }
                    if (makeResult.details.isNotEmpty()) {
                        result["makeDetails"] = makeResult.details
                    }
                }
            }

            val resultJson = gson.toJson(result)
            okJson(resultJson)
        }
    }


    /**
     * Collects names of all root nodes in [model] sharing the structure-model root-name space:
     * both `AbstractConceptDeclaration` (concepts, interfaces) and `DataTypeDeclaration` (enums,
     * primitive types). MPS forbids duplicates in this combined space, so a concept "Foo"
     * blocks creating an enum "Foo" and vice versa.
     */
    private fun collectExistingRootNames(model: SModel): Set<String> = model.rootNodes
        .filter {
            it.concept.isSubConceptOf(CONCEPT_AbstractConceptDeclaration) ||
                it.concept.isSubConceptOf(CONCEPT_DataTypeDeclaration)
        }
        .mapNotNull { it.getProperty(PROP_Name) }
        .toSet()

    /**
     * Validates a single concept/interface/enum root-node name against the same rules
     * `createConceptsFull` enforces. Returns the list of error messages (empty when the name
     * is fully valid). `kind` is the noun used in error messages ("Concept", "Interface",
     * "Enumeration", …); `existingNames` is the set of root-node names already in the model;
     * `seenInRequest` is mutated to detect duplicates within a single request.
     */
    private fun validateRootNodeName(
        name: String,
        kind: String,
        existingNames: Set<String>,
        seenInRequest: MutableSet<String>,
    ): List<String> {
        val errors = mutableListOf<String>()
        if (name.isEmpty()) {
            errors += "$kind name must not be empty"
            return errors
        }
        if (!name[0].isUpperCase()) {
            // Skip the regex check on the same name. Names like "1abc" fail both checks
            // and we don't want to surface two redundant errors for one bad name.
            errors += "$kind name '$name' must start with an uppercase letter"
            return errors
        }
        if (!name.matches(NAME_PATTERN)) {
            errors += "$kind name '$name' contains invalid characters (only letters, digits, and underscores allowed)"
        }
        if (existingNames.contains(name)) {
            errors += "$kind '$name' already exists in model"
        }
        if (!seenInRequest.add(name)) {
            errors += "Duplicate $kind name '$name' in creation request"
        }
        return errors
    }

    private fun resolveDataType(type: String, mpsProject: MPSProject, model: SModel?): SNode? {
        val coreModel = resolveModel(mpsProject.repository, "r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)")
        val typeName = when (type.lowercase()) {
            "string" -> "string"
            "integer" -> "integer"
            "boolean" -> "boolean"
            else -> null
        }

        if (coreModel != null && typeName != null) {
            val coreNode = coreModel.rootNodes.find { it.getProperty(PROP_Name) == typeName }
            if (coreNode != null) return coreNode
        }

        // Try the current model
        if (model != null) {
            val localNode = model.rootNodes.find { it.getProperty(PROP_Name) == type }
            if (localNode != null && localNode.concept.isSubConceptOf(CONCEPT_DataTypeDeclaration)) return localNode
        }

        // Try as full node reference
        try {
            val sNodeRef = PersistenceFacade.getInstance().createNodeReference(type)
            val node = sNodeRef.resolve(mpsProject.repository)
            if (node != null && node.concept.isSubConceptOf(CONCEPT_DataTypeDeclaration)) return node
        } catch (e: Exception) {
            // Not a valid node reference
        }

        // Try as FQN (ModelName.DataTypeName) using '.' as a separator, or search in all structure models
        if (type.contains(".")) {
            val lastDot = type.lastIndexOf(".")
            val modelPart = type.substring(0, lastDot)
            val nodePart = type.substring(lastDot + 1)

            for (module in mpsProject.repository.modules) {
                for (m in module.models) {
                    if (m.name.longName == modelPart || m.name.longName == "$modelPart.structure") {
                        val node = m.rootNodes.find { it.getProperty(PROP_Name) == nodePart }
                        if (node != null && node.concept.isSubConceptOf(CONCEPT_DataTypeDeclaration)) {
                            return node
                        }
                    }
                }
            }
        } else {
            for (module in mpsProject.repository.modules) {
                for (m in module.models) {
                    if (m.name.longName.endsWith(".structure")) {
                        val node = m.rootNodes.find { it.getProperty(PROP_Name) == type }
                        if (node != null && node.concept.isSubConceptOf(CONCEPT_DataTypeDeclaration)) {
                            return node
                        }
                    }
                }
            }
        }

        // Fallback for non-primitive core types if any
        if (coreModel != null) {
            val coreNode = coreModel.rootNodes.find { it.getProperty(PROP_Name) == type }
            if (coreNode != null && coreNode.concept.isSubConceptOf(CONCEPT_DataTypeDeclaration)) return coreNode
        }

        return null
    }

    private fun addLink(
        conceptNode: SNode,
        link: StructureLinkSpec,
        isChild: Boolean,
        mpsProject: MPSProject,
        model: SModel,
        conceptRegistry: Map<String, SNode>
    ): String? {
        val role = link.role
        val targetRef = link.target

        val targetNode = resolveConceptOrNode(targetRef, mpsProject, model, conceptRegistry)
        if (targetNode == null) {
            return "Failed to resolve target '$targetRef' for link role '$role'"
        }

        val linkNode = SNodeFactoryOperations.addNewChild(conceptNode, LINK_LinkDeclaration, CONCEPT_LinkDeclaration)
        linkNode.setProperty(PROP_LinkDeclaration_Role, role)
        linkNode.setReferenceTarget(LINK_LinkDeclaration_Target, targetNode)

        if (isChild) {
            setLinkMetaClass(linkNode, true)

            val multiple = link.multiple
            val optional = link.optional
            val cardinalityName = when {
                multiple && optional -> "_0__n"
                multiple && !optional -> "_1__n"
                !multiple && optional -> "_0__1"
                else -> "_1"
            }
            val cardinalityError = setLinkSourceCardinality(linkNode, cardinalityName)
            if (cardinalityError != null) {
                return cardinalityError
            }
        } else {
            setLinkMetaClass(linkNode, false)

            val optional = link.optional
            val cardinalityName = if (optional) "_0__1" else "_1"
            val cardinalityError = setLinkSourceCardinality(linkNode, cardinalityName)
            if (cardinalityError != null) {
                return cardinalityError
            }
        }

        return null // success
    }

    private fun setLinkMetaClass(linkNode: SNode, isChild: Boolean) {
        if (isChild) {
            SPropertyOperations.setEnum(
                linkNode,
                PROP_LinkDeclaration_MetaClass,
                ENUM_MEMBER_LINK_METACLASS_AGGREGATION_ID,
                "aggregation"
            )
        } else {
            SPropertyOperations.setEnum(
                linkNode,
                PROP_LinkDeclaration_MetaClass,
                ENUM_MEMBER_LINK_METACLASS_REFERENCE_ID,
                "reference"
            )
        }
    }

    private fun setLinkSourceCardinality(linkNode: SNode, cardinalityName: String): String? {
        val cardinalityId = when (cardinalityName) {
            "_0__1" -> ENUM_MEMBER_CARDINALITY_0_1_ID
            "_1" -> ENUM_MEMBER_CARDINALITY_1_ID
            "_0__n" -> ENUM_MEMBER_CARDINALITY_0_N_ID
            "_1__n" -> ENUM_MEMBER_CARDINALITY_1_N_ID
            else -> return "Unsupported cardinality '$cardinalityName'"
        }
        SPropertyOperations.setEnum(linkNode, PROP_LinkDeclaration_SourceCardinality, cardinalityId, cardinalityName)
        return null
    }

    /**
     * Resolves a target reference to an SNode representing a concept or interface.
     * Supports:
     * 1. Names of concepts being created in this operation (from conceptRegistry)
     * 2. Persistent references to concepts (SAbstractConcept references)
     * 3. Persistent references to nodes (SNodeReference)
     * 4. Fully qualified names of existing concepts
     */
    private fun resolveConceptOrNode(
        targetRef: String,
        mpsProject: MPSProject,
        model: SModel,
        conceptRegistry: Map<String, SNode>
    ): SNode? {
        // 1. Check if it's a concept being created in this operation
        conceptRegistry[targetRef]?.let { return it }

        // 2. Use shared resolver from AbstractOps
        return resolveConceptNodePreferringProject(mpsProject, targetRef)
    }

    private suspend fun createConcepts(
        conceptNames: Collection<String>,
        structureModelRef: String
    ): String = withMpsProject("Creating concepts") { mpsProject ->
        // `failure` is always a pre-formatted errJson (or null on success). See
        // createConceptsFull for the rationale of the single-var pattern.
        var failure: String? = null
        executeShortCommandOnEdt(mpsProject) {
            val model = when (val r = resolveEditableModel(mpsProject, structureModelRef)) {
                is EditableModelResolution.Ok -> r.model
                is EditableModelResolution.Err -> {
                    failure = r.errJson
                    return@executeShortCommandOnEdt
                }
            }

            val existingRootNames = collectExistingRootNames(model)

            // Up-front validation mirroring createConceptsFull. Without this, malformed or
            // duplicate names would reach save() below and require manual cleanup.
            val validationErrors = mutableListOf<String>()
            val seenInRequest = mutableSetOf<String>()
            for (name in conceptNames) {
                validationErrors += validateRootNodeName(name, "Concept", existingRootNames, seenInRequest)
            }
            if (validationErrors.isNotEmpty()) {
                failure = errJson("Validation errors:\n" + validationErrors.joinToString("\n"))
                return@executeShortCommandOnEdt
            }

            // Track created roots so a creation-loop or save failure can roll them back.
            val createdNodes = mutableListOf<SNode>()
            try {
                // Wrap the loop because SNodeFactoryOperations.createNewRootNode and
                // SNode.setProperty can throw (e.g. listener exceptions, model in unexpected
                // state). Without this, a failure on the N-th iteration would leave 1..N-1
                // in the in-memory model with no save() and no signal to the caller — and
                // those orphans would be persisted by the next unrelated save.
                for (name in conceptNames) {
                    val newConcept = SNodeFactoryOperations.createNewRootNode(model, CONCEPT_ConceptDeclaration, null)
                    newConcept.setProperty(PROP_Name, name)
                    createdNodes.add(newConcept)
                }
            } catch (e: Throwable) {
                rethrowIfCancellation(e)
                if (e is Error) throw e
                safelyRollbackNodes(createdNodes)
                failure = errJson(
                    "Failed to create concepts in structure model '$structureModelRef': ${e.message ?: e.javaClass.name}",
                    McpErrorCode.INTERNAL_ERROR,
                )
                return@executeShortCommandOnEdt
            }

            failure = saveOrRollback(model, createdNodes, structureModelRef)
        }
        failure ?: okJson("true")
    }

    private suspend fun mps_mcp_create_enum(
        structureModelRef: String,
        enumName: String,
        valuesJson: String,
        defaultEnumName: String?,
        dryRun: Boolean = false
    ): String = withMpsProject("Creating enumeration") { mpsProject ->
        val values: List<EnumValueSpec> = try {
            val actualJson = checkNotNull(readJsonOrFile(valuesJson, dryRun))
            parseEnumValueSpecs(actualJson)
        } catch (e: ToolInputJsonException) {
            return@withMpsProject invalidJson(e.message)
        } catch (e: ToolInputSchemaException) {
            return@withMpsProject errJson(e.message, McpErrorCode.INVALID_REQUEST)
        }
        if (dryRun) return@withMpsProject okJson("{}")

        // `failure` is always a pre-formatted errJson (or null on success). See
        // createConceptsFull for the single-var pattern.
        var failure: String? = null
        executeShortCommandOnEdt(mpsProject) {
            val model = when (val r = resolveEditableModel(mpsProject, structureModelRef)) {
                is EditableModelResolution.Ok -> r.model
                is EditableModelResolution.Err -> {
                    failure = r.errJson
                    return@executeShortCommandOnEdt
                }
            }

            // Same name-validation pipeline as the concept-creation paths.
            val validationErrors = validateRootNodeName(
                enumName,
                "Enumeration",
                collectExistingRootNames(model),
                mutableSetOf(),
            )
            if (validationErrors.isNotEmpty()) {
                failure = errJson("Validation errors:\n" + validationErrors.joinToString("\n"))
                return@executeShortCommandOnEdt
            }

            // Track the new root for creation-loop and save-failure rollback.
            val createdNodes = mutableListOf<SNode>()
            try {
                // Wrap the entire node-creation phase: SNodeFactoryOperations and setProperty
                // can throw mid-way through the values loop, leaving a partially-populated
                // EnumerationDeclaration that would be picked up by the next unrelated save.
                val newEnum = SNodeFactoryOperations.createNewRootNode(model, CONCEPT_EnumerationDeclaration, null)
                newEnum.setProperty(PROP_Name, enumName)
                createdNodes.add(newEnum)

                // Remove any automatically created members (artifacts of the node factory)
                newEnum.getChildren(LINK_Members).forEach { it.delete() }

                val memberNodes = mutableMapOf<String, SNode>()
                val random = Random()

                for (value in values) {
                    val name = value.enumName
                    val presentation = value.enumPresentation ?: name

                    val member = SNodeFactoryOperations.addNewChild(newEnum, LINK_Members, CONCEPT_EnumerationMemberDeclaration)
                    member.setProperty(PROP_Name, name)
                    member.setProperty(PROP_Presentation, presentation)
                    // Generate a random long for memberId as it's required by constraints, ensure non-negative value
                    member.setProperty(PROP_MemberId, (random.nextLong() and Long.MAX_VALUE).toString())
                    memberNodes[name] = member
                }

                if (!defaultEnumName.isNullOrEmpty()) {
                    val defaultMember = memberNodes[defaultEnumName]
                    if (defaultMember != null) {
                        newEnum.setReferenceTarget(LINK_DefaultMember, defaultMember)
                    }
                }
            } catch (e: Throwable) {
                rethrowIfCancellation(e)
                if (e is Error) throw e
                safelyRollbackNodes(createdNodes)
                failure = errJson(
                    "Failed to build enumeration '$enumName' in structure model '$structureModelRef': " +
                            "${e.message ?: e.javaClass.name}",
                    McpErrorCode.INTERNAL_ERROR,
                )
                return@executeShortCommandOnEdt
            }

            failure = saveOrRollback(model, createdNodes, structureModelRef)
        }
        failure ?: okJson("true")
    }

    private suspend fun mps_mcp_get_enumeration_literals(
        nodeReference: String,
        propertyName: String
    ): String = withMpsProject("Getting MPS enumeration literals for '$propertyName'") { mpsProject ->
        executeShortReadOnEdt(mpsProject) {
            val repo = mpsProject.repository
            val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, nodeReference)
                ?: return@executeShortReadOnEdt invalidReference("Invalid or unresolvable node reference: '$nodeReference'")
            val node = sNodeRef.resolve(repo)
                ?: return@executeShortReadOnEdt errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)
            val sProperty = node.concept.properties.find { it.name == propertyName }
                ?: return@executeShortReadOnEdt errJson("Property '$propertyName' not found in concept '${node.concept.name}'", McpErrorCode.NOT_FOUND)
            val type = sProperty.type
            if (type is SEnumeration) {
                val list = type.literals.map { literal ->
                    val doc = getDoc(literal.sourceNode?.resolve(repo))
                    mapOf("value" to (literal.name ?: ""), "presentation" to literal.presentation, "doc" to doc)
                }
                okJson(Gson().toJson(list))
            } else {
                errJson("Property '$propertyName' is not an enumeration", McpErrorCode.INVALID_REQUEST)
            }
        }
    }

    private suspend fun mps_mcp_get_enumeration_literals_by_declaration(
        enumerationRef: String
    ): String = withMpsProject("Getting MPS enumeration literals from '$enumerationRef'") { mpsProject ->
        executeShortReadOnEdt(mpsProject) {
            val repo = mpsProject.repository
            val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, enumerationRef)
            // A node reference first, then the enumeration's qualified name. `resolveNodeReference`
            // already covers `<model>.<EnumName>` and a bare `<EnumName>` (its by-name fallback runs
            // because `SNodePointer.deserialize` throws on a string without a '/'), but not the
            // language-qualified `<language>.<EnumName>` form — which is the shape a caller holds
            // after `get_concept_details` refuses an enumeration and routes it here (study defect
            // D22). A structure-model scan closes that gap.
            val node = sNodeRef?.resolve(repo)
                ?: resolveStructureDeclarationPreferringProject(mpsProject, enumerationRef)
                ?: return@executeShortReadOnEdt if (sNodeRef != null) {
                    errJson("Node '$enumerationRef' not found", McpErrorCode.NOT_FOUND)
                } else {
                    invalidReference(
                        "Could not resolve 'enumerationRef' '$enumerationRef': it takes an " +
                                "EnumerationDeclaration's node reference (r:...) or its qualified name " +
                                "(<language>.structure.<EnumName>). To read the literals of an enum-typed " +
                                "property instead, pass 'nodeReference' plus 'propertyName'."
                    )
                }
            if (!node.concept.isSubConceptOf(CONCEPT_EnumerationDeclaration)) {
                return@executeShortReadOnEdt errJson(
                    "'enumerationRef' '$enumerationRef' is not an EnumerationDeclaration (was '${node.concept.name}')",
                    McpErrorCode.INVALID_REQUEST,
                )
            }
            val list = node.getChildren(LINK_Members).map { member ->
                mapOf(
                    "value" to (member.getProperty(PROP_Name) ?: ""),
                    "presentation" to (member.getProperty(PROP_Presentation) ?: ""),
                    "doc" to getDoc(member),
                )
            }
            okJson(Gson().toJson(list))
        }
    }

    private suspend fun mps_mcp_update_concept_property(
        conceptRef: String,
        propertyName: String,
        dataType: String?
    ): String = withMpsProject("Updating concept property '$propertyName'") { mpsProject ->
        var error: String? = null
        executeShortCommandOnEdt(mpsProject) {
            val (conceptNode, model) = when (val r = resolveEditableConceptNode(mpsProject, conceptRef)) {
                is EditableNodeResolution.Ok -> r.node to r.model
                is EditableNodeResolution.Err -> {
                    error = r.errJson
                    return@executeShortCommandOnEdt
                }
            }

            val existingProp = conceptNode.getChildren(LINK_PropertyDeclaration).find { it.getProperty(PROP_Name) == propertyName }

            if (dataType.isNullOrEmpty()) {
                // Delete
                if (existingProp != null) {
                    existingProp.delete()
                } else {
                    error = "Property '$propertyName' not found in concept '${conceptNode.name}'"
                    return@executeShortCommandOnEdt
                }
            } else {
                val propNode = existingProp ?: SNodeFactoryOperations.addNewChild(conceptNode, LINK_PropertyDeclaration, CONCEPT_PropertyDeclaration)
                propNode.setProperty(PROP_Name, propertyName)
                val dataTypeNode = resolveDataType(dataType, mpsProject, conceptNode.model)
                if (dataTypeNode != null) {
                    propNode.setReferenceTarget(LINK_PropertyDeclaration_DataType, dataTypeNode)
                } else {
                    error = "Failed to resolve data type '$dataType'"
                    return@executeShortCommandOnEdt
                }
            }
            saveModelAndModule(model)
        }
        error?.let { if (it.startsWith("{\"ok\":")) it else errJson(it) } ?: okJson("true")
    }

    private suspend fun mps_mcp_update_concept_link(
        conceptRef: String,
        role: String,
        targetConcept: String?,
        isChild: Boolean,
        multiple: Boolean = false,
        optional: Boolean = true
    ): String = withMpsProject("Updating concept ${if (isChild) "child" else "reference"} '$role'") { mpsProject ->
        var error: String? = null
        executeShortCommandOnEdt(mpsProject) {
            val (conceptNode, model) = when (val r = resolveEditableConceptNode(mpsProject, conceptRef)) {
                is EditableNodeResolution.Ok -> r.node to r.model
                is EditableNodeResolution.Err -> {
                    error = r.errJson
                    return@executeShortCommandOnEdt
                }
            }

            val existingLink = conceptNode.getChildren(LINK_LinkDeclaration).find {
                it.getProperty(PROP_LinkDeclaration_Role) == role
            }

            if (targetConcept.isNullOrEmpty()) {
                // Delete
                if (existingLink != null) {
                    existingLink.delete()
                } else {
                    error = "${if (isChild) "Child" else "Reference"} '$role' not found in concept '${conceptNode.name}'"
                    return@executeShortCommandOnEdt
                }
            } else {
                val linkNode = existingLink ?: SNodeFactoryOperations.addNewChild(conceptNode, LINK_LinkDeclaration, CONCEPT_LinkDeclaration)
                linkNode.setProperty(PROP_LinkDeclaration_Role, role)

                val targetNode = resolveConceptOrNode(targetConcept, mpsProject, model, emptyMap())
                if (targetNode == null) {
                    error = "Failed to resolve target concept '$targetConcept'"
                    return@executeShortCommandOnEdt
                }
                linkNode.setReferenceTarget(LINK_LinkDeclaration_Target, targetNode)

                setLinkMetaClass(linkNode, isChild)

                val cardinalityName = if (isChild) {
                    when {
                        multiple && optional -> "_0__n"
                        multiple && !optional -> "_1__n"
                        !multiple && optional -> "_0__1"
                        else -> "_1"
                    }
                } else {
                    if (optional) "_0__1" else "_1"
                }

                val cardinalityError = setLinkSourceCardinality(linkNode, cardinalityName)
                if (cardinalityError != null) {
                    error = cardinalityError
                    return@executeShortCommandOnEdt
                }
            }
            saveModelAndModule(model)
        }
        error?.let { if (it.startsWith("{\"ok\":")) it else errJson(it) } ?: okJson("true")
    }

    private suspend fun mps_mcp_rename_concept_property(
        conceptRef: String,
        oldName: String,
        newName: String
    ): String = withMpsProject("Renaming concept property '$oldName' to '$newName'") { mpsProject ->
        var error: String? = null
        executeShortCommandOnEdt(mpsProject) {
            val (conceptNode, model) = when (val r = resolveEditableConceptNode(mpsProject, conceptRef)) {
                is EditableNodeResolution.Ok -> r.node to r.model
                is EditableNodeResolution.Err -> {
                    error = r.errJson
                    return@executeShortCommandOnEdt
                }
            }

            val existingProp = conceptNode.getChildren(LINK_PropertyDeclaration).find { it.getProperty(PROP_Name) == oldName }
            if (existingProp == null) {
                error = "Property '$oldName' not found in concept '${conceptNode.name}'"
                return@executeShortCommandOnEdt
            }

            existingProp.setProperty(PROP_Name, newName)
            saveModelAndModule(model)
        }
        error?.let { if (it.startsWith("{\"ok\":")) it else errJson(it) } ?: okJson("true")
    }

    private suspend fun mps_mcp_rename_concept_link(
        conceptRef: String,
        oldRole: String,
        newRole: String,
        isChild: Boolean
    ): String = withMpsProject("Renaming concept ${if (isChild) "child" else "reference"} '$oldRole' to '$newRole'") { mpsProject ->
        var error: String? = null
        executeShortCommandOnEdt(mpsProject) {
            val (conceptNode, model) = when (val r = resolveEditableConceptNode(mpsProject, conceptRef)) {
                is EditableNodeResolution.Ok -> r.node to r.model
                is EditableNodeResolution.Err -> {
                    error = r.errJson
                    return@executeShortCommandOnEdt
                }
            }

            val existingLink = conceptNode.getChildren(LINK_LinkDeclaration).find {
                it.getProperty(PROP_LinkDeclaration_Role) == oldRole
            }

            if (existingLink == null) {
                error = "${if (isChild) "Child" else "Reference"} '$oldRole' not found in concept '${conceptNode.name}'"
                return@executeShortCommandOnEdt
            }

            existingLink.setProperty(PROP_LinkDeclaration_Role, newRole)
            saveModelAndModule(model)
        }
        error?.let { if (it.startsWith("{\"ok\":")) it else errJson(it) } ?: okJson("true")
    }


    /**
     * Adds a DocumentedNodeAnnotation to a concept or interface concept node.
     */
    private fun addDocumentationAnnotation(node: SNode, text: String) {
        val docAnnotation = SNodeFactoryOperations.addNewChild(node, SNodeUtil.link_BaseConcept_smodelAttribute, CONCEPT_DocumentedNodeAnnotation)
        docAnnotation.setProperty(PROP_DocumentedNodeAnnotation_Text, text)
    }

    private suspend fun mps_mcp_list_concept_aspects(
        conceptRef: String,
        includeInherited: Boolean = false
    ): String = withMpsProject("Listing concept aspects for '$conceptRef'${if (includeInherited) " with inherited" else ""}") { mpsProject ->
        executeShortReadOnEdt(mpsProject) {
            val startConcept = resolveConceptPreferringProject(mpsProject, conceptRef)
                ?: return@executeShortReadOnEdt errJson("Concept '$conceptRef' not found", McpErrorCode.NOT_FOUND)

            val hierarchy = mutableSetOf<SAbstractConcept>()
            if (includeInherited) {
                populateSuperConceptsAndInterfaces(startConcept, hierarchy)
            } else {
                hierarchy.add(startConcept)
            }

            val resultsByModel = mutableMapOf<SModel, MutableMap<SNode, SAbstractConcept>>()

            for (concept in hierarchy) {
                val conceptNode = concept.sourceNode?.resolve(mpsProject.repository) ?: continue
                val language = concept.language
                val languageModule = language.sourceModuleReference.resolve(mpsProject.repository) ?: continue

                val aspectModels = languageModule.models.filter { !it.name.hasStereotype() && it.name.simpleName != "structure" }
                val aspectModelRefs = aspectModels.map { it.reference }.toSet()
                val scope = filteredScope(mpsProject.repository, allowedModels = aspectModelRefs, allowedModules = null)

                findUsagesWithFallback(scope, setOf(conceptNode), EmptyProgressMonitor()) { reference ->
                    val root = reference.sourceNode.containingRoot
                    val rootModel = root.model
                    if (rootModel != null && rootModel.reference in aspectModelRefs) {
                        synchronized(resultsByModel) {
                            resultsByModel.getOrPut(rootModel) { mutableMapOf() }.putIfAbsent(root, concept)
                        }
                    }
                }
            }

            val dataArray = JsonArray()
            for ((model, rootsInModel) in resultsByModel) {
                val aspectModelObj = JsonObject()
                aspectModelObj.addProperty("fullyQualifiedName", model.name.longName)
                aspectModelObj.addProperty("reference", PersistenceFacade.getInstance().asString(model.reference))

                val moduleObj = JsonObject()
                moduleObj.addProperty("fullyQualifiedName", model.module.moduleName)
                moduleObj.addProperty("reference", PersistenceFacade.getInstance().asString(model.module.moduleReference))
                aspectModelObj.add("module", moduleObj)

                val rootsArray = JsonArray()
                for ((root, targetedConcept) in rootsInModel) {
                    val rootObj = JsonObject()
                    rootObj.addProperty("name", root.name ?: root.presentation)
                    // h: do not fall back to root.presentation for the FQN. presentation is a
                    // human-readable label (e.g. "<no name>") that produces a non-resolvable
                    // qualified name. Emit the FQN only when the node has a real INamedConcept
                    // name; otherwise leave it absent so the caller can detect the unnamed
                    // node and use the persistent `reference` field instead.
                    root.name?.let { rootObj.addProperty("fullyQualifiedName", "${model.name.longName}.$it") }
                    rootObj.addProperty("reference", PersistenceFacade.getInstance().asString(root.reference))
                    rootObj.addProperty("concept", root.concept.name)

                    val targetsObj = JsonObject()
                    targetsObj.addProperty("name", targetedConcept.name)
                    targetsObj.addProperty("fullyQualifiedName", targetedConcept.name)
                    targetsObj.addProperty("reference", PersistenceFacade.getInstance().asString(targetedConcept))
                    rootObj.add("targetsConcept", targetsObj)

                    rootsArray.add(rootObj)
                }

                val modelResult = JsonObject()
                modelResult.add("aspectModel", aspectModelObj)
                modelResult.add("rootNodes", rootsArray)
                dataArray.add(modelResult)
            }

            finalizeResult(dataArray.toString())
        }
    }

    fun populateSuperConceptsAndInterfaces(
        concept: SAbstractConcept,
        allSuperConcepts: MutableSet<SAbstractConcept>
    ) {
        val queue = ArrayDeque<SAbstractConcept>()

        concept.superConcept?.let { queue.add(it) }
        queue.addAll(concept.superInterfaces)

        while (queue.isNotEmpty()) {
            val current = queue.removeFirst()
            if (allSuperConcepts.add(current)) {
                current.superConcept?.let { queue.add(it) }
                queue.addAll(current.superInterfaces)
            }
        }
    }

    private val CONCEPT_AbstractConceptDeclaration: SConcept = SNodeUtil.concept_AbstractConceptDeclaration
    private val CONCEPT_ConceptDeclaration: SConcept = SNodeUtil.concept_ConceptDeclaration
    private val CONCEPT_InterfaceConceptDeclaration: SConcept = SNodeUtil.concept_InterfaceConceptDeclaration
    private val CONCEPT_LinkDeclaration: SConcept = SNodeUtil.concept_LinkDeclaration

    private val CONCEPT_InterfaceConceptReference: SConcept by lazy {
        val registry = MPSCoreComponents.getInstance()?.platform?.findComponent(LanguageRegistry::class.java)
        registry?.getLanguage(LANG_STRUCTURE)?.concepts?.filterIsInstance<SConcept>()?.find { it.name == "InterfaceConceptReference" }
            ?: MetaAdapterFactory.getConcept(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x110356fc618L,
                "jetbrains.mps.lang.structure.structure.InterfaceConceptReference"
            )
    }
    private val CONCEPT_EnumerationMemberDeclaration: SConcept by lazy {
        SNodeUtil.property_EnumerationMemberDeclaration_memberId.owner as SConcept
    }
    private val CONCEPT_PropertyDeclaration: SConcept by lazy {
        val registry = MPSCoreComponents.getInstance()?.platform?.findComponent(LanguageRegistry::class.java)
        registry?.getLanguage(LANG_STRUCTURE)?.concepts?.filterIsInstance<SConcept>()?.find { it.name == "PropertyDeclaration" }
            ?: MetaAdapterFactory.getConcept(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0xf979bd086bL,
                "jetbrains.mps.lang.structure.structure.PropertyDeclaration"
            )
    }
    private val CONCEPT_DataTypeDeclaration: SConcept by lazy {
        val registry = MPSCoreComponents.getInstance()?.platform?.findComponent(LanguageRegistry::class.java)
        registry?.getLanguage(LANG_STRUCTURE)?.concepts?.filterIsInstance<SConcept>()?.find { it.name == "DataTypeDeclaration" }
            ?: MetaAdapterFactory.getConcept(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0xf8910915e2L,
                "jetbrains.mps.lang.structure.structure.DataTypeDeclaration"
            )
    }

    private val PROP_Name: SProperty = SNodeUtil.property_INamedConcept_name
    private val PROP_VirtualPackage: SProperty = SNodeUtil.property_BaseConcept_virtualPackage
    private val PROP_MemberId: SProperty = SNodeUtil.property_EnumerationMemberDeclaration_memberId
    private val PROP_LinkDeclaration_Role: SProperty = SNodeUtil.property_LinkDeclaration_role

    private val PROP_Presentation: SProperty by lazy {
        CONCEPT_EnumerationMemberDeclaration.properties.find { it.name == "presentation" }
            ?: MetaAdapterFactory.getProperty(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x2e770ca32c607c60uL.toLong(),
                0x9538e3a78561888L,
                "presentation"
            )
    }
    private val PROP_ConceptAlias: SProperty by lazy {
        CONCEPT_AbstractConceptDeclaration.properties.find { it.name == "conceptAlias" }
            ?: MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias")
    }
    private val PROP_Abstract: SProperty by lazy {
        CONCEPT_AbstractConceptDeclaration.properties.find { it.name == "abstract" }
            ?: MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0x1103553c5ffL, 0x403a32c5772c7ec2L, "abstract")
    }
    private val PROP_Rootable: SProperty by lazy {
        CONCEPT_ConceptDeclaration.properties.find { it.name == "rootable" }
            ?: MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0xf979ba0450L, 0xff49c1d648L, "rootable")
    }
    private val PROP_LinkDeclaration_MetaClass: SProperty by lazy {
        CONCEPT_LinkDeclaration.properties.find { it.name == "metaClass" }
            ?: MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0xf979bd086aL, 0xf980556927L, "metaClass")
    }
    private val PROP_LinkDeclaration_SourceCardinality: SProperty by lazy {
        CONCEPT_LinkDeclaration.properties.find { it.name == "sourceCardinality" }
            ?: MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0xf979bd086aL, 0xf98054bb04L, "sourceCardinality")
    }
    private val PROP_ConceptShortDescription: SProperty by lazy {
        CONCEPT_AbstractConceptDeclaration.properties.find { it.name == "conceptShortDescription" }
            ?: MetaAdapterFactory.getProperty(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x1103553c5ffL,
                0x403a32c5772bbe20L,
                "conceptShortDescription"
            )
    }
    private val LINK_Members: SContainmentLink by lazy {
        CONCEPT_EnumerationDeclaration.containmentLinks.find { it.name == "members" }
            ?: MetaAdapterFactory.getContainmentLink(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x2e770ca32c607c5fuL.toLong(),
                0x2e770ca32c607cc1uL.toLong(),
                "members"
            )
    }
    private val LINK_DefaultMember: SReferenceLink by lazy {
        CONCEPT_EnumerationDeclaration.referenceLinks.find { it.name == "defaultMember" }
            ?: MetaAdapterFactory.getReferenceLink(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x2e770ca32c607c5fuL.toLong(),
                0xeeb344f63fe016cL,
                "defaultMember"
            )
    }
    private val LINK_Extends: SReferenceLink by lazy {
        CONCEPT_ConceptDeclaration.referenceLinks.find { it.name == "extends" }
            ?: MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0xf979ba0450L, 0xf979be93cfL, "extends")
    }
    private val LINK_InterfaceConceptReference_Intfc: SReferenceLink by lazy {
        CONCEPT_InterfaceConceptReference.referenceLinks.find { it.name == "intfc" }
            ?: MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0x110356fc618L, 0x110356fe029L, "intfc")
    }
    private val LINK_PropertyDeclaration: SContainmentLink by lazy {
        CONCEPT_AbstractConceptDeclaration.containmentLinks.find { it.name == "propertyDeclaration" }
            ?: MetaAdapterFactory.getContainmentLink(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x1103553c5ffL,
                0xf979c3ba6cL,
                "propertyDeclaration"
            )
    }
    private val LINK_PropertyDeclaration_DataType: SReferenceLink by lazy {
        CONCEPT_PropertyDeclaration.referenceLinks.find { it.name == "dataType" }
            ?: MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0xf979bd086bL, 0xfc26f42fe5L, "dataType")
    }
    private val LINK_LinkDeclaration: SContainmentLink by lazy {
        CONCEPT_AbstractConceptDeclaration.containmentLinks.find { it.name == "linkDeclaration" }
            ?: MetaAdapterFactory.getContainmentLink(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x1103553c5ffL,
                0xf979c3ba6bL,
                "linkDeclaration"
            )
    }
    private val LINK_LinkDeclaration_Target: SReferenceLink by lazy {
        CONCEPT_LinkDeclaration.referenceLinks.find { it.name == "target" }
            ?: MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0xf979bd086aL, 0xf98055fef0L, "target")
    }

    companion object {
        private const val ENUM_MEMBER_LINK_METACLASS_REFERENCE_ID = 0xfc6f4e95b8L
        private const val ENUM_MEMBER_LINK_METACLASS_AGGREGATION_ID = 0xfc6f4e95b9L
        private const val ENUM_MEMBER_CARDINALITY_0_1_ID = 0xfc6f3944c3L
        private const val ENUM_MEMBER_CARDINALITY_1_ID = 0xfc6f3944c4L
        private const val ENUM_MEMBER_CARDINALITY_0_N_ID = 0xfc6f3944c5L
        private const val ENUM_MEMBER_CARDINALITY_1_N_ID = 0xfc6f3944c6L

        // Java-identifier-shaped names: letters, digits, underscore; first char must be a letter.
        // Hoisted to a singleton because validateRootNodeName runs once per submitted name and a
        // single CREATE_CONCEPTS call can include many of them.
        private val NAME_PATTERN = Regex("^[A-Za-z][A-Za-z0-9_]*$")
    }
}
