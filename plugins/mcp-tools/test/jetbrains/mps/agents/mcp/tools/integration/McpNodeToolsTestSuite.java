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

import jetbrains.mps.agents.mcp.tools.unit.AbstractOpsAutoApplyQuickFixesTest;
import jetbrains.mps.agents.mcp.tools.unit.AbstractOpsPropertyProblemsTest;
import jetbrains.mps.agents.mcp.tools.unit.AssignableReferenceServiceTest;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

/**
 * Node tools: node and root-node tools, blueprints, node factories, assignability, problem checks,
 * types, generation plans, editor state.
 * <p>
 * Nested in {@link McpToolsIntegrationTestSuite}, which provides the environment; run it alone with
 * {@code MCP_TESTS=McpNodeToolsTestSuite} on the umbrella run configuration, never from the editor gutter.
 * A plain {@link Suite}, not a {@code BaseMpsSuite}: only the umbrella may toggle the test mode.
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({
    JetBrainsMPSNodeMcpToolsetIntegrationTest.class,
    JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest.class,
    JetBrainsMPSTypesMcpToolsetIntegrationTest.class,
    JetBrainsMPSGenerationMcpToolsetIntegrationTest.class,
    JetBrainsMPSRootNodeMcpToolsetIntegrationTest.class,
    NodeFactoryOnBlueprintPathIntegrationTest.class,
    AssignabilityHintIntegrationTest.class,
    EditorCaretSelectionSerializerTest.class,
    AbstractOpsPropertyProblemsTest.class,
    AbstractOpsAutoApplyQuickFixesTest.class,
    AssignableReferenceServiceTest.class,
})
public class McpNodeToolsTestSuite {
}
