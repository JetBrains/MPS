<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e1663f0e-a433-4acc-be78-d50e0f2be978(jetbrains.mps.editor.contextActionsTool.pluginSolution.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="v8cy" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.assist(MPS.Editor/)" />
    <import index="dfte" ref="r:df7b9224-e397-4e2d-bdfc-e44150ec7d1a(jetbrains.mps.editor.contextActionsTool.lang.menus.runtime)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="uddc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.menus.transformation(MPS.Editor/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="jsda" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.dnd(JDK/)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="nlpl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.commands(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="9z78" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.border(JDK/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="2kyo" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.tabs.impl(MPS.IDEA/)" />
    <import index="ohny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.tabs(MPS.IDEA/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="jan3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.image(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="sn11" ref="r:836426ab-a6f4-4fa3-9a9c-34c02ed6ab5d(jetbrains.mps.ide.icons)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1213888653896" name="jetbrains.mps.lang.plugin.structure.InitBlock" flags="in" index="2xpIHi" />
      <concept id="1213888677711" name="jetbrains.mps.lang.plugin.structure.DisposeBlock" flags="in" index="2xpOpl" />
      <concept id="1213888797251" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_Project" flags="nn" index="2xqhHp" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="2498620720770664572" name="position" index="2bmUCM" />
        <property id="43535111852086466" name="isAvailableOnStartup" index="tEvSQ" />
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="8096638938275469615" name="toolDisposeBlock" index="uR5co" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
      </concept>
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
      </concept>
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
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
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="2DaZZR" id="5tr7YH$U35a" />
  <node concept="sEfby" id="5tr7YH$U35C">
    <property role="TrG5h" value="ContextActionsTool" />
    <property role="2XNbzY" value="Context Actions" />
    <property role="2bmUCM" value="2aGS$UDXOxV/RIGHT" />
    <property role="tEvSQ" value="true" />
    <node concept="2XrIbr" id="5pPNcuYHmlG" role="2XNbBy">
      <property role="TrG5h" value="doRegister" />
      <node concept="3cqZAl" id="5pPNcuYHrsp" role="3clF45" />
      <node concept="3clFbS" id="5pPNcuYHmlI" role="3clF47">
        <node concept="3clFbF" id="5pPNcuYHsuh" role="3cqZAp">
          <node concept="37vLTI" id="5pPNcuYHthV" role="3clFbG">
            <node concept="3clFbT" id="5pPNcuYHtiD" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="5pPNcuYHsAi" role="37vLTJ">
              <node concept="2WthIp" id="5pPNcuYHsug" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5pPNcuYHsU6" role="2OqNvi">
                <ref role="2WH_rO" node="5pPNcuYHr$z" resolve="hasBeenRegistered" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5pPNcuYHrzW" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5pPNcuYHtnW" role="2XNbBy">
      <property role="TrG5h" value="hasBeenRegistered" />
      <node concept="10P_77" id="5pPNcuYHu5c" role="3clF45" />
      <node concept="3clFbS" id="5pPNcuYHtnY" role="3clF47">
        <node concept="3clFbF" id="5pPNcuYHukw" role="3cqZAp">
          <node concept="2OqwBi" id="5pPNcuYHutX" role="3clFbG">
            <node concept="2WthIp" id="5pPNcuYHukv" role="2Oq$k0" />
            <node concept="2BZ7hE" id="5pPNcuYHu_n" role="2OqNvi">
              <ref role="2WH_rO" node="5pPNcuYHr$z" resolve="hasBeenRegistered" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5pPNcuYHuB0" role="1B3o_S" />
    </node>
    <node concept="2BZ0e9" id="5tr7YH$U8Tk" role="2XNbBz">
      <property role="TrG5h" value="myComponent" />
      <node concept="3Tm6S6" id="5tr7YH$U8Tl" role="1B3o_S" />
      <node concept="3uibUv" id="5lGdLibXJvn" role="1tU5fm">
        <ref role="3uigEE" node="5lGdLibXIsq" resolve="ToolComponent" />
      </node>
    </node>
    <node concept="2BZ0e9" id="7pClCNYa4$I" role="2XNbBz">
      <property role="TrG5h" value="myController" />
      <node concept="3Tm6S6" id="7pClCNYa4$J" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNYa53M" role="1tU5fm">
        <ref role="3uigEE" node="7pClCNY9qN8" resolve="ToolController" />
      </node>
    </node>
    <node concept="2BZ0e9" id="5pPNcuYHr$z" role="2XNbBz">
      <property role="TrG5h" value="hasBeenRegistered" />
      <node concept="3Tm6S6" id="5pPNcuYHr$$" role="1B3o_S" />
      <node concept="10P_77" id="5pPNcuYHsh4" role="1tU5fm" />
    </node>
    <node concept="2UmK3q" id="5tr7YH$U35D" role="2Um5zG">
      <node concept="3clFbS" id="5tr7YH$U35E" role="2VODD2">
        <node concept="3clFbF" id="5Ji6nXNXUhN" role="3cqZAp">
          <node concept="2OqwBi" id="5Ji6nXNXUuX" role="3clFbG">
            <node concept="2OqwBi" id="5Ji6nXNXUhP" role="2Oq$k0">
              <node concept="2WthIp" id="5Ji6nXNXUhQ" role="2Oq$k0" />
              <node concept="liA8E" id="5Ji6nXNXUhR" role="2OqNvi">
                <ref role="37wK5l" to="71xd:~BaseTool.getToolWindow()" resolve="getToolWindow" />
              </node>
            </node>
            <node concept="liA8E" id="5Ji6nXNXVds" role="2OqNvi">
              <ref role="37wK5l" to="jkny:~ToolWindow.setAdditionalGearActions(com.intellij.openapi.actionSystem.ActionGroup)" resolve="setAdditionalGearActions" />
              <node concept="2OqwBi" id="5Ji6nXNXVt2" role="37wK5m">
                <node concept="2WthIp" id="5Ji6nXNXVt5" role="2Oq$k0" />
                <node concept="2XshWL" id="5Ji6nXNXVt7" role="2OqNvi">
                  <ref role="2WH_rO" node="3zNPfWNAwau" resolve="createGearActionGroup" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5tr7YH$Ug8u" role="3cqZAp">
          <node concept="2OqwBi" id="7D_l88gKtMi" role="3cqZAk">
            <node concept="2WthIp" id="7D_l88gKtMl" role="2Oq$k0" />
            <node concept="2BZ7hE" id="3zNPfWNAxno" role="2OqNvi">
              <ref role="2WH_rO" node="5tr7YH$U8Tk" resolve="myComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpOpl" id="5lGdLibXOZR" role="uR5co">
      <node concept="3clFbS" id="5lGdLibXOZS" role="2VODD2">
        <node concept="3clFbF" id="7pClCNYaaEv" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYabxf" role="3clFbG">
            <node concept="2OqwBi" id="7pClCNYaaNK" role="2Oq$k0">
              <node concept="2WthIp" id="7pClCNYaaEt" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7pClCNYab0G" role="2OqNvi">
                <ref role="2WH_rO" node="7pClCNYa4$I" resolve="myController" />
              </node>
            </node>
            <node concept="liA8E" id="7pClCNYabLJ" role="2OqNvi">
              <ref role="37wK5l" node="7pClCNY9UxU" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpIHi" id="5lGdLibXP9H" role="uR5cp">
      <node concept="3clFbS" id="5lGdLibXP9I" role="2VODD2">
        <node concept="3cpWs8" id="7D_l88gJSnt" role="3cqZAp">
          <node concept="3cpWsn" id="7D_l88gJSnu" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="pUqJj8sO8Q" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2YIFZM" id="7D_l88gJSnv" role="33vP2m">
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <node concept="2xqhHp" id="7D_l88gJSnw" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7D_l88gJVhD" role="3cqZAp">
          <node concept="3clFbS" id="7D_l88gJVhF" role="3clFbx">
            <node concept="YS8fn" id="7D_l88gJVT3" role="3cqZAp">
              <node concept="2ShNRf" id="7D_l88gJVTa" role="YScLw">
                <node concept="1pGfFk" id="7D_l88gJWb0" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="7D_l88gJWb4" role="37wK5m">
                    <property role="Xl_RC" value="project must be an MPSProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7D_l88gJVPT" role="3clFbw">
            <node concept="10Nm6u" id="7D_l88gJVQ1" role="3uHU7w" />
            <node concept="37vLTw" id="7D_l88gJVjb" role="3uHU7B">
              <ref role="3cqZAo" node="7D_l88gJSnu" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7D_l88gJWjw" role="3cqZAp" />
        <node concept="3clFbF" id="5tr7YH$U9kO" role="3cqZAp">
          <node concept="37vLTI" id="5tr7YH$U9Il" role="3clFbG">
            <node concept="2ShNRf" id="5tr7YH$U9Wn" role="37vLTx">
              <node concept="1pGfFk" id="5lGdLibXUq1" role="2ShVmc">
                <ref role="37wK5l" node="5lGdLibXS2F" resolve="ToolComponent" />
                <node concept="2WthIp" id="6YRAqpTgk0q" role="37wK5m" />
              </node>
            </node>
            <node concept="2OqwBi" id="5tr7YH$U9kI" role="37vLTJ">
              <node concept="2WthIp" id="5tr7YH$U9kL" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5tr7YH$U9kN" role="2OqNvi">
                <ref role="2WH_rO" node="5tr7YH$U8Tk" resolve="myComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1PgelZsjQii" role="3cqZAp">
          <node concept="37vLTI" id="1PgelZsjRot" role="3clFbG">
            <node concept="2ShNRf" id="1PgelZsjRtX" role="37vLTx">
              <node concept="1pGfFk" id="1PgelZsjRQy" role="2ShVmc">
                <ref role="37wK5l" node="7pClCNY9sYI" resolve="ToolController" />
                <node concept="37vLTw" id="1PgelZsjRRG" role="37wK5m">
                  <ref role="3cqZAo" node="7D_l88gJSnu" resolve="mpsProject" />
                </node>
                <node concept="2OqwBi" id="1PgelZsjSej" role="37wK5m">
                  <node concept="2WthIp" id="1PgelZsjRYf" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="1PgelZsjSFY" role="2OqNvi">
                    <ref role="2WH_rO" node="5tr7YH$U8Tk" resolve="myComponent" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1PgelZsjSV5" role="37wK5m">
                  <node concept="1pGfFk" id="7kAP1VuNkdb" role="2ShVmc">
                    <ref role="37wK5l" to="v8cy:~SelectionMenuProviderByCellAndConcept.&lt;init&gt;(java.lang.String)" resolve="SelectionMenuProviderByCellAndConcept" />
                    <node concept="10M0yZ" id="3zNPfWNAHR6" role="37wK5m">
                      <ref role="1PxDUh" to="dfte:69nPU$vWSqd" resolve="MenuLocations" />
                      <ref role="3cqZAo" to="dfte:69nPU$vX00o" resolve="CONTEXT_ACTIONS_TOOL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1PgelZsjQDv" role="37vLTJ">
              <node concept="2WthIp" id="1PgelZsjQig" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1PgelZsjR6p" role="2OqNvi">
                <ref role="2WH_rO" node="7pClCNYa4$I" resolve="myController" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3zNPfWNAwau" role="2XNbBy">
      <property role="TrG5h" value="createGearActionGroup" />
      <node concept="3Tm6S6" id="3zNPfWNAwav" role="1B3o_S" />
      <node concept="3uibUv" id="3zNPfWNAwaw" role="3clF45">
        <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
      </node>
      <node concept="3clFbS" id="3zNPfWNAwa4" role="3clF47">
        <node concept="3cpWs8" id="3zNPfWNAwa7" role="3cqZAp">
          <node concept="3cpWsn" id="3zNPfWNAwa8" role="3cpWs9">
            <property role="TrG5h" value="gearActionGroup" />
            <node concept="3uibUv" id="3zNPfWNAwa9" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
            </node>
            <node concept="2ShNRf" id="3zNPfWNAwaa" role="33vP2m">
              <node concept="1pGfFk" id="3zNPfWNAwab" role="2ShVmc">
                <ref role="37wK5l" to="qkt:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3zNPfWNAwac" role="3cqZAp">
          <node concept="2GrKxI" id="3zNPfWNAwad" role="2Gsz3X">
            <property role="TrG5h" value="type" />
          </node>
          <node concept="3clFbS" id="3zNPfWNAwae" role="2LFqv$">
            <node concept="3clFbF" id="3zNPfWNAwaf" role="3cqZAp">
              <node concept="2OqwBi" id="3zNPfWNAwag" role="3clFbG">
                <node concept="37vLTw" id="3zNPfWNAwah" role="2Oq$k0">
                  <ref role="3cqZAo" node="3zNPfWNAwa8" resolve="gearActionGroup" />
                </node>
                <node concept="liA8E" id="3zNPfWNAwai" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
                  <node concept="2ShNRf" id="3zNPfWNAwaj" role="37wK5m">
                    <node concept="1pGfFk" id="3zNPfWNAwak" role="2ShVmc">
                      <ref role="37wK5l" node="7vUP_qcxVPt" resolve="ChangeViewAction" />
                      <node concept="2OqwBi" id="3zNPfWNAwal" role="37wK5m">
                        <node concept="2WthIp" id="3zNPfWNAwam" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="3zNPfWNAwan" role="2OqNvi">
                          <ref role="2WH_rO" node="5tr7YH$U8Tk" resolve="myComponent" />
                        </node>
                      </node>
                      <node concept="2GrUjf" id="3zNPfWNAwao" role="37wK5m">
                        <ref role="2Gs0qQ" node="3zNPfWNAwad" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="uiWXb" id="3zNPfWNAwap" role="2GsD0m">
            <ref role="uiZuM" node="7vUP_qcx$o$" resolve="ViewType" />
          </node>
        </node>
        <node concept="3cpWs6" id="3zNPfWNAwaq" role="3cqZAp">
          <node concept="37vLTw" id="3zNPfWNAwar" role="3cqZAk">
            <ref role="3cqZAo" node="3zNPfWNAwa8" resolve="gearActionGroup" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="7vUP_qcx$o$">
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="ViewType" />
    <node concept="QsSxf" id="7vUP_qcx$oQ" role="Qtgdg">
      <property role="TrG5h" value="LIST" />
      <ref role="37wK5l" node="7vUP_qcxDx4" resolve="ViewType" />
      <node concept="Xl_RD" id="7vUP_qcxF5b" role="37wK5m">
        <property role="Xl_RC" value="List" />
      </node>
    </node>
    <node concept="QsSxf" id="7vUP_qcx$Bp" role="Qtgdg">
      <property role="TrG5h" value="SYMBOLS" />
      <ref role="37wK5l" node="7vUP_qcxDx4" resolve="ViewType" />
      <node concept="Xl_RD" id="7vUP_qcxFdh" role="37wK5m">
        <property role="Xl_RC" value="Symbols" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7vUP_qcx$o_" role="1B3o_S" />
    <node concept="312cEg" id="7vUP_qcxBIe" role="jymVt">
      <property role="TrG5h" value="myText" />
      <node concept="3Tm6S6" id="7vUP_qcxBIf" role="1B3o_S" />
      <node concept="17QB3L" id="7vUP_qcxC1n" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="7vUP_qcxDx4" role="jymVt">
      <node concept="3cqZAl" id="7vUP_qcxDx6" role="3clF45" />
      <node concept="3clFbS" id="7vUP_qcxDx8" role="3clF47">
        <node concept="3clFbF" id="7vUP_qcxDNX" role="3cqZAp">
          <node concept="37vLTI" id="7vUP_qcxEqs" role="3clFbG">
            <node concept="37vLTw" id="7vUP_qcxEPf" role="37vLTx">
              <ref role="3cqZAo" node="7vUP_qcxDGF" resolve="text" />
            </node>
            <node concept="37vLTw" id="7vUP_qcxDNW" role="37vLTJ">
              <ref role="3cqZAo" node="7vUP_qcxBIe" resolve="myText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7vUP_qcxDGF" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="7vUP_qcxDGE" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="7vUP_qcxAvJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7vUP_qcxAvK" role="1B3o_S" />
      <node concept="3uibUv" id="7vUP_qcxAvM" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7vUP_qcxAvN" role="3clF47">
        <node concept="3clFbF" id="7vUP_qcxCjR" role="3cqZAp">
          <node concept="37vLTw" id="7vUP_qcxCjQ" role="3clFbG">
            <ref role="3cqZAo" node="7vUP_qcxBIe" resolve="myText" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7vUP_qcxAvO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="7pClCNYb7G6">
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="ItemExecutor" />
    <node concept="3clFb_" id="7pClCNYb7Is" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="execute" />
      <node concept="3clFbS" id="7pClCNYb7Iv" role="3clF47" />
      <node concept="3Tm1VV" id="7pClCNYb7Iw" role="1B3o_S" />
      <node concept="3cqZAl" id="7pClCNYb7Ij" role="3clF45" />
      <node concept="37vLTG" id="7pClCNYb7MK" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="7pClCNYb7MJ" role="1tU5fm">
          <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7pClCNYb7G7" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5lGdLibXIsq">
    <property role="TrG5h" value="ToolComponent" />
    <property role="3GE5qa" value="components" />
    <node concept="312cEg" id="7vUP_qcyfK$" role="jymVt">
      <property role="TrG5h" value="myViewType" />
      <node concept="3Tm6S6" id="7vUP_qcyfK_" role="1B3o_S" />
      <node concept="3uibUv" id="7vUP_qcyhaG" role="1tU5fm">
        <ref role="3uigEE" node="7vUP_qcx$o$" resolve="ViewType" />
      </node>
      <node concept="Rm8GO" id="7vUP_qcyhJw" role="33vP2m">
        <ref role="Rm8GQ" node="7vUP_qcx$oQ" resolve="LIST" />
        <ref role="1Px2BO" node="7vUP_qcx$o$" resolve="ViewType" />
      </node>
    </node>
    <node concept="312cEg" id="1PYEMstjbPt" role="jymVt">
      <property role="TrG5h" value="myItemPanel" />
      <node concept="3Tm6S6" id="1PYEMstjbPu" role="1B3o_S" />
      <node concept="3uibUv" id="1PYEMstjcgC" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
      <node concept="2ShNRf" id="7kKF9B4d7Gm" role="33vP2m">
        <node concept="1pGfFk" id="7vUP_qcWHVz" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="XAdWLSg3Uc" role="jymVt">
      <property role="TrG5h" value="myFilterString" />
      <node concept="3Tm6S6" id="XAdWLSg3Ud" role="1B3o_S" />
      <node concept="17QB3L" id="XAdWLSg7Xb" role="1tU5fm" />
      <node concept="Xl_RD" id="XAdWLSg82Y" role="33vP2m">
        <property role="Xl_RC" value="" />
      </node>
    </node>
    <node concept="312cEg" id="7XaT_J$dzkO" role="jymVt">
      <property role="TrG5h" value="mySearchField" />
      <node concept="3Tm6S6" id="7XaT_J$dzkP" role="1B3o_S" />
      <node concept="3uibUv" id="33en5x1IHFZ" role="1tU5fm">
        <ref role="3uigEE" node="7XaT_J$dWMJ" resolve="SearchField" />
      </node>
      <node concept="2ShNRf" id="7XaT_J$ejL0" role="33vP2m">
        <node concept="YeOm9" id="7XaT_J$ew4h" role="2ShVmc">
          <node concept="1Y3b0j" id="7XaT_J$ew4k" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7XaT_J$dWMJ" resolve="SearchField" />
            <ref role="37wK5l" node="7XaT_J$e199" resolve="SearchField" />
            <node concept="3Tm1VV" id="7XaT_J$ew4l" role="1B3o_S" />
            <node concept="3clFb_" id="7XaT_J$ew4m" role="jymVt">
              <property role="TrG5h" value="executeSearch" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7XaT_J$ew4n" role="3clF46">
                <property role="TrG5h" value="next" />
                <node concept="10P_77" id="7XaT_J$ew4o" role="1tU5fm" />
              </node>
              <node concept="3cqZAl" id="7XaT_J$ew4p" role="3clF45" />
              <node concept="3Tm1VV" id="7XaT_J$ew4q" role="1B3o_S" />
              <node concept="3clFbS" id="7XaT_J$ew4s" role="3clF47">
                <node concept="3clFbF" id="XAdWLSg8jU" role="3cqZAp">
                  <node concept="37vLTI" id="XAdWLSg9cW" role="3clFbG">
                    <node concept="2OqwBi" id="33en5x1KfqP" role="37vLTx">
                      <node concept="2OqwBi" id="XAdWLSg9Lb" role="2Oq$k0">
                        <node concept="37vLTw" id="XAdWLSg9p4" role="2Oq$k0">
                          <ref role="3cqZAo" node="7XaT_J$dzkO" resolve="mySearchField" />
                        </node>
                        <node concept="liA8E" id="XAdWLSgg$I" role="2OqNvi">
                          <ref role="37wK5l" to="lzb2:~SearchTextField.getText()" resolve="getText" />
                        </node>
                      </node>
                      <node concept="liA8E" id="33en5x1KhSp" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="XAdWLSg8jT" role="37vLTJ">
                      <ref role="3cqZAo" node="XAdWLSg3Uc" resolve="myFilterString" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="XAdWLSggSo" role="3cqZAp">
                  <node concept="1rXfSq" id="XAdWLSggSm" role="3clFbG">
                    <ref role="37wK5l" node="33en5x1IKG_" resolve="reloadItems" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4mMeETlt4_2" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="33en5x1J7Vh" role="jymVt">
      <property role="TrG5h" value="myLoadedItems" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="33en5x1J7Vi" role="1B3o_S" />
      <node concept="_YKpA" id="33en5x1J7Vk" role="1tU5fm">
        <node concept="3uibUv" id="7pClCNY7iE5" role="_ZDj9">
          <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4kYnSKvcGHR" role="jymVt">
      <property role="TrG5h" value="myTool" />
      <node concept="3Tm6S6" id="4kYnSKvcGHS" role="1B3o_S" />
      <node concept="3uibUv" id="4kYnSKvcJHh" role="1tU5fm">
        <ref role="3uigEE" to="71xd:~BaseTool" resolve="BaseTool" />
      </node>
    </node>
    <node concept="312cEg" id="7pClCNYbdkY" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myItemExecutor" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7pClCNYbbdc" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNYbdgF" role="1tU5fm">
        <ref role="3uigEE" node="7pClCNYb7G6" resolve="ItemExecutor" />
      </node>
    </node>
    <node concept="2tJIrI" id="1yMvtXVBJQu" role="jymVt" />
    <node concept="3clFbW" id="5lGdLibXS2F" role="jymVt">
      <node concept="3cqZAl" id="5lGdLibXS2H" role="3clF45" />
      <node concept="3Tm1VV" id="5lGdLibXS2I" role="1B3o_S" />
      <node concept="3clFbS" id="5lGdLibXS2J" role="3clF47">
        <node concept="3clFbF" id="4kYnSKvcNf7" role="3cqZAp">
          <node concept="37vLTI" id="4kYnSKvcNHI" role="3clFbG">
            <node concept="37vLTw" id="4kYnSKvcO0R" role="37vLTx">
              <ref role="3cqZAo" node="4kYnSKvcLHs" resolve="tool" />
            </node>
            <node concept="37vLTw" id="4kYnSKvcNf5" role="37vLTJ">
              <ref role="3cqZAo" node="4kYnSKvcGHR" resolve="myTool" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lGdLibYbw6" role="3cqZAp" />
        <node concept="3clFbF" id="5lGdLibYboI" role="3cqZAp">
          <node concept="1rXfSq" id="5lGdLibYboG" role="3clFbG">
            <ref role="37wK5l" node="5lGdLibY8ER" resolve="initComponents" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4kYnSKvcLHs" role="3clF46">
        <property role="TrG5h" value="tool" />
        <node concept="3uibUv" id="4kYnSKvcM1j" role="1tU5fm">
          <ref role="3uigEE" to="71xd:~BaseTool" resolve="BaseTool" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYbfg0" role="jymVt" />
    <node concept="3clFb_" id="7pClCNYbhp4" role="jymVt">
      <property role="TrG5h" value="setItemExecutor" />
      <node concept="3cqZAl" id="7pClCNYbhp5" role="3clF45" />
      <node concept="3Tm1VV" id="7pClCNYbhp6" role="1B3o_S" />
      <node concept="3clFbS" id="7pClCNYbhp7" role="3clF47">
        <node concept="3clFbF" id="7pClCNYbhp8" role="3cqZAp">
          <node concept="37vLTI" id="7pClCNYbhp9" role="3clFbG">
            <node concept="37vLTw" id="7pClCNYbhpa" role="37vLTx">
              <ref role="3cqZAo" node="7pClCNYbhpb" resolve="itemExecutor" />
            </node>
            <node concept="37vLTw" id="7pClCNYbhp3" role="37vLTJ">
              <ref role="3cqZAo" node="7pClCNYbdkY" resolve="myItemExecutor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7pClCNYbhpb" role="3clF46">
        <property role="TrG5h" value="itemExecutor" />
        <node concept="3uibUv" id="7pClCNYbhpc" role="1tU5fm">
          <ref role="3uigEE" node="7pClCNYb7G6" resolve="ItemExecutor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYbnhU" role="jymVt" />
    <node concept="3clFb_" id="5lGdLibY8ER" role="jymVt">
      <property role="TrG5h" value="initComponents" />
      <node concept="3cqZAl" id="5lGdLibY8ET" role="3clF45" />
      <node concept="3Tmbuc" id="5lGdLibY9if" role="1B3o_S" />
      <node concept="3clFbS" id="5lGdLibY8EV" role="3clF47">
        <node concept="3clFbF" id="12$80X55u2m" role="3cqZAp">
          <node concept="1rXfSq" id="12$80X55u2l" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="12$80X55w7P" role="37wK5m">
              <node concept="1pGfFk" id="12$80X55wXM" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12$80X55vI1" role="3cqZAp" />
        <node concept="3clFbF" id="4KKQOHJ6_Xd" role="3cqZAp">
          <node concept="2OqwBi" id="4KKQOHJ6AaR" role="3clFbG">
            <node concept="37vLTw" id="33en5x1Io9O" role="2Oq$k0">
              <ref role="3cqZAo" node="1PYEMstjbPt" resolve="myItemPanel" />
            </node>
            <node concept="liA8E" id="4KKQOHJ6CW4" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
              <node concept="2ShNRf" id="4KKQOHJ6D0u" role="37wK5m">
                <node concept="1pGfFk" id="7vufT$lAwdU" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                  <node concept="37vLTw" id="33en5x1Is2v" role="37wK5m">
                    <ref role="3cqZAo" node="1PYEMstjbPt" resolve="myItemPanel" />
                  </node>
                  <node concept="10M0yZ" id="7vufT$lAyhd" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                    <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4KKQOHJ6FUB" role="3cqZAp" />
        <node concept="3cpWs8" id="6iEw5xL2wih" role="3cqZAp">
          <node concept="3cpWsn" id="6iEw5xL2wii" role="3cpWs9">
            <property role="TrG5h" value="viewport" />
            <node concept="3uibUv" id="6iEw5xL2wij" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="2ShNRf" id="6iEw5xL2wxU" role="33vP2m">
              <node concept="1pGfFk" id="7vUP_qcHq8l" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6iEw5xL3wFB" role="3cqZAp">
          <node concept="2OqwBi" id="6iEw5xL3xbb" role="3clFbG">
            <node concept="37vLTw" id="6iEw5xL3wFA" role="2Oq$k0">
              <ref role="3cqZAo" node="6iEw5xL2wii" resolve="viewport" />
            </node>
            <node concept="liA8E" id="6iEw5xL3zOv" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
              <node concept="2ShNRf" id="6iEw5xL3zPY" role="37wK5m">
                <node concept="1pGfFk" id="7WiZGibkePz" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6iEw5xL2X1_" role="3cqZAp">
          <node concept="2OqwBi" id="6iEw5xL2XLN" role="3clFbG">
            <node concept="37vLTw" id="6iEw5xL2X1$" role="2Oq$k0">
              <ref role="3cqZAo" node="6iEw5xL2wii" resolve="viewport" />
            </node>
            <node concept="liA8E" id="6iEw5xL322s" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="33en5x1Irxy" role="37wK5m">
                <ref role="3cqZAo" node="1PYEMstjbPt" resolve="myItemPanel" />
              </node>
              <node concept="10M0yZ" id="7WiZGibkf9r" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6iEw5xL0tAH" role="3cqZAp">
          <node concept="3cpWsn" id="6iEw5xL0tAI" role="3cpWs9">
            <property role="TrG5h" value="scrollPane" />
            <node concept="3uibUv" id="6iEw5xL0tAJ" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
            </node>
            <node concept="2ShNRf" id="6iEw5xL0tN0" role="33vP2m">
              <node concept="1pGfFk" id="6iEw5xL0tMX" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JScrollPane" />
                <node concept="37vLTw" id="6iEw5xL2Xxu" role="37wK5m">
                  <ref role="3cqZAo" node="6iEw5xL2wii" resolve="viewport" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7WiZGibhZNb" role="3cqZAp">
          <node concept="2OqwBi" id="7WiZGibi0vk" role="3clFbG">
            <node concept="37vLTw" id="7WiZGibhZN9" role="2Oq$k0">
              <ref role="3cqZAo" node="6iEw5xL0tAI" resolve="scrollPane" />
            </node>
            <node concept="liA8E" id="7WiZGibi6Jb" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="7WiZGibi6NF" role="37wK5m">
                <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                <ref role="37wK5l" to="dxuu:~BorderFactory.createEmptyBorder()" resolve="createEmptyBorder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1BU6n7c25cc" role="3cqZAp">
          <node concept="2OqwBi" id="1BU6n7c2iwG" role="3clFbG">
            <node concept="2OqwBi" id="1BU6n7c26i5" role="2Oq$k0">
              <node concept="37vLTw" id="1BU6n7c25ca" role="2Oq$k0">
                <ref role="3cqZAo" node="6iEw5xL0tAI" resolve="scrollPane" />
              </node>
              <node concept="liA8E" id="1BU6n7c2ikj" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JScrollPane.getVerticalScrollBar()" resolve="getVerticalScrollBar" />
              </node>
            </node>
            <node concept="liA8E" id="1BU6n7c2n7x" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollBar.setUnitIncrement(int)" resolve="setUnitIncrement" />
              <node concept="3cmrfG" id="1BU6n7c2n9q" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1BU6n7c4i6P" role="3cqZAp">
          <node concept="2OqwBi" id="1BU6n7c4i6Q" role="3clFbG">
            <node concept="2OqwBi" id="1BU6n7c4i6R" role="2Oq$k0">
              <node concept="37vLTw" id="1BU6n7c4i6S" role="2Oq$k0">
                <ref role="3cqZAo" node="6iEw5xL0tAI" resolve="scrollPane" />
              </node>
              <node concept="liA8E" id="1BU6n7c4i6T" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JScrollPane.getHorizontalScrollBar()" resolve="getHorizontalScrollBar" />
              </node>
            </node>
            <node concept="liA8E" id="1BU6n7c4i6U" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollBar.setUnitIncrement(int)" resolve="setUnitIncrement" />
              <node concept="3cmrfG" id="1BU6n7c4i6V" role="37wK5m">
                <property role="3cmrfH" value="8" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4KKQOHJ6F3a" role="3cqZAp">
          <node concept="1rXfSq" id="4KKQOHJ6F39" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="6iEw5xL0LUm" role="37wK5m">
              <ref role="3cqZAo" node="6iEw5xL0tAI" resolve="scrollPane" />
            </node>
            <node concept="10M0yZ" id="12$80X55xhN" role="37wK5m">
              <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7XaT_J$ewCe" role="3cqZAp">
          <node concept="1rXfSq" id="7XaT_J$ewCc" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="33en5x1J5Xa" role="37wK5m">
              <ref role="3cqZAo" node="7XaT_J$dzkO" resolve="mySearchField" />
            </node>
            <node concept="10M0yZ" id="7XaT_J$exge" role="37wK5m">
              <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12$80X55rIN" role="3cqZAp" />
        <node concept="3clFbF" id="7vufT$lUA_y" role="3cqZAp">
          <node concept="2OqwBi" id="7vufT$lUB5W" role="3clFbG">
            <node concept="37vLTw" id="33en5x1Is$s" role="2Oq$k0">
              <ref role="3cqZAo" node="1PYEMstjbPt" resolve="myItemPanel" />
            </node>
            <node concept="liA8E" id="7vufT$lUCL7" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="7vufT$lUCPS" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7vufT$lSG02" role="3cqZAp">
          <node concept="2OqwBi" id="7vufT$lSGu3" role="3clFbG">
            <node concept="37vLTw" id="7vufT$lSG01" role="2Oq$k0">
              <ref role="3cqZAo" node="6iEw5xL2wii" resolve="viewport" />
            </node>
            <node concept="liA8E" id="7vufT$lSJD7" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="7vufT$lTCRI" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5lGdLibXOLL" role="jymVt" />
    <node concept="3clFb_" id="6W_V$eb3zbE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setBounds" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6W_V$eb3zbF" role="1B3o_S" />
      <node concept="3cqZAl" id="6W_V$eb3zbH" role="3clF45" />
      <node concept="37vLTG" id="6W_V$eb3zbI" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6W_V$eb3zbJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6W_V$eb3zbK" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6W_V$eb3zbL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6W_V$eb3zbM" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="10Oyi0" id="6W_V$eb3zbN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6W_V$eb3zbO" role="3clF46">
        <property role="TrG5h" value="h" />
        <node concept="10Oyi0" id="6W_V$eb3zbP" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6W_V$eb3zbU" role="3clF47">
        <node concept="3SKdUt" id="6W_V$eb6UAk" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXogjN" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXogjO" role="1PaTwD">
              <property role="3oM_SC" value="Relayout" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogjP" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogjQ" role="1PaTwD">
              <property role="3oM_SC" value="folders" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogjR" role="1PaTwD">
              <property role="3oM_SC" value="after" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogjS" role="1PaTwD">
              <property role="3oM_SC" value="resizing" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogjT" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXogjU" role="1PaTwD">
              <property role="3oM_SC" value="tool" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6W_V$eb6UG_" role="3cqZAp" />
        <node concept="3cpWs8" id="6W_V$eb2sPi" role="3cqZAp">
          <node concept="3cpWsn" id="6W_V$eb2sPj" role="3cpWs9">
            <property role="TrG5h" value="widthChanged" />
            <node concept="10P_77" id="6W_V$eb2sPd" role="1tU5fm" />
            <node concept="3y3z36" id="6W_V$eb2sPk" role="33vP2m">
              <node concept="1rXfSq" id="6W_V$eb2sPm" role="3uHU7w">
                <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
              </node>
              <node concept="37vLTw" id="6W_V$eb3B90" role="3uHU7B">
                <ref role="3cqZAo" node="6W_V$eb3zbM" resolve="w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6W_V$eb3zc1" role="3cqZAp">
          <node concept="3nyPlj" id="6W_V$eb3zc0" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.setBounds(int,int,int,int)" resolve="setBounds" />
            <node concept="37vLTw" id="6W_V$eb3zbW" role="37wK5m">
              <ref role="3cqZAo" node="6W_V$eb3zbI" resolve="x" />
            </node>
            <node concept="37vLTw" id="6W_V$eb3zbX" role="37wK5m">
              <ref role="3cqZAo" node="6W_V$eb3zbK" resolve="y" />
            </node>
            <node concept="37vLTw" id="6W_V$eb3zbY" role="37wK5m">
              <ref role="3cqZAo" node="6W_V$eb3zbM" resolve="w" />
            </node>
            <node concept="37vLTw" id="6W_V$eb3zbZ" role="37wK5m">
              <ref role="3cqZAo" node="6W_V$eb3zbO" resolve="h" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6W_V$eb6cBT" role="3cqZAp">
          <node concept="3clFbS" id="6W_V$eb6cBV" role="3clFbx">
            <node concept="3clFbF" id="6W_V$eb6dC6" role="3cqZAp">
              <node concept="2YIFZM" id="6W_V$eb6eee" role="3clFbG">
                <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
                <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                <node concept="1bVj0M" id="6W_V$eb6exv" role="37wK5m">
                  <node concept="3clFbS" id="6W_V$eb6exw" role="1bW5cS">
                    <node concept="3clFbF" id="6W_V$eb6f4e" role="3cqZAp">
                      <node concept="1rXfSq" id="6W_V$eb6f4d" role="3clFbG">
                        <ref role="37wK5l" node="33en5x1IKG_" resolve="reloadItems" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6W_V$eb6cZz" role="3clFbw">
            <ref role="3cqZAo" node="6W_V$eb2sPj" resolve="widthChanged" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6W_V$eb3zbV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7vUP_qcVc5N" role="jymVt" />
    <node concept="3clFb_" id="4kYnSKvay2m" role="jymVt">
      <property role="TrG5h" value="isToolVisible" />
      <node concept="10P_77" id="4kYnSKvaBFw" role="3clF45" />
      <node concept="3Tm1VV" id="4kYnSKvay2p" role="1B3o_S" />
      <node concept="3clFbS" id="4kYnSKvay2q" role="3clF47">
        <node concept="3clFbF" id="4kYnSKvankc" role="3cqZAp">
          <node concept="1Wc70l" id="7QdCAWP4n0E" role="3clFbG">
            <node concept="2EnYce" id="4kYnSKvd_gs" role="3uHU7w">
              <node concept="2OqwBi" id="4kYnSKvcPYl" role="2Oq$k0">
                <node concept="37vLTw" id="4kYnSKvcPzX" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kYnSKvcGHR" resolve="myTool" />
                </node>
                <node concept="liA8E" id="4kYnSKvcQi4" role="2OqNvi">
                  <ref role="37wK5l" to="71xd:~BaseTool.getToolWindow()" resolve="getToolWindow" />
                </node>
              </node>
              <node concept="liA8E" id="4kYnSKvaNIR" role="2OqNvi">
                <ref role="37wK5l" to="jkny:~ToolWindow.isVisible()" resolve="isVisible" />
              </node>
            </node>
            <node concept="1Wc70l" id="7jT9uK48wQL" role="3uHU7B">
              <node concept="3fqX7Q" id="7jT9uK48Qee" role="3uHU7B">
                <node concept="2OqwBi" id="7jT9uK48Qeg" role="3fr31v">
                  <node concept="37vLTw" id="7jT9uK48Qeh" role="2Oq$k0">
                    <ref role="3cqZAo" node="4kYnSKvcGHR" resolve="myTool" />
                  </node>
                  <node concept="liA8E" id="7jT9uK48Qei" role="2OqNvi">
                    <ref role="37wK5l" to="71xd:~BaseTool.isDisposed()" resolve="isDisposed" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7QdCAWP43nW" role="3uHU7w">
                <node concept="2XshWL" id="5pPNcuYIxsM" role="2OqNvi">
                  <ref role="2WH_rO" node="5pPNcuYHtnW" resolve="hasBeenRegistered" />
                </node>
                <node concept="1eOMI4" id="5pPNcuYI0M3" role="2Oq$k0">
                  <node concept="10QFUN" id="5pPNcuYHMjO" role="1eOMHV">
                    <node concept="1xUVSX" id="5pPNcuYHRFi" role="10QFUM">
                      <ref role="1xYkEM" node="5tr7YH$U35C" resolve="ContextActionsTool" />
                    </node>
                    <node concept="37vLTw" id="7QdCAWP3YVZ" role="10QFUP">
                      <ref role="3cqZAo" node="4kYnSKvcGHR" resolve="myTool" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="FmgK_vTEL9" role="jymVt" />
    <node concept="3clFb_" id="FmgK_vTEm9" role="jymVt">
      <property role="TrG5h" value="loadItems" />
      <node concept="3Tmbuc" id="FmgK_vTEma" role="1B3o_S" />
      <node concept="3cqZAl" id="FmgK_vTEmb" role="3clF45" />
      <node concept="37vLTG" id="FmgK_vTEm2" role="3clF46">
        <property role="TrG5h" value="items" />
        <node concept="_YKpA" id="FmgK_vUqq4" role="1tU5fm">
          <node concept="3uibUv" id="7pClCNY7o6z" role="_ZDj9">
            <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="FmgK_vTEls" role="3clF47">
        <node concept="3clFbJ" id="4kYnSKvbUwi" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="4kYnSKvbUwk" role="3clFbx">
            <node concept="3clFbF" id="4kYnSKvbYRS" role="3cqZAp">
              <node concept="37vLTI" id="4kYnSKvbZtb" role="3clFbG">
                <node concept="2ShNRf" id="4kYnSKvc03L" role="37vLTx">
                  <node concept="Tc6Ow" id="4kYnSKvc02A" role="2ShVmc">
                    <node concept="3uibUv" id="7pClCNY7phL" role="HW$YZ">
                      <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4kYnSKvbYRQ" role="37vLTJ">
                  <ref role="3cqZAo" node="FmgK_vTEm2" resolve="items" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4kYnSKvbXhH" role="3clFbw">
            <node concept="10Nm6u" id="4kYnSKvbYdQ" role="3uHU7w" />
            <node concept="37vLTw" id="4kYnSKvbVMF" role="3uHU7B">
              <ref role="3cqZAo" node="FmgK_vTEm2" resolve="items" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="33en5x1Jdbv" role="3cqZAp">
          <node concept="37vLTI" id="33en5x1JdD2" role="3clFbG">
            <node concept="37vLTw" id="33en5x1Je7b" role="37vLTx">
              <ref role="3cqZAo" node="FmgK_vTEm2" resolve="items" />
            </node>
            <node concept="37vLTw" id="33en5x1Jdbt" role="37vLTJ">
              <ref role="3cqZAo" node="33en5x1J7Vh" resolve="myLoadedItems" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1PYEMstjk1v" role="3cqZAp">
          <node concept="2OqwBi" id="1PYEMstjkjM" role="3clFbG">
            <node concept="37vLTw" id="1PYEMstjk1t" role="2Oq$k0">
              <ref role="3cqZAo" node="1PYEMstjbPt" resolve="myItemPanel" />
            </node>
            <node concept="liA8E" id="1PYEMstjpna" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.removeAll()" resolve="removeAll" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1yMvtXVC7ql" role="3cqZAp" />
        <node concept="3cpWs8" id="1yMvtXVC2og" role="3cqZAp">
          <node concept="3cpWsn" id="1yMvtXVC2oj" role="3cpWs9">
            <property role="TrG5h" value="folders" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7vufT$lpa91" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="17QB3L" id="7vufT$lpafn" role="11_B2D" />
              <node concept="3uibUv" id="XwFeF7Zb5E" role="11_B2D">
                <ref role="3uigEE" node="XwFeF7YZyF" resolve="Folder" />
              </node>
            </node>
            <node concept="2ShNRf" id="1yMvtXVC3zt" role="33vP2m">
              <node concept="1pGfFk" id="1yMvtXVC5hc" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~TreeMap.&lt;init&gt;()" resolve="TreeMap" />
                <node concept="17QB3L" id="1yMvtXVC5sZ" role="1pMfVU" />
                <node concept="3uibUv" id="XwFeF7Zbpw" role="1pMfVU">
                  <ref role="3uigEE" node="XwFeF7YZyF" resolve="Folder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1yMvtXVC7$K" role="3cqZAp" />
        <node concept="2Gpval" id="7pClCNYePvM" role="3cqZAp">
          <node concept="3clFbS" id="Y7dDcENke_" role="2LFqv$">
            <node concept="3clFbJ" id="7pClCNYgJ_B" role="3cqZAp">
              <node concept="3clFbS" id="7pClCNYgJ_D" role="3clFbx">
                <node concept="3N13vt" id="7pClCNYgM2q" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="7pClCNYgKqO" role="3clFbw">
                <node concept="1rXfSq" id="7pClCNYgKQq" role="3fr31v">
                  <ref role="37wK5l" node="7pClCNYeVmh" resolve="matchesFilter" />
                  <node concept="2GrUjf" id="7pClCNYgLmB" role="37wK5m">
                    <ref role="2Gs0qQ" node="7pClCNYePzm" resolve="item" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1yMvtXVDj0m" role="3cqZAp">
              <node concept="2OqwBi" id="1yMvtXVDj4Y" role="3clFbG">
                <node concept="1rXfSq" id="7pClCNYeNta" role="2Oq$k0">
                  <ref role="37wK5l" node="7vufT$luUVs" resolve="getOrCreateFolder" />
                  <node concept="2OqwBi" id="7pClCNYeNtb" role="37wK5m">
                    <node concept="2GrUjf" id="7pClCNYePzu" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7pClCNYePzm" resolve="item" />
                    </node>
                    <node concept="liA8E" id="7pClCNYeNtd" role="2OqNvi">
                      <ref role="37wK5l" node="7pClCNY6$va" resolve="getFolderName" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7pClCNYeNte" role="37wK5m">
                    <ref role="3cqZAo" node="1yMvtXVC2oj" resolve="folders" />
                  </node>
                </node>
                <node concept="liA8E" id="1yMvtXVDyIM" role="2OqNvi">
                  <ref role="37wK5l" node="XwFeF7YZ$P" resolve="addItem" />
                  <node concept="1rXfSq" id="7pClCNYeLrh" role="37wK5m">
                    <ref role="37wK5l" node="7pClCNYeDwp" resolve="createLabel" />
                    <node concept="2GrUjf" id="7pClCNYePzw" role="37wK5m">
                      <ref role="2Gs0qQ" node="7pClCNYePzm" resolve="item" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Y7dDcENmtc" role="2GsD0m">
            <ref role="3cqZAo" node="FmgK_vTEm2" resolve="items" />
          </node>
          <node concept="2GrKxI" id="7pClCNYePzm" role="2Gsz3X">
            <property role="TrG5h" value="item" />
          </node>
        </node>
        <node concept="3clFbH" id="1yMvtXVDzkH" role="3cqZAp" />
        <node concept="2Gpval" id="1yMvtXVDzWt" role="3cqZAp">
          <node concept="2GrKxI" id="1yMvtXVDzWv" role="2Gsz3X">
            <property role="TrG5h" value="folder" />
          </node>
          <node concept="3clFbS" id="1yMvtXVDzWx" role="2LFqv$">
            <node concept="3clFbF" id="1yMvtXVDHgq" role="3cqZAp">
              <node concept="2OqwBi" id="1yMvtXVDHuO" role="3clFbG">
                <node concept="37vLTw" id="1yMvtXVDHgp" role="2Oq$k0">
                  <ref role="3cqZAo" node="1PYEMstjbPt" resolve="myItemPanel" />
                </node>
                <node concept="liA8E" id="1yMvtXVDJzt" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                  <node concept="2OqwBi" id="1yMvtXVDKEx" role="37wK5m">
                    <node concept="2GrUjf" id="1yMvtXVDJBA" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1yMvtXVDzWv" resolve="folder" />
                    </node>
                    <node concept="liA8E" id="1yMvtXVDXKO" role="2OqNvi">
                      <ref role="37wK5l" node="XwFeF7YZ_1" resolve="getComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1yMvtXVD$tP" role="2GsD0m">
            <node concept="37vLTw" id="1yMvtXVD$fv" role="2Oq$k0">
              <ref role="3cqZAo" node="1yMvtXVC2oj" resolve="folders" />
            </node>
            <node concept="liA8E" id="1yMvtXVDGIo" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.values()" resolve="values" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7kKF9B4dgwR" role="3cqZAp" />
        <node concept="3clFbF" id="5_qa8CPIsXu" role="3cqZAp">
          <node concept="1rXfSq" id="5_qa8CPIsXs" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
          </node>
        </node>
        <node concept="3clFbF" id="5_qa8CPItPu" role="3cqZAp">
          <node concept="1rXfSq" id="5_qa8CPItPs" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.invalidate()" resolve="invalidate" />
          </node>
        </node>
        <node concept="3clFbF" id="5_qa8CPIuGD" role="3cqZAp">
          <node concept="1rXfSq" id="5_qa8CPIuGB" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.revalidate()" resolve="revalidate" />
          </node>
        </node>
        <node concept="3clFbF" id="5_qa8CPIv_q" role="3cqZAp">
          <node concept="1rXfSq" id="5_qa8CPIv_o" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1yjz781u9tY" role="lGtFl">
        <node concept="TUZQ0" id="1yjz781u9u1" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="1yjz781u9u3" role="zr_5Q">
            <ref role="zr_51" node="FmgK_vTEm2" resolve="items" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsBQ8" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBQ9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBQa" role="1PaTwD">
              <property role="3oM_SC" value="items" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBQb" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBQc" role="1PaTwD">
              <property role="3oM_SC" value="show" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBQ1" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBQ2" role="1PaTwD">
            <property role="3oM_SC" value="Creates" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQ3" role="1PaTwD">
            <property role="3oM_SC" value="Swing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQ4" role="1PaTwD">
            <property role="3oM_SC" value="components" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQ5" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQ6" role="1PaTwD">
            <property role="3oM_SC" value="each" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQ7" role="1PaTwD">
            <property role="3oM_SC" value="item" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYeRg$" role="jymVt" />
    <node concept="3clFb_" id="7pClCNYeVmh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="matchesFilter" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7pClCNYeVmk" role="3clF47">
        <node concept="3clFbJ" id="7pClCNYeZad" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYff81" role="3clFbw">
            <node concept="37vLTw" id="7pClCNYff82" role="2Oq$k0">
              <ref role="3cqZAo" node="XAdWLSg3Uc" resolve="myFilterString" />
            </node>
            <node concept="17RlXB" id="7pClCNYgbaQ" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="7pClCNYff86" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNYfaTg" role="3cqZAp">
              <node concept="3clFbT" id="7pClCNYfbkU" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNYgedy" role="3cqZAp" />
        <node concept="3clFbJ" id="7pClCNYgrjm" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNYgrjo" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNYgvqK" role="3cqZAp">
              <node concept="3clFbT" id="7pClCNYgvPP" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7pClCNYgFtb" role="3clFbw">
            <node concept="2OqwBi" id="7pClCNYgFtc" role="2Oq$k0">
              <node concept="2OqwBi" id="7pClCNYgFtd" role="2Oq$k0">
                <node concept="37vLTw" id="7pClCNYgFte" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYeXt4" resolve="item" />
                </node>
                <node concept="liA8E" id="7pClCNYgFtf" role="2OqNvi">
                  <ref role="37wK5l" node="7pClCNY6zia" resolve="getLabel" />
                </node>
              </node>
              <node concept="liA8E" id="7pClCNYgFtg" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
              </node>
            </node>
            <node concept="liA8E" id="7pClCNYgFth" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
              <node concept="37vLTw" id="7pClCNYgFti" role="37wK5m">
                <ref role="3cqZAo" node="XAdWLSg3Uc" resolve="myFilterString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNYgvQc" role="3cqZAp" />
        <node concept="3clFbJ" id="7pClCNYgxTt" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNYgxTv" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNYgA1m" role="3cqZAp">
              <node concept="3clFbT" id="7pClCNYgAsr" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7pClCNYgDUO" role="3clFbw">
            <node concept="2OqwBi" id="7pClCNYgDUP" role="3uHU7w">
              <node concept="2OqwBi" id="7pClCNYgDUQ" role="2Oq$k0">
                <node concept="2OqwBi" id="7pClCNYgDUR" role="2Oq$k0">
                  <node concept="37vLTw" id="7pClCNYgDUS" role="2Oq$k0">
                    <ref role="3cqZAo" node="7pClCNYeXt4" resolve="item" />
                  </node>
                  <node concept="liA8E" id="7pClCNYgDUT" role="2OqNvi">
                    <ref role="37wK5l" node="7pClCNY6$va" resolve="getFolderName" />
                  </node>
                </node>
                <node concept="liA8E" id="7pClCNYgDUU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                </node>
              </node>
              <node concept="liA8E" id="7pClCNYgDUV" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="37vLTw" id="7pClCNYgDUW" role="37wK5m">
                  <ref role="3cqZAo" node="XAdWLSg3Uc" resolve="myFilterString" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7pClCNYgDUX" role="3uHU7B">
              <node concept="2OqwBi" id="7pClCNYgDUY" role="2Oq$k0">
                <node concept="37vLTw" id="7pClCNYgDUZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYeXt4" resolve="item" />
                </node>
                <node concept="liA8E" id="7pClCNYgDV0" role="2OqNvi">
                  <ref role="37wK5l" node="7pClCNY6$va" resolve="getFolderName" />
                </node>
              </node>
              <node concept="17RvpY" id="7pClCNYgDV1" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNYgCp$" role="3cqZAp" />
        <node concept="3cpWs6" id="7pClCNYf0aq" role="3cqZAp">
          <node concept="3clFbT" id="7pClCNYgARQ" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7pClCNYeTms" role="1B3o_S" />
      <node concept="10P_77" id="7pClCNYeVau" role="3clF45" />
      <node concept="37vLTG" id="7pClCNYeXt4" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="7pClCNYeXt3" role="1tU5fm">
          <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYeJfH" role="jymVt" />
    <node concept="3clFb_" id="7pClCNYeDwp" role="jymVt">
      <property role="TrG5h" value="createLabel" />
      <node concept="3Tm6S6" id="7pClCNYeDwq" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNYeDwr" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
      </node>
      <node concept="37vLTG" id="7pClCNYeDwe" role="3clF46">
        <property role="TrG5h" value="item" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7pClCNYeDwf" role="1tU5fm">
          <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
        </node>
      </node>
      <node concept="3clFbS" id="7pClCNYeDt$" role="3clF47">
        <node concept="3cpWs8" id="7pClCNYeDtB" role="3cqZAp">
          <node concept="3cpWsn" id="7pClCNYeDtC" role="3cpWs9">
            <property role="TrG5h" value="jlabel" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7pClCNYeDtD" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="7pClCNYeDtE" role="33vP2m">
              <node concept="1pGfFk" id="7pClCNYeDtF" role="2ShVmc">
                <ref role="37wK5l" node="XwFeF7YM$y" resolve="HoverLabel" />
                <node concept="3K4zz7" id="7pClCNYeDtG" role="37wK5m">
                  <node concept="3clFbC" id="7pClCNYeDtH" role="3K4Cdx">
                    <node concept="Rm8GO" id="7pClCNYeDtI" role="3uHU7w">
                      <ref role="Rm8GQ" node="7vUP_qcx$oQ" resolve="LIST" />
                      <ref role="1Px2BO" node="7vUP_qcx$o$" resolve="ViewType" />
                    </node>
                    <node concept="37vLTw" id="7pClCNYeDtJ" role="3uHU7B">
                      <ref role="3cqZAo" node="7vUP_qcyfK$" resolve="myViewType" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7pClCNYeDtK" role="3K4E3e">
                    <node concept="37vLTw" id="7pClCNYeDwg" role="2Oq$k0">
                      <ref role="3cqZAo" node="7pClCNYeDwe" resolve="item" />
                    </node>
                    <node concept="liA8E" id="7pClCNYeDtM" role="2OqNvi">
                      <ref role="37wK5l" node="7pClCNY6zia" resolve="getLabel" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="7pClCNYeDtN" role="3K4GZi">
                    <ref role="37wK5l" node="3sOUzIK4_jQ" resolve="abbreviate" />
                    <node concept="2OqwBi" id="7pClCNYeDtO" role="37wK5m">
                      <node concept="37vLTw" id="7pClCNYeDwk" role="2Oq$k0">
                        <ref role="3cqZAo" node="7pClCNYeDwe" resolve="item" />
                      </node>
                      <node concept="liA8E" id="7pClCNYeDtQ" role="2OqNvi">
                        <ref role="37wK5l" node="7pClCNY6zia" resolve="getLabel" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="7pClCNYeDtR" role="37wK5m">
                      <property role="3cmrfH" value="15" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNYeDtS" role="3cqZAp" />
        <node concept="3clFbJ" id="7pClCNYeDtT" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNYeDtU" role="3clFbx">
            <node concept="3cpWs8" id="7pClCNYeDtV" role="3cqZAp">
              <node concept="3cpWsn" id="7pClCNYeDtW" role="3cpWs9">
                <property role="TrG5h" value="font" />
                <node concept="3uibUv" id="7pClCNYeDtX" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
                </node>
                <node concept="2OqwBi" id="7pClCNYeDtY" role="33vP2m">
                  <node concept="37vLTw" id="7pClCNYeDtZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
                  </node>
                  <node concept="liA8E" id="7pClCNYeDu0" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getFont()" resolve="getFont" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7pClCNYeDu1" role="3cqZAp">
              <node concept="2OqwBi" id="7pClCNYeDu2" role="3clFbG">
                <node concept="37vLTw" id="7pClCNYeDu3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
                </node>
                <node concept="liA8E" id="7pClCNYeDu4" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
                  <node concept="2OqwBi" id="7pClCNYeDu5" role="37wK5m">
                    <node concept="37vLTw" id="7pClCNYeDu6" role="2Oq$k0">
                      <ref role="3cqZAo" node="7pClCNYeDtW" resolve="font" />
                    </node>
                    <node concept="liA8E" id="7pClCNYeDu7" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Font.deriveFont(float)" resolve="deriveFont" />
                      <node concept="17qRlL" id="7pClCNYeDu8" role="37wK5m">
                        <node concept="2$xPTn" id="7pClCNYeDu9" role="3uHU7B">
                          <property role="2$xPTl" value="0.7f" />
                        </node>
                        <node concept="2OqwBi" id="7pClCNYeDua" role="3uHU7w">
                          <node concept="37vLTw" id="7pClCNYeDub" role="2Oq$k0">
                            <ref role="3cqZAo" node="7pClCNYeDtW" resolve="font" />
                          </node>
                          <node concept="liA8E" id="7pClCNYeDuc" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Font.getSize()" resolve="getSize" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7pClCNYeDud" role="3cqZAp">
              <node concept="2OqwBi" id="7pClCNYeDue" role="3clFbG">
                <node concept="37vLTw" id="7pClCNYeDuf" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
                </node>
                <node concept="liA8E" id="7pClCNYeDug" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JLabel.setHorizontalAlignment(int)" resolve="setHorizontalAlignment" />
                  <node concept="10M0yZ" id="7pClCNYeDuh" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~JLabel" resolve="JLabel" />
                    <ref role="3cqZAo" to="dxuu:~SwingConstants.CENTER" resolve="CENTER" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7pClCNYeDui" role="3clFbw">
            <node concept="Rm8GO" id="7pClCNYeDuj" role="3uHU7w">
              <ref role="Rm8GQ" node="7vUP_qcx$Bp" resolve="SYMBOLS" />
              <ref role="1Px2BO" node="7vUP_qcx$o$" resolve="ViewType" />
            </node>
            <node concept="37vLTw" id="7pClCNYeDuk" role="3uHU7B">
              <ref role="3cqZAo" node="7vUP_qcyfK$" resolve="myViewType" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNYeDul" role="3cqZAp" />
        <node concept="3clFbF" id="7pClCNYeDum" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYeDun" role="3clFbG">
            <node concept="37vLTw" id="7pClCNYeDuo" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
            </node>
            <node concept="liA8E" id="7pClCNYeDup" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setToolTipText(java.lang.String)" resolve="setToolTipText" />
              <node concept="2OqwBi" id="7pClCNYeDuq" role="37wK5m">
                <node concept="37vLTw" id="7pClCNYeDwh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYeDwe" resolve="item" />
                </node>
                <node concept="liA8E" id="7pClCNYeDus" role="2OqNvi">
                  <ref role="37wK5l" node="7pClCNY6$Zi" resolve="getTooltip" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNYeDut" role="3cqZAp" />
        <node concept="3clFbF" id="7pClCNYeDuu" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYeDuv" role="3clFbG">
            <node concept="37vLTw" id="7pClCNYeDuw" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
            </node>
            <node concept="liA8E" id="7pClCNYeDux" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
              <node concept="2ShNRf" id="7pClCNYeDuy" role="37wK5m">
                <node concept="YeOm9" id="7pClCNYeDuz" role="2ShVmc">
                  <node concept="1Y3b0j" id="7pClCNYeDu$" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                    <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                    <node concept="3Tm1VV" id="7pClCNYeDu_" role="1B3o_S" />
                    <node concept="3clFb_" id="7pClCNYeDuA" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="mouseClicked" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="7pClCNYeDuB" role="1B3o_S" />
                      <node concept="3cqZAl" id="7pClCNYeDuC" role="3clF45" />
                      <node concept="37vLTG" id="7pClCNYeDuD" role="3clF46">
                        <property role="TrG5h" value="event" />
                        <node concept="3uibUv" id="7pClCNYeDuE" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7pClCNYeDuF" role="3clF47">
                        <node concept="3clFbJ" id="7pClCNYeDuG" role="3cqZAp">
                          <node concept="3clFbS" id="7pClCNYeDuH" role="3clFbx">
                            <node concept="3cpWs6" id="7pClCNYeDuI" role="3cqZAp" />
                          </node>
                          <node concept="3eOSWO" id="7pClCNYeDuJ" role="3clFbw">
                            <node concept="3cmrfG" id="7pClCNYeDuK" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="7pClCNYeDuL" role="3uHU7B">
                              <node concept="37vLTw" id="7pClCNYeDuM" role="2Oq$k0">
                                <ref role="3cqZAo" node="7pClCNYeDuD" resolve="event" />
                              </node>
                              <node concept="liA8E" id="7pClCNYeDuN" role="2OqNvi">
                                <ref role="37wK5l" to="hyam:~MouseEvent.getClickCount()" resolve="getClickCount" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7pClCNYeDuO" role="3cqZAp">
                          <node concept="3clFbS" id="7pClCNYeDuP" role="3clFbx">
                            <node concept="3cpWs6" id="7pClCNYeDuQ" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="7pClCNYeDuR" role="3clFbw">
                            <node concept="10Nm6u" id="7pClCNYeDuS" role="3uHU7w" />
                            <node concept="37vLTw" id="7pClCNYeDuT" role="3uHU7B">
                              <ref role="3cqZAo" node="7pClCNYbdkY" resolve="myItemExecutor" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="7pClCNYeDuU" role="3cqZAp" />
                        <node concept="3clFbF" id="7pClCNYeDuV" role="3cqZAp">
                          <node concept="2OqwBi" id="7pClCNYeDuW" role="3clFbG">
                            <node concept="37vLTw" id="7pClCNYeDuX" role="2Oq$k0">
                              <ref role="3cqZAo" node="7pClCNYbdkY" resolve="myItemExecutor" />
                            </node>
                            <node concept="liA8E" id="7pClCNYeDuY" role="2OqNvi">
                              <ref role="37wK5l" node="7pClCNYb7Is" resolve="execute" />
                              <node concept="37vLTw" id="7pClCNYeDwi" role="37wK5m">
                                <ref role="3cqZAo" node="7pClCNYeDwe" resolve="item" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7pClCNYeDv0" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNYeDv1" role="3cqZAp" />
        <node concept="3cpWs8" id="7kAP1VuPQUH" role="3cqZAp">
          <node concept="3cpWsn" id="7kAP1VuPQUI" role="3cpWs9">
            <property role="TrG5h" value="itemIcon" />
            <node concept="3uibUv" id="7kAP1VuPQUG" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
            </node>
            <node concept="2OqwBi" id="7kAP1VuPQUJ" role="33vP2m">
              <node concept="37vLTw" id="7kAP1VuPQUK" role="2Oq$k0">
                <ref role="3cqZAo" node="7pClCNYeDwe" resolve="item" />
              </node>
              <node concept="liA8E" id="7kAP1VuPQUL" role="2OqNvi">
                <ref role="37wK5l" node="7pClCNY6zSu" resolve="getIcon" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7kAP1VuPKeJ" role="3cqZAp">
          <node concept="3clFbS" id="7kAP1VuPKeL" role="3clFbx">
            <node concept="3clFbF" id="7pClCNYeDvJ" role="3cqZAp">
              <node concept="2OqwBi" id="7pClCNYeDvK" role="3clFbG">
                <node concept="37vLTw" id="7pClCNYeDvL" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
                </node>
                <node concept="liA8E" id="7pClCNYeDvM" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JLabel.setIcon(javax.swing.Icon)" resolve="setIcon" />
                  <node concept="3K4zz7" id="6YRAqpThvr_" role="37wK5m">
                    <node concept="3clFbC" id="6YRAqpThvrA" role="3K4Cdx">
                      <node concept="Rm8GO" id="6YRAqpThvrB" role="3uHU7w">
                        <ref role="Rm8GQ" node="7vUP_qcx$Bp" resolve="SYMBOLS" />
                        <ref role="1Px2BO" node="7vUP_qcx$o$" resolve="ViewType" />
                      </node>
                      <node concept="37vLTw" id="6YRAqpThvrC" role="3uHU7B">
                        <ref role="3cqZAo" node="7vUP_qcyfK$" resolve="myViewType" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6YRAqpThvrD" role="3K4E3e">
                      <ref role="3cqZAo" node="7kAP1VuPQUI" resolve="itemIcon" />
                    </node>
                    <node concept="2YIFZM" id="6YRAqpThvrE" role="3K4GZi">
                      <ref role="37wK5l" node="4q$a58K_2FC" resolve="scaleIfNeeded" />
                      <ref role="1Pybhc" node="4q$a58KzpoP" resolve="ScaledIcon" />
                      <node concept="3cmrfG" id="6YRAqpThvrF" role="37wK5m">
                        <property role="3cmrfH" value="16" />
                      </node>
                      <node concept="37vLTw" id="6YRAqpThvrG" role="37wK5m">
                        <ref role="3cqZAo" node="7kAP1VuPQUI" resolve="itemIcon" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7kAP1VuPO0y" role="3clFbw">
            <node concept="10Nm6u" id="7kAP1VuPOM_" role="3uHU7w" />
            <node concept="37vLTw" id="7kAP1VuPQUM" role="3uHU7B">
              <ref role="3cqZAo" node="7kAP1VuPQUI" resolve="itemIcon" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7pClCNYeDvX" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNYeDvY" role="3clFbx">
            <node concept="3clFbF" id="7pClCNYeDvZ" role="3cqZAp">
              <node concept="2OqwBi" id="7pClCNYeDw0" role="3clFbG">
                <node concept="37vLTw" id="7pClCNYeDw1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
                </node>
                <node concept="liA8E" id="7pClCNYeDw2" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JLabel.setHorizontalTextPosition(int)" resolve="setHorizontalTextPosition" />
                  <node concept="10M0yZ" id="7pClCNYeDw3" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~JLabel" resolve="JLabel" />
                    <ref role="3cqZAo" to="dxuu:~SwingConstants.CENTER" resolve="CENTER" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7pClCNYeDw4" role="3cqZAp">
              <node concept="2OqwBi" id="7pClCNYeDw5" role="3clFbG">
                <node concept="37vLTw" id="7pClCNYeDw6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
                </node>
                <node concept="liA8E" id="7pClCNYeDw7" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JLabel.setVerticalTextPosition(int)" resolve="setVerticalTextPosition" />
                  <node concept="10M0yZ" id="7pClCNYeDw8" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~JLabel" resolve="JLabel" />
                    <ref role="3cqZAo" to="dxuu:~SwingConstants.BOTTOM" resolve="BOTTOM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7pClCNYeDw9" role="3clFbw">
            <node concept="37vLTw" id="7pClCNYeDwa" role="3uHU7B">
              <ref role="3cqZAo" node="7vUP_qcyfK$" resolve="myViewType" />
            </node>
            <node concept="Rm8GO" id="7pClCNYeDwb" role="3uHU7w">
              <ref role="Rm8GQ" node="7vUP_qcx$Bp" resolve="SYMBOLS" />
              <ref role="1Px2BO" node="7vUP_qcx$o$" resolve="ViewType" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7pClCNYeDwc" role="3cqZAp">
          <node concept="37vLTw" id="7pClCNYeDwd" role="3cqZAk">
            <ref role="3cqZAo" node="7pClCNYeDtC" resolve="jlabel" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7pClCNYeDws" role="Sfmx6">
        <ref role="3uigEE" to="jsda:~InvalidDnDOperationException" resolve="InvalidDnDOperationException" />
      </node>
      <node concept="3uibUv" id="7pClCNYeDwt" role="Sfmx6">
        <ref role="3uigEE" to="z60i:~HeadlessException" resolve="HeadlessException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3sOUzIK4tIr" role="jymVt" />
    <node concept="2YIFZL" id="3sOUzIK4_jQ" role="jymVt">
      <property role="TrG5h" value="abbreviate" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3sOUzIK4_jT" role="3clF47">
        <node concept="3clFbJ" id="3sOUzIK4D95" role="3cqZAp">
          <node concept="3clFbC" id="3sOUzIK4Egf" role="3clFbw">
            <node concept="10Nm6u" id="3sOUzIK4EFl" role="3uHU7w" />
            <node concept="37vLTw" id="3sOUzIK4D$g" role="3uHU7B">
              <ref role="3cqZAo" node="3sOUzIK4CaK" resolve="str" />
            </node>
          </node>
          <node concept="3clFbS" id="3sOUzIK4D97" role="3clFbx">
            <node concept="3cpWs6" id="3sOUzIK4FmG" role="3cqZAp">
              <node concept="10Nm6u" id="3sOUzIK4Gdd" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3sOUzIK4H5P" role="3cqZAp">
          <node concept="3clFbS" id="3sOUzIK4H5R" role="3clFbx">
            <node concept="3cpWs6" id="3sOUzIK4L24" role="3cqZAp">
              <node concept="37vLTw" id="3sOUzIK4Ltp" role="3cqZAk">
                <ref role="3cqZAo" node="3sOUzIK4CaK" resolve="str" />
              </node>
            </node>
          </node>
          <node concept="2dkUwp" id="3sOUzIK4JPC" role="3clFbw">
            <node concept="37vLTw" id="3sOUzIK4Khr" role="3uHU7w">
              <ref role="3cqZAo" node="3sOUzIK4Cca" resolve="maxWidth" />
            </node>
            <node concept="2OqwBi" id="3sOUzIK4IiH" role="3uHU7B">
              <node concept="37vLTw" id="3sOUzIK4HAP" role="2Oq$k0">
                <ref role="3cqZAo" node="3sOUzIK4CaK" resolve="str" />
              </node>
              <node concept="liA8E" id="3sOUzIK4IPP" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3sOUzIK4Mv9" role="3cqZAp">
          <node concept="3cpWs3" id="3sOUzIK4SJC" role="3cqZAk">
            <node concept="Xl_RD" id="3sOUzIK4TaE" role="3uHU7w">
              <property role="Xl_RC" value="..." />
            </node>
            <node concept="2OqwBi" id="3sOUzIK4NNg" role="3uHU7B">
              <node concept="37vLTw" id="3sOUzIK4N5G" role="2Oq$k0">
                <ref role="3cqZAo" node="3sOUzIK4CaK" resolve="str" />
              </node>
              <node concept="liA8E" id="3sOUzIK4OaC" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="3sOUzIK4OMd" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cpWsd" id="3sOUzIK4ROw" role="37wK5m">
                  <node concept="3cmrfG" id="3sOUzIK4Sfy" role="3uHU7w">
                    <property role="3cmrfH" value="3" />
                  </node>
                  <node concept="37vLTw" id="3sOUzIK4QvN" role="3uHU7B">
                    <ref role="3cqZAo" node="3sOUzIK4Cca" resolve="maxWidth" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3sOUzIK4y_A" role="1B3o_S" />
      <node concept="17QB3L" id="3sOUzIK4_en" role="3clF45" />
      <node concept="37vLTG" id="3sOUzIK4CaK" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="3sOUzIK4CaJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3sOUzIK4Cca" role="3clF46">
        <property role="TrG5h" value="maxWidth" />
        <node concept="10Oyi0" id="3sOUzIK4Ckg" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="33en5x1JmCq" role="jymVt" />
    <node concept="3clFb_" id="33en5x1IKG_" role="jymVt">
      <property role="TrG5h" value="reloadItems" />
      <node concept="3cqZAl" id="33en5x1IKGB" role="3clF45" />
      <node concept="3Tm1VV" id="33en5x1IKGC" role="1B3o_S" />
      <node concept="3clFbS" id="33en5x1IKGD" role="3clF47">
        <node concept="3clFbF" id="33en5x1JoWg" role="3cqZAp">
          <node concept="1rXfSq" id="33en5x1JoWf" role="3clFbG">
            <ref role="37wK5l" node="FmgK_vTEm9" resolve="loadItems" />
            <node concept="37vLTw" id="33en5x1Jpkq" role="37wK5m">
              <ref role="3cqZAo" node="33en5x1J7Vh" resolve="myLoadedItems" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="FmgK_vTTkL" role="jymVt" />
    <node concept="3clFb_" id="7vufT$luUVs" role="jymVt">
      <property role="TrG5h" value="getOrCreateFolder" />
      <node concept="37vLTG" id="7vufT$lv5wL" role="3clF46">
        <property role="TrG5h" value="folderName" />
        <node concept="17QB3L" id="7vufT$lv7h5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1yMvtXVC7Yd" role="3clF46">
        <property role="TrG5h" value="folders" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1yMvtXVC7Yf" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="1yMvtXVC7Yg" role="11_B2D" />
          <node concept="3uibUv" id="XwFeF7Z93W" role="11_B2D">
            <ref role="3uigEE" node="XwFeF7YZyF" resolve="Folder" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="XwFeF7Z8cX" role="3clF45">
        <ref role="3uigEE" node="XwFeF7YZyF" resolve="Folder" />
      </node>
      <node concept="3Tm6S6" id="7pClCNYccEe" role="1B3o_S" />
      <node concept="3clFbS" id="7vufT$luUVw" role="3clF47">
        <node concept="3clFbJ" id="6c435dJI1g3" role="3cqZAp">
          <node concept="3clFbS" id="6c435dJI1g5" role="3clFbx">
            <node concept="3clFbF" id="6c435dJI3ui" role="3cqZAp">
              <node concept="37vLTI" id="6c435dJI3T2" role="3clFbG">
                <node concept="Xl_RD" id="6c435dJI4br" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="6c435dJI3ug" role="37vLTJ">
                  <ref role="3cqZAo" node="7vufT$lv5wL" resolve="folderName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6c435dJI2U1" role="3clFbw">
            <node concept="10Nm6u" id="6c435dJI2Vs" role="3uHU7w" />
            <node concept="37vLTw" id="6c435dJI2uE" role="3uHU7B">
              <ref role="3cqZAo" node="7vufT$lv5wL" resolve="folderName" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vufT$lv7Po" role="3cqZAp">
          <node concept="3cpWsn" id="7vufT$lv7Pp" role="3cpWs9">
            <property role="TrG5h" value="folder" />
            <node concept="3uibUv" id="XwFeF7Z9YD" role="1tU5fm">
              <ref role="3uigEE" node="XwFeF7YZyF" resolve="Folder" />
            </node>
            <node concept="2OqwBi" id="7vufT$lv9VO" role="33vP2m">
              <node concept="37vLTw" id="1yMvtXVCuL6" role="2Oq$k0">
                <ref role="3cqZAo" node="1yMvtXVC7Yd" resolve="folders" />
              </node>
              <node concept="liA8E" id="7vufT$lvcif" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="7vufT$lvcn0" role="37wK5m">
                  <ref role="3cqZAo" node="7vufT$lv5wL" resolve="folderName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7vufT$lvc$V" role="3cqZAp">
          <node concept="3clFbS" id="7vufT$lvc$Y" role="3clFbx">
            <node concept="3clFbF" id="7vufT$lvcJD" role="3cqZAp">
              <node concept="37vLTI" id="7vufT$lvcZE" role="3clFbG">
                <node concept="2ShNRf" id="7vufT$lvd2a" role="37vLTx">
                  <node concept="1pGfFk" id="7vufT$lvd1W" role="2ShVmc">
                    <ref role="37wK5l" node="XwFeF7YZz2" resolve="Folder" />
                    <node concept="37vLTw" id="7vufT$lvd3o" role="37wK5m">
                      <ref role="3cqZAo" node="7vufT$lv5wL" resolve="folderName" />
                    </node>
                    <node concept="37vLTw" id="7vUP_qczRzV" role="37wK5m">
                      <ref role="3cqZAo" node="7vUP_qcyfK$" resolve="myViewType" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7vufT$lvcJC" role="37vLTJ">
                  <ref role="3cqZAo" node="7vufT$lv7Pp" resolve="folder" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vufT$lvd7C" role="3cqZAp">
              <node concept="2OqwBi" id="7vufT$lvdht" role="3clFbG">
                <node concept="37vLTw" id="1yMvtXVCwy_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1yMvtXVC7Yd" resolve="folders" />
                </node>
                <node concept="liA8E" id="7vufT$lvhFs" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="7vufT$lvhJM" role="37wK5m">
                    <ref role="3cqZAo" node="7vufT$lv5wL" resolve="folderName" />
                  </node>
                  <node concept="37vLTw" id="7vufT$lvhSJ" role="37wK5m">
                    <ref role="3cqZAo" node="7vufT$lv7Pp" resolve="folder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7vufT$lvcFn" role="3clFbw">
            <node concept="10Nm6u" id="7vufT$lvcFZ" role="3uHU7w" />
            <node concept="37vLTw" id="7vufT$lvcEG" role="3uHU7B">
              <ref role="3cqZAo" node="7vufT$lv7Pp" resolve="folder" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7vufT$lviae" role="3cqZAp">
          <node concept="37vLTw" id="7vufT$lvk9w" role="3cqZAk">
            <ref role="3cqZAo" node="7vufT$lv7Pp" resolve="folder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1yMvtXVCq5t" role="jymVt" />
    <node concept="2tJIrI" id="Y7dDcELIqU" role="jymVt" />
    <node concept="3clFb_" id="7vUP_qcy1We" role="jymVt">
      <property role="TrG5h" value="setViewType" />
      <node concept="37vLTG" id="7vUP_qcy9j2" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7vUP_qcyaxh" role="1tU5fm">
          <ref role="3uigEE" node="7vUP_qcx$o$" resolve="ViewType" />
        </node>
      </node>
      <node concept="3cqZAl" id="7vUP_qcy1Wg" role="3clF45" />
      <node concept="3Tm1VV" id="7vUP_qcy1Wh" role="1B3o_S" />
      <node concept="3clFbS" id="7vUP_qcy1Wi" role="3clF47">
        <node concept="3clFbF" id="7vUP_qcyyXe" role="3cqZAp">
          <node concept="37vLTI" id="7vUP_qcyzyC" role="3clFbG">
            <node concept="37vLTw" id="7vUP_qcyzWf" role="37vLTx">
              <ref role="3cqZAo" node="7vUP_qcy9j2" resolve="type" />
            </node>
            <node concept="37vLTw" id="7vUP_qcyyXd" role="37vLTJ">
              <ref role="3cqZAo" node="7vUP_qcyfK$" resolve="myViewType" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7vUP_qcy$Rc" role="3cqZAp">
          <node concept="1rXfSq" id="7vUP_qcy$Ra" role="3clFbG">
            <ref role="37wK5l" node="33en5x1IKG_" resolve="reloadItems" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vUP_qcCvNn" role="jymVt" />
    <node concept="3clFb_" id="40NmswouV_4" role="jymVt">
      <property role="TrG5h" value="getViewType" />
      <node concept="3uibUv" id="40Nmswov3WR" role="3clF45">
        <ref role="3uigEE" node="7vUP_qcx$o$" resolve="ViewType" />
      </node>
      <node concept="3Tm1VV" id="40NmswouV_7" role="1B3o_S" />
      <node concept="3clFbS" id="40NmswouV_8" role="3clF47">
        <node concept="3clFbF" id="40Nmswov5Ng" role="3cqZAp">
          <node concept="37vLTw" id="40Nmswov5Nf" role="3clFbG">
            <ref role="3cqZAo" node="7vUP_qcyfK$" resolve="myViewType" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNY6q6E" role="jymVt" />
    <node concept="3HP615" id="7pClCNY6w3$" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="IItem" />
      <node concept="3clFb_" id="7pClCNY6zia" role="jymVt">
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getLabel" />
        <node concept="3clFbS" id="7pClCNY6zid" role="3clF47" />
        <node concept="3Tm1VV" id="7pClCNY6zie" role="1B3o_S" />
        <node concept="17QB3L" id="7pClCNY6zcB" role="3clF45" />
      </node>
      <node concept="3clFb_" id="7pClCNY6zSu" role="jymVt">
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getIcon" />
        <node concept="3clFbS" id="7pClCNY6zSx" role="3clF47" />
        <node concept="3Tm1VV" id="7pClCNY6zSy" role="1B3o_S" />
        <node concept="3uibUv" id="7pClCNY6zMJ" role="3clF45">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="3clFb_" id="7pClCNY6$va" role="jymVt">
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getFolderName" />
        <node concept="3clFbS" id="7pClCNY6$vd" role="3clF47" />
        <node concept="3Tm1VV" id="7pClCNY6$ve" role="1B3o_S" />
        <node concept="17QB3L" id="7pClCNY6$pn" role="3clF45" />
      </node>
      <node concept="3clFb_" id="7pClCNY6$Zi" role="jymVt">
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getTooltip" />
        <node concept="3clFbS" id="7pClCNY6$Zl" role="3clF47" />
        <node concept="3Tm1VV" id="7pClCNY6$Zm" role="1B3o_S" />
        <node concept="17QB3L" id="7pClCNY6$Tn" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="7pClCNY6_6B" role="jymVt" />
      <node concept="3clFb_" id="7pClCNY7wmw" role="jymVt">
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="isVisible" />
        <node concept="3clFbS" id="7pClCNY7wmz" role="3clF47" />
        <node concept="3Tm1VV" id="7pClCNY7wm$" role="1B3o_S" />
        <node concept="10P_77" id="7pClCNY7teb" role="3clF45" />
      </node>
      <node concept="3clFb_" id="46W80XAeuvd" role="jymVt">
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getCommandPolicy" />
        <node concept="3clFbS" id="46W80XAeuvg" role="3clF47" />
        <node concept="3Tm1VV" id="46W80XAeuvh" role="1B3o_S" />
        <node concept="3uibUv" id="46W80XAetJD" role="3clF45">
          <ref role="3uigEE" to="uddc:~CommandPolicy" resolve="CommandPolicy" />
        </node>
        <node concept="2AHcQZ" id="46W80XAewSC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFb_" id="7pClCNY6_yG" role="jymVt">
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="execute" />
        <node concept="3clFbS" id="7pClCNY6_yJ" role="3clF47" />
        <node concept="3Tm1VV" id="7pClCNY6_yK" role="1B3o_S" />
        <node concept="3cqZAl" id="7pClCNY6_sC" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="7pClCNY6t5Q" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5lGdLibXIsr" role="1B3o_S" />
    <node concept="3uibUv" id="5lGdLibXIvG" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
    </node>
  </node>
  <node concept="312cEu" id="7pClCNY9qN8">
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="ToolController" />
    <property role="1sVAO0" value="false" />
    <node concept="312cEg" id="7pClCNYafOO" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5Xa7gk5cNo9" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNYafOI" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="7pClCNY9s$3" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myToolComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5Xa7gk5cNEt" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNY9szG" role="1tU5fm">
        <ref role="3uigEE" node="5lGdLibXIsq" resolve="ToolComponent" />
      </node>
    </node>
    <node concept="312cEg" id="5Xa7gk5cy2Q" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMenuProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5Xa7gk5cy2R" role="1B3o_S" />
      <node concept="3uibUv" id="5Xa7gk5cy2S" role="1tU5fm">
        <ref role="3uigEE" to="v8cy:~SelectionMenuProvider" resolve="SelectionMenuProvider" />
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNY9MWT" role="jymVt" />
    <node concept="312cEg" id="7pClCNY9yji" role="jymVt">
      <property role="TrG5h" value="myLastSelection" />
      <property role="34CwA1" value="true" />
      <node concept="3Tm6S6" id="7pClCNY9yjj" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNYh_co" role="1tU5fm">
        <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
      </node>
    </node>
    <node concept="312cEg" id="7pClCNY9yjl" role="jymVt">
      <property role="TrG5h" value="myNextSelection" />
      <property role="34CwA1" value="true" />
      <node concept="3Tm6S6" id="7pClCNY9yjm" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNYhA8a" role="1tU5fm">
        <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYakjo" role="jymVt" />
    <node concept="312cEg" id="7pClCNY9NBk" role="jymVt">
      <property role="TrG5h" value="myUpdateTimer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7pClCNY9NBl" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNY9NBm" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Timer" resolve="Timer" />
      </node>
      <node concept="2ShNRf" id="7pClCNY9PdO" role="33vP2m">
        <node concept="1pGfFk" id="7pClCNY9PdP" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~Timer.&lt;init&gt;(int,java.awt.event.ActionListener)" resolve="Timer" />
          <node concept="3cmrfG" id="7pClCNY9PdQ" role="37wK5m">
            <property role="3cmrfH" value="1000" />
          </node>
          <node concept="2ShNRf" id="7pClCNY9PdR" role="37wK5m">
            <node concept="YeOm9" id="7pClCNY9PdS" role="2ShVmc">
              <node concept="1Y3b0j" id="7pClCNY9PdT" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="7pClCNY9PdU" role="1B3o_S" />
                <node concept="3clFb_" id="7pClCNY9PdV" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="actionPerformed" />
                  <property role="DiZV1" value="false" />
                  <property role="od$2w" value="false" />
                  <node concept="3Tm1VV" id="7pClCNY9PdW" role="1B3o_S" />
                  <node concept="3cqZAl" id="7pClCNY9PdX" role="3clF45" />
                  <node concept="37vLTG" id="7pClCNY9PdY" role="3clF46">
                    <property role="TrG5h" value="p0" />
                    <node concept="3uibUv" id="7pClCNY9PdZ" role="1tU5fm">
                      <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7pClCNY9Pe0" role="3clF47">
                    <node concept="3clFbJ" id="10AfktVIMv$" role="3cqZAp">
                      <node concept="3clFbS" id="10AfktVIMvA" role="3clFbx">
                        <node concept="3cpWs6" id="10AfktVJgHR" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="10AfktVJ7D0" role="3clFbw">
                        <node concept="37vLTw" id="10AfktVJ4Wu" role="2Oq$k0">
                          <ref role="3cqZAo" node="7pClCNYafOO" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="10AfktVJdky" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~Project.isDisposed()" resolve="isDisposed" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7pClCNY9Pe1" role="3cqZAp">
                      <node concept="1rXfSq" id="7pClCNY9Pe2" role="3clFbG">
                        <ref role="37wK5l" node="7pClCNY9Rk4" resolve="checkActiveEditorChanged" />
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
    <node concept="312cEg" id="7pClCNYam8B" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySelectionListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7pClCNYalvP" role="1B3o_S" />
      <node concept="3uibUv" id="7pClCNYazSX" role="1tU5fm">
        <ref role="3uigEE" node="7pClCNYavjw" resolve="ToolController.ProjectSelectionListener" />
      </node>
      <node concept="2ShNRf" id="7pClCNYamL4" role="33vP2m">
        <node concept="HV5vD" id="7pClCNYa$6K" role="2ShVmc">
          <ref role="HV5vE" node="7pClCNYavjw" resolve="ToolController.ProjectSelectionListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNY9sLo" role="jymVt" />
    <node concept="3clFbW" id="7pClCNY9sYI" role="jymVt">
      <node concept="3cqZAl" id="7pClCNY9sYJ" role="3clF45" />
      <node concept="3Tm1VV" id="7pClCNY9sYK" role="1B3o_S" />
      <node concept="3clFbS" id="7pClCNY9sYM" role="3clF47">
        <node concept="3clFbF" id="7pClCNY9Au7" role="3cqZAp">
          <node concept="37vLTI" id="7pClCNY9AUW" role="3clFbG">
            <node concept="37vLTw" id="7pClCNY9BfF" role="37vLTx">
              <ref role="3cqZAo" node="7pClCNY9_s_" resolve="project" />
            </node>
            <node concept="37vLTw" id="7pClCNYah2H" role="37vLTJ">
              <ref role="3cqZAo" node="7pClCNYafOO" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pClCNY9sYQ" role="3cqZAp">
          <node concept="37vLTI" id="7pClCNY9sYS" role="3clFbG">
            <node concept="37vLTw" id="7pClCNY9sYW" role="37vLTJ">
              <ref role="3cqZAo" node="7pClCNY9s$3" resolve="myToolComponent" />
            </node>
            <node concept="37vLTw" id="7pClCNY9sYX" role="37vLTx">
              <ref role="3cqZAo" node="7pClCNY9sYP" resolve="toolComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Xa7gk5cOeg" role="3cqZAp">
          <node concept="37vLTI" id="5Xa7gk5cOeh" role="3clFbG">
            <node concept="37vLTw" id="5Xa7gk5cOei" role="37vLTx">
              <ref role="3cqZAo" node="5Xa7gk5cNZr" resolve="menuProvider" />
            </node>
            <node concept="37vLTw" id="5Xa7gk5cOej" role="37vLTJ">
              <ref role="3cqZAo" node="5Xa7gk5cy2Q" resolve="myMenuProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNY9P0f" role="3cqZAp" />
        <node concept="3clFbF" id="7pClCNY9Pe4" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNY9Pe5" role="3clFbG">
            <node concept="37vLTw" id="7pClCNY9Pe6" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNY9NBk" resolve="myUpdateTimer" />
            </node>
            <node concept="liA8E" id="7pClCNY9Pe7" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.start()" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pClCNYaqns" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYaroh" role="3clFbG">
            <node concept="2OqwBi" id="7pClCNYaqDC" role="2Oq$k0">
              <node concept="37vLTw" id="7pClCNYaqnq" role="2Oq$k0">
                <ref role="3cqZAo" node="7pClCNYafOO" resolve="myProject" />
              </node>
              <node concept="liA8E" id="7pClCNYaqM8" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7pClCNYar0Q" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7pClCNYarxG" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.registerExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="registerExtension" />
              <node concept="37vLTw" id="7pClCNYarJy" role="37wK5m">
                <ref role="3cqZAo" node="7pClCNYam8B" resolve="mySelectionListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pClCNYbxej" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYbxUm" role="3clFbG">
            <node concept="37vLTw" id="7pClCNYbxeh" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNY9s$3" resolve="myToolComponent" />
            </node>
            <node concept="liA8E" id="7pClCNYbzjt" role="2OqNvi">
              <ref role="37wK5l" node="7pClCNYbhp4" resolve="setItemExecutor" />
              <node concept="Xjq3P" id="7pClCNYbz$4" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7pClCNY9_s_" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7pClCNYagVY" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7pClCNY9sYP" role="3clF46">
        <property role="TrG5h" value="toolComponent" />
        <node concept="3uibUv" id="7pClCNY9sYO" role="1tU5fm">
          <ref role="3uigEE" node="5lGdLibXIsq" resolve="ToolComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="5Xa7gk5cNZr" role="3clF46">
        <property role="TrG5h" value="menuProvider" />
        <node concept="3uibUv" id="5Xa7gk5cNZs" role="1tU5fm">
          <ref role="3uigEE" to="v8cy:~SelectionMenuProvider" resolve="SelectionMenuProvider" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNY9Tv7" role="jymVt" />
    <node concept="3clFb_" id="7pClCNY9UxU" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="7pClCNY9UxV" role="3clF45" />
      <node concept="3Tm1VV" id="7pClCNY9UxW" role="1B3o_S" />
      <node concept="3clFbS" id="7pClCNY9UxX" role="3clF47">
        <node concept="3clFbF" id="7pClCNY9UxY" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNY9UxZ" role="3clFbG">
            <node concept="37vLTw" id="7pClCNY9Uy0" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNY9NBk" resolve="myUpdateTimer" />
            </node>
            <node concept="liA8E" id="7pClCNY9Uy1" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~Timer.stop()" resolve="stop" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pClCNYb$mz" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYb_0A" role="3clFbG">
            <node concept="37vLTw" id="7pClCNYb$mx" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNY9s$3" resolve="myToolComponent" />
            </node>
            <node concept="liA8E" id="7pClCNYbApa" role="2OqNvi">
              <ref role="37wK5l" node="7pClCNYbhp4" resolve="setItemExecutor" />
              <node concept="10Nm6u" id="7pClCNYbAEy" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pClCNYasb1" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYatnp" role="3clFbG">
            <node concept="2OqwBi" id="7pClCNYasOd" role="2Oq$k0">
              <node concept="37vLTw" id="7pClCNYasaZ" role="2Oq$k0">
                <ref role="3cqZAo" node="7pClCNYafOO" resolve="myProject" />
              </node>
              <node concept="liA8E" id="7pClCNYat2X" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7pClCNYathN" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7pClCNYatB6" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.unregisterExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="unregisterExtension" />
              <node concept="37vLTw" id="7pClCNYatOZ" role="37wK5m">
                <ref role="3cqZAo" node="7pClCNYam8B" resolve="mySelectionListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYhQ4R" role="jymVt" />
    <node concept="3clFb_" id="7pClCNY9rtb" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="37vLTG" id="7pClCNY9rtc" role="3clF46">
        <property role="TrG5h" value="selection" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7pClCNYhA$9" role="1tU5fm">
          <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
        </node>
        <node concept="2AHcQZ" id="7pClCNYim23" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="7pClCNY9rte" role="3clF45" />
      <node concept="3Tm6S6" id="7pClCNYiqNp" role="1B3o_S" />
      <node concept="3clFbS" id="7pClCNY9rtg" role="3clF47">
        <node concept="3clFbJ" id="7pClCNY9rth" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNY9rti" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNY9rtj" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="7pClCNY9rtk" role="3clFbw">
            <node concept="2OqwBi" id="7pClCNY9vAv" role="3fr31v">
              <node concept="37vLTw" id="7pClCNY9v3G" role="2Oq$k0">
                <ref role="3cqZAo" node="7pClCNY9s$3" resolve="myToolComponent" />
              </node>
              <node concept="liA8E" id="7pClCNY9wP4" role="2OqNvi">
                <ref role="37wK5l" node="4kYnSKvay2m" resolve="isToolVisible" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7pClCNY9rtm" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNY9rtn" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNY9rto" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7pClCNYinbJ" role="3clFbw">
            <node concept="37vLTw" id="7pClCNYimJC" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNY9rtc" resolve="selection" />
            </node>
            <node concept="liA8E" id="7pClCNYinw6" role="2OqNvi">
              <ref role="37wK5l" to="lwvz:~Selection.isSame(jetbrains.mps.openapi.editor.selection.Selection)" resolve="isSame" />
              <node concept="37vLTw" id="7pClCNYinSA" role="37wK5m">
                <ref role="3cqZAo" node="7pClCNY9yji" resolve="myLastSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pClCNY9rts" role="3cqZAp">
          <node concept="37vLTI" id="7pClCNY9rtt" role="3clFbG">
            <node concept="37vLTw" id="7pClCNY9rtu" role="37vLTx">
              <ref role="3cqZAo" node="7pClCNY9rtc" resolve="selection" />
            </node>
            <node concept="37vLTw" id="7pClCNY9rtv" role="37vLTJ">
              <ref role="3cqZAo" node="7pClCNY9yjl" resolve="myNextSelection" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7pClCNY9rtw" role="3cqZAp" />
        <node concept="3clFbF" id="7pClCNY9rtx" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNY9rty" role="3clFbG">
            <node concept="2YIFZM" id="7pClCNY9rtz" role="2Oq$k0">
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
            </node>
            <node concept="liA8E" id="7pClCNY9rt$" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.executeOnPooledThread(java.lang.Runnable)" resolve="executeOnPooledThread" />
              <node concept="1bVj0M" id="7pClCNY9rt_" role="37wK5m">
                <node concept="3clFbS" id="7pClCNY9rtA" role="1bW5cS">
                  <node concept="3J1_TO" id="7pClCNY9rtB" role="3cqZAp">
                    <node concept="3clFbS" id="7pClCNY9rtC" role="1zxBo7">
                      <node concept="3clFbF" id="7pClCNY9rtD" role="3cqZAp">
                        <node concept="2YIFZM" id="7pClCNY9rtE" role="3clFbG">
                          <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                          <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                          <node concept="3cmrfG" id="7pClCNY9rtF" role="37wK5m">
                            <property role="3cmrfH" value="500" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="7pClCNY9rtG" role="1zxBo5">
                      <node concept="XOnhg" id="7pClCNY9rtJ" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="xvs04dHxYM" role="1tU5fm">
                          <node concept="3uibUv" id="7pClCNY9rtK" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7pClCNY9rtH" role="1zc67A">
                        <node concept="3cpWs6" id="7pClCNY9rtI" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7pClCNY9rtL" role="3cqZAp" />
                  <node concept="3clFbJ" id="7pClCNY9rtM" role="3cqZAp">
                    <node concept="3clFbS" id="7pClCNY9rtN" role="3clFbx">
                      <node concept="3cpWs6" id="7pClCNY9rtO" role="3cqZAp" />
                    </node>
                    <node concept="3y3z36" id="7pClCNY9rtP" role="3clFbw">
                      <node concept="37vLTw" id="7pClCNY9rtQ" role="3uHU7B">
                        <ref role="3cqZAo" node="7pClCNY9yjl" resolve="myNextSelection" />
                      </node>
                      <node concept="37vLTw" id="7pClCNY9rtR" role="3uHU7w">
                        <ref role="3cqZAo" node="7pClCNY9rtc" resolve="selection" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7pClCNY9rtS" role="3cqZAp">
                    <node concept="37vLTI" id="7pClCNY9rtT" role="3clFbG">
                      <node concept="37vLTw" id="7pClCNY9rtU" role="37vLTx">
                        <ref role="3cqZAo" node="7pClCNY9rtc" resolve="selection" />
                      </node>
                      <node concept="37vLTw" id="7pClCNY9rtV" role="37vLTJ">
                        <ref role="3cqZAo" node="7pClCNY9yji" resolve="myLastSelection" />
                      </node>
                    </node>
                  </node>
                  <node concept="3J1_TO" id="7pClCNY9rtW" role="3cqZAp">
                    <node concept="3clFbS" id="7pClCNY9rtX" role="1zxBo7">
                      <node concept="3cpWs8" id="7pClCNY9rtY" role="3cqZAp">
                        <node concept="3cpWsn" id="7pClCNY9rtZ" role="3cpWs9">
                          <property role="TrG5h" value="items" />
                          <node concept="_YKpA" id="7pClCNY9ru0" role="1tU5fm">
                            <node concept="3uibUv" id="7pClCNY9ru1" role="_ZDj9">
                              <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="7pClCNY9ru2" role="33vP2m" />
                        </node>
                      </node>
                      <node concept="1QHqEK" id="7pClCNY9ru3" role="3cqZAp">
                        <node concept="1QHqEC" id="7pClCNY9ru4" role="1QHqEI">
                          <node concept="3clFbS" id="7pClCNY9ru5" role="1bW5cS">
                            <node concept="3clFbF" id="7pClCNY9ru6" role="3cqZAp">
                              <node concept="37vLTI" id="7pClCNY9ru7" role="3clFbG">
                                <node concept="1rXfSq" id="7pClCNY9ru8" role="37vLTx">
                                  <ref role="37wK5l" node="5Xa7gk5cy3b" resolve="queryItems" />
                                  <node concept="37vLTw" id="7pClCNY9ru9" role="37wK5m">
                                    <ref role="3cqZAo" node="7pClCNY9rtc" resolve="selection" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="7pClCNY9rua" role="37vLTJ">
                                  <ref role="3cqZAo" node="7pClCNY9rtZ" resolve="items" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6TqVKW2O4IE" role="3cqZAp">
                              <node concept="37vLTI" id="6TqVKW2O4II" role="3clFbG">
                                <node concept="37vLTw" id="6TqVKW2O4IG" role="37vLTJ">
                                  <ref role="3cqZAo" node="7pClCNY9rtZ" resolve="items" />
                                </node>
                                <node concept="2OqwBi" id="6TqVKW2NXLQ" role="37vLTx">
                                  <node concept="2OqwBi" id="6TqVKW2O4IK" role="2Oq$k0">
                                    <node concept="2OqwBi" id="6TqVKW2O1Ut" role="2Oq$k0">
                                      <node concept="37vLTw" id="6TqVKW2O4IO" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7pClCNY9rtZ" resolve="items" />
                                      </node>
                                      <node concept="3zZkjj" id="6TqVKW2NX5z" role="2OqNvi">
                                        <node concept="1bVj0M" id="6TqVKW2NX5$" role="23t8la">
                                          <node concept="3clFbS" id="6TqVKW2NX5_" role="1bW5cS">
                                            <node concept="3clFbF" id="6TqVKW2NX5A" role="3cqZAp">
                                              <node concept="2OqwBi" id="6TqVKW2NX5B" role="3clFbG">
                                                <node concept="37vLTw" id="6TqVKW2NX5C" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5W7E4fV0XlG" resolve="it" />
                                                </node>
                                                <node concept="liA8E" id="6TqVKW2NX5D" role="2OqNvi">
                                                  <ref role="37wK5l" node="7pClCNY7wmw" resolve="isVisible" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="5W7E4fV0XlG" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="5W7E4fV0XlH" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2S7cBI" id="6TqVKW2O4IM" role="2OqNvi">
                                      <node concept="1bVj0M" id="6TqVKW2O4IS" role="23t8la">
                                        <node concept="3clFbS" id="6TqVKW2O4IQ" role="1bW5cS">
                                          <node concept="3clFbF" id="6TqVKW2O4IW" role="3cqZAp">
                                            <node concept="2OqwBi" id="6TqVKW2O4IU" role="3clFbG">
                                              <node concept="37vLTw" id="6TqVKW2O4J0" role="2Oq$k0">
                                                <ref role="3cqZAo" node="5W7E4fV0XlI" resolve="it" />
                                              </node>
                                              <node concept="liA8E" id="6TqVKW2O4IY" role="2OqNvi">
                                                <ref role="37wK5l" node="7pClCNY6zia" resolve="getLabel" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="gl6BB" id="5W7E4fV0XlI" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="5W7E4fV0XlJ" role="1tU5fm" />
                                        </node>
                                      </node>
                                      <node concept="1nlBCl" id="6TqVKW2O4J6" role="2S7zOq">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="6TqVKW2NYKS" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7pClCNYah_F" role="ukAjM">
                          <node concept="37vLTw" id="7pClCNYahfN" role="2Oq$k0">
                            <ref role="3cqZAo" node="7pClCNYafOO" resolve="myProject" />
                          </node>
                          <node concept="liA8E" id="7pClCNYahY4" role="2OqNvi">
                            <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7pClCNY9ruw" role="3cqZAp">
                        <node concept="2YIFZM" id="7pClCNY9rux" role="3clFbG">
                          <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
                          <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                          <node concept="1bVj0M" id="7pClCNY9ruy" role="37wK5m">
                            <node concept="3clFbS" id="7pClCNY9ruz" role="1bW5cS">
                              <node concept="3clFbF" id="7pClCNY9CZb" role="3cqZAp">
                                <node concept="2OqwBi" id="7pClCNY9DyC" role="3clFbG">
                                  <node concept="37vLTw" id="6TqVKW2O5Ka" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7pClCNY9s$3" resolve="myToolComponent" />
                                  </node>
                                  <node concept="liA8E" id="7pClCNY9EST" role="2OqNvi">
                                    <ref role="37wK5l" node="FmgK_vTEm9" resolve="loadItems" />
                                    <node concept="37vLTw" id="7pClCNY9F9W" role="37wK5m">
                                      <ref role="3cqZAo" node="7pClCNY9rtZ" resolve="items" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="7pClCNY9ruZ" role="1zxBo5">
                      <node concept="XOnhg" id="7pClCNY9rv4" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="xvs04dHxYO" role="1tU5fm">
                          <node concept="3uibUv" id="7pClCNY9rv5" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7pClCNY9rv0" role="1zc67A">
                        <node concept="RRSsy" id="3jYQuSB39La" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fh_4/error" />
                          <node concept="Xl_RD" id="7pClCNY9rv2" role="RRSoy">
                            <property role="Xl_RC" value="Context actions update failed" />
                          </node>
                          <node concept="37vLTw" id="7pClCNY9rv3" role="RRSow">
                            <ref role="3cqZAo" node="7pClCNY9rv4" resolve="ex" />
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
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYiyL$" role="jymVt" />
    <node concept="3clFb_" id="5Xa7gk5cy3b" role="jymVt">
      <property role="TrG5h" value="queryItems" />
      <property role="1EzhhJ" value="false" />
      <node concept="_YKpA" id="5Xa7gk5cy3c" role="3clF45">
        <node concept="3uibUv" id="5Xa7gk5cy3d" role="_ZDj9">
          <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5Xa7gk5d8fG" role="1B3o_S" />
      <node concept="37vLTG" id="5Xa7gk5cy3f" role="3clF46">
        <property role="TrG5h" value="selection" />
        <node concept="3uibUv" id="5Xa7gk5cy3g" role="1tU5fm">
          <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5cy3h" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5Xa7gk5cy3i" role="3clF47">
        <node concept="3clFbF" id="5Xa7gk5cy3j" role="3cqZAp">
          <node concept="2YIFZM" id="5Xa7gk5cy3k" role="3clFbG">
            <ref role="37wK5l" node="5Xa7gk5bu$I" resolve="convertItems" />
            <ref role="1Pybhc" node="5Xa7gk5b7L1" resolve="ItemConverter" />
            <node concept="2OqwBi" id="5Xa7gk5cy3l" role="37wK5m">
              <node concept="37vLTw" id="5Xa7gk5cy3m" role="2Oq$k0">
                <ref role="3cqZAo" node="5Xa7gk5cy2Q" resolve="myMenuProvider" />
              </node>
              <node concept="liA8E" id="5Xa7gk5cy3n" role="2OqNvi">
                <ref role="37wK5l" to="v8cy:~SelectionMenuProvider.getMenuItems(jetbrains.mps.openapi.editor.selection.Selection)" resolve="getMenuItems" />
                <node concept="37vLTw" id="5Xa7gk5cy3o" role="37wK5m">
                  <ref role="3cqZAo" node="5Xa7gk5cy3f" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Xa7gk5cEB2" role="jymVt" />
    <node concept="3clFb_" id="7pClCNY9Rk4" role="jymVt">
      <property role="TrG5h" value="checkActiveEditorChanged" />
      <node concept="3cqZAl" id="7pClCNY9Rk5" role="3clF45" />
      <node concept="3Tm6S6" id="7pClCNYiC0T" role="1B3o_S" />
      <node concept="3clFbS" id="7pClCNY9Rk7" role="3clF47">
        <node concept="3clFbJ" id="2iCva9pgTIw" role="3cqZAp">
          <node concept="3clFbS" id="2iCva9pgTIy" role="3clFbx">
            <node concept="3cpWs6" id="2iCva9phj3B" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2iCva9phekV" role="3clFbw">
            <node concept="37vLTw" id="2iCva9phbE1" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNYafOO" resolve="myProject" />
            </node>
            <node concept="liA8E" id="2iCva9phgk4" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.isDisposed()" resolve="isDisposed" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7pClCNY9Rk8" role="3cqZAp">
          <node concept="3cpWsn" id="7pClCNY9Rk9" role="3cpWs9">
            <property role="TrG5h" value="activeEditor" />
            <node concept="3uibUv" id="7pClCNY9Rka" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2YIFZM" id="7pClCNY9Rkb" role="33vP2m">
              <ref role="1Pybhc" node="7vUP_qcTFox" resolve="ContextActionsUtil" />
              <ref role="37wK5l" node="7vUP_qcTYKv" resolve="findActiveEditor" />
              <node concept="37vLTw" id="7pClCNY9S1C" role="37wK5m">
                <ref role="3cqZAo" node="7pClCNY9s$3" resolve="myToolComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7pClCNY9Rkd" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNY9Rke" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNY9Rkf" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7pClCNY9Rkg" role="3clFbw">
            <node concept="10Nm6u" id="7pClCNY9Rkh" role="3uHU7w" />
            <node concept="37vLTw" id="7pClCNY9Rki" role="3uHU7B">
              <ref role="3cqZAo" node="7pClCNY9Rk9" resolve="activeEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7pClCNY9Rkj" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNY9Rkk" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNY9Rkl" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7pClCNY9Rkm" role="3clFbw">
            <node concept="10Nm6u" id="7pClCNY9Rkn" role="3uHU7w" />
            <node concept="2EnYce" id="7pClCNY9Rko" role="3uHU7B">
              <node concept="37vLTw" id="7pClCNY9Rkp" role="2Oq$k0">
                <ref role="3cqZAo" node="7pClCNY9yji" resolve="myLastSelection" />
              </node>
              <node concept="liA8E" id="7pClCNY9Rkq" role="2OqNvi">
                <ref role="37wK5l" to="lwvz:~Selection.getEditorComponent()" resolve="getEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7pClCNY9Rkr" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNY9Rks" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNY9Rkt" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7pClCNY9Rku" role="3clFbw">
            <node concept="2EnYce" id="7pClCNY9Rkv" role="3uHU7w">
              <node concept="37vLTw" id="7pClCNY9Rkw" role="2Oq$k0">
                <ref role="3cqZAo" node="7pClCNY9yji" resolve="myLastSelection" />
              </node>
              <node concept="liA8E" id="7pClCNY9Rkx" role="2OqNvi">
                <ref role="37wK5l" to="lwvz:~Selection.getEditorComponent()" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="37vLTw" id="7pClCNY9Rky" role="3uHU7B">
              <ref role="3cqZAo" node="7pClCNY9Rk9" resolve="activeEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7pClCNY9Rkz" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNY9Rk$" role="3clFbx">
            <node concept="3cpWs6" id="7pClCNY9Rk_" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7pClCNY9RkA" role="3clFbw">
            <node concept="2EnYce" id="7pClCNY9RkB" role="3uHU7w">
              <node concept="37vLTw" id="7pClCNY9RkC" role="2Oq$k0">
                <ref role="3cqZAo" node="7pClCNY9yjl" resolve="myNextSelection" />
              </node>
              <node concept="liA8E" id="7pClCNY9RkD" role="2OqNvi">
                <ref role="37wK5l" to="lwvz:~Selection.getEditorComponent()" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="37vLTw" id="7pClCNY9RkE" role="3uHU7B">
              <ref role="3cqZAo" node="7pClCNY9Rk9" resolve="activeEditor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7pClCNY9RkF" role="3cqZAp">
          <node concept="3cpWsn" id="7pClCNY9RkG" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="3uibUv" id="7pClCNY9RkH" role="1tU5fm">
              <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
            </node>
            <node concept="2OqwBi" id="7pClCNY9RkI" role="33vP2m">
              <node concept="2OqwBi" id="7pClCNY9RkJ" role="2Oq$k0">
                <node concept="37vLTw" id="7pClCNY9RkK" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNY9Rk9" resolve="activeEditor" />
                </node>
                <node concept="liA8E" id="7pClCNY9RkL" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                </node>
              </node>
              <node concept="liA8E" id="7pClCNY9RkM" role="2OqNvi">
                <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7pClCNY9RkN" role="3cqZAp">
          <node concept="3clFbS" id="7pClCNY9RkO" role="3clFbx">
            <node concept="3clFbF" id="7pClCNY9RkP" role="3cqZAp">
              <node concept="1rXfSq" id="7pClCNY9RkQ" role="3clFbG">
                <ref role="37wK5l" node="7pClCNY9rtb" resolve="update" />
                <node concept="37vLTw" id="7pClCNYilU3" role="37wK5m">
                  <ref role="3cqZAo" node="7pClCNY9RkG" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7pClCNY9RkU" role="3clFbw">
            <node concept="10Nm6u" id="7pClCNY9RkV" role="3uHU7w" />
            <node concept="37vLTw" id="7pClCNY9RkW" role="3uHU7B">
              <ref role="3cqZAo" node="7pClCNY9RkG" resolve="selection" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYau4j" role="jymVt" />
    <node concept="3clFb_" id="7pClCNYbrG4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="execute" />
      <node concept="3Tm1VV" id="7pClCNYbrG6" role="1B3o_S" />
      <node concept="3cqZAl" id="7pClCNYbrG7" role="3clF45" />
      <node concept="37vLTG" id="7pClCNYbrG8" role="3clF46">
        <property role="TrG5h" value="item" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7pClCNYbrG9" role="1tU5fm">
          <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
        </node>
      </node>
      <node concept="3clFbS" id="7pClCNYbrGa" role="3clF47">
        <node concept="3cpWs8" id="7pClCNYbsnB" role="3cqZAp">
          <node concept="3cpWsn" id="7pClCNYbsnC" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="3uibUv" id="7pClCNYbsnD" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="1eOMI4" id="7pClCNYbsnE" role="33vP2m">
              <node concept="10QFUN" id="7pClCNYbsnF" role="1eOMHV">
                <node concept="2OqwBi" id="7pClCNYbsnG" role="10QFUP">
                  <node concept="37vLTw" id="7pClCNYbsnH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7pClCNY9yji" resolve="myLastSelection" />
                  </node>
                  <node concept="liA8E" id="7pClCNYbsnI" role="2OqNvi">
                    <ref role="37wK5l" to="lwvz:~Selection.getEditorComponent()" resolve="getEditorComponent" />
                  </node>
                </node>
                <node concept="3uibUv" id="7pClCNYbsnJ" role="10QFUM">
                  <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="46W80XAeoKD" role="3cqZAp">
          <node concept="2OqwBi" id="46W80XAeAnh" role="3KbGdf">
            <node concept="37vLTw" id="46W80XAe_Zo" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNYbrG8" resolve="item" />
            </node>
            <node concept="liA8E" id="46W80XAeAJ0" role="2OqNvi">
              <ref role="37wK5l" node="46W80XAeuvd" resolve="getCommandPolicy" />
            </node>
          </node>
          <node concept="3clFbS" id="46W80XAeoKH" role="3Kb1Dw">
            <node concept="YS8fn" id="46W80XAeCQv" role="3cqZAp">
              <node concept="2ShNRf" id="46W80XAeD2g" role="YScLw">
                <node concept="1pGfFk" id="46W80XAeSbx" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="46W80XAeSY9" role="37wK5m">
                    <node concept="2OqwBi" id="46W80XAeTvs" role="3uHU7w">
                      <node concept="37vLTw" id="46W80XAeT9H" role="2Oq$k0">
                        <ref role="3cqZAo" node="7pClCNYbrG8" resolve="item" />
                      </node>
                      <node concept="liA8E" id="46W80XAeTKT" role="2OqNvi">
                        <ref role="37wK5l" node="46W80XAeuvd" resolve="getCommandPolicy" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="46W80XAeSpO" role="3uHU7B">
                      <property role="Xl_RC" value="Unknown command policy " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="46W80XAeAJv" role="3KbHQx">
            <node concept="Rm8GO" id="46W80XAeB$2" role="3Kbmr1">
              <ref role="Rm8GQ" to="uddc:~CommandPolicy.COMMAND_REQUIRED" resolve="COMMAND_REQUIRED" />
              <ref role="1Px2BO" to="uddc:~CommandPolicy" resolve="CommandPolicy" />
            </node>
            <node concept="3clFbS" id="46W80XAeAJx" role="3Kbo56">
              <node concept="3clFbF" id="46W80XAeU_j" role="3cqZAp">
                <node concept="2OqwBi" id="46W80XAeU_k" role="3clFbG">
                  <node concept="2OqwBi" id="46W80XAeU_l" role="2Oq$k0">
                    <node concept="2OqwBi" id="46W80XAeU_m" role="2Oq$k0">
                      <node concept="2OqwBi" id="46W80XAeU_n" role="2Oq$k0">
                        <node concept="37vLTw" id="46W80XAeU_o" role="2Oq$k0">
                          <ref role="3cqZAo" node="7pClCNYbsnC" resolve="editorComponent" />
                        </node>
                        <node concept="liA8E" id="46W80XAeU_p" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="46W80XAeU_q" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="liA8E" id="46W80XAeU_r" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                  <node concept="liA8E" id="46W80XAeU_s" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                    <node concept="2ShNRf" id="46W80XAeU_t" role="37wK5m">
                      <node concept="YeOm9" id="46W80XAeU_u" role="2ShVmc">
                        <node concept="1Y3b0j" id="46W80XAeU_v" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="nlpl:~EditorCommand" resolve="EditorCommand" />
                          <ref role="37wK5l" to="nlpl:~EditorCommand.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorComponent)" resolve="EditorCommand" />
                          <node concept="3Tm1VV" id="46W80XAeU_w" role="1B3o_S" />
                          <node concept="37vLTw" id="46W80XAeU_x" role="37wK5m">
                            <ref role="3cqZAo" node="7pClCNYbsnC" resolve="editorComponent" />
                          </node>
                          <node concept="3clFb_" id="46W80XAeU_y" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="doExecute" />
                            <property role="DiZV1" value="false" />
                            <property role="od$2w" value="false" />
                            <node concept="3Tmbuc" id="46W80XAeU_z" role="1B3o_S" />
                            <node concept="3cqZAl" id="46W80XAeU_$" role="3clF45" />
                            <node concept="3clFbS" id="46W80XAeU__" role="3clF47">
                              <node concept="3clFbF" id="46W80XAeU_A" role="3cqZAp">
                                <node concept="2OqwBi" id="46W80XAeU_B" role="3clFbG">
                                  <node concept="37vLTw" id="46W80XAeU_C" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7pClCNYbrG8" resolve="item" />
                                  </node>
                                  <node concept="liA8E" id="46W80XAeU_D" role="2OqNvi">
                                    <ref role="37wK5l" node="7pClCNY6_yG" resolve="execute" />
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
              </node>
              <node concept="3zACq4" id="46W80XAeCgh" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="46W80XAeB$H" role="3KbHQx">
            <node concept="Rm8GO" id="46W80XAeBW_" role="3Kbmr1">
              <ref role="Rm8GQ" to="uddc:~CommandPolicy.COMMAND_UNSUPPORTED" resolve="COMMAND_UNSUPPORTED" />
              <ref role="1Px2BO" to="uddc:~CommandPolicy" resolve="CommandPolicy" />
            </node>
            <node concept="3clFbS" id="46W80XAeB$J" role="3Kbo56">
              <node concept="3clFbF" id="46W80XAeVfE" role="3cqZAp">
                <node concept="2OqwBi" id="46W80XAeVvd" role="3clFbG">
                  <node concept="37vLTw" id="46W80XAeVfC" role="2Oq$k0">
                    <ref role="3cqZAo" node="7pClCNYbrG8" resolve="item" />
                  </node>
                  <node concept="liA8E" id="46W80XAeVIa" role="2OqNvi">
                    <ref role="37wK5l" node="7pClCNY6_yG" resolve="execute" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="46W80XAeCzo" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7pClCNYbso9" role="3cqZAp">
          <node concept="2OqwBi" id="7pClCNYbsoa" role="3clFbG">
            <node concept="37vLTw" id="7pClCNYbsob" role="2Oq$k0">
              <ref role="3cqZAo" node="7pClCNYbsnC" resolve="editorComponent" />
            </node>
            <node concept="liA8E" id="7pClCNYbsoc" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.requestFocusInWindow()" resolve="requestFocusInWindow" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7pClCNYbvHe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7pClCNYbubJ" role="jymVt" />
    <node concept="312cEu" id="7pClCNYavjw" role="jymVt">
      <property role="TrG5h" value="ProjectSelectionListener" />
      <property role="1sVAO0" value="false" />
      <property role="3GE5qa" value="components" />
      <property role="2bfB8j" value="true" />
      <node concept="3clFb_" id="7pClCNYavjI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isApplicable" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="7pClCNYavjJ" role="1B3o_S" />
        <node concept="10P_77" id="7pClCNYavjK" role="3clF45" />
        <node concept="37vLTG" id="7pClCNYavjL" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="3uibUv" id="7pClCNYavjM" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="2AHcQZ" id="7pClCNYavjN" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="7pClCNYavjO" role="3clF47">
          <node concept="3clFbF" id="7pClCNYavjP" role="3cqZAp">
            <node concept="3clFbT" id="7pClCNYavjQ" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7pClCNYavjR" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7pClCNYavjS" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="install" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="7pClCNYavjT" role="1B3o_S" />
        <node concept="3cqZAl" id="7pClCNYavjU" role="3clF45" />
        <node concept="37vLTG" id="7pClCNYavjV" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="3uibUv" id="7pClCNYavjW" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="2AHcQZ" id="7pClCNYavjX" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="7pClCNYavjY" role="3clF47">
          <node concept="3clFbF" id="7pClCNYavjZ" role="3cqZAp">
            <node concept="2OqwBi" id="7pClCNYavk0" role="3clFbG">
              <node concept="2OqwBi" id="7pClCNYavk1" role="2Oq$k0">
                <node concept="37vLTw" id="7pClCNYavk2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYavjV" resolve="component" />
                </node>
                <node concept="liA8E" id="7pClCNYavk3" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                </node>
              </node>
              <node concept="liA8E" id="7pClCNYavk4" role="2OqNvi">
                <ref role="37wK5l" to="lwvz:~SelectionManager.addSelectionListener(jetbrains.mps.openapi.editor.selection.SelectionListener)" resolve="addSelectionListener" />
                <node concept="Xjq3P" id="7pClCNYavk5" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7pClCNYavk6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7pClCNYavk7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="uninstall" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="7pClCNYavk8" role="1B3o_S" />
        <node concept="3cqZAl" id="7pClCNYavk9" role="3clF45" />
        <node concept="37vLTG" id="7pClCNYavka" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="3uibUv" id="7pClCNYavkb" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="2AHcQZ" id="7pClCNYavkc" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="7pClCNYavkd" role="3clF47">
          <node concept="3clFbF" id="7pClCNYavke" role="3cqZAp">
            <node concept="2OqwBi" id="7pClCNYavkf" role="3clFbG">
              <node concept="2OqwBi" id="7pClCNYavkg" role="2Oq$k0">
                <node concept="37vLTw" id="7pClCNYavkh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7pClCNYavka" resolve="component" />
                </node>
                <node concept="liA8E" id="7pClCNYavki" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                </node>
              </node>
              <node concept="liA8E" id="7pClCNYavkj" role="2OqNvi">
                <ref role="37wK5l" to="lwvz:~SelectionManager.removeSelectionListener(jetbrains.mps.openapi.editor.selection.SelectionListener)" resolve="removeSelectionListener" />
                <node concept="Xjq3P" id="7pClCNYavkk" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7pClCNYavkl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7pClCNYavkm" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="selectionChanged" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="7pClCNYavkn" role="1B3o_S" />
        <node concept="3cqZAl" id="7pClCNYavko" role="3clF45" />
        <node concept="37vLTG" id="7pClCNYavkp" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="3uibUv" id="7pClCNYavkq" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="37vLTG" id="7pClCNYavkr" role="3clF46">
          <property role="TrG5h" value="oldSelection" />
          <node concept="3uibUv" id="7pClCNYavks" role="1tU5fm">
            <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
          </node>
        </node>
        <node concept="37vLTG" id="7pClCNYavkt" role="3clF46">
          <property role="TrG5h" value="newSelection" />
          <node concept="3uibUv" id="7pClCNYavku" role="1tU5fm">
            <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
          </node>
        </node>
        <node concept="3clFbS" id="7pClCNYavkv" role="3clF47">
          <node concept="3clFbJ" id="7pClCNYavkw" role="3cqZAp">
            <node concept="3clFbC" id="7pClCNYavkx" role="3clFbw">
              <node concept="37vLTw" id="7pClCNYavky" role="3uHU7B">
                <ref role="3cqZAo" node="7pClCNYavkt" resolve="newSelection" />
              </node>
              <node concept="10Nm6u" id="7pClCNYavkz" role="3uHU7w" />
            </node>
            <node concept="3clFbS" id="7pClCNYavk$" role="3clFbx">
              <node concept="3cpWs6" id="7pClCNYavk_" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbH" id="7pClCNYavkA" role="3cqZAp" />
          <node concept="3J1_TO" id="7pClCNYavkB" role="3cqZAp">
            <node concept="3clFbS" id="7pClCNYavkC" role="1zxBo7">
              <node concept="3clFbF" id="7pClCNYavkD" role="3cqZAp">
                <node concept="1rXfSq" id="7pClCNYayut" role="3clFbG">
                  <ref role="37wK5l" node="7pClCNY9rtb" resolve="update" />
                  <node concept="37vLTw" id="7pClCNYilBA" role="37wK5m">
                    <ref role="3cqZAo" node="7pClCNYavkt" resolve="newSelection" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="7pClCNYavkK" role="1zxBo5">
              <node concept="XOnhg" id="7pClCNYavkM" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="ex" />
                <node concept="nSUau" id="xvs04dHxZ0" role="1tU5fm">
                  <node concept="3uibUv" id="7pClCNYavkN" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7pClCNYavkL" role="1zc67A" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7pClCNYavkO" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="7pClCNYavkP" role="EKbjA">
        <ref role="3uigEE" to="wvnl:~EditorExtension" resolve="EditorExtension" />
      </node>
      <node concept="3uibUv" id="7pClCNYavkQ" role="EKbjA">
        <ref role="3uigEE" to="lwvz:~SelectionListener" resolve="SelectionListener" />
      </node>
      <node concept="3Tm6S6" id="7pClCNYceBT" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7pClCNYcePi" role="jymVt" />
    <node concept="2tJIrI" id="7pClCNYbr2N" role="jymVt" />
    <node concept="3Tm1VV" id="7pClCNY9qN9" role="1B3o_S" />
    <node concept="3uibUv" id="7pClCNYbqvV" role="EKbjA">
      <ref role="3uigEE" node="7pClCNYb7G6" resolve="ItemExecutor" />
    </node>
  </node>
  <node concept="312cEu" id="7XaT_J$dWMJ">
    <property role="TrG5h" value="SearchField" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="components" />
    <node concept="2tJIrI" id="7XaT_J$e0p9" role="jymVt" />
    <node concept="3clFb_" id="3wU63TvgMwh" role="jymVt">
      <property role="TrG5h" value="executeSearch" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="3wU63TvgUD8" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="10P_77" id="3wU63TvgURa" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3wU63TvgMwj" role="3clF45" />
      <node concept="3Tm1VV" id="3wU63TvgMwk" role="1B3o_S" />
      <node concept="3clFbS" id="3wU63TvgMwl" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7XaT_J$e0pk" role="jymVt" />
    <node concept="3clFbW" id="7XaT_J$e199" role="jymVt">
      <node concept="3cqZAl" id="7XaT_J$e19b" role="3clF45" />
      <node concept="3Tm1VV" id="7XaT_J$e19c" role="1B3o_S" />
      <node concept="3clFbS" id="7XaT_J$e19d" role="3clF47">
        <node concept="3clFbF" id="7XaT_J$e1td" role="3cqZAp">
          <node concept="1rXfSq" id="7XaT_J$e1tc" role="3clFbG">
            <ref role="37wK5l" to="lzb2:~SearchTextField.addDocumentListener(javax.swing.event.DocumentListener)" resolve="addDocumentListener" />
            <node concept="2ShNRf" id="7XaT_J$e1x$" role="37wK5m">
              <node concept="YeOm9" id="7XaT_J$edZJ" role="2ShVmc">
                <node concept="1Y3b0j" id="7XaT_J$edZM" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="gsia:~DocumentListener" resolve="DocumentListener" />
                  <node concept="3Tm1VV" id="7XaT_J$edZN" role="1B3o_S" />
                  <node concept="3clFb_" id="7XaT_J$edZO" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="insertUpdate" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="7XaT_J$edZP" role="1B3o_S" />
                    <node concept="3cqZAl" id="7XaT_J$edZR" role="3clF45" />
                    <node concept="37vLTG" id="7XaT_J$edZS" role="3clF46">
                      <property role="TrG5h" value="p0" />
                      <node concept="3uibUv" id="7XaT_J$edZT" role="1tU5fm">
                        <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7XaT_J$edZU" role="3clF47">
                      <node concept="3clFbF" id="7XaT_J$eedJ" role="3cqZAp">
                        <node concept="1rXfSq" id="7XaT_J$eedI" role="3clFbG">
                          <ref role="37wK5l" node="3wU63TvgMwh" resolve="executeSearch" />
                          <node concept="3clFbT" id="7XaT_J$eefa" role="37wK5m">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4mMeETlt4DR" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="7XaT_J$edZW" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="removeUpdate" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="7XaT_J$edZX" role="1B3o_S" />
                    <node concept="3cqZAl" id="7XaT_J$edZZ" role="3clF45" />
                    <node concept="37vLTG" id="7XaT_J$ee00" role="3clF46">
                      <property role="TrG5h" value="p0" />
                      <node concept="3uibUv" id="7XaT_J$ee01" role="1tU5fm">
                        <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7XaT_J$ee02" role="3clF47">
                      <node concept="3clFbF" id="7XaT_J$eevY" role="3cqZAp">
                        <node concept="1rXfSq" id="7XaT_J$eevX" role="3clFbG">
                          <ref role="37wK5l" node="3wU63TvgMwh" resolve="executeSearch" />
                          <node concept="3clFbT" id="7XaT_J$eexy" role="37wK5m">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4mMeETlt4DS" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="7XaT_J$ee04" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="changedUpdate" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="7XaT_J$ee05" role="1B3o_S" />
                    <node concept="3cqZAl" id="7XaT_J$ee07" role="3clF45" />
                    <node concept="37vLTG" id="7XaT_J$ee08" role="3clF46">
                      <property role="TrG5h" value="p0" />
                      <node concept="3uibUv" id="7XaT_J$ee09" role="1tU5fm">
                        <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7XaT_J$ee0a" role="3clF47">
                      <node concept="3clFbF" id="7XaT_J$een0" role="3cqZAp">
                        <node concept="1rXfSq" id="7XaT_J$eemZ" role="3clFbG">
                          <ref role="37wK5l" node="3wU63TvgMwh" resolve="executeSearch" />
                          <node concept="3clFbT" id="7XaT_J$eeor" role="37wK5m">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4mMeETlt4DQ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7XaT_J$eePl" role="3cqZAp">
          <node concept="1rXfSq" id="7XaT_J$eePj" role="3clFbG">
            <ref role="37wK5l" to="lzb2:~SearchTextField.addKeyboardListener(java.awt.event.KeyListener)" resolve="addKeyboardListener" />
            <node concept="2ShNRf" id="7XaT_J$eeZt" role="37wK5m">
              <node concept="YeOm9" id="7XaT_J$egrV" role="2ShVmc">
                <node concept="1Y3b0j" id="7XaT_J$egrY" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="hyam:~KeyListener" resolve="KeyListener" />
                  <node concept="3Tm1VV" id="7XaT_J$egrZ" role="1B3o_S" />
                  <node concept="3clFb_" id="7XaT_J$egs0" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="keyTyped" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="7XaT_J$egs1" role="1B3o_S" />
                    <node concept="3cqZAl" id="7XaT_J$egs3" role="3clF45" />
                    <node concept="37vLTG" id="7XaT_J$egs4" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="7XaT_J$egs5" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7XaT_J$egs6" role="3clF47" />
                    <node concept="2AHcQZ" id="4mMeETlt4D9" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="7XaT_J$egs8" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="keyPressed" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="7XaT_J$egs9" role="1B3o_S" />
                    <node concept="3cqZAl" id="7XaT_J$egsb" role="3clF45" />
                    <node concept="37vLTG" id="7XaT_J$egsc" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="7XaT_J$egsd" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7XaT_J$egse" role="3clF47">
                      <node concept="3clFbJ" id="3wU63Tvh0KH" role="3cqZAp">
                        <node concept="3clFbS" id="3wU63Tvh0KI" role="3clFbx">
                          <node concept="3clFbF" id="3wU63Tvh0QM" role="3cqZAp">
                            <node concept="1rXfSq" id="3wU63Tvh0QL" role="3clFbG">
                              <ref role="37wK5l" node="3wU63TvgMwh" resolve="executeSearch" />
                              <node concept="3clFbT" id="3wU63Tvh0SE" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3wU63Tvi32D" role="3cqZAp">
                            <node concept="2OqwBi" id="3wU63Tvi33S" role="3clFbG">
                              <node concept="37vLTw" id="3wU63Tvi32B" role="2Oq$k0">
                                <ref role="3cqZAo" node="7XaT_J$egsc" resolve="e" />
                              </node>
                              <node concept="liA8E" id="3wU63Tvi3sW" role="2OqNvi">
                                <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="3wU63Tvh0vp" role="3clFbw">
                          <node concept="10M0yZ" id="3wU63Tvh0_O" role="3uHU7w">
                            <ref role="3cqZAo" to="hyam:~KeyEvent.VK_DOWN" resolve="VK_DOWN" />
                            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                          </node>
                          <node concept="2OqwBi" id="3wU63TvgZQS" role="3uHU7B">
                            <node concept="37vLTw" id="3wU63TvhOVY" role="2Oq$k0">
                              <ref role="3cqZAo" node="7XaT_J$egsc" resolve="e" />
                            </node>
                            <node concept="liA8E" id="3wU63Tvh0fA" role="2OqNvi">
                              <ref role="37wK5l" to="hyam:~KeyEvent.getKeyCode()" resolve="getKeyCode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="67vh5_4nhRd" role="3cqZAp">
                        <node concept="3clFbS" id="67vh5_4nhRe" role="3clFbx">
                          <node concept="3clFbF" id="67vh5_4nzxx" role="3cqZAp">
                            <node concept="1rXfSq" id="67vh5_4nzxv" role="3clFbG">
                              <ref role="37wK5l" to="lzb2:~SearchTextField.setText(java.lang.String)" resolve="setText" />
                              <node concept="Xl_RD" id="67vh5_4nzzH" role="37wK5m">
                                <property role="Xl_RC" value="" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="67vh5_4nhRi" role="3cqZAp">
                            <node concept="2OqwBi" id="67vh5_4nhRj" role="3clFbG">
                              <node concept="37vLTw" id="67vh5_4nhRk" role="2Oq$k0">
                                <ref role="3cqZAo" node="7XaT_J$egsc" resolve="e" />
                              </node>
                              <node concept="liA8E" id="67vh5_4nhRl" role="2OqNvi">
                                <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="67vh5_4nhRm" role="3clFbw">
                          <node concept="10M0yZ" id="67vh5_4nhRn" role="3uHU7w">
                            <ref role="1PxDUh" to="hyam:~KeyEvent" resolve="KeyEvent" />
                            <ref role="3cqZAo" to="hyam:~KeyEvent.VK_ESCAPE" resolve="VK_ESCAPE" />
                          </node>
                          <node concept="2OqwBi" id="67vh5_4nhRo" role="3uHU7B">
                            <node concept="37vLTw" id="67vh5_4nhRp" role="2Oq$k0">
                              <ref role="3cqZAo" node="7XaT_J$egsc" resolve="e" />
                            </node>
                            <node concept="liA8E" id="67vh5_4nhRq" role="2OqNvi">
                              <ref role="37wK5l" to="hyam:~KeyEvent.getKeyCode()" resolve="getKeyCode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4mMeETlt4Da" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="7XaT_J$egsg" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="keyReleased" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="7XaT_J$egsh" role="1B3o_S" />
                    <node concept="3cqZAl" id="7XaT_J$egsj" role="3clF45" />
                    <node concept="37vLTG" id="7XaT_J$egsk" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="7XaT_J$egsl" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~KeyEvent" resolve="KeyEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7XaT_J$egsm" role="3clF47" />
                    <node concept="2AHcQZ" id="4mMeETlt4Db" role="2AJF6D">
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
    <node concept="2tJIrI" id="7XaT_J$e0Te" role="jymVt" />
    <node concept="3clFb_" id="7XaT_J$e0V1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="showPopup" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="7XaT_J$e0V2" role="1B3o_S" />
      <node concept="3cqZAl" id="7XaT_J$e0V4" role="3clF45" />
      <node concept="3clFbS" id="7XaT_J$e0V5" role="3clF47" />
      <node concept="2AHcQZ" id="7XaT_J$e0V6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7XaT_J$e0U1" role="jymVt" />
    <node concept="3Tm1VV" id="7XaT_J$dWMK" role="1B3o_S" />
    <node concept="3uibUv" id="7XaT_J$dWRu" role="1zkMxy">
      <ref role="3uigEE" to="lzb2:~SearchTextField" resolve="SearchTextField" />
    </node>
  </node>
  <node concept="312cEu" id="7vUP_qcI0Jm">
    <property role="TrG5h" value="ExpandingFlowLayout" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="3GE5qa" value="components" />
    <node concept="3Tm1VV" id="7vUP_qcI0Jo" role="1B3o_S" />
    <node concept="3uibUv" id="7vUP_qcI0Jp" role="1zkMxy">
      <ref role="3uigEE" to="z60i:~FlowLayout" resolve="FlowLayout" />
    </node>
    <node concept="3UR2Jj" id="7vUP_qcI0K_" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBOu" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBOv" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOw" role="1PaTwD">
          <property role="3oM_SC" value="When" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOx" role="1PaTwD">
          <property role="3oM_SC" value="using" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOy" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOz" role="1PaTwD">
          <property role="3oM_SC" value="component" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBO$" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBO_" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOA" role="1PaTwD">
          <property role="3oM_SC" value="normal" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOB" role="1PaTwD">
          <property role="3oM_SC" value="FlowLayout" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOC" role="1PaTwD">
          <property role="3oM_SC" value="at" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOD" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOE" role="1PaTwD">
          <property role="3oM_SC" value="North" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOF" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOG" role="1PaTwD">
          <property role="3oM_SC" value="South" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBOH" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBOI" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOJ" role="1PaTwD">
          <property role="3oM_SC" value="position" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOK" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOL" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOM" role="1PaTwD">
          <property role="3oM_SC" value="BorderLayout," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBON" role="1PaTwD">
          <property role="3oM_SC" value="some" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOO" role="1PaTwD">
          <property role="3oM_SC" value="components" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOP" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOQ" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOR" role="1PaTwD">
          <property role="3oM_SC" value="displayed," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOS" role="1PaTwD">
          <property role="3oM_SC" value="when" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOT" role="1PaTwD">
          <property role="3oM_SC" value="they" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOU" role="1PaTwD">
          <property role="3oM_SC" value="do" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBOV" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBOW" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOX" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOY" role="1PaTwD">
          <property role="3oM_SC" value="fit" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBOZ" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBP0" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBP1" role="1PaTwD">
          <property role="3oM_SC" value="row." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBP2" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBP3" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBP4" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBP5" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBP6" role="1PaTwD">
          <property role="3oM_SC" value="because" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBP7" role="1PaTwD">
          <property role="3oM_SC" value="FlowLayout.preferredLayoutSize" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBP8" role="1PaTwD">
          <property role="3oM_SC" value="expects" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBP9" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPa" role="1PaTwD">
          <property role="3oM_SC" value="only" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPb" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPc" role="1PaTwD">
          <property role="3oM_SC" value="row" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPd" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBPe" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBPf" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPg" role="1PaTwD">
          <property role="3oM_SC" value="used," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPh" role="1PaTwD">
          <property role="3oM_SC" value="but" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPi" role="1PaTwD">
          <property role="3oM_SC" value="FlowLayout.layoutComponent" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPj" role="1PaTwD">
          <property role="3oM_SC" value="uses" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPk" role="1PaTwD">
          <property role="3oM_SC" value="multiple" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPl" role="1PaTwD">
          <property role="3oM_SC" value="rows," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPm" role="1PaTwD">
          <property role="3oM_SC" value="when" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPn" role="1PaTwD">
          <property role="3oM_SC" value="there" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPo" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPp" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBPq" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBPr" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPs" role="1PaTwD">
          <property role="3oM_SC" value="enough" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPt" role="1PaTwD">
          <property role="3oM_SC" value="space" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPu" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPv" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPw" role="1PaTwD">
          <property role="3oM_SC" value="components" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPx" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPy" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPz" role="1PaTwD">
          <property role="3oM_SC" value="row." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBP$" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBP_" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPA" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPB" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPC" role="1PaTwD">
          <property role="3oM_SC" value="fixes" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPD" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPE" role="1PaTwD">
          <property role="3oM_SC" value="behavior" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPF" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPG" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPH" role="1PaTwD">
          <property role="3oM_SC" value="result" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPI" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPJ" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPK" role="1PaTwD">
          <property role="3oM_SC" value="North/South" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPL" role="1PaTwD">
          <property role="3oM_SC" value="regions" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBPM" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBPN" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPO" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPP" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPQ" role="1PaTwD">
          <property role="3oM_SC" value="BorderLayout" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPR" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPS" role="1PaTwD">
          <property role="3oM_SC" value="resized" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPT" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPU" role="1PaTwD">
          <property role="3oM_SC" value="show" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPV" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPW" role="1PaTwD">
          <property role="3oM_SC" value="components" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPX" role="1PaTwD">
          <property role="3oM_SC" value="even" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPY" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBPZ" role="1PaTwD">
          <property role="3oM_SC" value="multiple" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBQ0" role="1PaTwD">
          <property role="3oM_SC" value="rows." />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="7vUP_qcI0Jq" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="7vUP_qcI0Jr" role="3clF45" />
      <node concept="3clFbS" id="7vUP_qcI0Js" role="3clF47">
        <node concept="1VxSAg" id="7vUP_qcI0L0" role="3cqZAp">
          <ref role="37wK5l" node="7vUP_qcI0Jy" resolve="ExpandingFlowLayout" />
          <node concept="10M0yZ" id="7vUP_qcI11b" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~FlowLayout" resolve="FlowLayout" />
            <ref role="3cqZAo" to="z60i:~FlowLayout.LEFT" resolve="LEFT" />
          </node>
          <node concept="3cmrfG" id="7vUP_qcI0Jv" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3cmrfG" id="7vUP_qcI0Jw" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7vUP_qcI0Jx" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="7vUP_qcI0Jy" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="7vUP_qcI0Jz" role="3clF45" />
      <node concept="37vLTG" id="7vUP_qcI0J$" role="3clF46">
        <property role="TrG5h" value="align" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="7vUP_qcI0J_" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7vUP_qcI0JA" role="3clF46">
        <property role="TrG5h" value="hgap" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="7vUP_qcI0JB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7vUP_qcI0JC" role="3clF46">
        <property role="TrG5h" value="vgap" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="7vUP_qcI0JD" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7vUP_qcI0JE" role="3clF47">
        <node concept="XkiVB" id="7vUP_qcI0L3" role="3cqZAp">
          <ref role="37wK5l" to="z60i:~FlowLayout.&lt;init&gt;(int,int,int)" resolve="FlowLayout" />
          <node concept="37vLTw" id="7vUP_qcI0JG" role="37wK5m">
            <ref role="3cqZAo" node="7vUP_qcI0J$" resolve="align" />
          </node>
          <node concept="37vLTw" id="7vUP_qcI0JH" role="37wK5m">
            <ref role="3cqZAo" node="7vUP_qcI0JA" resolve="hgap" />
          </node>
          <node concept="37vLTw" id="7vUP_qcI0JI" role="37wK5m">
            <ref role="3cqZAo" node="7vUP_qcI0JC" resolve="vgap" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7vUP_qcI0JJ" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="7vUP_qcI0JK" role="jymVt">
      <property role="TrG5h" value="preferredLayoutSize" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="7vUP_qcI0JL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="7vUP_qcI0JM" role="3clF46">
        <property role="TrG5h" value="target" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="7vUP_qcI0JN" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
        </node>
      </node>
      <node concept="3clFbS" id="7vUP_qcI0JO" role="3clF47">
        <node concept="3clFbF" id="7vUP_qcI0JP" role="3cqZAp">
          <node concept="1rXfSq" id="7vUP_qcI0JQ" role="3clFbG">
            <ref role="37wK5l" to="z60i:~FlowLayout.layoutContainer(java.awt.Container)" resolve="layoutContainer" />
            <node concept="37vLTw" id="7vUP_qcI0JR" role="37wK5m">
              <ref role="3cqZAo" node="7vUP_qcI0JM" resolve="target" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vUP_qcI0JT" role="3cqZAp">
          <node concept="3cpWsn" id="7vUP_qcI0JS" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="width" />
            <node concept="10Oyi0" id="7vUP_qcI0JU" role="1tU5fm" />
            <node concept="3cmrfG" id="7vUP_qcI0JV" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vUP_qcI0JX" role="3cqZAp">
          <node concept="3cpWsn" id="7vUP_qcI0JW" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="height" />
            <node concept="10Oyi0" id="7vUP_qcI0JY" role="1tU5fm" />
            <node concept="3cmrfG" id="7vUP_qcI0JZ" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7vUP_qcI0K0" role="3cqZAp">
          <node concept="2OqwBi" id="7vUP_qcI0L6" role="1DdaDG">
            <node concept="37vLTw" id="7vUP_qcI0L5" role="2Oq$k0">
              <ref role="3cqZAo" node="7vUP_qcI0JM" resolve="target" />
            </node>
            <node concept="liA8E" id="7vUP_qcI0L7" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
            </node>
          </node>
          <node concept="3cpWsn" id="7vUP_qcI0Kr" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="7vUP_qcI0Kt" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
          </node>
          <node concept="3clFbS" id="7vUP_qcI0K2" role="2LFqv$">
            <node concept="3cpWs8" id="7vUP_qcI0K4" role="3cqZAp">
              <node concept="3cpWsn" id="7vUP_qcI0K3" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="compRight" />
                <node concept="10Oyi0" id="7vUP_qcI0K5" role="1tU5fm" />
                <node concept="3cpWs3" id="7vUP_qcI0K6" role="33vP2m">
                  <node concept="2OqwBi" id="7vUP_qcI0La" role="3uHU7B">
                    <node concept="37vLTw" id="7vUP_qcI0L9" role="2Oq$k0">
                      <ref role="3cqZAo" node="7vUP_qcI0Kr" resolve="c" />
                    </node>
                    <node concept="liA8E" id="7vUP_qcI0Lb" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getX()" resolve="getX" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7vUP_qcI0Le" role="3uHU7w">
                    <node concept="37vLTw" id="7vUP_qcI0Ld" role="2Oq$k0">
                      <ref role="3cqZAo" node="7vUP_qcI0Kr" resolve="c" />
                    </node>
                    <node concept="liA8E" id="7vUP_qcI0Lf" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getWidth()" resolve="getWidth" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7vUP_qcI0Ka" role="3cqZAp">
              <node concept="3cpWsn" id="7vUP_qcI0K9" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="compBottom" />
                <node concept="10Oyi0" id="7vUP_qcI0Kb" role="1tU5fm" />
                <node concept="3cpWs3" id="7vUP_qcI0Kc" role="33vP2m">
                  <node concept="2OqwBi" id="7vUP_qcI0Li" role="3uHU7B">
                    <node concept="37vLTw" id="7vUP_qcI0Lh" role="2Oq$k0">
                      <ref role="3cqZAo" node="7vUP_qcI0Kr" resolve="c" />
                    </node>
                    <node concept="liA8E" id="7vUP_qcI0Lj" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getY()" resolve="getY" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7vUP_qcI0Lm" role="3uHU7w">
                    <node concept="37vLTw" id="7vUP_qcI0Ll" role="2Oq$k0">
                      <ref role="3cqZAo" node="7vUP_qcI0Kr" resolve="c" />
                    </node>
                    <node concept="liA8E" id="7vUP_qcI0Ln" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getHeight()" resolve="getHeight" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vUP_qcI0Kf" role="3cqZAp">
              <node concept="37vLTI" id="7vUP_qcI0Kg" role="3clFbG">
                <node concept="37vLTw" id="7vUP_qcI0Kh" role="37vLTJ">
                  <ref role="3cqZAo" node="7vUP_qcI0JS" resolve="width" />
                </node>
                <node concept="2YIFZM" id="7vUP_qcI0Lp" role="37vLTx">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                  <node concept="37vLTw" id="7vUP_qcI0Kj" role="37wK5m">
                    <ref role="3cqZAo" node="7vUP_qcI0JS" resolve="width" />
                  </node>
                  <node concept="37vLTw" id="7vUP_qcI0Kk" role="37wK5m">
                    <ref role="3cqZAo" node="7vUP_qcI0K3" resolve="compRight" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vUP_qcI0Kl" role="3cqZAp">
              <node concept="37vLTI" id="7vUP_qcI0Km" role="3clFbG">
                <node concept="37vLTw" id="7vUP_qcI0Kn" role="37vLTJ">
                  <ref role="3cqZAo" node="7vUP_qcI0JW" resolve="height" />
                </node>
                <node concept="2YIFZM" id="7vUP_qcI0Lr" role="37vLTx">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                  <node concept="37vLTw" id="7vUP_qcI0Kp" role="37wK5m">
                    <ref role="3cqZAo" node="7vUP_qcI0JW" resolve="height" />
                  </node>
                  <node concept="37vLTw" id="7vUP_qcI0Kq" role="37wK5m">
                    <ref role="3cqZAo" node="7vUP_qcI0K9" resolve="compBottom" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7vUP_qcI0Kv" role="3cqZAp">
          <node concept="2ShNRf" id="7vUP_qcI0Ls" role="3cqZAk">
            <node concept="1pGfFk" id="7vUP_qcI0Lt" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
              <node concept="37vLTw" id="7vUP_qcI0Kx" role="37wK5m">
                <ref role="3cqZAo" node="7vUP_qcI0JS" resolve="width" />
              </node>
              <node concept="37vLTw" id="7vUP_qcI0Ky" role="37wK5m">
                <ref role="3cqZAo" node="7vUP_qcI0JW" resolve="height" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7vUP_qcI0Kz" role="1B3o_S" />
      <node concept="3uibUv" id="7vUP_qcI0K$" role="3clF45">
        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="XwFeF7ZdLV">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="ExpandCollapseIcon" />
    <property role="3GE5qa" value="components" />
    <node concept="312cEg" id="XwFeF7ZdLW" role="jymVt">
      <property role="TrG5h" value="collapsed" />
      <node concept="3Tm6S6" id="XwFeF7ZdLX" role="1B3o_S" />
      <node concept="10P_77" id="XwFeF7ZdLY" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="XwFeF7ZdLZ" role="jymVt">
      <node concept="3cqZAl" id="XwFeF7ZdM0" role="3clF45" />
      <node concept="3Tm1VV" id="XwFeF7ZdM1" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7ZdM2" role="3clF47">
        <node concept="3clFbF" id="XwFeF7ZdM3" role="3cqZAp">
          <node concept="37vLTI" id="XwFeF7ZdM4" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7ZdM5" role="37vLTJ">
              <ref role="3cqZAo" node="XwFeF7ZdLW" resolve="collapsed" />
            </node>
            <node concept="37vLTw" id="XwFeF7ZdM6" role="37vLTx">
              <ref role="3cqZAo" node="XwFeF7ZdM7" resolve="collapsed1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="XwFeF7ZdM7" role="3clF46">
        <property role="TrG5h" value="collapsed1" />
        <node concept="10P_77" id="XwFeF7ZdM8" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="XwFeF7ZdM9" role="1B3o_S" />
    <node concept="3uibUv" id="XwFeF7ZdMa" role="EKbjA">
      <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
    </node>
    <node concept="3clFb_" id="XwFeF7ZdMb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIconHeight" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="XwFeF7ZdMc" role="1B3o_S" />
      <node concept="10Oyi0" id="XwFeF7ZdMd" role="3clF45" />
      <node concept="3clFbS" id="XwFeF7ZdMe" role="3clF47">
        <node concept="3clFbF" id="XwFeF7ZdMf" role="3cqZAp">
          <node concept="3cmrfG" id="XwFeF7ZdMg" role="3clFbG">
            <property role="3cmrfH" value="8" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mMeETlt4wG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="XwFeF7ZdMh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIconWidth" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="XwFeF7ZdMi" role="1B3o_S" />
      <node concept="10Oyi0" id="XwFeF7ZdMj" role="3clF45" />
      <node concept="3clFbS" id="XwFeF7ZdMk" role="3clF47">
        <node concept="3clFbF" id="XwFeF7ZdMl" role="3cqZAp">
          <node concept="1rXfSq" id="XwFeF7ZdMm" role="3clFbG">
            <ref role="37wK5l" node="XwFeF7ZdMb" resolve="getIconHeight" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mMeETlt4wH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="XwFeF7ZdMn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paintIcon" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="XwFeF7ZdMo" role="1B3o_S" />
      <node concept="3cqZAl" id="XwFeF7ZdMp" role="3clF45" />
      <node concept="37vLTG" id="XwFeF7ZdMq" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="XwFeF7ZdMr" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="XwFeF7ZdMs" role="3clF46">
        <property role="TrG5h" value="g_" />
        <node concept="3uibUv" id="XwFeF7ZdMt" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="XwFeF7ZdMu" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="XwFeF7ZdMv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="XwFeF7ZdMw" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="XwFeF7ZdMx" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="XwFeF7ZdMy" role="3clF47">
        <node concept="3cpWs8" id="XwFeF7ZdMz" role="3cqZAp">
          <node concept="3cpWsn" id="XwFeF7ZdM$" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="XwFeF7ZdM_" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="1eOMI4" id="XwFeF7ZdMA" role="33vP2m">
              <node concept="10QFUN" id="XwFeF7ZdMB" role="1eOMHV">
                <node concept="3uibUv" id="XwFeF7ZdMC" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="37vLTw" id="XwFeF7ZdMD" role="10QFUP">
                  <ref role="3cqZAo" node="XwFeF7ZdMs" resolve="g_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="XwFeF7ZdME" role="3cqZAp">
          <node concept="3cpWsn" id="XwFeF7ZdMF" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="XwFeF7ZdMG" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="XwFeF7ZdMH" role="33vP2m">
              <node concept="1pGfFk" id="XwFeF7ZdMI" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7ZdMJ" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7ZdMK" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7ZdML" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7ZdMF" resolve="shape" />
            </node>
            <node concept="liA8E" id="XwFeF7ZdMM" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(float,float)" resolve="moveTo" />
              <node concept="37vLTw" id="XwFeF7ZdMN" role="37wK5m">
                <ref role="3cqZAo" node="XwFeF7ZdMu" resolve="x" />
              </node>
              <node concept="37vLTw" id="XwFeF7ZdMO" role="37wK5m">
                <ref role="3cqZAo" node="XwFeF7ZdMw" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="XwFeF7ZdMP" role="3cqZAp">
          <node concept="3cpWsn" id="XwFeF7ZdMQ" role="3cpWs9">
            <property role="TrG5h" value="w" />
            <node concept="10Oyi0" id="XwFeF7ZdMR" role="1tU5fm" />
            <node concept="1rXfSq" id="XwFeF7ZdMS" role="33vP2m">
              <ref role="37wK5l" node="XwFeF7ZdMh" resolve="getIconWidth" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="XwFeF7ZdMT" role="3cqZAp">
          <node concept="3cpWsn" id="XwFeF7ZdMU" role="3cpWs9">
            <property role="TrG5h" value="h" />
            <node concept="10Oyi0" id="XwFeF7ZdMV" role="1tU5fm" />
            <node concept="1rXfSq" id="XwFeF7ZdMW" role="33vP2m">
              <ref role="37wK5l" node="XwFeF7ZdMb" resolve="getIconHeight" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="XwFeF7ZdMX" role="3cqZAp">
          <node concept="3clFbS" id="XwFeF7ZdMY" role="3clFbx">
            <node concept="3clFbF" id="XwFeF7ZdMZ" role="3cqZAp">
              <node concept="3uO5VW" id="XwFeF7ZdN0" role="3clFbG">
                <node concept="37vLTw" id="XwFeF7ZdN1" role="2$L3a6">
                  <ref role="3cqZAo" node="XwFeF7ZdMQ" resolve="w" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="XwFeF7ZdN2" role="3cqZAp">
              <node concept="2OqwBi" id="XwFeF7ZdN3" role="3clFbG">
                <node concept="37vLTw" id="XwFeF7ZdN4" role="2Oq$k0">
                  <ref role="3cqZAo" node="XwFeF7ZdMF" resolve="shape" />
                </node>
                <node concept="liA8E" id="XwFeF7ZdN5" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
                  <node concept="3cpWs3" id="XwFeF7ZdN6" role="37wK5m">
                    <node concept="37vLTw" id="XwFeF7ZdN7" role="3uHU7w">
                      <ref role="3cqZAo" node="XwFeF7ZdMQ" resolve="w" />
                    </node>
                    <node concept="37vLTw" id="XwFeF7ZdN8" role="3uHU7B">
                      <ref role="3cqZAo" node="XwFeF7ZdMu" resolve="x" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="XwFeF7ZdN9" role="37wK5m">
                    <node concept="37vLTw" id="XwFeF7ZdNa" role="3uHU7B">
                      <ref role="3cqZAo" node="XwFeF7ZdMw" resolve="y" />
                    </node>
                    <node concept="17qRlL" id="XwFeF7ZdNb" role="3uHU7w">
                      <node concept="37vLTw" id="XwFeF7ZdNc" role="3uHU7w">
                        <ref role="3cqZAo" node="XwFeF7ZdMU" resolve="h" />
                      </node>
                      <node concept="3b6qkQ" id="XwFeF7ZdNd" role="3uHU7B">
                        <property role="$nhwW" value="0.5" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="XwFeF7ZdNe" role="3cqZAp">
              <node concept="2OqwBi" id="XwFeF7ZdNf" role="3clFbG">
                <node concept="37vLTw" id="XwFeF7ZdNg" role="2Oq$k0">
                  <ref role="3cqZAo" node="XwFeF7ZdMF" resolve="shape" />
                </node>
                <node concept="liA8E" id="XwFeF7ZdNh" role="2OqNvi">
                  <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float)" resolve="lineTo" />
                  <node concept="37vLTw" id="XwFeF7ZdNi" role="37wK5m">
                    <ref role="3cqZAo" node="XwFeF7ZdMu" resolve="x" />
                  </node>
                  <node concept="3cpWs3" id="XwFeF7ZdNj" role="37wK5m">
                    <node concept="37vLTw" id="XwFeF7ZdNk" role="3uHU7w">
                      <ref role="3cqZAo" node="XwFeF7ZdMU" resolve="h" />
                    </node>
                    <node concept="37vLTw" id="XwFeF7ZdNl" role="3uHU7B">
                      <ref role="3cqZAo" node="XwFeF7ZdMw" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="XwFeF7ZdNm" role="3clFbw">
            <ref role="3cqZAo" node="XwFeF7ZdLW" resolve="collapsed" />
          </node>
          <node concept="9aQIb" id="XwFeF7ZdNn" role="9aQIa">
            <node concept="3clFbS" id="XwFeF7ZdNo" role="9aQI4">
              <node concept="3clFbF" id="XwFeF7ZdNp" role="3cqZAp">
                <node concept="3uO5VW" id="XwFeF7ZdNq" role="3clFbG">
                  <node concept="37vLTw" id="XwFeF7ZdNr" role="2$L3a6">
                    <ref role="3cqZAo" node="XwFeF7ZdMU" resolve="h" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="XwFeF7ZdNs" role="3cqZAp">
                <node concept="2OqwBi" id="XwFeF7ZdNt" role="3clFbG">
                  <node concept="37vLTw" id="XwFeF7ZdNu" role="2Oq$k0">
                    <ref role="3cqZAo" node="XwFeF7ZdMF" resolve="shape" />
                  </node>
                  <node concept="liA8E" id="XwFeF7ZdNv" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(float,float)" resolve="lineTo" />
                    <node concept="3cpWs3" id="XwFeF7ZdNw" role="37wK5m">
                      <node concept="37vLTw" id="XwFeF7ZdNx" role="3uHU7w">
                        <ref role="3cqZAo" node="XwFeF7ZdMQ" resolve="w" />
                      </node>
                      <node concept="37vLTw" id="XwFeF7ZdNy" role="3uHU7B">
                        <ref role="3cqZAo" node="XwFeF7ZdMu" resolve="x" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="XwFeF7ZdNz" role="37wK5m">
                      <ref role="3cqZAo" node="XwFeF7ZdMw" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="XwFeF7ZdN$" role="3cqZAp">
                <node concept="2OqwBi" id="XwFeF7ZdN_" role="3clFbG">
                  <node concept="37vLTw" id="XwFeF7ZdNA" role="2Oq$k0">
                    <ref role="3cqZAo" node="XwFeF7ZdMF" resolve="shape" />
                  </node>
                  <node concept="liA8E" id="XwFeF7ZdNB" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
                    <node concept="3cpWs3" id="XwFeF7ZdNC" role="37wK5m">
                      <node concept="17qRlL" id="XwFeF7ZdND" role="3uHU7w">
                        <node concept="3b6qkQ" id="XwFeF7ZdNE" role="3uHU7B">
                          <property role="$nhwW" value="0.5" />
                        </node>
                        <node concept="37vLTw" id="XwFeF7ZdNF" role="3uHU7w">
                          <ref role="3cqZAo" node="XwFeF7ZdMQ" resolve="w" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="XwFeF7ZdNG" role="3uHU7B">
                        <ref role="3cqZAo" node="XwFeF7ZdMu" resolve="x" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="XwFeF7ZdNH" role="37wK5m">
                      <node concept="37vLTw" id="XwFeF7ZdNI" role="3uHU7w">
                        <ref role="3cqZAo" node="XwFeF7ZdMU" resolve="h" />
                      </node>
                      <node concept="37vLTw" id="XwFeF7ZdNJ" role="3uHU7B">
                        <ref role="3cqZAo" node="XwFeF7ZdMw" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7ZdNK" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7ZdNL" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7ZdNM" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7ZdMF" resolve="shape" />
            </node>
            <node concept="liA8E" id="XwFeF7ZdNN" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath()" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="558cVyjyWfA" role="3cqZAp">
          <node concept="2OqwBi" id="558cVyjyWfR" role="3clFbG">
            <node concept="37vLTw" id="558cVyjyWfF" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7ZdM$" resolve="g" />
            </node>
            <node concept="liA8E" id="558cVyjyWfS" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="2OqwBi" id="558cVyjyWg6" role="37wK5m">
                <node concept="37vLTw" id="558cVyjyWfW" role="2Oq$k0">
                  <ref role="3cqZAo" node="XwFeF7ZdMq" resolve="component" />
                </node>
                <node concept="liA8E" id="558cVyjyWg7" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getForeground()" resolve="getForeground" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7ZdNT" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7ZdNU" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7ZdNV" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7ZdM$" resolve="g" />
            </node>
            <node concept="liA8E" id="XwFeF7ZdNW" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
              <node concept="37vLTw" id="XwFeF7ZdNX" role="37wK5m">
                <ref role="3cqZAo" node="XwFeF7ZdMF" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mMeETlt4wI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7vUP_qcxS3E">
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="ChangeViewAction" />
    <node concept="2tJIrI" id="7vUP_qcxSo7" role="jymVt" />
    <node concept="312cEg" id="7vUP_qcxSSz" role="jymVt">
      <property role="TrG5h" value="myType" />
      <node concept="3Tm6S6" id="7vUP_qcxSS$" role="1B3o_S" />
      <node concept="3uibUv" id="7vUP_qcxSXD" role="1tU5fm">
        <ref role="3uigEE" node="7vUP_qcx$o$" resolve="ViewType" />
      </node>
    </node>
    <node concept="312cEg" id="7vUP_qcxVha" role="jymVt">
      <property role="TrG5h" value="myToolComponent" />
      <node concept="3Tm6S6" id="7vUP_qcxVhb" role="1B3o_S" />
      <node concept="3uibUv" id="7vUP_qcxVrm" role="1tU5fm">
        <ref role="3uigEE" node="5lGdLibXIsq" resolve="ToolComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="7vUP_qcxSKd" role="jymVt" />
    <node concept="3clFbW" id="7vUP_qcxVPt" role="jymVt">
      <node concept="3cqZAl" id="7vUP_qcxVPv" role="3clF45" />
      <node concept="3Tm1VV" id="7vUP_qcxVPw" role="1B3o_S" />
      <node concept="3clFbS" id="7vUP_qcxVPx" role="3clF47">
        <node concept="3clFbF" id="7vUP_qcxW8W" role="3cqZAp">
          <node concept="37vLTI" id="7vUP_qcxXMx" role="3clFbG">
            <node concept="37vLTw" id="7vUP_qcxY2e" role="37vLTx">
              <ref role="3cqZAo" node="7vUP_qcxWH9" resolve="component" />
            </node>
            <node concept="37vLTw" id="7vUP_qcxW8V" role="37vLTJ">
              <ref role="3cqZAo" node="7vUP_qcxVha" resolve="myToolComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7vUP_qcxYCF" role="3cqZAp">
          <node concept="37vLTI" id="7vUP_qcxZda" role="3clFbG">
            <node concept="37vLTw" id="7vUP_qcxZor" role="37vLTx">
              <ref role="3cqZAo" node="7vUP_qcxWIA" resolve="type" />
            </node>
            <node concept="37vLTw" id="7vUP_qcxYCD" role="37vLTJ">
              <ref role="3cqZAo" node="7vUP_qcxSSz" resolve="myType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7vUP_qcxWH9" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="7vUP_qcxWH8" role="1tU5fm">
          <ref role="3uigEE" node="5lGdLibXIsq" resolve="ToolComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="7vUP_qcxWIA" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="7vUP_qcxWPh" role="1tU5fm">
          <ref role="3uigEE" node="7vUP_qcx$o$" resolve="ViewType" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vUP_qcxVBX" role="jymVt" />
    <node concept="3clFb_" id="7vUP_qcxugv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="update" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7vUP_qcxugw" role="1B3o_S" />
      <node concept="3cqZAl" id="7vUP_qcxugy" role="3clF45" />
      <node concept="37vLTG" id="7vUP_qcxugz" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="7vUP_qcxug$" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="7vUP_qcxugA" role="3clF47">
        <node concept="3clFbF" id="40Nmswov7ol" role="3cqZAp">
          <node concept="3nyPlj" id="40Nmswov7oj" role="3clFbG">
            <ref role="37wK5l" to="qkt:~ToggleAction.update(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="update" />
            <node concept="37vLTw" id="40Nmswov7_z" role="37wK5m">
              <ref role="3cqZAo" node="7vUP_qcxugz" resolve="event" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7vUP_qcxuBz" role="3cqZAp">
          <node concept="2OqwBi" id="7vUP_qcxvq1" role="3clFbG">
            <node concept="2OqwBi" id="7vUP_qcxuNs" role="2Oq$k0">
              <node concept="37vLTw" id="7vUP_qcxuBy" role="2Oq$k0">
                <ref role="3cqZAo" node="7vUP_qcxugz" resolve="event" />
              </node>
              <node concept="liA8E" id="7vUP_qcxvlO" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="7vUP_qcxwdt" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
              <node concept="3clFbT" id="7vUP_qcxwiL" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7vUP_qcxwzb" role="3cqZAp">
          <node concept="2OqwBi" id="7vUP_qcxwzc" role="3clFbG">
            <node concept="2OqwBi" id="7vUP_qcxwzd" role="2Oq$k0">
              <node concept="37vLTw" id="7vUP_qcxwze" role="2Oq$k0">
                <ref role="3cqZAo" node="7vUP_qcxugz" resolve="event" />
              </node>
              <node concept="liA8E" id="7vUP_qcxwzf" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="7vUP_qcxwzg" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="3cpWs3" id="7vUP_qcxTwU" role="37wK5m">
                <node concept="37vLTw" id="7vUP_qcxTKl" role="3uHU7w">
                  <ref role="3cqZAo" node="7vUP_qcxSSz" resolve="myType" />
                </node>
                <node concept="Xl_RD" id="7vUP_qcxxDC" role="3uHU7B">
                  <property role="Xl_RC" value="View: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7vUP_qcxugB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7vUP_qcxSt2" role="jymVt" />
    <node concept="3clFb_" id="40Nmswov8nA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isSelected" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="40Nmswov8nB" role="1B3o_S" />
      <node concept="10P_77" id="40Nmswov8nD" role="3clF45" />
      <node concept="37vLTG" id="40Nmswov8nE" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="40Nmswov8nF" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="40Nmswov8nG" role="3clF47">
        <node concept="3clFbF" id="40NmswovbF1" role="3cqZAp">
          <node concept="3clFbC" id="40NmswovbF3" role="3clFbG">
            <node concept="37vLTw" id="40NmswovbF4" role="3uHU7w">
              <ref role="3cqZAo" node="7vUP_qcxSSz" resolve="myType" />
            </node>
            <node concept="2OqwBi" id="40NmswovbF5" role="3uHU7B">
              <node concept="37vLTw" id="40NmswovbF6" role="2Oq$k0">
                <ref role="3cqZAo" node="7vUP_qcxVha" resolve="myToolComponent" />
              </node>
              <node concept="liA8E" id="40NmswovbF7" role="2OqNvi">
                <ref role="37wK5l" node="40NmswouV_4" resolve="getViewType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="40Nmswov8nJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setSelected" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="40Nmswov8nK" role="1B3o_S" />
      <node concept="3cqZAl" id="40Nmswov8nM" role="3clF45" />
      <node concept="37vLTG" id="40Nmswov8nN" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="40Nmswov8nO" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="40Nmswov8nP" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10P_77" id="40Nmswov8nQ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="40Nmswov8nR" role="3clF47">
        <node concept="3clFbF" id="40Nmswov8RP" role="3cqZAp">
          <node concept="2OqwBi" id="40Nmswov9c1" role="3clFbG">
            <node concept="37vLTw" id="40Nmswov8RO" role="2Oq$k0">
              <ref role="3cqZAo" node="7vUP_qcxVha" resolve="myToolComponent" />
            </node>
            <node concept="liA8E" id="40Nmswovb5u" role="2OqNvi">
              <ref role="37wK5l" node="7vUP_qcy1We" resolve="setViewType" />
              <node concept="37vLTw" id="40Nmswovby1" role="37wK5m">
                <ref role="3cqZAo" node="7vUP_qcxSSz" resolve="myType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7vUP_qcxS3F" role="1B3o_S" />
    <node concept="3uibUv" id="40Nmswov7E3" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
    </node>
  </node>
  <node concept="312cEu" id="4q$a58Kz2lz">
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="EmptyIcon" />
    <node concept="Wx3nA" id="4q$a58Kz9wy" role="jymVt">
      <property role="TrG5h" value="ICON_16x16" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4q$a58Kz9lt" role="1tU5fm">
        <ref role="3uigEE" node="4q$a58Kz2lz" resolve="EmptyIcon" />
      </node>
      <node concept="3Tm1VV" id="4q$a58KzaEh" role="1B3o_S" />
      <node concept="2ShNRf" id="4q$a58Kz9O2" role="33vP2m">
        <node concept="1pGfFk" id="4q$a58Kz9O1" role="2ShVmc">
          <ref role="37wK5l" node="4q$a58Kz6jD" resolve="EmptyIcon" />
          <node concept="3cmrfG" id="4q$a58Kz9VZ" role="37wK5m">
            <property role="3cmrfH" value="16" />
          </node>
          <node concept="3cmrfG" id="4q$a58Kzarn" role="37wK5m">
            <property role="3cmrfH" value="16" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58Kz91D" role="jymVt" />
    <node concept="312cEg" id="4q$a58Kz2UZ" role="jymVt">
      <property role="TrG5h" value="myWidth" />
      <node concept="3Tm6S6" id="4q$a58Kz2V0" role="1B3o_S" />
      <node concept="10Oyi0" id="4q$a58Kz2ZD" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4q$a58Kz38X" role="jymVt">
      <property role="TrG5h" value="myHeight" />
      <node concept="3Tm6S6" id="4q$a58Kz38Y" role="1B3o_S" />
      <node concept="10Oyi0" id="4q$a58Kz38Z" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4q$a58Kz34n" role="jymVt" />
    <node concept="3clFbW" id="4q$a58Kz6jD" role="jymVt">
      <node concept="3cqZAl" id="4q$a58Kz6jE" role="3clF45" />
      <node concept="3Tm1VV" id="4q$a58Kz6jF" role="1B3o_S" />
      <node concept="3clFbS" id="4q$a58Kz6jH" role="3clF47">
        <node concept="3clFbF" id="4q$a58Kz6jL" role="3cqZAp">
          <node concept="37vLTI" id="4q$a58Kz6jN" role="3clFbG">
            <node concept="37vLTw" id="4q$a58Kz6jR" role="37vLTJ">
              <ref role="3cqZAo" node="4q$a58Kz38X" resolve="myHeight" />
            </node>
            <node concept="37vLTw" id="4q$a58Kz6jS" role="37vLTx">
              <ref role="3cqZAo" node="4q$a58Kz6jK" resolve="height" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4q$a58Kz6jV" role="3cqZAp">
          <node concept="37vLTI" id="4q$a58Kz6jX" role="3clFbG">
            <node concept="37vLTw" id="4q$a58Kz6k1" role="37vLTJ">
              <ref role="3cqZAo" node="4q$a58Kz2UZ" resolve="myWidth" />
            </node>
            <node concept="37vLTw" id="4q$a58Kz6k2" role="37vLTx">
              <ref role="3cqZAo" node="4q$a58Kz6jU" resolve="width" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58Kz6jU" role="3clF46">
        <property role="TrG5h" value="width" />
        <node concept="10Oyi0" id="4q$a58Kz6jT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58Kz6jK" role="3clF46">
        <property role="TrG5h" value="height" />
        <node concept="10Oyi0" id="4q$a58Kz6jJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58Kz2wA" role="jymVt" />
    <node concept="3Tm1VV" id="4q$a58Kz2l$" role="1B3o_S" />
    <node concept="3uibUv" id="4q$a58Kz2oc" role="EKbjA">
      <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
    </node>
    <node concept="3clFb_" id="4q$a58Kz2os" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIconWidth" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4q$a58Kz2ot" role="1B3o_S" />
      <node concept="10Oyi0" id="4q$a58Kz2ov" role="3clF45" />
      <node concept="3clFbS" id="4q$a58Kz2ow" role="3clF47">
        <node concept="3clFbF" id="4q$a58Kz4Fg" role="3cqZAp">
          <node concept="37vLTw" id="4q$a58Kz4Ff" role="3clFbG">
            <ref role="3cqZAo" node="4q$a58Kz2UZ" resolve="myWidth" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mMeETlt4Bj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58Kz8cn" role="jymVt" />
    <node concept="3clFb_" id="4q$a58Kz2on" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIconHeight" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4q$a58Kz2oo" role="1B3o_S" />
      <node concept="10Oyi0" id="4q$a58Kz2oq" role="3clF45" />
      <node concept="3clFbS" id="4q$a58Kz2or" role="3clF47">
        <node concept="3clFbF" id="4q$a58Kz3HQ" role="3cqZAp">
          <node concept="37vLTw" id="4q$a58Kz3HP" role="3clFbG">
            <ref role="3cqZAo" node="4q$a58Kz38X" resolve="myHeight" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mMeETlt4Bk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58Kz8Sz" role="jymVt" />
    <node concept="3clFb_" id="4q$a58Kz2ox" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paintIcon" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4q$a58Kz2oy" role="1B3o_S" />
      <node concept="3cqZAl" id="4q$a58Kz2o$" role="3clF45" />
      <node concept="37vLTG" id="4q$a58Kz2o_" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="4q$a58Kz2oA" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58Kz2oB" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="4q$a58Kz2oC" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58Kz2oD" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="4q$a58Kz2oE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58Kz2oF" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="4q$a58Kz2oG" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4q$a58Kz2oH" role="3clF47" />
      <node concept="2AHcQZ" id="4mMeETlt4Bi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="XwFeF7YM$n">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="HoverLabel" />
    <property role="3GE5qa" value="components" />
    <node concept="2tJIrI" id="XwFeF7YM$o" role="jymVt" />
    <node concept="312cEg" id="XwFeF7YM$p" role="jymVt">
      <property role="TrG5h" value="isHovered" />
      <node concept="3Tm6S6" id="XwFeF7YM$q" role="1B3o_S" />
      <node concept="10P_77" id="XwFeF7YM$r" role="1tU5fm" />
      <node concept="3clFbT" id="XwFeF7YM$s" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="XwFeF7YM$t" role="jymVt">
      <property role="TrG5h" value="strong" />
      <node concept="3Tm6S6" id="XwFeF7YM$u" role="1B3o_S" />
      <node concept="10P_77" id="XwFeF7YM$v" role="1tU5fm" />
      <node concept="3clFbT" id="XwFeF7YM$w" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YM$x" role="jymVt" />
    <node concept="3clFbW" id="XwFeF7YM$y" role="jymVt">
      <node concept="3cqZAl" id="XwFeF7YM$z" role="3clF45" />
      <node concept="3Tm1VV" id="XwFeF7YVLy" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YM$_" role="3clF47">
        <node concept="XkiVB" id="XwFeF7YM$A" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
          <node concept="37vLTw" id="XwFeF7YM$B" role="37wK5m">
            <ref role="3cqZAo" node="XwFeF7YMA1" resolve="text" />
          </node>
        </node>
        <node concept="3clFbH" id="XwFeF7YM$C" role="3cqZAp" />
        <node concept="3clFbF" id="XwFeF7YM$D" role="3cqZAp">
          <node concept="1rXfSq" id="XwFeF7YM$E" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
            <node concept="2ShNRf" id="XwFeF7YM$F" role="37wK5m">
              <node concept="YeOm9" id="XwFeF7YM$G" role="2ShVmc">
                <node concept="1Y3b0j" id="XwFeF7YM$H" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                  <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                  <node concept="3Tm1VV" id="XwFeF7YM$I" role="1B3o_S" />
                  <node concept="3clFb_" id="XwFeF7YM$J" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="mouseEntered" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="XwFeF7YM$K" role="1B3o_S" />
                    <node concept="3cqZAl" id="XwFeF7YM$L" role="3clF45" />
                    <node concept="37vLTG" id="XwFeF7YM$M" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="XwFeF7YM$N" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="XwFeF7YM$O" role="3clF47">
                      <node concept="3clFbF" id="XwFeF7YM$P" role="3cqZAp">
                        <node concept="37vLTI" id="XwFeF7YM$Q" role="3clFbG">
                          <node concept="3clFbT" id="XwFeF7YM$R" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="37vLTw" id="XwFeF7YM$S" role="37vLTJ">
                            <ref role="3cqZAo" node="XwFeF7YM$p" resolve="isHovered" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="XwFeF7YM$T" role="3cqZAp">
                        <node concept="1rXfSq" id="XwFeF7YM$U" role="3clFbG">
                          <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="XwFeF7YM$V" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="XwFeF7YM$W" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="mouseExited" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="XwFeF7YM$X" role="1B3o_S" />
                    <node concept="3cqZAl" id="XwFeF7YM$Y" role="3clF45" />
                    <node concept="37vLTG" id="XwFeF7YM$Z" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="XwFeF7YM_0" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="XwFeF7YM_1" role="3clF47">
                      <node concept="3clFbF" id="XwFeF7YM_2" role="3cqZAp">
                        <node concept="37vLTI" id="XwFeF7YM_3" role="3clFbG">
                          <node concept="3clFbT" id="XwFeF7YM_4" role="37vLTx">
                            <property role="3clFbU" value="false" />
                          </node>
                          <node concept="37vLTw" id="XwFeF7YM_5" role="37vLTJ">
                            <ref role="3cqZAo" node="XwFeF7YM$p" resolve="isHovered" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="XwFeF7YM_6" role="3cqZAp">
                        <node concept="37vLTI" id="XwFeF7YM_7" role="3clFbG">
                          <node concept="3clFbT" id="XwFeF7YM_8" role="37vLTx">
                            <property role="3clFbU" value="false" />
                          </node>
                          <node concept="37vLTw" id="XwFeF7YM_9" role="37vLTJ">
                            <ref role="3cqZAo" node="XwFeF7YM$t" resolve="strong" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="XwFeF7YM_a" role="3cqZAp">
                        <node concept="1rXfSq" id="XwFeF7YM_b" role="3clFbG">
                          <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="XwFeF7YM_c" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="XwFeF7YM_d" role="jymVt" />
                  <node concept="3clFb_" id="XwFeF7YM_e" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="mousePressed" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="XwFeF7YM_f" role="1B3o_S" />
                    <node concept="3cqZAl" id="XwFeF7YM_g" role="3clF45" />
                    <node concept="37vLTG" id="XwFeF7YM_h" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="XwFeF7YM_i" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="XwFeF7YM_j" role="3clF47">
                      <node concept="3clFbF" id="XwFeF7YM_k" role="3cqZAp">
                        <node concept="37vLTI" id="XwFeF7YM_l" role="3clFbG">
                          <node concept="3clFbT" id="XwFeF7YM_m" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="37vLTw" id="XwFeF7YM_n" role="37vLTJ">
                            <ref role="3cqZAo" node="XwFeF7YM$t" resolve="strong" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="XwFeF7YM_o" role="3cqZAp">
                        <node concept="1rXfSq" id="XwFeF7YM_p" role="3clFbG">
                          <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="XwFeF7YM_q" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="XwFeF7YM_r" role="jymVt" />
                  <node concept="3clFb_" id="XwFeF7YM_s" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="mouseReleased" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="XwFeF7YM_t" role="1B3o_S" />
                    <node concept="3cqZAl" id="XwFeF7YM_u" role="3clF45" />
                    <node concept="37vLTG" id="XwFeF7YM_v" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="XwFeF7YM_w" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="XwFeF7YM_x" role="3clF47">
                      <node concept="3clFbF" id="XwFeF7YM_y" role="3cqZAp">
                        <node concept="37vLTI" id="XwFeF7YM_z" role="3clFbG">
                          <node concept="3clFbT" id="XwFeF7YM_$" role="37vLTx">
                            <property role="3clFbU" value="false" />
                          </node>
                          <node concept="37vLTw" id="XwFeF7YM__" role="37vLTJ">
                            <ref role="3cqZAo" node="XwFeF7YM$t" resolve="strong" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="XwFeF7YM_A" role="3cqZAp">
                        <node concept="1rXfSq" id="XwFeF7YM_B" role="3clFbG">
                          <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="XwFeF7YM_C" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="XwFeF7YM_D" role="3cqZAp" />
        <node concept="3clFbF" id="XwFeF7YM_E" role="3cqZAp">
          <node concept="1rXfSq" id="XwFeF7YM_F" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.addMouseMotionListener(java.awt.event.MouseMotionListener)" resolve="addMouseMotionListener" />
            <node concept="2ShNRf" id="XwFeF7YM_G" role="37wK5m">
              <node concept="YeOm9" id="XwFeF7YM_H" role="2ShVmc">
                <node concept="1Y3b0j" id="XwFeF7YM_I" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="hyam:~MouseMotionAdapter" resolve="MouseMotionAdapter" />
                  <ref role="37wK5l" to="hyam:~MouseMotionAdapter.&lt;init&gt;()" resolve="MouseMotionAdapter" />
                  <node concept="3Tm1VV" id="XwFeF7YM_J" role="1B3o_S" />
                  <node concept="3clFb_" id="XwFeF7YM_K" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="mouseDragged" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="XwFeF7YM_L" role="1B3o_S" />
                    <node concept="3cqZAl" id="XwFeF7YM_M" role="3clF45" />
                    <node concept="37vLTG" id="XwFeF7YM_N" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="XwFeF7YM_O" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="XwFeF7YM_P" role="3clF47">
                      <node concept="3clFbF" id="XwFeF7YM_Q" role="3cqZAp">
                        <node concept="37vLTI" id="XwFeF7YM_R" role="3clFbG">
                          <node concept="3clFbT" id="XwFeF7YM_S" role="37vLTx">
                            <property role="3clFbU" value="false" />
                          </node>
                          <node concept="37vLTw" id="XwFeF7YM_T" role="37vLTJ">
                            <ref role="3cqZAo" node="XwFeF7YM$p" resolve="isHovered" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="XwFeF7YM_U" role="3cqZAp">
                        <node concept="37vLTI" id="XwFeF7YM_V" role="3clFbG">
                          <node concept="3clFbT" id="XwFeF7YM_W" role="37vLTx">
                            <property role="3clFbU" value="false" />
                          </node>
                          <node concept="37vLTw" id="XwFeF7YM_X" role="37vLTJ">
                            <ref role="3cqZAo" node="XwFeF7YM$t" resolve="strong" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="XwFeF7YM_Y" role="3cqZAp">
                        <node concept="1rXfSq" id="XwFeF7YM_Z" role="3clFbG">
                          <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="XwFeF7YMA0" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="XwFeF7YMA1" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="XwFeF7YMA2" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YMA3" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YMA4" role="jymVt">
      <property role="TrG5h" value="isHighlighted" />
      <node concept="10P_77" id="XwFeF7YMA5" role="3clF45" />
      <node concept="3Tmbuc" id="XwFeF7YMA6" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YMA7" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YMA8" role="3cqZAp">
          <node concept="37vLTw" id="XwFeF7YMA9" role="3clFbG">
            <ref role="3cqZAo" node="XwFeF7YM$p" resolve="isHovered" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YMAa" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YMAb" role="jymVt">
      <property role="TrG5h" value="isStrong" />
      <node concept="10P_77" id="XwFeF7YMAc" role="3clF45" />
      <node concept="3Tmbuc" id="XwFeF7YMAd" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YMAe" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YMAf" role="3cqZAp">
          <node concept="37vLTw" id="XwFeF7YMAg" role="3clFbG">
            <ref role="3cqZAo" node="XwFeF7YM$t" resolve="strong" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YMAh" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YMAi" role="jymVt">
      <property role="TrG5h" value="isStrongHightlight" />
      <node concept="10P_77" id="XwFeF7YMAj" role="3clF45" />
      <node concept="3Tmbuc" id="XwFeF7YMAk" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YMAl" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YMAm" role="3cqZAp">
          <node concept="1Wc70l" id="XwFeF7YMAn" role="3clFbG">
            <node concept="1rXfSq" id="XwFeF7YMAo" role="3uHU7w">
              <ref role="37wK5l" node="XwFeF7YMAb" resolve="isStrong" />
            </node>
            <node concept="1rXfSq" id="XwFeF7YMAp" role="3uHU7B">
              <ref role="37wK5l" node="XwFeF7YMA4" resolve="isHighlighted" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YMAq" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YMAr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paint" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="XwFeF7YMAs" role="1B3o_S" />
      <node concept="3cqZAl" id="XwFeF7YMAt" role="3clF45" />
      <node concept="37vLTG" id="XwFeF7YMAu" role="3clF46">
        <property role="TrG5h" value="g_" />
        <node concept="3uibUv" id="XwFeF7YMAv" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="XwFeF7YMAw" role="3clF47">
        <node concept="3clFbJ" id="XwFeF7YMAx" role="3cqZAp">
          <node concept="3clFbS" id="XwFeF7YMAy" role="3clFbx">
            <node concept="3cpWs8" id="XwFeF7YMAz" role="3cqZAp">
              <node concept="3cpWsn" id="XwFeF7YMA$" role="3cpWs9">
                <property role="TrG5h" value="g" />
                <node concept="3uibUv" id="XwFeF7YMA_" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                </node>
                <node concept="2OqwBi" id="XwFeF7YMAA" role="33vP2m">
                  <node concept="37vLTw" id="XwFeF7YMAB" role="2Oq$k0">
                    <ref role="3cqZAo" node="XwFeF7YMAu" resolve="g_" />
                  </node>
                  <node concept="liA8E" id="XwFeF7YMAC" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="XwFeF7YMAD" role="3cqZAp">
              <node concept="3clFbS" id="XwFeF7YMAE" role="1zxBo7">
                <node concept="3clFbF" id="XwFeF7YMAF" role="3cqZAp">
                  <node concept="2OqwBi" id="XwFeF7YMAG" role="3clFbG">
                    <node concept="37vLTw" id="XwFeF7YMAH" role="2Oq$k0">
                      <ref role="3cqZAo" node="XwFeF7YMA$" resolve="g" />
                    </node>
                    <node concept="liA8E" id="XwFeF7YMAI" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                      <node concept="2ShNRf" id="XwFeF7YMAJ" role="37wK5m">
                        <node concept="1pGfFk" id="XwFeF7YMAK" role="2ShVmc">
                          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                          <node concept="3cmrfG" id="XwFeF7YMAL" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="3cmrfG" id="XwFeF7YMAM" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="3cmrfG" id="XwFeF7YMAN" role="37wK5m">
                            <property role="3cmrfH" value="255" />
                          </node>
                          <node concept="3K4zz7" id="XwFeF7YMAO" role="37wK5m">
                            <node concept="3cmrfG" id="XwFeF7YMAP" role="3K4E3e">
                              <property role="3cmrfH" value="60" />
                            </node>
                            <node concept="3cmrfG" id="XwFeF7YMAQ" role="3K4GZi">
                              <property role="3cmrfH" value="20" />
                            </node>
                            <node concept="1rXfSq" id="XwFeF7YMAR" role="3K4Cdx">
                              <ref role="37wK5l" node="XwFeF7YMAi" resolve="isStrongHightlight" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="XwFeF7YMAS" role="3cqZAp">
                  <node concept="2OqwBi" id="XwFeF7YMAT" role="3clFbG">
                    <node concept="37vLTw" id="XwFeF7YMAU" role="2Oq$k0">
                      <ref role="3cqZAo" node="XwFeF7YMA$" resolve="g" />
                    </node>
                    <node concept="liA8E" id="XwFeF7YMAV" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
                      <node concept="3cmrfG" id="XwFeF7YMAW" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cmrfG" id="XwFeF7YMAX" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1rXfSq" id="XwFeF7YMAY" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                      </node>
                      <node concept="1rXfSq" id="XwFeF7YMAZ" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="XwFeF7YMB0" role="3cqZAp">
                  <node concept="2OqwBi" id="XwFeF7YMB1" role="3clFbG">
                    <node concept="37vLTw" id="XwFeF7YMB2" role="2Oq$k0">
                      <ref role="3cqZAo" node="XwFeF7YMA$" resolve="g" />
                    </node>
                    <node concept="liA8E" id="XwFeF7YMB3" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                      <node concept="2ShNRf" id="XwFeF7YMB4" role="37wK5m">
                        <node concept="1pGfFk" id="XwFeF7YMB5" role="2ShVmc">
                          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                          <node concept="3cmrfG" id="XwFeF7YMB6" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="3cmrfG" id="XwFeF7YMB7" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="3cmrfG" id="XwFeF7YMB8" role="37wK5m">
                            <property role="3cmrfH" value="255" />
                          </node>
                          <node concept="3K4zz7" id="XwFeF7YMB9" role="37wK5m">
                            <node concept="3cmrfG" id="XwFeF7YMBa" role="3K4E3e">
                              <property role="3cmrfH" value="100" />
                            </node>
                            <node concept="3cmrfG" id="XwFeF7YMBb" role="3K4GZi">
                              <property role="3cmrfH" value="40" />
                            </node>
                            <node concept="1rXfSq" id="XwFeF7YMBc" role="3K4Cdx">
                              <ref role="37wK5l" node="XwFeF7YMAi" resolve="isStrongHightlight" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="XwFeF7YMBd" role="3cqZAp">
                  <node concept="2OqwBi" id="XwFeF7YMBe" role="3clFbG">
                    <node concept="37vLTw" id="XwFeF7YMBf" role="2Oq$k0">
                      <ref role="3cqZAo" node="XwFeF7YMA$" resolve="g" />
                    </node>
                    <node concept="liA8E" id="XwFeF7YMBg" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int)" resolve="drawRect" />
                      <node concept="3cmrfG" id="XwFeF7YMBh" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cmrfG" id="XwFeF7YMBi" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cpWsd" id="XwFeF7YMBj" role="37wK5m">
                        <node concept="3cmrfG" id="XwFeF7YMBk" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="1rXfSq" id="XwFeF7YMBl" role="3uHU7B">
                          <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                        </node>
                      </node>
                      <node concept="3cpWsd" id="XwFeF7YMBm" role="37wK5m">
                        <node concept="3cmrfG" id="XwFeF7YMBn" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="1rXfSq" id="XwFeF7YMBo" role="3uHU7B">
                          <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1wplmZ" id="xvs04dHy26" role="1zxBo6">
                <node concept="3clFbS" id="XwFeF7YMBp" role="1wplMD">
                  <node concept="3clFbF" id="XwFeF7YMBq" role="3cqZAp">
                    <node concept="2OqwBi" id="XwFeF7YMBr" role="3clFbG">
                      <node concept="37vLTw" id="XwFeF7YMBs" role="2Oq$k0">
                        <ref role="3cqZAo" node="XwFeF7YMA$" resolve="g" />
                      </node>
                      <node concept="liA8E" id="XwFeF7YMBt" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.dispose()" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="XwFeF7YMBu" role="3clFbw">
            <node concept="1rXfSq" id="XwFeF7YMBv" role="3uHU7w">
              <ref role="37wK5l" node="XwFeF7YMAi" resolve="isStrongHightlight" />
            </node>
            <node concept="1rXfSq" id="XwFeF7YMBw" role="3uHU7B">
              <ref role="37wK5l" node="XwFeF7YMA4" resolve="isHighlighted" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="XwFeF7YMBx" role="3cqZAp" />
        <node concept="3clFbF" id="XwFeF7YMBy" role="3cqZAp">
          <node concept="3nyPlj" id="XwFeF7YMBz" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.paint(java.awt.Graphics)" resolve="paint" />
            <node concept="37vLTw" id="XwFeF7YMB$" role="37wK5m">
              <ref role="3cqZAo" node="XwFeF7YMAu" resolve="g_" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="XwFeF7YMB_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7vUP_qc_gLD" role="jymVt" />
    <node concept="3clFb_" id="7vUP_qc_gma" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setFont" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7vUP_qc_gmb" role="1B3o_S" />
      <node concept="3cqZAl" id="7vUP_qc_gmd" role="3clF45" />
      <node concept="37vLTG" id="7vUP_qc_gme" role="3clF46">
        <property role="TrG5h" value="font" />
        <node concept="3uibUv" id="7vUP_qc_gmf" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
        </node>
      </node>
      <node concept="3clFbS" id="7vUP_qc_gmj" role="3clF47">
        <node concept="3clFbF" id="7vUP_qc_gmn" role="3cqZAp">
          <node concept="3nyPlj" id="7vUP_qc_gmm" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
            <node concept="37vLTw" id="7vUP_qc_gml" role="37wK5m">
              <ref role="3cqZAo" node="7vUP_qc_gme" resolve="font" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7vUP_qc_gmk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="XwFeF7YQj7" role="1B3o_S" />
    <node concept="3uibUv" id="XwFeF7YMBB" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
    </node>
  </node>
  <node concept="312cEu" id="XwFeF7YZyF">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="Folder" />
    <property role="3GE5qa" value="components" />
    <node concept="Wx3nA" id="2eQzkDLlytZ" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TITLE_FOREGROUND_COLOR" />
      <property role="2Lvdk3" value="TITLE_FOREGROUND_COLOR" />
      <node concept="3Tm6S6" id="2eQzkDLlytS" role="1B3o_S" />
      <node concept="3uibUv" id="2eQzkDLlytT" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2YIFZM" id="558cVyjy91h" role="33vP2m">
        <ref role="1Pybhc" to="g1qu:~JBUI$CurrentTheme$Popup" resolve="JBUI.CurrentTheme.Popup" />
        <ref role="37wK5l" to="g1qu:~JBUI$CurrentTheme$Popup.separatorTextColor()" resolve="separatorTextColor" />
      </node>
    </node>
    <node concept="Wx3nA" id="2eQzkDLlAYL" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TITLE_SEPARATOR_COLOR" />
      <property role="2Lvdk3" value="TITLE_SEPARATOR_COLOR" />
      <node concept="3Tm6S6" id="2eQzkDLlAYE" role="1B3o_S" />
      <node concept="3uibUv" id="2eQzkDLlAYF" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2YIFZM" id="558cVyjy92r" role="33vP2m">
        <ref role="1Pybhc" to="g1qu:~JBUI$CurrentTheme$Popup" resolve="JBUI.CurrentTheme.Popup" />
        <ref role="37wK5l" to="g1qu:~JBUI$CurrentTheme$Popup.separatorColor()" resolve="separatorColor" />
      </node>
    </node>
    <node concept="2tJIrI" id="6W_V$ebcSLG" role="jymVt" />
    <node concept="Wx3nA" id="XwFeF7YZyG" role="jymVt">
      <property role="TrG5h" value="ourCollapsedStates" />
      <property role="3TUv4t" value="false" />
      <node concept="2hMVRd" id="XwFeF7YZyH" role="1tU5fm">
        <node concept="17QB3L" id="XwFeF7YZyI" role="2hN53Y" />
      </node>
      <node concept="3Tm6S6" id="XwFeF7YZyJ" role="1B3o_S" />
      <node concept="2ShNRf" id="XwFeF7YZyK" role="33vP2m">
        <node concept="2i4dXS" id="XwFeF7YZyL" role="2ShVmc">
          <node concept="17QB3L" id="XwFeF7YZyM" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YZyN" role="jymVt" />
    <node concept="312cEg" id="XwFeF7YZyO" role="jymVt">
      <property role="TrG5h" value="myName" />
      <node concept="3Tm6S6" id="XwFeF7YZyP" role="1B3o_S" />
      <node concept="17QB3L" id="XwFeF7YZyQ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="XwFeF7YZyR" role="jymVt">
      <property role="TrG5h" value="myComponent" />
      <node concept="3Tm6S6" id="XwFeF7YZyS" role="1B3o_S" />
      <node concept="3uibUv" id="XwFeF7YZyT" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="312cEg" id="XwFeF7YZyU" role="jymVt">
      <property role="TrG5h" value="myItemContainer" />
      <node concept="3Tm6S6" id="XwFeF7YZyV" role="1B3o_S" />
      <node concept="3uibUv" id="XwFeF7YZyW" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="312cEg" id="XwFeF7YZyX" role="jymVt">
      <property role="TrG5h" value="myTitleComponent" />
      <node concept="3Tm6S6" id="XwFeF7YZyY" role="1B3o_S" />
      <node concept="3uibUv" id="XwFeF7YZyZ" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
      </node>
      <node concept="2AHcQZ" id="XwFeF7YZz0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YZz1" role="jymVt" />
    <node concept="3clFbW" id="XwFeF7YZz2" role="jymVt">
      <node concept="37vLTG" id="XwFeF7YZz3" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="XwFeF7YZz4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7vUP_qczxsh" role="3clF46">
        <property role="TrG5h" value="viewType" />
        <node concept="3uibUv" id="7vUP_qczxJN" role="1tU5fm">
          <ref role="3uigEE" node="7vUP_qcx$o$" resolve="ViewType" />
        </node>
      </node>
      <node concept="3cqZAl" id="XwFeF7YZz5" role="3clF45" />
      <node concept="3Tm1VV" id="XwFeF7YZz6" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YZz7" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YZz8" role="3cqZAp">
          <node concept="37vLTI" id="XwFeF7YZz9" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7YZza" role="37vLTx">
              <ref role="3cqZAo" node="XwFeF7YZz3" resolve="name" />
            </node>
            <node concept="2OqwBi" id="XwFeF7YZzb" role="37vLTJ">
              <node concept="Xjq3P" id="XwFeF7YZzc" role="2Oq$k0" />
              <node concept="2OwXpG" id="XwFeF7YZzd" role="2OqNvi">
                <ref role="2Oxat5" node="XwFeF7YZyO" resolve="myName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7YZze" role="3cqZAp">
          <node concept="37vLTI" id="XwFeF7YZzf" role="3clFbG">
            <node concept="2ShNRf" id="XwFeF7YZzg" role="37vLTx">
              <node concept="1pGfFk" id="XwFeF7YZzh" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="XwFeF7YZzi" role="37wK5m">
                  <node concept="1pGfFk" id="XwFeF7YZzj" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;(int,int)" resolve="BorderLayout" />
                    <node concept="3cmrfG" id="XwFeF7YZzk" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="XwFeF7YZzl" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="XwFeF7YZzm" role="37vLTJ">
              <ref role="3cqZAo" node="XwFeF7YZyR" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="XwFeF7YZzn" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="XwFeF7YZzo" role="8Wnug">
            <node concept="2OqwBi" id="XwFeF7YZzp" role="3clFbG">
              <node concept="37vLTw" id="XwFeF7YZzq" role="2Oq$k0">
                <ref role="3cqZAo" node="XwFeF7YZyR" resolve="myComponent" />
              </node>
              <node concept="liA8E" id="XwFeF7YZzr" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                <node concept="2YIFZM" id="XwFeF7YZzs" role="37wK5m">
                  <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                  <ref role="37wK5l" to="dxuu:~BorderFactory.createEmptyBorder(int,int,int,int)" resolve="createEmptyBorder" />
                  <node concept="3cmrfG" id="XwFeF7YZzt" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="XwFeF7YZzu" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="XwFeF7YZzv" role="37wK5m">
                    <property role="3cmrfH" value="12" />
                  </node>
                  <node concept="3cmrfG" id="XwFeF7YZzw" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="XwFeF7YZzx" role="3cqZAp" />
        <node concept="3clFbJ" id="XwFeF7YZzy" role="3cqZAp">
          <node concept="3clFbS" id="XwFeF7YZzz" role="3clFbx">
            <node concept="3clFbF" id="XwFeF7YZz$" role="3cqZAp">
              <node concept="37vLTI" id="XwFeF7YZz_" role="3clFbG">
                <node concept="1rXfSq" id="6W_V$ebcMV2" role="37vLTx">
                  <ref role="37wK5l" node="1yMvtXVBluV" resolve="buildTitle" />
                  <node concept="37vLTw" id="6W_V$ebcN8Q" role="37wK5m">
                    <ref role="3cqZAo" node="XwFeF7YZz3" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="XwFeF7YZzC" role="37vLTJ">
                  <ref role="3cqZAo" node="XwFeF7YZyX" resolve="myTitleComponent" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="XwFeF7YZzD" role="3cqZAp">
              <node concept="2OqwBi" id="XwFeF7YZzE" role="3clFbG">
                <node concept="37vLTw" id="XwFeF7YZzF" role="2Oq$k0">
                  <ref role="3cqZAo" node="XwFeF7YZyX" resolve="myTitleComponent" />
                </node>
                <node concept="liA8E" id="XwFeF7YZzG" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
                  <node concept="2ShNRf" id="XwFeF7YZzH" role="37wK5m">
                    <node concept="YeOm9" id="XwFeF7YZzI" role="2ShVmc">
                      <node concept="1Y3b0j" id="XwFeF7YZzJ" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                        <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                        <node concept="3Tm1VV" id="XwFeF7YZzK" role="1B3o_S" />
                        <node concept="3clFb_" id="XwFeF7YZzL" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="mouseClicked" />
                          <property role="DiZV1" value="false" />
                          <node concept="3Tm1VV" id="XwFeF7YZzM" role="1B3o_S" />
                          <node concept="3cqZAl" id="XwFeF7YZzN" role="3clF45" />
                          <node concept="37vLTG" id="XwFeF7YZzO" role="3clF46">
                            <property role="TrG5h" value="event" />
                            <node concept="3uibUv" id="XwFeF7YZzP" role="1tU5fm">
                              <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="XwFeF7YZzQ" role="3clF47">
                            <node concept="3clFbF" id="XwFeF7YZzR" role="3cqZAp">
                              <node concept="1rXfSq" id="XwFeF7YZzS" role="3clFbG">
                                <ref role="37wK5l" node="XwFeF7YZ_p" resolve="setCollapsed" />
                                <node concept="3fqX7Q" id="XwFeF7YZzT" role="37wK5m">
                                  <node concept="1rXfSq" id="XwFeF7YZzU" role="3fr31v">
                                    <ref role="37wK5l" node="XwFeF7YZ_f" resolve="isCollapsed" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="XwFeF7YZzV" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="XwFeF7YZzW" role="3cqZAp">
              <node concept="2OqwBi" id="XwFeF7YZzX" role="3clFbG">
                <node concept="37vLTw" id="XwFeF7YZzY" role="2Oq$k0">
                  <ref role="3cqZAo" node="XwFeF7YZyR" resolve="myComponent" />
                </node>
                <node concept="liA8E" id="XwFeF7YZzZ" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="XwFeF7YZ$0" role="37wK5m">
                    <ref role="3cqZAo" node="XwFeF7YZyX" resolve="myTitleComponent" />
                  </node>
                  <node concept="10M0yZ" id="XwFeF7YZ$1" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                    <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="XwFeF7YZ$2" role="3clFbw">
            <node concept="3eOSWO" id="XwFeF7YZ$3" role="3uHU7w">
              <node concept="3cmrfG" id="XwFeF7YZ$4" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="XwFeF7YZ$5" role="3uHU7B">
                <node concept="37vLTw" id="XwFeF7YZ$6" role="2Oq$k0">
                  <ref role="3cqZAo" node="XwFeF7YZz3" resolve="name" />
                </node>
                <node concept="liA8E" id="XwFeF7YZ$7" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="XwFeF7YZ$8" role="3uHU7B">
              <node concept="37vLTw" id="XwFeF7YZ$9" role="3uHU7B">
                <ref role="3cqZAo" node="XwFeF7YZz3" resolve="name" />
              </node>
              <node concept="10Nm6u" id="XwFeF7YZ$a" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7YZ$b" role="3cqZAp">
          <node concept="37vLTI" id="XwFeF7YZ$c" role="3clFbG">
            <node concept="2ShNRf" id="XwFeF7YZ$d" role="37vLTx">
              <node concept="1pGfFk" id="6W_V$eaXW4s" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="4mMeETlohKu" role="37wK5m">
                  <node concept="1pGfFk" id="4mMeETloiXg" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~GridLayout.&lt;init&gt;(int,int,int,int)" resolve="GridLayout" />
                    <node concept="3cmrfG" id="4mMeETlokr8" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4mMeETlolmn" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3cmrfG" id="4mMeETlom36" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4mMeETlommA" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="XwFeF7YZ$l" role="37vLTJ">
              <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7vUP_qcHF0D" role="3cqZAp">
          <node concept="3clFbS" id="7vUP_qcHF0F" role="3clFbx">
            <node concept="3clFbF" id="7vUP_qcHGMt" role="3cqZAp">
              <node concept="2OqwBi" id="7vUP_qcHHz0" role="3clFbG">
                <node concept="37vLTw" id="7vUP_qcHGMr" role="2Oq$k0">
                  <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
                </node>
                <node concept="liA8E" id="7vUP_qcHJKy" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                  <node concept="2ShNRf" id="7vUP_qcJnlf" role="37wK5m">
                    <node concept="YeOm9" id="6W_V$eaXW8F" role="2ShVmc">
                      <node concept="1Y3b0j" id="6W_V$eaXW8I" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="z60i:~GridLayout" resolve="GridLayout" />
                        <ref role="37wK5l" to="z60i:~GridLayout.&lt;init&gt;(int,int,int,int)" resolve="GridLayout" />
                        <node concept="3Tm1VV" id="6W_V$eaXW8J" role="1B3o_S" />
                        <node concept="3cmrfG" id="7vUP_qcJnlh" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="7vUP_qcJnli" role="37wK5m">
                          <property role="3cmrfH" value="4" />
                        </node>
                        <node concept="3cmrfG" id="7vUP_qcJnlj" role="37wK5m">
                          <property role="3cmrfH" value="3" />
                        </node>
                        <node concept="3cmrfG" id="7vUP_qcJnlk" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="3clFb_" id="6W_V$eaXWce" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="preferredLayoutSize" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="3Tm1VV" id="6W_V$eaXWcf" role="1B3o_S" />
                          <node concept="3uibUv" id="6W_V$eaXWch" role="3clF45">
                            <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                          </node>
                          <node concept="37vLTG" id="6W_V$eaXWci" role="3clF46">
                            <property role="TrG5h" value="container" />
                            <node concept="3uibUv" id="6W_V$eaXWcj" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="6W_V$eaXWcl" role="3clF47">
                            <node concept="3clFbF" id="6W_V$eaYmHL" role="3cqZAp">
                              <node concept="1rXfSq" id="6W_V$eaYmHJ" role="3clFbG">
                                <ref role="37wK5l" node="6W_V$eaYi1y" resolve="updateColumnNumber" />
                                <node concept="37vLTw" id="6W_V$eaYmTP" role="37wK5m">
                                  <ref role="3cqZAo" node="6W_V$eaXWci" resolve="container" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6W_V$eaXWcp" role="3cqZAp">
                              <node concept="3nyPlj" id="6W_V$eaXWco" role="3clFbG">
                                <ref role="37wK5l" to="z60i:~GridLayout.preferredLayoutSize(java.awt.Container)" resolve="preferredLayoutSize" />
                                <node concept="37vLTw" id="6W_V$eaXWcn" role="37wK5m">
                                  <ref role="3cqZAo" node="6W_V$eaXWci" resolve="container" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="6W_V$eaXWcm" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3clFb_" id="6W_V$eaYn8D" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="minimumLayoutSize" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="3Tm1VV" id="6W_V$eaYn8E" role="1B3o_S" />
                          <node concept="3uibUv" id="6W_V$eaYn8G" role="3clF45">
                            <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                          </node>
                          <node concept="37vLTG" id="6W_V$eaYn8H" role="3clF46">
                            <property role="TrG5h" value="container" />
                            <node concept="3uibUv" id="6W_V$eaYn8I" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="6W_V$eaYn8K" role="3clF47">
                            <node concept="3clFbF" id="6W_V$eaYnUg" role="3cqZAp">
                              <node concept="1rXfSq" id="6W_V$eaYnUe" role="3clFbG">
                                <ref role="37wK5l" node="6W_V$eaYi1y" resolve="updateColumnNumber" />
                                <node concept="37vLTw" id="6W_V$eaYnWo" role="37wK5m">
                                  <ref role="3cqZAo" node="6W_V$eaYn8H" resolve="container" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6W_V$eaYn8O" role="3cqZAp">
                              <node concept="3nyPlj" id="6W_V$eaYn8N" role="3clFbG">
                                <ref role="37wK5l" to="z60i:~GridLayout.minimumLayoutSize(java.awt.Container)" resolve="minimumLayoutSize" />
                                <node concept="37vLTw" id="6W_V$eaYn8M" role="37wK5m">
                                  <ref role="3cqZAo" node="6W_V$eaYn8H" resolve="container" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="6W_V$eaYn8L" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3clFb_" id="6W_V$eaYobO" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="layoutContainer" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="3Tm1VV" id="6W_V$eaYobP" role="1B3o_S" />
                          <node concept="3cqZAl" id="6W_V$eaYobR" role="3clF45" />
                          <node concept="37vLTG" id="6W_V$eaYobS" role="3clF46">
                            <property role="TrG5h" value="container" />
                            <node concept="3uibUv" id="6W_V$eaYobT" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="6W_V$eaYobV" role="3clF47">
                            <node concept="3clFbF" id="6W_V$eaYoYT" role="3cqZAp">
                              <node concept="1rXfSq" id="6W_V$eaYoYR" role="3clFbG">
                                <ref role="37wK5l" node="6W_V$eaYi1y" resolve="updateColumnNumber" />
                                <node concept="37vLTw" id="6W_V$eaYp1p" role="37wK5m">
                                  <ref role="3cqZAo" node="6W_V$eaYobS" resolve="container" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6W_V$eaYobZ" role="3cqZAp">
                              <node concept="3nyPlj" id="6W_V$eaYobY" role="3clFbG">
                                <ref role="37wK5l" to="z60i:~GridLayout.layoutContainer(java.awt.Container)" resolve="layoutContainer" />
                                <node concept="37vLTw" id="6W_V$eaYobX" role="37wK5m">
                                  <ref role="3cqZAo" node="6W_V$eaYobS" resolve="container" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="6W_V$eaYobW" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3clFb_" id="6W_V$eaYi1y" role="jymVt">
                          <property role="TrG5h" value="updateColumnNumber" />
                          <node concept="37vLTG" id="6W_V$eaYljB" role="3clF46">
                            <property role="TrG5h" value="container" />
                            <node concept="3uibUv" id="6W_V$eaYljC" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                            </node>
                          </node>
                          <node concept="3cqZAl" id="6W_V$eaYi1$" role="3clF45" />
                          <node concept="3Tm1VV" id="6W_V$eaYi1_" role="1B3o_S" />
                          <node concept="3clFbS" id="6W_V$eaYi1A" role="3clF47">
                            <node concept="3cpWs8" id="6W_V$eaXYVm" role="3cqZAp">
                              <node concept="3cpWsn" id="6W_V$eaXYVn" role="3cpWs9">
                                <property role="TrG5h" value="toolComponent" />
                                <node concept="3uibUv" id="6W_V$eaXYVk" role="1tU5fm">
                                  <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                                </node>
                                <node concept="2YIFZM" id="6W_V$eaXYVo" role="33vP2m">
                                  <ref role="37wK5l" to="dxuu:~SwingUtilities.getAncestorOfClass(java.lang.Class,java.awt.Component)" resolve="getAncestorOfClass" />
                                  <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                                  <node concept="3VsKOn" id="6W_V$eaXYVp" role="37wK5m">
                                    <ref role="3VsUkX" node="5lGdLibXIsq" resolve="ToolComponent" />
                                  </node>
                                  <node concept="37vLTw" id="6W_V$eaXYVq" role="37wK5m">
                                    <ref role="3cqZAo" node="XwFeF7YZyR" resolve="myComponent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6W_V$eaY7na" role="3cqZAp">
                              <node concept="3cpWsn" id="6W_V$eaY7nb" role="3cpWs9">
                                <property role="TrG5h" value="maxWidth" />
                                <node concept="10Oyi0" id="6W_V$eaY7n2" role="1tU5fm" />
                                <node concept="2OqwBi" id="6W_V$eaY7nc" role="33vP2m">
                                  <node concept="37vLTw" id="6W_V$eaY7nd" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6W_V$eaXYVn" resolve="toolComponent" />
                                  </node>
                                  <node concept="liA8E" id="6W_V$eaY7ne" role="2OqNvi">
                                    <ref role="37wK5l" to="z60i:~Component.getWidth()" resolve="getWidth" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6W_V$eaY8gi" role="3cqZAp">
                              <node concept="1rXfSq" id="6W_V$eaY8gg" role="3clFbG">
                                <ref role="37wK5l" to="z60i:~GridLayout.setColumns(int)" resolve="setColumns" />
                                <node concept="3cmrfG" id="6W_V$eaY8km" role="37wK5m">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                            <node concept="2$JKZl" id="6W_V$eaY8yJ" role="3cqZAp">
                              <node concept="3clFbS" id="6W_V$eaY8yL" role="2LFqv$">
                                <node concept="3clFbF" id="6W_V$eaYdUM" role="3cqZAp">
                                  <node concept="1rXfSq" id="6W_V$eaYdUL" role="3clFbG">
                                    <ref role="37wK5l" to="z60i:~GridLayout.setColumns(int)" resolve="setColumns" />
                                    <node concept="3cpWs3" id="6W_V$eaYe_l" role="37wK5m">
                                      <node concept="3cmrfG" id="6W_V$eaYeOI" role="3uHU7w">
                                        <property role="3cmrfH" value="1" />
                                      </node>
                                      <node concept="1rXfSq" id="6W_V$eaYebx" role="3uHU7B">
                                        <ref role="37wK5l" to="z60i:~GridLayout.getColumns()" resolve="getColumns" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1Wc70l" id="6W_V$eaYbPU" role="2$JKZa">
                                <node concept="3eOVzh" id="6W_V$eaYcM7" role="3uHU7w">
                                  <node concept="3cmrfG" id="6W_V$eaYd1w" role="3uHU7w">
                                    <property role="3cmrfH" value="100" />
                                  </node>
                                  <node concept="1rXfSq" id="6W_V$eaYcc5" role="3uHU7B">
                                    <ref role="37wK5l" to="z60i:~GridLayout.getColumns()" resolve="getColumns" />
                                  </node>
                                </node>
                                <node concept="2dkUwp" id="6W_V$eaYbew" role="3uHU7B">
                                  <node concept="2OqwBi" id="6W_V$eaY8Xa" role="3uHU7B">
                                    <node concept="3nyPlj" id="6W_V$eaY8Uh" role="2Oq$k0">
                                      <ref role="37wK5l" to="z60i:~GridLayout.preferredLayoutSize(java.awt.Container)" resolve="preferredLayoutSize" />
                                      <node concept="37vLTw" id="6W_V$eaYlUo" role="37wK5m">
                                        <ref role="3cqZAo" node="6W_V$eaYljB" resolve="container" />
                                      </node>
                                    </node>
                                    <node concept="2OwXpG" id="6W_V$eaY9_x" role="2OqNvi">
                                      <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="6W_V$eaYb1m" role="3uHU7w">
                                    <ref role="3cqZAo" node="6W_V$eaY7nb" resolve="maxWidth" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6W_V$eaYfRT" role="3cqZAp">
                              <node concept="1rXfSq" id="6W_V$eaYfRR" role="3clFbG">
                                <ref role="37wK5l" to="z60i:~GridLayout.setColumns(int)" resolve="setColumns" />
                                <node concept="2YIFZM" id="6W_V$eb6zHN" role="37wK5m">
                                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                                  <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                                  <node concept="3cmrfG" id="6W_V$eb6zNf" role="37wK5m">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                  <node concept="3cpWsd" id="6W_V$eaYgIm" role="37wK5m">
                                    <node concept="3cmrfG" id="6W_V$eaYgXJ" role="3uHU7w">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                    <node concept="1rXfSq" id="6W_V$eaYgky" role="3uHU7B">
                                      <ref role="37wK5l" to="z60i:~GridLayout.getColumns()" resolve="getColumns" />
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
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7vUP_qcHG4u" role="3clFbw">
            <node concept="Rm8GO" id="7vUP_qcHGpy" role="3uHU7w">
              <ref role="1Px2BO" node="7vUP_qcx$o$" resolve="ViewType" />
              <ref role="Rm8GQ" node="7vUP_qcx$Bp" resolve="SYMBOLS" />
            </node>
            <node concept="37vLTw" id="7vUP_qcHFoG" role="3uHU7B">
              <ref role="3cqZAo" node="7vUP_qczxsh" resolve="viewType" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vUP_qcJlOY" role="3cqZAp" />
        <node concept="1X3_iC" id="_g$GoDieO" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="4q$a58KxVGw" role="8Wnug">
            <node concept="2OqwBi" id="4q$a58KxWEi" role="3clFbG">
              <node concept="37vLTw" id="4q$a58KxVGu" role="2Oq$k0">
                <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
              </node>
              <node concept="liA8E" id="4q$a58KxYZ8" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                <node concept="2ShNRf" id="4q$a58KxZdX" role="37wK5m">
                  <node concept="1pGfFk" id="4q$a58Ky0qi" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                    <node concept="37vLTw" id="4q$a58Ky0_D" role="37wK5m">
                      <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
                    </node>
                    <node concept="10M0yZ" id="4q$a58Ky1aJ" role="37wK5m">
                      <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                      <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7YZ$m" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7YZ$n" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7YZ$o" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
            </node>
            <node concept="liA8E" id="XwFeF7YZ$p" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="XwFeF7YZ$q" role="37wK5m">
                <ref role="37wK5l" to="dxuu:~BorderFactory.createEmptyBorder(int,int,int,int)" resolve="createEmptyBorder" />
                <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                <node concept="3cmrfG" id="XwFeF7YZ$r" role="37wK5m">
                  <property role="3cmrfH" value="6" />
                </node>
                <node concept="3cmrfG" id="XwFeF7YZ$s" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="3cmrfG" id="XwFeF7YZ$t" role="37wK5m">
                  <property role="3cmrfH" value="12" />
                </node>
                <node concept="3cmrfG" id="XwFeF7YZ$u" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7YZ$v" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7YZ$w" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7YZ$x" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7YZyR" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="XwFeF7YZ$y" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="XwFeF7YZ$z" role="37wK5m">
                <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
              </node>
              <node concept="10M0yZ" id="XwFeF7YZ$$" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.WEST" resolve="WEST" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="XwFeF7YZ$_" role="3cqZAp" />
        <node concept="3clFbF" id="XwFeF7YZ$A" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7YZ$B" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7YZ$C" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7YZyR" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="XwFeF7YZ$D" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="XwFeF7YZ$E" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7YZ$F" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7YZ$G" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7YZ$H" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
            </node>
            <node concept="liA8E" id="XwFeF7YZ$I" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="XwFeF7YZ$J" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="XwFeF7YZ$K" role="3cqZAp" />
        <node concept="3clFbF" id="XwFeF7YZ$L" role="3cqZAp">
          <node concept="1rXfSq" id="XwFeF7YZ$M" role="3clFbG">
            <ref role="37wK5l" node="XwFeF7YZ_p" resolve="setCollapsed" />
            <node concept="1rXfSq" id="XwFeF7YZ$N" role="37wK5m">
              <ref role="37wK5l" node="XwFeF7YZ_U" resolve="wasCollapsed" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YZ$O" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YZ$P" role="jymVt">
      <property role="TrG5h" value="addItem" />
      <node concept="3cqZAl" id="XwFeF7YZ$Q" role="3clF45" />
      <node concept="3Tm1VV" id="XwFeF7YZ$R" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YZ$S" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YZ$T" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7YZ$U" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7YZ$V" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
            </node>
            <node concept="liA8E" id="XwFeF7YZ$W" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTw" id="XwFeF7YZ$X" role="37wK5m">
                <ref role="3cqZAo" node="XwFeF7YZ$Y" resolve="item" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="XwFeF7YZ$Y" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="3uibUv" id="XwFeF7YZ$Z" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YZ_0" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YZ_1" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3uibUv" id="XwFeF7YZ_2" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3Tm1VV" id="XwFeF7YZ_3" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YZ_4" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YZ_5" role="3cqZAp">
          <node concept="37vLTw" id="XwFeF7YZ_6" role="3clFbG">
            <ref role="3cqZAo" node="XwFeF7YZyR" resolve="myComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YZ_7" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YZ_8" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="XwFeF7YZ_9" role="3clF45" />
      <node concept="3Tm1VV" id="XwFeF7YZ_a" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YZ_b" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YZ_c" role="3cqZAp">
          <node concept="37vLTw" id="XwFeF7YZ_d" role="3clFbG">
            <ref role="3cqZAo" node="XwFeF7YZyO" resolve="myName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YZ_e" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YZ_f" role="jymVt">
      <property role="TrG5h" value="isCollapsed" />
      <node concept="10P_77" id="XwFeF7YZ_g" role="3clF45" />
      <node concept="3Tm1VV" id="XwFeF7YZ_h" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YZ_i" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YZ_j" role="3cqZAp">
          <node concept="3fqX7Q" id="XwFeF7YZ_k" role="3clFbG">
            <node concept="2OqwBi" id="XwFeF7YZ_l" role="3fr31v">
              <node concept="37vLTw" id="XwFeF7YZ_m" role="2Oq$k0">
                <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
              </node>
              <node concept="liA8E" id="XwFeF7YZ_n" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.isVisible()" resolve="isVisible" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YZ_o" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YZ_p" role="jymVt">
      <property role="TrG5h" value="setCollapsed" />
      <node concept="37vLTG" id="XwFeF7YZ_q" role="3clF46">
        <property role="TrG5h" value="collapsed" />
        <node concept="10P_77" id="XwFeF7YZ_r" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="XwFeF7YZ_s" role="3clF45" />
      <node concept="3Tm1VV" id="XwFeF7YZ_t" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YZ_u" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YZ_v" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7YZ_w" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7YZ_x" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7YZyU" resolve="myItemContainer" />
            </node>
            <node concept="liA8E" id="XwFeF7YZ_y" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setVisible(boolean)" resolve="setVisible" />
              <node concept="3fqX7Q" id="XwFeF7YZ_z" role="37wK5m">
                <node concept="37vLTw" id="XwFeF7YZ_$" role="3fr31v">
                  <ref role="3cqZAo" node="XwFeF7YZ_q" resolve="collapsed" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="XwFeF7YZ__" role="3cqZAp">
          <node concept="2EnYce" id="XwFeF7YZ_A" role="3clFbG">
            <node concept="37vLTw" id="XwFeF7YZ_B" role="2Oq$k0">
              <ref role="3cqZAo" node="XwFeF7YZyX" resolve="myTitleComponent" />
            </node>
            <node concept="liA8E" id="XwFeF7YZ_C" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JLabel.setIcon(javax.swing.Icon)" resolve="setIcon" />
              <node concept="2ShNRf" id="XwFeF7YZ_D" role="37wK5m">
                <node concept="1pGfFk" id="XwFeF7YZ_E" role="2ShVmc">
                  <ref role="37wK5l" node="XwFeF7ZdLZ" resolve="ExpandCollapseIcon" />
                  <node concept="37vLTw" id="XwFeF7YZ_F" role="37wK5m">
                    <ref role="3cqZAo" node="XwFeF7YZ_q" resolve="collapsed" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="XwFeF7YZ_G" role="3cqZAp">
          <node concept="3clFbS" id="XwFeF7YZ_H" role="3clFbx">
            <node concept="3clFbF" id="XwFeF7YZ_I" role="3cqZAp">
              <node concept="2OqwBi" id="XwFeF7YZ_J" role="3clFbG">
                <node concept="10M0yZ" id="XwFeF7YZyC" role="2Oq$k0">
                  <ref role="1PxDUh" node="XwFeF7YZyF" resolve="Folder" />
                  <ref role="3cqZAo" node="XwFeF7YZyG" resolve="ourCollapsedStates" />
                </node>
                <node concept="TSZUe" id="XwFeF7YZ_K" role="2OqNvi">
                  <node concept="1rXfSq" id="XwFeF7YZ_L" role="25WWJ7">
                    <ref role="37wK5l" node="XwFeF7YZ_8" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="XwFeF7YZ_M" role="3clFbw">
            <ref role="3cqZAo" node="XwFeF7YZ_q" resolve="collapsed" />
          </node>
          <node concept="9aQIb" id="XwFeF7YZ_N" role="9aQIa">
            <node concept="3clFbS" id="XwFeF7YZ_O" role="9aQI4">
              <node concept="3clFbF" id="XwFeF7YZ_P" role="3cqZAp">
                <node concept="2OqwBi" id="XwFeF7YZ_Q" role="3clFbG">
                  <node concept="10M0yZ" id="XwFeF7YZyD" role="2Oq$k0">
                    <ref role="1PxDUh" node="XwFeF7YZyF" resolve="Folder" />
                    <ref role="3cqZAo" node="XwFeF7YZyG" resolve="ourCollapsedStates" />
                  </node>
                  <node concept="3dhRuq" id="XwFeF7YZ_R" role="2OqNvi">
                    <node concept="1rXfSq" id="XwFeF7YZ_S" role="25WWJ7">
                      <ref role="37wK5l" node="XwFeF7YZ_8" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XwFeF7YZ_T" role="jymVt" />
    <node concept="3clFb_" id="XwFeF7YZ_U" role="jymVt">
      <property role="TrG5h" value="wasCollapsed" />
      <node concept="10P_77" id="XwFeF7YZ_V" role="3clF45" />
      <node concept="3Tm1VV" id="XwFeF7YZ_W" role="1B3o_S" />
      <node concept="3clFbS" id="XwFeF7YZ_X" role="3clF47">
        <node concept="3clFbF" id="XwFeF7YZ_Y" role="3cqZAp">
          <node concept="2OqwBi" id="XwFeF7YZ_Z" role="3clFbG">
            <node concept="10M0yZ" id="XwFeF7YZyE" role="2Oq$k0">
              <ref role="1PxDUh" node="XwFeF7YZyF" resolve="Folder" />
              <ref role="3cqZAo" node="XwFeF7YZyG" resolve="ourCollapsedStates" />
            </node>
            <node concept="3JPx81" id="XwFeF7YZA0" role="2OqNvi">
              <node concept="1rXfSq" id="XwFeF7YZA1" role="25WWJ7">
                <ref role="37wK5l" node="XwFeF7YZ_8" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6W_V$ebcJ$0" role="jymVt" />
    <node concept="2YIFZL" id="1yMvtXVBluV" role="jymVt">
      <property role="TrG5h" value="buildTitle" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2eQzkDLrNPb" role="3clF47">
        <node concept="3cpWs8" id="2eQzkDLrWFw" role="3cqZAp">
          <node concept="3cpWsn" id="2eQzkDLrWFx" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <node concept="3uibUv" id="2eQzkDLrWFy" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="2eQzkDLrWFz" role="33vP2m">
              <node concept="1pGfFk" id="2eQzkDLrWF$" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="37vLTw" id="2eQzkDLs1lD" role="37wK5m">
                  <ref role="3cqZAo" node="2eQzkDLrXON" resolve="text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="558cVyjyd$S" role="3cqZAp">
          <node concept="3cpWsn" id="558cVyjyd$R" role="3cpWs9">
            <property role="TrG5h" value="border" />
            <node concept="3uibUv" id="558cVyjyd$T" role="1tU5fm">
              <ref role="3uigEE" to="9z78:~Border" resolve="Border" />
            </node>
            <node concept="2YIFZM" id="558cVyjyd_6" role="33vP2m">
              <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
              <ref role="37wK5l" to="dxuu:~BorderFactory.createMatteBorder(int,int,int,int,java.awt.Color)" resolve="createMatteBorder" />
              <node concept="3cmrfG" id="558cVyjyd_7" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cmrfG" id="558cVyjyd_8" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="558cVyjyd_9" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cmrfG" id="558cVyjyd_a" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="558cVyjyd_b" role="37wK5m">
                <ref role="3cqZAo" node="2eQzkDLlAYL" resolve="TITLE_SEPARATOR_COLOR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="558cVyjyjGC" role="3cqZAp">
          <node concept="37vLTI" id="558cVyjyjGD" role="3clFbG">
            <node concept="37vLTw" id="558cVyjyjGE" role="37vLTJ">
              <ref role="3cqZAo" node="558cVyjyd$R" resolve="border" />
            </node>
            <node concept="2YIFZM" id="558cVyjyjGP" role="37vLTx">
              <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
              <ref role="37wK5l" to="dxuu:~BorderFactory.createCompoundBorder(javax.swing.border.Border,javax.swing.border.Border)" resolve="createCompoundBorder" />
              <node concept="37vLTw" id="558cVyjyjGQ" role="37wK5m">
                <ref role="3cqZAo" node="558cVyjyd$R" resolve="border" />
              </node>
              <node concept="2YIFZM" id="558cVyjyjGZ" role="37wK5m">
                <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                <ref role="37wK5l" to="dxuu:~BorderFactory.createEmptyBorder(int,int,int,int)" resolve="createEmptyBorder" />
                <node concept="3cmrfG" id="558cVyjyjH0" role="37wK5m">
                  <property role="3cmrfH" value="6" />
                </node>
                <node concept="3cmrfG" id="558cVyjyjH1" role="37wK5m">
                  <property role="3cmrfH" value="6" />
                </node>
                <node concept="3cmrfG" id="558cVyjyjH2" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="3cmrfG" id="558cVyjyjH3" role="37wK5m">
                  <property role="3cmrfH" value="6" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="558cVyjypvH" role="3cqZAp">
          <node concept="2OqwBi" id="558cVyjypwb" role="3clFbG">
            <node concept="37vLTw" id="558cVyjypvN" role="2Oq$k0">
              <ref role="3cqZAo" node="2eQzkDLrWFx" resolve="label" />
            </node>
            <node concept="liA8E" id="558cVyjypwc" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="37vLTw" id="558cVyjypwd" role="37wK5m">
                <ref role="3cqZAo" node="558cVyjyd$R" resolve="border" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="558cVyjyupq" role="3cqZAp">
          <node concept="2OqwBi" id="558cVyjyupV" role="3clFbG">
            <node concept="37vLTw" id="558cVyjyupz" role="2Oq$k0">
              <ref role="3cqZAo" node="2eQzkDLrWFx" resolve="label" />
            </node>
            <node concept="liA8E" id="558cVyjyupW" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setForeground(java.awt.Color)" resolve="setForeground" />
              <node concept="37vLTw" id="558cVyjyupX" role="37wK5m">
                <ref role="3cqZAo" node="2eQzkDLlytZ" resolve="TITLE_FOREGROUND_COLOR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="558cVyjy$cB" role="3cqZAp">
          <node concept="2OqwBi" id="558cVyjy$d5" role="3clFbG">
            <node concept="37vLTw" id="558cVyjy$cH" role="2Oq$k0">
              <ref role="3cqZAo" node="2eQzkDLrWFx" resolve="label" />
            </node>
            <node concept="liA8E" id="558cVyjy$d6" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
              <node concept="2YIFZM" id="558cVyjy$db" role="37wK5m">
                <ref role="1Pybhc" to="g1qu:~JBFont" resolve="JBFont" />
                <ref role="37wK5l" to="g1qu:~JBFont.smallOrNewUiMedium()" resolve="smallOrNewUiMedium" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2eQzkDLrYdH" role="3cqZAp">
          <node concept="37vLTw" id="2eQzkDLrYtX" role="3cqZAk">
            <ref role="3cqZAo" node="2eQzkDLrWFx" resolve="label" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2eQzkDLrXON" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="2eQzkDLrXOM" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6lakFzj5BFe" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
      </node>
      <node concept="3Tm1VV" id="2eQzkDLrNPa" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="XwFeF7YZA2" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4q$a58KzpoP">
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="ScaledIcon" />
    <node concept="2tJIrI" id="4q$a58KzpwY" role="jymVt" />
    <node concept="2YIFZL" id="4q$a58K$5Mo" role="jymVt">
      <property role="TrG5h" value="scaleIfNeeded" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4q$a58KzTVh" role="3clF47">
        <node concept="3clFbJ" id="4q$a58KzVTM" role="3cqZAp">
          <node concept="3clFbS" id="4q$a58KzVTN" role="3clFbx">
            <node concept="3cpWs6" id="4q$a58K$4Gs" role="3cqZAp">
              <node concept="37vLTw" id="4q$a58K$50y" role="3cqZAk">
                <ref role="3cqZAo" node="4q$a58KzVfO" resolve="unscaled" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4q$a58KzYx0" role="3clFbw">
            <node concept="3clFbC" id="4q$a58KzZUP" role="3uHU7w">
              <node concept="2OqwBi" id="4q$a58K$0oS" role="3uHU7w">
                <node concept="37vLTw" id="4q$a58K$07U" role="2Oq$k0">
                  <ref role="3cqZAo" node="4q$a58KzVfO" resolve="unscaled" />
                </node>
                <node concept="liA8E" id="4q$a58K$0DP" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~Icon.getIconHeight()" resolve="getIconHeight" />
                </node>
              </node>
              <node concept="37vLTw" id="4q$a58KzYCK" role="3uHU7B">
                <ref role="3cqZAo" node="4q$a58KzVfM" resolve="height" />
              </node>
            </node>
            <node concept="3clFbC" id="4q$a58KzWKE" role="3uHU7B">
              <node concept="37vLTw" id="4q$a58KzVYD" role="3uHU7B">
                <ref role="3cqZAo" node="4q$a58KzVfK" resolve="width" />
              </node>
              <node concept="2OqwBi" id="4q$a58KzXdL" role="3uHU7w">
                <node concept="37vLTw" id="4q$a58KzWXh" role="2Oq$k0">
                  <ref role="3cqZAo" node="4q$a58KzVfO" resolve="unscaled" />
                </node>
                <node concept="liA8E" id="4q$a58KzXug" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~Icon.getIconWidth()" resolve="getIconWidth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4q$a58K$4w4" role="9aQIa">
            <node concept="3clFbS" id="4q$a58K$4w5" role="9aQI4">
              <node concept="3cpWs6" id="4q$a58K$17k" role="3cqZAp">
                <node concept="2ShNRf" id="4q$a58K$1js" role="3cqZAk">
                  <node concept="1pGfFk" id="4q$a58K$2Dj" role="2ShVmc">
                    <ref role="37wK5l" node="4q$a58KzqmH" resolve="ScaledIcon" />
                    <node concept="37vLTw" id="4q$a58K$2Yh" role="37wK5m">
                      <ref role="3cqZAo" node="4q$a58KzVfK" resolve="width" />
                    </node>
                    <node concept="37vLTw" id="4q$a58K$3Lm" role="37wK5m">
                      <ref role="3cqZAo" node="4q$a58KzVfM" resolve="height" />
                    </node>
                    <node concept="37vLTw" id="4q$a58K$4iw" role="37wK5m">
                      <ref role="3cqZAo" node="4q$a58KzVfO" resolve="unscaled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58KzVfK" role="3clF46">
        <property role="TrG5h" value="width" />
        <node concept="10Oyi0" id="4q$a58KzVfL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58KzVfM" role="3clF46">
        <property role="TrG5h" value="height" />
        <node concept="10Oyi0" id="4q$a58KzVfN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58KzVfO" role="3clF46">
        <property role="TrG5h" value="unscaled" />
        <node concept="3uibUv" id="4q$a58KzVfP" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="3uibUv" id="4q$a58KzVGi" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="4q$a58KzTVg" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="4q$a58K_2FC" role="jymVt">
      <property role="TrG5h" value="scaleIfNeeded" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4q$a58K_2FD" role="3clF47">
        <node concept="3clFbJ" id="4q$a58K_2FE" role="3cqZAp">
          <node concept="3clFbS" id="4q$a58K_2FF" role="3clFbx">
            <node concept="3cpWs6" id="4q$a58K_2FG" role="3cqZAp">
              <node concept="37vLTw" id="4q$a58K_2FH" role="3cqZAk">
                <ref role="3cqZAo" node="4q$a58K_2G5" resolve="unscaled" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4q$a58K_2FJ" role="3clFbw">
            <node concept="2OqwBi" id="4q$a58K_2FK" role="3uHU7w">
              <node concept="37vLTw" id="4q$a58K_2FL" role="2Oq$k0">
                <ref role="3cqZAo" node="4q$a58K_2G5" resolve="unscaled" />
              </node>
              <node concept="liA8E" id="4q$a58K_2FM" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~Icon.getIconHeight()" resolve="getIconHeight" />
              </node>
            </node>
            <node concept="37vLTw" id="4q$a58K_2FN" role="3uHU7B">
              <ref role="3cqZAo" node="4q$a58K_2G3" resolve="height" />
            </node>
          </node>
          <node concept="9aQIb" id="4q$a58K_2FT" role="9aQIa">
            <node concept="3clFbS" id="4q$a58K_2FU" role="9aQI4">
              <node concept="3cpWs6" id="4q$a58K_2FV" role="3cqZAp">
                <node concept="2ShNRf" id="4q$a58K_2FW" role="3cqZAk">
                  <node concept="1pGfFk" id="4q$a58K_2FX" role="2ShVmc">
                    <ref role="37wK5l" node="4q$a58K_3cL" resolve="ScaledIcon" />
                    <node concept="FJ1c_" id="4q$a58K_a5R" role="37wK5m">
                      <node concept="2OqwBi" id="4q$a58K_a5S" role="3uHU7w">
                        <node concept="37vLTw" id="4q$a58K_atU" role="2Oq$k0">
                          <ref role="3cqZAo" node="4q$a58K_2G5" resolve="unscaled" />
                        </node>
                        <node concept="liA8E" id="4q$a58K_a5U" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~Icon.getIconHeight()" resolve="getIconHeight" />
                        </node>
                      </node>
                      <node concept="1eOMI4" id="4q$a58K_a5V" role="3uHU7B">
                        <node concept="10QFUN" id="4q$a58K_a5W" role="1eOMHV">
                          <node concept="37vLTw" id="4q$a58K_a5X" role="10QFUP">
                            <ref role="3cqZAo" node="4q$a58K_2G3" resolve="height" />
                          </node>
                          <node concept="10P55v" id="4q$a58K_a5Y" role="10QFUM" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4q$a58K_2G0" role="37wK5m">
                      <ref role="3cqZAo" node="4q$a58K_2G5" resolve="unscaled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58K_2G3" role="3clF46">
        <property role="TrG5h" value="height" />
        <node concept="10Oyi0" id="4q$a58K_2G4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58K_2G5" role="3clF46">
        <property role="TrG5h" value="unscaled" />
        <node concept="3uibUv" id="4q$a58K_2G6" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="3uibUv" id="4q$a58K_2G7" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="4q$a58K_2G8" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4q$a58KzTGE" role="jymVt" />
    <node concept="312cEg" id="4q$a58KzpFo" role="jymVt">
      <property role="TrG5h" value="myScale" />
      <node concept="3Tm6S6" id="4q$a58KzpFp" role="1B3o_S" />
      <node concept="10P55v" id="4q$a58K$H4r" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4q$a58K$HpL" role="jymVt" />
    <node concept="312cEg" id="4q$a58Kzq7C" role="jymVt">
      <property role="TrG5h" value="myUnscaled" />
      <node concept="3Tm6S6" id="4q$a58Kzq7D" role="1B3o_S" />
      <node concept="3uibUv" id="4q$a58Kzqcu" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58Kzp$C" role="jymVt" />
    <node concept="3clFbW" id="4q$a58KzqmH" role="jymVt">
      <node concept="3cqZAl" id="4q$a58KzqmI" role="3clF45" />
      <node concept="3Tm1VV" id="4q$a58KzqmJ" role="1B3o_S" />
      <node concept="3clFbS" id="4q$a58KzqmL" role="3clF47">
        <node concept="3clFbF" id="4q$a58Kzqn9" role="3cqZAp">
          <node concept="37vLTI" id="4q$a58Kzqnb" role="3clFbG">
            <node concept="37vLTw" id="4q$a58Kzqnf" role="37vLTJ">
              <ref role="3cqZAo" node="4q$a58Kzq7C" resolve="myUnscaled" />
            </node>
            <node concept="37vLTw" id="4q$a58Kzqng" role="37vLTx">
              <ref role="3cqZAo" node="4q$a58Kzqn8" resolve="unscaled" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4q$a58K$Wb7" role="3cqZAp">
          <node concept="3cpWsn" id="4q$a58K$Wb8" role="3cpWs9">
            <property role="TrG5h" value="scaleX" />
            <node concept="10P55v" id="4q$a58K$Wb9" role="1tU5fm" />
            <node concept="FJ1c_" id="4q$a58K$Wba" role="33vP2m">
              <node concept="2OqwBi" id="4q$a58K$Wbb" role="3uHU7w">
                <node concept="37vLTw" id="4q$a58K$Wbc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4q$a58Kzq7C" resolve="myUnscaled" />
                </node>
                <node concept="liA8E" id="4q$a58K$Wbd" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~Icon.getIconWidth()" resolve="getIconWidth" />
                </node>
              </node>
              <node concept="1eOMI4" id="4q$a58K$Wbe" role="3uHU7B">
                <node concept="10QFUN" id="4q$a58K$Wbf" role="1eOMHV">
                  <node concept="37vLTw" id="4q$a58K$WC4" role="10QFUP">
                    <ref role="3cqZAo" node="4q$a58KzqmY" resolve="width" />
                  </node>
                  <node concept="10P55v" id="4q$a58K$Wbh" role="10QFUM" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4q$a58K$Wbi" role="3cqZAp">
          <node concept="3cpWsn" id="4q$a58K$Wbj" role="3cpWs9">
            <property role="TrG5h" value="scaleY" />
            <node concept="10P55v" id="4q$a58K$Wbk" role="1tU5fm" />
            <node concept="FJ1c_" id="4q$a58K$Wbl" role="33vP2m">
              <node concept="2OqwBi" id="4q$a58K$Wbm" role="3uHU7w">
                <node concept="37vLTw" id="4q$a58K$Wbn" role="2Oq$k0">
                  <ref role="3cqZAo" node="4q$a58Kzq7C" resolve="myUnscaled" />
                </node>
                <node concept="liA8E" id="4q$a58K$Wbo" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~Icon.getIconHeight()" resolve="getIconHeight" />
                </node>
              </node>
              <node concept="1eOMI4" id="4q$a58K$Wbp" role="3uHU7B">
                <node concept="10QFUN" id="4q$a58K$Wbq" role="1eOMHV">
                  <node concept="37vLTw" id="4q$a58K$Xe5" role="10QFUP">
                    <ref role="3cqZAo" node="4q$a58KzqmO" resolve="height" />
                  </node>
                  <node concept="10P55v" id="4q$a58K$Wbs" role="10QFUM" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4q$a58KzqmZ" role="3cqZAp">
          <node concept="37vLTI" id="4q$a58Kzqn1" role="3clFbG">
            <node concept="37vLTw" id="4q$a58Kzqn5" role="37vLTJ">
              <ref role="3cqZAo" node="4q$a58KzpFo" resolve="myScale" />
            </node>
            <node concept="2YIFZM" id="4q$a58K$ZEJ" role="37vLTx">
              <ref role="37wK5l" to="wyt6:~Math.min(double,double)" resolve="min" />
              <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
              <node concept="37vLTw" id="4q$a58K$ZEK" role="37wK5m">
                <ref role="3cqZAo" node="4q$a58K$Wb8" resolve="scaleX" />
              </node>
              <node concept="37vLTw" id="4q$a58K$ZEL" role="37wK5m">
                <ref role="3cqZAo" node="4q$a58K$Wbj" resolve="scaleY" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58KzqmY" role="3clF46">
        <property role="TrG5h" value="width" />
        <node concept="10Oyi0" id="4q$a58KzqmX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58KzqmO" role="3clF46">
        <property role="TrG5h" value="height" />
        <node concept="10Oyi0" id="4q$a58KzqmN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58Kzqn8" role="3clF46">
        <property role="TrG5h" value="unscaled" />
        <node concept="3uibUv" id="4q$a58Kzqn7" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58K_6Dy" role="jymVt" />
    <node concept="3clFbW" id="4q$a58K_3cL" role="jymVt">
      <node concept="3cqZAl" id="4q$a58K_3cM" role="3clF45" />
      <node concept="3Tm1VV" id="4q$a58K_3cN" role="1B3o_S" />
      <node concept="3clFbS" id="4q$a58K_3cO" role="3clF47">
        <node concept="3clFbF" id="4q$a58K_3cP" role="3cqZAp">
          <node concept="37vLTI" id="4q$a58K_3cQ" role="3clFbG">
            <node concept="37vLTw" id="4q$a58K_3cR" role="37vLTJ">
              <ref role="3cqZAo" node="4q$a58Kzq7C" resolve="myUnscaled" />
            </node>
            <node concept="37vLTw" id="4q$a58K_3cS" role="37vLTx">
              <ref role="3cqZAo" node="4q$a58K_3dp" resolve="unscaled" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4q$a58K_3df" role="3cqZAp">
          <node concept="37vLTI" id="4q$a58K_3dg" role="3clFbG">
            <node concept="37vLTw" id="4q$a58K_3dh" role="37vLTJ">
              <ref role="3cqZAo" node="4q$a58KzpFo" resolve="myScale" />
            </node>
            <node concept="37vLTw" id="4q$a58K_5EF" role="37vLTx">
              <ref role="3cqZAo" node="4q$a58K_3NS" resolve="scale" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58K_3NS" role="3clF46">
        <property role="TrG5h" value="scale" />
        <node concept="10P55v" id="4q$a58K_3V6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58K_3dp" role="3clF46">
        <property role="TrG5h" value="unscaled" />
        <node concept="3uibUv" id="4q$a58K_3dq" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58K$F2C" role="jymVt" />
    <node concept="3Tm1VV" id="4q$a58KzpoQ" role="1B3o_S" />
    <node concept="3uibUv" id="4q$a58Kzpph" role="EKbjA">
      <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
    </node>
    <node concept="3clFb_" id="4q$a58KzprG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIconHeight" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4q$a58KzprH" role="1B3o_S" />
      <node concept="10Oyi0" id="4q$a58KzprJ" role="3clF45" />
      <node concept="3clFbS" id="4q$a58KzprK" role="3clF47">
        <node concept="3clFbF" id="4q$a58K$Ilf" role="3cqZAp">
          <node concept="1eOMI4" id="4q$a58K$Tx7" role="3clFbG">
            <node concept="10QFUN" id="4q$a58K$Tx8" role="1eOMHV">
              <node concept="2YIFZM" id="4q$a58K$Tx0" role="10QFUP">
                <ref role="37wK5l" to="wyt6:~Math.round(double)" resolve="round" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="2YIFZM" id="4q$a58K$Tx1" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.ceil(double)" resolve="ceil" />
                  <node concept="17qRlL" id="4q$a58K$Tx2" role="37wK5m">
                    <node concept="37vLTw" id="4q$a58K$Tx3" role="3uHU7w">
                      <ref role="3cqZAo" node="4q$a58KzpFo" resolve="myScale" />
                    </node>
                    <node concept="2OqwBi" id="4q$a58K$Tx4" role="3uHU7B">
                      <node concept="37vLTw" id="4q$a58K$Tx5" role="2Oq$k0">
                        <ref role="3cqZAo" node="4q$a58Kzq7C" resolve="myUnscaled" />
                      </node>
                      <node concept="liA8E" id="4q$a58K$Tx6" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~Icon.getIconHeight()" resolve="getIconHeight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Oyi0" id="4q$a58K$UET" role="10QFUM" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mMeETlt4xp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58Kzu5J" role="jymVt" />
    <node concept="3clFb_" id="4q$a58KzprL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIconWidth" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4q$a58KzprM" role="1B3o_S" />
      <node concept="10Oyi0" id="4q$a58KzprO" role="3clF45" />
      <node concept="3clFbS" id="4q$a58KzprP" role="3clF47">
        <node concept="3clFbF" id="4q$a58K$V3J" role="3cqZAp">
          <node concept="1eOMI4" id="4q$a58K$V3K" role="3clFbG">
            <node concept="10QFUN" id="4q$a58K$V3L" role="1eOMHV">
              <node concept="2YIFZM" id="4q$a58K$V3M" role="10QFUP">
                <ref role="37wK5l" to="wyt6:~Math.round(double)" resolve="round" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="2YIFZM" id="4q$a58K$V3N" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.ceil(double)" resolve="ceil" />
                  <node concept="17qRlL" id="4q$a58K$V3O" role="37wK5m">
                    <node concept="37vLTw" id="4q$a58K$V3P" role="3uHU7w">
                      <ref role="3cqZAo" node="4q$a58KzpFo" resolve="myScale" />
                    </node>
                    <node concept="2OqwBi" id="4q$a58K$V3Q" role="3uHU7B">
                      <node concept="37vLTw" id="4q$a58K$V3R" role="2Oq$k0">
                        <ref role="3cqZAo" node="4q$a58Kzq7C" resolve="myUnscaled" />
                      </node>
                      <node concept="liA8E" id="4q$a58K$V3S" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~Icon.getIconWidth()" resolve="getIconWidth" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Oyi0" id="4q$a58K$V3T" role="10QFUM" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mMeETlt4xo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4q$a58Kztp3" role="jymVt" />
    <node concept="3clFb_" id="4q$a58KzprQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paintIcon" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4q$a58KzprR" role="1B3o_S" />
      <node concept="3cqZAl" id="4q$a58KzprT" role="3clF45" />
      <node concept="37vLTG" id="4q$a58KzprU" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="4q$a58KzprV" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58KzprW" role="3clF46">
        <property role="TrG5h" value="g_" />
        <node concept="3uibUv" id="4q$a58KzprX" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="4q$a58KzprY" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="4q$a58KzprZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4q$a58Kzps0" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="4q$a58Kzps1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4q$a58Kzps2" role="3clF47">
        <node concept="3cpWs8" id="4q$a58KzvGm" role="3cqZAp">
          <node concept="3cpWsn" id="4q$a58KzvGn" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="4q$a58Kz_AM" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="1eOMI4" id="4q$a58Kz_QL" role="33vP2m">
              <node concept="10QFUN" id="4q$a58Kz_QM" role="1eOMHV">
                <node concept="2OqwBi" id="4q$a58Kz_QI" role="10QFUP">
                  <node concept="37vLTw" id="4q$a58Kz_QJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4q$a58KzprW" resolve="g_" />
                  </node>
                  <node concept="liA8E" id="4q$a58Kz_QK" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                  </node>
                </node>
                <node concept="3uibUv" id="4q$a58Kz_QH" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="4q$a58KzQXo" role="3cqZAp">
          <node concept="3clFbS" id="4q$a58KzQXq" role="1zxBo7">
            <node concept="3clFbF" id="4q$a58KzyKe" role="3cqZAp">
              <node concept="2OqwBi" id="4q$a58KzyKT" role="3clFbG">
                <node concept="37vLTw" id="4q$a58KzyKc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4q$a58KzvGn" resolve="g" />
                </node>
                <node concept="liA8E" id="4q$a58KzzB_" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.translate(int,int)" resolve="translate" />
                  <node concept="37vLTw" id="4q$a58KzzMB" role="37wK5m">
                    <ref role="3cqZAo" node="4q$a58KzprY" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="4q$a58Kz$j3" role="37wK5m">
                    <ref role="3cqZAo" node="4q$a58Kzps0" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4q$a58Kz$Cv" role="3cqZAp">
              <node concept="2OqwBi" id="4q$a58Kz$Dw" role="3clFbG">
                <node concept="37vLTw" id="4q$a58Kz$Ct" role="2Oq$k0">
                  <ref role="3cqZAo" node="4q$a58KzvGn" resolve="g" />
                </node>
                <node concept="liA8E" id="4q$a58KzBzw" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.scale(double,double)" resolve="scale" />
                  <node concept="37vLTw" id="4q$a58K_1FD" role="37wK5m">
                    <ref role="3cqZAo" node="4q$a58KzpFo" resolve="myScale" />
                  </node>
                  <node concept="37vLTw" id="4q$a58K_26M" role="37wK5m">
                    <ref role="3cqZAo" node="4q$a58KzpFo" resolve="myScale" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4q$a58KzNqB" role="3cqZAp">
              <node concept="2OqwBi" id="4q$a58KzNEj" role="3clFbG">
                <node concept="37vLTw" id="4q$a58KzNq_" role="2Oq$k0">
                  <ref role="3cqZAo" node="4q$a58Kzq7C" resolve="myUnscaled" />
                </node>
                <node concept="liA8E" id="4q$a58KzO8$" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~Icon.paintIcon(java.awt.Component,java.awt.Graphics,int,int)" resolve="paintIcon" />
                  <node concept="37vLTw" id="4q$a58KzOqx" role="37wK5m">
                    <ref role="3cqZAo" node="4q$a58KzprU" resolve="component" />
                  </node>
                  <node concept="37vLTw" id="4q$a58KzOTk" role="37wK5m">
                    <ref role="3cqZAo" node="4q$a58KzvGn" resolve="g" />
                  </node>
                  <node concept="3cmrfG" id="4q$a58KzPYc" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="4q$a58KzQlG" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="xvs04dHy28" role="1zxBo6">
            <node concept="3clFbS" id="4q$a58KzQXr" role="1wplMD">
              <node concept="3clFbF" id="4q$a58KzSeR" role="3cqZAp">
                <node concept="2OqwBi" id="4q$a58KzSfq" role="3clFbG">
                  <node concept="37vLTw" id="4q$a58KzSeQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4q$a58KzvGn" resolve="g" />
                  </node>
                  <node concept="liA8E" id="4q$a58KzTlA" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.dispose()" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mMeETlt4xn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7vUP_qcTFox">
    <property role="TrG5h" value="ContextActionsUtil" />
    <node concept="2YIFZL" id="1b5aB8eFZrI" role="jymVt">
      <property role="TrG5h" value="findDescendantAWTComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1b5aB8eEiYT" role="3clF47">
        <node concept="3clFbJ" id="1b5aB8eEQ7l" role="3cqZAp">
          <node concept="3clFbS" id="1b5aB8eEQ7m" role="3clFbx">
            <node concept="3cpWs6" id="1b5aB8eEXFW" role="3cqZAp">
              <node concept="37vLTw" id="1b5aB8eEZnH" role="3cqZAk">
                <ref role="3cqZAo" node="1b5aB8eED7x" resolve="root" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1b5aB8eEQFp" role="3clFbw">
            <node concept="37vLTw" id="1b5aB8eEQxJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1b5aB8eEHnB" resolve="condition" />
            </node>
            <node concept="liA8E" id="1b5aB8eEX_q" role="2OqNvi">
              <ref role="37wK5l" to="zn9m:~Condition.value(java.lang.Object)" resolve="value" />
              <node concept="37vLTw" id="1b5aB8eEXB7" role="37wK5m">
                <ref role="3cqZAo" node="1b5aB8eED7x" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1b5aB8eF332" role="3cqZAp" />
        <node concept="3clFbJ" id="1b5aB8eFn1A" role="3cqZAp">
          <node concept="3clFbS" id="1b5aB8eFn1D" role="3clFbx">
            <node concept="2Gpval" id="1b5aB8eFaTf" role="3cqZAp">
              <node concept="2GrKxI" id="1b5aB8eFaTh" role="2Gsz3X">
                <property role="TrG5h" value="child" />
              </node>
              <node concept="3clFbS" id="1b5aB8eFaTl" role="2LFqv$">
                <node concept="3cpWs8" id="1b5aB8eFzzx" role="3cqZAp">
                  <node concept="3cpWsn" id="1b5aB8eFzzy" role="3cpWs9">
                    <property role="TrG5h" value="match" />
                    <node concept="3uibUv" id="1b5aB8eFzzz" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                    </node>
                    <node concept="1rXfSq" id="1b5aB8eFzAh" role="33vP2m">
                      <ref role="37wK5l" node="1b5aB8eFZrI" resolve="findDescendantAWTComponent" />
                      <node concept="2GrUjf" id="1b5aB8eFzBe" role="37wK5m">
                        <ref role="2Gs0qQ" node="1b5aB8eFaTh" resolve="child" />
                      </node>
                      <node concept="37vLTw" id="1b5aB8eFzN_" role="37wK5m">
                        <ref role="3cqZAo" node="1b5aB8eEHnB" resolve="condition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1b5aB8eF$cJ" role="3cqZAp">
                  <node concept="3clFbS" id="1b5aB8eF$cM" role="3clFbx">
                    <node concept="3cpWs6" id="1b5aB8eF$F8" role="3cqZAp">
                      <node concept="37vLTw" id="1b5aB8eFD0y" role="3cqZAk">
                        <ref role="3cqZAo" node="1b5aB8eFzzy" resolve="match" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1b5aB8eF$AA" role="3clFbw">
                    <node concept="10Nm6u" id="1b5aB8eF$Bj" role="3uHU7w" />
                    <node concept="37vLTw" id="1b5aB8eF$hh" role="3uHU7B">
                      <ref role="3cqZAo" node="1b5aB8eFzzy" resolve="match" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1b5aB8eFwzX" role="2GsD0m">
                <node concept="1eOMI4" id="1b5aB8eFwbK" role="2Oq$k0">
                  <node concept="10QFUN" id="1b5aB8eFwbH" role="1eOMHV">
                    <node concept="3uibUv" id="1b5aB8eFwbM" role="10QFUM">
                      <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                    </node>
                    <node concept="37vLTw" id="1b5aB8eFwbN" role="10QFUP">
                      <ref role="3cqZAo" node="1b5aB8eED7x" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1b5aB8eFz4B" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1b5aB8eFqYX" role="3clFbw">
            <node concept="3uibUv" id="1b5aB8eFrAf" role="2ZW6by">
              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
            </node>
            <node concept="37vLTw" id="1b5aB8eFqpS" role="2ZW6bz">
              <ref role="3cqZAo" node="1b5aB8eED7x" resolve="root" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1b5aB8eFHiH" role="3cqZAp" />
        <node concept="3cpWs6" id="1b5aB8eFOcR" role="3cqZAp">
          <node concept="10Nm6u" id="1b5aB8eFV9v" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="1b5aB8eED7x" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="1b5aB8eEHia" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="1b5aB8eEHnB" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3uibUv" id="1b5aB8eELx0" role="1tU5fm">
          <ref role="3uigEE" to="zn9m:~Condition" resolve="Condition" />
          <node concept="3uibUv" id="1b5aB8eELRP" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1b5aB8eEM1b" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
      <node concept="3Tm1VV" id="7vUP_qcUeyB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7vUP_qcUd_K" role="jymVt" />
    <node concept="2YIFZL" id="6zKSYRPuMSF" role="jymVt">
      <property role="TrG5h" value="findDescendantAWTComponents" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6zKSYRPuMSG" role="3clF47">
        <node concept="3clFbJ" id="6zKSYRPuMSH" role="3cqZAp">
          <node concept="3clFbS" id="6zKSYRPuMSI" role="3clFbx">
            <node concept="3clFbF" id="6zKSYRPv1cV" role="3cqZAp">
              <node concept="2OqwBi" id="6zKSYRPv1BH" role="3clFbG">
                <node concept="37vLTw" id="6zKSYRPv1cU" role="2Oq$k0">
                  <ref role="3cqZAo" node="6zKSYRPuYUP" resolve="result" />
                </node>
                <node concept="liA8E" id="6zKSYRPv7xo" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="6zKSYRPv7Xc" role="37wK5m">
                    <ref role="3cqZAo" node="6zKSYRPuMTk" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6zKSYRPuMSL" role="3clFbw">
            <node concept="37vLTw" id="6zKSYRPuMSM" role="2Oq$k0">
              <ref role="3cqZAo" node="6zKSYRPuMTm" resolve="condition" />
            </node>
            <node concept="liA8E" id="6zKSYRPuMSN" role="2OqNvi">
              <ref role="37wK5l" to="zn9m:~Condition.value(java.lang.Object)" resolve="value" />
              <node concept="37vLTw" id="6zKSYRPuMSO" role="37wK5m">
                <ref role="3cqZAo" node="6zKSYRPuMTk" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6zKSYRPuMSP" role="3cqZAp" />
        <node concept="3clFbJ" id="6zKSYRPuMSQ" role="3cqZAp">
          <node concept="3clFbS" id="6zKSYRPuMSR" role="3clFbx">
            <node concept="2Gpval" id="6zKSYRPuMSS" role="3cqZAp">
              <node concept="2GrKxI" id="6zKSYRPuMST" role="2Gsz3X">
                <property role="TrG5h" value="child" />
              </node>
              <node concept="3clFbS" id="6zKSYRPuMSU" role="2LFqv$">
                <node concept="3clFbF" id="6zKSYRPveeX" role="3cqZAp">
                  <node concept="1rXfSq" id="6zKSYRPuMSY" role="3clFbG">
                    <ref role="37wK5l" node="6zKSYRPuMSF" resolve="findDescendantAWTComponents" />
                    <node concept="2GrUjf" id="6zKSYRPuMSZ" role="37wK5m">
                      <ref role="2Gs0qQ" node="6zKSYRPuMST" resolve="child" />
                    </node>
                    <node concept="37vLTw" id="6zKSYRPuMT0" role="37wK5m">
                      <ref role="3cqZAo" node="6zKSYRPuMTm" resolve="condition" />
                    </node>
                    <node concept="37vLTw" id="6zKSYRPvagj" role="37wK5m">
                      <ref role="3cqZAo" node="6zKSYRPuYUP" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6zKSYRPuMT8" role="2GsD0m">
                <node concept="1eOMI4" id="6zKSYRPuMT9" role="2Oq$k0">
                  <node concept="10QFUN" id="6zKSYRPuMTa" role="1eOMHV">
                    <node concept="3uibUv" id="6zKSYRPuMTb" role="10QFUM">
                      <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                    </node>
                    <node concept="37vLTw" id="6zKSYRPuMTc" role="10QFUP">
                      <ref role="3cqZAo" node="6zKSYRPuMTk" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6zKSYRPuMTd" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6zKSYRPuMTe" role="3clFbw">
            <node concept="3uibUv" id="6zKSYRPuMTf" role="2ZW6by">
              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
            </node>
            <node concept="37vLTw" id="6zKSYRPuMTg" role="2ZW6bz">
              <ref role="3cqZAo" node="6zKSYRPuMTk" resolve="root" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6zKSYRPuMTk" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="6zKSYRPuMTl" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="6zKSYRPuMTm" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3uibUv" id="6zKSYRPuMTn" role="1tU5fm">
          <ref role="3uigEE" to="zn9m:~Condition" resolve="Condition" />
          <node concept="3uibUv" id="6zKSYRPuMTo" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6zKSYRPuYUP" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="6zKSYRPuZJV" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="6zKSYRPv063" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6zKSYRPveXt" role="3clF45" />
      <node concept="3Tm1VV" id="7vUP_qcUeGa" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7vUP_qcUe0K" role="jymVt" />
    <node concept="2YIFZL" id="6zKSYRPvgAa" role="jymVt">
      <property role="TrG5h" value="findDescendantAWTComponents" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6zKSYRPvgAb" role="3clF47">
        <node concept="3cpWs8" id="6zKSYRPvuvB" role="3cqZAp">
          <node concept="3cpWsn" id="6zKSYRPvuvC" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="6zKSYRPvuv_" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6zKSYRPvuLi" role="11_B2D">
                <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
              </node>
            </node>
            <node concept="2ShNRf" id="6zKSYRPvvas" role="33vP2m">
              <node concept="1pGfFk" id="6zKSYRPvRLZ" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="6zKSYRPvSd4" role="1pMfVU">
                  <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6zKSYRPvUnH" role="3cqZAp">
          <node concept="1rXfSq" id="6zKSYRPvUnF" role="3clFbG">
            <ref role="37wK5l" node="6zKSYRPuMSF" resolve="findDescendantAWTComponents" />
            <node concept="37vLTw" id="6zKSYRPvUxi" role="37wK5m">
              <ref role="3cqZAo" node="6zKSYRPvgAF" resolve="root" />
            </node>
            <node concept="37vLTw" id="6zKSYRPvUF9" role="37wK5m">
              <ref role="3cqZAo" node="6zKSYRPvgAH" resolve="condition" />
            </node>
            <node concept="37vLTw" id="6zKSYRPvUNf" role="37wK5m">
              <ref role="3cqZAo" node="6zKSYRPvuvC" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6zKSYRPvTVz" role="3cqZAp">
          <node concept="37vLTw" id="6zKSYRPvU6s" role="3cqZAk">
            <ref role="3cqZAo" node="6zKSYRPvuvC" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6zKSYRPvgAF" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="6zKSYRPvgAG" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="6zKSYRPvgAH" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3uibUv" id="6zKSYRPvgAI" role="1tU5fm">
          <ref role="3uigEE" to="zn9m:~Condition" resolve="Condition" />
          <node concept="3uibUv" id="6zKSYRPvgAJ" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7vUP_qcUeKC" role="1B3o_S" />
      <node concept="3uibUv" id="6zKSYRPvo_7" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6zKSYRPvo_8" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1b5aB8eLzp1" role="jymVt" />
    <node concept="2YIFZL" id="1b5aB8eNHqM" role="jymVt">
      <property role="TrG5h" value="findParentAWTComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1b5aB8eLD9i" role="3clF47">
        <node concept="3clFbJ" id="1b5aB8eMnKV" role="3cqZAp">
          <node concept="3clFbS" id="1b5aB8eMnKY" role="3clFbx">
            <node concept="3cpWs6" id="1b5aB8eMo50" role="3cqZAp">
              <node concept="10Nm6u" id="1b5aB8eMpSF" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1b5aB8eMo0A" role="3clFbw">
            <node concept="10Nm6u" id="1b5aB8eMo1f" role="3uHU7w" />
            <node concept="37vLTw" id="1b5aB8eMnMl" role="3uHU7B">
              <ref role="3cqZAo" node="1b5aB8eM1Ax" resolve="descendant" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1b5aB8eMClN" role="3cqZAp" />
        <node concept="3cpWs8" id="1b5aB8eMnAu" role="3cqZAp">
          <node concept="3cpWsn" id="1b5aB8eMnAv" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="1b5aB8eNd52" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
            <node concept="37vLTw" id="1b5aB8eMnAx" role="33vP2m">
              <ref role="3cqZAo" node="1b5aB8eM1Ax" resolve="descendant" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="1b5aB8eMUj7" role="3cqZAp">
          <node concept="3clFbS" id="1b5aB8eMUj9" role="2LFqv$">
            <node concept="3clFbJ" id="1b5aB8eNdzo" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="1b5aB8eNdzr" role="3clFbx">
                <node concept="3cpWs6" id="1b5aB8eNfUQ" role="3cqZAp">
                  <node concept="37vLTw" id="1b5aB8eNjF5" role="3cqZAk">
                    <ref role="3cqZAo" node="1b5aB8eMnAv" resolve="parent" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1b5aB8eNdPC" role="3clFbw">
                <node concept="37vLTw" id="1b5aB8eNdFO" role="2Oq$k0">
                  <ref role="3cqZAo" node="1b5aB8eMbsa" resolve="condition" />
                </node>
                <node concept="liA8E" id="1b5aB8eNfEp" role="2OqNvi">
                  <ref role="37wK5l" to="zn9m:~Condition.value(java.lang.Object)" resolve="value" />
                  <node concept="37vLTw" id="1b5aB8eNfJq" role="37wK5m">
                    <ref role="3cqZAo" node="1b5aB8eMnAv" resolve="parent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1b5aB8eMZDP" role="3cqZAp">
              <node concept="37vLTI" id="1b5aB8eMZLE" role="3clFbG">
                <node concept="2OqwBi" id="1b5aB8eMZU3" role="37vLTx">
                  <node concept="37vLTw" id="1b5aB8eMZM9" role="2Oq$k0">
                    <ref role="3cqZAo" node="1b5aB8eMnAv" resolve="parent" />
                  </node>
                  <node concept="liA8E" id="1b5aB8eN2tQ" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getParent()" resolve="getParent" />
                  </node>
                </node>
                <node concept="37vLTw" id="1b5aB8eMZDO" role="37vLTJ">
                  <ref role="3cqZAo" node="1b5aB8eMnAv" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1b5aB8eMZ_p" role="2$JKZa">
            <node concept="10Nm6u" id="1b5aB8eMZA6" role="3uHU7w" />
            <node concept="37vLTw" id="1b5aB8eMZmT" role="3uHU7B">
              <ref role="3cqZAo" node="1b5aB8eMnAv" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1b5aB8eNttr" role="3cqZAp" />
        <node concept="3cpWs6" id="1b5aB8eN$PV" role="3cqZAp">
          <node concept="10Nm6u" id="1b5aB8eNCwQ" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="1b5aB8eM1Ax" role="3clF46">
        <property role="TrG5h" value="descendant" />
        <node concept="3uibUv" id="1b5aB8eM5rm" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="1b5aB8eMbsa" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3uibUv" id="1b5aB8eMbsb" role="1tU5fm">
          <ref role="3uigEE" to="zn9m:~Condition" resolve="Condition" />
          <node concept="3uibUv" id="1b5aB8eMbsc" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1b5aB8eMz$u" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
      <node concept="3Tm1VV" id="7vUP_qcUf3I" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7vUP_qcTKV4" role="jymVt" />
    <node concept="2YIFZL" id="7vUP_qcTYKv" role="jymVt">
      <property role="TrG5h" value="findActiveEditor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7vUP_qcTIeW" role="3clF47">
        <node concept="3cpWs8" id="7vUP_qcTImq" role="3cqZAp">
          <node concept="3cpWsn" id="7vUP_qcTImr" role="3cpWs9">
            <property role="TrG5h" value="tabs" />
            <node concept="_YKpA" id="7vUP_qcTIms" role="1tU5fm">
              <node concept="3uibUv" id="7vUP_qcTImt" role="_ZDj9">
                <ref role="3uigEE" to="2kyo:~JBEditorTabs" resolve="JBEditorTabs" />
              </node>
            </node>
            <node concept="1eOMI4" id="7vUP_qcTImu" role="33vP2m">
              <node concept="10QFUN" id="7vUP_qcTImv" role="1eOMHV">
                <node concept="10QFUN" id="7vUP_qcTImw" role="10QFUP">
                  <node concept="1rXfSq" id="ok2lnUK05N" role="10QFUP">
                    <ref role="37wK5l" node="6zKSYRPvgAa" resolve="findDescendantAWTComponents" />
                    <node concept="2YIFZM" id="7vUP_qcTImx" role="37wK5m">
                      <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                      <ref role="37wK5l" to="dxuu:~SwingUtilities.getRoot(java.awt.Component)" resolve="getRoot" />
                      <node concept="37vLTw" id="7vUP_qcU2tD" role="37wK5m">
                        <ref role="3cqZAo" node="7vUP_qcU0ju" resolve="contextComponent" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7vUP_qcTImz" role="37wK5m">
                      <node concept="YeOm9" id="7vUP_qcTIm$" role="2ShVmc">
                        <node concept="1Y3b0j" id="7vUP_qcTIm_" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <ref role="1Y3XeK" to="zn9m:~Condition" resolve="Condition" />
                          <node concept="3Tm1VV" id="7vUP_qcTImA" role="1B3o_S" />
                          <node concept="3clFb_" id="7vUP_qcTImB" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="value" />
                            <property role="DiZV1" value="false" />
                            <node concept="3Tm1VV" id="7vUP_qcTImC" role="1B3o_S" />
                            <node concept="10P_77" id="7vUP_qcTImD" role="3clF45" />
                            <node concept="37vLTG" id="7vUP_qcTImE" role="3clF46">
                              <property role="TrG5h" value="candidate" />
                              <node concept="3uibUv" id="7vUP_qcTImF" role="1tU5fm">
                                <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="7vUP_qcTImG" role="3clF47">
                              <node concept="3clFbF" id="7vUP_qcTImH" role="3cqZAp">
                                <node concept="2ZW3vV" id="7vUP_qcTImI" role="3clFbG">
                                  <node concept="3uibUv" id="7vUP_qcTImJ" role="2ZW6by">
                                    <ref role="3uigEE" to="2kyo:~JBEditorTabs" resolve="JBEditorTabs" />
                                  </node>
                                  <node concept="37vLTw" id="7vUP_qcTImK" role="2ZW6bz">
                                    <ref role="3cqZAo" node="7vUP_qcTImE" resolve="candidate" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="7vUP_qcTImL" role="2Ghqu4">
                            <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="7vUP_qcTImM" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  </node>
                </node>
                <node concept="_YKpA" id="7vUP_qcTImN" role="10QFUM">
                  <node concept="3uibUv" id="7vUP_qcTImO" role="_ZDj9">
                    <ref role="3uigEE" to="2kyo:~JBEditorTabs" resolve="JBEditorTabs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7vUP_qcTImP" role="3cqZAp">
          <node concept="3clFbS" id="7vUP_qcTImQ" role="3clFbx">
            <node concept="3cpWs6" id="7vUP_qcTImR" role="3cqZAp">
              <node concept="10Nm6u" id="7vUP_qcTImS" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7vUP_qcTImT" role="3clFbw">
            <node concept="10Nm6u" id="7vUP_qcTImU" role="3uHU7w" />
            <node concept="37vLTw" id="7vUP_qcTImV" role="3uHU7B">
              <ref role="3cqZAo" node="7vUP_qcTImr" resolve="tabs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vUP_qcTImW" role="3cqZAp" />
        <node concept="3cpWs8" id="7vUP_qcTImX" role="3cqZAp">
          <node concept="3cpWsn" id="7vUP_qcTImY" role="3cpWs9">
            <property role="TrG5h" value="selectedTabs" />
            <node concept="_YKpA" id="7vUP_qcTImZ" role="1tU5fm">
              <node concept="3uibUv" id="7vUP_qcTIn0" role="_ZDj9">
                <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="7vUP_qcTIn1" role="33vP2m">
              <node concept="2OqwBi" id="7vUP_qcTIn2" role="2Oq$k0">
                <node concept="2OqwBi" id="7vUP_qcTIn3" role="2Oq$k0">
                  <node concept="37vLTw" id="7vUP_qcTIn4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7vUP_qcTImr" resolve="tabs" />
                  </node>
                  <node concept="3$u5V9" id="7vUP_qcTIn5" role="2OqNvi">
                    <node concept="1bVj0M" id="7vUP_qcTIn6" role="23t8la">
                      <node concept="3clFbS" id="7vUP_qcTIn7" role="1bW5cS">
                        <node concept="3clFbF" id="7vUP_qcTIn8" role="3cqZAp">
                          <node concept="2EnYce" id="7vUP_qcTIn9" role="3clFbG">
                            <node concept="2OqwBi" id="7vUP_qcTIna" role="2Oq$k0">
                              <node concept="37vLTw" id="7vUP_qcTInb" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0XlK" resolve="it" />
                              </node>
                              <node concept="liA8E" id="7vUP_qcTInc" role="2OqNvi">
                                <ref role="37wK5l" to="2kyo:~JBTabsImpl.getSelectedInfo()" resolve="getSelectedInfo" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7vUP_qcTInd" role="2OqNvi">
                              <ref role="37wK5l" to="ohny:~TabInfo.getComponent()" resolve="getComponent" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XlK" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0XlL" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="7vUP_qcTIng" role="2OqNvi">
                  <node concept="1bVj0M" id="7vUP_qcTInh" role="23t8la">
                    <node concept="3clFbS" id="7vUP_qcTIni" role="1bW5cS">
                      <node concept="3clFbF" id="7vUP_qcTInj" role="3cqZAp">
                        <node concept="3y3z36" id="7vUP_qcTInk" role="3clFbG">
                          <node concept="10Nm6u" id="7vUP_qcTInl" role="3uHU7w" />
                          <node concept="37vLTw" id="7vUP_qcTInm" role="3uHU7B">
                            <ref role="3cqZAo" node="5W7E4fV0XlM" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XlM" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XlN" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7vUP_qcTInp" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7vUP_qcTInq" role="3cqZAp">
          <node concept="3clFbS" id="7vUP_qcTInr" role="3clFbx">
            <node concept="3cpWs6" id="7vUP_qcTIns" role="3cqZAp">
              <node concept="10Nm6u" id="7vUP_qcTInt" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="7vUP_qcTInu" role="3clFbw">
            <node concept="37vLTw" id="7vUP_qcTInv" role="2Oq$k0">
              <ref role="3cqZAo" node="7vUP_qcTImY" resolve="selectedTabs" />
            </node>
            <node concept="1v1jN8" id="7vUP_qcTInw" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="7vUP_qcTInx" role="3cqZAp" />
        <node concept="3cpWs8" id="7vUP_qcTIny" role="3cqZAp">
          <node concept="3cpWsn" id="7vUP_qcTInz" role="3cpWs9">
            <property role="TrG5h" value="editorComponents" />
            <node concept="_YKpA" id="7vUP_qcTIn$" role="1tU5fm">
              <node concept="3uibUv" id="7vUP_qcTIn_" role="_ZDj9">
                <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="7vUP_qcTInA" role="33vP2m">
              <node concept="2OqwBi" id="7vUP_qcTInB" role="2Oq$k0">
                <node concept="2OqwBi" id="7vUP_qcTInC" role="2Oq$k0">
                  <node concept="37vLTw" id="7vUP_qcTInD" role="2Oq$k0">
                    <ref role="3cqZAo" node="7vUP_qcTImY" resolve="selectedTabs" />
                  </node>
                  <node concept="3$u5V9" id="7vUP_qcTInE" role="2OqNvi">
                    <node concept="1bVj0M" id="7vUP_qcTInF" role="23t8la">
                      <node concept="3clFbS" id="7vUP_qcTInG" role="1bW5cS">
                        <node concept="3clFbF" id="7vUP_qcTInH" role="3cqZAp">
                          <node concept="10QFUN" id="7vUP_qcTInI" role="3clFbG">
                            <node concept="1rXfSq" id="7vUP_qcUcRt" role="10QFUP">
                              <ref role="37wK5l" node="1b5aB8eFZrI" resolve="findDescendantAWTComponent" />
                              <node concept="37vLTw" id="7vUP_qcTInJ" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XlO" resolve="it" />
                              </node>
                              <node concept="2ShNRf" id="7vUP_qcTInK" role="37wK5m">
                                <node concept="YeOm9" id="7vUP_qcTInL" role="2ShVmc">
                                  <node concept="1Y3b0j" id="7vUP_qcTInM" role="YeSDq">
                                    <property role="2bfB8j" value="true" />
                                    <ref role="1Y3XeK" to="zn9m:~Condition" resolve="Condition" />
                                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                    <node concept="3Tm1VV" id="7vUP_qcTInN" role="1B3o_S" />
                                    <node concept="3clFb_" id="7vUP_qcTInO" role="jymVt">
                                      <property role="1EzhhJ" value="false" />
                                      <property role="TrG5h" value="value" />
                                      <property role="DiZV1" value="false" />
                                      <node concept="3Tm1VV" id="7vUP_qcTInP" role="1B3o_S" />
                                      <node concept="10P_77" id="7vUP_qcTInQ" role="3clF45" />
                                      <node concept="37vLTG" id="7vUP_qcTInR" role="3clF46">
                                        <property role="TrG5h" value="candidate" />
                                        <node concept="3uibUv" id="7vUP_qcTInS" role="1tU5fm">
                                          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="7vUP_qcTInT" role="3clF47">
                                        <node concept="3clFbF" id="7vUP_qcTInU" role="3cqZAp">
                                          <node concept="2ZW3vV" id="7vUP_qcTInV" role="3clFbG">
                                            <node concept="3uibUv" id="7vUP_qcTInW" role="2ZW6by">
                                              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                                            </node>
                                            <node concept="37vLTw" id="7vUP_qcTInX" role="2ZW6bz">
                                              <ref role="3cqZAo" node="7vUP_qcTInR" resolve="candidate" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="7vUP_qcTInY" role="2Ghqu4">
                                      <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="7vUP_qcTInZ" role="10QFUM">
                              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XlO" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0XlP" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="7vUP_qcTIo2" role="2OqNvi">
                  <node concept="1bVj0M" id="7vUP_qcTIo3" role="23t8la">
                    <node concept="3clFbS" id="7vUP_qcTIo4" role="1bW5cS">
                      <node concept="3clFbF" id="7vUP_qcTIo5" role="3cqZAp">
                        <node concept="3y3z36" id="7vUP_qcTIo6" role="3clFbG">
                          <node concept="10Nm6u" id="7vUP_qcTIo7" role="3uHU7w" />
                          <node concept="37vLTw" id="7vUP_qcTIo8" role="3uHU7B">
                            <ref role="3cqZAo" node="5W7E4fV0XlQ" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XlQ" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XlR" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7vUP_qcTIob" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7vUP_qcUfwf" role="3cqZAp">
          <node concept="2OqwBi" id="7vUP_qcUk2Z" role="3cqZAk">
            <node concept="37vLTw" id="7vUP_qcUgfc" role="2Oq$k0">
              <ref role="3cqZAo" node="7vUP_qcTInz" resolve="editorComponents" />
            </node>
            <node concept="1uHKPH" id="7vUP_qcUnym" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7vUP_qcU3mz" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
      <node concept="3Tm1VV" id="7vUP_qcTIeV" role="1B3o_S" />
      <node concept="37vLTG" id="7vUP_qcU0ju" role="3clF46">
        <property role="TrG5h" value="contextComponent" />
        <node concept="3uibUv" id="7vUP_qcU0jt" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7vUP_qcTFoy" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="51dRNfgDAWq">
    <property role="TrG5h" value="ConceptInstanceActionHelper" />
    <node concept="2tJIrI" id="51dRNfgDQAf" role="jymVt" />
    <node concept="2YIFZL" id="23_jb1rvDv" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="51dRNfgDRgY" role="3clF47">
        <node concept="3cpWs8" id="23_jb1AdK7" role="3cqZAp">
          <node concept="3cpWsn" id="23_jb1AdK8" role="3cpWs9">
            <property role="TrG5h" value="contextNode" />
            <node concept="3Tqbb2" id="23_jb1AdK5" role="1tU5fm" />
            <node concept="2OqwBi" id="23_jb1AdK9" role="33vP2m">
              <node concept="37vLTw" id="23_jb1AdKa" role="2Oq$k0">
                <ref role="3cqZAo" node="51dRNfgDRrc" resolve="selectedNode" />
              </node>
              <node concept="2Xjw5R" id="23_jb1AdKb" role="2OqNvi">
                <node concept="1xMEDy" id="23_jb1AdKc" role="1xVPHs">
                  <node concept="25Kdxt" id="23_jb1AdKd" role="ri$Ld">
                    <node concept="37vLTw" id="23_jb1AdKe" role="25KhWn">
                      <ref role="3cqZAo" node="51dRNfgDRvt" resolve="contextContecpt" />
                    </node>
                  </node>
                </node>
                <node concept="1xIGOp" id="23_jb1AdKf" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23_jb1AdZX" role="3cqZAp">
          <node concept="3clFbS" id="23_jb1AdZZ" role="3clFbx">
            <node concept="3clFbJ" id="23_jb1_Fuv" role="3cqZAp">
              <node concept="3clFbS" id="23_jb1_Fux" role="3clFbx">
                <node concept="3cpWs6" id="23_jb1_GYa" role="3cqZAp">
                  <node concept="3clFbT" id="23_jb1_H4l" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="23_jb1Af80" role="3clFbw">
                <node concept="37vLTw" id="23_jb1AfiQ" role="3uHU7w">
                  <ref role="3cqZAo" node="23_jb1ri15" resolve="availableInChildren" />
                </node>
                <node concept="1eOMI4" id="23_jb1Af3r" role="3uHU7B">
                  <node concept="22lmx$" id="23_jb1_Ggp" role="1eOMHV">
                    <node concept="3clFbC" id="23_jb1_GH1" role="3uHU7w">
                      <node concept="37vLTw" id="23_jb1_GNM" role="3uHU7w">
                        <ref role="3cqZAo" node="23_jb1AdK8" resolve="contextNode" />
                      </node>
                      <node concept="2OqwBi" id="23_jb1_GBT" role="3uHU7B">
                        <node concept="37vLTw" id="23_jb1_Gwu" role="2Oq$k0">
                          <ref role="3cqZAo" node="51dRNfgDRrc" resolve="selectedNode" />
                        </node>
                        <node concept="1mfA1w" id="23_jb1_GE5" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="23_jb1_FOe" role="3uHU7B">
                      <node concept="37vLTw" id="23_jb1_FDy" role="3uHU7B">
                        <ref role="3cqZAo" node="51dRNfgDRrc" resolve="selectedNode" />
                      </node>
                      <node concept="37vLTw" id="23_jb1_G98" role="3uHU7w">
                        <ref role="3cqZAo" node="23_jb1AdK8" resolve="contextNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="23_jb1_H8b" role="3eNLev">
                <node concept="37vLTw" id="23_jb1_Hi_" role="3eO9$A">
                  <ref role="3cqZAo" node="23_jb1ri15" resolve="availableInChildren" />
                </node>
                <node concept="3clFbS" id="23_jb1_H8d" role="3eOfB_">
                  <node concept="3cpWs6" id="23_jb1_I63" role="3cqZAp">
                    <node concept="3clFbT" id="23_jb1_Icf" role="3cqZAk">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="23_jb1Aelv" role="3clFbw">
            <node concept="37vLTw" id="23_jb1Aeep" role="2Oq$k0">
              <ref role="3cqZAo" node="23_jb1AdK8" resolve="contextNode" />
            </node>
            <node concept="3x8VRR" id="23_jb1AeoL" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="23_jb1rptI" role="3cqZAp">
          <node concept="3clFbT" id="23_jb1rpCc" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="51dRNfgDRrc" role="3clF46">
        <property role="TrG5h" value="selectedNode" />
        <node concept="3Tqbb2" id="51dRNfgDRv8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="51dRNfgDRvt" role="3clF46">
        <property role="TrG5h" value="contextContecpt" />
        <node concept="3bZ5Sz" id="51dRNfgDUl1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="23_jb1qIsH" role="3clF46">
        <property role="TrG5h" value="contextRole" />
        <node concept="3uibUv" id="23_jb1rfCV" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="23_jb1ri15" role="3clF46">
        <property role="TrG5h" value="availableInChildren" />
        <node concept="10P_77" id="23_jb1ri9j" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="51dRNfgDU2Q" role="3clF45" />
      <node concept="3Tm1VV" id="51dRNfgDRgX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="23_jb1ARLt" role="jymVt" />
    <node concept="2tJIrI" id="51dRNfgDQAk" role="jymVt" />
    <node concept="3Tm1VV" id="51dRNfgDAWr" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="Y7dDcELKRs">
    <property role="TrG5h" value="ImageUtil" />
    <node concept="2tJIrI" id="Y7dDcELM9a" role="jymVt" />
    <node concept="2YIFZL" id="4KKQOHJa2jR" role="jymVt">
      <property role="TrG5h" value="iconToImage" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4KKQOHJ9YU5" role="3clF47">
        <node concept="3clFbJ" id="4KKQOHJ9YU6" role="3cqZAp">
          <node concept="2ZW3vV" id="4KKQOHJ9YU9" role="3clFbw">
            <node concept="37vLTw" id="4KKQOHJ9YU7" role="2ZW6bz">
              <ref role="3cqZAo" node="4KKQOHJ9YU3" resolve="icon" />
            </node>
            <node concept="3uibUv" id="4KKQOHJ9YU8" role="2ZW6by">
              <ref role="3uigEE" to="dxuu:~ImageIcon" resolve="ImageIcon" />
            </node>
          </node>
          <node concept="9aQIb" id="4KKQOHJ9YUj" role="9aQIa">
            <node concept="3clFbS" id="4KKQOHJ9YUk" role="9aQI4">
              <node concept="3cpWs8" id="4KKQOHJ9YUm" role="3cqZAp">
                <node concept="3cpWsn" id="4KKQOHJ9YUl" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="w" />
                  <node concept="10Oyi0" id="4KKQOHJ9YUn" role="1tU5fm" />
                  <node concept="2OqwBi" id="4KKQOHJ9YV3" role="33vP2m">
                    <node concept="37vLTw" id="4KKQOHJ9YV2" role="2Oq$k0">
                      <ref role="3cqZAo" node="4KKQOHJ9YU3" resolve="icon" />
                    </node>
                    <node concept="liA8E" id="4KKQOHJ9YV4" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~Icon.getIconWidth()" resolve="getIconWidth" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4KKQOHJ9YUq" role="3cqZAp">
                <node concept="3cpWsn" id="4KKQOHJ9YUp" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="h" />
                  <node concept="10Oyi0" id="4KKQOHJ9YUr" role="1tU5fm" />
                  <node concept="2OqwBi" id="4KKQOHJ9YV7" role="33vP2m">
                    <node concept="37vLTw" id="4KKQOHJ9YV6" role="2Oq$k0">
                      <ref role="3cqZAo" node="4KKQOHJ9YU3" resolve="icon" />
                    </node>
                    <node concept="liA8E" id="4KKQOHJ9YV8" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~Icon.getIconHeight()" resolve="getIconHeight" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4KKQOHJ9YUu" role="3cqZAp">
                <node concept="3cpWsn" id="4KKQOHJ9YUt" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="ge" />
                  <node concept="3uibUv" id="4KKQOHJ9YUv" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~GraphicsEnvironment" resolve="GraphicsEnvironment" />
                  </node>
                  <node concept="2YIFZM" id="4KKQOHJ9YVa" role="33vP2m">
                    <ref role="37wK5l" to="z60i:~GraphicsEnvironment.getLocalGraphicsEnvironment()" resolve="getLocalGraphicsEnvironment" />
                    <ref role="1Pybhc" to="z60i:~GraphicsEnvironment" resolve="GraphicsEnvironment" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4KKQOHJ9YUy" role="3cqZAp">
                <node concept="3cpWsn" id="4KKQOHJ9YUx" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="gd" />
                  <node concept="3uibUv" id="4KKQOHJ9YUz" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~GraphicsDevice" resolve="GraphicsDevice" />
                  </node>
                  <node concept="2OqwBi" id="4KKQOHJ9YVd" role="33vP2m">
                    <node concept="37vLTw" id="4KKQOHJ9YVc" role="2Oq$k0">
                      <ref role="3cqZAo" node="4KKQOHJ9YUt" resolve="ge" />
                    </node>
                    <node concept="liA8E" id="4KKQOHJ9YVe" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~GraphicsEnvironment.getDefaultScreenDevice()" resolve="getDefaultScreenDevice" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4KKQOHJ9YUA" role="3cqZAp">
                <node concept="3cpWsn" id="4KKQOHJ9YU_" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="gc" />
                  <node concept="3uibUv" id="4KKQOHJ9YUB" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~GraphicsConfiguration" resolve="GraphicsConfiguration" />
                  </node>
                  <node concept="2OqwBi" id="4KKQOHJ9YVh" role="33vP2m">
                    <node concept="37vLTw" id="4KKQOHJ9YVg" role="2Oq$k0">
                      <ref role="3cqZAo" node="4KKQOHJ9YUx" resolve="gd" />
                    </node>
                    <node concept="liA8E" id="4KKQOHJ9YVi" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~GraphicsDevice.getDefaultConfiguration()" resolve="getDefaultConfiguration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4KKQOHJ9YUE" role="3cqZAp">
                <node concept="3cpWsn" id="4KKQOHJ9YUD" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="image" />
                  <node concept="3uibUv" id="4KKQOHJa3ET" role="1tU5fm">
                    <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
                  </node>
                  <node concept="2OqwBi" id="4KKQOHJ9YVl" role="33vP2m">
                    <node concept="37vLTw" id="4KKQOHJ9YVk" role="2Oq$k0">
                      <ref role="3cqZAo" node="4KKQOHJ9YU_" resolve="gc" />
                    </node>
                    <node concept="liA8E" id="4KKQOHJ9YVm" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~GraphicsConfiguration.createCompatibleImage(int,int)" resolve="createCompatibleImage" />
                      <node concept="37vLTw" id="4KKQOHJ9YUH" role="37wK5m">
                        <ref role="3cqZAo" node="4KKQOHJ9YUl" resolve="w" />
                      </node>
                      <node concept="37vLTw" id="4KKQOHJ9YUI" role="37wK5m">
                        <ref role="3cqZAo" node="4KKQOHJ9YUp" resolve="h" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4KKQOHJ9YUK" role="3cqZAp">
                <node concept="3cpWsn" id="4KKQOHJ9YUJ" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="g" />
                  <node concept="3uibUv" id="4KKQOHJ9YUL" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                  </node>
                  <node concept="2OqwBi" id="4KKQOHJ9YVp" role="33vP2m">
                    <node concept="37vLTw" id="4KKQOHJ9YVo" role="2Oq$k0">
                      <ref role="3cqZAo" node="4KKQOHJ9YUD" resolve="image" />
                    </node>
                    <node concept="liA8E" id="4KKQOHJ9YVq" role="2OqNvi">
                      <ref role="37wK5l" to="jan3:~BufferedImage.createGraphics()" resolve="createGraphics" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4KKQOHJ9YUN" role="3cqZAp">
                <node concept="2OqwBi" id="4KKQOHJ9YVt" role="3clFbG">
                  <node concept="37vLTw" id="4KKQOHJ9YVs" role="2Oq$k0">
                    <ref role="3cqZAo" node="4KKQOHJ9YU3" resolve="icon" />
                  </node>
                  <node concept="liA8E" id="4KKQOHJ9YVu" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~Icon.paintIcon(java.awt.Component,java.awt.Graphics,int,int)" resolve="paintIcon" />
                    <node concept="10Nm6u" id="4KKQOHJ9YUP" role="37wK5m" />
                    <node concept="37vLTw" id="4KKQOHJ9YUQ" role="37wK5m">
                      <ref role="3cqZAo" node="4KKQOHJ9YUJ" resolve="g" />
                    </node>
                    <node concept="3cmrfG" id="4KKQOHJ9YUR" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="4KKQOHJ9YUS" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4KKQOHJ9YUT" role="3cqZAp">
                <node concept="2OqwBi" id="4KKQOHJ9YVx" role="3clFbG">
                  <node concept="37vLTw" id="4KKQOHJ9YVw" role="2Oq$k0">
                    <ref role="3cqZAo" node="4KKQOHJ9YUJ" resolve="g" />
                  </node>
                  <node concept="liA8E" id="4KKQOHJ9YVy" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.dispose()" resolve="dispose" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4KKQOHJ9YUV" role="3cqZAp">
                <node concept="37vLTw" id="4KKQOHJ9YUW" role="3cqZAk">
                  <ref role="3cqZAo" node="4KKQOHJ9YUD" resolve="image" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4KKQOHJ9YUb" role="3clFbx">
            <node concept="3cpWs6" id="4KKQOHJ9YUc" role="3cqZAp">
              <node concept="2OqwBi" id="4KKQOHJ9YUd" role="3cqZAk">
                <node concept="1eOMI4" id="4KKQOHJ9YUh" role="2Oq$k0">
                  <node concept="10QFUN" id="4KKQOHJ9YUe" role="1eOMHV">
                    <node concept="37vLTw" id="4KKQOHJ9YUf" role="10QFUP">
                      <ref role="3cqZAo" node="4KKQOHJ9YU3" resolve="icon" />
                    </node>
                    <node concept="3uibUv" id="4KKQOHJ9YUg" role="10QFUM">
                      <ref role="3uigEE" to="dxuu:~ImageIcon" resolve="ImageIcon" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4KKQOHJ9YUi" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~ImageIcon.getImage()" resolve="getImage" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4KKQOHJ9YU3" role="3clF46">
        <property role="TrG5h" value="icon" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4KKQOHJ9YU4" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="3uibUv" id="4KKQOHJ9YUX" role="3clF45">
        <ref role="3uigEE" to="z60i:~Image" resolve="Image" />
      </node>
      <node concept="3Tm1VV" id="Y7dDcEPq$5" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="Y7dDcEP7G7" role="jymVt" />
    <node concept="2YIFZL" id="Y7dDcEP7wy" role="jymVt">
      <property role="TrG5h" value="component2image" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="Y7dDcEP7wz" role="3clF47">
        <node concept="3cpWs8" id="Y7dDcEP7wE" role="3cqZAp">
          <node concept="3cpWsn" id="Y7dDcEP7wF" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="w" />
            <node concept="10Oyi0" id="Y7dDcEP7wG" role="1tU5fm" />
            <node concept="2OqwBi" id="Y7dDcEP7wH" role="33vP2m">
              <node concept="37vLTw" id="Y7dDcEP7wI" role="2Oq$k0">
                <ref role="3cqZAo" node="Y7dDcEP7xE" resolve="comp" />
              </node>
              <node concept="liA8E" id="Y7dDcEPaAI" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.getWidth()" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Y7dDcEP7wK" role="3cqZAp">
          <node concept="3cpWsn" id="Y7dDcEP7wL" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="h" />
            <node concept="10Oyi0" id="Y7dDcEP7wM" role="1tU5fm" />
            <node concept="2OqwBi" id="Y7dDcEP7wN" role="33vP2m">
              <node concept="37vLTw" id="Y7dDcEP7wO" role="2Oq$k0">
                <ref role="3cqZAo" node="Y7dDcEP7xE" resolve="comp" />
              </node>
              <node concept="liA8E" id="Y7dDcEP7wP" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.getHeight()" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Y7dDcEP7wQ" role="3cqZAp">
          <node concept="3cpWsn" id="Y7dDcEP7wR" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="ge" />
            <node concept="3uibUv" id="Y7dDcEP7wS" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~GraphicsEnvironment" resolve="GraphicsEnvironment" />
            </node>
            <node concept="2YIFZM" id="Y7dDcEP7wT" role="33vP2m">
              <ref role="37wK5l" to="z60i:~GraphicsEnvironment.getLocalGraphicsEnvironment()" resolve="getLocalGraphicsEnvironment" />
              <ref role="1Pybhc" to="z60i:~GraphicsEnvironment" resolve="GraphicsEnvironment" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Y7dDcEP7wU" role="3cqZAp">
          <node concept="3cpWsn" id="Y7dDcEP7wV" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="gd" />
            <node concept="3uibUv" id="Y7dDcEP7wW" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~GraphicsDevice" resolve="GraphicsDevice" />
            </node>
            <node concept="2OqwBi" id="Y7dDcEP7wX" role="33vP2m">
              <node concept="37vLTw" id="Y7dDcEP7wY" role="2Oq$k0">
                <ref role="3cqZAo" node="Y7dDcEP7wR" resolve="ge" />
              </node>
              <node concept="liA8E" id="Y7dDcEP7wZ" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~GraphicsEnvironment.getDefaultScreenDevice()" resolve="getDefaultScreenDevice" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Y7dDcEP7x0" role="3cqZAp">
          <node concept="3cpWsn" id="Y7dDcEP7x1" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="gc" />
            <node concept="3uibUv" id="Y7dDcEP7x2" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~GraphicsConfiguration" resolve="GraphicsConfiguration" />
            </node>
            <node concept="2OqwBi" id="Y7dDcEP7x3" role="33vP2m">
              <node concept="37vLTw" id="Y7dDcEP7x4" role="2Oq$k0">
                <ref role="3cqZAo" node="Y7dDcEP7wV" resolve="gd" />
              </node>
              <node concept="liA8E" id="Y7dDcEP7x5" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~GraphicsDevice.getDefaultConfiguration()" resolve="getDefaultConfiguration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Y7dDcEP7x6" role="3cqZAp">
          <node concept="3cpWsn" id="Y7dDcEP7x7" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="image" />
            <node concept="3uibUv" id="Y7dDcEP7x8" role="1tU5fm">
              <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
            </node>
            <node concept="2OqwBi" id="Y7dDcEP7x9" role="33vP2m">
              <node concept="37vLTw" id="Y7dDcEP7xa" role="2Oq$k0">
                <ref role="3cqZAo" node="Y7dDcEP7x1" resolve="gc" />
              </node>
              <node concept="liA8E" id="Y7dDcEP7xb" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~GraphicsConfiguration.createCompatibleImage(int,int)" resolve="createCompatibleImage" />
                <node concept="37vLTw" id="Y7dDcEP7xc" role="37wK5m">
                  <ref role="3cqZAo" node="Y7dDcEP7wF" resolve="w" />
                </node>
                <node concept="37vLTw" id="Y7dDcEP7xd" role="37wK5m">
                  <ref role="3cqZAo" node="Y7dDcEP7wL" resolve="h" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Y7dDcEP7xe" role="3cqZAp">
          <node concept="3cpWsn" id="Y7dDcEP7xf" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="Y7dDcEP7xg" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="2OqwBi" id="Y7dDcEP7xh" role="33vP2m">
              <node concept="37vLTw" id="Y7dDcEP7xi" role="2Oq$k0">
                <ref role="3cqZAo" node="Y7dDcEP7x7" resolve="image" />
              </node>
              <node concept="liA8E" id="Y7dDcEP7xj" role="2OqNvi">
                <ref role="37wK5l" to="jan3:~BufferedImage.createGraphics()" resolve="createGraphics" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Y7dDcEP7xk" role="3cqZAp">
          <node concept="2OqwBi" id="Y7dDcEP7xl" role="3clFbG">
            <node concept="37vLTw" id="Y7dDcEP7xm" role="2Oq$k0">
              <ref role="3cqZAo" node="Y7dDcEP7xE" resolve="comp" />
            </node>
            <node concept="liA8E" id="Y7dDcEP7xn" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.paintAll(java.awt.Graphics)" resolve="paintAll" />
              <node concept="37vLTw" id="Y7dDcEPbkA" role="37wK5m">
                <ref role="3cqZAo" node="Y7dDcEP7xf" resolve="g" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Y7dDcEP7xs" role="3cqZAp">
          <node concept="2OqwBi" id="Y7dDcEP7xt" role="3clFbG">
            <node concept="37vLTw" id="Y7dDcEP7xu" role="2Oq$k0">
              <ref role="3cqZAo" node="Y7dDcEP7xf" resolve="g" />
            </node>
            <node concept="liA8E" id="Y7dDcEP7xv" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Y7dDcEP7xw" role="3cqZAp">
          <node concept="37vLTw" id="Y7dDcEP7xx" role="3cqZAk">
            <ref role="3cqZAo" node="Y7dDcEP7x7" resolve="image" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Y7dDcEP7xE" role="3clF46">
        <property role="TrG5h" value="comp" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="Y7dDcEP81w" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3uibUv" id="Y7dDcEP7xG" role="3clF45">
        <ref role="3uigEE" to="z60i:~Image" resolve="Image" />
      </node>
      <node concept="3Tm1VV" id="Y7dDcEPqrL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="Y7dDcELMo0" role="jymVt" />
    <node concept="2YIFZL" id="Y7dDcELMdt" role="jymVt">
      <property role="TrG5h" value="icon2imageIcon" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7G3a7fDeSOC" role="3clF47">
        <node concept="3clFbJ" id="7G3a7fDfklZ" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="7G3a7fDfkm1" role="3clFbx">
            <node concept="3cpWs6" id="7G3a7fDg4yg" role="3cqZAp">
              <node concept="1eOMI4" id="7G3a7fDg6Gs" role="3cqZAk">
                <node concept="10QFUN" id="7G3a7fDg6Gp" role="1eOMHV">
                  <node concept="3uibUv" id="7G3a7fDg6Gu" role="10QFUM">
                    <ref role="3uigEE" to="dxuu:~ImageIcon" resolve="ImageIcon" />
                  </node>
                  <node concept="37vLTw" id="7G3a7fDg6Gv" role="10QFUP">
                    <ref role="3cqZAo" node="7G3a7fDffCg" resolve="icon" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7G3a7fDg4kT" role="3clFbw">
            <node concept="3uibUv" id="7G3a7fDg4rK" role="2ZW6by">
              <ref role="3uigEE" to="dxuu:~ImageIcon" resolve="ImageIcon" />
            </node>
            <node concept="37vLTw" id="7G3a7fDg3Vh" role="2ZW6bz">
              <ref role="3cqZAo" node="7G3a7fDffCg" resolve="icon" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7G3a7fDgfhK" role="3cqZAp">
          <node concept="3clFbS" id="7G3a7fDgfhM" role="3clFbx">
            <node concept="3J1_TO" id="7G3a7fDgUNY" role="3cqZAp">
              <node concept="3clFbS" id="7G3a7fDgUO0" role="1zxBo7">
                <node concept="3cpWs8" id="7G3a7fDgVjA" role="3cqZAp">
                  <node concept="3cpWsn" id="7G3a7fDgVjB" role="3cpWs9">
                    <property role="TrG5h" value="getRealIcon" />
                    <node concept="3uibUv" id="7G3a7fDgVj$" role="1tU5fm">
                      <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                    </node>
                    <node concept="2OqwBi" id="7G3a7fDgVjC" role="33vP2m">
                      <node concept="2OqwBi" id="7G3a7fDgVjD" role="2Oq$k0">
                        <node concept="37vLTw" id="7G3a7fDgVjE" role="2Oq$k0">
                          <ref role="3cqZAo" node="7G3a7fDffCg" resolve="icon" />
                        </node>
                        <node concept="liA8E" id="7G3a7fDgVjF" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7G3a7fDgVjG" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getDeclaredMethod(java.lang.String,java.lang.Class...)" resolve="getDeclaredMethod" />
                        <node concept="Xl_RD" id="7G3a7fDgVjH" role="37wK5m">
                          <property role="Xl_RC" value="getRealIcon" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7G3a7fDgRUq" role="3cqZAp">
                  <node concept="2OqwBi" id="7G3a7fDgVYH" role="3clFbG">
                    <node concept="37vLTw" id="7G3a7fDgVjI" role="2Oq$k0">
                      <ref role="3cqZAo" node="7G3a7fDgVjB" resolve="getRealIcon" />
                    </node>
                    <node concept="liA8E" id="7G3a7fDgX1k" role="2OqNvi">
                      <ref role="37wK5l" to="t6h5:~Method.setAccessible(boolean)" resolve="setAccessible" />
                      <node concept="3clFbT" id="7G3a7fDgX5C" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7G3a7fDgYkG" role="3cqZAp">
                  <node concept="3cpWsn" id="7G3a7fDgYkH" role="3cpWs9">
                    <property role="TrG5h" value="realIcon" />
                    <node concept="3uibUv" id="7G3a7fDgYky" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="7G3a7fDgYkI" role="33vP2m">
                      <node concept="37vLTw" id="7G3a7fDgYkJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7G3a7fDgVjB" resolve="getRealIcon" />
                      </node>
                      <node concept="liA8E" id="7G3a7fDgYkK" role="2OqNvi">
                        <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                        <node concept="37vLTw" id="7G3a7fDgYkL" role="37wK5m">
                          <ref role="3cqZAo" node="7G3a7fDffCg" resolve="icon" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7G3a7fDgYKh" role="3cqZAp">
                  <property role="TyiWK" value="true" />
                  <property role="TyiWL" value="false" />
                  <node concept="3clFbS" id="7G3a7fDgYKj" role="3clFbx">
                    <node concept="3cpWs6" id="7G3a7fDgZQr" role="3cqZAp">
                      <node concept="1eOMI4" id="7G3a7fDgZQt" role="3cqZAk">
                        <node concept="10QFUN" id="7G3a7fDgZQu" role="1eOMHV">
                          <node concept="3uibUv" id="7G3a7fDgZQv" role="10QFUM">
                            <ref role="3uigEE" to="dxuu:~ImageIcon" resolve="ImageIcon" />
                          </node>
                          <node concept="37vLTw" id="7G3a7fDgZQw" role="10QFUP">
                            <ref role="3cqZAo" node="7G3a7fDgYkH" resolve="realIcon" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="7G3a7fDgZ6h" role="3clFbw">
                    <node concept="3uibUv" id="7G3a7fDgZeg" role="2ZW6by">
                      <ref role="3uigEE" to="dxuu:~ImageIcon" resolve="ImageIcon" />
                    </node>
                    <node concept="37vLTw" id="7G3a7fDgZ0Z" role="2ZW6bz">
                      <ref role="3cqZAo" node="7G3a7fDgYkH" resolve="realIcon" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="7G3a7fDgUO1" role="1zxBo5">
                <node concept="XOnhg" id="7G3a7fDgUO5" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="ex" />
                  <node concept="nSUau" id="xvs04dHxYQ" role="1tU5fm">
                    <node concept="3uibUv" id="7G3a7fDgVe4" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="7G3a7fDgUO3" role="1zc67A" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="7G3a7fDg$zS" role="3clFbw">
            <node concept="Xl_RD" id="7G3a7fDgAJA" role="3uHU7w">
              <property role="Xl_RC" value="com.intellij.openapi.util.IconLoader$CachedImageIcon" />
            </node>
            <node concept="2OqwBi" id="7G3a7fDgwul" role="3uHU7B">
              <node concept="2OqwBi" id="7G3a7fDgu1w" role="2Oq$k0">
                <node concept="37vLTw" id="7G3a7fDghuL" role="2Oq$k0">
                  <ref role="3cqZAo" node="7G3a7fDffCg" resolve="icon" />
                </node>
                <node concept="liA8E" id="7G3a7fDgw8D" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="liA8E" id="7G3a7fDg$nO" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7G3a7fDgd3X" role="3cqZAp">
          <node concept="2ShNRf" id="7G3a7fDgd3Z" role="3cqZAk">
            <node concept="1pGfFk" id="7G3a7fDgd40" role="2ShVmc">
              <ref role="37wK5l" to="dxuu:~ImageIcon.&lt;init&gt;(java.awt.Image)" resolve="ImageIcon" />
              <node concept="1rXfSq" id="Y7dDcELNDZ" role="37wK5m">
                <ref role="37wK5l" node="4KKQOHJa2jR" resolve="iconToImage" />
                <node concept="37vLTw" id="Y7dDcELNR$" role="37wK5m">
                  <ref role="3cqZAo" node="7G3a7fDffCg" resolve="icon" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7G3a7fDffCg" role="3clF46">
        <property role="TrG5h" value="icon" />
        <node concept="3uibUv" id="7G3a7fDfhB7" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
      </node>
      <node concept="3uibUv" id="7G3a7fDfhZM" role="3clF45">
        <ref role="3uigEE" to="dxuu:~ImageIcon" resolve="ImageIcon" />
      </node>
      <node concept="3Tm1VV" id="7G3a7fDeSOB" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="Y7dDcELKRt" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5Xa7gk5b7L1">
    <property role="3GE5qa" value="components" />
    <property role="TrG5h" value="ItemConverter" />
    <node concept="312cEg" id="5Xa7gk5bmKT" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMenuProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5Xa7gk5bkKx" role="1B3o_S" />
      <node concept="3uibUv" id="5Xa7gk5bmKp" role="1tU5fm">
        <ref role="3uigEE" to="v8cy:~SelectionMenuProvider" resolve="SelectionMenuProvider" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Xa7gk5bna4" role="jymVt" />
    <node concept="3clFbW" id="5Xa7gk5bnWK" role="jymVt">
      <node concept="3cqZAl" id="5Xa7gk5bnWL" role="3clF45" />
      <node concept="3Tm1VV" id="5Xa7gk5bnWM" role="1B3o_S" />
      <node concept="3clFbS" id="5Xa7gk5bnWO" role="3clF47">
        <node concept="3clFbF" id="5Xa7gk5bnWS" role="3cqZAp">
          <node concept="37vLTI" id="5Xa7gk5bnWU" role="3clFbG">
            <node concept="37vLTw" id="5Xa7gk5bnWY" role="37vLTJ">
              <ref role="3cqZAo" node="5Xa7gk5bmKT" resolve="myMenuProvider" />
            </node>
            <node concept="37vLTw" id="5Xa7gk5bnWZ" role="37vLTx">
              <ref role="3cqZAo" node="5Xa7gk5bnWR" resolve="menuProvider" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Xa7gk5bnWR" role="3clF46">
        <property role="TrG5h" value="menuProvider" />
        <node concept="3uibUv" id="5Xa7gk5bnWQ" role="1tU5fm">
          <ref role="3uigEE" to="v8cy:~SelectionMenuProvider" resolve="SelectionMenuProvider" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Xa7gk5bnzb" role="jymVt" />
    <node concept="3clFb_" id="5Xa7gk5bixY" role="jymVt">
      <property role="TrG5h" value="queryItems" />
      <property role="1EzhhJ" value="false" />
      <node concept="_YKpA" id="5Xa7gk5bixZ" role="3clF45">
        <node concept="3uibUv" id="5Xa7gk5biy0" role="_ZDj9">
          <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
        </node>
      </node>
      <node concept="3Tmbuc" id="5Xa7gk5biy1" role="1B3o_S" />
      <node concept="37vLTG" id="5Xa7gk5biy2" role="3clF46">
        <property role="TrG5h" value="selection" />
        <node concept="3uibUv" id="5Xa7gk5biy3" role="1tU5fm">
          <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5biy4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5Xa7gk5biy5" role="3clF47">
        <node concept="3cpWs8" id="5Xa7gk5bqdu" role="3cqZAp">
          <node concept="3cpWsn" id="5Xa7gk5bqdv" role="3cpWs9">
            <property role="TrG5h" value="menuItems" />
            <node concept="3uibUv" id="5Xa7gk5bqdi" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6TZ37rLBbEN" role="11_B2D">
                <ref role="3uigEE" to="uddc:~TransformationMenuItem" resolve="TransformationMenuItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="5Xa7gk5bqdw" role="33vP2m">
              <node concept="37vLTw" id="5Xa7gk5bqdx" role="2Oq$k0">
                <ref role="3cqZAo" node="5Xa7gk5bmKT" resolve="myMenuProvider" />
              </node>
              <node concept="liA8E" id="5Xa7gk5bqdy" role="2OqNvi">
                <ref role="37wK5l" to="v8cy:~SelectionMenuProvider.getMenuItems(jetbrains.mps.openapi.editor.selection.Selection)" resolve="getMenuItems" />
                <node concept="37vLTw" id="5Xa7gk5bqdz" role="37wK5m">
                  <ref role="3cqZAo" node="5Xa7gk5biy2" resolve="selection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Xa7gk5bsoQ" role="3cqZAp">
          <node concept="1rXfSq" id="5Xa7gk5bsoP" role="3cqZAk">
            <ref role="37wK5l" node="5Xa7gk5bu$I" resolve="convertItems" />
            <node concept="37vLTw" id="5Xa7gk5bsoO" role="37wK5m">
              <ref role="3cqZAo" node="5Xa7gk5bqdv" resolve="menuItems" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Xa7gk5bsWN" role="jymVt" />
    <node concept="2YIFZL" id="5Xa7gk5bu$I" role="jymVt">
      <property role="TrG5h" value="convertItems" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Xa7gk5bu$Q" role="3clF47">
        <node concept="3cpWs8" id="5Xa7gk5bu$R" role="3cqZAp">
          <node concept="3cpWsn" id="5Xa7gk5bu$S" role="3cpWs9">
            <property role="TrG5h" value="uiItems" />
            <node concept="_YKpA" id="5Xa7gk5bu$T" role="1tU5fm">
              <node concept="3uibUv" id="5Xa7gk5bu$U" role="_ZDj9">
                <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Xa7gk5bu$V" role="33vP2m">
              <node concept="Tc6Ow" id="5Xa7gk5bu$W" role="2ShVmc">
                <node concept="3uibUv" id="5Xa7gk5bu$X" role="HW$YZ">
                  <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Xa7gk5bu$Y" role="3cqZAp">
          <node concept="1rXfSq" id="5Xa7gk5bu$Z" role="3clFbG">
            <ref role="37wK5l" node="5Xa7gk5bvfi" resolve="convertItems" />
            <node concept="37vLTw" id="5Xa7gk5bu_0" role="37wK5m">
              <ref role="3cqZAo" node="5Xa7gk5bu$N" resolve="menuItems" />
            </node>
            <node concept="Xl_RD" id="5Xa7gk5bu_1" role="37wK5m" />
            <node concept="37vLTw" id="5Xa7gk5bu_2" role="37wK5m">
              <ref role="3cqZAo" node="5Xa7gk5bu$S" resolve="uiItems" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Xa7gk5bu_3" role="3cqZAp">
          <node concept="37vLTw" id="5Xa7gk5bu_4" role="3cqZAk">
            <ref role="3cqZAo" node="5Xa7gk5bu$S" resolve="uiItems" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="5Xa7gk5bu$L" role="3clF45">
        <node concept="3uibUv" id="5Xa7gk5bu$M" role="_ZDj9">
          <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
        </node>
      </node>
      <node concept="37vLTG" id="5Xa7gk5bu$N" role="3clF46">
        <property role="TrG5h" value="menuItems" />
        <node concept="3uibUv" id="5Xa7gk5bu$O" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="6TZ37rLBbYS" role="11_B2D">
            <ref role="3uigEE" to="uddc:~TransformationMenuItem" resolve="TransformationMenuItem" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Xa7gk5bu$K" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Xa7gk5biyq" role="jymVt" />
    <node concept="2YIFZL" id="5Xa7gk5bvfi" role="jymVt">
      <property role="TrG5h" value="convertItems" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Xa7gk5bvfk" role="3clF47">
        <node concept="2Gpval" id="5Xa7gk5bvfl" role="3cqZAp">
          <node concept="2GrKxI" id="5Xa7gk5bvfm" role="2Gsz3X">
            <property role="TrG5h" value="inItem" />
          </node>
          <node concept="37vLTw" id="5Xa7gk5bvfn" role="2GsD0m">
            <ref role="3cqZAo" node="5Xa7gk5bvgm" resolve="inItems" />
          </node>
          <node concept="3clFbS" id="5Xa7gk5bvfo" role="2LFqv$">
            <node concept="3clFbF" id="5Xa7gk5bvfp" role="3cqZAp">
              <node concept="2OqwBi" id="5Xa7gk5bvfq" role="3clFbG">
                <node concept="2GrUjf" id="5Xa7gk5bvfr" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="5Xa7gk5bvfm" resolve="inItem" />
                </node>
                <node concept="liA8E" id="5Xa7gk5bvfs" role="2OqNvi">
                  <ref role="37wK5l" to="uddc:~TransformationMenuItem.accept(jetbrains.mps.openapi.editor.menus.transformation.TransformationMenuItemVisitor)" resolve="accept" />
                  <node concept="2ShNRf" id="5Xa7gk5bvft" role="37wK5m">
                    <node concept="YeOm9" id="5Xa7gk5bvfu" role="2ShVmc">
                      <node concept="1Y3b0j" id="5Xa7gk5bvfv" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="uddc:~TransformationMenuItemVisitor" resolve="TransformationMenuItemVisitor" />
                        <node concept="3Tm1VV" id="5Xa7gk5bvfw" role="1B3o_S" />
                        <node concept="3clFb_" id="5Xa7gk5bvfx" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="visit" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="3Tm1VV" id="5Xa7gk5bvfy" role="1B3o_S" />
                          <node concept="3uibUv" id="5Xa7gk5bvfz" role="3clF45">
                            <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                          </node>
                          <node concept="37vLTG" id="5Xa7gk5bvf$" role="3clF46">
                            <property role="TrG5h" value="actionItem" />
                            <node concept="3uibUv" id="5Xa7gk5bvf_" role="1tU5fm">
                              <ref role="3uigEE" to="uddc:~ActionItem" resolve="ActionItem" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="5Xa7gk5bvfA" role="3clF47">
                            <node concept="3clFbF" id="5Xa7gk5bvfB" role="3cqZAp">
                              <node concept="2OqwBi" id="5Xa7gk5bvfC" role="3clFbG">
                                <node concept="37vLTw" id="5Xa7gk5bvfD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5Xa7gk5bvgr" resolve="outItems" />
                                </node>
                                <node concept="TSZUe" id="5Xa7gk5bvfE" role="2OqNvi">
                                  <node concept="1rXfSq" id="5Xa7gk5cfmf" role="25WWJ7">
                                    <ref role="37wK5l" node="5Xa7gk5c7Ey" resolve="convertActionItem" />
                                    <node concept="37vLTw" id="5Xa7gk5cg8j" role="37wK5m">
                                      <ref role="3cqZAo" node="5Xa7gk5bvf$" resolve="actionItem" />
                                    </node>
                                    <node concept="37vLTw" id="5Xa7gk5ch0_" role="37wK5m">
                                      <ref role="3cqZAo" node="5Xa7gk5bvgp" resolve="folderName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="5Xa7gk5bvfJ" role="3cqZAp">
                              <node concept="10Nm6u" id="5Xa7gk5bvfK" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="5Xa7gk5bvfL" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3clFb_" id="5Xa7gk5bvfM" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="visit" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="3Tm1VV" id="5Xa7gk5bvfN" role="1B3o_S" />
                          <node concept="3uibUv" id="5Xa7gk5bvfO" role="3clF45">
                            <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                          </node>
                          <node concept="37vLTG" id="5Xa7gk5bvfP" role="3clF46">
                            <property role="TrG5h" value="subMenu" />
                            <node concept="3uibUv" id="5Xa7gk5bvfQ" role="1tU5fm">
                              <ref role="3uigEE" to="uddc:~SubMenu" resolve="SubMenu" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="5Xa7gk5bvfR" role="3clF47">
                            <node concept="3cpWs8" id="5Xa7gk5bvfS" role="3cqZAp">
                              <node concept="3cpWsn" id="5Xa7gk5bvfT" role="3cpWs9">
                                <property role="TrG5h" value="subfolderName" />
                                <node concept="17QB3L" id="5Xa7gk5bvfU" role="1tU5fm" />
                                <node concept="3K4zz7" id="5Xa7gk5bvfV" role="33vP2m">
                                  <node concept="2OqwBi" id="5Xa7gk5bvfW" role="3K4E3e">
                                    <node concept="37vLTw" id="5Xa7gk5bvfX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5Xa7gk5bvfP" resolve="subMenu" />
                                    </node>
                                    <node concept="liA8E" id="5Xa7gk5bvfY" role="2OqNvi">
                                      <ref role="37wK5l" to="uddc:~SubMenu.getText()" resolve="getText" />
                                    </node>
                                  </node>
                                  <node concept="3cpWs3" id="5Xa7gk5bvfZ" role="3K4GZi">
                                    <node concept="2OqwBi" id="5Xa7gk5bvg0" role="3uHU7w">
                                      <node concept="37vLTw" id="5Xa7gk5bvg1" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5Xa7gk5bvfP" resolve="subMenu" />
                                      </node>
                                      <node concept="liA8E" id="5Xa7gk5bvg2" role="2OqNvi">
                                        <ref role="37wK5l" to="uddc:~SubMenu.getText()" resolve="getText" />
                                      </node>
                                    </node>
                                    <node concept="3cpWs3" id="5Xa7gk5bvg3" role="3uHU7B">
                                      <node concept="37vLTw" id="5Xa7gk5bvg4" role="3uHU7B">
                                        <ref role="3cqZAo" node="5Xa7gk5bvgp" resolve="folderName" />
                                      </node>
                                      <node concept="Xl_RD" id="5Xa7gk5bvg5" role="3uHU7w">
                                        <property role="Xl_RC" value="/" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="5Xa7gk5bvg6" role="3K4Cdx">
                                    <node concept="37vLTw" id="5Xa7gk5bvg7" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5Xa7gk5bvgp" resolve="folderName" />
                                    </node>
                                    <node concept="17RlXB" id="5Xa7gk5bvg8" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5Xa7gk5bvg9" role="3cqZAp">
                              <node concept="1rXfSq" id="5Xa7gk5bvga" role="3clFbG">
                                <ref role="37wK5l" node="5Xa7gk5bvfi" resolve="convertItems" />
                                <node concept="2OqwBi" id="5Xa7gk5bvgb" role="37wK5m">
                                  <node concept="37vLTw" id="5Xa7gk5bvgc" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5Xa7gk5bvfP" resolve="subMenu" />
                                  </node>
                                  <node concept="liA8E" id="5Xa7gk5bvgd" role="2OqNvi">
                                    <ref role="37wK5l" to="uddc:~SubMenu.getItems()" resolve="getItems" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="5Xa7gk5bvge" role="37wK5m">
                                  <ref role="3cqZAo" node="5Xa7gk5bvfT" resolve="subfolderName" />
                                </node>
                                <node concept="37vLTw" id="5Xa7gk5bvgf" role="37wK5m">
                                  <ref role="3cqZAo" node="5Xa7gk5bvgr" resolve="outItems" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="5Xa7gk5bvgg" role="3cqZAp">
                              <node concept="10Nm6u" id="5Xa7gk5bvgh" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="5Xa7gk5bvgi" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="5Xa7gk5bvgj" role="2Ghqu4">
                          <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
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
      <node concept="3cqZAl" id="5Xa7gk5bvgl" role="3clF45" />
      <node concept="37vLTG" id="5Xa7gk5bvgm" role="3clF46">
        <property role="TrG5h" value="inItems" />
        <node concept="_YKpA" id="5Xa7gk5bvgn" role="1tU5fm">
          <node concept="3uibUv" id="6TZ37rLBcsq" role="_ZDj9">
            <ref role="3uigEE" to="uddc:~TransformationMenuItem" resolve="TransformationMenuItem" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Xa7gk5bvgp" role="3clF46">
        <property role="TrG5h" value="folderName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="5Xa7gk5bvgq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Xa7gk5bvgr" role="3clF46">
        <property role="TrG5h" value="outItems" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="5Xa7gk5bvgs" role="1tU5fm">
          <node concept="3uibUv" id="5Xa7gk5bvgt" role="_ZDj9">
            <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5Xa7gk5bvgk" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Xa7gk5c5QV" role="jymVt" />
    <node concept="2YIFZL" id="5Xa7gk5c7Ey" role="jymVt">
      <property role="TrG5h" value="convertActionItem" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Xa7gk5c7E_" role="3clF47">
        <node concept="3cpWs8" id="5Xa7gk5cafq" role="3cqZAp">
          <node concept="3cpWsn" id="5Xa7gk5cafr" role="3cpWs9">
            <property role="TrG5h" value="icon" />
            <node concept="3uibUv" id="5Xa7gk5cafs" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
            </node>
            <node concept="10Nm6u" id="5Xa7gk5clO1" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="5Xa7gk5caMW" role="3cqZAp">
          <node concept="3cpWsn" id="5Xa7gk5caMZ" role="3cpWs9">
            <property role="TrG5h" value="tooltip" />
            <node concept="17QB3L" id="5Xa7gk5caMU" role="1tU5fm" />
            <node concept="10Nm6u" id="5Xa7gk5cm0J" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="5Xa7gk5cmcS" role="3cqZAp" />
        <node concept="3clFbJ" id="5Xa7gk5c98Y" role="3cqZAp">
          <node concept="3clFbS" id="5Xa7gk5c98Z" role="3clFbx">
            <node concept="3cpWs8" id="5Xa7gk5c990" role="3cqZAp">
              <node concept="3cpWsn" id="5Xa7gk5c991" role="3cpWs9">
                <property role="TrG5h" value="sidebarItem" />
                <node concept="3uibUv" id="5Xa7gk5c992" role="1tU5fm">
                  <ref role="3uigEE" to="dfte:601$vVQgJ24" resolve="SidebarActionItem" />
                </node>
                <node concept="10QFUN" id="5Xa7gk5c993" role="33vP2m">
                  <node concept="3uibUv" id="5Xa7gk5c994" role="10QFUM">
                    <ref role="3uigEE" to="dfte:601$vVQgJ24" resolve="SidebarActionItem" />
                  </node>
                  <node concept="37vLTw" id="5Xa7gk5cblM" role="10QFUP">
                    <ref role="3cqZAo" node="5Xa7gk5c8fP" resolve="actionItem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="5Xa7gk5chbM" role="3cqZAp">
              <node concept="3clFbS" id="5Xa7gk5chbN" role="1zxBo7">
                <node concept="3clFbF" id="5Xa7gk5c996" role="3cqZAp">
                  <node concept="37vLTI" id="5Xa7gk5c997" role="3clFbG">
                    <node concept="37vLTw" id="5Xa7gk5cbC3" role="37vLTJ">
                      <ref role="3cqZAo" node="5Xa7gk5cafr" resolve="icon" />
                    </node>
                    <node concept="2OqwBi" id="7eHFHBMo5xj" role="37vLTx">
                      <node concept="2YIFZM" id="7eHFHBMo5fg" role="2Oq$k0">
                        <ref role="37wK5l" to="sn11:5UC$YgehaLf" resolve="getInstance" />
                        <ref role="1Pybhc" to="sn11:192HKKPMXeL" resolve="GlobalIconManager" />
                      </node>
                      <node concept="liA8E" id="7eHFHBMo6b8" role="2OqNvi">
                        <ref role="37wK5l" to="sn11:192HKKPP2rb" resolve="getIconForResource" />
                        <node concept="2OqwBi" id="7eHFHBMo5fh" role="37wK5m">
                          <node concept="37vLTw" id="7eHFHBMo5fi" role="2Oq$k0">
                            <ref role="3cqZAo" node="5Xa7gk5c991" resolve="sidebarItem" />
                          </node>
                          <node concept="liA8E" id="7eHFHBMo5fj" role="2OqNvi">
                            <ref role="37wK5l" to="dfte:601$vVQgJ2b" resolve="getIcon" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="5Xa7gk5ds7C" role="1zxBo5">
                <node concept="XOnhg" id="5Xa7gk5ds7D" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="error" />
                  <node concept="nSUau" id="xvs04dHxYS" role="1tU5fm">
                    <node concept="3uibUv" id="5Xa7gk5dsvK" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~LinkageError" resolve="LinkageError" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5Xa7gk5ds7F" role="1zc67A">
                  <node concept="RRSsy" id="3jYQuSB36Xi" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="3cpWs3" id="5Xa7gk5ds_Q" role="RRSoy">
                      <node concept="Xl_RD" id="5Xa7gk5ds_R" role="3uHU7B">
                        <property role="Xl_RC" value="Error trying to get icon for " />
                      </node>
                      <node concept="37vLTw" id="5Xa7gk5ds_S" role="3uHU7w">
                        <ref role="3cqZAo" node="5Xa7gk5c8fP" resolve="actionItem" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5Xa7gk5dsQY" role="RRSow">
                      <ref role="3cqZAo" node="5Xa7gk5ds7D" resolve="error" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="5Xa7gk5chbO" role="1zxBo5">
                <node concept="XOnhg" id="5Xa7gk5chbP" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="exception" />
                  <node concept="nSUau" id="xvs04dHxYU" role="1tU5fm">
                    <node concept="3uibUv" id="5Xa7gk5chrv" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5Xa7gk5chbR" role="1zc67A">
                  <node concept="RRSsy" id="3jYQuSB36Xu" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="3cpWs3" id="5Xa7gk5cigx" role="RRSoy">
                      <node concept="Xl_RD" id="5Xa7gk5chL2" role="3uHU7B">
                        <property role="Xl_RC" value="Exception trying to get icon for " />
                      </node>
                      <node concept="37vLTw" id="5Xa7gk5ciny" role="3uHU7w">
                        <ref role="3cqZAo" node="5Xa7gk5c8fP" resolve="actionItem" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5Xa7gk5chL4" role="RRSow">
                      <ref role="3cqZAo" node="5Xa7gk5chbP" resolve="exception" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Xa7gk5cml6" role="3cqZAp" />
            <node concept="3J1_TO" id="5Xa7gk5cl1e" role="3cqZAp">
              <node concept="3clFbS" id="5Xa7gk5cl1f" role="1zxBo7">
                <node concept="3clFbF" id="5Xa7gk5c99c" role="3cqZAp">
                  <node concept="37vLTI" id="5Xa7gk5c99d" role="3clFbG">
                    <node concept="2OqwBi" id="5Xa7gk5c99e" role="37vLTx">
                      <node concept="37vLTw" id="5Xa7gk5c99f" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Xa7gk5c991" resolve="sidebarItem" />
                      </node>
                      <node concept="liA8E" id="5Xa7gk5c99g" role="2OqNvi">
                        <ref role="37wK5l" to="dfte:601$vVQgJ27" resolve="getTooltipText" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5Xa7gk5cbR9" role="37vLTJ">
                      <ref role="3cqZAo" node="5Xa7gk5caMZ" resolve="tooltip" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="5Xa7gk5cl1g" role="1zxBo5">
                <node concept="XOnhg" id="5Xa7gk5cl1h" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="error" />
                  <node concept="nSUau" id="xvs04dHxYW" role="1tU5fm">
                    <node concept="3uibUv" id="5Xa7gk5dty9" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~LinkageError" resolve="LinkageError" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5Xa7gk5cl1j" role="1zc67A">
                  <node concept="RRSsy" id="3jYQuSB36XE" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="3cpWs3" id="5Xa7gk5cltL" role="RRSoy">
                      <node concept="Xl_RD" id="5Xa7gk5cltM" role="3uHU7B">
                        <property role="Xl_RC" value="Error trying to get tooltip text for " />
                      </node>
                      <node concept="37vLTw" id="5Xa7gk5cltN" role="3uHU7w">
                        <ref role="3cqZAo" node="5Xa7gk5c8fP" resolve="actionItem" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5Xa7gk5cltO" role="RRSow">
                      <ref role="3cqZAo" node="5Xa7gk5cl1h" resolve="error" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="5Xa7gk5dtii" role="1zxBo5">
                <node concept="XOnhg" id="5Xa7gk5dtij" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="exception" />
                  <node concept="nSUau" id="xvs04dHxYY" role="1tU5fm">
                    <node concept="3uibUv" id="5Xa7gk5dtik" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5Xa7gk5dtil" role="1zc67A">
                  <node concept="RRSsy" id="3jYQuSB36XQ" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="3cpWs3" id="5Xa7gk5dtin" role="RRSoy">
                      <node concept="Xl_RD" id="5Xa7gk5dtio" role="3uHU7B">
                        <property role="Xl_RC" value="Exception trying to get tooltip text for " />
                      </node>
                      <node concept="37vLTw" id="5Xa7gk5dtip" role="3uHU7w">
                        <ref role="3cqZAo" node="5Xa7gk5c8fP" resolve="actionItem" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5Xa7gk5dtiq" role="RRSow">
                      <ref role="3cqZAo" node="5Xa7gk5dtij" resolve="exception" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5Xa7gk5c99i" role="3clFbw">
            <node concept="3uibUv" id="5Xa7gk5c99j" role="2ZW6by">
              <ref role="3uigEE" to="dfte:601$vVQgJ24" resolve="SidebarActionItem" />
            </node>
            <node concept="37vLTw" id="5Xa7gk5cb64" role="2ZW6bz">
              <ref role="3cqZAo" node="5Xa7gk5c8fP" resolve="actionItem" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Xa7gk5c97T" role="3cqZAp" />
        <node concept="3clFbF" id="5Xa7gk5c8wm" role="3cqZAp">
          <node concept="2ShNRf" id="5Xa7gk5c8wo" role="3clFbG">
            <node concept="1pGfFk" id="5Xa7gk5c8wp" role="2ShVmc">
              <ref role="37wK5l" node="5Xa7gk5c3EZ" resolve="ItemConverter.Item" />
              <node concept="37vLTw" id="5Xa7gk5c8wq" role="37wK5m">
                <ref role="3cqZAo" node="5Xa7gk5c8fP" resolve="actionItem" />
              </node>
              <node concept="37vLTw" id="5Xa7gk5c8wr" role="37wK5m">
                <ref role="3cqZAo" node="5Xa7gk5c8oK" resolve="folderName" />
              </node>
              <node concept="37vLTw" id="5Xa7gk5cdqc" role="37wK5m">
                <ref role="3cqZAo" node="5Xa7gk5cafr" resolve="icon" />
              </node>
              <node concept="37vLTw" id="5Xa7gk5cdjc" role="37wK5m">
                <ref role="3cqZAo" node="5Xa7gk5caMZ" resolve="tooltip" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5Xa7gk5c6Is" role="1B3o_S" />
      <node concept="3uibUv" id="5Xa7gk5c7z0" role="3clF45">
        <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
      </node>
      <node concept="37vLTG" id="5Xa7gk5c8fP" role="3clF46">
        <property role="TrG5h" value="actionItem" />
        <node concept="3uibUv" id="5Xa7gk5c8fO" role="1tU5fm">
          <ref role="3uigEE" to="uddc:~ActionItem" resolve="ActionItem" />
        </node>
      </node>
      <node concept="37vLTG" id="5Xa7gk5c8oK" role="3clF46">
        <property role="TrG5h" value="folderName" />
        <node concept="17QB3L" id="5Xa7gk5c8v7" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Xa7gk5bizA" role="jymVt" />
    <node concept="312cEu" id="5Xa7gk5bizB" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="Item" />
      <node concept="312cEg" id="5Xa7gk5bizC" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myActionItem" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5Xa7gk5bizD" role="1B3o_S" />
        <node concept="3uibUv" id="5Xa7gk5bizE" role="1tU5fm">
          <ref role="3uigEE" to="uddc:~ActionItem" resolve="ActionItem" />
        </node>
      </node>
      <node concept="312cEg" id="6TqVKW2NGTk" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myLabel" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6TqVKW2NGbL" role="1B3o_S" />
        <node concept="17QB3L" id="6TqVKW2NGN3" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5Xa7gk5bizF" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myFolderName" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5Xa7gk5bizG" role="1B3o_S" />
        <node concept="17QB3L" id="5Xa7gk5bizH" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5Xa7gk5bizI" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myIcon" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5Xa7gk5bizJ" role="1B3o_S" />
        <node concept="3uibUv" id="5Xa7gk5bizK" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5bizL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="312cEg" id="5Xa7gk5bizM" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myTooltip" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5Xa7gk5bizN" role="1B3o_S" />
        <node concept="17QB3L" id="5Xa7gk5bizO" role="1tU5fm" />
        <node concept="2AHcQZ" id="5Xa7gk5bizP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="2tJIrI" id="5Xa7gk5c31Q" role="jymVt" />
      <node concept="3clFbW" id="5Xa7gk5c3EZ" role="jymVt">
        <node concept="3cqZAl" id="5Xa7gk5c3F0" role="3clF45" />
        <node concept="3Tm6S6" id="5Xa7gk5c3F1" role="1B3o_S" />
        <node concept="3clFbS" id="5Xa7gk5c3F3" role="3clF47">
          <node concept="3clFbF" id="5Xa7gk5c3F7" role="3cqZAp">
            <node concept="37vLTI" id="5Xa7gk5c3F9" role="3clFbG">
              <node concept="37vLTw" id="5Xa7gk5c3Fd" role="37vLTJ">
                <ref role="3cqZAo" node="5Xa7gk5bizC" resolve="myActionItem" />
              </node>
              <node concept="37vLTw" id="5Xa7gk5c3Fe" role="37vLTx">
                <ref role="3cqZAo" node="5Xa7gk5c3F6" resolve="actionItem" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TqVKW2NHKa" role="3cqZAp">
            <node concept="37vLTI" id="6TqVKW2NItT" role="3clFbG">
              <node concept="2OqwBi" id="6TqVKW2NJom" role="37vLTx">
                <node concept="37vLTw" id="6TqVKW2NIPr" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Xa7gk5c3F6" resolve="actionItem" />
                </node>
                <node concept="liA8E" id="6TqVKW2NJEa" role="2OqNvi">
                  <ref role="37wK5l" to="uddc:~ActionItem.getLabelText(java.lang.String)" resolve="getLabelText" />
                  <node concept="Xl_RD" id="6TqVKW2NK2l" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6TqVKW2NHK8" role="37vLTJ">
                <ref role="3cqZAo" node="6TqVKW2NGTk" resolve="myLabel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Xa7gk5c3Fh" role="3cqZAp">
            <node concept="37vLTI" id="5Xa7gk5c3Fj" role="3clFbG">
              <node concept="37vLTw" id="5Xa7gk5c3Fn" role="37vLTJ">
                <ref role="3cqZAo" node="5Xa7gk5bizF" resolve="myFolderName" />
              </node>
              <node concept="37vLTw" id="5Xa7gk5c3Fo" role="37vLTx">
                <ref role="3cqZAo" node="5Xa7gk5c3Fg" resolve="folderName" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Xa7gk5c3Fr" role="3cqZAp">
            <node concept="37vLTI" id="5Xa7gk5c3Ft" role="3clFbG">
              <node concept="37vLTw" id="5Xa7gk5c3Fx" role="37vLTJ">
                <ref role="3cqZAo" node="5Xa7gk5bizI" resolve="myIcon" />
              </node>
              <node concept="37vLTw" id="5Xa7gk5c3Fy" role="37vLTx">
                <ref role="3cqZAo" node="5Xa7gk5c3Fq" resolve="icon" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5Xa7gk5c3F_" role="3cqZAp">
            <node concept="37vLTI" id="5Xa7gk5c3FB" role="3clFbG">
              <node concept="37vLTw" id="5Xa7gk5c3FF" role="37vLTJ">
                <ref role="3cqZAo" node="5Xa7gk5bizM" resolve="myTooltip" />
              </node>
              <node concept="37vLTw" id="5Xa7gk5c3FG" role="37vLTx">
                <ref role="3cqZAo" node="5Xa7gk5c3F$" resolve="tooltip" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5Xa7gk5c3F6" role="3clF46">
          <property role="TrG5h" value="actionItem" />
          <node concept="3uibUv" id="5Xa7gk5c3F5" role="1tU5fm">
            <ref role="3uigEE" to="uddc:~ActionItem" resolve="ActionItem" />
          </node>
        </node>
        <node concept="37vLTG" id="5Xa7gk5c3Fg" role="3clF46">
          <property role="TrG5h" value="folderName" />
          <node concept="17QB3L" id="5Xa7gk5c3Ff" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5Xa7gk5c3Fq" role="3clF46">
          <property role="TrG5h" value="icon" />
          <node concept="3uibUv" id="5Xa7gk5c3Fp" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
          </node>
        </node>
        <node concept="37vLTG" id="5Xa7gk5c3F$" role="3clF46">
          <property role="TrG5h" value="tooltip" />
          <node concept="17QB3L" id="5Xa7gk5c3Fz" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="5Xa7gk5bizQ" role="jymVt" />
      <node concept="3Tm6S6" id="5Xa7gk5bizR" role="1B3o_S" />
      <node concept="3uibUv" id="5Xa7gk5bizS" role="EKbjA">
        <ref role="3uigEE" node="7pClCNY6w3$" resolve="ToolComponent.IItem" />
      </node>
      <node concept="3clFb_" id="5Xa7gk5bi$G" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getLabel" />
        <node concept="3Tm1VV" id="5Xa7gk5bi$H" role="1B3o_S" />
        <node concept="17QB3L" id="5Xa7gk5bi$I" role="3clF45" />
        <node concept="3clFbS" id="5Xa7gk5bi$J" role="3clF47">
          <node concept="3clFbF" id="6TqVKW2NKJN" role="3cqZAp">
            <node concept="37vLTw" id="6TqVKW2NKJL" role="3clFbG">
              <ref role="3cqZAo" node="6TqVKW2NGTk" resolve="myLabel" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5bi$P" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5Xa7gk5bi$Q" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getIcon" />
        <node concept="3Tm1VV" id="5Xa7gk5bi$R" role="1B3o_S" />
        <node concept="3uibUv" id="5Xa7gk5bi$S" role="3clF45">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="3clFbS" id="5Xa7gk5bi$T" role="3clF47">
          <node concept="3clFbF" id="5Xa7gk5bi$U" role="3cqZAp">
            <node concept="37vLTw" id="5Xa7gk5bi$V" role="3clFbG">
              <ref role="3cqZAo" node="5Xa7gk5bizI" resolve="myIcon" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5bi$W" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5Xa7gk5bi$X" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getFolderName" />
        <node concept="3Tm1VV" id="5Xa7gk5bi$Y" role="1B3o_S" />
        <node concept="17QB3L" id="5Xa7gk5bi$Z" role="3clF45" />
        <node concept="3clFbS" id="5Xa7gk5bi_0" role="3clF47">
          <node concept="3clFbF" id="5Xa7gk5bi_1" role="3cqZAp">
            <node concept="37vLTw" id="5Xa7gk5bi_2" role="3clFbG">
              <ref role="3cqZAo" node="5Xa7gk5bizF" resolve="myFolderName" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5bi_3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5Xa7gk5bi_4" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getTooltip" />
        <node concept="3Tm1VV" id="5Xa7gk5bi_5" role="1B3o_S" />
        <node concept="17QB3L" id="5Xa7gk5bi_6" role="3clF45" />
        <node concept="3clFbS" id="5Xa7gk5bi_7" role="3clF47">
          <node concept="3clFbF" id="5Xa7gk5bi_8" role="3cqZAp">
            <node concept="37vLTw" id="5Xa7gk5bi_9" role="3clFbG">
              <ref role="3cqZAo" node="5Xa7gk5bizM" resolve="myTooltip" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5bi_a" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5Xa7gk5bi_b" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="isVisible" />
        <node concept="3Tm1VV" id="5Xa7gk5bi_c" role="1B3o_S" />
        <node concept="10P_77" id="5Xa7gk5bi_d" role="3clF45" />
        <node concept="3clFbS" id="5Xa7gk5bi_e" role="3clF47">
          <node concept="3clFbF" id="5Xa7gk5bi_f" role="3cqZAp">
            <node concept="2OqwBi" id="5Xa7gk5bi_g" role="3clFbG">
              <node concept="37vLTw" id="5Xa7gk5bi_h" role="2Oq$k0">
                <ref role="3cqZAo" node="5Xa7gk5bizC" resolve="myActionItem" />
              </node>
              <node concept="liA8E" id="5Xa7gk5bi_i" role="2OqNvi">
                <ref role="37wK5l" to="uddc:~ActionItem.canExecute(java.lang.String)" resolve="canExecute" />
                <node concept="Xl_RD" id="5Xa7gk5bi_j" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5bi_k" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5Xa7gk5bi_l" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="execute" />
        <node concept="3Tm1VV" id="5Xa7gk5bi_m" role="1B3o_S" />
        <node concept="3cqZAl" id="5Xa7gk5bi_n" role="3clF45" />
        <node concept="3clFbS" id="5Xa7gk5bi_o" role="3clF47">
          <node concept="3clFbF" id="5Xa7gk5bi_p" role="3cqZAp">
            <node concept="2OqwBi" id="5Xa7gk5bi_q" role="3clFbG">
              <node concept="37vLTw" id="5Xa7gk5bi_r" role="2Oq$k0">
                <ref role="3cqZAo" node="5Xa7gk5bizC" resolve="myActionItem" />
              </node>
              <node concept="liA8E" id="5Xa7gk5bi_s" role="2OqNvi">
                <ref role="37wK5l" to="uddc:~ActionItem.execute(java.lang.String)" resolve="execute" />
                <node concept="Xl_RD" id="5Xa7gk5bi_t" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5bi_u" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5Xa7gk5bi_v" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getCommandPolicy" />
        <node concept="3Tm1VV" id="5Xa7gk5bi_w" role="1B3o_S" />
        <node concept="3uibUv" id="5Xa7gk5bi_x" role="3clF45">
          <ref role="3uigEE" to="uddc:~CommandPolicy" resolve="CommandPolicy" />
        </node>
        <node concept="2AHcQZ" id="5Xa7gk5bi_y" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="5Xa7gk5bi_z" role="3clF47">
          <node concept="3clFbF" id="5Xa7gk5bi_$" role="3cqZAp">
            <node concept="2OqwBi" id="5Xa7gk5bi__" role="3clFbG">
              <node concept="37vLTw" id="5Xa7gk5bi_A" role="2Oq$k0">
                <ref role="3cqZAo" node="5Xa7gk5bizC" resolve="myActionItem" />
              </node>
              <node concept="liA8E" id="5Xa7gk5bi_B" role="2OqNvi">
                <ref role="37wK5l" to="uddc:~ActionItem.getCommandPolicy()" resolve="getCommandPolicy" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Xa7gk5bixQ" role="jymVt" />
    <node concept="3Tm1VV" id="5Xa7gk5b7L2" role="1B3o_S" />
  </node>
</model>

