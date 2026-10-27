package jetbrains.mps.agents.mcp.tools.common

import java.io.BufferedReader
import java.io.InputStreamReader
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.time.LocalDateTime
import java.time.OffsetDateTime
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.regex.Pattern
import java.util.regex.PatternSyntaxException

/**
 * Reads the IDE log (`idea.log` plus its rotated `idea.N.log` siblings) into records and filters
 * them. Pure file IO with no IDE dependency, so `mps_mcp_read_ide_log` stays unit-testable.
 *
 * A record starts at a line of the form `yyyy-MM-dd HH:mm:ss,SSS [uptime-ms] LEVEL - category - message`;
 * every following line that does not start that way (a stack trace, IDE/JDK details) belongs to it.
 *
 * The file outlives the IDE process that wrote its tail: `idea.log` is not truncated on start, so a
 * fresh process reads back the previous one. The reader cannot know when the current process began —
 * that is the caller's [Query.ideStart] — so it marks the records predating it instead of dropping
 * them; reading the earlier session is a legitimate task (why did the IDE die?).
 */
object IdeLogReader {

    const val LIVE_FILE_NAME = "idea.log"
    const val MAX_TAIL_RECORDS = 5000
    const val MAX_FILES = 5
    const val MAX_BYTES = 60L * 1024 * 1024

    enum class Level(val rank: Int) {
        TRACE(0), DEBUG(0), FINE(0), INFO(1), WARN(2), ERROR(3), SEVERE(3);

        companion object {
            val ACCEPTED: String = entries.joinToString(", ") { it.name }

            /** The minimum-level argument; throws [IllegalArgumentException] naming the accepted values. */
            fun parse(text: String): Level = entries.firstOrNull { it.name.equals(text.trim(), ignoreCase = true) }
                ?: throw IllegalArgumentException("Invalid minLevel '$text'. Allowed values: $ACCEPTED")

            /** Rank of a level as printed in a record; an unknown level counts as INFO. */
            fun rankOf(printed: String): Int = when (printed) {
                "WARNING" -> WARN.rank
                "FINER", "FINEST", "CONFIG" -> FINE.rank
                else -> entries.firstOrNull { it.name == printed }?.rank ?: INFO.rank
            }
        }
    }

    class Record(
        val firstLine: String,
        val timestampText: String,
        val timestamp: LocalDateTime,
        val uptimeMs: Long,
        val level: String,
        val category: String,
        val message: String,
        val continuation: List<String>,
        /** Logged before [Query.ideStart], so by an earlier IDE process; see the object KDoc. */
        val previousSession: Boolean = false,
    )

    class Query(
        val tailRecords: Int = 200,
        val since: LocalDateTime? = null,
        val minLevel: Level = Level.INFO,
        val grep: Pattern? = null,
        /**
         * The current IDE process's start, when the caller knows it. It never bounds the read —
         * [since] is the only lower bound — it only marks the records it predates as
         * [Record.previousSession], because the log file outlives the process that wrote its tail.
         */
        val ideStart: LocalDateTime? = null,
    )

    class Result(
        /** Files read, newest first. */
        val filesRead: List<Path>,
        val totalRecordsScanned: Int,
        val matchedRecords: Int,
        /** The last [Query.tailRecords] matching records, oldest first. */
        val records: List<Record>,
        /** An older rotated file was needed but the [MAX_FILES] / [MAX_BYTES] bound stopped the walk. */
        val readLimitReached: Boolean,
    ) {
        val truncatedByTail: Boolean get() = matchedRecords > records.size
        /** How many returned records predate [Query.ideStart]; 0 when no bound was given. */
        val previousSessionRecords: Int get() = records.count { it.previousSession }
    }

    private val HEADER = Regex("""^(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2},\d{3}) \[\s*(\d+)]\s+([A-Z]+) - (.*)$""")
    private val LOG_TIMESTAMP = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss,SSS")
    private val SINCE_FORMATS = listOf(
        LOG_TIMESTAMP,
        DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"),
        DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"),
        DateTimeFormatter.ISO_LOCAL_DATE_TIME,
    )

    /**
     * Parses a `since` argument: an ISO-8601 local date-time, an ISO date-time with an offset
     * (converted to [zone]), or the log's own `yyyy-MM-dd HH:mm:ss[,SSS]` form.
     */
    fun parseSince(text: String, zone: ZoneId = ZoneId.systemDefault()): LocalDateTime {
        val trimmed = text.trim()
        SINCE_FORMATS.firstNotNullOfOrNull { format -> runCatching { LocalDateTime.parse(trimmed, format) }.getOrNull() }
            ?.let { return it }
        runCatching { OffsetDateTime.parse(trimmed).atZoneSameInstant(zone).toLocalDateTime() }.getOrNull()
            ?.let { return it }
        throw IllegalArgumentException(
            "Invalid since '$text'. Use an ISO-8601 local date-time (2026-10-08T14:05:00) or the log's own " +
                "form (2026-10-08 14:05:00 or 2026-10-08 14:05:00,123)"
        )
    }

    /** Writes a [LocalDateTime] the way the log stamps it, so it reads like a record `ts`. */
    fun formatTimestamp(time: LocalDateTime): String = time.format(LOG_TIMESTAMP)

    fun parseGrep(text: String): Pattern = try {
        Pattern.compile(text)
    } catch (e: PatternSyntaxException) {
        throw IllegalArgumentException("Invalid grep regex '$text': ${e.description}")
    }

    /** `idea.log`, `idea.1.log`, `idea.2.log`, … as long as they exist, newest first. */
    fun logFiles(directory: Path): List<Path> {
        val files = mutableListOf<Path>()
        val live = directory.resolve(LIVE_FILE_NAME)
        if (!Files.isRegularFile(live)) return files
        files.add(live)
        var index = 1
        while (true) {
            val rotated = directory.resolve("idea.$index.log")
            if (!Files.isRegularFile(rotated)) break
            files.add(rotated)
            index++
        }
        return files
    }

    /**
     * Walks [directory]'s log files newest first. Without a time bound only `idea.log` is read, plus
     * `idea.1.log` when `idea.log` alone does not fill the tail. With one, the walk continues into
     * older files while the tail is not filled and the bound predates the first record of the file
     * just read, up to [MAX_FILES] files and [MAX_BYTES] bytes (the first file is always read).
     * [Query.ideStart] takes part in none of this: it marks records, it never bounds the walk.
     */
    fun read(directory: Path, query: Query): Result {
        val candidates = logFiles(directory)
        val maxFiles = if (query.since == null) 2 else MAX_FILES
        val filesRead = mutableListOf<Path>()
        // Newest file first; each chunk holds that file's last matches, oldest first.
        val chunks = mutableListOf<List<Record>>()
        var kept = 0
        var matched = 0
        var scanned = 0
        var bytes = 0L
        var readLimitReached = false
        for ((index, file) in candidates.withIndex()) {
            if (index > 0) {
                val size = Files.size(file)
                if (index >= maxFiles || bytes + size > MAX_BYTES) {
                    readLimitReached = query.since != null
                    break
                }
            }
            bytes += Files.size(file)
            filesRead.add(file)
            val scan = scanFile(file, query, query.tailRecords - kept)
            scanned += scan.scanned
            matched += scan.matched
            kept += scan.kept.size
            chunks.add(scan.kept)
            if (kept >= query.tailRecords) break
            val first = scan.firstTimestamp
            if (query.since != null && first != null && !first.isAfter(query.since)) break
        }
        return Result(filesRead, scanned, matched, chunks.asReversed().flatten(), readLimitReached)
    }

    private class FileScan(val scanned: Int, val matched: Int, val kept: List<Record>, val firstTimestamp: LocalDateTime?)

    private fun scanFile(file: Path, query: Query, keep: Int): FileScan {
        val kept = ArrayDeque<Record>()
        var scanned = 0
        var matched = 0
        var firstTimestamp: LocalDateTime? = null
        fun accept(record: Record) {
            scanned++
            if (firstTimestamp == null) firstTimestamp = record.timestamp
            if (!matches(record, query)) return
            matched++
            if (keep <= 0) return
            if (kept.size == keep) kept.removeFirst()
            kept.addLast(record)
        }
        reader(file).use { reader ->
            var header: MatchResult? = null
            var firstLine = ""
            var continuation = mutableListOf<String>()
            while (true) {
                val line = reader.readLine() ?: break
                val next = HEADER.matchEntire(line)
                if (next == null) {
                    // Lines before the first header (the tail of a record split by rotation) are dropped.
                    if (header != null) continuation.add(line)
                    continue
                }
                header?.let { accept(toRecord(firstLine, it, continuation, query.ideStart)) }
                header = next
                firstLine = line
                continuation = mutableListOf()
            }
            header?.let { accept(toRecord(firstLine, it, continuation, query.ideStart)) }
        }
        return FileScan(scanned, matched, kept.toList(), firstTimestamp)
    }

    private fun reader(file: Path): BufferedReader =
        BufferedReader(InputStreamReader(Files.newInputStream(file), StandardCharsets.UTF_8))

    private fun toRecord(
        firstLine: String,
        header: MatchResult,
        continuation: List<String>,
        ideStart: LocalDateTime?,
    ): Record {
        val (timestampText, uptime, level, rest) = header.destructured
        val separator = rest.indexOf(" - ")
        val timestamp = LocalDateTime.parse(timestampText, LOG_TIMESTAMP)
        return Record(
            firstLine = firstLine,
            timestampText = timestampText,
            timestamp = timestamp,
            uptimeMs = uptime.toLongOrNull() ?: -1,
            level = level,
            category = if (separator < 0) "" else rest.substring(0, separator),
            message = if (separator < 0) rest else rest.substring(separator + 3),
            continuation = continuation,
            previousSession = ideStart != null && timestamp.isBefore(ideStart),
        )
    }

    private fun matches(record: Record, query: Query): Boolean {
        if (Level.rankOf(record.level) < query.minLevel.rank) return false
        if (query.since != null && record.timestamp.isBefore(query.since)) return false
        val grep = query.grep ?: return true
        return grep.matcher(record.firstLine).find() || record.continuation.any { grep.matcher(it).find() }
    }
}
