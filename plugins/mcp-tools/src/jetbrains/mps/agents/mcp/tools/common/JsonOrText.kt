package jetbrains.mps.agents.mcp.tools.common


import kotlinx.serialization.KSerializer
import kotlinx.serialization.Serializable
import kotlinx.serialization.descriptors.PrimitiveKind
import kotlinx.serialization.descriptors.PrimitiveSerialDescriptor
import kotlinx.serialization.descriptors.SerialDescriptor
import kotlinx.serialization.encoding.Decoder
import kotlinx.serialization.encoding.Encoder
import kotlinx.serialization.json.JsonDecoder
import kotlinx.serialization.json.JsonNull
import kotlinx.serialization.json.JsonPrimitive

/**
 * A top-level MCP tool parameter that carries JSON *text* and tolerates a client that sends the
 * real JSON value instead of its string form.
 *
 * The MCP schema for a tool parameter is derived from the parameter's Kotlin type, and the
 * platform's `CallableBridge` binds each argument by handing the request's raw [JsonElement] to
 * `serializerOrNull(parameter.type)`. A parameter declared `String` therefore gets
 * `StringSerializer`, which dies with `IndexOutOfBoundsException: Index -1 out of bounds for
 * length 0` (an empty tag-stack pop inside `TaggedDecoder`) as soon as the request carries a JSON
 * array or object — before the tool body runs, so no `try`/`catch` inside the tool can recover.
 * That is study defect D20: every parameter whose own description promises "or a JSON array of
 * them" crashes for a client that takes the description literally.
 *
 * [JsonOrTextSerializer] keeps the emitted schema byte-identical to `String`'s (its descriptor is
 * a `PrimitiveKind.STRING`, so the per-turn schema cost is unchanged) while accepting any JSON
 * shape on the wire:
 *  - a JSON string is unwrapped to its content, so a plain value and the array-as-string form
 *    behave exactly as they did before;
 *  - an array or object is re-serialised to its compact JSON text;
 *  - a number or boolean becomes its literal text;
 *  - `null` becomes the empty string, matching an omitted optional parameter.
 *
 * The resulting [text] is what the existing `parseStringOrJsonArray` /
 * `parseNullableStringOrJsonArray` helpers already consume.
 */
@Serializable(with = JsonOrTextSerializer::class)
class JsonOrText(val text: String) {
    companion object {
        val EMPTY: JsonOrText = JsonOrText("")

        /**
         * `CallableBridge.ensureSerializable` and the schema generator both resolve a parameter's
         * serializer through the *reflective* `kotlinx.serialization.serializerOrNull(KType)`,
         * which does not read `@Serializable(with = …)` — it looks for a `serializer()` method on
         * the companion, the same shape the serialization compiler plugin generates. Without this
         * function the platform rejects the parameter with "Type … is not serializable".
         */
        @JvmStatic
        fun serializer(): KSerializer<JsonOrText> = JsonOrTextSerializer
    }
}

object JsonOrTextSerializer : KSerializer<JsonOrText> {
    override val descriptor: SerialDescriptor =
        PrimitiveSerialDescriptor("jetbrains.mps.agents.mcp.tools.common.JsonOrText", PrimitiveKind.STRING)

    override fun deserialize(decoder: Decoder): JsonOrText {
        val jsonDecoder = decoder as? JsonDecoder ?: return JsonOrText(decoder.decodeString())
        val element = jsonDecoder.decodeJsonElement()
        return JsonOrText(
            when {
                element is JsonNull -> ""
                element is JsonPrimitive && element.isString -> element.content
                else -> element.toString()
            }
        )
    }

    override fun serialize(encoder: Encoder, value: JsonOrText) = encoder.encodeString(value.text)
}
