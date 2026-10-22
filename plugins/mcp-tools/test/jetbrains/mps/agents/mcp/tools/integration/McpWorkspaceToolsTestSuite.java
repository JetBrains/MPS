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
 * Workspace tools: project, module, migration and model tools, cross-project resolution, run configurations,
 * console.
 * <p>
 * Nested in {@link McpToolsIntegrationTestSuite}, which provides the environment; run it alone with
 * {@code MCP_TESTS=McpWorkspaceToolsTestSuite} on the umbrella run configuration, never from the editor gutter.
 * A plain {@link Suite}, not a {@code BaseMpsSuite}: only the umbrella may toggle the test mode.
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({
    JetBrainsMPSModelMcpToolsetIntegrationTest.class,
    JetBrainsMPSModuleMcpToolsetIntegrationTest.class,
    JetBrainsMPSMigrationMcpToolsetIntegrationTest.class,
    MigrationAssistantGuardTest.class,
    SearchRootNodeCrossProjectTest.class,
    WriteToolCrossProjectTest.class,
    ProjectResolutionCrossProjectTest.class,
    JetBrainsMPSProjectMcpToolsetIntegrationTest.class,
    JetBrainsMPSConsoleMcpToolsetIntegrationTest.class,
    JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest.class,
})
public class McpWorkspaceToolsTestSuite {
}
