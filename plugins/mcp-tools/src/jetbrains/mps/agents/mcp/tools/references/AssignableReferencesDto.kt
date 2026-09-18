package jetbrains.mps.agents.mcp.tools.references


import com.google.gson.annotations.SerializedName

enum class ReferenceSearchMode {
    @SerializedName("exhaustive")
    EXHAUSTIVE,
    @Suppress("unused") // implicit else of the EXHAUSTIVE branch; populated via Gson
    @SerializedName("completion")
    COMPLETION
}

enum class ScopeMode {
    @SerializedName("local")
    LOCAL,
    @SerializedName("model")
    MODEL,
    @SerializedName("module")
    MODULE,
    @SerializedName("imports")
    IMPORTS,
    @SerializedName("project")
    PROJECT,
    @SerializedName("jdk")
    JDK
}

enum class CandidateKind {
    @SerializedName("constructors")
    CONSTRUCTOR,
    @SerializedName("instanceMethods")
    INSTANCE_METHOD,
    @SerializedName("staticMethods")
    STATIC_METHOD,
    @SerializedName("classes")
    CLASS,
    @SerializedName("unknown")
    UNKNOWN
}

enum class SortMode {
    @SerializedName("relevance")
    RELEVANCE,
    @SerializedName("name")
    NAME,
    @SerializedName("module")
    MODULE,
    @SerializedName("distance")
    DISTANCE
}

data class GetAssignableReferencesRequest(
    val contextNode: String? = null,
    val referenceRole: String? = null,
    val owningConcept: String? = null,
    val targetConcept: String? = null,
    val containmentLink: String? = null,
    val position: Int? = null,

    val mode: ReferenceSearchMode = ReferenceSearchMode.EXHAUSTIVE,
    val limit: Int? = null,
    val offset: Int? = null,

    val scopeMode: ScopeMode? = null,
    val includeModules: List<String>? = null,
    val excludeModules: List<String>? = null,

    val kindFilter: List<CandidateKind>? = null,
    val expectedDeclaringType: String? = null,
    val receiverType: String? = null,
    val argumentTypes: List<String>? = null,
    val argumentCount: Int? = null,

    val sortBy: SortMode = SortMode.RELEVANCE,
    val preferSameModel: Boolean = true,
    val preferSameModule: Boolean = true,
    val preferProjectCode: Boolean = true,

    val includeReason: Boolean = true,
    val includeTypeDistance: Boolean = true,
    val includeInaccessible: Boolean = false
)

data class AssignableReferenceCandidate(
    val name: String,
    val reference: String,
    val concept: String,
    val conceptReference: String? = null,
    val moduleReference: String? = null,
    val modelReference: String? = null,

    val kind: CandidateKind? = null,
    val declaringType: String? = null,
    val declaringTypeReference: String? = null,
    val signature: String? = null,

    val visible: Boolean = true,
    val accessible: Boolean = true,

    val matchKind: String? = null,
    val typeDistance: Int? = null,
    val score: Double? = null,
    val reason: List<String>? = null
)

data class AssignableReferencesMeta(
    val mode: ReferenceSearchMode,
    val scopeMode: ScopeMode?,
    val sortBy: SortMode,

    val totalMatches: Int,
    val returnedMatches: Int,
    val suppressedMatches: Int,
    val truncated: Boolean,

    val inferenceSummary: List<String>? = null
)

data class GetAssignableReferencesResponse(
    val ok: Boolean,
    val data: List<AssignableReferenceCandidate>,
    val meta: AssignableReferencesMeta? = null,
    val error: String? = null
)
