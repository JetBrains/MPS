<?xml version="1.0" encoding="UTF-8"?>
<solution name="jetbrains.mps.spellchecker.idea.stubs" uuid="9979803b-18d3-440b-8a74-99cec41fc78e" moduleVersion="0">
  <readOnlyStubs/>
  <models>
    <modelRoot contentPath="${mps_home}/lib" type="java_classes">
      <sourceRoot location="intellij.spellchecker.jar" />
      <sourceRoot location="intellij.spellchecker.xml.jar" />
      <PackageScope skip-private="false">
        <include prefix="com.intellij." />
      </PackageScope>
    </modelRoot>
    <modelRoot contentPath="${mps_home}/plugins/grazie/lib" type="java_classes">
      <sourceRoot location="grazie.jar" />
      <sourceRoot location="intellij.grazie.core.jar" />
      <sourceRoot location="org.jetbrains.intellij.deps.languagetool-languagetool-core.jar" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java" compile="ext" classes="provided" ext="no">
      <library location="${mps_home}/lib/intellij.spellchecker.jar" />
      <library location="${mps_home}/lib/intellij.spellchecker.xml.jar" />
      <library location="${mps_home}/plugins/grazie/lib/grazie.jar" />
      <library location="${mps_home}/plugins/grazie/lib/intellij.grazie.core.jar" />
      <library location="${mps_home}/plugins/grazie/lib/org.jetbrains.intellij.deps.languagetool-languagetool-core.jar" />
    </facet>
  </facets>
  <dependencies>
    <dependency reexport="false">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
  </dependencies>
  <languageVersions />
</solution>
