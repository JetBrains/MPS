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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
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
      </concept>
    </language>
  </registry>
  <node concept="26EafH" id="BJYGrH08Xx">
    <property role="26FY9R" value="jetbrains.mps.Launcher" />
    <property role="TrG5h" value="MPSStartupScript_template" />
    <property role="3GE5qa" value="" />
    <property role="26EafI" value="bin" />
    <node concept="26Ea6D" id="1t_0ZyxyXAT" role="26FZ21">
      <property role="2eq24a" value="true" />
      <property role="26Ea6C" value="MPS no longer uses 32-bit version of mps.vmoptions" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7WZ" role="2hID6k">
      <property role="26Ea6C" value="Common IntelliJ Platform options:" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X0" role="2hID6k">
      <property role="26Ea6C" value="-Xms256m" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X1" role="2hID6k">
      <property role="26Ea6C" value="-Xmx2048m" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X2" role="2hID6k">
      <property role="26Ea6C" value="-XX:ReservedCodeCacheSize=512m" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X3" role="2hID6k">
      <property role="26Ea6C" value="-XX:+UseG1GC" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X4" role="2hID6k">
      <property role="26Ea6C" value="-XX:SoftRefLRUPolicyMSPerMB=50" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X5" role="2hID6k">
      <property role="26Ea6C" value="-XX:CICompilerCount=2" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X6" role="2hID6k">
      <property role="26Ea6C" value="-XX:+HeapDumpOnOutOfMemoryError" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X7" role="2hID6k">
      <property role="26Ea6C" value="-XX:-OmitStackTraceInFastThrow" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X8" role="2hID6k">
      <property role="26Ea6C" value="-XX:+IgnoreUnrecognizedVMOptions" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7X9" role="2hID6k">
      <property role="26Ea6C" value="-ea" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xa" role="2hID6k">
      <property role="26Ea6C" value="-Djava.system.class.loader=com.intellij.util.lang.PathClassLoader" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xb" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.io.useCanonCaches=false" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPMXJv" role="2hID6k">
      <property role="26Ea6C" value="-Dintellij.platform.load.app.info.from.resources=true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPMXHP" role="2hID6k">
      <property role="26Ea6C" value="-Dmps.eua.document.name=" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xc" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.java2d.metal=true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xd" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.http.auth.tunneling.disabledSchemes=&quot;&quot;" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xe" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.attach.allowAttachSelf=true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xf" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.module.illegalAccess.silent=true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xg" role="2hID6k">
      <property role="26Ea6C" value="-Dkotlinx.coroutines.debug=off" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xh" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.tools.attach.tmp.only=true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xi" role="2hID6k">
      <property role="26Ea6C" value="Additional MPS options:" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xj" role="2hID6k">
      <property role="26Ea6C" value="-client" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xk" role="2hID6k">
      <property role="26Ea6C" value="-Dfile.encoding=UTF-8" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xl" role="2hID6k">
      <property role="26Ea6C" value="-Dapple.awt.graphics.UseQuartz=true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xm" role="2hID6k">
      <property role="26Ea6C" value="-Dide.mac.message.dialogs.as.sheets=false" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xn" role="2hID6k">
      <property role="26Ea6C" value="-Didea.invalidate.caches.invalidates.vfs=true" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xo" role="2hID6k">
      <property role="26Ea6C" value="-Didea.trust.disabled=false" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xp" role="2hID6k">
      <property role="26Ea6C" value="-Dfreeze.reporter.enabled=false" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xq" role="2hID6k">
      <property role="26Ea6C" value="-Didea.indices.psi.dependent.default=false" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPMXGb" role="2hID6k">
      <property role="26Ea6C" value="-Didea.disable.collect.statistics=true" />
    </node>
    <node concept="26Ea6D" id="4d$y3X1UMJD" role="2hID6k">
      <property role="26Ea6C" value="-Dawt.toolkit.name=auto" />
    </node>
    <node concept="26Ea6D" id="1qi0vDPH7Xr" role="2hID6k">
      <property role="2eq24a" value="true" />
      <property role="26Ea6C" value="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5071" />
    </node>
    <node concept="26EafG" id="4nX__hM7qzi" role="26Ea7d">
      <property role="26EafJ" value="lib/annotations.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwyZ" role="26Ea7d">
      <property role="26EafJ" value="lib/app-backend.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qzo" role="26Ea7d">
      <property role="26EafJ" value="lib/app.jar" />
    </node>
    <node concept="26EafG" id="9nERkLKyGf" role="26Ea7d">
      <property role="26EafJ" value="lib/branding.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qzK" role="26Ea7d">
      <property role="26EafJ" value="lib/eclipse.jar" />
    </node>
    <node concept="26EafG" id="5DGJi3Asu6S" role="26Ea7d">
      <property role="26EafJ" value="lib/eclipse.lsp4j.jar" />
    </node>
    <node concept="26EafG" id="5DGJi3AsAg5" role="26Ea7d">
      <property role="26EafJ" value="lib/eclipse.lsp4j.jsonrpc.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7q$5" role="26Ea7d">
      <property role="26EafJ" value="lib/external-system-rt.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7q$h" role="26Ea7d">
      <property role="26EafJ" value="lib/externalProcess-rt.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwB3" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.andel.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwBD" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.bifurcan.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCf" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.fastutil.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCg" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.kernel.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCh" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.multiplatform.shims.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCi" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.reporting.api.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCS" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.reporting.shared.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCT" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rhizomedb.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCU" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rhizomedb.transactor.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCV" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rhizomedb.transactor.rebase.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwCW" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rpc.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwDy" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.rpc.server.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwDz" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.util.codepoints.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwD$" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.util.core.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwD_" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.util.logging.api.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwDA" role="26Ea7d">
      <property role="26EafJ" value="lib/fleet.util.serialization.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7q$u" role="26Ea7d">
      <property role="26EafJ" value="lib/forms_rt.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7q$G" role="26Ea7d">
      <property role="26EafJ" value="lib/groovy.jar" />
    </node>
    <node concept="26EafG" id="SW1_f8PwXw" role="26Ea7d">
      <property role="26EafJ" value="lib/hamcrest.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7q$V" role="26Ea7d">
      <property role="26EafJ" value="lib/idea_rt.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE0C" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.emojipicker.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE1h" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.grid.core.impl.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE1R" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.grid.csv.core.impl.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE1S" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.grid.impl.ide.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE1T" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.grid.impl.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE1U" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.grid.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE1V" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.grid.types.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2x" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.ide.startup.importSettings.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2y" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.java.aetherDependencyResolver.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2z" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.aalto.xml.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2$" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.asm.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.asm.tools.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2A" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.automaton.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2B" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.batik.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2C" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.blockmap.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2D" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.bouncy.castle.pgp.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2E" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.bouncy.castle.provider.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2F" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.caffeine.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2G" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.cglib.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2H" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.classgraph.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2I" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.cli.parser.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2J" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.coil.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2K" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.cli.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2L" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.codec.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2M" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.compress.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2N" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.imaging.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2O" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.io.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2P" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.lang3.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2Q" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.logging.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2R" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.commons.text.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2S" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.compose.foundation.desktop.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2T" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.compose.runtime.desktop.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2U" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.fastutil.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2V" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.grpc.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2W" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.grpc.netty.shaded.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2X" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.gson.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2Y" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.guava.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE2Z" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.hash4j.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE30" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.hdr.histogram.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE31" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.http.client.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE32" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.icu4j.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE33" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.imgscalr.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE34" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ini4j.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE35" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ion.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE36" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson.databind.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE37" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson.dataformat.yaml.jar" />
    </node>
    <node concept="26EafG" id="90Mz0$iE38" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMm" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson.jr.objects.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMn" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jackson.module.kotlin.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMo" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.java.websocket.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMp" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.javax.activation.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMq" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.javax.annotation.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMr" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jaxen.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMs" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jbr.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMt" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jcef.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMu" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jcip.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMv" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jediterm.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMw" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jediterm.ui.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMx" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jettison.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMy" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jgoodies.common.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMz" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jgoodies.forms.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIM$" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jsonpath.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIM_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jsoup.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMA" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jspecify.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jsvg.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMC" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jvm.native.trusted.roots.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMD" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.jzlib.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIME" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlin.reflect.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMF" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.collections.immutable.jar" />
    </node>
    <node concept="26EafG" id="KnVildsIMG" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.coroutines.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsINi" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.coroutines.debug.jar" />
    </node>
    <node concept="26EafG" id="KnVildsINj" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.coroutines.guava.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2m" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.coroutines.slf4j.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2n" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.datetime.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2o" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.document.store.mvstore.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2p" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.html.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2q" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.io.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2r" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.serialization.cbor.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2s" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.serialization.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2t" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.serialization.json.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJd5" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kotlinx.serialization.protobuf.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2u" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.kryo5.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2v" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.client.cio.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2w" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.client.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2x" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.io.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2y" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.network.tls.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2z" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.server.cio.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ2$" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.ktor.utils.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ3a" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.lucene.common.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ3b" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.lz4.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ3c" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.markdown.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ3d" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.maven.resolver.provider.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJiS" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.microba.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJiT" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.miglayout.swing.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJiU" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.mvstore.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJiV" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.netty.buffer.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJiW" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.netty.codec.compression.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJiX" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.netty.codec.http.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJiY" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.netty.handler.proxy.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJiZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opencsv.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj0" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentelemetry.exporter.sender.jdk.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj1" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.opentelemetry.sdk.autoconfigure.spi.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj2" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.oro.matcher.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj3" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.plexus.utils.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj4" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.protobuf.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj5" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.proxy.vole.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj6" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.pty4j.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj7" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rd.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj8" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rd.framework.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJj9" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rd.swing.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJja" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rd.text.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJ$j" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.rhino.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJjb" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.skiko.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJjc" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.snakeyaml.engine.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyh" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.snakeyaml.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyi" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.sshj.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyj" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.stream.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyk" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.swingx.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyU" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.velocity.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyV" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.winp.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyW" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.xerces.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyX" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.xml.rpc.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyY" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.xstream.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJyZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.xtext.xbase.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJz0" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.libraries.xz.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJz1" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.analysis.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJz2" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.analysis.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJII" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIJ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.bookmarks.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIK" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.bookmarks.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIL" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.buildView.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIM" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.buildView.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIN" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.buildView.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIO" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.builtInServer.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIP" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.builtInServer.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJRB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.clouds.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJSd" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.collaborationTools.auth.base.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJSN" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.collaborationTools.auth.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJTp" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.collaborationTools.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJTZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.completion.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJU_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.completion.common.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJVb" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.completion.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJVL" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.compose.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJWn" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.compose.markdown.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJWX" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.core.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJXz" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJY9" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.core.ui.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJYJ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.credentialStore.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJZl" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.credentialStore.ui.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJZV" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.debugger.impl.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK2B" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.debugger.impl.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK3d" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.debugger.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJZW" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.debugger.impl.rpc.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJZX" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.debugger.impl.shared.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJZY" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.debugger.impl.ui.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJZZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.debugger.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK7h" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diagnostic.freezeAnalyzer.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK7R" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diagnostic.freezes.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK8t" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diagnostic.telemetry.agent.extension.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK93" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diff.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK9D" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.diff.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKaf" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.duplicates.analysis.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKaP" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.editor.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKbr" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.editor.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKc1" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.editor.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKcB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.eel.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKdd" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.eel.tcp.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKdN" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.dashboard.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK00" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.dashboard.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKfz" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.dashboard.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKhS" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.impl.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKiu" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.impl.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKj4" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.serviceView.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKjE" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.serviceView.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKkg" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.execution.serviceView.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKkQ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.externalProcessAuthHelper.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKkR" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.externalSystem.dependencyUpdater.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKlt" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.externalSystem.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKlu" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.externalSystem.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKm4" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.find.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKmE" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.find.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKng" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKnQ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.concurrency.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKp1" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKpB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKqd" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.impl.wsl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKqN" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ide.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKrp" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.inline.completion.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKrq" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.inspect.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKs0" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.foundation.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKsA" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.ideLafBridge.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKtc" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.markdown.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKun" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.markdown.extensions.autolink.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKwG" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.markdown.extensions.gfmAlerts.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKxi" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.markdown.extensions.gfmStrikethrough.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKxS" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.markdown.extensions.gfmTables.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKyu" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.markdown.extensions.images.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKyv" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.markdown.ideLafBridgeStyling.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKz5" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.jewel.ui.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKzF" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.kernel.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK$Q" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.kernel.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK$R" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.kernel.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK_t" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lang.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKA3" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lang.impl.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKAD" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lang.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKBf" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lang.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKCq" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.langInjection.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKCr" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.langInjection.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKDA" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.locking.impl.jar" />
    </node>
    <node concept="26EafG" id="5DGJi3AsAgc" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lsp.impl.jar" />
    </node>
    <node concept="26EafG" id="5DGJi3AsAgj" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lsp.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKDB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.lvcs.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKEM" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.managed.cache.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKFo" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.managed.cache.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKFY" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.ml.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKFZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.monolith.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKG_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.navbar.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKHK" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.navbar.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKIm" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.navbar.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK01" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.navbar.monolith.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKLg" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.pluginManager.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKLQ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.pluginManager.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKLR" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.pluginManager.shared.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKN2" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.polySymbols.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKN3" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.polySymbols.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKND" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.progress.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKOf" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.project.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKOP" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.projectFrame.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKPr" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.projectModel.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKQ1" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.projectModel.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKQB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.recentFiles.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKRd" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.recentFiles.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKRN" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.recentFiles.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKSp" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.rpc.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKSZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.rpc.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKUa" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.rpc.topics.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKUb" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.rpc.topics.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKUL" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.rpc.topics.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKVW" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.scopes.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKVX" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.scopes.jar" />
    </node>
    <node concept="26EafG" id="KnVildsKWz" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.scriptDebugger.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL02" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.scriptDebugger.protocolReaderRuntime.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL0C" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.scriptDebugger.ui.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL1e" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.searchEverywhere.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL1f" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.searchEverywhere.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL1P" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.searchEverywhere.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL30" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.settings.local.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL31" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.smRunner.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL3B" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.smRunner.vcs.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL4M" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.structuralSearch.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL4N" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.tasks.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL5p" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.tasks.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL6$" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.tips.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL7a" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.todo.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL7K" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.todo.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL8m" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.ex.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL8W" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.util.ui.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK02" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLbR" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.dvcs.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLct" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.dvcs.impl.shared.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLcu" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.dvcs.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLdD" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.impl.exec.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLdE" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.impl.frontend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLeg" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLeQ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.impl.lang.actions.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLg1" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.impl.lang.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLgB" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.impl.shared.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLhd" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLhN" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.log.graph.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLhO" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.log.graph.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLiZ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.log.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLj_" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.log.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLkb" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.vcs.shared.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLkL" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.warmup.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLln" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.welcomeScreen.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLlX" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.platform.welcomeScreen.jar" />
    </node>
    <node concept="26EafG" id="KnVildsL9y" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.regexp.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK03" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.relaxng.jar" />
    </node>
    <node concept="26EafG" id="KnVildsLps" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.settingsSync.core.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK06" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.analysis.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK07" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.analysis.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK08" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.dom.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK09" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.dom.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0a" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.emmet.backend.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0K" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.emmet.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0L" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0M" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.langInjection.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0N" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.langInjection.xpath.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0O" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.parser.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0P" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.psi.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0Q" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.psi.jar" />
    </node>
    <node concept="26EafG" id="KnVildsK0R" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.structureView.impl.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIQ" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.structureView.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIR" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.syntax.jar" />
    </node>
    <node concept="26EafG" id="KnVildsJIS" role="26Ea7d">
      <property role="26EafJ" value="lib/intellij.xml.ui.common.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qA1" role="26Ea7d">
      <property role="26EafJ" value="lib/javac2.jar" />
    </node>
    <node concept="26EafG" id="ZaK_3oczXD" role="26Ea7d">
      <property role="26EafJ" value="lib/javax.activation.jar" />
    </node>
    <node concept="26EafG" id="ZaK_3oczYJ" role="26Ea7d">
      <property role="26EafJ" value="lib/javax.annotation-api.jar" />
    </node>
    <node concept="26EafG" id="1RKeUBbef6i" role="26Ea7d">
      <property role="26EafJ" value="lib/jaxb-api.jar" />
    </node>
    <node concept="26EafG" id="1RKeUBbefdc" role="26Ea7d">
      <property role="26EafJ" value="lib/jaxb-runtime.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qAE" role="26Ea7d">
      <property role="26EafJ" value="lib/jps-model.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qB0" role="26Ea7d">
      <property role="26EafJ" value="lib/junit4.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qC8" role="26Ea7d">
      <property role="26EafJ" value="lib/kotlin-compiler-client-embeddable-2.3.0.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qCy" role="26Ea7d">
      <property role="26EafJ" value="lib/kotlin-metadata-jvm-2.3.0-mps.jar" />
    </node>
    <node concept="26EafG" id="3vFdno4LV98" role="26Ea7d">
      <property role="26EafJ" value="lib/kotlinx-metadata-klib-2.3.0-mps.jar" />
    </node>
    <node concept="26EafG" id="9nERkLKyHi" role="26Ea7d">
      <property role="26EafJ" value="lib/lib.jar" />
    </node>
    <node concept="26EafG" id="ZaK_3oc$Oo" role="26Ea7d">
      <property role="26EafJ" value="lib/maven-resolver-provider.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qCX" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-annotations.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qDp" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-behavior-api.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qDQ" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-behavior-runtime.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qEk" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot-util.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qEN" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qFj" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-closures.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qFO" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-collections.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qGm" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-constraints-runtime.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qGT" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-context.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qHt" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-core.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qI2" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-editor-api.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qIC" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-editor-runtime.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qJf" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-editor.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qJR" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-environment.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qKw" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-feedback-api.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qLa" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-generator.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qLP" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-icons.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qNe" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-messages-api.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qNW" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-messages-for-legacy-constraints.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qOF" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-messages-for-rules.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qPr" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-messages-for-structure.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qQY" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-openapi.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qRL" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-persistence.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qS_" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-platform.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qZA" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-problem.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7r0x" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-project-check.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7r1t" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-references.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7r2q" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-resources.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7r3o" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-resources_en.jar" />
    </node>
    <node concept="26EafG" id="7LE2I2UQ$Tl" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-scripts-rt.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7r4n" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-test.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7r5n" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-textgen.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7r6o" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-tips.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qTq" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-tuples.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7r7q" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-workbench.jar" />
    </node>
    <node concept="26EafG" id="2cMGRytXXLz" role="26Ea7d">
      <property role="26EafJ" value="lib/nio-fs.jar" />
    </node>
    <node concept="26EafG" id="44nat7ZsPd1" role="26Ea7d">
      <property role="26EafJ" value="lib/opentelemetry.jar" />
    </node>
    <node concept="26EafG" id="2uJX63uQLVN" role="26Ea7d">
      <property role="26EafJ" value="lib/platform-loader.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7rcN" role="26Ea7d">
      <property role="26EafJ" value="lib/rd-gen.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7rdV" role="26Ea7d">
      <property role="26EafJ" value="lib/stats.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qUg" role="26Ea7d">
      <property role="26EafJ" value="lib/testFramework.jar" />
    </node>
    <node concept="26EafG" id="44nat7ZsP5s" role="26Ea7d">
      <property role="26EafJ" value="lib/trove.jar" />
    </node>
    <node concept="26EafG" id="3_YjmvD08yb" role="26Ea7d">
      <property role="26EafJ" value="lib/util-8.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qVZ" role="26Ea7d">
      <property role="26EafJ" value="lib/util.jar" />
    </node>
    <node concept="26EafG" id="4nX__hM7qWS" role="26Ea7d">
      <property role="26EafJ" value="lib/util_rt.jar" />
    </node>
    <node concept="26EafG" id="68rp5VxCl2R" role="26Ea7d">
      <property role="26EafJ" value="lib/ant/lib/ant.jar" />
    </node>
  </node>
</model>

