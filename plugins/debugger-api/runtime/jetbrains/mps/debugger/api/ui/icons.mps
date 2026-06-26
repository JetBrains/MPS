<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e60874cf-5ffd-4123-9760-5f88ff8e0a5a(jetbrains.mps.debugger.api.ui.icons)">
  <persistence version="9" />
  <languages>
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3SnNvqCbxaL">
    <property role="TrG5h" value="Icons" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3SnNvqCbxI5" role="1B3o_S" />
    <node concept="Wx3nA" id="3SnNvqCbxI6" role="jymVt">
      <property role="TrG5h" value="BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxI7" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbxI8" role="1B3o_S" />
      <node concept="10M0yZ" id="3SQRqvYTc3A" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Db_set_breakpoint" resolve="Db_set_breakpoint" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxIf" role="jymVt">
      <property role="TrG5h" value="INV_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxIg" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbxIh" role="1B3o_S" />
      <node concept="10M0yZ" id="3SQRqvYTeKb" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Db_invalid_breakpoint" resolve="Db_invalid_breakpoint" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxIo" role="jymVt">
      <property role="TrG5h" value="DISABLED_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxIp" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbxIq" role="1B3o_S" />
      <node concept="10M0yZ" id="3SQRqvYTfTI" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Db_disabled_breakpoint" resolve="Db_disabled_breakpoint" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxIx" role="jymVt">
      <property role="TrG5h" value="MUTED_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxIy" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbxIz" role="1B3o_S" />
      <node concept="10M0yZ" id="3SQRqvYTgYE" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Db_muted_breakpoint" resolve="Db_muted_breakpoint" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxIE" role="jymVt">
      <property role="TrG5h" value="SHOW_AS_TREE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxIF" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbxIG" role="1B3o_S" />
      <node concept="10M0yZ" id="3SQRqvYTiSh" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.ShowAsTree" resolve="ShowAsTree" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxIN" role="jymVt">
      <property role="TrG5h" value="FRAMES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxIO" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbxIP" role="1B3o_S" />
      <node concept="10M0yZ" id="3SQRqvYTjsV" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Frame" resolve="Frame" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxIW" role="jymVt">
      <property role="TrG5h" value="VARIABLES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxIX" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbxIY" role="1B3o_S" />
      <node concept="10M0yZ" id="3SQRqvYTkmU" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Value" resolve="Value" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxJ5" role="jymVt">
      <property role="TrG5h" value="WATCHES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxJ6" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbxJ7" role="1B3o_S" />
      <node concept="10M0yZ" id="6BY6fCdTxtL" role="33vP2m">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Watch" resolve="Watch" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
      </node>
    </node>
    <node concept="Wx3nA" id="1gqtULBz58E" role="jymVt">
      <property role="TrG5h" value="BREAKPOINTS_DIALOG_DELETE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1gqtULBz58F" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="1gqtULBz58G" role="1B3o_S" />
      <node concept="10M0yZ" id="1aRZRpeXMT7" role="33vP2m">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Debug" resolve="MPSIcons.Debug" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Debug.DeleteBreakpoint" resolve="DeleteBreakpoint" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SQRqvYXt96" role="jymVt">
      <property role="TrG5h" value="BREAKPOINTS_DIALOG_ADD" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SQRqvYXt97" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3SQRqvYXt98" role="1B3o_S" />
      <node concept="10M0yZ" id="1aRZRpeXMZg" role="33vP2m">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Debug" resolve="MPSIcons.Debug" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Debug.AddBreakPoint" resolve="AddBreakPoint" />
      </node>
    </node>
    <node concept="Wx3nA" id="1gqtULBz58J" role="jymVt">
      <property role="TrG5h" value="BREAKPOINTS_DIALOG_GOTO" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1gqtULBz58K" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="1gqtULBz58L" role="1B3o_S" />
      <node concept="10M0yZ" id="1aRZRpeXN0J" role="33vP2m">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Debug" resolve="MPSIcons.Debug" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Debug.GoToSource" resolve="GoToSource" />
      </node>
    </node>
    <node concept="Wx3nA" id="1gqtULBz58O" role="jymVt">
      <property role="TrG5h" value="BREAKPOINTS_DIALOG_GROUP_BY_MODEL" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1gqtULBz58P" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="1gqtULBz58Q" role="1B3o_S" />
      <node concept="10M0yZ" id="4TMD6bS7gQu" role="33vP2m">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Actions" resolve="MPSIcons.Actions" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Actions.GroupByModel" resolve="GroupByModel" />
      </node>
    </node>
    <node concept="Wx3nA" id="1gqtULBz58T" role="jymVt">
      <property role="TrG5h" value="BREAKPOINTS_DIALOG_GROUP_BY_MODULE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1gqtULBz58U" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="1gqtULBz58V" role="1B3o_S" />
      <node concept="10M0yZ" id="4TMD6bS7gX1" role="33vP2m">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Actions" resolve="MPSIcons.Actions" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Actions.GroupByModule" resolve="GroupByModule" />
      </node>
    </node>
    <node concept="Wx3nA" id="1gqtULBz58Y" role="jymVt">
      <property role="TrG5h" value="BREAKPOINTS_DIALOG_GROUP_BY_ROOT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1gqtULBz58Z" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="1gqtULBz590" role="1B3o_S" />
      <node concept="10M0yZ" id="4TMD6bS7gYj" role="33vP2m">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Actions" resolve="MPSIcons.Actions" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Actions.GroupByRoot" resolve="GroupByRoot" />
      </node>
    </node>
    <node concept="Wx3nA" id="1gqtULBz593" role="jymVt">
      <property role="TrG5h" value="BREAKPOINTS_DIALOG_VIEW_SOURCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1gqtULBz594" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="1gqtULBz595" role="1B3o_S" />
      <node concept="10M0yZ" id="6W9ts$xu7TO" role="33vP2m">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.ShowCode" resolve="ShowCode" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
    <node concept="Wx3nA" id="1gqtULBz598" role="jymVt">
      <property role="TrG5h" value="BREAKPOINTS_DIALOG_TREE_VIEW" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1gqtULBz599" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="1gqtULBz59a" role="1B3o_S" />
      <node concept="10M0yZ" id="3SQRqvYTxBO" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.ShowAsTree" resolve="ShowAsTree" />
      </node>
    </node>
    <node concept="3clFbW" id="3SnNvqCbxJe" role="jymVt">
      <node concept="3Tm1VV" id="3SnNvqCbxJf" role="1B3o_S" />
      <node concept="3cqZAl" id="3SnNvqCbxJg" role="3clF45" />
      <node concept="3clFbS" id="3SnNvqCbxJh" role="3clF47" />
    </node>
  </node>
</model>

