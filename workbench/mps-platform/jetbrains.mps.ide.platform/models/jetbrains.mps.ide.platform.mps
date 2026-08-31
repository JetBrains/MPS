<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c3f8847b-5450-45d4-8ef0-445954b1dc9e(jetbrains.mps.ide.platform)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="ntzd" ref="r:bf32fdbc-530f-4631-ba64-3e7b620ac47f(jetbrains.mps.baseLanguage.util)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="cm0a" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.codeStyle(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="l46t" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.compiler(MPS.Core/)" />
    <import index="biux" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.compiler(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="64tv" ref="r:9e8a9ffa-c450-4841-b749-c11aa0f49452(jetbrains.mps.workbench.findusages)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="3Ssq9B$kCk5">
    <property role="TrG5h" value="ModuleActivator" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="3Ssq9B$kCLl" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3Ssq9B$kCLm" role="1B3o_S" />
      <node concept="3uibUv" id="3Ssq9B$kCLo" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="312cEg" id="x4tNzP2mQD" role="jymVt">
      <property role="TrG5h" value="myTestModelImports" />
      <node concept="3Tm6S6" id="x4tNzP2mQE" role="1B3o_S" />
      <node concept="3uibUv" id="x4tNzP2mQG" role="1tU5fm">
        <ref role="3uigEE" node="x4tNzP2e5F" resolve="ModuleActivator.TestsModelAutoImports" />
      </node>
    </node>
    <node concept="312cEg" id="1aDdKrsHgrN" role="jymVt">
      <property role="TrG5h" value="myMakeService" />
      <node concept="3Tm6S6" id="1aDdKrsHgrO" role="1B3o_S" />
      <node concept="3uibUv" id="1aDdKrsHgUI" role="1tU5fm">
        <ref role="3uigEE" to="hfuk:1NAY6bPd4nM" resolve="IMakeService" />
      </node>
    </node>
    <node concept="312cEg" id="7hqv7emwz8W" role="jymVt">
      <property role="TrG5h" value="myInternaModelsFindUsages" />
      <node concept="3Tm6S6" id="7hqv7emwz8X" role="1B3o_S" />
      <node concept="3uibUv" id="7hqv7emwz8Z" role="1tU5fm">
        <ref role="3uigEE" to="64tv:4fSpAVATXgk" resolve="InternalModelsFindUsagesParticipant" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ssq9B$kCN8" role="jymVt" />
    <node concept="3clFbW" id="3Ssq9B$kCHR" role="jymVt">
      <node concept="37vLTG" id="3Ssq9B$kCJr" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="3Ssq9B$kCKj" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3cqZAl" id="3Ssq9B$kCHT" role="3clF45" />
      <node concept="3Tm1VV" id="3Ssq9B$kCHU" role="1B3o_S" />
      <node concept="3clFbS" id="3Ssq9B$kCHV" role="3clF47">
        <node concept="3clFbF" id="3Ssq9B$kCLp" role="3cqZAp">
          <node concept="37vLTI" id="3Ssq9B$kCLr" role="3clFbG">
            <node concept="37vLTw" id="3Ssq9B$kCLu" role="37vLTJ">
              <ref role="3cqZAo" node="3Ssq9B$kCLl" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="3Ssq9B$kCLv" role="37vLTx">
              <ref role="3cqZAo" node="3Ssq9B$kCJr" resolve="mpsPlatform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="x4tNzP28MH" role="jymVt" />
    <node concept="3clFb_" id="x4tNzP29eh" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3Tm1VV" id="x4tNzP29ej" role="1B3o_S" />
      <node concept="3cqZAl" id="x4tNzP29el" role="3clF45" />
      <node concept="3clFbS" id="x4tNzP29em" role="3clF47">
        <node concept="3SKdUt" id="x4tNzP2DDV" role="3cqZAp">
          <node concept="1PaTwC" id="x4tNzP2DDW" role="1aUNEU">
            <node concept="3oM_SD" id="x4tNzP2E4u" role="1PaTwD">
              <property role="3oM_SC" value="Although" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4v" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4w" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4x" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4y" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4z" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4$" role="1PaTwD">
              <property role="3oM_SC" value="TestsModelAutoImports" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Eah" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2EbS" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2EbT" role="1PaTwD">
              <property role="3oM_SC" value="different" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4E" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4F" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4G" role="1PaTwD">
              <property role="3oM_SC" value="AutoImportsContributor" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4H" role="1PaTwD">
              <property role="3oM_SC" value="registered" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4I" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4J" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Efe" role="1PaTwD">
              <property role="3oM_SC" value="MPSCore," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="x4tNzP2EgP" role="3cqZAp">
          <node concept="1PaTwC" id="x4tNzP2Egm" role="1aUNEU">
            <node concept="3oM_SD" id="x4tNzP2Egl" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2F0p" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4O" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4P" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4Q" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4R" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4S" role="1PaTwD">
              <property role="3oM_SC" value="example" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4T" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4U" role="1PaTwD">
              <property role="3oM_SC" value="CC" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4V" role="1PaTwD">
              <property role="3oM_SC" value="configuration" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2E4W" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Faj" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2F7Q" role="1PaTwD">
              <property role="3oM_SC" value="module." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="x4tNzP2FJb" role="3cqZAp">
          <node concept="1PaTwC" id="x4tNzP2FJc" role="1aUNEU">
            <node concept="3oM_SD" id="x4tNzP2GaA" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gcz" role="1PaTwD">
              <property role="3oM_SC" value="contributor" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GdV" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gf2" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gf3" role="1PaTwD">
              <property role="3oM_SC" value="live" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gga" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Ghh" role="1PaTwD">
              <property role="3oM_SC" value="[mps-workbench]," />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GlE" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GmL" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gni" role="1PaTwD">
              <property role="3oM_SC" value="moved" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gop" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Goq" role="1PaTwD">
              <property role="3oM_SC" value="[mps-platform]" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GrX" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GrY" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gsf" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gt6" role="1PaTwD">
              <property role="3oM_SC" value="quite" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gud" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gvk" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Gvl" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GwG" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GwH" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GwY" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GxP" role="1PaTwD">
              <property role="3oM_SC" value="part" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GxQ" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GxR" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="x4tNzP2GH2" role="3cqZAp">
          <node concept="1PaTwC" id="x4tNzP2GGz" role="1aUNEU">
            <node concept="3oM_SD" id="x4tNzP2GGy" role="1PaTwD">
              <property role="3oM_SC" value="Workbench" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2G$E" role="1PaTwD">
              <property role="3oM_SC" value="(aka" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GB7" role="1PaTwD">
              <property role="3oM_SC" value="&quot;Big" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GCI" role="1PaTwD">
              <property role="3oM_SC" value="MPS&quot;)" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2GFb" role="1PaTwD">
              <property role="3oM_SC" value="functionality," />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Hy2" role="1PaTwD">
              <property role="3oM_SC" value="after" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Hz9" role="1PaTwD">
              <property role="3oM_SC" value="all," />
            </node>
            <node concept="3oM_SD" id="x4tNzP2H$0" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2H_B" role="1PaTwD">
              <property role="3oM_SC" value="quite" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HAu" role="1PaTwD">
              <property role="3oM_SC" value="general." />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HCr" role="1PaTwD">
              <property role="3oM_SC" value="Alternative" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HF8" role="1PaTwD">
              <property role="3oM_SC" value="approach" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HHB" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HHC" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HIv" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HJQ" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HJR" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HKY" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HLv" role="1PaTwD">
              <property role="3oM_SC" value="lang.test" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2HMQ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="x4tNzP2HS8" role="3cqZAp">
          <node concept="1PaTwC" id="x4tNzP2HRL" role="1aUNEU">
            <node concept="3oM_SD" id="x4tNzP2HRK" role="1PaTwD">
              <property role="3oM_SC" value="solution" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IrA" role="1PaTwD">
              <property role="3oM_SC" value="(to" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IrR" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IsY" role="1PaTwD">
              <property role="3oM_SC" value="test-related" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Iu_" role="1PaTwD">
              <property role="3oM_SC" value="functionality" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IwM" role="1PaTwD">
              <property role="3oM_SC" value="close)," />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Iy9" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2I$6" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2I$7" role="1PaTwD">
              <property role="3oM_SC" value="feel" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2I_e" role="1PaTwD">
              <property role="3oM_SC" value="confident" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IAl" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IBs" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IBt" role="1PaTwD">
              <property role="3oM_SC" value="lang.test.pluginSolution" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IEK" role="1PaTwD">
              <property role="3oM_SC" value="(same" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IG7" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IHu" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IHv" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="x4tNzP2ILq" role="3cqZAp">
          <node concept="1PaTwC" id="x4tNzP2IL5" role="1aUNEU">
            <node concept="3oM_SD" id="x4tNzP2IL4" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IHK" role="1PaTwD">
              <property role="3oM_SC" value="workbench-&gt;platform" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2IKN" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2Jza" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2J$h" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2J_C" role="1PaTwD">
              <property role="3oM_SC" value="seem" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2J_D" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JAw" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JAx" role="1PaTwD">
              <property role="3oM_SC" value="IDE/Workbench" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JE4" role="1PaTwD">
              <property role="3oM_SC" value="functionality" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JGx" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JJA" role="1PaTwD">
              <property role="3oM_SC" value="all)," />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JJB" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JKI" role="1PaTwD">
              <property role="3oM_SC" value="lazy" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JM5" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JM6" role="1PaTwD">
              <property role="3oM_SC" value="create" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JNd" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JNe" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JNv" role="1PaTwD">
              <property role="3oM_SC" value="solution" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JOm" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JOn" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2JPe" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="x4tNzP2Koa" role="3cqZAp">
          <node concept="1PaTwC" id="x4tNzP2Kob" role="1aUNEU">
            <node concept="3oM_SD" id="x4tNzP2KMJ" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2KNQ" role="1PaTwD">
              <property role="3oM_SC" value="activator" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2KOY" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2KPP" role="1PaTwD">
              <property role="3oM_SC" value="trivial" />
            </node>
            <node concept="3oM_SD" id="x4tNzP2KRs" role="1PaTwD">
              <property role="3oM_SC" value="contributor." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="x4tNzP2lUY" role="3cqZAp">
          <node concept="37vLTI" id="x4tNzP2lV0" role="3clFbG">
            <node concept="2ShNRf" id="x4tNzP2jM3" role="37vLTx">
              <node concept="HV5vD" id="x4tNzP2jM4" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="HV5vE" node="x4tNzP2e5F" resolve="ModuleActivator.TestsModelAutoImports" />
              </node>
            </node>
            <node concept="37vLTw" id="x4tNzP2lV4" role="37vLTJ">
              <ref role="3cqZAo" node="x4tNzP2mQD" resolve="myTestModelImports" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="x4tNzP2auf" role="3cqZAp">
          <node concept="2OqwBi" id="x4tNzP2cs_" role="3clFbG">
            <node concept="2OqwBi" id="x4tNzP2aJU" role="2Oq$k0">
              <node concept="37vLTw" id="x4tNzP2aue" role="2Oq$k0">
                <ref role="3cqZAo" node="3Ssq9B$kCLl" resolve="myPlatform" />
              </node>
              <node concept="liA8E" id="x4tNzP2b6V" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="x4tNzP2c4v" role="37wK5m">
                  <ref role="3VsUkX" to="z1c3:~ModelsAutoImportsManager" resolve="ModelsAutoImportsManager" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="x4tNzP2cOF" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ModelsAutoImportsManager.register(jetbrains.mps.project.ModelsAutoImportsManager$AutoImportsContributor)" resolve="register" />
              <node concept="37vLTw" id="x4tNzP2lhC" role="37wK5m">
                <ref role="3cqZAo" node="x4tNzP2mQD" resolve="myTestModelImports" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1aDdKrsHhsx" role="3cqZAp">
          <node concept="1PaTwC" id="1aDdKrsHhsy" role="1aUNEU">
            <node concept="3oM_SD" id="1aDdKrsHhsz" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1aDdKrsHrrC" role="3cqZAp">
          <node concept="1PaTwC" id="1aDdKrsHrrD" role="1aUNEU">
            <node concept="3oM_SD" id="1aDdKrsHGKf" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrs_" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrCF" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrDy" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrDz" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrD$" role="1PaTwD">
              <property role="3oM_SC" value="AppManager" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrHN" role="1PaTwD">
              <property role="3oM_SC" value="during" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrKm" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrLd" role="1PaTwD">
              <property role="3oM_SC" value="activation," />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrMU" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrNL" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrNM" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrOD" role="1PaTwD">
              <property role="3oM_SC" value="moment" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrPw" role="1PaTwD">
              <property role="3oM_SC" value="there're" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrRd" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrRe" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHrRf" role="1PaTwD">
              <property role="3oM_SC" value="IMakeService" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHGMc" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHGMt" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1aDdKrsHGrA" role="3cqZAp">
          <node concept="1PaTwC" id="1aDdKrsHGrB" role="1aUNEU">
            <node concept="3oM_SD" id="1aDdKrsHGrC" role="1PaTwD">
              <property role="3oM_SC" value="confidence" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHGPg" role="1PaTwD">
              <property role="3oM_SC" value="MakeServiceComponent" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHkC" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHlJ" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHlK" role="1PaTwD">
              <property role="3oM_SC" value="chance" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHn7" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHoe" role="1PaTwD">
              <property role="3oM_SC" value="initialize" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHu_" role="1PaTwD">
              <property role="3oM_SC" value="(see" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHuA" role="1PaTwD">
              <property role="3oM_SC" value="ReloadManagerComponent)," />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHqb" role="1PaTwD">
              <property role="3oM_SC" value="therefore" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHsC" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHzP" role="1PaTwD">
              <property role="3oM_SC" value="stick" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHA$" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHA_" role="1PaTwD">
              <property role="3oM_SC" value="IDEA" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHBW" role="1PaTwD">
              <property role="3oM_SC" value="service" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHCd" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHDk" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsHHDl" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3TOnJ3TaGk6" role="3cqZAp">
          <node concept="3cpWsn" id="3TOnJ3TaGk7" role="3cpWs9">
            <property role="TrG5h" value="application" />
            <node concept="3uibUv" id="3TOnJ3TaF7N" role="1tU5fm">
              <ref role="3uigEE" to="bd8o:~Application" resolve="Application" />
            </node>
            <node concept="2YIFZM" id="3TOnJ3TaGk8" role="33vP2m">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3TOnJ3TaIdo" role="3cqZAp">
          <node concept="3clFbS" id="3TOnJ3TaIdq" role="3clFbx">
            <node concept="3clFbF" id="1aDdKrsHisu" role="3cqZAp">
              <node concept="37vLTI" id="1aDdKrsHj8_" role="3clFbG">
                <node concept="2OqwBi" id="1aDdKrsHl7j" role="37vLTx">
                  <node concept="37vLTw" id="3TOnJ3TaGk9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3TOnJ3TaGk7" resolve="application" />
                  </node>
                  <node concept="liA8E" id="1aDdKrsHnqF" role="2OqNvi">
                    <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                    <node concept="3VsKOn" id="1aDdKrsHoeh" role="37wK5m">
                      <ref role="3VsUkX" to="hfuk:1NAY6bPd4nM" resolve="IMakeService" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1aDdKrsHiss" role="37vLTJ">
                  <ref role="3cqZAo" node="1aDdKrsHgrN" resolve="myMakeService" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1aDdKrsHIlO" role="3cqZAp">
              <node concept="3clFbS" id="1aDdKrsHIlQ" role="3clFbx">
                <node concept="3clFbF" id="1aDdKrsHJXV" role="3cqZAp">
                  <node concept="2OqwBi" id="1aDdKrsHLBl" role="3clFbG">
                    <node concept="2OqwBi" id="1aDdKrsHJXX" role="2Oq$k0">
                      <node concept="37vLTw" id="1aDdKrsHJXY" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Ssq9B$kCLl" resolve="myPlatform" />
                      </node>
                      <node concept="liA8E" id="1aDdKrsHJXZ" role="2OqNvi">
                        <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                        <node concept="3VsKOn" id="1aDdKrsHJY0" role="37wK5m">
                          <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1aDdKrsHMdr" role="2OqNvi">
                      <ref role="37wK5l" to="hfuk:4QUA3SqtAPh" resolve="install" />
                      <node concept="37vLTw" id="1aDdKrsHMED" role="37wK5m">
                        <ref role="3cqZAo" node="1aDdKrsHgrN" resolve="myMakeService" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1aDdKrsHJaX" role="3clFbw">
                <node concept="10Nm6u" id="1aDdKrsHJ$L" role="3uHU7w" />
                <node concept="37vLTw" id="1aDdKrsHIJo" role="3uHU7B">
                  <ref role="3cqZAo" node="1aDdKrsHgrN" resolve="myMakeService" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3TOnJ3TaJCn" role="3clFbw">
            <node concept="10Nm6u" id="3TOnJ3TaKjn" role="3uHU7w" />
            <node concept="37vLTw" id="3TOnJ3TaIFw" role="3uHU7B">
              <ref role="3cqZAo" node="3TOnJ3TaGk7" resolve="application" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7hqv7emwjfi" role="3cqZAp">
          <node concept="1PaTwC" id="7hqv7emwjfj" role="1aUNEU">
            <node concept="3oM_SD" id="7hqv7emwjfk" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hqv7emwyEE" role="3cqZAp">
          <node concept="37vLTI" id="7hqv7emwyEG" role="3clFbG">
            <node concept="2ShNRf" id="7hqv7emwxPq" role="37vLTx">
              <node concept="1pGfFk" id="7hqv7emwxPr" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="64tv:2TJjT4dEjSC" resolve="InternalModelsFindUsagesParticipant" />
              </node>
            </node>
            <node concept="37vLTw" id="7hqv7emwyEK" role="37vLTJ">
              <ref role="3cqZAo" node="7hqv7emwz8W" resolve="myInternaModelsFindUsages" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hqv7emwKhL" role="3cqZAp">
          <node concept="2OqwBi" id="7hqv7emwZ8b" role="3clFbG">
            <node concept="2OqwBi" id="7hqv7emwWZG" role="2Oq$k0">
              <node concept="37vLTw" id="7hqv7emwKhJ" role="2Oq$k0">
                <ref role="3cqZAo" node="3Ssq9B$kCLl" resolve="myPlatform" />
              </node>
              <node concept="liA8E" id="7hqv7emwXJ4" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="7hqv7emwYxb" role="37wK5m">
                  <ref role="3VsUkX" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7hqv7emx02A" role="2OqNvi">
              <ref role="37wK5l" to="pa15:~PersistenceRegistry.addFindUsagesParticipant(org.jetbrains.mps.openapi.persistence.FindUsagesParticipant)" resolve="addFindUsagesParticipant" />
              <node concept="37vLTw" id="7hqv7emx0$g" role="37wK5m">
                <ref role="3cqZAo" node="7hqv7emwz8W" resolve="myInternaModelsFindUsages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="x4tNzP29en" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="x4tNzP29et" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3Tm1VV" id="x4tNzP29ev" role="1B3o_S" />
      <node concept="3cqZAl" id="x4tNzP29ex" role="3clF45" />
      <node concept="3clFbS" id="x4tNzP29ey" role="3clF47">
        <node concept="3clFbF" id="x4tNzP2d6S" role="3cqZAp">
          <node concept="2OqwBi" id="x4tNzP2d6T" role="3clFbG">
            <node concept="2OqwBi" id="x4tNzP2d6U" role="2Oq$k0">
              <node concept="37vLTw" id="x4tNzP2d6V" role="2Oq$k0">
                <ref role="3cqZAo" node="3Ssq9B$kCLl" resolve="myPlatform" />
              </node>
              <node concept="liA8E" id="x4tNzP2d6W" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="x4tNzP2d6X" role="37wK5m">
                  <ref role="3VsUkX" to="z1c3:~ModelsAutoImportsManager" resolve="ModelsAutoImportsManager" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="x4tNzP2d6Y" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ModelsAutoImportsManager.unregister(jetbrains.mps.project.ModelsAutoImportsManager$AutoImportsContributor)" resolve="unregister" />
              <node concept="37vLTw" id="x4tNzP2ovY" role="37wK5m">
                <ref role="3cqZAo" node="x4tNzP2mQD" resolve="myTestModelImports" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="x4tNzP2p8c" role="3cqZAp">
          <node concept="37vLTI" id="x4tNzP2pxn" role="3clFbG">
            <node concept="10Nm6u" id="x4tNzP2pO1" role="37vLTx" />
            <node concept="37vLTw" id="x4tNzP2p8a" role="37vLTJ">
              <ref role="3cqZAo" node="x4tNzP2mQD" resolve="myTestModelImports" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7hqv7emwWoi" role="3cqZAp">
          <node concept="1PaTwC" id="7hqv7emwWoj" role="1aUNEU">
            <node concept="3oM_SD" id="7hqv7emwWok" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1aDdKrsHNRz" role="3cqZAp">
          <node concept="3clFbS" id="1aDdKrsHNR_" role="3clFbx">
            <node concept="3clFbF" id="1aDdKrsHRw6" role="3cqZAp">
              <node concept="2OqwBi" id="1aDdKrsHRw7" role="3clFbG">
                <node concept="2OqwBi" id="1aDdKrsHRw8" role="2Oq$k0">
                  <node concept="37vLTw" id="1aDdKrsHRw9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Ssq9B$kCLl" resolve="myPlatform" />
                  </node>
                  <node concept="liA8E" id="1aDdKrsHRwa" role="2OqNvi">
                    <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                    <node concept="3VsKOn" id="1aDdKrsHRwb" role="37wK5m">
                      <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1aDdKrsHRwc" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:4QUA3SqtAZW" resolve="uninstall" />
                  <node concept="37vLTw" id="1aDdKrsHRwd" role="37wK5m">
                    <ref role="3cqZAo" node="1aDdKrsHgrN" resolve="myMakeService" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1aDdKrsHPzM" role="3cqZAp">
              <node concept="37vLTI" id="1aDdKrsHQ4H" role="3clFbG">
                <node concept="10Nm6u" id="1aDdKrsHQwb" role="37vLTx" />
                <node concept="37vLTw" id="1aDdKrsHPzK" role="37vLTJ">
                  <ref role="3cqZAo" node="1aDdKrsHgrN" resolve="myMakeService" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1aDdKrsHOJV" role="3clFbw">
            <node concept="10Nm6u" id="1aDdKrsHPbM" role="3uHU7w" />
            <node concept="37vLTw" id="1aDdKrsHOhk" role="3uHU7B">
              <ref role="3cqZAo" node="1aDdKrsHgrN" resolve="myMakeService" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7hqv7emwVqQ" role="3cqZAp">
          <node concept="1PaTwC" id="7hqv7emwVqR" role="1aUNEU">
            <node concept="3oM_SD" id="7hqv7emwVqS" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hqv7emwLeB" role="3cqZAp">
          <node concept="2OqwBi" id="7hqv7emwQM$" role="3clFbG">
            <node concept="2OqwBi" id="7hqv7emwMaA" role="2Oq$k0">
              <node concept="37vLTw" id="7hqv7emwLe_" role="2Oq$k0">
                <ref role="3cqZAo" node="3Ssq9B$kCLl" resolve="myPlatform" />
              </node>
              <node concept="liA8E" id="7hqv7emwOrL" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="7hqv7emwQas" role="37wK5m">
                  <ref role="3VsUkX" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7hqv7emwRri" role="2OqNvi">
              <ref role="37wK5l" to="pa15:~PersistenceRegistry.removeFindUsagesParticipant(org.jetbrains.mps.openapi.persistence.FindUsagesParticipant)" resolve="removeFindUsagesParticipant" />
              <node concept="37vLTw" id="7hqv7emwRSf" role="37wK5m">
                <ref role="3cqZAo" node="7hqv7emwz8W" resolve="myInternaModelsFindUsages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7hqv7emwSRw" role="3cqZAp">
          <node concept="37vLTI" id="7hqv7emwT$U" role="3clFbG">
            <node concept="10Nm6u" id="7hqv7emwU0D" role="37vLTx" />
            <node concept="37vLTw" id="7hqv7emwSRu" role="37vLTJ">
              <ref role="3cqZAo" node="7hqv7emwz8W" resolve="myInternaModelsFindUsages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="x4tNzP29ez" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ssq9B$kCQs" role="jymVt" />
    <node concept="3Tm1VV" id="3Ssq9B$kCk6" role="1B3o_S" />
    <node concept="3uibUv" id="3Ssq9B$kCHf" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ModuleRuntime$Activator" resolve="ModuleRuntime.Activator" />
    </node>
    <node concept="3clFb_" id="3Ssq9B$kCR_" role="jymVt">
      <property role="TrG5h" value="contribute" />
      <node concept="3Tm1VV" id="3Ssq9B$kCRB" role="1B3o_S" />
      <node concept="3cqZAl" id="3Ssq9B$kCRD" role="3clF45" />
      <node concept="37vLTG" id="3Ssq9B$kCRE" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="3Ssq9B$kCRF" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ModuleRuntime$ActivatorContext" resolve="ModuleRuntime.ActivatorContext" />
        </node>
        <node concept="2AHcQZ" id="3Ssq9B$kCRG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3Ssq9B$kCRH" role="3clF47">
        <node concept="3SKdUt" id="3Ssq9B$lInj" role="3cqZAp">
          <node concept="1PaTwC" id="3Ssq9B$lInk" role="1aUNEU">
            <node concept="3oM_SD" id="3Ssq9B$lInl" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lI_s" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lI_u" role="1PaTwD">
              <property role="3oM_SC" value="care" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lI_J" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lI_K" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIA1" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIA2" role="1PaTwD">
              <property role="3oM_SC" value="CSSP" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIAN" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIBk" role="1PaTwD">
              <property role="3oM_SC" value="each" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIBl" role="1PaTwD">
              <property role="3oM_SC" value="time" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIBm" role="1PaTwD">
              <property role="3oM_SC" value="extension" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lICB" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lICS" role="1PaTwD">
              <property role="3oM_SC" value="needed," />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lICT" role="1PaTwD">
              <property role="3oM_SC" value="CSSP" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIDa" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIDb" role="1PaTwD">
              <property role="3oM_SC" value="stateless" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIDG" role="1PaTwD">
              <property role="3oM_SC" value="(once" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIDX" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIDY" role="1PaTwD">
              <property role="3oM_SC" value="starts" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIEv" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIEK" role="1PaTwD">
              <property role="3oM_SC" value="matter" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIF1" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIF2" role="1PaTwD">
              <property role="3oM_SC" value="ext" />
            </node>
            <node concept="3oM_SD" id="3Ssq9B$lIFz" role="1PaTwD">
              <property role="3oM_SC" value="registration)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Ssq9B$kDfp" role="3cqZAp">
          <node concept="2OqwBi" id="3Ssq9B$kDxo" role="3clFbG">
            <node concept="37vLTw" id="3Ssq9B$kDfo" role="2Oq$k0">
              <ref role="3cqZAo" node="3Ssq9B$kCRE" resolve="ctx" />
            </node>
            <node concept="liA8E" id="3Ssq9B$kDDB" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~ModuleRuntime$ActivatorContext.extension(java.lang.Class,jetbrains.mps.smodel.runtime.ModuleRuntime$Extension)" resolve="extension" />
              <node concept="3VsKOn" id="3Ssq9B$kDQv" role="37wK5m">
                <ref role="3VsUkX" to="ntzd:3Ssq9B$jp8p" resolve="CodeStyleSettingsProvider" />
              </node>
              <node concept="2YIFZM" id="3Ssq9B$lt7m" role="37wK5m">
                <ref role="37wK5l" to="ze1i:~ModuleRuntime$Extension.of(java.util.function.Supplier,java.lang.String...)" resolve="of" />
                <ref role="1Pybhc" to="ze1i:~ModuleRuntime$Extension" resolve="ModuleRuntime.Extension" />
                <node concept="1bVj0M" id="3Ssq9B$ltFo" role="37wK5m">
                  <node concept="3clFbS" id="3Ssq9B$ltFu" role="1bW5cS">
                    <node concept="3clFbF" id="3Ssq9B$lub8" role="3cqZAp">
                      <node concept="2ShNRf" id="3Ssq9B$lub6" role="3clFbG">
                        <node concept="HV5vD" id="3Ssq9B$luH1" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="HV5vE" node="3Ssq9B$ls6Z" resolve="ModuleActivator.CSSP" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1$HBUlSfLWw" role="3cqZAp">
          <node concept="2OqwBi" id="1$HBUlSfLWx" role="3clFbG">
            <node concept="37vLTw" id="1$HBUlSfLWy" role="2Oq$k0">
              <ref role="3cqZAo" node="3Ssq9B$kCRE" resolve="ctx" />
            </node>
            <node concept="liA8E" id="1$HBUlSfLWz" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~ModuleRuntime$ActivatorContext.extension(java.lang.Class,jetbrains.mps.smodel.runtime.ModuleRuntime$Extension)" resolve="extension" />
              <node concept="3VsKOn" id="1$HBUlSfLW$" role="37wK5m">
                <ref role="3VsUkX" to="l46t:~JavaCompilerOptions$Provider" resolve="JavaCompilerOptions.Provider" />
              </node>
              <node concept="2YIFZM" id="1$HBUlSfLW_" role="37wK5m">
                <ref role="37wK5l" to="ze1i:~ModuleRuntime$Extension.of(java.util.function.Supplier,java.lang.String...)" resolve="of" />
                <ref role="1Pybhc" to="ze1i:~ModuleRuntime$Extension" resolve="ModuleRuntime.Extension" />
                <node concept="1bVj0M" id="1$HBUlSfLWA" role="37wK5m">
                  <node concept="3clFbS" id="1$HBUlSfLWB" role="1bW5cS">
                    <node concept="3clFbF" id="1$HBUlSfLWC" role="3cqZAp">
                      <node concept="2ShNRf" id="1$HBUlSfLWD" role="3clFbG">
                        <node concept="HV5vD" id="1$HBUlSfLWE" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="HV5vE" node="3IgO9E$qK_r" resolve="ModuleActivator.JCOP" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3Ssq9B$kCRI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ssq9B$lrXC" role="jymVt" />
    <node concept="312cEu" id="3Ssq9B$ls6Z" role="jymVt">
      <property role="TrG5h" value="CSSP" />
      <property role="1EXbeo" value="true" />
      <node concept="2tJIrI" id="3Ssq9B$lseZ" role="jymVt" />
      <node concept="3Tm6S6" id="3Ssq9B$ls22" role="1B3o_S" />
      <node concept="3uibUv" id="3Ssq9B$lsdt" role="EKbjA">
        <ref role="3uigEE" to="ntzd:3Ssq9B$jp8p" resolve="CodeStyleSettingsProvider" />
      </node>
      <node concept="3clFb_" id="3Ssq9B$lsgC" role="jymVt">
        <property role="TrG5h" value="getSettings" />
        <node concept="3uibUv" id="3Ssq9B$lsgE" role="3clF45">
          <ref role="3uigEE" to="ntzd:1rCfCLmmtyy" resolve="CodeStyleSettings" />
        </node>
        <node concept="37vLTG" id="3Ssq9B$lsgF" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="3Ssq9B$lsgG" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3Ssq9B$lsgH" role="1B3o_S" />
        <node concept="3clFbS" id="3Ssq9B$lsgI" role="3clF47">
          <node concept="3cpWs8" id="3Ssq9B$lC_G" role="3cqZAp">
            <node concept="3cpWsn" id="3Ssq9B$lC_H" role="3cpWs9">
              <property role="TrG5h" value="ideaProject" />
              <node concept="3uibUv" id="3Ssq9B$lCxW" role="1tU5fm">
                <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
              </node>
              <node concept="2YIFZM" id="3Ssq9B$lC_I" role="33vP2m">
                <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="37vLTw" id="3Ssq9B$lC_J" role="37wK5m">
                  <ref role="3cqZAo" node="3Ssq9B$lsgF" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3Ssq9B$lGif" role="3cqZAp">
            <node concept="3clFbC" id="3Ssq9B$lDLG" role="3clFbw">
              <node concept="10Nm6u" id="3Ssq9B$lE8p" role="3uHU7w" />
              <node concept="37vLTw" id="3Ssq9B$lDpu" role="3uHU7B">
                <ref role="3cqZAo" node="3Ssq9B$lC_H" resolve="ideaProject" />
              </node>
            </node>
            <node concept="3clFbS" id="3Ssq9B$lGii" role="3clFbx">
              <node concept="3cpWs6" id="3Ssq9B$lGi4" role="3cqZAp">
                <node concept="10Nm6u" id="3Ssq9B$lGi5" role="3cqZAk" />
              </node>
            </node>
            <node concept="9aQIb" id="3Ssq9B$lGi6" role="9aQIa">
              <node concept="3clFbS" id="3Ssq9B$lGi8" role="9aQI4">
                <node concept="3cpWs8" id="3Ssq9B$lGrt" role="3cqZAp">
                  <node concept="3cpWsn" id="3Ssq9B$lGru" role="3cpWs9">
                    <property role="TrG5h" value="css" />
                    <node concept="3uibUv" id="3Ssq9B$lGmx" role="1tU5fm">
                      <ref role="3uigEE" to="cm0a:~CodeStyleSettingsComponent" resolve="CodeStyleSettingsComponent" />
                    </node>
                    <node concept="2YIFZM" id="3Ssq9B$lGrv" role="33vP2m">
                      <ref role="37wK5l" to="cm0a:~CodeStyleSettingsComponent.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                      <ref role="1Pybhc" to="cm0a:~CodeStyleSettingsComponent" resolve="CodeStyleSettingsComponent" />
                      <node concept="37vLTw" id="3Ssq9B$lGrw" role="37wK5m">
                        <ref role="3cqZAo" node="3Ssq9B$lC_H" resolve="ideaProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3Ssq9B$lGia" role="3cqZAp">
                  <node concept="3K4zz7" id="3Ssq9B$lHxt" role="3cqZAk">
                    <node concept="10Nm6u" id="3Ssq9B$lHXN" role="3K4E3e" />
                    <node concept="3clFbC" id="3Ssq9B$lH1a" role="3K4Cdx">
                      <node concept="10Nm6u" id="3Ssq9B$lHos" role="3uHU7w" />
                      <node concept="37vLTw" id="3Ssq9B$lGIG" role="3uHU7B">
                        <ref role="3cqZAo" node="3Ssq9B$lGru" resolve="css" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3Ssq9B$lGib" role="3K4GZi">
                      <node concept="37vLTw" id="3Ssq9B$lGrx" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Ssq9B$lGru" resolve="css" />
                      </node>
                      <node concept="liA8E" id="3Ssq9B$lGie" role="2OqNvi">
                        <ref role="37wK5l" to="cm0a:~CodeStyleSettingsComponent.getState()" resolve="getState" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3Ssq9B$lsgJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3IgO9E$qKkz" role="jymVt" />
    <node concept="312cEu" id="3IgO9E$qK_r" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="JCOP" />
      <node concept="2tJIrI" id="pB3GLV0902" role="jymVt" />
      <node concept="3Tm6S6" id="3IgO9E$qLji" role="1B3o_S" />
      <node concept="3uibUv" id="pB3GLV05Sb" role="EKbjA">
        <ref role="3uigEE" to="l46t:~JavaCompilerOptions$Provider" resolve="JavaCompilerOptions.Provider" />
      </node>
      <node concept="3clFb_" id="pB3GLV092j" role="jymVt">
        <property role="TrG5h" value="getJavaCompilerOptions" />
        <node concept="3Tm1VV" id="pB3GLV092k" role="1B3o_S" />
        <node concept="3uibUv" id="pB3GLV092m" role="3clF45">
          <ref role="3uigEE" to="l46t:~JavaCompilerOptions" resolve="JavaCompilerOptions" />
        </node>
        <node concept="37vLTG" id="pB3GLV092n" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="pB3GLV092o" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3clFbS" id="pB3GLV092p" role="3clF47">
          <node concept="3cpWs8" id="pB3GLV09yv" role="3cqZAp">
            <node concept="3cpWsn" id="pB3GLV09yw" role="3cpWs9">
              <property role="TrG5h" value="ideaProject" />
              <node concept="3uibUv" id="pB3GLV09yx" role="1tU5fm">
                <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
              </node>
              <node concept="2YIFZM" id="pB3GLV09yy" role="33vP2m">
                <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="37vLTw" id="pB3GLV09yz" role="37wK5m">
                  <ref role="3cqZAo" node="pB3GLV092n" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="pB3GLV09y$" role="3cqZAp">
            <node concept="3clFbC" id="pB3GLV09y_" role="3clFbw">
              <node concept="10Nm6u" id="pB3GLV09yA" role="3uHU7w" />
              <node concept="37vLTw" id="pB3GLV09yB" role="3uHU7B">
                <ref role="3cqZAo" node="pB3GLV09yw" resolve="ideaProject" />
              </node>
            </node>
            <node concept="3clFbS" id="pB3GLV09yC" role="3clFbx">
              <node concept="3cpWs6" id="pB3GLV09yD" role="3cqZAp">
                <node concept="10Nm6u" id="pB3GLV09yE" role="3cqZAk" />
              </node>
            </node>
            <node concept="9aQIb" id="pB3GLV09yF" role="9aQIa">
              <node concept="3clFbS" id="pB3GLV09yG" role="9aQI4">
                <node concept="3cpWs8" id="pB3GLV09yH" role="3cqZAp">
                  <node concept="3cpWsn" id="pB3GLV09yI" role="3cpWs9">
                    <property role="TrG5h" value="cs" />
                    <node concept="3uibUv" id="pB3GLV09yJ" role="1tU5fm">
                      <ref role="3uigEE" to="biux:~CompilerSettingsComponent" resolve="CompilerSettingsComponent" />
                    </node>
                    <node concept="2YIFZM" id="pB3GLV09yK" role="33vP2m">
                      <ref role="37wK5l" to="biux:~CompilerSettingsComponent.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                      <ref role="1Pybhc" to="biux:~CompilerSettingsComponent" resolve="CompilerSettingsComponent" />
                      <node concept="37vLTw" id="pB3GLV09yL" role="37wK5m">
                        <ref role="3cqZAo" node="pB3GLV09yw" resolve="ideaProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="pB3GLV09yM" role="3cqZAp">
                  <node concept="3K4zz7" id="pB3GLV09yN" role="3cqZAk">
                    <node concept="10Nm6u" id="pB3GLV09yO" role="3K4E3e" />
                    <node concept="3clFbC" id="pB3GLV09yP" role="3K4Cdx">
                      <node concept="10Nm6u" id="pB3GLV09yQ" role="3uHU7w" />
                      <node concept="37vLTw" id="pB3GLV09yR" role="3uHU7B">
                        <ref role="3cqZAo" node="pB3GLV09yI" resolve="cs" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="pB3GLV09yS" role="3K4GZi">
                      <node concept="37vLTw" id="pB3GLV09yT" role="2Oq$k0">
                        <ref role="3cqZAo" node="pB3GLV09yI" resolve="cs" />
                      </node>
                      <node concept="liA8E" id="pB3GLV09yU" role="2OqNvi">
                        <ref role="37wK5l" to="biux:~CompilerSettingsComponent.createOptions()" resolve="createOptions" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="pB3GLV092q" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="x4tNzP2dIU" role="jymVt" />
    <node concept="312cEu" id="x4tNzP2e5F" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="TestsModelAutoImports" />
      <node concept="2tJIrI" id="x4tNzP2eDI" role="jymVt" />
      <node concept="3Tm6S6" id="x4tNzP2esJ" role="1B3o_S" />
      <node concept="3uibUv" id="x4tNzP2eZc" role="1zkMxy">
        <ref role="3uigEE" to="z1c3:~ModelsAutoImportsManager$AutoImportsContributor" resolve="ModelsAutoImportsManager.AutoImportsContributor" />
      </node>
      <node concept="3clFb_" id="x4tNzP2fj9" role="jymVt">
        <property role="TrG5h" value="isApplicable" />
        <node concept="3Tm1VV" id="x4tNzP2fja" role="1B3o_S" />
        <node concept="10P_77" id="x4tNzP2fjc" role="3clF45" />
        <node concept="37vLTG" id="x4tNzP2fjd" role="3clF46">
          <property role="TrG5h" value="module" />
          <node concept="3uibUv" id="x4tNzP2fje" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
        <node concept="3clFbS" id="x4tNzP2fjf" role="3clF47">
          <node concept="3clFbF" id="x4tNzP2gtE" role="3cqZAp">
            <node concept="2ZW3vV" id="x4tNzP2gHA" role="3clFbG">
              <node concept="3uibUv" id="x4tNzP2h86" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
              </node>
              <node concept="37vLTw" id="x4tNzP2gtB" role="2ZW6bz">
                <ref role="3cqZAo" node="x4tNzP2fjd" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="x4tNzP2fjg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="x4tNzP2hft" role="jymVt" />
      <node concept="2tJIrI" id="x4tNzP2hfu" role="jymVt" />
      <node concept="3clFb_" id="x4tNzP2qrO" role="jymVt">
        <property role="TrG5h" value="getLanguages" />
        <node concept="3Tm1VV" id="x4tNzP2qrP" role="1B3o_S" />
        <node concept="2AHcQZ" id="x4tNzP2qrR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="x4tNzP2qrS" role="3clF45">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="x4tNzP2qrT" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
        <node concept="37vLTG" id="x4tNzP2qrU" role="3clF46">
          <property role="TrG5h" value="contextModule" />
          <node concept="3uibUv" id="x4tNzP2qrV" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
        <node concept="37vLTG" id="x4tNzP2qrW" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="x4tNzP2qrX" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="x4tNzP2qrY" role="3clF47">
          <node concept="3clFbJ" id="x4tNzP2s02" role="3cqZAp">
            <node concept="3clFbS" id="x4tNzP2s04" role="3clFbx">
              <node concept="3cpWs8" id="x4tNzP2$NP" role="3cqZAp">
                <node concept="3cpWsn" id="x4tNzP2$NQ" role="3cpWs9">
                  <property role="TrG5h" value="l1" />
                  <node concept="3uibUv" id="x4tNzP2$Bc" role="1tU5fm">
                    <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                  </node>
                  <node concept="pHN19" id="x4tNzP2$NR" role="33vP2m">
                    <node concept="2V$Bhx" id="x4tNzP2$NS" role="2V$M_3">
                      <property role="2V$B1T" value="8585453e-6bfb-4d80-98de-b16074f1d86c" />
                      <property role="2V$B1Q" value="jetbrains.mps.lang.test" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="x4tNzP2_zu" role="3cqZAp">
                <node concept="3cpWsn" id="x4tNzP2_zv" role="3cpWs9">
                  <property role="TrG5h" value="l2" />
                  <node concept="3uibUv" id="x4tNzP2_zw" role="1tU5fm">
                    <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                  </node>
                  <node concept="pHN19" id="x4tNzP2_zx" role="33vP2m">
                    <node concept="2V$Bhx" id="x4tNzP2BTT" role="2V$M_3">
                      <property role="2V$B1T" value="f61473f9-130f-42f6-b98d-6c438812c2f6" />
                      <property role="2V$B1Q" value="jetbrains.mps.baseLanguage.unitTest" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="x4tNzP2wJ7" role="3cqZAp">
                <node concept="2YIFZM" id="x4tNzP2yob" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                  <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                  <node concept="37vLTw" id="x4tNzP2AWu" role="37wK5m">
                    <ref role="3cqZAo" node="x4tNzP2$NQ" resolve="l1" />
                  </node>
                  <node concept="37vLTw" id="x4tNzP2Bmh" role="37wK5m">
                    <ref role="3cqZAo" node="x4tNzP2_zv" resolve="l2" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="x4tNzP2tqC" role="3clFbw">
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isTestModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isTestModel" />
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <node concept="37vLTw" id="x4tNzP2tNf" role="37wK5m">
                <ref role="3cqZAo" node="x4tNzP2qrW" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="x4tNzP2v7N" role="3cqZAp">
            <node concept="2YIFZM" id="x4tNzP2wlq" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="x4tNzP2qrZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2IRg8740kUe">
    <property role="TrG5h" value="OpenedPackages" />
    <node concept="Wx3nA" id="2_gL36cJT$0" role="jymVt">
      <property role="TrG5h" value="packages" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="2_gL36cJScM" role="1tU5fm">
        <node concept="17QB3L" id="2_gL36cJSmj" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="1$mDfZ_wBBj" role="33vP2m">
        <node concept="Xl_RD" id="1$mDfZ_wKzQ" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.io" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_wYfI" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.lang" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_A2Ui" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.lang.reflect" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AnAA" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.net" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_ArG4" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.nio" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_ArGa" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.nio.charset" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvLQ" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.text" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvLY" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.time" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvM7" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.util" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvMh" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.util.concurrent" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvMs" role="2BsfMF">
          <property role="Xl_RC" value="java.base/java.util.concurrent.atomic" />
        </node>
        <node concept="Xl_RD" id="2ogclj_C7XM" role="2BsfMF">
          <property role="Xl_RC" value="java.base/jdk.internal.ref" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvMC" role="2BsfMF">
          <property role="Xl_RC" value="java.base/jdk.internal.vm" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvMP" role="2BsfMF">
          <property role="Xl_RC" value="java.base/sun.nio.ch" />
        </node>
        <node concept="Xl_RD" id="68rp5VxsP6I" role="2BsfMF">
          <property role="Xl_RC" value="java.base/sun.nio.fs" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvN3" role="2BsfMF">
          <property role="Xl_RC" value="java.base/sun.security.ssl" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_AvNi" role="2BsfMF">
          <property role="Xl_RC" value="java.base/sun.security.util" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_Curm" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/java.awt" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_CurF" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/java.awt.dnd.peer" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DiUT" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/java.awt.event" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DiVi" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/java.awt.image" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_Cus1" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/java.awt.peer" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_Cuso" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/javax.swing" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DXSt" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/javax.swing.plaf.basic" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DXSS" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/javax.swing.text" />
        </node>
        <node concept="Xl_RD" id="43qvtA_Jmii" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/javax.swing.text.html" />
        </node>
        <node concept="Xl_RD" id="7HCvbl72$i9" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/javax.swing.text.html.parser" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DXTk" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.awt.datatransfer" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DXTL" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.awt.image" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DXUI" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.awt" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DXVe" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.font" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_F9ys" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.java2d" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_F9yZ" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.swing" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_DXVJ" role="2BsfMF">
          <property role="Xl_RC" value="jdk.attach/sun.tools.attach" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_FzZm" role="2BsfMF">
          <property role="Xl_RC" value="jdk.compiler/com.sun.tools.javac.api" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_FzZV" role="2BsfMF">
          <property role="Xl_RC" value="jdk.internal.jvmstat/sun.jvmstat.monitor" />
        </node>
        <node concept="Xl_RD" id="1$mDfZ_F$0x" role="2BsfMF">
          <property role="Xl_RC" value="jdk.jdi/com.sun.tools.jdi" />
        </node>
        <node concept="Xl_RD" id="1DGmarS1Qn8" role="2BsfMF">
          <property role="Xl_RC" value="java.management/sun.management" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2_gL36cK3YM" role="1B3o_S" />
      <node concept="z59LJ" id="x4dJzclPcA" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzclPcB" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzclPcC" role="1PaTwD">
            <property role="3oM_SC" value="NB!" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9hL" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPvq" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPw1" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPw2" role="1PaTwD">
            <property role="3oM_SC" value="opened" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPxd" role="1PaTwD">
            <property role="3oM_SC" value="packages" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPxN" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPyp" role="1PaTwD">
            <property role="3oM_SC" value="unmaintained" />
          </node>
          <node concept="3oM_SD" id="x4dJzclP$9" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="x4dJzclP$a" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="x4dJzclP_l" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="x4dJzclP_V" role="1PaTwD">
            <property role="3oM_SC" value="reflect" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPAx" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPAy" role="1PaTwD">
            <property role="3oM_SC" value="actual" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPB8" role="1PaTwD">
            <property role="3oM_SC" value="opened" />
          </node>
        </node>
        <node concept="1PaTwC" id="x4dJzclPCk" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzclPCj" role="1PaTwD">
            <property role="3oM_SC" value="packages" />
          </node>
          <node concept="3oM_SD" id="x4dJzclPVl" role="1PaTwD">
            <property role="3oM_SC" value="anymore." />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="x4dJzclPcG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="Wx3nA" id="2_gL36cJUi$" role="jymVt">
      <property role="TrG5h" value="mac" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="2_gL36cJT1e" role="1tU5fm">
        <node concept="17QB3L" id="2_gL36cJSTe" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="2_gL36cJT5Y" role="33vP2m">
        <node concept="Xl_RD" id="2_gL36di6Uc" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.lwawt" />
        </node>
        <node concept="Xl_RD" id="2_gL36di7go" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.lwawt.macosx" />
        </node>
        <node concept="Xl_RD" id="2_gL36cK8OC" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/com.apple.laf" />
        </node>
        <node concept="Xl_RD" id="2_gL36cK9_I" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/com.apple.eawt" />
        </node>
        <node concept="Xl_RD" id="2_gL36cKan8" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/com.apple.eawt.event" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2_gL36cJWKS" role="1B3o_S" />
      <node concept="z59LJ" id="x4dJzcm7bH" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzcm7bI" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzcm7bJ" role="1PaTwD">
            <property role="3oM_SC" value="Defines" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7n2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7n4" role="1PaTwD">
            <property role="3oM_SC" value="additional" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7of" role="1PaTwD">
            <property role="3oM_SC" value="packages" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7ra" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7rb" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7rc" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7sn" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7sX" role="1PaTwD">
            <property role="3oM_SC" value="--add-opens" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7pZ" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7uH" role="1PaTwD">
            <property role="3oM_SC" value="MacOs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2_gL36cJWnX" role="jymVt">
      <property role="TrG5h" value="linux" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="2_gL36cJWnY" role="1tU5fm">
        <node concept="17QB3L" id="2_gL36cJWnZ" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="2_gL36cJWo0" role="33vP2m">
        <node concept="Xl_RD" id="2_gL36dhTt8" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.awt.X11" />
        </node>
        <node concept="Xl_RD" id="2_gL36dijSm" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/com.sun.java.swing.plaf.gtk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2_gL36cJWP0" role="1B3o_S" />
      <node concept="z59LJ" id="x4dJzcm7xt" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzcm7xu" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzcm7Gx" role="1PaTwD">
            <property role="3oM_SC" value="Defines" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7Gy" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7Gz" role="1PaTwD">
            <property role="3oM_SC" value="additional" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7G$" role="1PaTwD">
            <property role="3oM_SC" value="packages" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7G_" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7GA" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7GB" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7GC" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7GD" role="1PaTwD">
            <property role="3oM_SC" value="--add-opens" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7GE" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7GF" role="1PaTwD">
            <property role="3oM_SC" value="Linux" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2_gL36cJWsD" role="jymVt">
      <property role="TrG5h" value="windows" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="2_gL36cJWsE" role="1tU5fm">
        <node concept="17QB3L" id="2_gL36cJWsF" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="2_gL36cJWsG" role="33vP2m">
        <node concept="Xl_RD" id="2_gL36dhU6U" role="2BsfMF">
          <property role="Xl_RC" value="java.desktop/sun.awt.windows" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2_gL36cJWQR" role="1B3o_S" />
      <node concept="z59LJ" id="x4dJzcm7HS" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzcm7HT" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzcm7SQ" role="1PaTwD">
            <property role="3oM_SC" value="Defines" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7SR" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7SS" role="1PaTwD">
            <property role="3oM_SC" value="additional" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7ST" role="1PaTwD">
            <property role="3oM_SC" value="packages" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7SU" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7SV" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7SW" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7SX" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7SY" role="1PaTwD">
            <property role="3oM_SC" value="--add-opens" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7SZ" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm7T0" role="1PaTwD">
            <property role="3oM_SC" value="Windows" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2_gL36cJNYP" role="jymVt">
      <property role="TrG5h" value="getAllOpenedPackages" />
      <node concept="3clFbS" id="2_gL36cJNYS" role="3clF47">
        <node concept="3clFbF" id="2_gL36cJTMX" role="3cqZAp">
          <node concept="2OqwBi" id="2_gL36cK1UT" role="3clFbG">
            <node concept="2OqwBi" id="2_gL36cK0fy" role="2Oq$k0">
              <node concept="2OqwBi" id="2_gL36cJYK9" role="2Oq$k0">
                <node concept="2OqwBi" id="2_gL36cJU56" role="2Oq$k0">
                  <node concept="37vLTw" id="2IRg8740m$1" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_gL36cJT$0" resolve="packages" />
                  </node>
                  <node concept="39bAoz" id="2_gL36cJUaa" role="2OqNvi" />
                </node>
                <node concept="3QWeyG" id="2_gL36cJZwL" role="2OqNvi">
                  <node concept="2OqwBi" id="2_gL36cJZPO" role="576Qk">
                    <node concept="37vLTw" id="2IRg8740m$5" role="2Oq$k0">
                      <ref role="3cqZAo" node="2_gL36cJUi$" resolve="mac" />
                    </node>
                    <node concept="39bAoz" id="2_gL36cK032" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3QWeyG" id="2_gL36cK1eX" role="2OqNvi">
                <node concept="2OqwBi" id="2_gL36cK1AB" role="576Qk">
                  <node concept="37vLTw" id="2IRg8740m$9" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_gL36cJWnX" resolve="linux" />
                  </node>
                  <node concept="39bAoz" id="2_gL36cK1OX" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3QWeyG" id="2_gL36cK355" role="2OqNvi">
              <node concept="2OqwBi" id="2_gL36cK3nt" role="576Qk">
                <node concept="37vLTw" id="2IRg8740m$d" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_gL36cJWsD" resolve="windows" />
                </node>
                <node concept="39bAoz" id="2_gL36cK3A_" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2_gL36cJNIC" role="1B3o_S" />
      <node concept="A3Dl8" id="2_gL36cJNRV" role="3clF45">
        <node concept="17QB3L" id="2_gL36cJNVt" role="A3Ik2" />
      </node>
      <node concept="P$JXv" id="x4dJzclI0J" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzclI0K" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzclI0L" role="1PaTwD">
            <property role="3oM_SC" value="Unused" />
          </node>
          <node concept="3oM_SD" id="x4dJzclRbZ" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="x4dJzclRd8" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="x4dJzclI0P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2YIFZL" id="2_gL36cJUCx" role="jymVt">
      <property role="TrG5h" value="getMacOpenedPackages" />
      <node concept="3clFbS" id="2_gL36cJUC$" role="3clF47">
        <node concept="3clFbF" id="2_gL36cJUGN" role="3cqZAp">
          <node concept="2OqwBi" id="2_gL36cJVjm" role="3clFbG">
            <node concept="2OqwBi" id="2_gL36cJV0R" role="2Oq$k0">
              <node concept="37vLTw" id="2IRg8740m$h" role="2Oq$k0">
                <ref role="3cqZAo" node="2_gL36cJT$0" resolve="packages" />
              </node>
              <node concept="39bAoz" id="2_gL36cJV6A" role="2OqNvi" />
            </node>
            <node concept="3QWeyG" id="2_gL36cJVJ6" role="2OqNvi">
              <node concept="2OqwBi" id="2_gL36cJVXU" role="576Qk">
                <node concept="37vLTw" id="2IRg8740m$l" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_gL36cJUi$" resolve="mac" />
                </node>
                <node concept="39bAoz" id="2_gL36cJW7l" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2_gL36cJUra" role="1B3o_S" />
      <node concept="A3Dl8" id="2_gL36cJUw_" role="3clF45">
        <node concept="17QB3L" id="2_gL36cJU_9" role="A3Ik2" />
      </node>
      <node concept="P$JXv" id="x4dJzclIhT" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzclIhU" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzclIhV" role="1PaTwD">
            <property role="3oM_SC" value="Unused" />
          </node>
          <node concept="3oM_SD" id="x4dJzclRgR" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="x4dJzclRh9" role="1PaTwD">
            <property role="3oM_SC" value="MPS." />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="x4dJzclIhZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2YIFZL" id="2_gL36cJXlS" role="jymVt">
      <property role="TrG5h" value="getLinuxOpenedPackages" />
      <node concept="3clFbS" id="2_gL36cJXlT" role="3clF47">
        <node concept="3clFbF" id="2_gL36cJXlU" role="3cqZAp">
          <node concept="2OqwBi" id="2_gL36cJXlV" role="3clFbG">
            <node concept="2OqwBi" id="2_gL36cJXlW" role="2Oq$k0">
              <node concept="37vLTw" id="2IRg8740m$p" role="2Oq$k0">
                <ref role="3cqZAo" node="2_gL36cJT$0" resolve="packages" />
              </node>
              <node concept="39bAoz" id="2_gL36cJXlX" role="2OqNvi" />
            </node>
            <node concept="3QWeyG" id="2_gL36cJXlY" role="2OqNvi">
              <node concept="2OqwBi" id="2_gL36cJXlZ" role="576Qk">
                <node concept="37vLTw" id="2IRg8740m$t" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_gL36cJWnX" resolve="linux" />
                </node>
                <node concept="39bAoz" id="2_gL36cJXm0" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2_gL36cJXm1" role="1B3o_S" />
      <node concept="A3Dl8" id="2_gL36cJXm2" role="3clF45">
        <node concept="17QB3L" id="2_gL36cJXm3" role="A3Ik2" />
      </node>
      <node concept="P$JXv" id="x4dJzcm6Wz" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzcm6W$" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzcm6W_" role="1PaTwD">
            <property role="3oM_SC" value="Only" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8rz" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8rP" role="1PaTwD">
            <property role="3oM_SC" value="usage" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8tK" role="1PaTwD">
            <property role="3oM_SC" value="--" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8tL" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8u2" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8uC" role="1PaTwD">
            <property role="3oM_SC" value="removed." />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="x4dJzcm6WD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2YIFZL" id="2_gL36cJXuW" role="jymVt">
      <property role="TrG5h" value="getWindowsOpenedPackages" />
      <node concept="3clFbS" id="2_gL36cJXuX" role="3clF47">
        <node concept="3clFbF" id="2_gL36cJXuY" role="3cqZAp">
          <node concept="2OqwBi" id="2_gL36cJXuZ" role="3clFbG">
            <node concept="2OqwBi" id="2_gL36cJXv0" role="2Oq$k0">
              <node concept="37vLTw" id="2IRg8740m$x" role="2Oq$k0">
                <ref role="3cqZAo" node="2_gL36cJT$0" resolve="packages" />
              </node>
              <node concept="39bAoz" id="2_gL36cJXv1" role="2OqNvi" />
            </node>
            <node concept="3QWeyG" id="2_gL36cJXv2" role="2OqNvi">
              <node concept="2OqwBi" id="2_gL36cJXv3" role="576Qk">
                <node concept="37vLTw" id="2IRg8740m$_" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_gL36cJWsD" resolve="windows" />
                </node>
                <node concept="39bAoz" id="2_gL36cJXv4" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2_gL36cJXv5" role="1B3o_S" />
      <node concept="A3Dl8" id="2_gL36cJXv6" role="3clF45">
        <node concept="17QB3L" id="2_gL36cJXv7" role="A3Ik2" />
      </node>
      <node concept="P$JXv" id="x4dJzcm729" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzcm72a" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzcm72b" role="1PaTwD">
            <property role="3oM_SC" value="Only" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8$K" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8_n" role="1PaTwD">
            <property role="3oM_SC" value="usage" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8At" role="1PaTwD">
            <property role="3oM_SC" value="--" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8Au" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8AJ" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8AK" role="1PaTwD">
            <property role="3oM_SC" value="removed." />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="x4dJzcm72f" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="2IRg8740myK" role="jymVt" />
    <node concept="2YIFZL" id="7mPGpEUarH3" role="jymVt">
      <property role="TrG5h" value="getMacOnlyOpenedPackages" />
      <node concept="3clFbS" id="7mPGpEUarH4" role="3clF47">
        <node concept="3clFbF" id="7mPGpEUarH5" role="3cqZAp">
          <node concept="2OqwBi" id="7mPGpEUarHb" role="3clFbG">
            <node concept="37vLTw" id="7mPGpEUasOx" role="2Oq$k0">
              <ref role="3cqZAo" node="2_gL36cJUi$" resolve="mac" />
            </node>
            <node concept="39bAoz" id="7mPGpEUarHd" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7mPGpEUarHe" role="1B3o_S" />
      <node concept="A3Dl8" id="7mPGpEUarHf" role="3clF45">
        <node concept="17QB3L" id="7mPGpEUarHg" role="A3Ik2" />
      </node>
      <node concept="P$JXv" id="x4dJzcm8MB" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzcm8MC" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzcm8R1" role="1PaTwD">
            <property role="3oM_SC" value="Returns" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8R2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8R3" role="1PaTwD">
            <property role="3oM_SC" value="additional" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8R4" role="1PaTwD">
            <property role="3oM_SC" value="packages" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8R5" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8R6" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8R7" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8R8" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8R9" role="1PaTwD">
            <property role="3oM_SC" value="--add-opens" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8Ra" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm8Rb" role="1PaTwD">
            <property role="3oM_SC" value="MacOs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7mPGpEUarGP" role="jymVt">
      <property role="TrG5h" value="getLinuxOnlyOpenedPackages" />
      <node concept="3clFbS" id="7mPGpEUarGQ" role="3clF47">
        <node concept="3clFbF" id="7mPGpEUarGR" role="3cqZAp">
          <node concept="2OqwBi" id="7mPGpEUarGX" role="3clFbG">
            <node concept="37vLTw" id="7mPGpEUasVG" role="2Oq$k0">
              <ref role="3cqZAo" node="2_gL36cJWnX" resolve="linux" />
            </node>
            <node concept="39bAoz" id="7mPGpEUarGZ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7mPGpEUarH0" role="1B3o_S" />
      <node concept="A3Dl8" id="7mPGpEUarH1" role="3clF45">
        <node concept="17QB3L" id="7mPGpEUarH2" role="A3Ik2" />
      </node>
      <node concept="P$JXv" id="x4dJzcm8Zd" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzcm8Ze" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzcm924" role="1PaTwD">
            <property role="3oM_SC" value="Returns" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm925" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm926" role="1PaTwD">
            <property role="3oM_SC" value="additional" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm927" role="1PaTwD">
            <property role="3oM_SC" value="packages" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm928" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm929" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm92a" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm92b" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm92c" role="1PaTwD">
            <property role="3oM_SC" value="--add-opens" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm92d" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm92e" role="1PaTwD">
            <property role="3oM_SC" value="Linux" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7mPGpEUarGB" role="jymVt">
      <property role="TrG5h" value="getWindowsOnlyOpenedPackages" />
      <node concept="3clFbS" id="7mPGpEUarGC" role="3clF47">
        <node concept="3clFbF" id="7mPGpEUarGD" role="3cqZAp">
          <node concept="2OqwBi" id="7mPGpEUarGJ" role="3clFbG">
            <node concept="37vLTw" id="7mPGpEUat2J" role="2Oq$k0">
              <ref role="3cqZAo" node="2_gL36cJWsD" resolve="windows" />
            </node>
            <node concept="39bAoz" id="7mPGpEUarGL" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7mPGpEUarGM" role="1B3o_S" />
      <node concept="A3Dl8" id="7mPGpEUarGN" role="3clF45">
        <node concept="17QB3L" id="7mPGpEUarGO" role="A3Ik2" />
      </node>
      <node concept="P$JXv" id="x4dJzcm97N" role="lGtFl">
        <node concept="1PaTwC" id="x4dJzcm97O" role="1Vez_I">
          <node concept="3oM_SD" id="x4dJzcm9a5" role="1PaTwD">
            <property role="3oM_SC" value="Returns" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9a6" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9a7" role="1PaTwD">
            <property role="3oM_SC" value="additional" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9a8" role="1PaTwD">
            <property role="3oM_SC" value="packages" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9a9" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9aa" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9ab" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9ac" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9ad" role="1PaTwD">
            <property role="3oM_SC" value="--add-opens" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9ae" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="x4dJzcm9af" role="1PaTwD">
            <property role="3oM_SC" value="Windows" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7mPGpEUarGA" role="jymVt" />
    <node concept="3Tm1VV" id="2IRg8740kUf" role="1B3o_S" />
  </node>
</model>

