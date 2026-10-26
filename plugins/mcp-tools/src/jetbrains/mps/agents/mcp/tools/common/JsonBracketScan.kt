package jetbrains.mps.agents.mcp.tools.common

/** Inline JSON longer than this is rejected; a longer value must be passed as a temp-file path. */
internal const val MAX_INLINE_JSON_CHARS = 4096

private const val TROUBLESHOOTING_POINTER = "See mps-node-editing/references/troubleshooting.md."

/**
 * What a JSON syntax error advises: [FILE] for inputs that also accept a temp-file path, [INLINE] for
 * inputs that must be inline, and [inlineOnly] for an inline blob whose nested values may be files.
 */
class JsonInputGuidance private constructor(private val fileCapable: Boolean, private val nestedFileKeys: List<String>) {
    internal fun text(json: String): String = when {
        fileCapable ->
            "received ${json.length} chars (inline limit $MAX_INLINE_JSON_CHARS). " +
                    (if (json.length <= MAX_INLINE_JSON_CHARS) "Pass an absolute temp-file path instead of inline JSON. " else "") +
                    TROUBLESHOOTING_POINTER
        nestedFileKeys.isEmpty() -> TROUBLESHOOTING_POINTER
        nestedFileKeys.size == 1 -> "`parameters` itself must be inline; move ${nestedFileKeys.single()} into a temp file " +
                "and pass its absolute path instead. $TROUBLESHOOTING_POINTER"
        else -> "`parameters` itself must be inline; move each of ${nestedFileKeys.joinToString(" / ")} into its own temp file " +
                "and pass that file's absolute path instead. $TROUBLESHOOTING_POINTER"
    }

    companion object {
        val FILE = JsonInputGuidance(true, emptyList())
        val INLINE = JsonInputGuidance(false, emptyList())

        fun inlineOnly(nestedFileKeys: List<String>): JsonInputGuidance =
            if (nestedFileKeys.isEmpty()) INLINE else JsonInputGuidance(false, nestedFileKeys)
    }
}

/** Turns a Gson syntax failure into a [JsonBracketScan] diagnosis with an excerpt and next-step guidance. */
internal object JsonSyntaxErrors {
    private const val EXCERPT_RADIUS = 80
    private const val MAX_LISTED_CLOSERS = 8

    private class JsonSyntaxDiagnosis(
        val text: String,
        val scanLine: Int?,
        val scanColumn: Int?,
        val addsGuidance: Boolean,
    )

    /** Describes a Gson syntax failure of [json]: the bracket-scan diagnosis, an excerpt with a caret, and [guidance] on what to do next. */
    fun describe(json: String, rawMessage: String, guidance: JsonInputGuidance): String {
        // The bracket scan decides what went wrong, unless Gson stopped earlier than the scan's position
        // for another reason. Gson parses leniently, so its "Use JsonReader.setStrictness(...)" text can
        // only mean trailing content, and its troubleshooting link is no help to the caller.
        val gsonMessage = rawMessage.lineSequence().first()
            .replace(Regex("Use JsonReader\\.\\S+ to accept malformed JSON"), "Malformed JSON")
            .replace(Regex("^[\\w.$]+(Exception|Error): "), "")
        val located = Regex("at line (\\d+) column (\\d+)").find(gsonMessage)
        val gsonLine = located?.groupValues?.get(1)?.toInt()
        val gsonColumn = located?.groupValues?.get(2)?.toInt()
        val diagnosis = JsonBracketScan.scan(json)?.let { diagnoseJsonScan(it) }
        val gsonStoppedFirst = diagnosis != null && gsonLine != null && gsonColumn != null &&
                gsonStoppedBeforeScan(json, diagnosis, gsonLine, gsonColumn)

        val head = when {
            diagnosis == null -> gsonMessage
            located == null -> diagnosis.text
            gsonStoppedFirst -> "Parser: $gsonMessage\nFurther on: ${diagnosis.text}"
            else -> "${diagnosis.text}\nParser: ${gsonMessage.substring(located.range.first)}"
        }
        val line = if (gsonStoppedFirst) gsonLine else diagnosis?.scanLine ?: gsonLine
        val column = if (gsonStoppedFirst) gsonColumn else diagnosis?.scanColumn ?: gsonColumn
        val parts = mutableListOf(head)
        if (line != null && column != null) parts.add(getJsonExcerpt(json, line, column))
        if (diagnosis != null && diagnosis.addsGuidance) parts.add(guidance.text(json))
        return parts.joinToString("\n\n")
    }

    /** Gson's column is the offending character's own or one past it, never before the scan's; a finding without a position sits at the end of input. */
    private fun gsonStoppedBeforeScan(json: String, diagnosis: JsonSyntaxDiagnosis, gsonLine: Int, gsonColumn: Int): Boolean {
        val scanLine = diagnosis.scanLine
        val scanColumn = diagnosis.scanColumn
        if (scanLine != null && scanColumn != null) {
            return gsonLine < scanLine || (gsonLine == scanLine && gsonColumn < scanColumn)
        }
        val endLine = json.count { it == '\n' } + 1
        val endColumn = json.length - json.lastIndexOf('\n')
        return gsonLine < endLine || (gsonLine == endLine && gsonColumn < endColumn)
    }

    private fun diagnoseJsonScan(finding: JsonBracketScan.Finding): JsonSyntaxDiagnosis = when (finding) {
        is JsonBracketScan.Finding.UnterminatedString -> JsonSyntaxDiagnosis(
            "unterminated string opened at line ${finding.line} column ${finding.column} \u2014 " +
                    "the input may have been cut off, or a `\"` inside a string is unescaped",
            finding.line, finding.column, true,
        )
        is JsonBracketScan.Finding.MissingClosers -> {
            val shown = finding.missing.take(MAX_LISTED_CLOSERS).joinToString(" then ") { "'$it'" }
            val more = if (finding.missing.size > MAX_LISTED_CLOSERS) " and ${finding.missing.size - MAX_LISTED_CLOSERS} more" else ""
            JsonSyntaxDiagnosis(
                "unbalanced: ${finding.missing.size} closer(s) missing at the end of input: $shown$more. " +
                        "The position of the omission cannot be inferred from counts (the path on the Parser line " +
                        "shows where parsing stopped); appending the missing closers usually " +
                        "parses but may nest later roles under the wrong node, so re-check the structure.",
                null, null, true,
            )
        }
        is JsonBracketScan.Finding.MismatchedCloser -> {
            JsonSyntaxDiagnosis(
                "unbalanced: '${finding.closer}' at line ${finding.line} column ${finding.column} closes the " +
                        "'${finding.opener}' opened at line ${finding.openerLine} column ${finding.openerColumn}: " +
                        "a '${JsonBracketScan.closerFor(finding.opener)}' is missing before it",
                finding.line, finding.column, true,
            )
        }
        is JsonBracketScan.Finding.ExtraClosers -> JsonSyntaxDiagnosis(
            "unbalanced: ${finding.count} extra closer(s) after the top-level value ended, " +
                    "the first at line ${finding.line} column ${finding.column}",
            finding.line, finding.column, true,
        )
        is JsonBracketScan.Finding.TrailingContent -> JsonSyntaxDiagnosis(
            "unexpected content after the top-level value at line ${finding.line} column ${finding.column}",
            finding.line, finding.column, false,
        )
    }

    /** Shows the lines around [line] with a caret under [column]; long lines are cut to a window around the caret. */
    private fun getJsonExcerpt(json: String, line: Int, column: Int): String {
        val lines = json.split('\n')
        val result = StringBuilder()
        val startLine = (line - 3).coerceAtLeast(0)
        val endLine = (line + 2).coerceAtMost(lines.size - 1)

        for (i in startLine..endLine) {
            val currentLine = lines[i].trimEnd('\r')
            val lineNumber = i + 1
            val isErrorLine = lineNumber == line
            val prefix = if (isErrorLine) "-> " else "   "
            val caret = if (isErrorLine) (column - 1).coerceIn(0, currentLine.length) else 0
            val from = (caret - EXCERPT_RADIUS).coerceAtLeast(0)
            val to = (if (isErrorLine) caret + EXCERPT_RADIUS else 2 * EXCERPT_RADIUS).coerceAtMost(currentLine.length)
            val lead = if (from > 0) "..." else ""
            val tail = if (to < currentLine.length) "..." else ""
            result.append(String.format("%s%4d | %s%s%s\n", prefix, lineNumber, lead, currentLine.substring(from, to), tail))
            if (isErrorLine) {
                result.append("          ").append(" ".repeat(lead.length)) // 10 spaces to match "   XXXX | " (3 + 4 + 3)
                for (j in from until caret) {
                    result.append(if (currentLine[j] == '\t') '\t' else ' ')
                }
                result.append("^\n")
            }
        }
        return result.toString().trimEnd('\n')
    }
}

/**
 * A string-aware, O(n) bracket scan over JSON text that failed to parse. It gives a diagnosis of
 * the likely cause, not a certainty: it recognises only `"` strings (backslash escapes skipped) and
 * stops at the first finding. Lines and columns are 1-based and count `\n` only, as Gson's do, but
 * a column is the offending character's own, where Gson reports one past it.
 */
internal object JsonBracketScan {
    sealed class Finding {
        /** The input ends inside a string that was opened at [line]/[column]. */
        data class UnterminatedString(val line: Int, val column: Int) : Finding()

        /** The input ends with [missing] closers outstanding, innermost first. */
        data class MissingClosers(val missing: List<Char>) : Finding()

        /** [closer] at [line]/[column] does not match the [opener] opened at [openerLine]/[openerColumn]. */
        data class MismatchedCloser(
            val closer: Char, val line: Int, val column: Int,
            val opener: Char, val openerLine: Int, val openerColumn: Int,
        ) : Finding()

        /** [count] closers follow a completed top-level value, the first at [line]/[column]. */
        data class ExtraClosers(val count: Int, val line: Int, val column: Int) : Finding()

        /** Non-closer content follows a completed top-level value, at [line]/[column]. */
        data class TrailingContent(val line: Int, val column: Int) : Finding()
    }

    private class Open(val char: Char, val line: Int, val column: Int)

    fun scan(json: String): Finding? {
        val stack = ArrayList<Open>()
        var topLevelEnded = false
        var line = 1
        var column = 1
        var i = 0
        while (i < json.length) {
            val c = json[i]
            if (topLevelEnded && !c.isWhitespace()) {
                if (!isCloser(c)) return Finding.TrailingContent(line, column)
                return Finding.ExtraClosers(countConsecutiveClosers(json, i), line, column)
            }
            when {
                c == '"' -> {
                    val startLine = line
                    val startColumn = column
                    i++
                    column++
                    var closed = false
                    while (i < json.length) {
                        val s = json[i]
                        if (s == '\\' && i + 1 < json.length) {
                            if (json[i + 1] == '\n') {
                                line++
                                column = 1
                            } else {
                                column += 2
                            }
                            i += 2
                            continue
                        }
                        i++
                        if (s == '\n') {
                            line++
                            column = 1
                        } else {
                            column++
                        }
                        if (s == '"') {
                            closed = true
                            break
                        }
                    }
                    if (!closed) return Finding.UnterminatedString(startLine, startColumn)
                    if (stack.isEmpty()) topLevelEnded = true
                    continue
                }
                c == '{' || c == '[' -> stack.add(Open(c, line, column))
                isCloser(c) -> {
                    val open = stack.lastOrNull() ?: return null
                    if (closerFor(open.char) != c) {
                        return Finding.MismatchedCloser(c, line, column, open.char, open.line, open.column)
                    }
                    stack.removeAt(stack.size - 1)
                    if (stack.isEmpty()) topLevelEnded = true
                }
            }
            if (c == '\n') {
                line++
                column = 1
            } else {
                column++
            }
            i++
        }
        return if (stack.isEmpty()) null else Finding.MissingClosers(stack.asReversed().map { closerFor(it.char) })
    }

    private fun isCloser(c: Char) = c == '}' || c == ']'

    fun closerFor(opener: Char) = if (opener == '{') '}' else ']'

    private fun countConsecutiveClosers(json: String, from: Int): Int {
        var count = 0
        for (k in from until json.length) {
            val c = json[k]
            if (isCloser(c)) count++ else if (!c.isWhitespace()) break
        }
        return count
    }
}
