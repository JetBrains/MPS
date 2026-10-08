/*
 * Copyright 2003-2026 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 */
package jetbrains.mps.agents.mcp.tools.integration;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

/**
 * Java parsing tools ({@code parse_java_and_insert}).
 * <p>
 * Nested in {@link McpToolsIntegrationTestSuite}, which provides the environment; run it alone with
 * {@code MCP_TESTS=McpJavaToolsTestSuite} on the umbrella run configuration, never from the editor gutter.
 * A plain {@link Suite}, not a {@code BaseMpsSuite}: only the umbrella may toggle the test mode.
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({
    JetBrainsMPSJavaMcpToolsetIntegrationTest.class,
    ConceptFunctionParameterBindingIntegrationTest.class,
})
public class McpJavaToolsTestSuite {
}
