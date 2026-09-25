package jetbrains.mps.agents.mcp.tools.common

/**
 * One semantically required top-level parameter of an `@McpTool` function, as checked by
 * [AbstractOps.rejectMissingParameters].
 *
 * Study D43: every published tool parameter carries a Kotlin default, because the platform's
 * `CallableBridge` rejects an absent parameter without a default with the generic
 * `No argument is passed for required parameter 'x'`, which never says that a value the caller
 * *did* send under another name was dropped. The parameter stays required — its description
 * starts with "Required." and the tool body rejects a blank value through this class — but the
 * rejection is the tool's own and names the spelling it wanted.
 *
 * [supplied] is the bound value, `""` when absent; a blank value counts as missing. [expected]
 * completes "Retry with <name> set to …".
 *
 * List a parameter only where a blank value is never meaningful — `create_root_node.name`, which a
 * nameless concept legitimately receives empty, is not listed. For an either-of pair, list the
 * primary key with both values folded in (`supplied = concept.ifBlank { conceptReference }`) and
 * name the alternative in [expected]. JSON `null` on a `String` parameter is out of scope: the
 * platform's decoder throws on it before the body runs, as it always has.
 */
class RequiredParameter(val name: String, val supplied: String, val expected: String)

/**
 * The spellings a caller plausibly sends *instead of* a required parameter, so the rejection can
 * say which of them never reached the tool. Keyed by parameter name, or by `<tool>.<parameter>`
 * where one tool's guesses differ from the shared ones; the qualified key wins.
 *
 * A near-miss must never be a real parameter of the same tool — the message would then tell the
 * caller to stop sending a key the tool reads. `McpToolParameterOptionalityTest` enforces that
 * against every published tool, and that every entry still names a real parameter.
 */
object RequiredParameterNearMisses {
    val byParameter: Map<String, List<String>> = mapOf(
        "concept" to listOf("conceptName", "conceptRef"),
        "conceptRef" to listOf("conceptReference", "concept", "conceptName"),
        "conceptRefs" to listOf("conceptRef", "conceptReference", "concept", "conceptName", "conceptNames"),
        "facetType" to listOf("facet", "type"),
        "historyNodeReference" to listOf("nodeReference", "historyNode", "historyRef"),
        "intentionId" to listOf("intention", "intentionName", "id"),
        "childJson" to listOf("json"),
        "childNodeRef" to listOf("childNodeReference", "target"),
        "childRole" to listOf("role"),
        "json" to listOf("blueprint", "nodeJson", "jsonBlueprint"),
        "kind" to listOf("type", "languageKind"),
        "languageRefs" to listOf("languageRef", "languageReference"),
        "modelName" to listOf("name", "model"),
        "modelReference" to listOf("modelRef", "model", "modelName"),
        "moduleName" to listOf("moduleReference", "moduleRef", "module"),
        "name" to listOf("nodeName", "rootName"),
        "names" to listOf("name", "searchTexts", "rootNames"),
        "nodeReference" to listOf("nodeRef", "node", "reference"),
        "operation" to listOf("op", "action"),
        "parameters" to listOf("params", "arguments", "args"),
        "targetModels" to listOf("targetModel", "models", "dependencies"),
        "targetModule" to listOf("targetModuleName", "dependency", "dependencyModule"),
        "type" to listOf("moduleType", "kind"),
        "usedLanguage" to listOf("language", "languageRef", "languageReference"),
        "mps_mcp_create_module.name" to listOf("moduleName", "moduleReference"),
        "mps_mcp_check_root_node_problems.nodeReference" to listOf("modelReference", "model", "nodeRef", "node"),
        // ADD CHILD's parent. Not 'target', which parse_java_and_insert uses for the node replaced.
        "mps_mcp_update_node.nodeReference" to listOf("parentRef", "nodeRef"),
    )

    fun of(tool: String, parameter: String): List<String> =
        byParameter["$tool.$parameter"] ?: byParameter[parameter].orEmpty()
}

/**
 * The rejection text for [missing] (non-empty) on [tool], in the voice the parameter-name sweep
 * settled on (D14b, D28): name the key, end with the literal retry, and name the spellings that
 * never reached the tool. All missing keys are reported at once, since a caller who got one key
 * wrong often got its neighbours wrong too (D28). [operation] names the operation that requires
 * them, for a tool whose required parameters differ by operation.
 */
fun missingParametersMessage(tool: String, missing: List<RequiredParameter>, operation: String? = null): String {
    fun spelledNot(parameter: RequiredParameter): String? =
        RequiredParameterNearMisses.of(tool, parameter.name).takeIf { it.isNotEmpty() }
            ?.joinToString("'/'", prefix = "'", postfix = "'")

    val qualifier = operation?.let { " for $it" }.orEmpty()
    missing.singleOrNull()?.let { parameter ->
        return retrySentence(missing, qualifier) +
            (spelledNot(parameter)?.let { " This tool spells it '${parameter.name}'; a value sent as $it never reaches it." } ?: "")
    }
    return retrySentence(missing, qualifier) { parameter -> spelledNot(parameter)?.let { " (not $it)" }.orEmpty() } +
        " A value sent under another name never reaches this tool."
}

/**
 * The same rejection for keys inside the `parameters` object of operation [context]. It names no
 * near-misses: `rejectUnknownParameterKeys` runs first and rejects a misspelled key with a
 * suggestion, so no value sent under another name can have been dropped.
 */
internal fun missingParameterKeysMessage(context: String, missing: List<RequiredParameter>): String =
    retrySentence(missing, " in 'parameters' for $context")

/** "<keys> <is|are> required<qualifier>. Retry with <key> set to <expected><note>; …." */
private fun retrySentence(
    missing: List<RequiredParameter>,
    qualifier: String,
    note: (RequiredParameter) -> String = { "" },
): String {
    val names = missing.map { it.name }
    val subject = names.singleOrNull()?.let { "$it is" }
        ?: (names.dropLast(1).joinToString(", ") + " and " + names.last() + " are")
    return "$subject required$qualifier. Retry with " +
        missing.joinToString("; ") { "${it.name} set to ${it.expected}${note(it)}" } + "."
}

/**
 * Study D43: the `operation` selector of an operation-dispatching tool as a [RequiredParameter],
 * whose retry names every constant of [E]. Only a *blank* selector is reported through it; a
 * supplied but unresolvable one keeps the tool's own `AbstractOps.unknownOperation` rejection, so
 * an absent key is never answered as "Unknown operation ''".
 */
internal inline fun <reified E : Enum<E>> requiredOperation(supplied: String): RequiredParameter =
    RequiredParameter("operation", supplied, "one of " + enumValues<E>().joinToString(", ") { it.name })

/**
 * Study D43: the `parameters` blob of an operation-dispatching tool as a [RequiredParameter]. When
 * the operation is known, [keys] lets the retry name that operation's own keys; either way it says
 * the arguments go inside the object, because the usual reason `parameters` arrives blank is that
 * the caller sent those arguments at the top level, where the binder drops them (D29).
 */
internal fun requiredParametersBlob(supplied: String, operation: String? = null, keys: ParameterKeys? = null): RequiredParameter {
    val owner = operation?.let { "$it's" } ?: "the operation's"
    val keyList = keys?.canonical?.takeIf { it.isNotEmpty() }?.joinToString(", ", prefix = " (keys: ", postfix = ")").orEmpty()
    return RequiredParameter(
        "parameters",
        supplied,
        "a JSON object holding $owner arguments$keyList, which go inside it rather than at the top level",
    )
}
