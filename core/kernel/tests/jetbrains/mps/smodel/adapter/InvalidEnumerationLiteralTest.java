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
package jetbrains.mps.smodel.adapter;

import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.adapter.ids.SDataTypeId;
import jetbrains.mps.smodel.adapter.structure.types.InvalidEnumerationLiteral;
import jetbrains.mps.smodel.adapter.structure.types.SEnumerationAdapter;
import jetbrains.mps.smodel.behaviour.BHReflection;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.StructureRegistry;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.DataTypeDescriptor;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.junit.Test;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Collections;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;

@SuppressWarnings("removal")
public class InvalidEnumerationLiteralTest {
  private static final SDataTypeId ENUM_ID = MetaIdFactory.dataTypeId(0x1234L, 0x5678L, 42L);

  // SEnumerationAdapter is final and reads ConceptRegistry.getInstance().
  // Never construct a replacement ConceptRegistry when one is already initialized:
  // ConceptRegistry's constructor creates BehaviorRegistryImpl and ConstraintsRegistry,
  // which overwrite global static registries in BHReflection, SMethodBuilder, and ConstraintsInit.
  private static void withRegistry(@Nullable PrimitiveTypeId rawType, ThrowingRunnable body) throws Exception {
    ConceptRegistry existing = ConceptRegistry.getInstance();
    if (existing != null) {
      Field structureField = ConceptRegistry.class.getDeclaredField("myStructureRegistry");
      structureField.setAccessible(true);
      StructureRegistry savedStructure = (StructureRegistry) structureField.get(existing);
      StructureRegistry fakeStructure = new StructureRegistry(null) {
        @Nullable
        @Override
        public ConceptDescriptor getConceptDescriptor(@NotNull SConceptId concept) {
          return savedStructure.getConceptDescriptor(concept);
        }

        @Nullable
        @Override
        public DataTypeDescriptor getDataTypeDescriptor(SDataTypeId id) {
          return ENUM_ID.equals(id) ? new TestEnumeration(rawType) : savedStructure.getDataTypeDescriptor(id);
        }

        @Override
        public void clear() {
          savedStructure.clear();
        }
      };
      structureField.set(existing, fakeStructure);
      try {
        body.run();
      } finally {
        structureField.set(existing, savedStructure);
      }
      return;
    }

    Field instanceField = ConceptRegistry.class.getDeclaredField("INSTANCE");
    instanceField.setAccessible(true);
    ConceptRegistry fake = new ConceptRegistry(new LanguageRegistry(null, () -> null)) {
      @Nullable
      @Override
      public DataTypeDescriptor getDataTypeDescriptor(@NotNull SDataTypeId id) {
        return ENUM_ID.equals(id) ? new TestEnumeration(rawType) : null;
      }
    };
    instanceField.set(null, fake);
    try {
      body.run();
    } finally {
      instanceField.set(null, null);
    }
  }

  private interface ThrowingRunnable {
    void run() throws Exception;
  }

  @Test
  public void withoutRawMemberTypeTheRawValueStringIsTheName() throws Exception {
    withRegistry(null, () -> {
      SEnumerationAdapter enumeration = new SEnumerationAdapter(ENUM_ID, "test.NoRawType");
      assertNull(enumeration.getRawMemberType());

      InvalidEnumerationLiteral literal = new InvalidEnumerationLiteral(enumeration, "d");
      assertEquals("d", literal.getName());
      assertEquals("d", literal.getPresentation());
      assertEquals("7", new InvalidEnumerationLiteral(enumeration, 7).getName());
    });
  }

  @Test
  public void withoutRawMemberTypeANullRawValueHasNoName() throws Exception {
    withRegistry(null, () -> {
      InvalidEnumerationLiteral literal = new InvalidEnumerationLiteral(new SEnumerationAdapter(ENUM_ID, "test.NoRawType"), null);
      assertNull(literal.getName());
      assertEquals("", literal.getPresentation());
    });
  }

  @Test
  public void withIntegerRawMemberTypeTheTypeRendersTheValue() throws Exception {
    withRegistry(PrimitiveTypeId.INTEGER, () -> {
      SEnumerationAdapter enumeration = new SEnumerationAdapter(ENUM_ID, "test.IntRaw");
      assertNotNull(enumeration.getRawMemberType());
      InvalidEnumerationLiteral literal = new InvalidEnumerationLiteral(enumeration, 7);
      assertEquals("7", literal.getName());
      assertEquals("7", literal.getPresentation());
    });
  }

  @Test
  public void withStringRawMemberTypeTheTypeRendersTheValue() throws Exception {
    withRegistry(PrimitiveTypeId.STRING, () -> {
      InvalidEnumerationLiteral literal = new InvalidEnumerationLiteral(new SEnumerationAdapter(ENUM_ID, "test.Plain"), "d");
      assertEquals("d", literal.getName());
      assertEquals("d", literal.getPresentation());
    });
  }

  @Test
  public void withRegistryPreservesInitializedBehaviorRegistry() throws Exception {
    Field bhField = BHReflection.class.getDeclaredField("ourRegistry");
    bhField.setAccessible(true);
    ConceptRegistry preExisting = ConceptRegistry.getInstance();
    if (preExisting != null) {
      StructureRegistry structureBefore = preExisting.getStructureRegistry();
      Object bhBefore = bhField.get(null);
      withRegistry(null, () -> {
        assertNull(new SEnumerationAdapter(ENUM_ID, "test.NoRawType").getRawMemberType());
        assertSame(bhBefore, bhField.get(null));
      });
      assertSame(bhBefore, bhField.get(null));
      assertSame(structureBefore, preExisting.getStructureRegistry());
      return;
    }

    Field instanceField = ConceptRegistry.class.getDeclaredField("INSTANCE");
    instanceField.setAccessible(true);
    ConceptRegistry baseline = new ConceptRegistry(new LanguageRegistry(null, () -> null));
    instanceField.set(null, baseline);
    try {
      StructureRegistry structureBefore = baseline.getStructureRegistry();
      Object bhBefore = bhField.get(null);
      withRegistry(null, () -> {
        assertNull(new SEnumerationAdapter(ENUM_ID, "test.NoRawType").getRawMemberType());
        assertSame(bhBefore, bhField.get(null));
      });
      assertSame(bhBefore, bhField.get(null));
      assertSame(structureBefore, baseline.getStructureRegistry());
    } finally {
      instanceField.set(null, null);
    }
  }

  private static class TestEnumeration implements EnumerationDescriptor {
    private final PrimitiveTypeId myRawType;

    TestEnumeration(@Nullable PrimitiveTypeId rawType) {
      myRawType = rawType;
    }

    @Override
    public SDataTypeId getId() {
      return ENUM_ID;
    }

    @NotNull
    @Override
    public String getName() {
      return "test.Enum";
    }

    @Nullable
    @Override
    public SNodeReference getSourceNode() {
      return null;
    }

    @NotNull
    @Override
    public Collection<MemberDescriptor> getMembers() {
      return Collections.emptyList();
    }

    @Nullable
    @Override
    public MemberDescriptor getMember(@Nullable String name) {
      return null;
    }

    @Nullable
    @Override
    public MemberDescriptor getMember(long idValue) {
      return null;
    }

    @Nullable
    @Override
    public MemberDescriptor getDefault() {
      return null;
    }

    @Nullable
    @Override
    public PrimitiveTypeId getMemberRawType() {
      return myRawType;
    }
  }
}
