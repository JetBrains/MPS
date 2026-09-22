package jetbrains.mps.agents.mcp.tools

import org.junit.Assert.fail
import org.junit.Assume
import java.util.concurrent.TimeUnit

/**
 * The `python3` prerequisite of the tests that exercise the bundled skill scripts.
 *
 * Those tests run the scripts an agent is told to run, which is the point of them: they prove the
 * shipped artifact works rather than a re-implementation of it. The catch is what happens where no
 * interpreter is installed — a plain JUnit assumption turns the gate into a skip, and a skipped
 * gate reads exactly like a passing one, so a drifting script or a stale document could sail
 * through CI unnoticed.
 *
 * Hence the split: a developer without `python3` gets the assumption and keeps working, while on CI
 * the absence is a failure to fix. TeamCity exports `TEAMCITY_VERSION` into every build step's
 * environment, which is what tells the two apart.
 */
internal object Python3 {

    private const val CI_MARKER = "TEAMCITY_VERSION"

    fun require() {
        if (isAvailable()) {
            return
        }
        if (System.getenv(CI_MARKER) != null) {
            fail(
                "python3 is not available on this CI agent, so the bundled skill scripts cannot be " +
                        "exercised. This must not be skipped here: the tests that run them are the only " +
                        "thing standing between an agent and a broken script or a stale document."
            )
        }
        Assume.assumeTrue(
            "python3 is not available; the skills document a manual fallback. This is an assumption " +
                    "locally and a failure on CI ($CI_MARKER set).",
            false
        )
    }

    private fun isAvailable(): Boolean = try {
        val process = ProcessBuilder("python3", "--version").redirectErrorStream(true).start()
        // waitFor(timeout) reports termination, not success — check the exit code separately.
        process.waitFor(30, TimeUnit.SECONDS) && process.exitValue() == 0
    } catch (_: Exception) {
        false
    }
}
