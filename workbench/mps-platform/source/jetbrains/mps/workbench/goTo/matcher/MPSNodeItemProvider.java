/*
 * Copyright 2000-2021 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */

package jetbrains.mps.workbench.goTo.matcher;

import com.intellij.concurrency.JobLauncher;
import com.intellij.ide.util.gotoByName.ChooseByNameBase;
import com.intellij.ide.util.gotoByName.ChooseByNameItemProvider;
import com.intellij.ide.util.gotoByName.ChooseByNameModel;
import com.intellij.ide.util.gotoByName.ChooseByNameViewModel;
import com.intellij.ide.util.gotoByName.ContributorsBasedGotoByModel;
import com.intellij.ide.util.gotoByName.CustomMatcherModel;
import com.intellij.ide.util.gotoByName.GotoClassModel2;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.openapi.progress.ProcessCanceledException;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.util.Comparing;
import com.intellij.openapi.util.Pair;
import com.intellij.openapi.util.text.StringUtil;
import com.intellij.psi.PsiElement;
import com.intellij.psi.codeStyle.MinusculeMatcher;
import com.intellij.psi.codeStyle.NameUtil;
import com.intellij.psi.search.EverythingGlobalScope;
import com.intellij.psi.util.proximity.PsiProximityComparator;
import com.intellij.util.Processor;
import com.intellij.util.SmartList;
import com.intellij.util.containers.ContainerUtil;
import com.intellij.util.indexing.FindSymbolParameters;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * This is copied from com.intellij.ide.util.gotoByName.DefaultChooseByNameItemProvider, the change is
 * that this one considers the whole pattern as a name (see http://youtrack.jetbrains.com/issue/MPS-16902)
 */
public class MPSNodeItemProvider implements ChooseByNameItemProvider {
  private static final Logger LOG = Logger.getInstance("#com.intellij.ide.util.gotoByName.ChooseByNameIdea");
  private WeakReference<PsiElement> myContext;

  public MPSNodeItemProvider(PsiElement context) {
    myContext = new WeakReference<>(context);
  }

  @Override
  public boolean filterElements(@NotNull ChooseByNameViewModel chooseByNameViewModel,
      @NotNull String pattern,
      boolean everywhere,
      @NotNull ProgressIndicator indicator,
      @NotNull Processor<Object> consumer) {
    //change beginning
    String namePattern = pattern;
    String qualifierPattern = "";
    //change end

    ChooseByNameModel model = chooseByNameViewModel.getModel();
    boolean empty = namePattern.isEmpty() ||
                    "@".equals(namePattern) && model instanceof GotoClassModel2;    // TODO[yole]: remove implicit dependency
    if (empty && !chooseByNameViewModel.canShowListForEmptyPattern()) return true;

    Set<String> names = Arrays.stream(chooseByNameViewModel.getModel().getNames(everywhere))
                              .filter(Objects::nonNull)
                              .collect(Collectors.toSet());

    if (chooseByNameViewModel.isSearchInAnyPlace() && !namePattern.trim().isEmpty()) {
      String middleMatchPattern = "*" + namePattern + (namePattern.endsWith(" ") ? "" : "*");

      // consume elements matching by prefix case-sensitively
      Integer elementsConsumed = consumeElements(chooseByNameViewModel, everywhere, indicator, consumer, namePattern, qualifierPattern, names,
          NameUtil.MatchingCaseSensitivity.ALL);
      if (elementsConsumed == null) return false;

      if (elementsConsumed == 0) {
        // search with original pattern without case sensitivity, don't add separator before found items
        // result: items matched by prefix will always be above middle-matched items
        elementsConsumed = consumeElements(chooseByNameViewModel, everywhere, indicator, consumer, namePattern,
            qualifierPattern, names, NameUtil.MatchingCaseSensitivity.NONE);
        if (elementsConsumed == null) return false;
      }

      // search with broadest criteria - middle match pattern, without case sensitivity
      elementsConsumed = consumeElements(chooseByNameViewModel, everywhere, indicator, consumer, middleMatchPattern,
          qualifierPattern, names, NameUtil.MatchingCaseSensitivity.NONE);
      return elementsConsumed != null;
    }
    else {
      Integer elementsConsumed = consumeElements(chooseByNameViewModel, everywhere, indicator, consumer, namePattern, qualifierPattern, names,
          NameUtil.MatchingCaseSensitivity.NONE);
      return elementsConsumed != null;
    }
  }

  /**
   * @return null if consumer returned false, number of consumed elements otherwise.
   */
  private Integer consumeElements(ChooseByNameViewModel chooseByNameViewModel,
      boolean everywhere,
      ProgressIndicator indicator,
      Processor<Object> consumer,
      String namePattern,
      String qualifierPattern,
      Set<String> allNames,
      NameUtil.MatchingCaseSensitivity sensitivity) {
    ChooseByNameModel model = chooseByNameViewModel.getModel();
    List<String> namesList = new ArrayList<>();
    getNamesByPattern(chooseByNameViewModel, new ArrayList<>(allNames), namesList, namePattern, sensitivity);
    allNames.removeAll(namesList);
    sortNamesList(namePattern, namesList);

    indicator.checkCanceled();

    List<Object> sameNameElements = new SmartList<>();
    List<Pair<String, MinusculeMatcher>> patternsAndMatchers = getPatternsAndMatchers(qualifierPattern, chooseByNameViewModel);
    int elementsConsumed = 0;

    for (String name : namesList) {
      indicator.checkCanceled();

      //TODO: use FindSymbolParameters.wrap(namePattern, ???, everywhere)
      final FindSymbolParameters findSymbolParameters = new FindSymbolParameters(namePattern, namePattern, new EverythingGlobalScope(), null);

      // use interruptible call if possible
      Object[] elements = model instanceof ContributorsBasedGotoByModel ?
          ((ContributorsBasedGotoByModel)model).getElementsByName(name, findSymbolParameters, indicator)
          : model.getElementsByName(name, everywhere, namePattern);
      if (elements.length > 1) {
        sameNameElements.clear();
        for (final Object element : elements) {
          indicator.checkCanceled();
          if (matchesQualifier(element, chooseByNameViewModel, patternsAndMatchers)) {
            sameNameElements.add(element);
          }
        }
        sortByProximity(chooseByNameViewModel, sameNameElements);
        for (Object element : sameNameElements) {
          if (!consumer.process(element)) return null;
          elementsConsumed++;
        }
      }
      else if (elements.length == 1 && matchesQualifier(elements[0], chooseByNameViewModel, patternsAndMatchers)) {
        if (!consumer.process(elements[0])) return null;
        elementsConsumed++;
      }
    }
    return elementsConsumed;
  }

  protected void sortNamesList(@NotNull String namePattern, List<String> namesList) {
    // Here we sort using namePattern to have similar logic with empty qualified patten case
    Collections.sort(namesList, new MatchesComparator(namePattern));
  }

  private void sortByProximity(@NotNull ChooseByNameViewModel chooseByNameViewModel, final List<Object> sameNameElements) {
    final ChooseByNameModel model = chooseByNameViewModel.getModel();
    if (model instanceof Comparator) {
      //noinspection unchecked
      Collections.sort(sameNameElements, (Comparator)model);
    } else {
      Collections.sort(sameNameElements, new PathProximityComparator(model, myContext.get()));
    }
  }

  private static String getQualifierPattern(@NotNull ChooseByNameBase base, @NotNull String pattern) {
    final String[] separators = base.getModel().getSeparators();
    int lastSeparatorOccurrence = 0;
    for (String separator : separators) {
      lastSeparatorOccurrence = Math.max(lastSeparatorOccurrence, pattern.lastIndexOf(separator));
    }
    return pattern.substring(0, lastSeparatorOccurrence);
  }

  public static String getNamePattern(@NotNull ChooseByNameViewModel chooseByNameViewModel, String pattern) {
    pattern = chooseByNameViewModel.transformPattern(pattern);

    ChooseByNameModel model = chooseByNameViewModel.getModel();
    final String[] separators = model.getSeparators();
    int lastSeparatorOccurrence = 0;
    for (String separator : separators) {
      final int idx = pattern.lastIndexOf(separator);
      lastSeparatorOccurrence = Math.max(lastSeparatorOccurrence, idx == -1 ? idx : idx + separator.length());
    }

    return pattern.substring(lastSeparatorOccurrence);
  }

  @NotNull
  private static List<String> split(@NotNull String s, @NotNull ChooseByNameViewModel chooseByNameViewModel) {
    List<String> answer = new ArrayList<>();
    for (String token : StringUtil.tokenize(s, StringUtil.join(chooseByNameViewModel.getModel().getSeparators(), ""))) {
      if (!token.isEmpty()) {
        answer.add(token);
      }
    }

    return answer.isEmpty() ? Collections.singletonList(s) : answer;
  }

  private static boolean matchesQualifier(final Object element,
      @NotNull final ChooseByNameViewModel chooseByNameViewModel,
      @NotNull List<Pair<String, MinusculeMatcher>> patternsAndMatchers) {
    final String name = chooseByNameViewModel.getModel().getFullName(element);
    if (name == null) return false;

    final List<String> suspects = split(name, chooseByNameViewModel);

    try {
      int matchPosition = 0;
      patterns:
      for (Pair<String, MinusculeMatcher> patternAndMatcher : patternsAndMatchers) {
        final String pattern = patternAndMatcher.first;
        final MinusculeMatcher matcher = patternAndMatcher.second;
        if (!pattern.isEmpty()) {
          for (int j = matchPosition; j < suspects.size() - 1; j++) {
            String suspect = suspects.get(j);
            if (matches(chooseByNameViewModel, pattern, matcher, suspect)) {
              matchPosition = j + 1;
              continue patterns;
            }
          }

          return false;
        }
      }
    }
    catch (Exception e) {
      // Do nothing. No matches appears valid result for "bad" pattern
      return false;
    }

    return true;
  }

  @NotNull
  private static List<Pair<String, MinusculeMatcher>> getPatternsAndMatchers(String qualifierPattern, final ChooseByNameViewModel chooseByNameViewModel) {
    return ContainerUtil.map2List(split(qualifierPattern, chooseByNameViewModel), s -> Pair.create(getNamePattern(chooseByNameViewModel, s), buildPatternMatcher(getNamePattern(chooseByNameViewModel, s), NameUtil.MatchingCaseSensitivity.NONE)));
  }

  @NotNull
  @Override
  public List<String> filterNames(@NotNull ChooseByNameViewModel chooseByNameViewModel, @NotNull String[] names, @NotNull String pattern) {
    List<String> res = new ArrayList<>();
    getNamesByPattern(chooseByNameViewModel, Arrays.asList(names), res, pattern, NameUtil.MatchingCaseSensitivity.NONE);
    return res;
  }

  private static void getNamesByPattern(@NotNull final ChooseByNameViewModel chooseByNameViewModel,
      @NotNull List<String> names,
      @NotNull final List<String> list,
      @NotNull String pattern,
      @NotNull NameUtil.MatchingCaseSensitivity caseSensitivity) throws ProcessCanceledException {
    if (!chooseByNameViewModel.canShowListForEmptyPattern()) {
      LOG.assertTrue(!pattern.isEmpty(), chooseByNameViewModel);
    }

    if (StringUtil.startsWithChar(pattern, '@') && chooseByNameViewModel.getModel() instanceof GotoClassModel2) {
      pattern = pattern.substring(1);
    }

    final MinusculeMatcher matcher = buildPatternMatcher(pattern, caseSensitivity);

    final String finalPattern = pattern;
    JobLauncher.getInstance().invokeConcurrentlyUnderContextProgress(names, name -> {
      if (matches(chooseByNameViewModel, finalPattern, matcher, name)) {
        synchronized (list) {
          list.add(name);
        }
      }
      return true;
    });
  }

  private static boolean matches(@NotNull ChooseByNameViewModel chooseByNameViewModel,
      @NotNull String pattern,
      @NotNull MinusculeMatcher matcher,
      @Nullable String name) {
    if (name == null) {
      return false;
    }
    boolean matches = false;
    if (chooseByNameViewModel.getModel() instanceof CustomMatcherModel) {
      if (((CustomMatcherModel)chooseByNameViewModel.getModel()).matches(name, pattern)) {
        matches = true;
      }
    }
    else if (pattern.isEmpty() || matcher.matches(name)) {
      matches = true;
    }
    return matches;
  }

  private static MinusculeMatcher buildPatternMatcher(@NotNull String pattern, @NotNull NameUtil.MatchingCaseSensitivity caseSensitivity) {
    return NameUtil.buildMatcher(pattern, caseSensitivity);
  }

  private static class MatchesComparator implements Comparator<String> {
    private final String myOriginalPattern;

    private MatchesComparator(@NotNull final String originalPattern) {
      myOriginalPattern = originalPattern.trim();
    }

    @Override
    public int compare(@NotNull final String a, @NotNull final String b) {
      boolean aStarts = a.startsWith(myOriginalPattern);
      boolean bStarts = b.startsWith(myOriginalPattern);
      if (aStarts && bStarts) return a.compareToIgnoreCase(b);
      if (aStarts) return -1;
      if (bStarts) return 1;
      return a.compareToIgnoreCase(b);
    }
  }

  private static class PathProximityComparator implements Comparator<Object> {
    private final ChooseByNameModel myModel;
    @NotNull private final PsiProximityComparator myProximityComparator;

    private PathProximityComparator(final ChooseByNameModel model, @Nullable final PsiElement context) {
      myModel = model;
      myProximityComparator = new PsiProximityComparator(context);
    }

    @Override
    public int compare(final Object o1, final Object o2) {
      int rc = myProximityComparator.compare(o1, o2);
      if (rc != 0) return rc;

      return Comparing.compare(myModel.getFullName(o1), myModel.getFullName(o2));
    }
  }
}
