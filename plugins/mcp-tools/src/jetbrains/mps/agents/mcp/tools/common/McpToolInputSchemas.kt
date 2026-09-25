package jetbrains.mps.agents.mcp.tools.common


import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParseException
import com.google.gson.JsonParser
import com.google.gson.JsonPrimitive
import jetbrains.mps.java.core.newparser.FeatureKind

class ToolInputJsonException(message: String) : IllegalArgumentException(message)

/** [details] rides along into the error envelope, as `McpUserException.errorDetails` does. */
class ToolInputSchemaException(message: String, val details: Map<String, Any?> = emptyMap()) : IllegalArgumentException(message)

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
 *
 * [plural] is one more accepted spelling, for a single-valued key whose plural form sibling tools
 * take (`conceptRefs` on `mps_mcp_get_concept_details` and FIND_INSTANCES, study D55). It may carry
 * a single value or an array; before any reader sees it, [collapsePluralParameterKeys] checks its
 * shape and reduces it to one string — unless another spelling of the key is present too, which is
 * left for [paramString] to reject — so every reader of the key keeps working unchanged.
 */
internal class BlobKey(val canonical: String, vararg aliases: String, val plural: String? = null) {
  val spellings: List<String> = listOf(canonical, *aliases) + listOfNotNull(plural)

  /** This key, also accepting [plural]. For operations that take exactly one value of the key. */
  fun withPlural(plural: String): BlobKey {
    check(this.plural == null) { "'$canonical' already accepts the plural '${this.plural}'" }
    return BlobKey(canonical, *spellings.drop(1).toTypedArray(), plural = plural)
  }

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
 * Keys a `parameters` blob accepts in *every* operation, over and above the operation's own.
 *
 * `projectPath` is the platform's own top-level tool parameter, and the platform resolves the
 * target project from it *before* the tool body runs. A caller that also repeats it inside
 * `parameters` — the position agents reach for, because that is where every other value of the
 * call lives (study defect D18b) — is therefore not dropping anything: the value it carries has
 * already been applied. Tolerating it here is study remedy P5(a), "accept the key in either
 * position"; honouring it is impossible from inside the tool, because a call that omits the
 * top-level parameter is rejected before dispatch (see
 * `docs/projectpath-pre-dispatch-rejection-upstream.md`).
 */
internal val TOLERATED_PARAMETER_KEYS: Set<String> = setOf("projectPath")

/**
 * A requirement [rejectMissingParameterKeys] checks on an operation's `parameters` blob: at least
 * one of [alternatives] carries a value. [onlyWith] limits it to calls that carry that key (`role`
 * goes with MOVE_NODE_TO_PARENT's `newParentRef`); [unlessWith] waives it for calls that carry that
 * key (GET_ENUMERATION_LITERALS' property form, which `enumerationRef` replaces). [expected]
 * completes "Retry with <name> set to …".
 */
internal class RequiredKey(
  val alternatives: List<BlobKey>,
  val expected: String,
  val onlyWith: BlobKey? = null,
  val unlessWith: BlobKey? = null,
) {
  /** The key's canonical spelling, or `one of a/b` for a choice between keys. */
  val name: String = alternatives.singleOrNull()?.canonical
    ?: alternatives.joinToString("/", prefix = "one of ") { it.canonical }
}

internal fun required(key: BlobKey, expected: String, onlyWith: BlobKey? = null, unlessWith: BlobKey? = null): RequiredKey =
  RequiredKey(listOf(key), expected, onlyWith, unlessWith)

internal fun required(key: String, expected: String, onlyWith: BlobKey? = null, unlessWith: BlobKey? = null): RequiredKey =
  required(BlobKey(key), expected, onlyWith, unlessWith)

/** A choice: at least one of [keys], each a [BlobKey] or a [String], must carry a value. */
internal fun requiredOneOf(vararg keys: Any, expected: String): RequiredKey =
  RequiredKey(keys.map(::blobKeyOf), expected)

private fun blobKeyOf(key: Any): BlobKey = when (key) {
  is BlobKey -> key
  is String -> BlobKey(key)
  else -> throw IllegalArgumentException("A parameter key is a String, a BlobKey or a RequiredKey, got ${key.javaClass.name}")
}

/**
 * The keys one tool operation's `parameters` blob accepts, and which of them it requires.
 *
 * Built from [BlobKey]s (a key with alternative spellings), plain [String] keys, and
 * [RequiredKey]s. [canonical] is what an unknown-key rejection lists back — one entry per key, in
 * order of first appearance, never the alias spellings, which would double the length of the
 * message for no new information. A [RequiredKey] may name keys listed earlier, which keeps a
 * choice such as [requiredOneOf] from reordering the list. [required] is what
 * [rejectMissingParameterKeys] checks, in declaration order.
 */
internal class ParameterKeys private constructor(
  val canonical: List<String>,
  val accepted: Set<String>,
  val required: List<RequiredKey>,
  /** The keys that accept a [BlobKey.plural] spelling, which [collapsePluralParameterKeys] reads. */
  val withPlural: List<BlobKey>,
) {
  operator fun plus(other: ParameterKeys): ParameterKeys = ParameterKeys(
    canonical + other.canonical, accepted + other.accepted, required + other.required, withPlural + other.withPlural,
  )

  companion object {
    fun of(vararg keys: Any): ParameterKeys {
      val blobKeys = keys
        .flatMap { if (it is RequiredKey) it.alternatives else listOf(blobKeyOf(it)) }
        .distinctBy { it.canonical }
      return ParameterKeys(
        blobKeys.map { it.canonical },
        blobKeys.flatMapTo(LinkedHashSet()) { it.spellings },
        keys.filterIsInstance<RequiredKey>(),
        blobKeys.filter { it.plural != null },
      )
    }
  }
}

/**
 * Rejects an absent `parameters` blob, and any key of it that [keys] does not accept and that
 * carries a non-null value, naming the offending key, the closest accepted key when there is one,
 * and the whole accepted set.
 *
 * An unrecognised blob key used to be *dropped* — the blob is read key by key, so a misspelling
 * produced either a "Parameter 'X' is missing" for a value the caller did pass, or, worse, a
 * mutation performed under defaults the caller thought it had overridden (study defect D14b).
 * Rejecting is the same policy `mps_mcp_parse_java_and_insert` already applies to its own
 * blob, and the counterpart of the "reject the ignored key" rule [paramString] applies to two
 * spellings of one key.
 */
internal fun JsonObject?.rejectUnknownParameterKeys(context: String, keys: ParameterKeys) {
  // Gson answers `null` for a blank blob and for the literal `null`, which the dispatchers then
  // dereferenced into an opaque INTERNAL_ERROR. Reachable from the wire since `parameters` became
  // a [JsonOrText]: it maps a JSON null to the empty string.
  val params = this ?: throw ToolInputSchemaException(
    "'$PARAMETERS_PATH' must be a JSON object carrying the keys for $context, not empty or null. " +
      "Accepted: ${keys.canonical.joinToString(", ") { "'$it'" }}."
  )
  // A field-level JSON null carries no value, so an unrecognised key holding one drops nothing —
  // and "an explicit null counts as absent" is already the rule every reader on this surface
  // follows ([paramBoolean], [paramInt], [paramString]).
  val unknown = params.keySet().filterNot {
    it in keys.accepted || it in TOLERATED_PARAMETER_KEYS || params.get(it).isJsonNull
  }
  if (unknown.isEmpty()) return
  val named = unknown.joinToString(", ") { key ->
    val suggestion = suggestParameterName(key, keys.canonical)
    if (suggestion != null) "'$key' (did you mean '$suggestion'?)" else "'$key'"
  }
  throw ToolInputSchemaException(
    "Unknown ${if (unknown.size == 1) "parameter" else "parameters"} in '$PARAMETERS_PATH' for " +
      "$context: $named. Accepted: ${keys.canonical.joinToString(", ") { "'$it'" }}. " +
      "An unrecognised key is rejected rather than ignored, so a misspelling cannot silently " +
      "drop the value you passed."
  )
}

/**
 * Rejects every unmet [ParameterKeys.required] requirement, all of them in one message, so a
 * caller who omitted several keys learns about each on the first retry (study D49) — the blob
 * counterpart of `AbstractOps.rejectMissingParameters`. `details.missingParameters` lists their
 * [RequiredKey.name]s.
 *
 * Run it after [rejectUnknownParameterKeys]. A misspelled key has then already been rejected
 * with a suggestion, so unlike the top-level rejection this one names no near-misses. A key is
 * absent under the rule every reader here follows: no accepted spelling carries a non-null value.
 * An empty string or an ill-typed value is present, and left to the typed read that follows.
 */
internal fun JsonObject.rejectMissingParameterKeys(context: String, keys: ParameterKeys) {
  fun present(key: BlobKey) = key.spellings.any { optionalElement(it) != null }
  val missing = keys.required.filter { requirement ->
    requirement.alternatives.none(::present) &&
      requirement.onlyWith?.let(::present) != false &&
      requirement.unlessWith?.let(::present) != true
  }
  if (missing.isEmpty()) return
  throw ToolInputSchemaException(
    missingParameterKeysMessage(context, missing.map { RequiredParameter(it.name, "", it.expected) }),
    mapOf("missingParameters" to missing.map { it.name }),
  )
}

/**
 * Reduces the value sent under a [BlobKey.plural] spelling to one string, in place, and returns one
 * warning for every plural that carried more than one value. The value must have the shape
 * FIND_INSTANCES' `conceptRefs` accepts — a nonblank string, or a nonempty array of nonblank
 * strings — because the plural spelling carries none of the singular key's legacy `asString`
 * leniency. A plural sent beside another spelling of its key is left for [paramString] to reject
 * as two spellings, so the message names the conflict rather than the plural's shape.
 *
 * The first element is used rather than rejecting the call, because these are read-only operations
 * that take exactly one value, and the warning tells the caller to issue one call per value. Run it
 * after [rejectMissingParameterKeys], which already counts the plural spelling as present.
 */
internal fun JsonObject.collapsePluralParameterKeys(context: String, keys: ParameterKeys): List<String> =
  keys.withPlural.mapNotNull { key ->
    val plural = checkNotNull(key.plural)
    val value = optionalElement(plural) ?: return@mapNotNull null
    if (key.spellings.any { it != plural && optionalElement(it) != null }) return@mapNotNull null
    val values = pluralStrings(value, plural)
    add(plural, JsonPrimitive(values.first()))
    if (values.size == 1) return@mapNotNull null
    val ignored = values.size - 1
    "$context takes a single '${key.canonical}', so only the first of the ${values.size} values in " +
      "'$plural' was used ('${values.first()}'); " +
      (if (ignored == 1) "the other value was ignored. " else "the other $ignored were ignored. ") +
      "Call $context once per value."
  }

private fun pluralStrings(value: JsonElement, plural: String): List<String> {
  fun nonblankString(element: JsonElement): String? =
    element.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isString && it.asString.isNotBlank() }?.asString
  if (!value.isJsonArray) {
    return listOf(
      nonblankString(value) ?: throw ToolInputSchemaException(
        "'$PARAMETERS_PATH.$plural' must be a nonblank string or a nonempty array of nonblank strings"
      )
    )
  }
  val values = value.asJsonArray
  if (values.isEmpty) {
    throw ToolInputSchemaException("'$PARAMETERS_PATH.$plural' must be a nonempty array of nonblank strings")
  }
  return values.mapIndexed { index, element ->
    nonblankString(element)
      ?: throw ToolInputSchemaException("'$PARAMETERS_PATH.$plural[$index]' must be a nonblank string")
  }
}

/**
 * Returns the closest match from [candidates] for [input] if one is reasonably similar,
 * or null otherwise. "Reasonably similar" means edit distance <= max(2, length/3) — large
 * enough to catch a typo or a missing plural ('rebulid' -> 'rebuild', 'module' -> 'modules'),
 * strict enough that a merely *related* word gets no suggestion at all ('moduleName' -> none):
 * for those, the accepted-key list the rejection prints is what names the right key.
 */
internal fun suggestParameterName(input: String, candidates: Iterable<String>): String? {
  val threshold = maxOf(2, input.length / 3)
  return candidates
    .map { it to editDistance(input.lowercase(), it.lowercase()) }
    .filter { it.second <= threshold }
    .minByOrNull { it.second }
    ?.first
}

private fun editDistance(a: String, b: String): Int {
  if (a == b) return 0
  if (a.isEmpty()) return b.length
  if (b.isEmpty()) return a.length
  var prev = IntArray(b.length + 1) { it }
  var curr = IntArray(b.length + 1)
  for (i in 1..a.length) {
    curr[0] = i
    for (j in 1..b.length) {
      val cost = if (a[i - 1] == b[j - 1]) 0 else 1
      curr[j] = minOf(curr[j - 1] + 1, prev[j] + 1, prev[j - 1] + cost)
    }
    val tmp = prev; prev = curr; curr = tmp
  }
  return prev[b.length]
}

/**
 * FIND_INSTANCES' plural concept selector. There it is its own key, not a [BlobKey] spelling of
 * [PARAM_CONCEPT_REF], because it carries many concepts (a single reference or an array of them);
 * the two are mutually exclusive at the call site — see `AbstractNodeOps.requestedConceptRefs`.
 * The single-concept `mps_mcp_query_structure` operations accept it as the [BlobKey.plural] of
 * their concept key instead, reduced to one concept by [collapsePluralParameterKeys].
 */
internal const val PARAM_CONCEPT_REFS = "conceptRefs"

/**
 * The scope selectors [AbstractNodeOps.buildSearchScope] reads out of a `parameters` blob, shared
 * by every operation that takes a `scope`.
 */
internal val SEARCH_SCOPE_KEYS = ParameterKeys.of("scope", "models", "modules", "roots", "rootsOnly")

/**
 * FIND_INSTANCES' own keys. Lives here rather than beside one dispatcher because two tools route
 * to the same [AbstractNodeOps.opFindInstances]: `mps_mcp_query_nodes` and, still dispatching for
 * pre-move skill copies, `mps_mcp_query_structure`.
 */
internal val FIND_INSTANCES_KEYS = ParameterKeys.of(
  PARAM_CONCEPT_REF, PARAM_CONCEPT_REFS, "detail", "exact", "sampleOnly", "propertyFilter",
  requiredOneOf(
    PARAM_CONCEPT_REF, PARAM_CONCEPT_REFS,
    expected = "one concept reference or qualified name (conceptRef), or one or an array of them (conceptRefs)",
  ),
) + SEARCH_SCOPE_KEYS

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
 * Readers for a key its operation declares with [required], which [rejectMissingParameterKeys]
 * has therefore already found present. Absence here is a key read as required but not declared
 * so — a programming error, not the caller's.
 */
internal fun JsonObject.requiredParamString(key: BlobKey): String =
  checkNotNull(paramString(key)) { "'${key.canonical}' is read as required but not declared with required()" }

internal fun JsonObject.requiredParamString(field: String): String = requiredParamString(BlobKey(field))

internal fun JsonObject.requiredParamInt(field: String): Int =
  checkNotNull(paramInt(field)) { "'$field' is read as required but not declared with required()" }

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

private val JAVA_INSERT_PARAMETER_KEYS = ParameterKeys.of(
  "code", "featureKind", "recovery", "contextNodeRef", "insert", "postProcess",
)

fun parseJavaParseInsertRequest(parameters: String): JavaParseInsertRequest {
  val obj = parseParametersObject(parameters)
  // Reject unrecognized top-level keys so a misspelled or unsupported field fails loudly
  // instead of being silently dropped. In particular `dryRun` is NOT supported by this tool
  // (unlike `mps_mcp_update_node`); previously passing it was a no-op and the model was mutated
  // anyway, hiding caller misuse.
  obj.rejectUnknownParameterKeys("mps_mcp_parse_java_and_insert", JAVA_INSERT_PARAMETER_KEYS)
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
