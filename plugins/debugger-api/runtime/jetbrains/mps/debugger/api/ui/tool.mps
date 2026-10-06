<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:891e5016-c8e3-4b89-90ed-01a5f21e6fc3(jetbrains.mps.debugger.api.ui.tool)">
  <persistence version="9" />
  <languages>
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="lt1n" ref="r:4a0301da-c964-420c-8e35-486843de9df5(jetbrains.mps.debug.api.evaluation)" />
    <import index="pry4" ref="r:0a0d7eec-6e5a-412b-8e16-e3ee5ed7fb95(jetbrains.mps.debug.api.programState)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="1rri" ref="r:01820806-c285-4459-a416-37590f94adc8(jetbrains.mps.debugger.api.ui.actions)" />
    <import index="choc" ref="r:a35795b4-c996-4cf6-bdbd-9ddbda25cde5(jetbrains.mps.debugger.api.ui.tree)" />
    <import index="ljcu" ref="r:e60874cf-5ffd-4123-9760-5f88ff8e0a5a(jetbrains.mps.debugger.api.ui.icons)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="fhz7" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.runners(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="cjdg" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.ui(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="hs1w" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.ui.layout(MPS.IDEA/)" />
    <import index="v7ux" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.content(MPS.IDEA/)" />
    <import index="uof7" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.ui.actions(MPS.IDEA/)" />
    <import index="dj99" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.configurations(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="tljb" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.concurrency.annotations(MPS.IDEA/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="3205675194086686068" name="jetbrains.mps.lang.plugin.structure.GroupAccessOperation" flags="nn" index="3$FqnI">
        <reference id="3205675194086686070" name="group" index="3$FqnG" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="8992394414545679616" name="jetbrains.mps.baseLanguage.closures.structure.ClosureVarType" flags="ig" index="3VYd8j" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
  </registry>
  <node concept="312cEu" id="3SnNvqCbxom">
    <property role="TrG5h" value="DebuggerToolContent" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3SnNvqCbxon" role="1B3o_S" />
    <node concept="Wx3nA" id="3SnNvqCbxoo" role="jymVt">
      <property role="TrG5h" value="FRAMES" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1S2xql_35LW" role="1tU5fm" />
      <node concept="3Tm1VV" id="3SnNvqCbxoq" role="1B3o_S" />
      <node concept="Xl_RD" id="3SnNvqCbxor" role="33vP2m">
        <property role="Xl_RC" value="Frames" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxos" role="jymVt">
      <property role="TrG5h" value="VARIABLES" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1S2xql_36j7" role="1tU5fm" />
      <node concept="3Tm1VV" id="3SnNvqCbxou" role="1B3o_S" />
      <node concept="Xl_RD" id="3SnNvqCbxov" role="33vP2m">
        <property role="Xl_RC" value="Variables" />
      </node>
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxow" role="jymVt">
      <property role="TrG5h" value="WATCHES" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1S2xql_36j8" role="1tU5fm" />
      <node concept="3Tm1VV" id="3SnNvqCbxoy" role="1B3o_S" />
      <node concept="Xl_RD" id="3SnNvqCbxoz" role="33vP2m">
        <property role="Xl_RC" value="Watches" />
      </node>
    </node>
    <node concept="3clFbW" id="3SnNvqCbxo$" role="jymVt">
      <node concept="3Tm1VV" id="3SnNvqCbxo_" role="1B3o_S" />
      <node concept="3cqZAl" id="3SnNvqCbxoA" role="3clF45" />
      <node concept="3clFbS" id="3SnNvqCbxoB" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="3SnNvqCbxLP">
    <property role="TrG5h" value="DebuggerToolContentBuilder" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3SnNvqCbxLQ" role="1B3o_S" />
    <node concept="3uibUv" id="3SnNvqCbxLR" role="EKbjA">
      <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
    </node>
    <node concept="Wx3nA" id="3SnNvqCbxMk" role="jymVt">
      <property role="TrG5h" value="JAVA_RUNNER" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1S2xql_3iBu" role="1tU5fm" />
      <node concept="3Tm6S6" id="3SnNvqCbxMm" role="1B3o_S" />
      <node concept="Xl_RD" id="3SnNvqCbxMn" role="33vP2m">
        <property role="Xl_RC" value="JavaRunner" />
      </node>
      <node concept="2AHcQZ" id="3SnNvqCbxMo" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
    </node>
    <node concept="312cEg" id="3SnNvqCbxMp" role="jymVt">
      <property role="TrG5h" value="myRunner" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxMq" role="1tU5fm">
        <ref role="3uigEE" to="fhz7:~ProgramRunner" resolve="ProgramRunner" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxMr" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SnNvqCbxMs" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxMt" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxMu" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SnNvqCbxMv" role="jymVt">
      <property role="TrG5h" value="myDisposeables" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxMw" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
        <node concept="3uibUv" id="3SnNvqCbxMx" role="11_B2D">
          <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxMy" role="1B3o_S" />
      <node concept="2ShNRf" id="3SnNvqCbxMz" role="33vP2m">
        <node concept="1pGfFk" id="3SnNvqCbxM$" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="3SnNvqCbxM_" role="1pMfVU">
            <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3SnNvqCbxMA" role="jymVt">
      <property role="TrG5h" value="myReuseProhibited" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="10P_77" id="3SnNvqCbxMB" role="1tU5fm" />
      <node concept="3Tm6S6" id="3SnNvqCbxMC" role="1B3o_S" />
      <node concept="3clFbT" id="3SnNvqCbxMD" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="3SnNvqCbxME" role="jymVt">
      <property role="TrG5h" value="myExecutionResult" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxMF" role="1tU5fm">
        <ref role="3uigEE" to="3v5a:~ExecutionResult" resolve="ExecutionResult" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxMG" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SnNvqCbxMH" role="jymVt">
      <property role="TrG5h" value="myExecutor" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxMI" role="1tU5fm">
        <ref role="3uigEE" to="3v5a:~Executor" resolve="Executor" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxMJ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SnNvqCbxMK" role="jymVt">
      <property role="TrG5h" value="myEnvironment" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxML" role="1tU5fm">
        <ref role="3uigEE" to="fhz7:~ExecutionEnvironment" resolve="ExecutionEnvironment" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxMM" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3SnNvqCbxMN" role="jymVt">
      <node concept="3Tm1VV" id="3SnNvqCbxMO" role="1B3o_S" />
      <node concept="3cqZAl" id="3SnNvqCbxMP" role="3clF45" />
      <node concept="37vLTG" id="3SnNvqCbxMQ" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxMR" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxMS" role="3clF46">
        <property role="TrG5h" value="runner" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxMT" role="1tU5fm">
          <ref role="3uigEE" to="fhz7:~ProgramRunner" resolve="ProgramRunner" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxMU" role="3clF46">
        <property role="TrG5h" value="executor" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxMV" role="1tU5fm">
          <ref role="3uigEE" to="3v5a:~Executor" resolve="Executor" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxMW" role="3clF46">
        <property role="TrG5h" value="executionResult" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxMX" role="1tU5fm">
          <ref role="3uigEE" to="3v5a:~ExecutionResult" resolve="ExecutionResult" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxMY" role="3clF46">
        <property role="TrG5h" value="env" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxMZ" role="1tU5fm">
          <ref role="3uigEE" to="fhz7:~ExecutionEnvironment" resolve="ExecutionEnvironment" />
        </node>
      </node>
      <node concept="3clFbS" id="3SnNvqCbxN0" role="3clF47">
        <node concept="3clFbF" id="3SnNvqCbxN1" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxN2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuktf" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxMs" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxglKnH" role="37vLTx">
              <ref role="3cqZAo" node="3SnNvqCbxMQ" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxN5" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxN6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTqx" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxMp" resolve="myRunner" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmxKg" role="37vLTx">
              <ref role="3cqZAo" node="3SnNvqCbxMS" resolve="runner" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxN9" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxNa" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuHqb" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxMH" resolve="myExecutor" />
            </node>
            <node concept="37vLTw" id="2BHiRxghfyG" role="37vLTx">
              <ref role="3cqZAo" node="3SnNvqCbxMU" resolve="executor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxNd" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxNe" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuW29" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxME" resolve="myExecutionResult" />
            </node>
            <node concept="37vLTw" id="2BHiRxghgkR" role="37vLTx">
              <ref role="3cqZAo" node="3SnNvqCbxMW" resolve="executionResult" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxNh" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxNi" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuypq" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxMK" resolve="myEnvironment" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmaK8" role="37vLTx">
              <ref role="3cqZAo" node="3SnNvqCbxMY" resolve="env" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxNl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3SnNvqCbxNm" role="1B3o_S" />
      <node concept="3cqZAl" id="3SnNvqCbxNn" role="3clF45" />
      <node concept="3clFbS" id="3SnNvqCbxNo" role="3clF47">
        <node concept="1DcWWT" id="3SnNvqCbxNp" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuoSz" role="1DdaDG">
            <ref role="3cqZAo" node="3SnNvqCbxMv" resolve="myDisposeables" />
          </node>
          <node concept="3cpWsn" id="3SnNvqCbxNr" role="1Duv9x">
            <property role="TrG5h" value="disposable" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxNs" role="1tU5fm">
              <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
            </node>
          </node>
          <node concept="3clFbS" id="3SnNvqCbxNt" role="2LFqv$">
            <node concept="3clFbF" id="3SnNvqCbxNu" role="3cqZAp">
              <node concept="2OqwBi" id="3SnNvqCbxNv" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTvNN" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SnNvqCbxNr" resolve="disposable" />
                </node>
                <node concept="liA8E" id="3SnNvqCbxNx" role="2OqNvi">
                  <ref role="37wK5l" to="v23q:~Disposable.dispose()" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Fk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxNy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxNz" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxN$" role="3clF45">
        <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
      </node>
      <node concept="3clFbS" id="3SnNvqCbxN_" role="3clF47">
        <node concept="3cpWs8" id="3SnNvqCbxNA" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxNB" role="3cpWs9">
            <property role="TrG5h" value="profile" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxNC" role="1tU5fm">
              <ref role="3uigEE" to="dj99:~RunProfile" resolve="RunProfile" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxND" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuTrl" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxMK" resolve="myEnvironment" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxNF" role="2OqNvi">
                <ref role="37wK5l" to="fhz7:~ExecutionEnvironment.getRunProfile()" resolve="getRunProfile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxNG" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxNH" role="3cpWs9">
            <property role="TrG5h" value="console" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxNI" role="1tU5fm">
              <ref role="3uigEE" to="cjdg:~ExecutionConsole" resolve="ExecutionConsole" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxNJ" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuoPQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxME" resolve="myExecutionResult" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxNL" role="2OqNvi">
                <ref role="37wK5l" to="3v5a:~ExecutionResult.getExecutionConsole()" resolve="getExecutionConsole" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxNM" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxNN" role="3cpWs9">
            <property role="TrG5h" value="runnerType" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="1S2xql_3iBv" role="1tU5fm" />
            <node concept="3K4zz7" id="3SnNvqCbxNP" role="33vP2m">
              <node concept="2ZW3vV" id="3SnNvqCbxNQ" role="3K4Cdx">
                <node concept="37vLTw" id="3GM_nagTAPt" role="2ZW6bz">
                  <ref role="3cqZAo" node="3SnNvqCbxNH" resolve="console" />
                </node>
                <node concept="3uibUv" id="3SnNvqCbxNS" role="2ZW6by">
                  <ref role="3uigEE" to="cjdg:~ExecutionConsoleEx" resolve="ExecutionConsoleEx" />
                </node>
              </node>
              <node concept="3cpWs3" id="3SnNvqCbxNT" role="3K4E3e">
                <node concept="3cpWs3" id="3SnNvqCbxNU" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxeonOq" role="3uHU7B">
                    <ref role="3cqZAo" node="3SnNvqCbxMk" resolve="JAVA_RUNNER" />
                  </node>
                  <node concept="Xl_RD" id="3SnNvqCbxNW" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
                <node concept="2OqwBi" id="3SnNvqCbxNX" role="3uHU7w">
                  <node concept="1eOMI4" id="3SnNvqCbxNY" role="2Oq$k0">
                    <node concept="10QFUN" id="3SnNvqCbxNZ" role="1eOMHV">
                      <node concept="37vLTw" id="3GM_nagT_QF" role="10QFUP">
                        <ref role="3cqZAo" node="3SnNvqCbxNH" resolve="console" />
                      </node>
                      <node concept="3uibUv" id="3SnNvqCbxO1" role="10QFUM">
                        <ref role="3uigEE" to="cjdg:~ExecutionConsoleEx" resolve="ExecutionConsoleEx" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3SnNvqCbxO2" role="2OqNvi">
                    <ref role="37wK5l" to="cjdg:~ExecutionConsoleEx.getExecutionConsoleId()" resolve="getExecutionConsoleId" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxeorFm" role="3K4GZi">
                <ref role="3cqZAo" node="3SnNvqCbxMk" resolve="JAVA_RUNNER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxO4" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxO5" role="3cpWs9">
            <property role="TrG5h" value="ui" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxO6" role="1tU5fm">
              <ref role="3uigEE" to="cjdg:~RunnerLayoutUi" resolve="RunnerLayoutUi" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxO7" role="33vP2m">
              <node concept="2YIFZM" id="3SnNvqCbxO8" role="2Oq$k0">
                <ref role="1Pybhc" to="cjdg:~RunnerLayoutUi$Factory" resolve="RunnerLayoutUi.Factory" />
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi$Factory.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                <node concept="37vLTw" id="2BHiRxeuFL7" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxMs" resolve="myProject" />
                </node>
              </node>
              <node concept="liA8E" id="3SnNvqCbxOa" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi$Factory.create(java.lang.String,java.lang.String,java.lang.String,com.intellij.openapi.Disposable)" resolve="create" />
                <node concept="37vLTw" id="3GM_nagTrk1" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxNN" resolve="runnerType" />
                </node>
                <node concept="2OqwBi" id="3SnNvqCbxOc" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeuL77" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxMH" resolve="myExecutor" />
                  </node>
                  <node concept="liA8E" id="3SnNvqCbxOe" role="2OqNvi">
                    <ref role="37wK5l" to="3v5a:~Executor.getId()" resolve="getId" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3SnNvqCbxOf" role="37wK5m">
                  <node concept="37vLTw" id="3GM_nagTw8J" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxNB" resolve="profile" />
                  </node>
                  <node concept="liA8E" id="3SnNvqCbxOh" role="2OqNvi">
                    <ref role="37wK5l" to="dj99:~RunProfile.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xjq3P" id="3SnNvqCbxOi" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3SnNvqCbxOj" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxOk" role="3clFbw">
            <node concept="2YIFZM" id="3SnNvqCbxOl" role="2Oq$k0">
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxOm" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.isUnitTestMode()" resolve="isUnitTestMode" />
            </node>
          </node>
          <node concept="3clFbS" id="3SnNvqCbxOn" role="3clFbx">
            <node concept="3cpWs6" id="3SnNvqCbxOo" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz8Pq" role="3cqZAk">
                <ref role="37wK5l" node="3SnNvqCbxOM" resolve="createDescriptorInternal" />
                <node concept="37vLTw" id="3GM_nagTAjA" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxO5" resolve="ui" />
                </node>
                <node concept="37vLTw" id="3GM_nagTwoI" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxNB" resolve="profile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxOs" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9A3" role="3clFbG">
            <ref role="37wK5l" node="3SnNvqCbxP4" resolve="buildUi" />
            <node concept="37vLTw" id="3GM_nagTB2L" role="37wK5m">
              <ref role="3cqZAo" node="3SnNvqCbxO5" resolve="ui" />
            </node>
            <node concept="37vLTw" id="3GM_nagTxuf" role="37wK5m">
              <ref role="3cqZAo" node="3SnNvqCbxNH" resolve="console" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxOw" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxOx" role="3cpWs9">
            <property role="TrG5h" value="contentDescriptor" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxOy" role="1tU5fm">
              <ref role="3uigEE" node="3SnNvqCbxLS" resolve="DebuggerToolContentBuilder.MyRunContentDescriptor" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz8H8" role="33vP2m">
              <ref role="37wK5l" node="3SnNvqCbxOM" resolve="createDescriptorInternal" />
              <node concept="37vLTw" id="3GM_nagTrIa" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxO5" resolve="ui" />
              </node>
              <node concept="37vLTw" id="3GM_nagTBVK" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxNB" resolve="profile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxOA" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxOB" role="3clFbG">
            <node concept="2OqwBi" id="3SnNvqCbxOC" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagTyF5" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxO5" resolve="ui" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxOE" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.getOptions()" resolve="getOptions" />
              </node>
            </node>
            <node concept="liA8E" id="3SnNvqCbxOF" role="2OqNvi">
              <ref role="37wK5l" to="hs1w:~LayoutViewOptions.setLeftToolbar(com.intellij.openapi.actionSystem.ActionGroup,java.lang.String)" resolve="setLeftToolbar" />
              <node concept="1rXfSq" id="4hiugqyz9ya" role="37wK5m">
                <ref role="37wK5l" node="3SnNvqCbxQ2" resolve="createActionToolbar" />
                <node concept="37vLTw" id="3GM_nagTxrv" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxO5" resolve="ui" />
                </node>
                <node concept="37vLTw" id="3GM_nagTu6g" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxOx" resolve="contentDescriptor" />
                </node>
              </node>
              <node concept="10M0yZ" id="3SnNvqCbxOJ" role="37wK5m">
                <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                <ref role="3cqZAo" to="qkt:~ActionPlaces.DEBUGGER_TOOLBAR" resolve="DEBUGGER_TOOLBAR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1S2xql_3x5C" role="3cqZAp">
          <node concept="2OqwBi" id="1S2xql_3x5W" role="3clFbG">
            <node concept="2OqwBi" id="1S2xql_3x5K" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagT$W3" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxO5" resolve="ui" />
              </node>
              <node concept="liA8E" id="1S2xql_3x5P" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.getOptions()" resolve="getOptions" />
              </node>
            </node>
            <node concept="liA8E" id="1S2xql_3x62" role="2OqNvi">
              <ref role="37wK5l" to="hs1w:~LayoutViewOptions.setTopLeftToolbar(com.intellij.openapi.actionSystem.ActionGroup,java.lang.String)" resolve="setTopLeftToolbar" />
              <node concept="3$FqnI" id="4MN0nTvhup5" role="37wK5m">
                <ref role="3$FqnG" to="1rri:7WbFayaFPHw" resolve="DebugStepsMenu" />
              </node>
              <node concept="10M0yZ" id="1S2xql_3x66" role="37wK5m">
                <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                <ref role="3cqZAo" to="qkt:~ActionPlaces.DEBUGGER_TOOLBAR" resolve="DEBUGGER_TOOLBAR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbxOK" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTttW" role="3cqZAk">
            <ref role="3cqZAo" node="3SnNvqCbxOx" resolve="contentDescriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxOM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createDescriptorInternal" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxON" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxOO" role="3clF45">
        <ref role="3uigEE" node="3SnNvqCbxLS" resolve="DebuggerToolContentBuilder.MyRunContentDescriptor" />
      </node>
      <node concept="37vLTG" id="3SnNvqCbxOP" role="3clF46">
        <property role="TrG5h" value="ui" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxOQ" role="1tU5fm">
          <ref role="3uigEE" to="cjdg:~RunnerLayoutUi" resolve="RunnerLayoutUi" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxOR" role="3clF46">
        <property role="TrG5h" value="profile" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxOS" role="1tU5fm">
          <ref role="3uigEE" to="dj99:~RunProfile" resolve="RunProfile" />
        </node>
      </node>
      <node concept="3clFbS" id="3SnNvqCbxOT" role="3clF47">
        <node concept="3cpWs8" id="3vYYl$GCjPo" role="3cqZAp">
          <node concept="3cpWsn" id="3vYYl$GCjPp" role="3cpWs9">
            <property role="TrG5h" value="descriptor" />
            <node concept="3uibUv" id="3vYYl$GCiRk" role="1tU5fm">
              <ref role="3uigEE" node="3SnNvqCbxLS" resolve="DebuggerToolContentBuilder.MyRunContentDescriptor" />
            </node>
            <node concept="2ShNRf" id="3vYYl$GCjPq" role="33vP2m">
              <node concept="1pGfFk" id="3vYYl$GCjPr" role="2ShVmc">
                <ref role="37wK5l" node="3SnNvqCbxM1" resolve="DebuggerToolContentBuilder.MyRunContentDescriptor" />
                <node concept="37vLTw" id="3vYYl$GCjPs" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxOR" resolve="profile" />
                </node>
                <node concept="37vLTw" id="3vYYl$GCjPt" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxME" resolve="myExecutionResult" />
                </node>
                <node concept="37vLTw" id="3vYYl$GCjPu" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxMA" resolve="myReuseProhibited" />
                </node>
                <node concept="2OqwBi" id="3vYYl$GCjPv" role="37wK5m">
                  <node concept="37vLTw" id="3vYYl$GCjPw" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxOP" resolve="ui" />
                  </node>
                  <node concept="liA8E" id="3vYYl$GCjPx" role="2OqNvi">
                    <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.getComponent()" resolve="getComponent" />
                  </node>
                </node>
                <node concept="Xjq3P" id="3vYYl$GCjPy" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vYYl$GBWHe" role="3cqZAp">
          <node concept="2OqwBi" id="3vYYl$GC3Uk" role="3clFbG">
            <node concept="2OqwBi" id="3vYYl$GCsMK" role="2Oq$k0">
              <node concept="37vLTw" id="3vYYl$GCsML" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxOP" resolve="ui" />
              </node>
              <node concept="liA8E" id="3vYYl$GCsMM" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.getContentManager()" resolve="getContentManager" />
              </node>
            </node>
            <node concept="liA8E" id="3vYYl$GC3Ul" role="2OqNvi">
              <ref role="37wK5l" to="v7ux:~ContentManager.addUiDataProvider(com.intellij.openapi.actionSystem.UiDataProvider)" resolve="addUiDataProvider" />
              <node concept="10QFUN" id="3vYYl$GC3Um" role="37wK5m">
                <node concept="1bVj0M" id="3vYYl$GC3Un" role="10QFUP">
                  <node concept="37vLTG" id="3vYYl$GC3Uo" role="1bW2Oz">
                    <property role="TrG5h" value="sink" />
                    <node concept="3VYd8j" id="3vYYl$GC3Up" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="3vYYl$GC3Uq" role="1bW5cS">
                    <node concept="9aQIb" id="3vYYl$GC3Ur" role="3cqZAp">
                      <node concept="3clFbS" id="3vYYl$GC3Us" role="9aQI4">
                        <node concept="3clFbF" id="3vYYl$GCha$" role="3cqZAp">
                          <node concept="2OqwBi" id="3vYYl$GCha_" role="3clFbG">
                            <node concept="37vLTw" id="3vYYl$GChaA" role="2Oq$k0">
                              <ref role="3cqZAo" node="3vYYl$GC3Uo" resolve="sink" />
                            </node>
                            <node concept="liA8E" id="3vYYl$GChaB" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~DataSink.set(com.intellij.openapi.actionSystem.DataKey,java.lang.Object)" resolve="set" />
                              <node concept="10M0yZ" id="3vYYl$GChaC" role="37wK5m">
                                <ref role="1PxDUh" to="qkt:~ExecutionDataKeys" />
                                <ref role="3cqZAo" to="qkt:~ExecutionDataKeys.RUN_CONTENT_DESCRIPTOR" />
                              </node>
                              <node concept="37vLTw" id="3vYYl$GChaD" role="37wK5m">
                                <ref role="3cqZAo" node="3vYYl$GCjPp" resolve="descriptor" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="3vYYl$GC3UA" role="10QFUM">
                  <ref role="3uigEE" to="qkt:~UiDataProvider" resolve="UiDataProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbxOU" role="3cqZAp">
          <node concept="37vLTw" id="3vYYl$GCjPz" role="3cqZAk">
            <ref role="3cqZAo" node="3vYYl$GCjPp" resolve="descriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxP4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="buildUi" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxP5" role="1B3o_S" />
      <node concept="3cqZAl" id="3SnNvqCbxP6" role="3clF45" />
      <node concept="3clFbS" id="3SnNvqCbxPb" role="3clF47">
        <node concept="3clFbF" id="3SnNvqCbxPc" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxPd" role="3clFbG">
            <node concept="2OqwBi" id="3SnNvqCbxPe" role="2Oq$k0">
              <node concept="2OqwBi" id="3SnNvqCbxPf" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgls3A" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SnNvqCbxP7" resolve="ui" />
                </node>
                <node concept="liA8E" id="3SnNvqCbxPh" role="2OqNvi">
                  <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.getOptions()" resolve="getOptions" />
                </node>
              </node>
              <node concept="liA8E" id="3SnNvqCbxPi" role="2OqNvi">
                <ref role="37wK5l" to="hs1w:~LayoutViewOptions.setMoveToGridActionEnabled(boolean)" resolve="setMoveToGridActionEnabled" />
                <node concept="3clFbT" id="3SnNvqCbxPj" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3SnNvqCbxPk" role="2OqNvi">
              <ref role="37wK5l" to="hs1w:~LayoutViewOptions.setMinimizeActionEnabled(boolean)" resolve="setMinimizeActionEnabled" />
              <node concept="3clFbT" id="3SnNvqCbxPl" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5p_z32FSns5" role="3cqZAp">
          <node concept="3cpWsn" id="5p_z32FSns6" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="5p_z32FSns7" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2OqwBi" id="5p_z32FSns8" role="33vP2m">
              <node concept="2YIFZM" id="5p_z32FSns9" role="2Oq$k0">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJob" resolve="getInstance" />
                <ref role="1Pybhc" to="1l1h:3SnNvqCaJmA" resolve="DebugSessionManagerComponent" />
                <node concept="37vLTw" id="2BHiRxeuoWS" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxMs" resolve="myProject" />
                </node>
              </node>
              <node concept="liA8E" id="5p_z32FSnsb" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJqz" resolve="getDebugSession" />
                <node concept="2OqwBi" id="5p_z32FSnsc" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeuMwQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxME" resolve="myExecutionResult" />
                  </node>
                  <node concept="liA8E" id="5p_z32FSnse" role="2OqNvi">
                    <ref role="37wK5l" to="3v5a:~ExecutionResult.getProcessHandler()" resolve="getProcessHandler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5p_z32FSnsh" role="3cqZAp">
          <node concept="3clFbS" id="5p_z32FSnsi" role="3clFbx">
            <node concept="RRSsy" id="3jYQuSB35rZ" role="3cqZAp">
              <property role="RRSoG" value="gZ5fh_4/error" />
              <node concept="3cpWs3" id="5p_z32FSnsI" role="RRSoy">
                <node concept="2OqwBi" id="5p_z32FSnsS" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxeuyL3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxME" resolve="myExecutionResult" />
                  </node>
                  <node concept="liA8E" id="5p_z32FSnsY" role="2OqNvi">
                    <ref role="37wK5l" to="3v5a:~ExecutionResult.getProcessHandler()" resolve="getProcessHandler" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5p_z32FSnsB" role="3uHU7B">
                  <property role="Xl_RC" value="No debug session found for process handler " />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5p_z32FSnst" role="3clFbw">
            <node concept="10Nm6u" id="5p_z32FSnsw" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTrRE" role="3uHU7B">
              <ref role="3cqZAo" node="5p_z32FSns6" resolve="debugSession" />
            </node>
          </node>
          <node concept="9aQIb" id="5p_z32FSnsZ" role="9aQIa">
            <node concept="3clFbS" id="5p_z32FSnt0" role="9aQI4">
              <node concept="3clFbF" id="3SnNvqCbxPm" role="3cqZAp">
                <node concept="2ShNRf" id="3SnNvqCbxPn" role="3clFbG">
                  <node concept="1pGfFk" id="3SnNvqCbxPo" role="2ShVmc">
                    <ref role="37wK5l" node="3SnNvqCbxTN" resolve="DebuggerToolPanel" />
                    <node concept="37vLTw" id="2BHiRxeuyR8" role="37wK5m">
                      <ref role="3cqZAo" node="3SnNvqCbxMs" resolve="myProject" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTA6D" role="37wK5m">
                      <ref role="3cqZAo" node="5p_z32FSns6" resolve="debugSession" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm62H" role="37wK5m">
                      <ref role="3cqZAo" node="3SnNvqCbxP7" resolve="ui" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxPu" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxPv" role="3cpWs9">
            <property role="TrG5h" value="consoleContent" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxPw" role="1tU5fm">
              <ref role="3uigEE" to="v7ux:~Content" resolve="Content" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxPx" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxglB4d" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxP7" resolve="ui" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxPz" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.createContent(java.lang.String,javax.swing.JComponent,java.lang.String,javax.swing.Icon,javax.swing.JComponent)" resolve="createContent" />
                <node concept="Xl_RD" id="3SnNvqCbxP$" role="37wK5m">
                  <property role="Xl_RC" value="Console2.0" />
                </node>
                <node concept="2OqwBi" id="3SnNvqCbxP_" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgma7W" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxP9" resolve="console" />
                  </node>
                  <node concept="liA8E" id="3SnNvqCbxPB" role="2OqNvi">
                    <ref role="37wK5l" to="jkm4:~ComponentContainer.getComponent()" resolve="getComponent" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3SnNvqCbxPC" role="37wK5m">
                  <property role="Xl_RC" value="Console" />
                </node>
                <node concept="10M0yZ" id="2WwZUT5eEUb" role="37wK5m">
                  <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Console" resolve="Console" />
                  <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
                </node>
                <node concept="2OqwBi" id="3SnNvqCbxPF" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgmihk" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxP9" resolve="console" />
                  </node>
                  <node concept="liA8E" id="3SnNvqCbxPH" role="2OqNvi">
                    <ref role="37wK5l" to="jkm4:~ComponentContainer.getPreferredFocusableComponent()" resolve="getPreferredFocusableComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxPI" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxPJ" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTvFD" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxPv" resolve="consoleContent" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxPL" role="2OqNvi">
              <ref role="37wK5l" to="v7ux:~Content.setSearchComponent(javax.swing.JComponent)" resolve="setSearchComponent" />
              <node concept="2OqwBi" id="3SnNvqCbxPM" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgmIW0" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SnNvqCbxP9" resolve="console" />
                </node>
                <node concept="liA8E" id="3SnNvqCbxPO" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~ComponentContainer.getComponent()" resolve="getComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxPP" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxPQ" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTx6D" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxPv" resolve="consoleContent" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxPS" role="2OqNvi">
              <ref role="37wK5l" to="v7ux:~Content.setCloseable(boolean)" resolve="setCloseable" />
              <node concept="3clFbT" id="3SnNvqCbxPT" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxPU" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxPV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghiS1" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxP7" resolve="ui" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxPX" role="2OqNvi">
              <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.addContent(com.intellij.ui.content.Content,int,com.intellij.execution.ui.layout.PlaceInGrid,boolean)" resolve="addContent" />
              <node concept="37vLTw" id="3GM_nagTyJx" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxPv" resolve="consoleContent" />
              </node>
              <node concept="3cmrfG" id="3SnNvqCbxPZ" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="Rm8GO" id="3SnNvqCbxQ0" role="37wK5m">
                <ref role="1Px2BO" to="hs1w:~PlaceInGrid" resolve="PlaceInGrid" />
                <ref role="Rm8GQ" to="hs1w:~PlaceInGrid.center" resolve="center" />
              </node>
              <node concept="3clFbT" id="3SnNvqCbxQ1" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxP7" role="3clF46">
        <property role="TrG5h" value="ui" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxP8" role="1tU5fm">
          <ref role="3uigEE" to="cjdg:~RunnerLayoutUi" resolve="RunnerLayoutUi" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxP9" role="3clF46">
        <property role="TrG5h" value="console" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxPa" role="1tU5fm">
          <ref role="3uigEE" to="cjdg:~ExecutionConsole" resolve="ExecutionConsole" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxQ2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createActionToolbar" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxQ3" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxQ4" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
      </node>
      <node concept="37vLTG" id="3SnNvqCbxQ5" role="3clF46">
        <property role="TrG5h" value="ui" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxQ6" role="1tU5fm">
          <ref role="3uigEE" to="cjdg:~RunnerLayoutUi" resolve="RunnerLayoutUi" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxQ7" role="3clF46">
        <property role="TrG5h" value="contentDescriptor" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxQ8" role="1tU5fm">
          <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3SnNvqCbxQ9" role="3clF47">
        <node concept="3cpWs8" id="3SnNvqCbxQa" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxQb" role="3cpWs9">
            <property role="TrG5h" value="actionGroup" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxQc" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
            </node>
            <node concept="2ShNRf" id="3SnNvqCbxQd" role="33vP2m">
              <node concept="1pGfFk" id="3SnNvqCbxQe" role="2ShVmc">
                <ref role="37wK5l" to="qkt:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3SnNvqCbzsG" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXobDW" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXobDX" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobDY" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobDZ" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobE0" role="1PaTwD">
              <property role="3oM_SC" value="context" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobE1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobE2" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobE3" role="1PaTwD">
              <property role="3oM_SC" value="data" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobE4" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobE5" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobE6" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxQ$" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxQ_" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTwW3" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxQB" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2OqwBi" id="4Sa0NTIlImd" role="37wK5m">
                <node concept="2YIFZM" id="4Sa0NTIlImj" role="2Oq$k0">
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="4Sa0NTIlImf" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="10M0yZ" id="4Sa0NTIlImJ" role="37wK5m">
                    <ref role="3cqZAo" to="qkt:~IdeActions.ACTION_RERUN" resolve="ACTION_RERUN" />
                    <ref role="1PxDUh" to="qkt:~IdeActions" resolve="IdeActions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxQD" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxQE" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTvAq" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxQG" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="3$FqnI" id="4MN0nTvhvEL" role="37wK5m">
                <ref role="3$FqnG" to="1rri:68aArIS9HL8" resolve="DebugTool" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxQL" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxQM" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTBr7" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxQO" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.addAll(com.intellij.openapi.actionSystem.AnAction...)" resolve="addAll" />
              <node concept="2OqwBi" id="3SnNvqCbxQP" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeukvM" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SnNvqCbxME" resolve="myExecutionResult" />
                </node>
                <node concept="liA8E" id="3SnNvqCbxQR" role="2OqNvi">
                  <ref role="37wK5l" to="3v5a:~ExecutionResult.getActions()" resolve="getActions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxQS" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxQT" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTv$q" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxQV" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.addSeparator()" resolve="addSeparator" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxQW" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxQX" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTtiS" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxQZ" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2OqwBi" id="3SnNvqCbxR0" role="37wK5m">
                <node concept="2OqwBi" id="3SnNvqCbxR1" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgm7oQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxQ5" resolve="ui" />
                  </node>
                  <node concept="liA8E" id="3SnNvqCbxR3" role="2OqNvi">
                    <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.getOptions()" resolve="getOptions" />
                  </node>
                </node>
                <node concept="liA8E" id="3SnNvqCbxR4" role="2OqNvi">
                  <ref role="37wK5l" to="hs1w:~LayoutViewOptions.getLayoutActions()" resolve="getLayoutActions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxR5" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxR6" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTroR" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxR8" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.addSeparator()" resolve="addSeparator" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxR9" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxRa" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTrHF" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxRc" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2OqwBi" id="$51S7iuS4x" role="37wK5m">
                <node concept="2YIFZM" id="$51S7iuRXI" role="2Oq$k0">
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="$51S7iuSit" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="10M0yZ" id="$51S7ivEuf" role="37wK5m">
                    <ref role="3cqZAo" to="qkt:~IdeActions.ACTION_PIN_ACTIVE_TAB" resolve="ACTION_PIN_ACTIVE_TAB" />
                    <ref role="1PxDUh" to="qkt:~IdeActions" resolve="IdeActions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxRe" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxRf" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTAXw" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxRh" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="3SnNvqCbxRi" role="37wK5m">
                <node concept="1pGfFk" id="3SnNvqCbxRj" role="2ShVmc">
                  <ref role="37wK5l" to="uof7:~CloseAction.&lt;init&gt;(com.intellij.execution.Executor,com.intellij.execution.ui.RunContentDescriptor,com.intellij.openapi.project.Project)" resolve="CloseAction" />
                  <node concept="37vLTw" id="2BHiRxeuwDU" role="37wK5m">
                    <ref role="3cqZAo" node="3SnNvqCbxMH" resolve="myExecutor" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgkW_P" role="37wK5m">
                    <ref role="3cqZAo" node="3SnNvqCbxQ7" resolve="contentDescriptor" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuR7y" role="37wK5m">
                    <ref role="3cqZAo" node="3SnNvqCbxMs" resolve="myProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbxRn" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTBew" role="3cqZAk">
            <ref role="3cqZAo" node="3SnNvqCbxQb" resolve="actionGroup" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxRp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="showRunContent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3SnNvqCbxRq" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxRr" role="3clF45">
        <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
      </node>
      <node concept="37vLTG" id="3SnNvqCbxRs" role="3clF46">
        <property role="TrG5h" value="reuseContent" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3SnNvqCbxRt" role="1tU5fm">
          <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3SnNvqCbxRu" role="3clF47">
        <node concept="3cpWs8" id="3SnNvqCbxRv" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxRw" role="3cpWs9">
            <property role="TrG5h" value="descriptor" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3SnNvqCbxRx" role="1tU5fm">
              <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz5Iq" role="33vP2m">
              <ref role="37wK5l" node="3SnNvqCbxNy" resolve="createDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3SnNvqCbxRz" role="3cqZAp">
          <node concept="3y3z36" id="3SnNvqCbxR$" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmIpx" role="3uHU7B">
              <ref role="3cqZAo" node="3SnNvqCbxRs" resolve="reuseContent" />
            </node>
            <node concept="10Nm6u" id="3SnNvqCbxRA" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3SnNvqCbxRB" role="3clFbx">
            <node concept="3clFbF" id="3SnNvqCbxRC" role="3cqZAp">
              <node concept="2OqwBi" id="3SnNvqCbxRD" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTAIb" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SnNvqCbxRw" resolve="descriptor" />
                </node>
                <node concept="liA8E" id="3SnNvqCbxRF" role="2OqNvi">
                  <ref role="37wK5l" to="cjdg:~RunContentDescriptor.setAttachedContent(com.intellij.ui.content.Content)" resolve="setAttachedContent" />
                  <node concept="2OqwBi" id="3SnNvqCbxRG" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxgmaeX" role="2Oq$k0">
                      <ref role="3cqZAo" node="3SnNvqCbxRs" resolve="reuseContent" />
                    </node>
                    <node concept="liA8E" id="3SnNvqCbxRI" role="2OqNvi">
                      <ref role="37wK5l" to="cjdg:~RunContentDescriptor.getAttachedContent()" resolve="getAttachedContent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbxRJ" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTviq" role="3cqZAk">
            <ref role="3cqZAo" node="3SnNvqCbxRw" resolve="descriptor" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3SnNvqCbxRL" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsAPX" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsAPY" role="1PaTwD">
            <property role="3oM_SC" value="*" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAPZ" role="1PaTwD">
            <property role="3oM_SC" value="@param" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAQ0" role="1PaTwD">
            <property role="3oM_SC" value="reuseContent" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAQ1" role="1PaTwD">
            <property role="3oM_SC" value="see" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAQ2" role="1PaTwD">
            <property role="3oM_SC" value="{@link" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAQ3" role="1PaTwD">
            <property role="3oM_SC" value="RunContentDescriptor#myContent}" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="3SnNvqCbxLS" role="jymVt">
      <property role="TrG5h" value="MyRunContentDescriptor" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3uibUv" id="3SnNvqCbxLU" role="1zkMxy">
        <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
      </node>
      <node concept="312cEg" id="3SnNvqCbxLV" role="jymVt">
        <property role="TrG5h" value="myReuseProhibited" />
        <property role="34CwA1" value="false" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="3SnNvqCbxLW" role="1tU5fm" />
        <node concept="3Tm6S6" id="3SnNvqCbxLX" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="3SnNvqCbxLY" role="jymVt">
        <property role="TrG5h" value="myAdditionalDisposable" />
        <property role="34CwA1" value="false" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3SnNvqCbxLZ" role="1tU5fm">
          <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
        </node>
        <node concept="3Tm6S6" id="3SnNvqCbxM0" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="3SnNvqCbxM1" role="jymVt">
        <node concept="3Tm1VV" id="3SnNvqCbxM2" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxM3" role="3clF45" />
        <node concept="37vLTG" id="3SnNvqCbxM4" role="3clF46">
          <property role="TrG5h" value="profile" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="3SnNvqCbxM5" role="1tU5fm">
            <ref role="3uigEE" to="dj99:~RunProfile" resolve="RunProfile" />
          </node>
        </node>
        <node concept="37vLTG" id="3SnNvqCbxM6" role="3clF46">
          <property role="TrG5h" value="executionResult" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="3SnNvqCbxM7" role="1tU5fm">
            <ref role="3uigEE" to="3v5a:~ExecutionResult" resolve="ExecutionResult" />
          </node>
        </node>
        <node concept="37vLTG" id="3SnNvqCbxM8" role="3clF46">
          <property role="TrG5h" value="reuseProhibited" />
          <property role="3TUv4t" value="true" />
          <node concept="10P_77" id="3SnNvqCbxM9" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3SnNvqCbxMa" role="3clF46">
          <property role="TrG5h" value="component" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="3SnNvqCbxMb" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="3SnNvqCbxMc" role="3clF46">
          <property role="TrG5h" value="additionalDisposable" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3SnNvqCbxMd" role="1tU5fm">
            <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
          </node>
          <node concept="2AHcQZ" id="3SnNvqCbxSb" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="3SnNvqCbxRO" role="3clF47">
          <node concept="XkiVB" id="3SnNvqCbxRP" role="3cqZAp">
            <ref role="37wK5l" to="cjdg:~RunContentDescriptor.&lt;init&gt;(com.intellij.execution.ui.ExecutionConsole,com.intellij.execution.process.ProcessHandler,javax.swing.JComponent,java.lang.String,javax.swing.Icon)" resolve="RunContentDescriptor" />
            <node concept="2OqwBi" id="3SnNvqCbxRQ" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgm6mr" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxM6" resolve="executionResult" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxRS" role="2OqNvi">
                <ref role="37wK5l" to="3v5a:~ExecutionResult.getExecutionConsole()" resolve="getExecutionConsole" />
              </node>
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxRT" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxglleg" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxM6" resolve="executionResult" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxRV" role="2OqNvi">
                <ref role="37wK5l" to="3v5a:~ExecutionResult.getProcessHandler()" resolve="getProcessHandler" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgm6f3" role="37wK5m">
              <ref role="3cqZAo" node="3SnNvqCbxMa" resolve="component" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxRX" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxghbDH" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxM4" resolve="profile" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxRZ" role="2OqNvi">
                <ref role="37wK5l" to="dj99:~RunProfile.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxS0" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgmLrt" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxM4" resolve="profile" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxS2" role="2OqNvi">
                <ref role="37wK5l" to="dj99:~RunProfile.getIcon()" resolve="getIcon" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3SnNvqCbxS3" role="3cqZAp">
            <node concept="37vLTI" id="3SnNvqCbxS4" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuvJQ" role="37vLTJ">
                <ref role="3cqZAo" node="3SnNvqCbxLV" resolve="myReuseProhibited" />
              </node>
              <node concept="37vLTw" id="2BHiRxgheGm" role="37vLTx">
                <ref role="3cqZAo" node="3SnNvqCbxM8" resolve="reuseProhibited" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3SnNvqCbxS7" role="3cqZAp">
            <node concept="37vLTI" id="3SnNvqCbxS8" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuPFe" role="37vLTJ">
                <ref role="3cqZAo" node="3SnNvqCbxLY" resolve="myAdditionalDisposable" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm6Rn" role="37vLTx">
                <ref role="3cqZAo" node="3SnNvqCbxMc" resolve="additionalDisposable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxMe" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isContentReuseProhibited" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxMf" role="1B3o_S" />
        <node concept="10P_77" id="3SnNvqCbxMg" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxSc" role="3clF47">
          <node concept="3cpWs6" id="3SnNvqCbxSd" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeun3b" role="3cqZAk">
              <ref role="3cqZAo" node="3SnNvqCbxLV" resolve="myReuseProhibited" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_SkOe" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxMh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="dispose" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxMi" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxMj" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxSf" role="3clF47">
          <node concept="3clFbF" id="3SnNvqCbxSg" role="3cqZAp">
            <node concept="2YIFZM" id="3SnNvqCbxSh" role="3clFbG">
              <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
              <ref role="37wK5l" to="zn9m:~Disposer.dispose(com.intellij.openapi.Disposable)" resolve="dispose" />
              <node concept="37vLTw" id="2BHiRxeumPG" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxLY" resolve="myAdditionalDisposable" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2uej7KTiP12" role="3cqZAp">
            <node concept="2YIFZM" id="2uej7KTiP2f" role="3clFbG">
              <ref role="37wK5l" to="ddhc:~DataManager.removeDataProvider(javax.swing.JComponent)" resolve="removeDataProvider" />
              <ref role="1Pybhc" to="ddhc:~DataManager" resolve="DataManager" />
              <node concept="1rXfSq" id="2uej7KTiP3k" role="37wK5m">
                <ref role="37wK5l" to="cjdg:~RunContentDescriptor.getComponent()" resolve="getComponent" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3SnNvqCbxSj" role="3cqZAp">
            <node concept="3nyPlj" id="3SnNvqCbxSk" role="3clFbG">
              <ref role="37wK5l" to="cjdg:~RunContentDescriptor.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_SkOf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxLT" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="3SnNvqCbxSl">
    <property role="TrG5h" value="DebuggerToolPanel" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3SnNvqCbxSm" role="1B3o_S" />
    <node concept="312cEg" id="3SnNvqCbxTw" role="jymVt">
      <property role="TrG5h" value="myDebugSession" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3SnNvqCbxTx" role="1tU5fm">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxTy" role="1B3o_S" />
      <node concept="2AHcQZ" id="5p_z32FSn2Z" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="312cEg" id="3SnNvqCbxTz" role="jymVt">
      <property role="TrG5h" value="myUiState" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3SnNvqCbxT$" role="1tU5fm">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJjE" resolve="AbstractUiState" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxT_" role="1B3o_S" />
      <node concept="2AHcQZ" id="3SnNvqCbxTA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="312cEg" id="3SnNvqCbxTB" role="jymVt">
      <property role="TrG5h" value="myThreadsComboBoxModel" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3SnNvqCbxTC" role="1tU5fm">
        <ref role="3uigEE" node="3SnNvqCbxSG" resolve="DebuggerToolPanel.ThreadsComboBoxModel" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxTD" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SnNvqCbxTE" role="jymVt">
      <property role="TrG5h" value="myStackFramesListModel" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3SnNvqCbxTF" role="1tU5fm">
        <ref role="3uigEE" node="3SnNvqCbxTa" resolve="DebuggerToolPanel.StackFramesListModel" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxTG" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SnNvqCbxTH" role="jymVt">
      <property role="TrG5h" value="myVariablesTree" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3SnNvqCbxTI" role="1tU5fm">
        <ref role="3uigEE" to="choc:3SnNvqCbxfw" resolve="VariablesTree" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxTJ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SnNvqCbxTK" role="jymVt">
      <property role="TrG5h" value="myFramesList" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3SnNvqCbxTL" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JList" resolve="JList" />
      </node>
      <node concept="3Tm6S6" id="3SnNvqCbxTM" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3SnNvqCbxTN" role="jymVt">
      <node concept="3Tm1VV" id="3SnNvqCbxTO" role="1B3o_S" />
      <node concept="3cqZAl" id="3SnNvqCbxTP" role="3clF45" />
      <node concept="3clFbS" id="3SnNvqCbxTW" role="3clF47">
        <node concept="3clFbF" id="3SnNvqCbxTX" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxTY" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeustv" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
            </node>
            <node concept="37vLTw" id="2BHiRxgliUQ" role="37vLTx">
              <ref role="3cqZAo" node="5p_z32FSnrs" resolve="session" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxU5" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxU6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuHtG" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxU8" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxeuW0t" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxUa" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxUb" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxUc" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoff" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxUe" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaKbx" resolve="addChangeListener" />
              <node concept="2ShNRf" id="3SnNvqCbxUf" role="37wK5m">
                <node concept="1pGfFk" id="3SnNvqCbxUg" role="2ShVmc">
                  <ref role="37wK5l" node="3SnNvqCbxSq" resolve="DebuggerToolPanel.MySessionChangeListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxUh" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxUi" role="3clFbG">
            <node concept="2OqwBi" id="3SnNvqCbxUj" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm86A" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTU" resolve="ui" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxUl" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.getDefaults()" resolve="getDefaults" />
              </node>
            </node>
            <node concept="liA8E" id="3SnNvqCbxUm" role="2OqNvi">
              <ref role="37wK5l" to="hs1w:~LayoutStateDefaults.initTabDefaults(int,java.lang.String,javax.swing.Icon)" resolve="initTabDefaults" />
              <node concept="3cmrfG" id="3SnNvqCbxUn" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="Xl_RD" id="3SnNvqCbxUo" role="37wK5m">
                <property role="Xl_RC" value="Debugger" />
              </node>
              <node concept="10Nm6u" id="3SnNvqCbxUp" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxUq" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxUr" role="3cpWs9">
            <property role="TrG5h" value="framesPanel" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxUs" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="3SnNvqCbxUt" role="33vP2m">
              <node concept="1pGfFk" id="3SnNvqCbxUu" role="2ShVmc">
                <ref role="37wK5l" node="22CzinattPk" resolve="DebuggerToolPanel.DebuggerPanel" />
                <node concept="2ShNRf" id="3SnNvqCbxUv" role="37wK5m">
                  <node concept="1pGfFk" id="3SnNvqCbxUw" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxUx" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxUy" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTzQp" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxUr" resolve="framesPanel" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxU$" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="1rXfSq" id="4hiugqyz9s6" role="37wK5m">
                <ref role="37wK5l" node="3SnNvqCbxWz" resolve="createThreadsComponent" />
              </node>
              <node concept="10M0yZ" id="3SnNvqCbxUA" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxUB" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxUC" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT_CB" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxUr" resolve="framesPanel" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxUE" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="1rXfSq" id="4hiugqyzhtJ" role="37wK5m">
                <ref role="37wK5l" node="3SnNvqCbxXc" resolve="createStackFrameComponent" />
              </node>
              <node concept="10M0yZ" id="3SnNvqCbxUG" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxUH" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxUI" role="3cpWs9">
            <property role="TrG5h" value="framesContent" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxUJ" role="1tU5fm">
              <ref role="3uigEE" to="v7ux:~Content" resolve="Content" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxUK" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgh9Vw" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTU" resolve="ui" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxUM" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.createContent(java.lang.String,javax.swing.JComponent,java.lang.String,javax.swing.Icon,javax.swing.JComponent)" resolve="createContent" />
                <node concept="10M0yZ" id="3SnNvqCbxUN" role="37wK5m">
                  <ref role="1PxDUh" node="3SnNvqCbxom" resolve="DebuggerToolContent" />
                  <ref role="3cqZAo" node="3SnNvqCbxoo" resolve="FRAMES" />
                </node>
                <node concept="37vLTw" id="3GM_nagTB2A" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxUr" resolve="framesPanel" />
                </node>
                <node concept="Xl_RD" id="3SnNvqCbxUP" role="37wK5m">
                  <property role="Xl_RC" value="Frames" />
                </node>
                <node concept="10M0yZ" id="3SnNvqCbxUQ" role="37wK5m">
                  <ref role="1PxDUh" to="ljcu:3SnNvqCbxaL" resolve="Icons" />
                  <ref role="3cqZAo" to="ljcu:3SnNvqCbxIN" resolve="FRAMES" />
                </node>
                <node concept="10Nm6u" id="3SnNvqCbxUR" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxUS" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxUT" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT_nl" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxUI" resolve="framesContent" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxUV" role="2OqNvi">
              <ref role="37wK5l" to="v7ux:~Content.setCloseable(boolean)" resolve="setCloseable" />
              <node concept="3clFbT" id="3SnNvqCbxUW" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxUX" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxUY" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm7X1" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxTU" resolve="ui" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxV0" role="2OqNvi">
              <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.addContent(com.intellij.ui.content.Content,int,com.intellij.execution.ui.layout.PlaceInGrid,boolean)" resolve="addContent" />
              <node concept="37vLTw" id="3GM_nagTzIZ" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxUI" resolve="framesContent" />
              </node>
              <node concept="3cmrfG" id="3SnNvqCbxV2" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="Rm8GO" id="3SnNvqCbxV3" role="37wK5m">
                <ref role="1Px2BO" to="hs1w:~PlaceInGrid" resolve="PlaceInGrid" />
                <ref role="Rm8GQ" to="hs1w:~PlaceInGrid.left" resolve="left" />
              </node>
              <node concept="3clFbT" id="3SnNvqCbxV4" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxV5" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxV6" role="3cpWs9">
            <property role="TrG5h" value="variablesPanel" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxV7" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="1rXfSq" id="4hiugqyzk7F" role="33vP2m">
              <ref role="37wK5l" node="3SnNvqCbxWg" resolve="createVariablesPanel" />
              <node concept="37vLTw" id="2BHiRxgheVl" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxTQ" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxVa" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxVb" role="3cpWs9">
            <property role="TrG5h" value="variablesContent" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxVc" role="1tU5fm">
              <ref role="3uigEE" to="v7ux:~Content" resolve="Content" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxVd" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmavQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTU" resolve="ui" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxVf" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.createContent(java.lang.String,javax.swing.JComponent,java.lang.String,javax.swing.Icon,javax.swing.JComponent)" resolve="createContent" />
                <node concept="10M0yZ" id="3SnNvqCbxVg" role="37wK5m">
                  <ref role="1PxDUh" node="3SnNvqCbxom" resolve="DebuggerToolContent" />
                  <ref role="3cqZAo" node="3SnNvqCbxos" resolve="VARIABLES" />
                </node>
                <node concept="37vLTw" id="3GM_nagTyeN" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxV6" resolve="variablesPanel" />
                </node>
                <node concept="Xl_RD" id="3SnNvqCbxVi" role="37wK5m">
                  <property role="Xl_RC" value="Variables" />
                </node>
                <node concept="10M0yZ" id="3SnNvqCbxVj" role="37wK5m">
                  <ref role="1PxDUh" to="ljcu:3SnNvqCbxaL" resolve="Icons" />
                  <ref role="3cqZAo" to="ljcu:3SnNvqCbxIW" resolve="VARIABLES" />
                </node>
                <node concept="10Nm6u" id="3SnNvqCbxVk" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxVl" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxVm" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTufQ" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxVb" resolve="variablesContent" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxVo" role="2OqNvi">
              <ref role="37wK5l" to="v7ux:~Content.setCloseable(boolean)" resolve="setCloseable" />
              <node concept="3clFbT" id="3SnNvqCbxVp" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxVq" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxVr" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm9Lm" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxTU" resolve="ui" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxVt" role="2OqNvi">
              <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.addContent(com.intellij.ui.content.Content,int,com.intellij.execution.ui.layout.PlaceInGrid,boolean)" resolve="addContent" />
              <node concept="37vLTw" id="3GM_nagTwE_" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxVb" resolve="variablesContent" />
              </node>
              <node concept="3cmrfG" id="3SnNvqCbxVv" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="Rm8GO" id="3SnNvqCbxVw" role="37wK5m">
                <ref role="1Px2BO" to="hs1w:~PlaceInGrid" resolve="PlaceInGrid" />
                <ref role="Rm8GQ" to="hs1w:~PlaceInGrid.center" resolve="center" />
              </node>
              <node concept="3clFbT" id="3SnNvqCbxVx" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxVy" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxVz" role="3cpWs9">
            <property role="TrG5h" value="evaluationProvider" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbxV$" role="1tU5fm">
              <ref role="3uigEE" to="lt1n:3SnNvqCaJu1" resolve="IEvaluationProvider" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbxV_" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuIxZ" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxVB" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaKcv" resolve="getEvaluationProvider" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3SnNvqCbxVC" role="3cqZAp">
          <node concept="3y3z36" id="3SnNvqCbxVD" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTt43" role="3uHU7B">
              <ref role="3cqZAo" node="3SnNvqCbxVz" resolve="evaluationProvider" />
            </node>
            <node concept="10Nm6u" id="3SnNvqCbxVF" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3SnNvqCbxVG" role="3clFbx">
            <node concept="3cpWs8" id="3SnNvqCbxVH" role="3cqZAp">
              <node concept="3cpWsn" id="3SnNvqCbxVI" role="3cpWs9">
                <property role="TrG5h" value="watches" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="3SnNvqCbxVJ" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                </node>
                <node concept="2OqwBi" id="3SnNvqCbxVK" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTvGU" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxVz" resolve="evaluationProvider" />
                  </node>
                  <node concept="liA8E" id="3SnNvqCbxVM" role="2OqNvi">
                    <ref role="37wK5l" to="lt1n:3SnNvqCaJui" resolve="createWatchesPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3SnNvqCbxVN" role="3cqZAp">
              <node concept="3y3z36" id="3SnNvqCbxVO" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTrc1" role="3uHU7B">
                  <ref role="3cqZAo" node="3SnNvqCbxVI" resolve="watches" />
                </node>
                <node concept="10Nm6u" id="3SnNvqCbxVQ" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="3SnNvqCbxVR" role="3clFbx">
                <node concept="3cpWs8" id="3SnNvqCbxVS" role="3cqZAp">
                  <node concept="3cpWsn" id="3SnNvqCbxVT" role="3cpWs9">
                    <property role="TrG5h" value="watchesContent" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3uibUv" id="3SnNvqCbxVU" role="1tU5fm">
                      <ref role="3uigEE" to="v7ux:~Content" resolve="Content" />
                    </node>
                    <node concept="2OqwBi" id="3SnNvqCbxVV" role="33vP2m">
                      <node concept="37vLTw" id="2BHiRxghf9C" role="2Oq$k0">
                        <ref role="3cqZAo" node="3SnNvqCbxTU" resolve="ui" />
                      </node>
                      <node concept="liA8E" id="3SnNvqCbxVX" role="2OqNvi">
                        <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.createContent(java.lang.String,javax.swing.JComponent,java.lang.String,javax.swing.Icon,javax.swing.JComponent)" resolve="createContent" />
                        <node concept="10M0yZ" id="3SnNvqCbxVY" role="37wK5m">
                          <ref role="1PxDUh" node="3SnNvqCbxom" resolve="DebuggerToolContent" />
                          <ref role="3cqZAo" node="3SnNvqCbxow" resolve="WATCHES" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagT$AS" role="37wK5m">
                          <ref role="3cqZAo" node="3SnNvqCbxVI" resolve="watches" />
                        </node>
                        <node concept="Xl_RD" id="3SnNvqCbxW0" role="37wK5m">
                          <property role="Xl_RC" value="Watches" />
                        </node>
                        <node concept="10M0yZ" id="3SnNvqCbxW1" role="37wK5m">
                          <ref role="1PxDUh" to="ljcu:3SnNvqCbxaL" resolve="Icons" />
                          <ref role="3cqZAo" to="ljcu:3SnNvqCbxJ5" resolve="WATCHES" />
                        </node>
                        <node concept="10Nm6u" id="3SnNvqCbxW2" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3SnNvqCbxW3" role="3cqZAp">
                  <node concept="2OqwBi" id="3SnNvqCbxW4" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT$9J" role="2Oq$k0">
                      <ref role="3cqZAo" node="3SnNvqCbxVT" resolve="watchesContent" />
                    </node>
                    <node concept="liA8E" id="3SnNvqCbxW6" role="2OqNvi">
                      <ref role="37wK5l" to="v7ux:~Content.setCloseable(boolean)" resolve="setCloseable" />
                      <node concept="3clFbT" id="3SnNvqCbxW7" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3SnNvqCbxW8" role="3cqZAp">
                  <node concept="2OqwBi" id="3SnNvqCbxW9" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgm0d5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3SnNvqCbxTU" resolve="ui" />
                    </node>
                    <node concept="liA8E" id="3SnNvqCbxWb" role="2OqNvi">
                      <ref role="37wK5l" to="cjdg:~RunnerLayoutUi.addContent(com.intellij.ui.content.Content,int,com.intellij.execution.ui.layout.PlaceInGrid,boolean)" resolve="addContent" />
                      <node concept="37vLTw" id="3GM_nagTxbc" role="37wK5m">
                        <ref role="3cqZAo" node="3SnNvqCbxVT" resolve="watchesContent" />
                      </node>
                      <node concept="3cmrfG" id="3SnNvqCbxWd" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="Rm8GO" id="3SnNvqCbxWe" role="37wK5m">
                        <ref role="1Px2BO" to="hs1w:~PlaceInGrid" resolve="PlaceInGrid" />
                        <ref role="Rm8GQ" to="hs1w:~PlaceInGrid.right" resolve="right" />
                      </node>
                      <node concept="3clFbT" id="3SnNvqCbxWf" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxTQ" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxTR" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="5p_z32FSn2l" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5p_z32FSnrs" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="5p_z32FSnru" role="1tU5fm">
          <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
        </node>
        <node concept="2AHcQZ" id="5p_z32FSnrv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbxTU" role="3clF46">
        <property role="TrG5h" value="ui" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxTV" role="1tU5fm">
          <ref role="3uigEE" to="cjdg:~RunnerLayoutUi" resolve="RunnerLayoutUi" />
        </node>
        <node concept="2AHcQZ" id="5p_z32FSn2w" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="22Czinat4vn" role="jymVt" />
    <node concept="312cEu" id="22CzinatasD" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="DebuggerPanel" />
      <node concept="2tJIrI" id="22CzinattMV" role="jymVt" />
      <node concept="3Tm1VV" id="22CzinatasE" role="1B3o_S" />
      <node concept="3uibUv" id="22CzinatgLD" role="1zkMxy">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
      <node concept="3uibUv" id="7uTsLnwnOIz" role="EKbjA">
        <ref role="3uigEE" to="qkt:~UiDataProvider" resolve="UiDataProvider" />
      </node>
      <node concept="3clFbW" id="22CzinattPk" role="jymVt">
        <node concept="3cqZAl" id="22CzinattPl" role="3clF45" />
        <node concept="3Tm1VV" id="22CzinattPm" role="1B3o_S" />
        <node concept="3clFbS" id="22CzinattPo" role="3clF47">
          <node concept="XkiVB" id="22CzinattPq" role="3cqZAp">
            <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
            <node concept="37vLTw" id="22CzinattPu" role="37wK5m">
              <ref role="3cqZAo" node="22CzinattPr" resolve="p0" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="22CzinattPr" role="3clF46">
          <property role="TrG5h" value="p0" />
          <node concept="3uibUv" id="22CzinattPt" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~LayoutManager" resolve="LayoutManager" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7prwjTzu5eg" role="jymVt">
        <property role="TrG5h" value="uiDataSnapshot" />
        <node concept="3Tm1VV" id="7prwjTzu5eh" role="1B3o_S" />
        <node concept="2AHcQZ" id="7prwjTzu5ej" role="2AJF6D">
          <ref role="2AI5Lk" to="tljb:~RequiresEdt" resolve="RequiresEdt" />
        </node>
        <node concept="3cqZAl" id="7prwjTzu5ek" role="3clF45" />
        <node concept="37vLTG" id="7prwjTzu5el" role="3clF46">
          <property role="TrG5h" value="sink" />
          <node concept="3uibUv" id="7prwjTzu5em" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~DataSink" resolve="DataSink" />
          </node>
          <node concept="2AHcQZ" id="7prwjTzu5en" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="7prwjTzu5eq" role="3clF47">
          <node concept="3clFbF" id="7uTsLnwnQo0" role="3cqZAp">
            <node concept="2OqwBi" id="7uTsLnwnQo1" role="3clFbG">
              <node concept="37vLTw" id="7uTsLnwnQo2" role="2Oq$k0">
                <ref role="3cqZAo" node="7prwjTzu5el" resolve="sink" />
              </node>
              <node concept="liA8E" id="7uTsLnwnQo3" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataSink.set(com.intellij.openapi.actionSystem.DataKey,java.lang.Object)" resolve="set" />
                <node concept="10M0yZ" id="7uTsLnwnQQR" role="37wK5m">
                  <ref role="1PxDUh" to="qkt:~PlatformDataKeys" resolve="PlatformDataKeys" />
                  <ref role="3cqZAo" to="qkt:~PlatformCoreDataKeys.HELP_ID" resolve="HELP_ID" />
                </node>
                <node concept="Xl_RD" id="7uTsLnwnRKC" role="37wK5m">
                  <property role="Xl_RC" value="debugging.DebugWindow" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7prwjTzu5er" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="22CzinathsF" role="jymVt" />
    <node concept="3clFb_" id="3SnNvqCbxWg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createVariablesPanel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxWh" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxWi" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="37vLTG" id="3SnNvqCbxWj" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbxWk" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="3SnNvqCbxWl" role="3clF47">
        <node concept="3clFbF" id="3SnNvqCbxWm" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxWn" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeustl" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxTH" resolve="myVariablesTree" />
            </node>
            <node concept="2ShNRf" id="3SnNvqCbxWp" role="37vLTx">
              <node concept="1pGfFk" id="3SnNvqCbxWq" role="2ShVmc">
                <ref role="37wK5l" to="choc:3SnNvqCbxfM" resolve="VariablesTree" />
                <node concept="37vLTw" id="2BHiRxgm8ig" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxWj" resolve="project" />
                </node>
                <node concept="2OqwBi" id="3SnNvqCbxWs" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeuW47" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
                  </node>
                  <node concept="liA8E" id="3SnNvqCbxWu" role="2OqNvi">
                    <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbxWv" role="3cqZAp">
          <node concept="2ShNRf" id="3SnNvqCbxWw" role="3cqZAk">
            <node concept="1pGfFk" id="3SnNvqCbxWx" role="2ShVmc">
              <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JBScrollPane" />
              <node concept="37vLTw" id="2BHiRxeuTtl" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxTH" resolve="myVariablesTree" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxWz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createThreadsComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxW$" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxW_" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="3SnNvqCbxWA" role="3clF47">
        <node concept="3clFbF" id="3SnNvqCbxWB" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxWC" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeul8i" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxTB" resolve="myThreadsComboBoxModel" />
            </node>
            <node concept="2ShNRf" id="3SnNvqCbxWE" role="37vLTx">
              <node concept="1pGfFk" id="3SnNvqCbxWF" role="2ShVmc">
                <ref role="37wK5l" node="3SnNvqCbxSK" resolve="DebuggerToolPanel.ThreadsComboBoxModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbxWG" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbxWH" role="3cpWs9">
            <property role="TrG5h" value="threadsComboBox" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="43Bo99sRo3$" role="1tU5fm">
              <ref role="3uigEE" to="jkm4:~ComboBox" resolve="ComboBox" />
            </node>
            <node concept="2ShNRf" id="3SnNvqCbxWJ" role="33vP2m">
              <node concept="1pGfFk" id="3SnNvqCbxWK" role="2ShVmc">
                <ref role="37wK5l" to="jkm4:~ComboBox.&lt;init&gt;(javax.swing.ComboBoxModel)" resolve="ComboBox" />
                <node concept="37vLTw" id="2BHiRxeuNUB" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxTB" resolve="myThreadsComboBoxModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxWM" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxWN" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTrKb" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxWH" resolve="threadsComboBox" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxWP" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~ComboBoxWithWidePopup.setRenderer(javax.swing.ListCellRenderer)" resolve="setRenderer" />
              <node concept="2ShNRf" id="3SnNvqCbxWQ" role="37wK5m">
                <node concept="YeOm9" id="3SnNvqCbxWR" role="2ShVmc">
                  <node concept="1Y3b0j" id="3SnNvqCbxWS" role="YeSDq">
                    <property role="TrG5h" value="" />
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="lzb2:~ListCellRendererWrapper" resolve="ListCellRendererWrapper" />
                    <ref role="37wK5l" to="lzb2:~ListCellRendererWrapper.&lt;init&gt;()" resolve="ListCellRendererWrapper" />
                    <node concept="3uibUv" id="3SnNvqCbxWT" role="2Ghqu4">
                      <ref role="3uigEE" to="pry4:3SnNvqCaJfr" resolve="IThread" />
                    </node>
                    <node concept="3clFb_" id="3SnNvqCbxWU" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="customize" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="3SnNvqCbxWV" role="1B3o_S" />
                      <node concept="3cqZAl" id="3SnNvqCbxWW" role="3clF45" />
                      <node concept="37vLTG" id="3SnNvqCbxWX" role="3clF46">
                        <property role="TrG5h" value="list" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="3SnNvqCbxWY" role="1tU5fm">
                          <ref role="3uigEE" to="dxuu:~JList" resolve="JList" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxWZ" role="3clF46">
                        <property role="TrG5h" value="value" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="3SnNvqCbxX0" role="1tU5fm">
                          <ref role="3uigEE" to="pry4:3SnNvqCaJfr" resolve="IThread" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxX1" role="3clF46">
                        <property role="TrG5h" value="index" />
                        <property role="3TUv4t" value="false" />
                        <node concept="10Oyi0" id="3SnNvqCbxX2" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxX3" role="3clF46">
                        <property role="TrG5h" value="selected" />
                        <property role="3TUv4t" value="false" />
                        <node concept="10P_77" id="3SnNvqCbxX4" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxX5" role="3clF46">
                        <property role="TrG5h" value="hasFocus" />
                        <property role="3TUv4t" value="false" />
                        <node concept="10P_77" id="3SnNvqCbxX6" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3SnNvqCby03" role="3clF47">
                        <node concept="3clFbJ" id="3SnNvqCby04" role="3cqZAp">
                          <node concept="3y3z36" id="3SnNvqCby05" role="3clFbw">
                            <node concept="37vLTw" id="2BHiRxgkWxc" role="3uHU7B">
                              <ref role="3cqZAo" node="3SnNvqCbxWZ" resolve="value" />
                            </node>
                            <node concept="10Nm6u" id="3SnNvqCby07" role="3uHU7w" />
                          </node>
                          <node concept="3clFbS" id="3SnNvqCby08" role="3clFbx">
                            <node concept="3clFbF" id="3SnNvqCby09" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyzkab" role="3clFbG">
                                <ref role="37wK5l" to="lzb2:~ListCellRendererWrapper.setText(java.lang.String)" resolve="setText" />
                                <node concept="2OqwBi" id="3SnNvqCby0b" role="37wK5m">
                                  <node concept="37vLTw" id="2BHiRxglLop" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3SnNvqCbxWZ" resolve="value" />
                                  </node>
                                  <node concept="liA8E" id="3SnNvqCby0d" role="2OqNvi">
                                    <ref role="37wK5l" to="pry4:3SnNvqCaJfE" resolve="getPresentation" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3SnNvqCby0e" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyz4j_" role="3clFbG">
                                <ref role="37wK5l" to="lzb2:~ListCellRendererWrapper.setIcon(javax.swing.Icon)" resolve="setIcon" />
                                <node concept="2OqwBi" id="3SnNvqCby0g" role="37wK5m">
                                  <node concept="37vLTw" id="2BHiRxgma$T" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3SnNvqCbxWZ" resolve="value" />
                                  </node>
                                  <node concept="liA8E" id="3SnNvqCby0i" role="2OqNvi">
                                    <ref role="37wK5l" to="pry4:3SnNvqCaJfI" resolve="getPresentationIcon" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3SnNvqCby0j" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbxXa" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTtoW" role="3cqZAk">
            <ref role="3cqZAo" node="3SnNvqCbxWH" resolve="threadsComboBox" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxXc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createStackFrameComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxXd" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxXe" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="3SnNvqCbxXf" role="3clF47">
        <node concept="3clFbF" id="3SnNvqCbxXg" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxXh" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuRPt" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxTE" resolve="myStackFramesListModel" />
            </node>
            <node concept="2ShNRf" id="3SnNvqCbxXj" role="37vLTx">
              <node concept="1pGfFk" id="3SnNvqCbxXk" role="2ShVmc">
                <ref role="37wK5l" node="3SnNvqCbxTd" resolve="DebuggerToolPanel.StackFramesListModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxXl" role="3cqZAp">
          <node concept="37vLTI" id="3SnNvqCbxXm" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTz3" role="37vLTJ">
              <ref role="3cqZAo" node="3SnNvqCbxTK" resolve="myFramesList" />
            </node>
            <node concept="2ShNRf" id="3SnNvqCbxXo" role="37vLTx">
              <node concept="1pGfFk" id="3SnNvqCbxXp" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBList.&lt;init&gt;(javax.swing.ListModel)" resolve="JBList" />
                <node concept="37vLTw" id="2BHiRxeuogl" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxTE" resolve="myStackFramesListModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxXr" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxXs" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwvw" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxTK" resolve="myFramesList" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxXu" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JList.addListSelectionListener(javax.swing.event.ListSelectionListener)" resolve="addListSelectionListener" />
              <node concept="2ShNRf" id="3SnNvqCbxXv" role="37wK5m">
                <node concept="YeOm9" id="3SnNvqCbxXw" role="2ShVmc">
                  <node concept="1Y3b0j" id="3SnNvqCbxXx" role="YeSDq">
                    <property role="TrG5h" value="" />
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="gsia:~ListSelectionListener" resolve="ListSelectionListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3clFb_" id="3SnNvqCbxXy" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="valueChanged" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="3SnNvqCbxXz" role="1B3o_S" />
                      <node concept="3cqZAl" id="3SnNvqCbxX$" role="3clF45" />
                      <node concept="37vLTG" id="3SnNvqCbxX_" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="3SnNvqCbxXA" role="1tU5fm">
                          <ref role="3uigEE" to="gsia:~ListSelectionEvent" resolve="ListSelectionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3SnNvqCby0k" role="3clF47">
                        <node concept="3clFbJ" id="3SnNvqCby0l" role="3cqZAp">
                          <node concept="3fqX7Q" id="3SnNvqCby0m" role="3clFbw">
                            <node concept="2OqwBi" id="3SnNvqCby0n" role="3fr31v">
                              <node concept="37vLTw" id="2BHiRxgm6T5" role="2Oq$k0">
                                <ref role="3cqZAo" node="3SnNvqCbxX_" resolve="e" />
                              </node>
                              <node concept="liA8E" id="3SnNvqCby0p" role="2OqNvi">
                                <ref role="37wK5l" to="gsia:~ListSelectionEvent.getValueIsAdjusting()" resolve="getValueIsAdjusting" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3SnNvqCby0q" role="3clFbx">
                            <node concept="3clFbF" id="3SnNvqCby0r" role="3cqZAp">
                              <node concept="2OqwBi" id="3SnNvqCby0s" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxeuSte" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3SnNvqCbxTE" resolve="myStackFramesListModel" />
                                </node>
                                <node concept="liA8E" id="3SnNvqCby0u" role="2OqNvi">
                                  <ref role="37wK5l" node="3SnNvqCbxTr" resolve="selected" />
                                  <node concept="2OqwBi" id="3SnNvqCby0v" role="37wK5m">
                                    <node concept="37vLTw" id="2BHiRxeunmh" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3SnNvqCbxTK" resolve="myFramesList" />
                                    </node>
                                    <node concept="liA8E" id="3SnNvqCby0x" role="2OqNvi">
                                      <ref role="37wK5l" to="dxuu:~JList.getSelectedIndex()" resolve="getSelectedIndex" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3SnNvqCby0y" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxXB" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxXC" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeusoH" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxTK" resolve="myFramesList" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxXE" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JList.setSelectionMode(int)" resolve="setSelectionMode" />
              <node concept="10M0yZ" id="3SnNvqCbxXF" role="37wK5m">
                <ref role="1PxDUh" to="dxuu:~ListSelectionModel" resolve="ListSelectionModel" />
                <ref role="3cqZAo" to="dxuu:~ListSelectionModel.SINGLE_SELECTION" resolve="SINGLE_SELECTION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbxXG" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxXH" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeugd1" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbxTK" resolve="myFramesList" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxXJ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JList.setCellRenderer(javax.swing.ListCellRenderer)" resolve="setCellRenderer" />
              <node concept="2ShNRf" id="3SnNvqCbxXK" role="37wK5m">
                <node concept="YeOm9" id="3SnNvqCbxXL" role="2ShVmc">
                  <node concept="1Y3b0j" id="3SnNvqCbxXM" role="YeSDq">
                    <property role="TrG5h" value="" />
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="dxuu:~DefaultListCellRenderer" resolve="DefaultListCellRenderer" />
                    <ref role="37wK5l" to="dxuu:~DefaultListCellRenderer.&lt;init&gt;()" resolve="DefaultListCellRenderer" />
                    <node concept="3clFb_" id="3SnNvqCbxXN" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getListCellRendererComponent" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="3SnNvqCbxXO" role="1B3o_S" />
                      <node concept="3uibUv" id="3SnNvqCbxXP" role="3clF45">
                        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxXQ" role="3clF46">
                        <property role="TrG5h" value="list" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="3SnNvqCbxXR" role="1tU5fm">
                          <ref role="3uigEE" to="dxuu:~JList" resolve="JList" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxXS" role="3clF46">
                        <property role="TrG5h" value="value" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="3SnNvqCbxXT" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxXU" role="3clF46">
                        <property role="TrG5h" value="index" />
                        <property role="3TUv4t" value="false" />
                        <node concept="10Oyi0" id="3SnNvqCbxXV" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxXW" role="3clF46">
                        <property role="TrG5h" value="isSelected" />
                        <property role="3TUv4t" value="false" />
                        <node concept="10P_77" id="3SnNvqCbxXX" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="3SnNvqCbxXY" role="3clF46">
                        <property role="TrG5h" value="cellHasFocus" />
                        <property role="3TUv4t" value="false" />
                        <node concept="10P_77" id="3SnNvqCbxXZ" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3SnNvqCby0z" role="3clF47">
                        <node concept="3cpWs8" id="3SnNvqCby0$" role="3cqZAp">
                          <node concept="3cpWsn" id="3SnNvqCby0_" role="3cpWs9">
                            <property role="TrG5h" value="defaultComponent" />
                            <property role="3TUv4t" value="false" />
                            <node concept="3uibUv" id="3SnNvqCby0A" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                            </node>
                            <node concept="3nyPlj" id="3SnNvqCby0B" role="33vP2m">
                              <ref role="37wK5l" to="dxuu:~DefaultListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean)" resolve="getListCellRendererComponent" />
                              <node concept="37vLTw" id="2BHiRxglyKO" role="37wK5m">
                                <ref role="3cqZAo" node="3SnNvqCbxXQ" resolve="list" />
                              </node>
                              <node concept="37vLTw" id="2BHiRxgm8Zp" role="37wK5m">
                                <ref role="3cqZAo" node="3SnNvqCbxXS" resolve="value" />
                              </node>
                              <node concept="37vLTw" id="2BHiRxgll5P" role="37wK5m">
                                <ref role="3cqZAo" node="3SnNvqCbxXU" resolve="index" />
                              </node>
                              <node concept="37vLTw" id="2BHiRxgheIz" role="37wK5m">
                                <ref role="3cqZAo" node="3SnNvqCbxXW" resolve="isSelected" />
                              </node>
                              <node concept="37vLTw" id="2BHiRxghiL9" role="37wK5m">
                                <ref role="3cqZAo" node="3SnNvqCbxXY" resolve="cellHasFocus" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3SnNvqCby0H" role="3cqZAp">
                          <node concept="3y3z36" id="3SnNvqCby0I" role="3clFbw">
                            <node concept="37vLTw" id="2BHiRxgm6U6" role="3uHU7B">
                              <ref role="3cqZAo" node="3SnNvqCbxXS" resolve="value" />
                            </node>
                            <node concept="10Nm6u" id="3SnNvqCby0K" role="3uHU7w" />
                          </node>
                          <node concept="3clFbS" id="3SnNvqCby0L" role="3clFbx">
                            <node concept="3cpWs8" id="3SnNvqCby0M" role="3cqZAp">
                              <node concept="3cpWsn" id="3SnNvqCby0N" role="3cpWs9">
                                <property role="TrG5h" value="frame" />
                                <property role="3TUv4t" value="false" />
                                <node concept="3uibUv" id="3SnNvqCby0O" role="1tU5fm">
                                  <ref role="3uigEE" to="pry4:3SnNvqCaJt9" resolve="IStackFrame" />
                                </node>
                                <node concept="10QFUN" id="3SnNvqCby0P" role="33vP2m">
                                  <node concept="37vLTw" id="2BHiRxghfZJ" role="10QFUP">
                                    <ref role="3cqZAo" node="3SnNvqCbxXS" resolve="value" />
                                  </node>
                                  <node concept="3uibUv" id="3SnNvqCby0R" role="10QFUM">
                                    <ref role="3uigEE" to="pry4:3SnNvqCaJt9" resolve="IStackFrame" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="3SnNvqCby0S" role="3cqZAp">
                              <node concept="3cpWsn" id="3SnNvqCby0T" role="3cpWs9">
                                <property role="TrG5h" value="location" />
                                <property role="3TUv4t" value="false" />
                                <node concept="3uibUv" id="3SnNvqCby0U" role="1tU5fm">
                                  <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
                                </node>
                                <node concept="2OqwBi" id="3SnNvqCby0V" role="33vP2m">
                                  <node concept="37vLTw" id="3GM_nagT$Rn" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3SnNvqCby0N" resolve="frame" />
                                  </node>
                                  <node concept="liA8E" id="3SnNvqCby0X" role="2OqNvi">
                                    <ref role="37wK5l" to="pry4:3SnNvqCaJtb" resolve="getLocation" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="3SnNvqCby0Y" role="3cqZAp">
                              <node concept="3cpWsn" id="3SnNvqCby0Z" role="3cpWs9">
                                <property role="TrG5h" value="framePresentation" />
                                <property role="3TUv4t" value="false" />
                                <node concept="17QB3L" id="1S2xql_3x4T" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="3clFbJ" id="3SnNvqCby11" role="3cqZAp">
                              <node concept="2ZW3vV" id="3SnNvqCby12" role="3clFbw">
                                <node concept="37vLTw" id="3GM_nagTrc4" role="2ZW6bz">
                                  <ref role="3cqZAo" node="3SnNvqCby0T" resolve="location" />
                                </node>
                                <node concept="3uibUv" id="3SnNvqCby14" role="2ZW6by">
                                  <ref role="3uigEE" to="pry4:3SnNvqCaJh3" resolve="NullLocation" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="3SnNvqCby15" role="9aQIa">
                                <node concept="3clFbS" id="3SnNvqCby16" role="9aQI4">
                                  <node concept="3cpWs8" id="3SnNvqCby17" role="3cqZAp">
                                    <node concept="3cpWsn" id="3SnNvqCby18" role="3cpWs9">
                                      <property role="TrG5h" value="typename" />
                                      <property role="3TUv4t" value="false" />
                                      <node concept="17QB3L" id="1S2xql_3x4U" role="1tU5fm" />
                                      <node concept="2OqwBi" id="3SnNvqCby1a" role="33vP2m">
                                        <node concept="37vLTw" id="3GM_nagTtMP" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3SnNvqCby0T" resolve="location" />
                                        </node>
                                        <node concept="liA8E" id="3SnNvqCby1c" role="2OqNvi">
                                          <ref role="37wK5l" to="pry4:3SnNvqCaJtE" resolve="getUnitName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="3SnNvqCby1d" role="3cqZAp">
                                    <node concept="3cpWsn" id="3SnNvqCby1e" role="3cpWs9">
                                      <property role="TrG5h" value="lastDot" />
                                      <property role="3TUv4t" value="false" />
                                      <node concept="10Oyi0" id="3SnNvqCby1f" role="1tU5fm" />
                                      <node concept="2OqwBi" id="3SnNvqCby1g" role="33vP2m">
                                        <node concept="37vLTw" id="3GM_nagTr5O" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3SnNvqCby18" resolve="typename" />
                                        </node>
                                        <node concept="liA8E" id="3SnNvqCby1i" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                                          <node concept="Xl_RD" id="3SnNvqCby1j" role="37wK5m">
                                            <property role="Xl_RC" value="." />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="3SnNvqCby1k" role="3cqZAp">
                                    <node concept="3cpWsn" id="3SnNvqCby1l" role="3cpWs9">
                                      <property role="TrG5h" value="className" />
                                      <property role="3TUv4t" value="false" />
                                      <node concept="17QB3L" id="1S2xql_3x4W" role="1tU5fm" />
                                      <node concept="2OqwBi" id="3SnNvqCby1n" role="33vP2m">
                                        <node concept="37vLTw" id="3GM_nagTzVD" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3SnNvqCby18" resolve="typename" />
                                        </node>
                                        <node concept="liA8E" id="3SnNvqCby1p" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                          <node concept="3cpWs3" id="3SnNvqCby1q" role="37wK5m">
                                            <node concept="37vLTw" id="3GM_nagTx9r" role="3uHU7B">
                                              <ref role="3cqZAo" node="3SnNvqCby1e" resolve="lastDot" />
                                            </node>
                                            <node concept="3cmrfG" id="3SnNvqCby1s" role="3uHU7w">
                                              <property role="3cmrfH" value="1" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="3SnNvqCby1t" role="3cqZAp">
                                    <node concept="3cpWsn" id="3SnNvqCby1u" role="3cpWs9">
                                      <property role="TrG5h" value="pckgName" />
                                      <property role="3TUv4t" value="false" />
                                      <node concept="17QB3L" id="1S2xql_3x4X" role="1tU5fm" />
                                      <node concept="3K4zz7" id="3SnNvqCby1w" role="33vP2m">
                                        <node concept="3eOSWO" id="3SnNvqCby1x" role="3K4Cdx">
                                          <node concept="37vLTw" id="3GM_nagTApS" role="3uHU7B">
                                            <ref role="3cqZAo" node="3SnNvqCby1e" resolve="lastDot" />
                                          </node>
                                          <node concept="3cmrfG" id="3SnNvqCby1z" role="3uHU7w">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="3SnNvqCby1$" role="3K4E3e">
                                          <node concept="37vLTw" id="3GM_nagTxLw" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3SnNvqCby18" resolve="typename" />
                                          </node>
                                          <node concept="liA8E" id="3SnNvqCby1A" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                                            <node concept="3cmrfG" id="3SnNvqCby1B" role="37wK5m">
                                              <property role="3cmrfH" value="0" />
                                            </node>
                                            <node concept="37vLTw" id="3GM_nagTAwQ" role="37wK5m">
                                              <ref role="3cqZAo" node="3SnNvqCby1e" resolve="lastDot" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="3SnNvqCby1D" role="3K4GZi">
                                          <property role="Xl_RC" value="" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="3SnNvqCby1E" role="3cqZAp">
                                    <node concept="37vLTI" id="3SnNvqCby1F" role="3clFbG">
                                      <node concept="37vLTw" id="3GM_nagTysH" role="37vLTJ">
                                        <ref role="3cqZAo" node="3SnNvqCby0Z" resolve="framePresentation" />
                                      </node>
                                      <node concept="3cpWs3" id="3SnNvqCby1H" role="37vLTx">
                                        <node concept="3cpWs3" id="3SnNvqCby1I" role="3uHU7B">
                                          <node concept="3cpWs3" id="3SnNvqCby1J" role="3uHU7B">
                                            <node concept="3cpWs3" id="3SnNvqCby1K" role="3uHU7B">
                                              <node concept="3cpWs3" id="3SnNvqCby1L" role="3uHU7B">
                                                <node concept="3cpWs3" id="3SnNvqCby1M" role="3uHU7B">
                                                  <node concept="3cpWs3" id="3SnNvqCby1N" role="3uHU7B">
                                                    <node concept="2OqwBi" id="3SnNvqCby1O" role="3uHU7B">
                                                      <node concept="37vLTw" id="3GM_nagTBvo" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="3SnNvqCby0T" resolve="location" />
                                                      </node>
                                                      <node concept="liA8E" id="3SnNvqCby1Q" role="2OqNvi">
                                                        <ref role="37wK5l" to="pry4:3SnNvqCaJtI" resolve="getRoutineName" />
                                                      </node>
                                                    </node>
                                                    <node concept="Xl_RD" id="3SnNvqCby1R" role="3uHU7w">
                                                      <property role="Xl_RC" value="():" />
                                                    </node>
                                                  </node>
                                                  <node concept="2OqwBi" id="3SnNvqCby1S" role="3uHU7w">
                                                    <node concept="37vLTw" id="3GM_nagTzvH" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="3SnNvqCby0T" resolve="location" />
                                                    </node>
                                                    <node concept="liA8E" id="3SnNvqCby1U" role="2OqNvi">
                                                      <ref role="37wK5l" to="pry4:3SnNvqCaJtM" resolve="getLineNumber" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="3SnNvqCby1V" role="3uHU7w">
                                                  <property role="Xl_RC" value=" " />
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="3GM_nagTuLZ" role="3uHU7w">
                                                <ref role="3cqZAo" node="3SnNvqCby1l" resolve="className" />
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="3SnNvqCby1X" role="3uHU7w">
                                              <property role="Xl_RC" value="(" />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="3GM_nagTAPU" role="3uHU7w">
                                            <ref role="3cqZAo" node="3SnNvqCby1u" resolve="pckgName" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="3SnNvqCby1Z" role="3uHU7w">
                                          <property role="Xl_RC" value=")" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="3SnNvqCby20" role="3clFbx">
                                <node concept="3clFbF" id="3SnNvqCby21" role="3cqZAp">
                                  <node concept="37vLTI" id="3SnNvqCby22" role="3clFbG">
                                    <node concept="37vLTw" id="3GM_nagTzOR" role="37vLTJ">
                                      <ref role="3cqZAo" node="3SnNvqCby0Z" resolve="framePresentation" />
                                    </node>
                                    <node concept="Xl_RD" id="3SnNvqCby24" role="37vLTx">
                                      <property role="Xl_RC" value="null" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3SnNvqCby25" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyzhvh" role="3clFbG">
                                <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
                                <node concept="37vLTw" id="3GM_nagTulv" role="37wK5m">
                                  <ref role="3cqZAo" node="3SnNvqCby0Z" resolve="framePresentation" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="3SnNvqCby28" role="3cqZAp">
                              <node concept="3fqX7Q" id="3SnNvqCby29" role="3clFbw">
                                <node concept="2OqwBi" id="3SnNvqCby2a" role="3fr31v">
                                  <node concept="2OqwBi" id="3SnNvqCby2b" role="2Oq$k0">
                                    <node concept="37vLTw" id="2BHiRxeunT_" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
                                    </node>
                                    <node concept="liA8E" id="3SnNvqCby2d" role="2OqNvi">
                                      <ref role="37wK5l" to="1l1h:3SnNvqCaKaa" resolve="getDebuggableFramesSelector" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3SnNvqCby2e" role="2OqNvi">
                                    <ref role="37wK5l" to="1l1h:3SnNvqCaJuG" resolve="isDebuggableFrame" />
                                    <node concept="37vLTw" id="3GM_nagTvIU" role="37wK5m">
                                      <ref role="3cqZAo" node="3SnNvqCby0N" resolve="frame" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="3SnNvqCby2g" role="3clFbx">
                                <node concept="3clFbF" id="3SnNvqCby2h" role="3cqZAp">
                                  <node concept="1rXfSq" id="4hiugqyyYfS" role="3clFbG">
                                    <ref role="37wK5l" to="dxuu:~JComponent.setForeground(java.awt.Color)" resolve="setForeground" />
                                    <node concept="10M0yZ" id="3SnNvqCby2j" role="37wK5m">
                                      <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                                      <ref role="3cqZAo" to="lzb2:~JBColor.gray" resolve="gray" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="3SnNvqCby2k" role="3cqZAp">
                          <node concept="37vLTw" id="3GM_nagTwfT" role="3cqZAk">
                            <ref role="3cqZAo" node="3SnNvqCby0_" resolve="defaultComponent" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3SnNvqCby2m" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbxY0" role="3cqZAp">
          <node concept="2ShNRf" id="3SnNvqCbxY1" role="3cqZAk">
            <node concept="1pGfFk" id="3SnNvqCbxY2" role="2ShVmc">
              <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JBScrollPane" />
              <node concept="37vLTw" id="2BHiRxeusru" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbxTK" resolve="myFramesList" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbxY4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateUi" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxY5" role="1B3o_S" />
      <node concept="3cqZAl" id="3SnNvqCbxY6" role="3clF45" />
      <node concept="3clFbS" id="3SnNvqCbxY7" role="3clF47">
        <node concept="3clFbF" id="3SnNvqCbxY8" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbxY9" role="3clFbG">
            <node concept="2YIFZM" id="3SnNvqCbxYa" role="2Oq$k0">
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
            </node>
            <node concept="liA8E" id="3SnNvqCbxYb" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
              <node concept="2ShNRf" id="3SnNvqCbxYc" role="37wK5m">
                <node concept="YeOm9" id="3SnNvqCbxYd" role="2ShVmc">
                  <node concept="1Y3b0j" id="3SnNvqCbxYe" role="YeSDq">
                    <property role="TrG5h" value="" />
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3clFb_" id="3SnNvqCbxYf" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="3SnNvqCbxYg" role="1B3o_S" />
                      <node concept="3cqZAl" id="3SnNvqCbxYh" role="3clF45" />
                      <node concept="3clFbS" id="3SnNvqCby2n" role="3clF47">
                        <node concept="3clFbF" id="3SnNvqCby2o" role="3cqZAp">
                          <node concept="37vLTI" id="3SnNvqCby2p" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeu_G7" role="37vLTJ">
                              <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
                            </node>
                            <node concept="2OqwBi" id="3SnNvqCby2r" role="37vLTx">
                              <node concept="37vLTw" id="2BHiRxeuoJN" role="2Oq$k0">
                                <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
                              </node>
                              <node concept="liA8E" id="3SnNvqCby2t" role="2OqNvi">
                                <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3SnNvqCby2u" role="3cqZAp">
                          <node concept="2OqwBi" id="3SnNvqCby2v" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuq3q" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SnNvqCbxTB" resolve="myThreadsComboBoxModel" />
                            </node>
                            <node concept="liA8E" id="3SnNvqCby2x" role="2OqNvi">
                              <ref role="37wK5l" node="3SnNvqCbxT3" resolve="updateThreads" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3SnNvqCby2y" role="3cqZAp">
                          <node concept="2OqwBi" id="3SnNvqCby2z" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeumVK" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SnNvqCbxTE" resolve="myStackFramesListModel" />
                            </node>
                            <node concept="liA8E" id="3SnNvqCby2_" role="2OqNvi">
                              <ref role="37wK5l" node="3SnNvqCbxTo" resolve="updateFrames" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3SnNvqCby2A" role="3cqZAp">
                          <node concept="2OqwBi" id="3SnNvqCby2B" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuxJv" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SnNvqCbxTK" resolve="myFramesList" />
                            </node>
                            <node concept="liA8E" id="3SnNvqCby2D" role="2OqNvi">
                              <ref role="37wK5l" to="dxuu:~JList.setSelectedValue(java.lang.Object,boolean)" resolve="setSelectedValue" />
                              <node concept="2OqwBi" id="3SnNvqCby2E" role="37wK5m">
                                <node concept="37vLTw" id="2BHiRxeug6F" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
                                </node>
                                <node concept="liA8E" id="3SnNvqCby2G" role="2OqNvi">
                                  <ref role="37wK5l" to="1l1h:3SnNvqCaJy5" resolve="getStackFrame" />
                                </node>
                              </node>
                              <node concept="3clFbT" id="3SnNvqCby2H" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="3SnNvqCbzsI" role="3cqZAp">
                          <node concept="1PaTwC" id="ATZLwXobE7" role="1aUNEU">
                            <node concept="3oM_SD" id="ATZLwXobE8" role="1PaTwD">
                              <property role="3oM_SC" value="" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXobE9" role="1PaTwD">
                              <property role="3oM_SC" value="TODO" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXobEa" role="1PaTwD">
                              <property role="3oM_SC" value="not" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXobEb" role="1PaTwD">
                              <property role="3oM_SC" value="good" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3SnNvqCby2I" role="3cqZAp">
                          <node concept="2OqwBi" id="3SnNvqCby2J" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuKj0" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SnNvqCbxTH" resolve="myVariablesTree" />
                            </node>
                            <node concept="liA8E" id="3SnNvqCby2L" role="2OqNvi">
                              <ref role="37wK5l" to="choc:3SnNvqCbxgC" resolve="setUiState" />
                              <node concept="37vLTw" id="2BHiRxeuL81" role="37wK5m">
                                <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3SnNvqCby2N" role="3cqZAp">
                          <node concept="2OqwBi" id="3SnNvqCby2O" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuD8d" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SnNvqCbxTH" resolve="myVariablesTree" />
                            </node>
                            <node concept="liA8E" id="3SnNvqCby2Q" role="2OqNvi">
                              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildNow()" resolve="rebuildNow" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3SnNvqCby2R" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
    <node concept="312cEu" id="3SnNvqCbxSn" role="jymVt">
      <property role="TrG5h" value="MySessionChangeListener" />
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxSo" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxSp" role="1zkMxy">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJZz" resolve="SessionChangeAdapter" />
      </node>
      <node concept="3clFbW" id="3SnNvqCbxSq" role="jymVt">
        <node concept="3Tm6S6" id="3SnNvqCbxSr" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxSs" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxYi" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3SnNvqCbxSt" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="stateChanged" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxSu" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxSv" role="3clF45" />
        <node concept="37vLTG" id="3SnNvqCbxSw" role="3clF46">
          <property role="TrG5h" value="session" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3SnNvqCbxSx" role="1tU5fm">
            <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
          </node>
        </node>
        <node concept="3clFbS" id="3SnNvqCbxYj" role="3clF47">
          <node concept="3clFbJ" id="3SnNvqCbxYk" role="3cqZAp">
            <node concept="3y3z36" id="3SnNvqCbxYl" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxeuPwz" role="3uHU7B">
                <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm6Uc" role="3uHU7w">
                <ref role="3cqZAo" node="3SnNvqCbxSw" resolve="session" />
              </node>
            </node>
            <node concept="3clFbS" id="3SnNvqCbxYo" role="3clFbx">
              <node concept="3cpWs6" id="3SnNvqCbxYp" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="3SnNvqCbxYq" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyI0n" role="3clFbG">
              <ref role="37wK5l" node="3SnNvqCbxY4" resolve="updateUi" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxYs" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxSy" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="paused" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxSz" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxS$" role="3clF45" />
        <node concept="37vLTG" id="3SnNvqCbxS_" role="3clF46">
          <property role="TrG5h" value="session" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3SnNvqCbxSA" role="1tU5fm">
            <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
          </node>
        </node>
        <node concept="3clFbS" id="3SnNvqCbxYt" role="3clF47">
          <node concept="3clFbJ" id="3SnNvqCbxYu" role="3cqZAp">
            <node concept="3y3z36" id="3SnNvqCbxYv" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxeumPk" role="3uHU7B">
                <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
              </node>
              <node concept="37vLTw" id="2BHiRxghbDJ" role="3uHU7w">
                <ref role="3cqZAo" node="3SnNvqCbxS_" resolve="session" />
              </node>
            </node>
            <node concept="3clFbS" id="3SnNvqCbxYy" role="3clFbx">
              <node concept="3cpWs6" id="3SnNvqCbxYz" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="3SnNvqCbxY$" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzbZM" role="3clFbG">
              <ref role="37wK5l" node="3SnNvqCbxY4" resolve="updateUi" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxYA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxSB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="resumed" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxSC" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxSD" role="3clF45" />
        <node concept="37vLTG" id="3SnNvqCbxSE" role="3clF46">
          <property role="TrG5h" value="session" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3SnNvqCbxSF" role="1tU5fm">
            <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
          </node>
        </node>
        <node concept="3clFbS" id="3SnNvqCbxYB" role="3clF47">
          <node concept="3clFbJ" id="3SnNvqCbxYC" role="3cqZAp">
            <node concept="3y3z36" id="3SnNvqCbxYD" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxeukxX" role="3uHU7B">
                <ref role="3cqZAo" node="3SnNvqCbxTw" resolve="myDebugSession" />
              </node>
              <node concept="37vLTw" id="2BHiRxgkX5Q" role="3uHU7w">
                <ref role="3cqZAo" node="3SnNvqCbxSE" resolve="session" />
              </node>
            </node>
            <node concept="3clFbS" id="3SnNvqCbxYG" role="3clFbx">
              <node concept="3cpWs6" id="3SnNvqCbxYH" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="3SnNvqCbxYI" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzhCt" role="3clFbG">
              <ref role="37wK5l" node="3SnNvqCbxY4" resolve="updateUi" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxYK" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="3SnNvqCbxSG" role="jymVt">
      <property role="TrG5h" value="ThreadsComboBoxModel" />
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxSH" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbxSI" role="1zkMxy">
        <ref role="3uigEE" to="dxuu:~AbstractListModel" resolve="AbstractListModel" />
      </node>
      <node concept="3uibUv" id="3SnNvqCbxSJ" role="EKbjA">
        <ref role="3uigEE" to="dxuu:~ComboBoxModel" resolve="ComboBoxModel" />
      </node>
      <node concept="3clFbW" id="3SnNvqCbxSK" role="jymVt">
        <node concept="3Tm6S6" id="3SnNvqCbxSL" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxSM" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxYL" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3SnNvqCbxSN" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setSelectedItem" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxSO" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxSP" role="3clF45" />
        <node concept="37vLTG" id="3SnNvqCbxSQ" role="3clF46">
          <property role="TrG5h" value="anItem" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3SnNvqCbxSR" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="3SnNvqCbxYM" role="3clF47">
          <node concept="3clFbF" id="3SnNvqCbxYN" role="3cqZAp">
            <node concept="2OqwBi" id="3SnNvqCbxYO" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeumLi" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxYQ" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJzO" resolve="selectThread" />
                <node concept="10QFUN" id="3SnNvqCbxYR" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgm_z0" role="10QFUP">
                    <ref role="3cqZAo" node="3SnNvqCbxSQ" resolve="anItem" />
                  </node>
                  <node concept="3uibUv" id="3SnNvqCbxYT" role="10QFUM">
                    <ref role="3uigEE" to="pry4:3SnNvqCaJfr" resolve="IThread" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxYU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxSS" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getSelectedItem" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxST" role="1B3o_S" />
        <node concept="3uibUv" id="3SnNvqCbxSU" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3clFbS" id="3SnNvqCbxYV" role="3clF47">
          <node concept="3cpWs6" id="3SnNvqCbxYW" role="3cqZAp">
            <node concept="2OqwBi" id="3SnNvqCbxYX" role="3cqZAk">
              <node concept="37vLTw" id="2BHiRxeufAC" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxYZ" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJxU" resolve="getThread" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxZ0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxSV" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getSize" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxSW" role="1B3o_S" />
        <node concept="10Oyi0" id="3SnNvqCbxSX" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxZ1" role="3clF47">
          <node concept="3cpWs6" id="3SnNvqCbxZ2" role="3cqZAp">
            <node concept="2OqwBi" id="3SnNvqCbxZ3" role="3cqZAk">
              <node concept="1rXfSq" id="4hiugqyyYqa" role="2Oq$k0">
                <ref role="37wK5l" node="3SnNvqCbxT6" resolve="getThreads" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxZ5" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxZ6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxSY" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getElementAt" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxSZ" role="1B3o_S" />
        <node concept="3uibUv" id="3SnNvqCbxT0" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="37vLTG" id="3SnNvqCbxT1" role="3clF46">
          <property role="TrG5h" value="index" />
          <property role="3TUv4t" value="false" />
          <node concept="10Oyi0" id="3SnNvqCbxT2" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3SnNvqCbxZ7" role="3clF47">
          <node concept="3cpWs8" id="3SnNvqCbxZ8" role="3cqZAp">
            <node concept="3cpWsn" id="3SnNvqCbxZ9" role="3cpWs9">
              <property role="TrG5h" value="threads" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="3SnNvqCbxZa" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3qUE_q" id="1XeR6zOROw9" role="11_B2D">
                  <node concept="3uibUv" id="1XeR6zOROwb" role="3qUE_r">
                    <ref role="3uigEE" to="pry4:3SnNvqCaJfr" resolve="IThread" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyyZAB" role="33vP2m">
                <ref role="37wK5l" node="3SnNvqCbxT6" resolve="getThreads" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3SnNvqCbxZd" role="3cqZAp">
            <node concept="2d3UOw" id="3SnNvqCbxZe" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxglnW9" role="3uHU7B">
                <ref role="3cqZAo" node="3SnNvqCbxT1" resolve="index" />
              </node>
              <node concept="2OqwBi" id="3SnNvqCbxZg" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagTwyP" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SnNvqCbxZ9" resolve="threads" />
                </node>
                <node concept="liA8E" id="3SnNvqCbxZi" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3SnNvqCbxZj" role="3clFbx">
              <node concept="3cpWs6" id="3SnNvqCbxZk" role="3cqZAp">
                <node concept="10Nm6u" id="3SnNvqCbxZl" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3SnNvqCbxZm" role="3cqZAp">
            <node concept="2OqwBi" id="3SnNvqCbxZn" role="3cqZAk">
              <node concept="37vLTw" id="3GM_nagTuod" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxZ9" resolve="threads" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxZp" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="37vLTw" id="2BHiRxgmFdZ" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxT1" resolve="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxZr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxT3" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="updateThreads" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxT4" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxT5" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxZs" role="3clF47">
          <node concept="3clFbF" id="3SnNvqCbxZt" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzcr2" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~AbstractListModel.fireContentsChanged(java.lang.Object,int,int)" resolve="fireContentsChanged" />
              <node concept="Xjq3P" id="3SnNvqCbxZv" role="37wK5m">
                <ref role="1HBi2w" node="3SnNvqCbxSl" resolve="DebuggerToolPanel" />
              </node>
              <node concept="1ZRNhn" id="3SnNvqCbxZw" role="37wK5m">
                <node concept="3cmrfG" id="3SnNvqCbxZx" role="2$L3a6">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyyU9r" role="37wK5m">
                <ref role="37wK5l" node="3SnNvqCbxSV" resolve="getSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxT6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getThreads" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm6S6" id="3SnNvqCbxT7" role="1B3o_S" />
        <node concept="3uibUv" id="3SnNvqCbxT8" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="1XeR6zOROnU" role="11_B2D">
            <node concept="3uibUv" id="1XeR6zOROnW" role="3qUE_r">
              <ref role="3uigEE" to="pry4:3SnNvqCaJfr" resolve="IThread" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3SnNvqCbxZz" role="3clF47">
          <node concept="3cpWs6" id="3SnNvqCbxZ$" role="3cqZAp">
            <node concept="2OqwBi" id="3SnNvqCbxZ_" role="3cqZAk">
              <node concept="37vLTw" id="2BHiRxeuLao" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxZB" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJxZ" resolve="getThreads" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="3SnNvqCbxTa" role="jymVt">
      <property role="TrG5h" value="StackFramesListModel" />
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm6S6" id="3SnNvqCbxTb" role="1B3o_S" />
      <node concept="3uibUv" id="1XeR6zOROnX" role="1zkMxy">
        <ref role="3uigEE" to="dxuu:~AbstractListModel" resolve="AbstractListModel" />
      </node>
      <node concept="3clFbW" id="3SnNvqCbxTd" role="jymVt">
        <node concept="3Tm6S6" id="3SnNvqCbxTe" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxTf" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxZC" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3SnNvqCbxTg" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getSize" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxTh" role="1B3o_S" />
        <node concept="10Oyi0" id="3SnNvqCbxTi" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxZD" role="3clF47">
          <node concept="3cpWs6" id="3SnNvqCbxZE" role="3cqZAp">
            <node concept="2OqwBi" id="3SnNvqCbxZF" role="3cqZAk">
              <node concept="37vLTw" id="2BHiRxeupju" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxZH" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJ$Q" resolve="getStackFramesCount" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxZI" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxTj" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getElementAt" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxTk" role="1B3o_S" />
        <node concept="3uibUv" id="3SnNvqCbxTl" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="37vLTG" id="3SnNvqCbxTm" role="3clF46">
          <property role="TrG5h" value="index" />
          <property role="3TUv4t" value="false" />
          <node concept="10Oyi0" id="3SnNvqCbxTn" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3SnNvqCbxZJ" role="3clF47">
          <node concept="3clFbJ" id="10VcOOlzv4e" role="3cqZAp">
            <node concept="3clFbS" id="10VcOOlzv4f" role="3clFbx">
              <node concept="3cpWs6" id="10VcOOlzv4F" role="3cqZAp">
                <node concept="10Nm6u" id="10VcOOlzv4H" role="3cqZAk" />
              </node>
            </node>
            <node concept="2d3UOw" id="10VcOOlzv4q" role="3clFbw">
              <node concept="2OqwBi" id="10VcOOlzv4$" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxeukq2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
                </node>
                <node concept="liA8E" id="10VcOOlzv4E" role="2OqNvi">
                  <ref role="37wK5l" to="1l1h:3SnNvqCaJ$Q" resolve="getStackFramesCount" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgm5ZQ" role="3uHU7B">
                <ref role="3cqZAo" node="3SnNvqCbxTm" resolve="index" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3SnNvqCbxZK" role="3cqZAp">
            <node concept="2OqwBi" id="3SnNvqCbxZL" role="3cqZAk">
              <node concept="37vLTw" id="2BHiRxeuW0F" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
              </node>
              <node concept="liA8E" id="3SnNvqCbxZN" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJ_9" resolve="getStackFrame" />
                <node concept="37vLTw" id="2BHiRxglrfr" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxTm" resolve="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SnNvqCbxZP" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxTo" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="updateFrames" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxTp" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxTq" role="3clF45" />
        <node concept="3clFbS" id="3SnNvqCbxZQ" role="3clF47">
          <node concept="3clFbF" id="3SnNvqCbxZR" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz9I8" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~AbstractListModel.fireContentsChanged(java.lang.Object,int,int)" resolve="fireContentsChanged" />
              <node concept="Xjq3P" id="3SnNvqCbxZT" role="37wK5m">
                <ref role="1HBi2w" node="3SnNvqCbxSl" resolve="DebuggerToolPanel" />
              </node>
              <node concept="1ZRNhn" id="3SnNvqCbxZU" role="37wK5m">
                <node concept="3cmrfG" id="3SnNvqCbxZV" role="2$L3a6">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyz9G8" role="37wK5m">
                <ref role="37wK5l" node="3SnNvqCbxTg" resolve="getSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3SnNvqCbxTr" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="selected" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3SnNvqCbxTs" role="1B3o_S" />
        <node concept="3cqZAl" id="3SnNvqCbxTt" role="3clF45" />
        <node concept="37vLTG" id="3SnNvqCbxTu" role="3clF46">
          <property role="TrG5h" value="selectedIndex" />
          <property role="3TUv4t" value="false" />
          <node concept="10Oyi0" id="3SnNvqCbxTv" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3SnNvqCbxZX" role="3clF47">
          <node concept="3clFbF" id="3SnNvqCbxZY" role="3cqZAp">
            <node concept="2OqwBi" id="3SnNvqCbxZZ" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuM6B" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbxTz" resolve="myUiState" />
              </node>
              <node concept="liA8E" id="3SnNvqCby01" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJ$b" resolve="selectFrame" />
                <node concept="37vLTw" id="2BHiRxgmDxM" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbxTu" resolve="selectedIndex" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

