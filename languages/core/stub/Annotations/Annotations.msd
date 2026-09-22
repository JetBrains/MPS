<?xml version="1.0" encoding="UTF-8"?>
<solution name="Annotations" uuid="3f233e7f-b8a6-46d2-a57f-795d56775243" moduleVersion="0" compileInMPS="false">
  <readOnlyStubs/>
  <models>
    <modelRoot type="java_classes">
      <sourceRoot path="${mps_home}/lib/intellij.libraries.jetbrains.annotations.jar" />
      <!--
        MPS used to expose IDEA annotations.jar only through this stub solution, and [mps-annotations] were exposed through MPS.Core;
        I don't see a reason to keep MPS annotations part of much bigger MPS.Core, therefore, copied them here.
        FIXME write a migration that would update references to MPS annotations through MPS.Core to use this Annotations stub instead.
      -->
      <sourceRoot path="${mps_home}/lib/mps-annotations.jar" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java" compile="ext" classes="provided" ext="no">
      <library location="${mps_home}/lib/intellij.libraries.jetbrains.annotations.jar" />
      <library location="${mps_home}/lib/mps-annotations.jar" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
  </dependencies>
</solution>

