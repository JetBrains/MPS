<?xml version="1.0" encoding="UTF-8"?>
<solution name="JUnit" uuid="49808fad-9d41-4b96-83fa-9231640f6b2b" moduleVersion="0" compileInMPS="false">
  <readOnlyStubs/>
  <models>
    <modelRoot contentPath="${mps_home}/lib/" type="java_classes">
      <sourceRoot location="junit4.jar" />
      <sourceRoot location="lib.jar" />
      <sourceRoot location="hamcrest.jar" />
      <sourceRoot location="intellij.libraries.junit5.jar" />
      <sourceRoot location="intellij.libraries.junit5.jupiter.jar" />
      <sourceRoot location="intellij.libraries.junit5.launcher.jar" />
      <sourceRoot location="intellij.libraries.junit5.vintage.jar" />
      <PackageScope>
        <include prefix="junit."/>
        <include prefix="org.junit."/>
        <include prefix="org.hamcrest."/>
      </PackageScope>
    </modelRoot>
  </models>
  <facets>
    <facet type="java" compile="ext" classes="provided" ext="no">
      <classes generated="true" />
      <library location="${mps_home}/lib/junit4.jar" />
      <library location="${mps_home}/lib/lib.jar" />
      <library location="${mps_home}/lib/hamcrest.jar" />
      <library location="${mps_home}/lib/intellij.libraries.junit5.jar" />
      <library location="${mps_home}/lib/intellij.libraries.junit5.jupiter.jar" />
      <library location="${mps_home}/lib/intellij.libraries.junit5.launcher.jar" />
      <library location="${mps_home}/lib/intellij.libraries.junit5.vintage.jar" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
  </dependencies>
</solution>

