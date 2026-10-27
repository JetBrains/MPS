/*
 * Copyright 2003-2026 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.util;

import java.util.Comparator;

public final class ToStringComparator implements Comparator<Object> {
  private final boolean myIgnoreCase;

  public ToStringComparator(boolean ignoreCase) {
    myIgnoreCase = ignoreCase;
  }

  public ToStringComparator() {
    this(false);
  }

  @Override
  public int compare(Object o1, Object o2) {
    String s1 = String.valueOf(o1);
    String s2 = String.valueOf(o2);
    if (myIgnoreCase) {
      return s1.compareToIgnoreCase(s2);
    } else {
      return s1.compareTo(s2);
    }
  }
}
