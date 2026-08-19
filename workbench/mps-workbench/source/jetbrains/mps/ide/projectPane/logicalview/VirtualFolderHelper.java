/*
 * Copyright 2000-2023 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.ide.projectPane.logicalview;

import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.function.Function;
import java.util.stream.Stream;

/**
 * Helper class to facilitate operations with arbitrary values collected into a "virtual folder"
 * hierarchy:
 * <ul>
 *  <li>every value is assigned a folder name -- string label;
 *  <li>empty string corresponds to the top level;</li>
 *  <li>nested folders are separated with dot.</li>
 * </ul>
 * 
 * @author Fedor Isakov
 */
public class VirtualFolderHelper<T> {

  private final SortedSet<String> myVirtualFolders;
  private final Map<String, List<T>> myValueByFolder = new HashMap<>();
  private final Map<String, List<T>> myAuxValueByFolder = new HashMap<>();
  private final Map<T, List<String>> myFoldersByValue = new HashMap<>();

  /**
   * Create a virtual folder hierarchy for a collection of values.
   *
   * @param values all the values contained in this hierarchy
   * @param getVirtualFolder function that returns virtual folder for a given value
   */
  protected VirtualFolderHelper(Collection<? extends T> values, Function<T, String> getVirtualFolder) {
    this(values, getVirtualFolder, (__) -> Collections.emptyList());
  }

  /**
   * Create a virtual folder hierarchy for a collection of values.
   * The parameter {@code getAuxValues} may be provided in addition to specify values that are not visible directly in the
   * hierarchy, but should still be discoverable.
   *
   * @param values all the values contained in this hierarchy
   * @param getVirtualFolder function that returns virtual folder for a given value
   */
  protected VirtualFolderHelper(Collection<? extends T> values, Function<? super T, String> getVirtualFolder, Function<? super T, Collection<? extends T>> getAuxValues) {
    for (T value : values) {
      String virtualFolder = getVirtualFolder.apply(value);
      // normalize virtual folder name: drop leading dot, merge all consecutive dots
      virtualFolder = virtualFolder == null ? "" : virtualFolder;
      virtualFolder = String.join(".", Arrays.asList(virtualFolder.split("\\.+")));
      virtualFolder = virtualFolder.startsWith(".") ? virtualFolder.substring(1) : virtualFolder;
      myValueByFolder.computeIfAbsent(virtualFolder, name -> new ArrayList<>())
                     .add(value);
      myFoldersByValue.computeIfAbsent(value, v -> new ArrayList<>())
                      .add(virtualFolder);
      Collection<? extends T> aux = getAuxValues.apply(value);
      if (aux != null && !aux.isEmpty()) {
        myAuxValueByFolder.computeIfAbsent(virtualFolder, name -> new ArrayList<>())
                          .addAll(aux);
        for (T auxValue : aux) {
          myFoldersByValue.computeIfAbsent(auxValue, v -> new ArrayList<>())
                          .add(virtualFolder);
        }
      }
    }
    myVirtualFolders = new TreeSet<>(myValueByFolder.keySet());
    myVirtualFolders.add(""); // ensure there is always the "default" empty virtual folder

    // normalize virtual folders tree: ensure there is always an "a" for "a.b"
    HashSet<String> branches = new HashSet<>();
    for (String name : myVirtualFolders) {
      int lastDot;
      while ((lastDot = name.lastIndexOf(".")) >= 0) {
        String branch = name.substring(0, lastDot);
        if (branches.contains(branch)) {
          break;
        }
        branches.add(branch);
        name = branch;
      }
    }
    myVirtualFolders.addAll(branches);
  }


  /**
   * Returns a stream of virtual folders that all share this prefix and have only
   * one segment after the separator. That is, include only the immediate "children"
   * of the virtual folder denoted by {@code prefix.substring(0, prefix.length() - 1)}.
   */
  protected Stream<String> folders(String prefix) {
    return myVirtualFolders
               .tailSet(prefix)
               .stream()
               .takeWhile(name -> name.startsWith(prefix))
               .filter(name -> !name.isEmpty() && !name.substring(prefix.length()).contains("."));
  }

  /**
   * Return a stream of all virtual folders that share this prefix, including
   * nested ones.
   */
  protected Stream<String> allFolders(String prefix) {
    return myVirtualFolders
               .tailSet(prefix)
               .stream()
               .takeWhile(name -> name.startsWith(prefix));
  }

  /**
   * Return a stream of all values associated with the specified virtual folder.
   */
  @NotNull
  protected Stream<T> values(String virtualFolder) {
    List<T> values = myValueByFolder.get(virtualFolder);
    return values != null ? values.stream() : Stream.empty();
  }

  protected Stream<T> auxValues(String virtualFolder) {
    List<T> values = myAuxValueByFolder.get(virtualFolder);
    return values != null ? values.stream() : Stream.empty();
  }

  /**
   * Return a stream of all values associated with the specified virtual folder
   * and all its "subfolders", meaning all folders the prefix constructed
   * from the specified virtual folder.
   */
  protected Stream<T> allValues(String virtualFolder) {
    return Stream.concat(
              Stream.of(virtualFolder),
              allFolders(virtualFolderToPrefix(virtualFolder)))
          .flatMap(this::values);
  }

  protected Stream<T> allAuxValues(String virtualFolder) {
    return Stream.concat(
              Stream.of(virtualFolder),
              allFolders(virtualFolderToPrefix(virtualFolder)))
          .flatMap(this::auxValues);
  }

  /**
   * Test whether the specified value is assigned to the given virtual folder or one of its subfolders.
   */
  @SuppressWarnings("SuspiciousMethodCalls")
  protected boolean isValueInVirtualFolder(Object value, String virtualFolder) {
    List<String> folders = myFoldersByValue.get(value);
    if (folders == null) {
      return false;
    }
    String prefix = virtualFolderToPrefix(virtualFolder);
    for (String folder : folders) {
      if (folder.equals(virtualFolder) || folder.startsWith(prefix)) {
        return true;
      }
    }
    return false;
  }

  protected String virtualFolderToPrefix(String virtualFolder) {
    return virtualFolder.isEmpty() ? "" : (virtualFolder + ".");
  }

}
