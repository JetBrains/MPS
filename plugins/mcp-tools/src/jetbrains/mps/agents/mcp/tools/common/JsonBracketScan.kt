package jetbrains.mps.agents.mcp.tools.common

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
