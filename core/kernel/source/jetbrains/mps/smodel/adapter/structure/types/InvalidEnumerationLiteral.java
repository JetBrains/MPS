/*
 * Copyright 2003-2018 JetBrains s.r.o.
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
package jetbrains.mps.smodel.adapter.structure.types;

import jetbrains.mps.util.StringUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SDataType;
import org.jetbrains.mps.openapi.language.SEnumeration;
import org.jetbrains.mps.openapi.language.SEnumerationLiteral;
import org.jetbrains.mps.openapi.model.SNodeReference;


/**
 * An invalid enumeration literal instance that keeps its raw value.
 *
 * Introduced in order to facilitate such smodel code:
 *
 * <code>
 *   enumeration ABC
 *     member primitive type: string
 *     members : A, B, C
 *
 *
 *   node.ABCprop = "d"
 *   sout(node.ABCprop)  // <- despite "d" is not a valid member, should print "d", not null
 * </code>
 *
 * At the point, where `typeof(node.ABCprop)` will become an enum member but not a primitive type,
 * we can change semantic and remove this class.
 *
 * @deprecated since typeof(node.ABCprop) eventually become enum member
 */
@Deprecated(since = "19.2", forRemoval = true)
public class InvalidEnumerationLiteral implements SEnumerationLiteral {

  @NotNull
  private final SEnumerationAdapter myOwner;

  @Nullable
  private final Object myRawValue;

  public InvalidEnumerationLiteral(@NotNull SEnumerationAdapter owner, @Nullable Object rawValue) {
    myOwner = owner;
    myRawValue = rawValue;
  }

  @Override
  public SEnumeration getEnumeration() {
    return myOwner;
  }

  @Override
  public String getPresentation() {
    return StringUtil.emptyIfNull(getName());
  }

  @Nullable
  @Override
  public String getName() {
    SDataType rawMemberType = myOwner.getRawMemberType();
    if (rawMemberType == null) {
      return myRawValue == null ? null : myRawValue.toString();
    }
    return rawMemberType.toString(myRawValue);
  }

  @Override
  public int getOrdinal() {
    return -1;
  }

  @Nullable
  @Override
  public SNodeReference getSourceNode() {
    return null;
  }

  @Nullable
  public Object getRawValue() {
    return myRawValue;
  }
}
