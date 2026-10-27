package jetbrains.mps.agents.mcp.tools.java

import com.intellij.openapi.diagnostic.Logger
import jetbrains.mps.java.core.newparser.FeatureKind
import jetbrains.mps.java.core.newparser.JavaParser
import kotlinx.coroutines.CancellationException

/**
 * D68: recovers the ecj syntax errors that `JavaParser` records and then discards. Its
 * `JavaParseResult.errorMsg` only says "There were some problems", so a statement ecj had to repair
 * (statement recovery turns `a != null && b;` into the assignment `a = (null && b)`) came back as a
 * success with different code. This re-runs the same ecj call `JavaParser.parse` makes and reads
 * `recordedParsingInformation.problems`.
 *
 * Reflective because ecj (`CategorizedProblem`, `CompilerOptions`) is not on mcp-tools' compile
 * classpath; `CodeSnippetParsingUtil` itself is vendored into jetbrains.mps.java.core. The classes
 * are loaded through JavaParser's own classloader, which sees both. The source-of-truth fix is an
 * errors list on `JavaParser.JavaParseResult`, which needs an edit of the jetbrains.mps.java.core
 * model.
 */
internal object JavaSyntaxProblems {
    private val logger = Logger.getInstance(JavaSyntaxProblems::class.java)

    /** [sourceStart] is ecj's character offset in the parsed source; null when ecj did not give one. */
    data class Problem(val line: Int, val message: String, val sourceStart: Int? = null)

    /** D117: the `import` / `package` declarations a snippet starts with; [end] is the offset past the last `;`. */
    data class Header(val declarations: List<String>, val end: Int)

    // A declaration never holds these, so an import missing its `;` does not swallow the statement after it.
    private val HEADER_DECLARATION = Regex("""(?:import|package)\b[^;=(){}<>"]*;""").toPattern()
    private val BLOCK_COMMENT = Regex("""/\*.*?\*/""", RegexOption.DOT_MATCHES_ALL)
    private val WHITESPACE = Regex("""\s+""")

    /**
     * The syntax *errors* (not warnings) ecj records for [code] parsed as [featureKind] — the
     * effective kind `JavaParser.parse` receives. Returns null when the reflective call fails, so
     * the caller can fall back to `errorMsg`.
     */
    fun errors(code: String, featureKind: FeatureKind, recovery: Boolean): List<Problem>? {
        return try {
            val loader = JavaParser::class.java.classLoader
            val optionsClass = Class.forName("org.eclipse.jdt.internal.compiler.impl.CompilerOptions", true, loader)
            // The same settings JavaParser.parse uses.
            val settings = HashMap<String, String>()
            settings[optionsClass.getField("OPTION_Source").get(null) as String] =
                optionsClass.getField("VERSION_1_8").get(null) as String
            settings[optionsClass.getField("OPTION_DocCommentSupport").get(null) as String] = "enabled"

            val utilClass = Class.forName("org.eclipse.jdt.internal.core.util.CodeSnippetParsingUtil", true, loader)
            val util = utilClass.getConstructor(java.lang.Boolean.TYPE).newInstance(false)
            val source = code.toCharArray()
            when (featureKind) {
                FeatureKind.CLASS, FeatureKind.CLASS_STUB ->
                    utilClass.getMethod("parseCompilationUnit", CharArray::class.java, Map::class.java, java.lang.Boolean.TYPE)
                        .invoke(util, source, settings, true)
                FeatureKind.CLASS_CONTENT ->
                    utilClass.getMethod(
                        "parseClassBodyDeclarations", CharArray::class.java, Integer.TYPE, Integer.TYPE, Map::class.java,
                        java.lang.Boolean.TYPE, java.lang.Boolean.TYPE
                    ).invoke(util, source, 0, source.size, settings, true, recovery)
                FeatureKind.STATEMENTS ->
                    utilClass.getMethod(
                        "parseStatements", CharArray::class.java, Map::class.java, java.lang.Boolean.TYPE, java.lang.Boolean.TYPE
                    ).invoke(util, source, settings, true, recovery)
                else -> return null
            }

            val info = utilClass.getField("recordedParsingInformation").get(util) ?: return emptyList()
            val problems = info.javaClass.getField("problems").get(info) as? Array<*> ?: return emptyList()
            problems.filterNotNull().filter { it.javaClass.getMethod("isError").invoke(it) == true }.map {
                Problem(
                    line = it.javaClass.getMethod("getSourceLineNumber").invoke(it) as? Int ?: 0,
                    message = it.javaClass.getMethod("getMessage").invoke(it) as? String ?: "syntax error",
                    // Only D117's header pruning needs it, so a failure must not cost the other fields.
                    sourceStart = runCatching { it.javaClass.getMethod("getSourceStart").invoke(it) as? Int }
                        .getOrNull()
                )
            }
        } catch (e: Throwable) {
            if (e is CancellationException) throw e
            if (e is Error && e !is LinkageError) throw e
            logger.warn("Could not re-run ecj to read the Java syntax errors; falling back to JavaParser.errorMsg", e)
            null
        }
    }

    /** One line naming up to three errors, or null when there are none. */
    fun describe(problems: List<Problem>, isExpression: Boolean): String? {
        if (problems.isEmpty()) return null
        val shown = problems.take(3).joinToString("; ") { "line ${it.line}: ${it.message}" }
        val more = if (problems.size > 3) " (and ${problems.size - 3} more)" else ""
        val wrapper = if (isExpression) {
            " The EXPRESSION was parsed as the statement `Object __mcp_expr__ = <your expression>;`, " +
                "so token positions refer to that wrapper."
        } else ""
        return "$shown$more.$wrapper"
    }

    /**
     * D117: the `import` / `package` declarations [code] starts with, in order, each as written up to and
     * including its `;` (whitespace runs collapsed), or null when there is none. Whitespace and `//` / `/* */`
     * comments before and between them are skipped; scanning stops at the first other token. Only featureKind
     * CLASS accepts these, so a header explains the syntax errors of any other kind.
     */
    fun leadingHeader(code: String): Header? {
        val declarations = mutableListOf<String>()
        var end = -1
        val matcher = HEADER_DECLARATION.matcher(code)
        var pos = skipBlankAndComments(code, 0)
        while (pos < code.length && matcher.region(pos, code.length).lookingAt()) {
            declarations.add(matcher.group().replace(WHITESPACE, " "))
            end = matcher.end()
            pos = skipBlankAndComments(code, end)
        }
        return if (declarations.isEmpty()) null else Header(declarations, end)
    }

    /**
     * D117: why [declarations] fail under the requested [featureKindText], and what to write instead; null when
     * the list is empty. One wording for every insert mode: a child/replace into the console input is recognised
     * as a console insert only after parsing, so the console's import rule is named unconditionally.
     */
    fun headerHint(declarations: List<String>, featureKindText: String): String? {
        val first = declarations.firstOrNull() ?: return null
        val more = when (val rest = declarations.size - 1) {
            0 -> ""
            1 -> " (and 1 more declaration)"
            else -> " (and $rest more declarations)"
        }
        val cause = "The code starts with `$first`$more, but featureKind \"$featureKindText\" accepts no " +
            "`import` or `package` declarations."
        if (declarations.none { it.startsWith("import") }) return "$cause Remove the `package` declaration."
        val example = declarations.firstNotNullOfOrNull { qualifiedNameExample(it) }?.let { " (`$it`)" }.orEmpty()
        return "$cause Remove them and write the classes fully qualified$example: they resolve against the " +
            "target model's imports and module dependencies, and outside the MPS Console the tool imports the " +
            "models they point to, while console code needs " +
            "`mps_mcp_model_dependency(modelReference: \"console\", …)` first."
    }

    /**
     * D117: [problems] minus those inside the header, which ends at [headerEnd] in the caller's code. [offsetShift]
     * is how far the parsed source's offsets are ahead of the caller's (the EXPRESSION wrapper's prefix). A
     * problem without a usable offset is kept.
     */
    fun problemsAfterHeader(problems: List<Problem>, headerEnd: Int, offsetShift: Int): List<Problem> =
        problems.filter { problem ->
            val start = problem.sourceStart
            start == null || start < 0 || start - offsetShift >= headerEnd
        }

    // `import a.B;` -> `a.B`; `import static a.B.c;` / `import static a.B.*;` -> `a.B`; `import a.b.*;` ->
    // `a.b.<Class>`; a `package` declaration -> null.
    private fun qualifiedNameExample(declaration: String): String? {
        val body = declaration.replace(BLOCK_COMMENT, " ").removeSuffix(";").trim()
        if (!body.startsWith("import")) return null
        var name = body.removePrefix("import").trim()
        val isStatic = name.startsWith("static") && (name.length == 6 || !Character.isJavaIdentifierPart(name[6]))
        if (isStatic) name = name.removePrefix("static")
        name = name.replace(WHITESPACE, "")
        if (name.isEmpty()) return null
        return when {
            isStatic -> name.substringBeforeLast('.', name)
            name.endsWith(".*") -> name.removeSuffix("*") + "<Class>"
            else -> name
        }
    }

    private fun skipBlankAndComments(code: String, from: Int): Int {
        var pos = from
        while (pos < code.length) {
            pos = when {
                code[pos].isWhitespace() -> pos + 1
                code.startsWith("//", pos) -> code.indexOf('\n', pos).let { if (it < 0) code.length else it + 1 }
                code.startsWith("/*", pos) -> code.indexOf("*/", pos + 2).let { if (it < 0) code.length else it + 2 }
                else -> return pos
            }
        }
        return pos
    }
}
