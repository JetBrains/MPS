package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.IdeLogReader
import jetbrains.mps.agents.mcp.tools.common.IdeLogReader.Level
import jetbrains.mps.agents.mcp.tools.common.IdeLogReader.Query
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import java.nio.file.Files
import java.nio.file.Path
import java.time.LocalDateTime
import java.time.ZoneOffset

/**
 * Record splitting and filtering of [IdeLogReader] over temp files laid out like a real log
 * directory. No IDE: the live `PathManager` path is covered by the project-toolset integration test.
 */
class IdeLogReaderTest {

    @get:Rule
    val temp = TemporaryFolder()

    private fun dir(): Path = temp.root.toPath()

    private fun line(time: String, level: String, category: String, message: String, uptime: Long = 1234): String =
        "2026-10-08 $time [${uptime.toString().padStart(7)}] ${level.padStart(6)} - $category - $message"

    private fun write(name: String, vararg lines: String) {
        Files.writeString(dir().resolve(name), lines.joinToString("\n", postfix = "\n"))
    }

    private fun at(time: String): LocalDateTime = LocalDateTime.parse("2026-10-08T$time")

    @Test
    fun `continuation lines belong to the preceding record and the right-aligned level is parsed`() {
        write(
            "idea.log",
            "orphan tail of a record split by rotation",
            line("10:00:00,000", "INFO", "#c.i.Startup", "started"),
            line("10:00:01,000", "SEVERE", "jetbrains.mps.smodel.ModelAccess", "Interrupted - while locking", uptime = 29725),
            "java.lang.InterruptedException",
            "\tat jetbrains.mps.smodel.LockRunnable.run(LockRunnable.java:59)",
            line("10:00:02,000", "WARN", "jetbrains.mps.Foo", "careful"),
        )
        val result = IdeLogReader.read(dir(), Query())
        assertEquals(3, result.totalRecordsScanned)
        assertEquals(listOf("INFO", "SEVERE", "WARN"), result.records.map { it.level })
        val severe = result.records[1]
        assertEquals("2026-10-08 10:00:01,000", severe.timestampText)
        assertEquals(29725L, severe.uptimeMs)
        assertEquals("jetbrains.mps.smodel.ModelAccess", severe.category)
        assertEquals("Interrupted - while locking", severe.message)
        assertEquals(2, severe.continuation.size)
        assertTrue(result.records[0].continuation.isEmpty())
        assertEquals(listOf(dir().resolve("idea.log")), result.filesRead)
    }

    @Test
    fun `minLevel drops lower records and ranks ERROR with SEVERE`() {
        write(
            "idea.log",
            line("10:00:00,000", "DEBUG", "a", "debug"),
            line("10:00:01,000", "INFO", "a", "info"),
            line("10:00:02,000", "WARN", "a", "warn"),
            line("10:00:03,000", "ERROR", "a", "error"),
            line("10:00:04,000", "SEVERE", "a", "severe"),
        )
        fun levels(min: String) = IdeLogReader.read(dir(), Query(minLevel = Level.parse(min))).records.map { it.level }
        assertEquals(listOf("DEBUG", "INFO", "WARN", "ERROR", "SEVERE"), levels("trace"))
        assertEquals(listOf("INFO", "WARN", "ERROR", "SEVERE"), levels("INFO"))
        assertEquals(listOf("WARN", "ERROR", "SEVERE"), levels("Warn"))
        assertEquals(listOf("ERROR", "SEVERE"), levels("SEVERE"))
        assertEquals(listOf("ERROR", "SEVERE"), levels("error"))
        assertThrows(IllegalArgumentException::class.java) { Level.parse("bogus") }
    }

    @Test
    fun `since keeps records at or after the bound in every accepted form`() {
        write(
            "idea.log",
            line("10:00:00,000", "INFO", "a", "old"),
            line("10:05:00,000", "INFO", "a", "edge"),
            line("10:06:00,000", "INFO", "a", "new"),
        )
        for (text in listOf("2026-10-08T10:05:00", "2026-10-08 10:05:00", "2026-10-08 10:05:00,000", "2026-10-08T10:05:00.000")) {
            val records = IdeLogReader.read(dir(), Query(since = IdeLogReader.parseSince(text))).records
            assertEquals(text, listOf("edge", "new"), records.map { it.message })
        }
        val offsetBound = IdeLogReader.parseSince("2026-10-08T12:05:00+02:00", ZoneOffset.UTC)
        assertEquals(at("10:05:00"), offsetBound)
        assertThrows(IllegalArgumentException::class.java) { IdeLogReader.parseSince("yesterday") }
    }

    @Test
    fun `ideStart marks the records predating it and never drops one`() {
        write(
            "idea.log",
            line("10:00:00,000", "SEVERE", "a", "shutdown leak", uptime = 31_623),
            line("10:04:00,000", "INFO", "a", "first record of the new session", uptime = 120),
            line("10:04:30,000", "WARN", "a", "this session"),
        )
        val result = IdeLogReader.read(dir(), Query(ideStart = at("10:04:00")))
        assertEquals(
            listOf("shutdown leak", "first record of the new session", "this session"),
            result.records.map { it.message },
        )
        assertEquals(listOf(true, false, false), result.records.map { it.previousSession })
        assertEquals(1, result.previousSessionRecords)
        assertEquals(3, result.matchedRecords)

        val unbounded = IdeLogReader.read(dir(), Query())
        assertFalse(unbounded.records.any { it.previousSession })
        assertEquals(0, unbounded.previousSessionRecords)
    }

    @Test
    fun `ideStart marks records of rotated files and leaves the walk alone`() {
        write("idea.log", line("12:00:00,000", "WARN", "a", "this session"))
        write("idea.1.log", line("11:00:00,000", "SEVERE", "a", "previous session's shutdown"))

        val result = IdeLogReader.read(dir(), Query(tailRecords = 10, ideStart = at("11:30:00")))
        assertEquals(listOf("previous session's shutdown", "this session"), result.records.map { it.message })
        assertEquals(listOf(true, false), result.records.map { it.previousSession })
        assertEquals(listOf("idea.log", "idea.1.log"), result.filesRead.map { it.fileName.toString() })
    }

    @Test
    fun `formatTimestamp writes the timestamp the way the log stamps it`() {
        assertEquals("2026-10-08 10:04:00,000", IdeLogReader.formatTimestamp(at("10:04:00")))
    }

    @Test
    fun `grep matches the first line or any stack-trace line`() {
        write(
            "idea.log",
            line("10:00:00,000", "SEVERE", "a", "boom"),
            "java.lang.IllegalStateException",
            "\tat jetbrains.mps.agents.mcp.tools.DeepClass.run(DeepClass.kt:1)",
            line("10:00:01,000", "WARN", "jetbrains.mps.DeepClassCategory", "head match"),
            line("10:00:02,000", "WARN", "a", "unrelated"),
        )
        val records = IdeLogReader.read(dir(), Query(grep = IdeLogReader.parseGrep("DeepClass"))).records
        assertEquals(listOf("boom", "head match"), records.map { it.message })
        assertThrows(IllegalArgumentException::class.java) { IdeLogReader.parseGrep("(unclosed") }
    }

    @Test
    fun `tail applies after the filter and reports truncation`() {
        write(
            "idea.log",
            *(0 until 10).map { i -> line("10:00:0$i,000", if (i % 2 == 0) "WARN" else "INFO", "a", "m$i") }.toTypedArray(),
        )
        val result = IdeLogReader.read(dir(), Query(tailRecords = 3, minLevel = Level.WARN))
        assertEquals(listOf("m4", "m6", "m8"), result.records.map { it.message })
        assertEquals(10, result.totalRecordsScanned)
        assertEquals(5, result.matchedRecords)
        assertTrue(result.truncatedByTail)

        val all = IdeLogReader.read(dir(), Query(tailRecords = 5, minLevel = Level.WARN))
        assertFalse(all.truncatedByTail)
    }

    @Test
    fun `a time bound walks back through rotated files until it is covered`() {
        write("idea.log", line("12:00:00,000", "WARN", "a", "live"))
        write("idea.1.log", line("11:00:00,000", "WARN", "a", "rotated1"))
        write("idea.2.log", line("10:00:00,000", "WARN", "a", "rotated2"), line("10:30:00,000", "WARN", "a", "rotated2b"))
        write("idea.3.log", line("09:00:00,000", "WARN", "a", "rotated3"))

        val result = IdeLogReader.read(dir(), Query(since = at("10:15:00")))
        assertEquals(listOf("idea.log", "idea.1.log", "idea.2.log"), result.filesRead.map { it.fileName.toString() })
        assertEquals(listOf("rotated2b", "rotated1", "live"), result.records.map { it.message })
        assertEquals(4, result.totalRecordsScanned)
        assertFalse(result.readLimitReached)
    }

    @Test
    fun `without a time bound only idea log and idea 1 log are read`() {
        write("idea.log", line("12:00:00,000", "INFO", "a", "live"))
        write("idea.1.log", line("11:00:00,000", "INFO", "a", "rotated1"))
        write("idea.2.log", line("10:00:00,000", "INFO", "a", "rotated2"))

        val result = IdeLogReader.read(dir(), Query(tailRecords = 10))
        assertEquals(listOf("idea.log", "idea.1.log"), result.filesRead.map { it.fileName.toString() })
        assertEquals(listOf("rotated1", "live"), result.records.map { it.message })
        assertFalse(result.readLimitReached)

        val filled = IdeLogReader.read(dir(), Query(tailRecords = 1))
        assertEquals(listOf("idea.log"), filled.filesRead.map { it.fileName.toString() })
    }

    @Test
    fun `the rotation walk stops at the file cap`() {
        write("idea.log", line("12:00:00,000", "INFO", "a", "live"))
        for (i in 1..7) {
            write("idea.$i.log", line("${(12 - i).toString().padStart(2, '0')}:00:00,000", "INFO", "a", "rotated$i"))
        }
        val result = IdeLogReader.read(dir(), Query(since = at("00:00:00")))
        assertEquals(IdeLogReader.MAX_FILES, result.filesRead.size)
        assertEquals("idea.4.log", result.filesRead.last().fileName.toString())
        assertTrue(result.readLimitReached)
        assertEquals("rotated4", result.records.first().message)
    }

    @Test
    fun `a missing idea log yields no files`() {
        assertTrue(IdeLogReader.logFiles(dir()).isEmpty())
        assertTrue(IdeLogReader.read(dir(), Query()).filesRead.isEmpty())
    }
}
