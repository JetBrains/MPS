<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.git4idea.stubs" uuid="f57286e3-4e19-4d8d-8045-3900761f6530" moduleVersion="0">
  <models>
    <modelRoot contentPath="${mps_home}/plugins/vcs-git/lib" type="java_classes">
      <sourceRoot location="git4idea-rt.jar" />
      <sourceRoot location="vcs-git.jar" />
      <sourceRoot location="modules/intellij.vcs.git.shared.jar" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java" compile="ext" classes="provided" ext="no">
      <classes generated="true" />
      <library location="${mps_home}/plugins/vcs-git/lib/git4idea-rt.jar" />
      <library location="${mps_home}/plugins/vcs-git/lib/vcs-git.jar" />
      <library location="${mps_home}/plugins/vcs-git/lib/modules/intellij.vcs.git.shared.jar" />
    </facet>
  </facets>
  <dependencies>
    <dependency reexport="true">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
    <dependency reexport="false">3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)</dependency>
    <dependency reexport="true">f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b(jetbrains.mps.vcs.idea.stubs)</dependency>
    <dependency reexport="false">b00f36f0-49b7-456c-8405-740447ebb192(MPS.IDEA.Modules)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="12" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="3" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:c7fb639f-be78-4307-89b0-b5959c3fa8c8:jetbrains.mps.lang.text" version="0" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
    <module reference="b00f36f0-49b7-456c-8405-740447ebb192(MPS.IDEA.Modules)" version="0" />
    <module reference="f57286e3-4e19-4d8d-8045-3900761f6530(jetbrains.mps.git4idea.stubs)" version="0" />
    <module reference="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b(jetbrains.mps.vcs.idea.stubs)" version="0" />
  </dependencyVersions>
</solution>

