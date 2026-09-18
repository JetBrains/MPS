package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParseException
import com.google.gson.JsonParser
import jetbrains.mps.java.core.newparser.FeatureKind

class ToolInputJsonException(message: String) : IllegalArgumentException(message)

class ToolInputSchemaException(message: String) : IllegalArgumentException(message)

/**
 * Type-checked boolean and integer readers for scalars inside a tool's `parameters` JSON blob
 * (`mps_mcp_alter_structure`, `mps_mcp_query_structure`, `mps_mcp_alter_nodes`,
 * `mps_mcp_query_nodes`).
 *
 * Use these instead of `params.get("x")?.asBoolean` / `?.asInt`. Gson's accessors read a number as
 * `false`, read a one-element array through to its element, wrap an out-of-range integer, and throw
 * an untyped exception on an explicit JSON `null`, an object, or an array that is not exactly one
 * element — which `toolFailure` could only report as `INTERNAL_ERROR` with no mention of the
 * offending key. These delegate to the same readers the blueprint parsers use, so both input paths
 * accept exactly the same shapes and produce the same message; an explicit `null` counts as absent.
 * [paramString] intentionally follows the separate null-only compatibility contract documented below.
 */
internal fun JsonObject.paramBoolean(field: String, default: Boolean): Boolean =
  optionalBoolean(field, PARAMETERS_PATH) ?: default

internal fun JsonObject.paramInt(field: String): Int? = optionalInt(field, PARAMETERS_PATH)

/**
 * Treats only an absent field or field-level JSON null as absent. All other values retain Gson's
 * existing [JsonElement.asString] coercions and failures.
 */
internal fun JsonObject.paramString(field: String): String? =
  get(field)?.takeUnless { it.isJsonNull }?.asString

private const val PARAMETERS_PATH = "parameters"

/**
 * A `parameters` blob key together with the alternative spellings it accepts.
 *
 * The tool surface carries two conventions for the same idea: blob keys use the short `…Ref`
 * suffix, top-level tool parameters the long `…Reference`. Both are load-bearing in existing call
 * sites and in the bundled skill scripts, so neither can be renamed — and three measured rounds of
 * the skill-optimisation study produced a new "wrong spelling" incident every time. Accepting the
 * other spelling inside the blob is free: a blob key is read out of one string parameter and never
 * appears in the published MCP schema, so unlike a top-level alias it costs nothing on the
 * per-turn schema floor. That asymmetry is why aliases stop at the blob boundary.
 */
internal class BlobKey(val canonical: String, vararg aliases: String) {
  val spellings: List<String> = listOf(canonical, *aliases)
  override fun toString(): String = canonical
}

internal val PARAM_CONCEPT_REF = BlobKey("conceptRef", "conceptReference")
internal val PARAM_SUPER_CONCEPT_REF = BlobKey("superConceptRef", "superConceptReference")
internal val PARAM_STRUCTURE_MODEL_REF = BlobKey("structureModelRef", "structureModelReference")
internal val PARAM_ENUMERATION_REF = BlobKey("enumerationRef", "enumerationReference")
internal val PARAM_NODE_REFERENCE = BlobKey("nodeReference", "nodeRef")
internal val PARAM_CHILD_NODE_REF = BlobKey("childNodeRef", "childNodeReference")
internal val PARAM_NEW_PARENT_REF = BlobKey("newParentRef", "newParentReference")
internal val PARAM_MODEL_REFERENCE = BlobKey("modelReference", "modelRef")

/**
 * FIND_INSTANCES' plural concept selector. Not a [BlobKey] spelling of [PARAM_CONCEPT_REF]: a
 * [BlobKey] groups spellings of one key that all carry one value, while this key carries many
 * (a single reference or an array of them). The two are mutually exclusive at the call site —
 * see `AbstractNodeOps.requestedConceptRefs`.
 */
internal const val PARAM_CONCEPT_REFS = "conceptRefs"

/**
 * FIND_INSTANCES' `detail` literals. `count` returns one `{concept, conceptReference, count}` row
 * per requested concept instead of the node records, so counting several concepts costs one call
 * and does not serialize a node per instance.
 */
internal const val DETAIL_NODES = "nodes"
internal const val DETAIL_COUNT = "count"

/**
 * Reads [key] under whichever accepted spelling is present. Two spellings present at once is
 * rejected rather than silently resolved — the same "reject the ignored key" policy as
 * [REFERENCES_ARE_SINGLE_VALUED] — because a caller who sent both cannot tell which one won.
 * A field-level JSON null counts as absent, exactly as it does for a single-spelling read.
 */
internal fun JsonObject.paramString(key: BlobKey): String? {
  val present = key.spellings.filter { optionalElement(it) != null }
  if (present.size > 1) {
    throw ToolInputSchemaException(
      "'$PARAMETERS_PATH' carries ${present.joinToString(" and ") { "'$it'" }}, which are the same " +
        "parameter under different spellings. Keep '${key.canonical}' and remove " +
        present.filterNot { it == key.canonical }.joinToString(", ") { "'$it'" } + "."
    )
  }
  return present.firstOrNull()?.let { paramString(it) }
}

/**
 * True when any accepted spelling of [key] is present with an explicit JSON null. Used where an
 * explicit null must be rejected rather than read as absence (`MOVE_NODE_TO_PARENT`'s
 * `newParentRef`, whose absence means "promote to root").
 */
internal fun JsonObject.paramIsExplicitNull(key: BlobKey): Boolean =
  key.spellings.any { has(it) && get(it).isJsonNull }

/**
 * Shared by every structure write that takes a reference cardinality: the bulk
 * `CREATE_CONCEPTS` blueprints and `UPDATE_CONCEPT_REFERENCE`. Both used to drop `multiple`
 * on a reference silently and produce a 0..1 link, which cost a study worker ~40 tool calls
 * to notice.
 */
internal const val REFERENCES_ARE_SINGLE_VALUED =
  "References are always single-valued in MPS; 'multiple' does not apply. " +
    "Model a 0..n reference as a smart-reference wrapper concept " +
    "(see the mps-aspect-structure-concepts skill)."

interface StructureMemberOwnerSpec {
  val name: String
  val properties: List<StructurePropertySpec>
  val children: List<StructureLinkSpec>
  val references: List<StructureLinkSpec>
}

data class StructurePropertySpec(
  val name: String,
  val type: String = "string",
)

data class StructureLinkSpec(
  val role: String,
  val target: String,
  val multiple: Boolean = false,
  val optional: Boolean = true,
)

data class StructureConceptSpec(
  override val name: String,
  val isAbstract: Boolean = false,
  val conceptAlias: String? = null,
  val shortDescription: String? = null,
  val rootable: Boolean = false,
  val virtualPackage: String? = null,
  val documentation: String? = null,
  override val properties: List<StructurePropertySpec> = emptyList(),
  override val children: List<StructureLinkSpec> = emptyList(),
  override val references: List<StructureLinkSpec> = emptyList(),
  val extendsRef: String? = null,
  val implementsRefs: List<String> = emptyList(),
) : StructureMemberOwnerSpec

data class StructureInterfaceConceptSpec(
  override val name: String,
  val shortDescription: String? = null,
  val virtualPackage: String? = null,
  val documentation: String? = null,
  override val properties: List<StructurePropertySpec> = emptyList(),
  override val children: List<StructureLinkSpec> = emptyList(),
  override val references: List<StructureLinkSpec> = emptyList(),
  val extendedInterfaces: List<String> = emptyList(),
) : StructureMemberOwnerSpec

data class EnumValueSpec(
  val enumName: String,
  val enumPresentation: String? = null,
)

data class JavaInsertTarget(
  val mode: String,
  val modelRef: String? = null,
  val parentRef: String? = null,
  val targetRef: String? = null,
  val role: String? = null,
  val position: Int? = null,
  val virtualPackage: String? = null,
)

data class JavaParseInsertRequest(
  val code: String,
  val featureKind: FeatureKind,
  val featureKindText: String,
  val isExpression: Boolean,
  val recovery: Boolean,
  val contextNodeRef: String?,
  val insert: JavaInsertTarget,
  val importUsedLanguages: Boolean,
  val resolveReferences: Boolean,
)

fun parseStructureConceptSpecs(json: String, sourceName: String): List<StructureConceptSpec> {
  return parseArray(json, sourceName).mapIndexed { index, element ->
    val path = "$sourceName[$index]"
    val obj = element.asRequiredObject(path)
    StructureConceptSpec(
      name = obj.requiredString("name", path),
      isAbstract = obj.optionalBoolean("abstract", path) ?: false,
      conceptAlias = obj.optionalString("conceptAlias", path),
      shortDescription = obj.optionalString("shortDescription", path),
      rootable = obj.optionalBoolean("rootable", path) ?: false,
      virtualPackage = obj.optionalStringAlias(listOf("virtualPackage", "virtual package", "virtualFolder", "virtual folder"), path),
      documentation = obj.optionalString("documentation", path),
      properties = obj.optionalProperties(path),
      children = obj.optionalLinks("children", path, multiValuedAllowed = true),
      references = obj.optionalLinks("references", path, multiValuedAllowed = false),
      extendsRef = obj.optionalString("extends", path),
      implementsRefs = obj.optionalStringListOrString("implements", path).orEmpty(),
    )
  }
}

fun parseStructureInterfaceConceptSpecs(json: String, sourceName: String): List<StructureInterfaceConceptSpec> {
  return parseArray(json, sourceName).mapIndexed { index, element ->
    val path = "$sourceName[$index]"
    val obj = element.asRequiredObject(path)
    StructureInterfaceConceptSpec(
      name = obj.requiredString("name", path),
      shortDescription = obj.optionalString("shortDescription", path),
      virtualPackage = obj.optionalStringAlias(listOf("virtualPackage", "virtual package", "virtualFolder", "virtual folder"), path),
      documentation = obj.optionalString("documentation", path),
      properties = obj.optionalProperties(path),
      children = obj.optionalLinks("children", path, multiValuedAllowed = true),
      references = obj.optionalLinks("references", path, multiValuedAllowed = false),
      extendedInterfaces = obj.optionalStringListOrString(listOf("extendedInterfaces", "extended interfaces", "extends"), path).orEmpty(),
    )
  }
}

fun parseEnumValueSpecs(json: String, sourceName: String = "valuesJson"): List<EnumValueSpec> {
  return parseArray(json, sourceName).mapIndexed { index, element ->
    val path = "$sourceName[$index]"
    val obj = element.asRequiredObject(path)
    EnumValueSpec(
      enumName = obj.requiredString("enumName", path),
      enumPresentation = obj.optionalString("enumPresentation", path),
    )
  }
}

fun parseJavaParseInsertRequest(parameters: String): JavaParseInsertRequest {
  val obj = parseParametersObject(parameters)
  // Reject unrecognized top-level keys so a misspelled or unsupported field fails loudly
  // instead of being silently dropped. In particular `dryRun` is NOT supported by this tool
  // (unlike `mps_mcp_update_node`); previously passing it was a no-op and the model was mutated
  // anyway, hiding caller misuse.
  obj.rejectUnknownKeys(setOf("code", "featureKind", "recovery", "contextNodeRef", "insert", "postProcess"), "parameters")
  val code = obj.requiredString("code", "parameters")
  if (code.length > 50_000) {
    throw ToolInputSchemaException("Code exceeds maximum allowed length of 50_000 characters")
  }

  val featureKindText = obj.requiredString("featureKind", "parameters")
  if (featureKindText == "CLASS_STUB") {
    throw ToolInputSchemaException("featureKind 'CLASS_STUB' is not supported")
  }
  val isExpression = featureKindText == "EXPRESSION"
  val featureKind = if (isExpression) {
    FeatureKind.STATEMENTS
  }
  else {
    try {
      FeatureKind.valueOf(featureKindText)
    }
    catch (_: IllegalArgumentException) {
      throw ToolInputSchemaException("Unknown featureKind: '$featureKindText'")
    }
  }

  val recovery = obj.optionalBoolean("recovery", "parameters") ?: true
  val contextNodeRef = obj.optionalString("contextNodeRef", "parameters")
  if (contextNodeRef.isNullOrEmpty() &&
      (featureKind == FeatureKind.FIELD || featureKind == FeatureKind.METHOD ||
       featureKind == FeatureKind.NESTED_CLASS || featureKind == FeatureKind.CLASS_CONTENT)) {
    throw ToolInputSchemaException("'contextNodeRef' is required for featureKind '$featureKindText' to provide the target Classifier (or ConceptBehavior for METHOD/CLASS_CONTENT)")
  }

  val insertObj = obj.requiredObject("insert", "parameters")
  val insertPath = "parameters.insert"
  insertObj.rejectUnknownKeys(
    setOf("mode", "modelRef", "parentRef", "targetRef", "role", "position", "virtualPackage"),
    insertPath
  )
  val mode = insertObj.requiredString("mode", insertPath)
  val insertTarget = JavaInsertTarget(
    mode = mode,
    modelRef = insertObj.optionalString("modelRef", insertPath),
    parentRef = insertObj.optionalString("parentRef", insertPath),
    targetRef = insertObj.optionalString("targetRef", insertPath),
    role = insertObj.optionalString("role", insertPath),
    position = insertObj.optionalInt("position", insertPath),
    virtualPackage = insertObj.optionalString("virtualPackage", insertPath),
  )
  validateInsertTarget(insertTarget)

  val postProcess = obj.optionalObject("postProcess", "parameters")
  postProcess?.rejectUnknownKeys(setOf("importUsedLanguages", "resolveReferences"), "parameters.postProcess")
  return JavaParseInsertRequest(
    code = code,
    featureKind = featureKind,
    featureKindText = featureKindText,
    isExpression = isExpression,
    recovery = recovery,
    contextNodeRef = contextNodeRef,
    insert = insertTarget,
    importUsedLanguages = postProcess?.optionalBoolean("importUsedLanguages", "parameters.postProcess") ?: true,
    resolveReferences = postProcess?.optionalBoolean("resolveReferences", "parameters.postProcess") ?: true,
  )
}

private fun validateInsertTarget(insertTarget: JavaInsertTarget) {
  when (insertTarget.mode) {
    "root" -> {
      if (insertTarget.modelRef.isNullOrEmpty()) {
        throw ToolInputSchemaException("'modelRef' is required for root insertion")
      }
      // Roots are always appended; their order in the model cannot be controlled through
      // `position`. Reject any position that implies ordering (e.g. 0 to prepend) instead of
      // silently discarding it, which previously misled callers into thinking it had taken
      // effect. The append sentinel (-1) and absence stay valid because they ask for the exact
      // behavior roots already have.
      if (insertTarget.position != null && insertTarget.position != -1) {
        throw ToolInputSchemaException(
          "'position' is not supported for root insertion: root nodes are always appended and " +
            "their order cannot be controlled. Remove 'position' (or pass -1) from the insert object."
        )
      }
    }
    "child" -> {
      if (insertTarget.parentRef.isNullOrEmpty()) {
        throw ToolInputSchemaException("'parentRef' is required for child insertion")
      }
      if (insertTarget.role.isNullOrEmpty()) {
        throw ToolInputSchemaException("'role' is required for child insertion")
      }
    }
    "replace" -> {
      if (insertTarget.targetRef.isNullOrEmpty()) {
        throw ToolInputSchemaException("'targetRef' is required for replace mode")
      }
    }
    "console" -> {
      if (!insertTarget.modelRef.isNullOrEmpty() || !insertTarget.parentRef.isNullOrEmpty() ||
          !insertTarget.targetRef.isNullOrEmpty() || !insertTarget.role.isNullOrEmpty() ||
          insertTarget.position != null || !insertTarget.virtualPackage.isNullOrEmpty()) {
        throw ToolInputSchemaException("insert.mode 'console' only accepts 'mode'; for nested console edits use 'child' or 'replace' with a parentRef/targetRef that resolves to a node inside the current console command")
      }
    }
    else -> throw ToolInputSchemaException("Unknown insert.mode '${insertTarget.mode}'")
  }
}

private fun parseArray(json: String, sourceName: String): JsonArray {
  val element = parseElement(json, sourceName)
  if (!element.isJsonArray) {
    throw ToolInputSchemaException("$sourceName must be a JSON array")
  }
  return element.asJsonArray
}

private fun parseParametersObject(json: String): JsonObject {
  val element = parseElement(json, "parameters")
  if (!element.isJsonObject) {
    throw ToolInputSchemaException("parameters must be a JSON object")
  }
  return element.asJsonObject
}

private fun parseElement(json: String, sourceName: String): JsonElement {
  if (json.isBlank()) {
    throw ToolInputSchemaException("$sourceName must not be blank")
  }
  try {
    return JsonParser.parseString(json)
  }
  catch (e: JsonParseException) {
    throw ToolInputJsonException("Invalid JSON for $sourceName: ${e.message ?: "Invalid JSON syntax"}")
  }
}

private fun JsonObject.rejectUnknownKeys(allowed: Set<String>, path: String) {
  val unknown = keySet().filterNot { it in allowed }
  if (unknown.isNotEmpty()) {
    throw ToolInputSchemaException(
      "Unknown ${if (unknown.size == 1) "parameter" else "parameters"} in '$path': " +
        "${unknown.sorted().joinToString(", ")}. Allowed: ${allowed.sorted().joinToString(", ")}."
    )
  }
}

private fun JsonElement.asRequiredObject(path: String): JsonObject {
  if (!isJsonObject) {
    throw ToolInputSchemaException("$path must be a JSON object")
  }
  return asJsonObject
}

private fun JsonObject.requiredObject(field: String, path: String): JsonObject {
  val element = optionalElement(field) ?: throw ToolInputSchemaException("Missing '$path.$field' object")
  if (!element.isJsonObject) {
    throw ToolInputSchemaException("'$path.$field' must be a JSON object")
  }
  return element.asJsonObject
}

private fun JsonObject.optionalObject(field: String, path: String): JsonObject? {
  val element = optionalElement(field) ?: return null
  if (!element.isJsonObject) {
    throw ToolInputSchemaException("'$path.$field' must be a JSON object")
  }
  return element.asJsonObject
}

private fun JsonObject.requiredString(field: String, path: String): String {
  val value = optionalString(field, path)
  if (value.isNullOrBlank()) {
    throw ToolInputSchemaException("Missing '$path.$field'")
  }
  return value
}

private fun JsonObject.optionalString(field: String, path: String): String? {
  val element = optionalElement(field) ?: return null
  if (!element.isJsonPrimitive || !element.asJsonPrimitive.isString) {
    throw ToolInputSchemaException("'$path.$field' must be a string")
  }
  return element.asString
}

private fun JsonObject.optionalStringAlias(fields: List<String>, path: String): String? {
  for (field in fields) {
    val value = optionalString(field, path) ?: continue
    return value
  }
  return null
}

private fun JsonObject.optionalBoolean(field: String, path: String): Boolean? {
  val element = optionalElement(field) ?: return null
  val primitive = element.takeIf { it.isJsonPrimitive }?.asJsonPrimitive
  if (primitive != null) {
    if (primitive.isBoolean) {
      return primitive.asBoolean
    }
    // Tolerate the stringified form: MCP clients routinely quote booleans. Only the literal, in
    // any case — no surrounding whitespace, so the tolerance matches optionalInt's (`"3"` yes,
    // `" 3"` no). Nothing else: gson's `asBoolean` reads a number, `"yes"` and `""` all as
    // `false`, which is the silent-wrong-value case this reader exists to remove.
    if (primitive.isString) {
      when (primitive.asString.lowercase()) {
        "true" -> return true
        "false" -> return false
      }
    }
  }
  throw ToolInputSchemaException("'$path.$field' must be a boolean")
}

private fun JsonObject.optionalInt(field: String, path: String): Int? {
  val element = optionalElement(field) ?: return null
  // A quoted integer is tolerated for the same reason as a quoted boolean. The BigDecimal parse
  // below rejects a string that is not a number at all (`"x"`, `" 3"`) and `intValueExact` rejects
  // one that is not a whole int (`"3.5"`, and `2147483648`, which gson's `asInt` silently wrapped).
  val primitive = element.takeIf { it.isJsonPrimitive }?.asJsonPrimitive
  if (primitive == null || !(primitive.isNumber || primitive.isString)) {
    throw ToolInputSchemaException("'$path.$field' must be an integer")
  }
  val number = try {
    java.math.BigDecimal(element.asString)
  }
  catch (_: NumberFormatException) {
    throw ToolInputSchemaException("'$path.$field' must be an integer")
  }
  return try {
    number.intValueExact()
  }
  catch (_: ArithmeticException) {
    throw ToolInputSchemaException("'$path.$field' must be an integer")
  }
}

private fun JsonObject.optionalStringListOrString(field: String, path: String): List<String>? {
  val element = optionalElement(field) ?: return null
  return stringListOrString(element, "$path.$field")
}

private fun JsonObject.optionalStringListOrString(fields: List<String>, path: String): List<String>? {
  for (field in fields) {
    val element = optionalElement(field) ?: continue
    return stringListOrString(element, "$path.$field")
  }
  return null
}

private fun stringListOrString(element: JsonElement, path: String): List<String> {
  if (element.isJsonPrimitive && element.asJsonPrimitive.isString) {
    val value = element.asString
    if (value.isBlank()) {
      throw ToolInputSchemaException("'$path' must not be blank")
    }
    return listOf(value)
  }
  if (!element.isJsonArray) {
    throw ToolInputSchemaException("'$path' must be a string or an array of strings")
  }
  return element.asJsonArray.mapIndexed { index, item ->
    if (!item.isJsonPrimitive || !item.asJsonPrimitive.isString) {
      throw ToolInputSchemaException("'$path[$index]' must be a string")
    }
    if (item.asString.isBlank()) {
      throw ToolInputSchemaException("'$path[$index]' must not be blank")
    }
    item.asString
  }
}

private fun JsonObject.optionalProperties(path: String): List<StructurePropertySpec> {
  val element = optionalElement("properties") ?: return emptyList()
  if (!element.isJsonArray) {
    throw ToolInputSchemaException("'$path.properties' must be an array")
  }
  return element.asJsonArray.mapIndexed { index, item ->
    val itemPath = "$path.properties[$index]"
    val itemObj = item.asRequiredObject(itemPath)
    StructurePropertySpec(
      name = itemObj.requiredString("name", itemPath),
      type = itemObj.optionalString("type", itemPath) ?: "string",
    )
  }
}

private fun JsonObject.optionalLinks(
  field: String,
  path: String,
  /**
   * Only a child link can be multi-valued. Passed in rather than derived from [field] so that
   * adding a key alias (the way `virtualPackage` has several spellings) cannot silently let a
   * reference through with `multiple: true`.
   */
  multiValuedAllowed: Boolean,
): List<StructureLinkSpec> {
  val element = optionalElement(field) ?: return emptyList()
  if (!element.isJsonArray) {
    throw ToolInputSchemaException("'$path.$field' must be an array")
  }
  return element.asJsonArray.mapIndexed { index, item ->
    val itemPath = "$path.$field[$index]"
    val itemObj = item.asRequiredObject(itemPath)
    val multiple = itemObj.optionalBoolean("multiple", itemPath) ?: false
    // `multiple: false` is truthful and stays accepted; `true` would otherwise be honoured for
    // a child and dropped for a reference within the same blueprint.
    if (multiple && !multiValuedAllowed) {
      throw ToolInputSchemaException("'$itemPath.multiple': $REFERENCES_ARE_SINGLE_VALUED")
    }
    StructureLinkSpec(
      role = itemObj.requiredString("role", itemPath),
      target = itemObj.requiredString("target", itemPath),
      multiple = multiple,
      optional = itemObj.optionalBoolean("optional", itemPath) ?: true,
    )
  }
}

private fun JsonObject.optionalElement(field: String): JsonElement? {
  if (!has(field)) {
    return null
  }
  val element = get(field)
  if (element == null || element.isJsonNull) {
    return null
  }
  return element
}
