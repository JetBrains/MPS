<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.kotlin.stubs" uuid="6944825c-ddc2-4099-8cc7-5e6dbbf7f0be" moduleVersion="0">
  <compileInIDEA />
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${mps_home}/lib" type="java_classes">
      <sourceRoot location="kotlin-metadata-jvm-2.4.20-mps.jar" />
      <sourceRoot location="mps-persistence.jar" />
      <PackageScope skip-private="true">
        <include prefix="jetbrains.mps.kotlin.stubs." />
        <include prefix="kotlin." />
        <exclude prefix="jetbrains.mps.kotlin.stubs.smodel." />
      </PackageScope>
    </modelRoot>
  </models>
  <facets>
    <facet type="java" compile="ext" classes="provided" ext="yes">
      <classes generated="true" />
      <library location="${mps_home}/lib/kotlin-metadata-jvm-2.4.20-mps.jar" />
    </facet>
  </facets>
  <dependencies>
    <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="false">3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</dependency>
    <dependency reexport="false">6b3888c1-9802-44d8-8baf-f8e6c33ed689(jetbrains.mps.kotlin)</dependency>
    <dependency reexport="false">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">b55d8dfc-0d9d-43d5-886d-c644e7083bff(jetbrains.mps.java.stub)</dependency>
    <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
    <dependency reexport="false">9e4ff22b-60f1-43ef-a50b-f9f0fcec22e0(jetbrains.mps.kotlin.javaRefs)</dependency>
    <dependency reexport="false">2405a196-e75d-462c-938b-ae8e3fac20aa(jetbrains.mps.baseLanguage.kotlinRefs)</dependency>
    <dependency reexport="false">b00f36f0-49b7-456c-8405-740447ebb192(MPS.IDEA.Modules)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="12" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="2" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="3" />
    <language slang="l:acfc188d-d5d6-4598-b370-6f4a983f05b2:jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="1" />
    <language slang="l:515552c7-fcc0-4ab4-9789-2f3c49344e85:jetbrains.mps.baseLanguage.varVariable" version="0" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
    <language slang="l:3a13115c-633c-4c5c-bbcc-75c4219e9555:jetbrains.mps.lang.quotation" version="5" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="19" />
    <language slang="l:c7fb639f-be78-4307-89b0-b5959c3fa8c8:jetbrains.mps.lang.text" version="0" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
    <module reference="b00f36f0-49b7-456c-8405-740447ebb192(MPS.IDEA.Modules)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" version="0" />
    <module reference="2405a196-e75d-462c-938b-ae8e3fac20aa(jetbrains.mps.baseLanguage.kotlinRefs)" version="0" />
    <module reference="e39e4a59-8cb6-498e-860e-8fa8361c0d90(jetbrains.mps.baseLanguage.scopes)" version="0" />
    <module reference="4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)" version="0" />
    <module reference="b55d8dfc-0d9d-43d5-886d-c644e7083bff(jetbrains.mps.java.stub)" version="0" />
    <module reference="2d3c70e9-aab2-4870-8d8d-6036800e4103(jetbrains.mps.kernel)" version="0" />
    <module reference="6b3888c1-9802-44d8-8baf-f8e6c33ed689(jetbrains.mps.kotlin)" version="1" />
    <module reference="43d159e2-4b8f-49d7-8207-9485fb1ddacf(jetbrains.mps.kotlin.common)" version="0" />
    <module reference="9e4ff22b-60f1-43ef-a50b-f9f0fcec22e0(jetbrains.mps.kotlin.javaRefs)" version="1" />
    <module reference="6944825c-ddc2-4099-8cc7-5e6dbbf7f0be(jetbrains.mps.kotlin.stubs)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="c7fb639f-be78-4307-89b0-b5959c3fa8c8(jetbrains.mps.lang.text)" version="0" />
    <module reference="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" version="0" />
  </dependencyVersions>
</solution>

