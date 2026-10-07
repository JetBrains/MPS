<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6782bec3-b6b2-41c7-b127-59558bac4a8c(jetbrains.mps.build.startup.defaults)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup">
      <concept id="3885435385580582732" name="jetbrains.mps.build.startup.structure.SimpleVmOptions" flags="ng" index="26Ea6D">
        <property id="3885435385580582733" name="options" index="26Ea6C" />
        <property id="5842819808956906658" name="commented" index="2eq24a" />
      </concept>
      <concept id="3885435385580582153" name="jetbrains.mps.build.startup.structure.ClassPathItem" flags="ng" index="26EafG">
        <property id="3885435385580582154" name="path" index="26EafJ" />
      </concept>
      <concept id="3885435385580582152" name="jetbrains.mps.build.startup.structure.MpsStartupScript" flags="ng" index="26EafH">
        <property id="3885435385580582155" name="startupFolder" index="26EafI" />
        <property id="3885435385580631186" name="startupClass" index="26FY9R" />
        <child id="3885435385580582696" name="bootClasspath" index="26Ea7d" />
        <child id="3885435385580627556" name="vmOptions" index="26FZ21" />
        <child id="2693344784283221851" name="vmOptions64" index="2hID6k" />
        <child id="8481880751319421122" name="additionalJvmOptions" index="3caU5o" />
        <child id="8481880751316090625" name="extBootClasspath" index="3cRCUr" />
      </concept>
    </language>
  </registry>
  <node concept="26EafH" id="BJYGrH08Xx">
    <property role="TrG5h" value="MPSStartupScript_template" />
    <property role="26EafI" value="bin" />
    <property role="26FY9R" value="jetbrains.mps.Launcher" />
    <node concept="26EafG" id="48NujD9KJY0" role="26Ea7d">
      <property role="26EafJ" value="lib/platform-loader.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY1" role="26Ea7d">
      <property role="26EafJ" value="lib/util-8.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY2" role="26Ea7d">
      <property role="26EafJ" value="lib/util.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY3" role="26Ea7d">
      <property role="26EafJ" value="lib/app-backend.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY4" role="26Ea7d">
      <property role="26EafJ" value="lib/external-system-rt.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY5" role="26Ea7d">
      <property role="26EafJ" value="lib/externalProcess-rt.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY6" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.andel.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY7" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.bifurcan.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY8" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.fastutil.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY9" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.kernel.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYa" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.multiplatform.shims.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYb" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.openmap.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYc" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.radixTrie.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYd" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.reporting.api.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYe" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.reporting.shared.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYf" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rhizomedb.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYg" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rhizomedb.transactor.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYh" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rhizomedb.transactor.rebase.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYi" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rpc.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYj" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rpc.server.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYk" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.util.codepoints.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYl" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.util.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYm" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.util.logging.api.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYn" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.util.serialization.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYo" role="26Ea7d">
      <property role="26EafJ" value="lib/forms_rt.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYp" role="26Ea7d">
      <property role="26EafJ" value="lib/idea_rt.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYq" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.idea.community.customization.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYr" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.idea.community.ide.customization.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYs" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.java.ide.resources.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYt" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.json.syntax.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYu" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.aalto.xml.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYv" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.asm.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYw" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.automaton.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYx" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.blockmap.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYy" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.bouncy.castle.pgp.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYz" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.bouncy.castle.provider.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY$" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.caffeine.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJY_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.cglib.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYA" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.classgraph.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.cli.parser.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYC" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.codec.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYD" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.compress.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYE" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.imaging.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYF" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.io.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYG" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.lang3.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYH" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.logging.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYI" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.download.pgp.verifier.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYJ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.eclipse.lsp4j.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYK" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.eclipse.lsp4j.jsonrpc.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYL" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.fastutil.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYM" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.fus.ap.validation.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYN" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.gson.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYO" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.guava.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYP" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.hamcrest.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYQ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.hash4j.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYR" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.hdr.histogram.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYS" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.http.client.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYT" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.imgscalr.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYU" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ini4j.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYV" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ion.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYW" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson.annotations.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYX" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson3.databind.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYY" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson3.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJYZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson3.jr.objects.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ0" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson3.module.kotlin.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ1" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.java.compatibility.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ2" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.javax.annotation.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ3" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jaxen.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ4" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jbr.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ5" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jcip.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ6" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jediterm.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ7" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jediterm.ui.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ8" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jetbrains.annotations.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ9" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jgoodies.common.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZa" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jgoodies.forms.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZb" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jps.javac.extension.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZc" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jsoup.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZd" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jsvg.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZe" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.junit4.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZj" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlin.reflect.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZk" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.collections.immutable.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZl" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.coroutines.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZm" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.coroutines.debug.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZn" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.coroutines.slf4j.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZo" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.datetime.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZp" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.html.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZq" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.io.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZr" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.serialization.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZs" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.serialization.json.io.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZt" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.serialization.json.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZu" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.serialization.protobuf.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZv" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kryo5.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZw" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.client.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZx" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.io.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZy" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.network.tls.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZz" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.utils.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ$" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.lz4.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZ_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.markdown.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZA" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.miglayout.swing.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.mvstore.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZC" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.netty.buffer.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZD" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.netty.codec.compression.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZE" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.netty.codec.http.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZF" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.netty.codec.protobuf.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZG" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentelemetry.exporter.otlp.common.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZH" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentelemetry.exporter.sender.jdk.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZI" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentelemetry.extension.kotlin.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZJ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentelemetry.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZK" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentelemetry.sdk.autoconfigure.spi.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZL" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentelemetry.semconv.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZM" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentest4j.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZN" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.oro.matcher.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZO" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.protobuf.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZP" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rd.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZQ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rd.framework.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZR" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rd.swing.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZS" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rd.text.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZT" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.snakeyaml.engine.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZU" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.snakeyaml.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZV" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.stream.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZX" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.velocity.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZY" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.winp.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KJZZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.xtext.xbase.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK00" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.xz.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK01" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.analysis.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK02" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.analysis.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK03" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.backend.observation.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK04" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.backend.workspace.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK05" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.bazel.runfiles.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK06" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.bootstrap.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK07" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.buildData.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK08" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.builtInServer.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK09" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.builtInServer.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0a" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.codeStyle.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0b" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.codeStyle.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0c" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.concurrency.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0d" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.configurationStore.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0e" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.core.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0f" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0g" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.core.ui.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0h" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.credentialStore.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0i" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.credentialStore.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0j" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.credentialStore.ui.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0k" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diagnostic.startUpPerformanceReporter.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0l" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diagnostic.telemetry.exporters.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0m" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diagnostic.telemetry.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0n" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diagnostic.telemetry.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0o" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diff.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0p" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diff.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0q" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.discoverability.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0r" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.duplicates.analysis.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0s" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.editor.ex.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0t" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.editor.ui.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0u" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.eel.impl.base.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0v" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.eel.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0w" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.eel.nioFs.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0x" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.eel.provider.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0y" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0z" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0$" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.experiment.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.feedback.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0A" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.foldings.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0B" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.icons.api.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0C" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.icons.api.rendering.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0D" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.icons.impl.intellij.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0E" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.icons.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0F" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.icons.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0G" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.bootstrap.eel.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0H" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.bootstrap.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0I" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.bootstrap.kernel.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0J" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.codeinsight.inline.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0K" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.concurrency.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0L" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.core.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0M" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0N" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.core.plugins.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0O" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.designer.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0P" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.favoritesTreeView.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0Q" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0R" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.initialConfigImport.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0S" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0T" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.observable.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0U" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.progress.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0V" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.recentProjects.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0W" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.remote.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0X" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.rpc.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0Y" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.ui.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK0Z" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.updateChecker.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK10" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.util.io.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK11" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.util.netty.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK12" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ijent.community.buildConstants.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK13" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ijent.community.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK14" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ijent.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK15" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.indexing.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK16" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.indexing.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK17" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.instanceContainer.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK18" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jbr.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK19" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jps.build.javac.rt.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1a" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.kernel.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1b" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.klogger.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1c" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lang.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1d" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lang.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1e" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lang.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1f" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.locking.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1g" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lsp.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1h" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lsp.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1i" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lvcs.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1j" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.macro.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1k" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.markdown.utils.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1l" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.objectSerializer.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1m" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.pasta.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1n" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.pluginSystem.parser.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1o" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.polySymbols.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1p" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.pratt.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1q" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.project.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1r" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.projectFrame.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1s" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.projectModel.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1t" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.projectModel.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1u" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.rd.community.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1v" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.refactoring.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1w" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.remote.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1x" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.resources.applicationInfo.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1y" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.resources.en.fileTemplates.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1z" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.resources.en.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1$" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.resources.fileTypes.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.resources.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1A" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.rpc.lite.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1B" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.rpc.topics.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1C" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.runtime.product.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1D" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.serviceContainer.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1E" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.settings.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1F" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.starter.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1G" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.statistics.config.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1H" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.statistics.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1I" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.statistics.uploader.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1J" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.syntax.extensions.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1K" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.syntax.i18n.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1L" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.syntax.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1M" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.syntax.psi.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1N" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.syntax.tree.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1O" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.syntax.util.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1P" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.testIntegration.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1Q" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.testIntegration.ui.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1R" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.threadDumpParser.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1S" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.usageView.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1T" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.usageView.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1U" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.annotations.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1V" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.coroutines.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1W" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.diff.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1X" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.ex.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1Y" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.http.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK1Z" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.io.storages.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK20" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.progress.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK21" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.text.matching.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK22" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.ui.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK23" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.core.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK24" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.shared.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK25" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.welcomeScreen.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK26" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.welcomeScreen.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK27" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.workspace.jps.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK28" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.workspace.storage.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK29" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.wsl.impl.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2a" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.remoteDev.util.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2b" role="26Ea7d">
      <property role="26EafJ" value="lib/javac2.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2c" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jaxb.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2e" role="26Ea7d">
      <property role="26EafJ" value="lib/jetbrains.intellij.deps.java.atk.wrapper.linux.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2f" role="26Ea7d">
      <property role="26EafJ" value="lib/jps-model.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2g" role="26Ea7d">
      <property role="26EafJ" value="lib/lib.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2h" role="26Ea7d">
      <property role="26EafJ" value="lib/maven-resolver-provider.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2i" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-resources.zip" />
    </node>
    <node concept="26EafG" id="48NujD9KK2k" role="26Ea7d">
      <property role="26EafJ" value="lib/trove.jar" />
    </node>
    <node concept="26EafG" id="48NujD9KK2l" role="26Ea7d">
      <property role="26EafJ" value="lib/util_rt.jar" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1A" role="26FZ21">
      <property role="26Ea6C" value="MPS no longer uses 32-bit version of mps.vmoptions" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1B" role="2hID6k">
      <property role="26Ea6C" value="Common IntelliJ Platform options:" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1C" role="2hID6k">
      <property role="26Ea6C" value="-Xms256m" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1D" role="2hID6k">
      <property role="26Ea6C" value="-Xmx2048m" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1E" role="2hID6k">
      <property role="26Ea6C" value="-XX:ReservedCodeCacheSize=512m" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1F" role="2hID6k">
      <property role="26Ea6C" value="-XX:+UseG1GC" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1G" role="2hID6k">
      <property role="26Ea6C" value="-XX:SoftRefLRUPolicyMSPerMB=50" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1H" role="2hID6k">
      <property role="26Ea6C" value="-XX:CICompilerCount=2" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1I" role="2hID6k">
      <property role="26Ea6C" value="-XX:+HeapDumpOnOutOfMemoryError" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1J" role="2hID6k">
      <property role="26Ea6C" value="-XX:-OmitStackTraceInFastThrow" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1K" role="2hID6k">
      <property role="26Ea6C" value="-XX:+IgnoreUnrecognizedVMOptions" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1L" role="2hID6k">
      <property role="26Ea6C" value="-ea" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1M" role="2hID6k">
      <property role="26Ea6C" value="-Djava.system.class.loader=com.intellij.util.lang.PathClassLoader" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1N" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.io.useCanonCaches=false" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1O" role="2hID6k">
      <property role="26Ea6C" value="-Dintellij.platform.load.app.info.from.resources=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1P" role="2hID6k">
      <property role="26Ea6C" value="-Dmps.eua.document.name=" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1Q" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.java2d.metal=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1R" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.http.auth.tunneling.disabledSchemes=&quot;&quot;" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1S" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.attach.allowAttachSelf=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1T" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.module.illegalAccess.silent=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1U" role="2hID6k">
      <property role="26Ea6C" value="-Dkotlinx.coroutines.debug=off" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1V" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.tools.attach.tmp.only=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1W" role="2hID6k">
      <property role="26Ea6C" value="Additional MPS options:" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1X" role="2hID6k">
      <property role="26Ea6C" value="-client" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1Y" role="2hID6k">
      <property role="26Ea6C" value="-Dfile.encoding=UTF-8" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl1Z" role="2hID6k">
      <property role="26Ea6C" value="-Dapple.awt.graphics.UseQuartz=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl20" role="2hID6k">
      <property role="26Ea6C" value="-Dide.mac.message.dialogs.as.sheets=false" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl21" role="2hID6k">
      <property role="26Ea6C" value="-Didea.invalidate.caches.invalidates.vfs=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl22" role="2hID6k">
      <property role="26Ea6C" value="-Didea.trust.disabled=false" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl23" role="2hID6k">
      <property role="26Ea6C" value="-Dfreeze.reporter.enabled=false" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl24" role="2hID6k">
      <property role="26Ea6C" value="-Didea.indices.psi.dependent.default=false" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl25" role="2hID6k">
      <property role="26Ea6C" value="-Didea.disable.collect.statistics=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl26" role="2hID6k">
      <property role="26Ea6C" value="-Dawt.toolkit.name=auto" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl27" role="2hID6k">
      <property role="26Ea6C" value="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5071" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6s" role="3cRCUr">
      <property role="26EafJ" value="lib/kotlin-compiler-client-embeddable-2.3.0.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6t" role="3cRCUr">
      <property role="26EafJ" value="lib/kotlin-metadata-jvm-2.4.20-mps.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6u" role="3cRCUr">
      <property role="26EafJ" value="lib/kotlinx-metadata-klib-2.4.20-mps.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6v" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-annotations.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6w" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-behavior-api.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6x" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-behavior-runtime.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6y" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-boot-util.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6z" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-boot.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6$" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-closures.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6_" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-collections.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6A" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-constraints-runtime.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6B" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-context.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6C" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-core.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6D" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-editor-api.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6E" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-editor-runtime.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6F" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-editor.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6G" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-environment.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6H" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-feedback-api.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6I" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-generator.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6J" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-icons.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6K" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-messages-api.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6L" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-messages-for-legacy-constraints.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6M" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-messages-for-rules.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6N" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-messages-for-structure.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6O" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-openapi.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6P" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-persistence.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6Q" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-platform.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6R" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-problem.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6S" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-project-check.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6T" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-references.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6U" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-resources.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6V" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-resources_en.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6W" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-scripts-rt.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6X" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-test.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6Y" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-textgen.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl6Z" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-tips.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl70" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-tuples.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl71" role="3cRCUr">
      <property role="26EafJ" value="lib/mps-workbench.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl72" role="3cRCUr">
      <property role="26EafJ" value="lib/nio-fs.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl76" role="3cRCUr">
      <property role="26EafJ" value="lib/testFramework.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl77" role="3cRCUr">
      <property role="26EafJ" value="lib/ant/lib/ant.jar" />
    </node>
    <node concept="26EafG" id="1xE$2SyOl78" role="3cRCUr">
      <property role="26EafJ" value="lib/branding.jar" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl79" role="3caU5o">
      <property role="26Ea6C" value="-Djava.system.class.loader=com.intellij.util.lang.PathClassLoader" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7d" role="3caU5o">
      <property role="26Ea6C" value="-Djna.nosys=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7e" role="3caU5o">
      <property role="26Ea6C" value="-Djna.noclasspath=true" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7g" role="3caU5o">
      <property role="26Ea6C" value="-Dio.netty.allocator.type=pooled" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7i" role="3caU5o">
      <property role="26Ea6C" value="-Dintellij.platform.runtime.repository.path=%IDE_HOME%/modules/module-descriptors.dat" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7j" role="3caU5o">
      <property role="26Ea6C" value="-Didea.platform.prefix=MPS" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7k" role="3caU5o">
      <property role="26Ea6C" value="-Daether.connector.resumeDownloads=false" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7l" role="3caU5o">
      <property role="26Ea6C" value="-Dcompose.swing.render.on.graphics=true" />
    </node>
    <node concept="26Ea6D" id="3dE39V7Oo2W" role="3caU5o">
      <property role="26Ea6C" value="-Didea.fatal.error.notification=enabled" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7m" role="3caU5o">
      <property role="26Ea6C" value="--enable-native-access=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7n" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.io=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7o" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.lang=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7p" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.lang.ref=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7q" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.lang.reflect=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7r" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.net=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7s" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.nio=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7t" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.nio.charset=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7u" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.text=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7v" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.time=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7w" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.util=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7x" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.util.concurrent=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7y" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7z" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/java.util.concurrent.locks=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7$" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/jdk.internal.ref=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7_" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/jdk.internal.vm=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7A" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/sun.net.dns=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7B" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/sun.nio=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7C" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/sun.nio.ch=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7D" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/sun.nio.fs=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7E" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/sun.security.ssl=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7F" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.base/sun.security.util=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7G" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/com.sun.java.swing=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7H" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/java.awt=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7I" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/java.awt.dnd.peer=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7J" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/java.awt.event=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7K" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/java.awt.font=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7L" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/java.awt.image=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7M" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/java.awt.peer=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7N" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/javax.swing=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7O" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/javax.swing.plaf.basic=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7P" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/javax.swing.text=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7Q" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/javax.swing.text.html=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7R" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/javax.swing.text.html.parser=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7S" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/sun.awt=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7T" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/sun.awt.datatransfer=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7U" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/sun.awt.image=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7V" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/sun.font=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7W" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/sun.java2d=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7X" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/sun.swing=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7Y" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.desktop/sun.swing.text=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl7Z" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=java.management/sun.management=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl80" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=jdk.attach/sun.tools.attach=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl81" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl82" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=jdk.internal.jvmstat/sun.jvmstat.monitor=ALL-UNNAMED" />
    </node>
    <node concept="26Ea6D" id="1xE$2SyOl83" role="3caU5o">
      <property role="26Ea6C" value="--add-opens=jdk.jdi/com.sun.tools.jdi=ALL-UNNAMED" />
    </node>
  </node>
</model>

