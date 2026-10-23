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

import jetbrains.mps.agents.mcp.tools.unit.GenerationOpsStepsTest;
import jetbrains.mps.agents.mcp.tools.unit.GenerationTraceRoleTest;
import jetbrains.mps.agents.mcp.tools.unit.IdeLogReaderTest;
import jetbrains.mps.agents.mcp.tools.unit.JetBrainsMPSInitMcpToolsetTest;
import jetbrains.mps.agents.mcp.tools.unit.McpTestSelectionTest;
import jetbrains.mps.agents.mcp.tools.unit.McpToolInputSchemasTest;
import jetbrains.mps.agents.mcp.tools.unit.McpToolParameterOptionalityTest;
import jetbrains.mps.agents.mcp.tools.unit.MigrationXmlExampleTest;
import jetbrains.mps.agents.mcp.tools.unit.MpsRuntimeVersionTest;
import jetbrains.mps.agents.mcp.tools.unit.SkillCatalogReplicationTest;
import jetbrains.mps.agents.mcp.tools.unit.SkillDataflowQueryRoutingTest;
import jetbrains.mps.agents.mcp.tools.unit.SkillReferenceLayoutTest;
import jetbrains.mps.agents.mcp.tools.unit.SkillScriptsPackagingTest;
import jetbrains.mps.agents.mcp.tools.unit.SkillTypeQueryRoutingTest;
import jetbrains.mps.agents.mcp.tools.unit.SuiteRegistrationGuardTest;
import jetbrains.mps.agents.mcp.tools.unit.TransientStereotypeParserTest;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

/**
 * MCP platform contract and shared {@code AbstractOps} plumbing, plus the skills catalog, skill
 * scripts, the installer, the {@code MCP_TESTS} selector and the suite-registration guard.
 * <p>
 * Nested in {@link McpToolsIntegrationTestSuite}, which provides the environment; run it alone with
 * {@code MCP_TESTS=McpContractAndSkillsTestSuite} on the umbrella run configuration, never from the editor gutter.
 * A plain {@link Suite}, not a {@code BaseMpsSuite}: only the umbrella may toggle the test mode.
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({
    McpJsonOrTextWireShapeTest.class,
    AbstractOpsMakeTest.class,
    AbstractOpsModalTimeoutTest.class,
    JetBrainsMPSInitMcpToolsetTest.class,
    JetBrainsMPSInitMcpToolsetIntegrationTest.class,
    McpToolInputSchemasTest.class,
    McpToolParameterOptionalityTest.class,
    McpCallLogTest.class,
    SkillScriptsPackagingTest.class,
    SkillScriptsDriftTest.class,
    SkillCatalogReplicationTest.class,
    SkillReferenceLayoutTest.class,
    SkillTypeQueryRoutingTest.class,
    SkillDataflowQueryRoutingTest.class,
    MigrationXmlExampleTest.class,
    MpsRuntimeVersionTest.class,
    IdeLogReaderTest.class,
    GenerationOpsStepsTest.class,
    TransientStereotypeParserTest.class,
    GenerationTraceRoleTest.class,
    McpTestSelectionTest.class,
    SuiteRegistrationGuardTest.class,
})
public class McpContractAndSkillsTestSuite {
}
