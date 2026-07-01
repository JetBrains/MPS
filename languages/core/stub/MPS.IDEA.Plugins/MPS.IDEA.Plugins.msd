<?xml version="1.0" encoding="UTF-8"?>
<solution name="MPS.IDEA.Plugins" uuid="8d17ee87-2ea6-4f4a-9bd4-751928af5412" compileInMPS="false">
  <readOnlyStubs/>
    <models>
      <modelRoot contentPath="${mps_home}/plugins/platform-structureView-plugin/lib/" type="java_classes">
        <sourceRoot location="modules/intellij.platform.structureView.jar" />
      </modelRoot>
      <modelRoot contentPath="${mps_home}/plugins/platform-testRunner-plugin/lib/" type="java_classes">
         <sourceRoot location="modules/intellij.platform.testRunner.jar" />
      </modelRoot>
    </models>
  <facets>
    <facet type="java" compile="ext" classes="provided" ext="no">
    <library location="${mps_home}/plugins/platform-structureView-plugin/lib/modules/intellij.platform.structureView.jar" />
    <library location="${mps_home}/plugins/platform-testRunner-plugin/lib/modules/intellij.platform.testRunner.jar" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="true">3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)</dependency>
    <dependency reexport="false">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
  </dependencies>
</solution>


