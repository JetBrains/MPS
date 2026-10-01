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

    data class Problem(val line: Int, val message: String)

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
                    message = it.javaClass.getMethod("getMessage").invoke(it) as? String ?: "syntax error"
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
}
