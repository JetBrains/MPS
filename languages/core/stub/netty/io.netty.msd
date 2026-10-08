<?xml version="1.0" encoding="UTF-8"?>
<solution name="io.netty" uuid="6c563085-e123-4aaf-be88-fb88e02f8282" moduleVersion="0" compileInMPS="false">
  <readOnlyStubs/>
  <models>
    <modelRoot contentPath="${mps_home}/lib/" type="java_classes">
      <sourceRoot location="intellij.libraries.netty.buffer.jar" />
      <sourceRoot location="intellij.libraries.netty.codec.http.jar" />
      <sourceRoot location="intellij.libraries.netty.codec.compression.jar" />
      <sourceRoot location="intellij.libraries.netty.handler.proxy.jar" />
      <sourceRoot location="intellij.libraries.netty.codec.protobuf.jar" />
      <PackageScope skip-private="true">
        <include prefix="io.netty." />
      </PackageScope>
    </modelRoot>
  </models>
  <facets>
    <facet type="java" compile="ext" classes="provided" ext="no">
      <library location="${mps_home}/lib/intellij.libraries.netty.buffer.jar" />
      <library location="${mps_home}/lib/intellij.libraries.netty.codec.http.jar" />
      <library location="${mps_home}/lib/intellij.libraries.netty.codec.compression.jar" />
      <library location="${mps_home}/lib/intellij.libraries.netty.handler.proxy.jar" />
      <library location="${mps_home}/lib/intellij.libraries.netty.codec.protobuf.jar" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
  </dependencies>
  <languageVersions />
  <dependencyVersions />
</solution>

