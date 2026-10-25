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

import jetbrains.mps.testbench.junit.runners.PushEnvironmentRunnerBuilder;
import jetbrains.mps.testbench.junit.suites.BaseMpsSuite;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.IdeaEnvironment;
import jetbrains.mps.util.PathManager;
import org.junit.AfterClass;
import org.junit.runner.RunWith;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runners.Suite;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.RunnerBuilder;

import java.io.File;
import java.lang.reflect.Field;

/**
 * Integration suite for MCP toolset tests that need a live IDEA platform with an MPS project.
 * Mirrors the skeleton of {@code jetbrains.mps.testsuites.PlatformTestSuite} but kept inside the
 * {@code mcp-tools} module so that registering new tests does not introduce a testbench →
 * mcp-tools dependency.
 * <p>
 * The suite is the union of the five {@code Mcp*TestSuite} sub-suites, one per tool family; a new
 * test class is registered in exactly one of them ({@code SuiteRegistrationGuardTest} enforces it),
 * never here. The environment created below reaches every leaf through
 * {@code PushEnvironmentRunnerBuilder}, which passes itself down to the nested {@link Suite} runners.
 * <p>
 * Setting the {@code MCP_TESTS} environment variable runs a subset in the same environment: a
 * comma-separated list of sub-suite simple names, test class simple names, or
 * {@code ClassSimpleName#methodName} (see {@link McpTestSelection}). The selection is ignored on
 * TeamCity ({@code TEAMCITY_VERSION} set), and a selection that matches nothing fails initialization.
 */
@RunWith(McpToolsIntegrationTestSuite.class)
@Suite.SuiteClasses({
    McpLanguageToolsTestSuite.class,
    McpJavaToolsTestSuite.class,
    McpWorkspaceToolsTestSuite.class,
    McpNodeToolsTestSuite.class,
    McpContractAndSkillsTestSuite.class,
})
public class McpToolsIntegrationTestSuite extends BaseMpsSuite {
  private static IdeaEnvironment ourEnvironment;

  static {
    // When running from IDEA-compiled module classes (instead of mps-core.jar), PathManager
    // can't infer the MPS home path because it expects to be loaded from a jar. Seed the
    // private cache field to bypass that assertion. The check expects the user.dir to be
    // an MPS checkout root.
    seedMpsHome();
    // We need the same plugins as EnvironmentConfig#withExecutionPlugins() — debugger-api,
    // debugger-java, execution-api, execution-languages, execution-configurations — so that
    // the "Java Application" / "JUnit Tests" ConfigurationType extensions register and the
    // jetbrains.mps.execution.demo language (used by the IMainClass happy-path test) is loaded.
    // We can't just call withExecutionPlugins() though: it picks the plugin folder names by
    // branching on PathManager.isFromSources(), and that helper returns `false` whenever
    // lib/mps-core.jar appears earlier on the classpath than startup/classes/ — which is what
    // TeamCity's "Tests from IDEA Project" runner does. The "not from sources" branch looks for
    // plugins/mps-execution-languages/, plugins/mps-debugger-api/, etc., but our checkout layout
    // ships those under their unprefixed source names. Add them by their actual folder names so
    // the test environment is correct in both layouts.
    EnvironmentConfig cfg = EnvironmentConfig.defaultConfig()
        .withTestingPlugin()
        .withBuildPlugin()
        .withModelCheckerPlugin()
        .withTestModeOn();
    String pluginsDir = PathManager.getPreInstalledPluginsPath();
    cfg.addPlugin(new File(pluginsDir, "debugger-api").getAbsolutePath(), "jetbrains.mps.debugger.api");
    cfg.addPlugin(new File(pluginsDir, "debugger-java").getAbsolutePath(), "jetbrains.mps.debugger.java");
    cfg.addPlugin(new File(pluginsDir, "execution-api").getAbsolutePath(), "jetbrains.mps.execution.api");
    cfg.addPlugin(new File(pluginsDir, "execution-languages").getAbsolutePath(), "jetbrains.mps.execution.languages");
    cfg.addPlugin(new File(pluginsDir, "execution-configurations").getAbsolutePath(), "jetbrains.mps.execution.configurations");
    cfg.addPlugin(new File(pluginsDir, "platform-testRunner-plugin").getAbsolutePath(), "platform-testRunner-plugin");
    // mps_mcp_run_migrations needs the migration engine and its project service (MigrationProperties);
    // the migration plugin depends on mps-modelchecker (which in 263 requires platform-vcs-plugin,
    // which withModelCheckerPlugin() above adds). Not withMigrationPlugin():
    // that also adds mps-project-migrations, whose project migrations would make every fixture "pending".
    cfg.addPlugin(new File(pluginsDir, "mps-migration").getAbsolutePath(), "jetbrains.mps.ide.migration.workbench");
    ourEnvironment = new IdeaEnvironment(cfg);
    ourEnvironment.init();
  }

  private static void seedMpsHome() {
    // The platform refuses to start without a plausible MPS checkout root. Resolve and validate
    // the chosen path before seeding so a wrong working directory fails fast with an actionable
    // message instead of crashing later inside IdeaEnvironment.init() with an opaque NPE.
    // IDEA's gradle/jps test runners launch with user.dir = the module directory, not the
    // checkout root, so walk up until the marker layout is found before giving up.
    String home = resolveMpsHome();
    try {
      Field f = PathManager.class.getDeclaredField("ourHomePath");
      f.setAccessible(true);
      if (f.get(null) == null) f.set(null, home);
    } catch (ReflectiveOperationException e) {
      throw new RuntimeException("Failed to seed PathManager.ourHomePath", e);
    }
  }

  private static String resolveMpsHome() {
    String explicit = System.getProperty("mps.home");
    if (explicit != null) {
      if (looksLikeMpsCheckout(new File(explicit))) return explicit;
      throw new IllegalStateException(
          "-Dmps.home='" + explicit + "' does not look like an MPS checkout root (missing core/ or plugins/).");
    }
    File cursor = new File(System.getProperty("user.dir"));
    while (cursor != null) {
      if (looksLikeMpsCheckout(cursor)) return cursor.getAbsolutePath();
      cursor = cursor.getParentFile();
    }
    throw new IllegalStateException(
        "Could not locate an MPS checkout root walking up from user.dir='" +
            System.getProperty("user.dir") + "'. Set -Dmps.home=<checkout>.");
  }

  private static boolean looksLikeMpsCheckout(File dir) {
    return dir != null
        && new File(dir, "core").isDirectory()
        && new File(dir, "plugins").isDirectory()
        && new File(dir, "testbench").isDirectory();
  }

  public McpToolsIntegrationTestSuite(Class<?> aClass, RunnerBuilder builder) throws InitializationError {
    super(aClass, new PushEnvironmentRunnerBuilder(ourEnvironment, builder));
    applySelection(aClass);
  }

  private void applySelection(Class<?> aClass) throws InitializationError {
    String selection = System.getenv("MCP_TESTS");
    if (selection == null || selection.isBlank()) {
      System.out.println("McpToolsIntegrationTestSuite: MCP_TESTS not set, running every sub-suite");
      return;
    }
    if (System.getenv("TEAMCITY_VERSION") != null) {
      System.out.println(
          "McpToolsIntegrationTestSuite: MCP_TESTS='" + selection + "' ignored on TeamCity, running every sub-suite");
      return;
    }
    String validSubSuites = String.join(", ", McpTestSelection.subSuiteNames(aClass));
    McpTestSelection filter;
    try {
      filter = McpTestSelection.parse(selection, aClass);
    } catch (IllegalArgumentException e) {
      throw new InitializationError(e.getMessage());
    }
    System.out.println("McpToolsIntegrationTestSuite: MCP_TESTS selection applied, running only: " + filter.describe());
    try {
      filter(filter);
    } catch (NoTestsRemainException e) {
      throw new InitializationError(
          "MCP_TESTS='" + selection + "' selects no test; valid sub-suites: " + validSubSuites);
    }
  }

  @AfterClass
  public static void tearDown() {
    ourEnvironment.dispose();
    ourEnvironment = null;
  }
}
