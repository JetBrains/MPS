<?xml version="1.0" encoding="UTF-8"?>
<solution name="JAXB" uuid="72acac8d-4dd3-4bac-a8ea-ee97162c24e8" moduleVersion="0" compileInMPS="false">
  <readOnlyStubs/>
  <models>
    <modelRoot contentPath="${mps_home}/lib/" type="java_classes">
      <sourceRoot location="intellij.libraries.jaxb.jar" />
      <PackageScope>
        <include prefix="javax.activation." />
        <include prefix="javax.xml.bind." />
        <!-- com.sun.* packages are impl-specific, not exposed -->
      </PackageScope>
    </modelRoot>
  </models>
  <facets>
    <facet type="java" compile="ext" classes="provided" ext="no">
      <library location="${mps_home}/lib/intellij.libraries.jaxb.jar" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
  </dependencies>
</solution>

