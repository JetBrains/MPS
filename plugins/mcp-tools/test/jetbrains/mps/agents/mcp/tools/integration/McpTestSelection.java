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

import org.junit.runner.Description;
import org.junit.runner.manipulation.Filter;
import org.junit.runners.Suite;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * The {@code MCP_TESTS} selector of {@link McpToolsIntegrationTestSuite}: a comma-separated list of
 * simple names, each a sub-suite ({@code McpNodeToolsTestSuite}), a test class
 * ({@code JetBrainsMPSTypesMcpToolsetIntegrationTest}) or a method ({@code ClassSimpleName#methodName}, compared
 * verbatim with {@link Description#getMethodName()}, so Kotlin backtick names with spaces work).
 * <p>
 * Names resolve against the {@code @Suite.SuiteClasses} tree below the root suite; an unknown name is an
 * {@link IllegalArgumentException} that lists the known sub-suites.
 */
public final class McpTestSelection extends Filter {
  private final String myText;
  private final Set<String> myWholeClasses;
  private final Map<String, Set<String>> myMethods;

  private McpTestSelection(String text, Set<String> wholeClasses, Map<String, Set<String>> methods) {
    myText = text;
    myWholeClasses = wholeClasses;
    myMethods = methods;
  }

  public static McpTestSelection parse(String selection, Class<?> rootSuite) {
    Map<String, List<Class<?>>> subSuites = new LinkedHashMap<>();
    Map<String, Class<?>> leaves = new LinkedHashMap<>();
    collect(rootSuite, subSuites, leaves, new ArrayList<>());

    Set<String> wholeClasses = new LinkedHashSet<>();
    Map<String, Set<String>> methods = new LinkedHashMap<>();
    List<String> entries = new ArrayList<>();
    for (String raw : selection.split(",")) {
      String entry = raw.trim();
      if (entry.isEmpty()) {
        continue;
      }
      entries.add(entry);
      int hash = entry.indexOf('#');
      String name = hash < 0 ? entry : entry.substring(0, hash).trim();
      if (hash < 0 && subSuites.containsKey(name)) {
        for (Class<?> leaf : subSuites.get(name)) {
          wholeClasses.add(leaf.getName());
        }
        continue;
      }
      Class<?> leaf = leaves.get(name);
      if (leaf == null) {
        throw new IllegalArgumentException(
            "MCP_TESTS entry '" + entry + "' names no sub-suite or test class below " + rootSuite.getSimpleName()
            + "; valid sub-suites: " + String.join(", ", subSuites.keySet()));
      }
      if (hash < 0) {
        wholeClasses.add(leaf.getName());
        continue;
      }
      String method = entry.substring(hash + 1).trim();
      if (Arrays.stream(leaf.getMethods()).map(Method::getName).noneMatch(method::equals)) {
        throw new IllegalArgumentException(
            "MCP_TESTS entry '" + entry + "': " + leaf.getSimpleName() + " has no public method named '" + method + "'");
      }
      methods.computeIfAbsent(leaf.getName(), k -> new LinkedHashSet<>()).add(method);
    }
    if (entries.isEmpty()) {
      throw new IllegalArgumentException(
          "MCP_TESTS='" + selection + "' names nothing; valid sub-suites: " + String.join(", ", subSuites.keySet()));
    }
    return new McpTestSelection(String.join(",", entries), wholeClasses, methods);
  }

  /**
   * Sub-suite simple names below {@code rootSuite}, in declaration order.
   */
  public static List<String> subSuiteNames(Class<?> rootSuite) {
    Map<String, List<Class<?>>> subSuites = new LinkedHashMap<>();
    collect(rootSuite, subSuites, new HashMap<>(), new ArrayList<>());
    return new ArrayList<>(subSuites.keySet());
  }

  /**
   * Walks {@code suite}'s {@code @Suite.SuiteClasses}; every nested suite on {@code path} (the ancestors
   * below the root) receives each leaf found under it.
   */
  private static void collect(Class<?> suite, Map<String, List<Class<?>>> subSuites, Map<String, Class<?>> leaves,
                              List<String> path) {
    Suite.SuiteClasses listed = suite.getAnnotation(Suite.SuiteClasses.class);
    if (listed == null) {
      return;
    }
    for (Class<?> child : listed.value()) {
      if (child.isAnnotationPresent(Suite.SuiteClasses.class)) {
        subSuites.putIfAbsent(child.getSimpleName(), new ArrayList<>());
        path.add(child.getSimpleName());
        collect(child, subSuites, leaves, path);
        path.remove(path.size() - 1);
      } else {
        Class<?> previous = leaves.putIfAbsent(child.getSimpleName(), child);
        if (previous != null && previous != child) {
          throw new IllegalArgumentException(
              "ambiguous simple name " + child.getSimpleName() + ": " + previous.getName() + ", " + child.getName());
        }
        for (String ancestor : path) {
          subSuites.get(ancestor).add(child);
        }
      }
    }
  }

  @Override
  public boolean shouldRun(Description description) {
    String className = description.getClassName();
    if (myWholeClasses.contains(className)) {
      return true;
    }
    Set<String> methods = myMethods.get(className);
    String method = description.getMethodName();
    if (methods != null && method != null) {
      return methods.contains(method);
    }
    for (Description child : description.getChildren()) {
      if (shouldRun(child)) {
        return true;
      }
    }
    return false;
  }

  @Override
  public String describe() {
    return myText;
  }
}
