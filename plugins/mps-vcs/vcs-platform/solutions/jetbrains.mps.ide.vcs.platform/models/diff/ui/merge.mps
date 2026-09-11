<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:351fe3d9-2ce5-4ea0-8afc-9b076259a949(jetbrains.mps.vcs.diff.ui.merge)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
  </languages>
  <imports>
    <import index="bmv6" ref="r:e9c4e128-4808-4224-a92b-dbeed02eb860(jetbrains.mps.vcs.diff.merge)" />
    <import index="btf5" ref="r:9b4a89e1-ec38-42c4-b1bd-96ab47ffcb3f(jetbrains.mps.vcs.diff.changes)" />
    <import index="hdhb" ref="r:07568eb8-30c0-4bb3-9dcb-50ee4b8de59a(jetbrains.mps.vcs.diff.ui.common)" />
    <import index="p37l" ref="r:df1b052a-af27-4b87-80fc-1492fa2192be(jetbrains.mps.vcs.diff.ui)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="px75" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.leftHighlighter(MPS.Editor/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="7bx7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.action(MPS.Platform/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="2sud" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.treeStructure(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="jmi8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.util(MPS.IDEA/)" />
    <import index="o8e1" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.merge(MPS.IDEA/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="xlkh" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.tools.util.side(MPS.IDEA/)" />
    <import index="ksd0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.tools.util(MPS.IDEA/)" />
    <import index="xo69" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.util(MPS.IDEA/)" />
    <import index="mnlj" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.beans(JDK/)" />
    <import index="lcr" ref="r:d634c129-ecb4-4acd-bd8c-5f057c144ffa(jetbrains.mps.vcs.changesmanager)" />
    <import index="nvd4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.repository(MPS.OpenAPI/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="ok99" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.diff(MPS.IDEA/)" />
    <import index="yt4f" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff(MPS.IDEA/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="5stq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui.components(MPS.IDEA/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="zdap" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.text(MPS.IDEA/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="cttk" ref="r:5ff047e0-2953-4750-806a-bdc16824aa89(jetbrains.mps.smodel)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="kip1" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.nodefs(MPS.Platform/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
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
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
      <concept id="8974276187400348183" name="jetbrains.mps.lang.access.structure.ExecuteWriteActionStatement" flags="nn" index="1QHqEM" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="3506770386464365589" name="jetbrains.mps.lang.smodel.structure.Model_PointerOperation" flags="ng" index="aIX43" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1863527487546132619" name="jetbrains.mps.lang.smodel.structure.SModelPointerType" flags="ig" index="1XwpNF" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
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
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1225645868993" name="jetbrains.mps.baseLanguage.collections.structure.SetElementOperation" flags="nn" index="1ubWrs">
        <child id="1225645893896" name="index" index="1uc2wl" />
        <child id="1225645893898" name="element" index="1uc2wn" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
    </language>
  </registry>
  <node concept="312cEu" id="BjUsE2KReF">
    <property role="TrG5h" value="MergeConfirmation" />
    <node concept="3Tm1VV" id="BjUsE2KRig" role="1B3o_S" />
    <node concept="Wx3nA" id="BjUsE2KReG" role="jymVt">
      <property role="TrG5h" value="RETURN" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="BjUsE2KReH" role="1B3o_S" />
      <node concept="10Oyi0" id="BjUsE2KReI" role="1tU5fm" />
      <node concept="3cmrfG" id="BjUsE2KReJ" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="BjUsE2KReK" role="jymVt">
      <property role="TrG5h" value="SAVE_AS_IS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="BjUsE2KReL" role="1B3o_S" />
      <node concept="10Oyi0" id="BjUsE2KReM" role="1tU5fm" />
      <node concept="3cmrfG" id="BjUsE2KReN" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="Wx3nA" id="BjUsE2KReO" role="jymVt">
      <property role="TrG5h" value="RESOLVE_AUTOMATICALLY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="BjUsE2KReP" role="1B3o_S" />
      <node concept="10Oyi0" id="BjUsE2KReQ" role="1tU5fm" />
      <node concept="3cmrfG" id="BjUsE2KReR" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="3clFbW" id="BjUsE2KRih" role="jymVt">
      <node concept="3cqZAl" id="BjUsE2KRii" role="3clF45" />
      <node concept="3Tm6S6" id="BjUsE2KRij" role="1B3o_S" />
      <node concept="3clFbS" id="BjUsE2KRik" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="2FmJFFZeC2a" role="jymVt">
      <property role="TrG5h" value="showMergeConfirmationAndTakeAction" />
      <node concept="10Oyi0" id="4qk_0lIzomh" role="3clF45" />
      <node concept="37vLTG" id="2FmJFFZeC2b" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="4qk_0lIr3QH" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="2FmJFFZeC2d" role="3clF46">
        <property role="TrG5h" value="mergeSession" />
        <node concept="3uibUv" id="2FmJFFZeC2e" role="1tU5fm">
          <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
        </node>
      </node>
      <node concept="37vLTG" id="2FmJFFZeC2f" role="3clF46">
        <property role="TrG5h" value="allRelevantChanges" />
        <node concept="A3Dl8" id="2FmJFFZeC2g" role="1tU5fm">
          <node concept="3uibUv" id="2FmJFFZeC2h" role="A3Ik2">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2FmJFFZeMhK" role="3clF46">
        <property role="TrG5h" value="mergeSession2" />
        <node concept="3uibUv" id="2FmJFFZeMjF" role="1tU5fm">
          <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
        </node>
        <node concept="2AHcQZ" id="2FmJFFZi7op" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="2FmJFFZeMAm" role="3clF46">
        <property role="TrG5h" value="allRelevantChanges2" />
        <node concept="A3Dl8" id="2FmJFFZeMCj" role="1tU5fm">
          <node concept="3uibUv" id="2FmJFFZeME8" role="A3Ik2">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2FmJFFZeC2p" role="1B3o_S" />
      <node concept="3clFbS" id="2FmJFFZeC2q" role="3clF47">
        <node concept="3cpWs8" id="2FmJFFZgHaK" role="3cqZAp">
          <node concept="3cpWsn" id="2FmJFFZgHaN" role="3cpWs9">
            <property role="TrG5h" value="changes" />
            <node concept="2OqwBi" id="2FmJFFZgWiV" role="33vP2m">
              <node concept="ANE8D" id="2FmJFFZgWKI" role="2OqNvi" />
              <node concept="2OqwBi" id="2FmJFFZgJdJ" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgmyQj" role="2Oq$k0">
                  <ref role="3cqZAo" node="2FmJFFZeC2f" resolve="allRelevantChanges" />
                </node>
                <node concept="3zZkjj" id="2FmJFFZgJdL" role="2OqNvi">
                  <node concept="1bVj0M" id="2FmJFFZgJdM" role="23t8la">
                    <node concept="3clFbS" id="2FmJFFZgJdN" role="1bW5cS">
                      <node concept="3clFbF" id="2FmJFFZgJdO" role="3cqZAp">
                        <node concept="3fqX7Q" id="2FmJFFZgJdP" role="3clFbG">
                          <node concept="2OqwBi" id="2FmJFFZgJdQ" role="3fr31v">
                            <node concept="37vLTw" id="2BHiRxglf8D" role="2Oq$k0">
                              <ref role="3cqZAo" node="2FmJFFZeC2d" resolve="mergeSession" />
                            </node>
                            <node concept="liA8E" id="2FmJFFZgJdS" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4o1" resolve="isChangeResolved" />
                              <node concept="37vLTw" id="2BHiRxgm9XS" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XQW" resolve="ch" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XQW" role="1bW2Oz">
                      <property role="TrG5h" value="ch" />
                      <node concept="2jxLKc" id="5W7E4fV0XQX" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="_YKpA" id="2FmJFFZgOmt" role="1tU5fm">
              <node concept="3uibUv" id="2FmJFFZgOmv" role="_ZDj9">
                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2FmJFFZgAtt" role="3cqZAp">
          <node concept="3cpWsn" id="2FmJFFZgAtw" role="3cpWs9">
            <property role="TrG5h" value="nChanges" />
            <node concept="2OqwBi" id="2FmJFFZgKhC" role="33vP2m">
              <node concept="34oBXx" id="2FmJFFZgKES" role="2OqNvi" />
              <node concept="37vLTw" id="2FmJFFZgJ$s" role="2Oq$k0">
                <ref role="3cqZAo" node="2FmJFFZgHaN" resolve="changes" />
              </node>
            </node>
            <node concept="10Oyi0" id="2FmJFFZgAtr" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="2FmJFFZgCnv" role="3cqZAp">
          <node concept="3cpWsn" id="2FmJFFZgCny" role="3cpWs9">
            <property role="TrG5h" value="nConflicts" />
            <node concept="2OqwBi" id="2FmJFFZhsIm" role="33vP2m">
              <node concept="34oBXx" id="2FmJFFZhtnp" role="2OqNvi" />
              <node concept="2OqwBi" id="2FmJFFZhr66" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTv7E" role="2Oq$k0">
                  <ref role="3cqZAo" node="2FmJFFZgHaN" resolve="changes" />
                </node>
                <node concept="3zZkjj" id="2FmJFFZhr68" role="2OqNvi">
                  <node concept="1bVj0M" id="2FmJFFZhr69" role="23t8la">
                    <node concept="3clFbS" id="2FmJFFZhr6a" role="1bW5cS">
                      <node concept="3clFbF" id="2FmJFFZhr6b" role="3cqZAp">
                        <node concept="2OqwBi" id="2FmJFFZhr6c" role="3clFbG">
                          <node concept="2OqwBi" id="2FmJFFZhr6d" role="2Oq$k0">
                            <node concept="37vLTw" id="2BHiRxghfdH" role="2Oq$k0">
                              <ref role="3cqZAo" node="2FmJFFZeC2d" resolve="mergeSession" />
                            </node>
                            <node concept="liA8E" id="2FmJFFZhr6f" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4nE" resolve="getConflictedWith" />
                              <node concept="37vLTw" id="2BHiRxglETi" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XQY" resolve="ch" />
                              </node>
                            </node>
                          </node>
                          <node concept="3GX2aA" id="2FmJFFZhr6h" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XQY" role="1bW2Oz">
                      <property role="TrG5h" value="ch" />
                      <node concept="2jxLKc" id="5W7E4fV0XQZ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Oyi0" id="2FmJFFZgCnt" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="2FmJFFZh4HV" role="3cqZAp">
          <node concept="3y3z36" id="2FmJFFZh6_M" role="3clFbw">
            <node concept="10Nm6u" id="2FmJFFZh6Ub" role="3uHU7w" />
            <node concept="37vLTw" id="2FmJFFZh5Tt" role="3uHU7B">
              <ref role="3cqZAo" node="2FmJFFZeMhK" resolve="mergeSession2" />
            </node>
          </node>
          <node concept="3clFbS" id="2FmJFFZh4HX" role="3clFbx">
            <node concept="3clFbF" id="2FmJFFZhebH" role="3cqZAp">
              <node concept="37vLTI" id="2FmJFFZhfLD" role="3clFbG">
                <node concept="37vLTw" id="2FmJFFZhebG" role="37vLTJ">
                  <ref role="3cqZAo" node="2FmJFFZgHaN" resolve="changes" />
                </node>
                <node concept="2OqwBi" id="2FmJFFZhgsW" role="37vLTx">
                  <node concept="2OqwBi" id="2FmJFFZhgsX" role="2Oq$k0">
                    <node concept="37vLTw" id="2FmJFFZhgsY" role="2Oq$k0">
                      <ref role="3cqZAo" node="2FmJFFZeMAm" resolve="allRelevantChanges2" />
                    </node>
                    <node concept="3zZkjj" id="2FmJFFZhgsZ" role="2OqNvi">
                      <node concept="1bVj0M" id="2FmJFFZhgt0" role="23t8la">
                        <node concept="3clFbS" id="2FmJFFZhgt1" role="1bW5cS">
                          <node concept="3clFbF" id="2FmJFFZhgt2" role="3cqZAp">
                            <node concept="3fqX7Q" id="2FmJFFZhgt3" role="3clFbG">
                              <node concept="2OqwBi" id="2FmJFFZhgt4" role="3fr31v">
                                <node concept="37vLTw" id="2FmJFFZhgt5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2FmJFFZeMhK" resolve="mergeSession2" />
                                </node>
                                <node concept="liA8E" id="2FmJFFZhgt6" role="2OqNvi">
                                  <ref role="37wK5l" to="bmv6:3$YpntjF4o1" resolve="isChangeResolved" />
                                  <node concept="37vLTw" id="2BHiRxgm99H" role="37wK5m">
                                    <ref role="3cqZAo" node="5W7E4fV0XR0" resolve="ch" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XR0" role="1bW2Oz">
                          <property role="TrG5h" value="ch" />
                          <node concept="2jxLKc" id="5W7E4fV0XR1" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="2FmJFFZhgta" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2FmJFFZhwls" role="3cqZAp">
              <node concept="d57v9" id="2FmJFFZhy7D" role="3clFbG">
                <node concept="2OqwBi" id="2FmJFFZhzOu" role="37vLTx">
                  <node concept="34oBXx" id="2FmJFFZh_BR" role="2OqNvi" />
                  <node concept="37vLTw" id="2FmJFFZhyzS" role="2Oq$k0">
                    <ref role="3cqZAo" node="2FmJFFZgHaN" resolve="changes" />
                  </node>
                </node>
                <node concept="37vLTw" id="2FmJFFZhwlr" role="37vLTJ">
                  <ref role="3cqZAo" node="2FmJFFZgAtw" resolve="nChanges" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2FmJFFZhBQA" role="3cqZAp">
              <node concept="d57v9" id="2FmJFFZhEqF" role="3clFbG">
                <node concept="2OqwBi" id="2FmJFFZhHJk" role="37vLTx">
                  <node concept="34oBXx" id="2FmJFFZhItz" role="2OqNvi" />
                  <node concept="2OqwBi" id="2FmJFFZhFDi" role="2Oq$k0">
                    <node concept="37vLTw" id="2FmJFFZhFDj" role="2Oq$k0">
                      <ref role="3cqZAo" node="2FmJFFZgHaN" resolve="changes" />
                    </node>
                    <node concept="3zZkjj" id="2FmJFFZhFDk" role="2OqNvi">
                      <node concept="1bVj0M" id="2FmJFFZhFDl" role="23t8la">
                        <node concept="3clFbS" id="2FmJFFZhFDm" role="1bW5cS">
                          <node concept="3clFbF" id="2FmJFFZhFDn" role="3cqZAp">
                            <node concept="2OqwBi" id="2FmJFFZhFDo" role="3clFbG">
                              <node concept="2OqwBi" id="2FmJFFZhFDp" role="2Oq$k0">
                                <node concept="37vLTw" id="2FmJFFZhFDq" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2FmJFFZeMhK" resolve="mergeSession2" />
                                </node>
                                <node concept="liA8E" id="2FmJFFZhFDr" role="2OqNvi">
                                  <ref role="37wK5l" to="bmv6:3$YpntjF4nE" resolve="getConflictedWith" />
                                  <node concept="37vLTw" id="2BHiRxgmFdA" role="37wK5m">
                                    <ref role="3cqZAo" node="5W7E4fV0XR2" resolve="ch" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3GX2aA" id="2FmJFFZhFDt" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XR2" role="1bW2Oz">
                          <property role="TrG5h" value="ch" />
                          <node concept="2jxLKc" id="5W7E4fV0XR3" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2FmJFFZhBQ_" role="37vLTJ">
                  <ref role="3cqZAo" node="2FmJFFZgCny" resolve="nConflicts" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FmJFFZeQ1z" role="3cqZAp" />
        <node concept="3cpWs8" id="2FmJFFZeC2r" role="3cqZAp">
          <node concept="3cpWsn" id="2FmJFFZeC2s" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="2FmJFFZeC2t" role="1tU5fm" />
            <node concept="2YIFZM" id="2FmJFFZeC2u" role="33vP2m">
              <ref role="1Pybhc" node="BjUsE2KReF" resolve="MergeConfirmation" />
              <ref role="37wK5l" node="2FmJFFZeZ1c" resolve="showMergeConfirmationIfNeeded" />
              <node concept="37vLTw" id="2BHiRxglt5A" role="37wK5m">
                <ref role="3cqZAo" node="2FmJFFZeC2b" resolve="parent" />
              </node>
              <node concept="37vLTw" id="2FmJFFZhVFD" role="37wK5m">
                <ref role="3cqZAo" node="2FmJFFZgAtw" resolve="nChanges" />
              </node>
              <node concept="37vLTw" id="2FmJFFZhXA7" role="37wK5m">
                <ref role="3cqZAo" node="2FmJFFZgCny" resolve="nConflicts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4qk_0lIzoKr" role="3cqZAp">
          <node concept="37vLTw" id="4qk_0lIzoRS" role="3cqZAk">
            <ref role="3cqZAo" node="2FmJFFZeC2s" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="2FmJFFZeZ1c" role="jymVt">
      <property role="TrG5h" value="showMergeConfirmationIfNeeded" />
      <node concept="37vLTG" id="2FmJFFZeZ1d" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="4qk_0lIr36F" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="2FmJFFZf1j4" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="10Oyi0" id="2FmJFFZf1lo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2FmJFFZf1v5" role="3clF46">
        <property role="TrG5h" value="conflicted" />
        <node concept="10Oyi0" id="2FmJFFZf1y9" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="2FmJFFZeZ1k" role="3clF45" />
      <node concept="3Tm6S6" id="2FmJFFZeZ1l" role="1B3o_S" />
      <node concept="3clFbS" id="2FmJFFZeZ1m" role="3clF47">
        <node concept="3clFbJ" id="2FmJFFZeZ1W" role="3cqZAp">
          <node concept="3clFbS" id="2FmJFFZeZ1X" role="3clFbx">
            <node concept="3cpWs6" id="2FmJFFZeZ1Y" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqystVM" role="3cqZAk">
                <ref role="37wK5l" node="BjUsE2KRgQ" resolve="showUnresolvedConflictsConfirmation" />
                <node concept="37vLTw" id="2BHiRxgm9hn" role="37wK5m">
                  <ref role="3cqZAo" node="2FmJFFZeZ1d" resolve="parent" />
                </node>
                <node concept="37vLTw" id="2FmJFFZf6Zm" role="37wK5m">
                  <ref role="3cqZAo" node="2FmJFFZf1v5" resolve="conflicted" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2FmJFFZeZ24" role="3clFbw">
            <node concept="37vLTw" id="2FmJFFZf4dd" role="3uHU7B">
              <ref role="3cqZAo" node="2FmJFFZf1v5" resolve="conflicted" />
            </node>
            <node concept="3cmrfG" id="2FmJFFZeZ25" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eNFk2" id="2FmJFFZeZ29" role="3eNLev">
            <node concept="3clFbS" id="2FmJFFZeZ2a" role="3eOfB_">
              <node concept="3cpWs6" id="2FmJFFZeZ2b" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqysiH0" role="3cqZAk">
                  <ref role="37wK5l" node="BjUsE2KRhl" resolve="showUnresolvedChangesConfirmation" />
                  <node concept="37vLTw" id="2BHiRxgkWC9" role="37wK5m">
                    <ref role="3cqZAo" node="2FmJFFZeZ1d" resolve="parent" />
                  </node>
                  <node concept="37vLTw" id="2FmJFFZf767" role="37wK5m">
                    <ref role="3cqZAo" node="2FmJFFZf1j4" resolve="changes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2FmJFFZeZ2h" role="3eO9$A">
              <node concept="37vLTw" id="2FmJFFZf4_P" role="3uHU7B">
                <ref role="3cqZAo" node="2FmJFFZf1j4" resolve="changes" />
              </node>
              <node concept="3cmrfG" id="2FmJFFZeZ2i" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2FmJFFZeZ2m" role="3cqZAp">
          <node concept="37vLTw" id="2FmJFFZeZ3p" role="3cqZAk">
            <ref role="3cqZAo" node="BjUsE2KReK" resolve="SAVE_AS_IS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="BjUsE2KRgQ" role="jymVt">
      <property role="TrG5h" value="showUnresolvedConflictsConfirmation" />
      <node concept="10Oyi0" id="BjUsE2KRgR" role="3clF45" />
      <node concept="3Tm6S6" id="BjUsE2KRgS" role="1B3o_S" />
      <node concept="3clFbS" id="BjUsE2KRgT" role="3clF47">
        <node concept="3cpWs8" id="BjUsE2KRgU" role="3cqZAp">
          <node concept="3cpWsn" id="BjUsE2KRgV" role="3cpWs9">
            <property role="TrG5h" value="msg" />
            <node concept="17QB3L" id="BjUsE2KRgW" role="1tU5fm" />
            <node concept="2YIFZM" id="BjUsE2KRgX" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="3cpWs3" id="BjUsE2KRgY" role="37wK5m">
                <node concept="Xl_RD" id="BjUsE2KRgZ" role="3uHU7B">
                  <property role="Xl_RC" value="You have %s left unprocessed.\n" />
                </node>
                <node concept="Xl_RD" id="BjUsE2KRh0" role="3uHU7w">
                  <property role="Xl_RC" value="Save only processed changes and mark the conflict resolved anyway?" />
                </node>
              </node>
              <node concept="2YIFZM" id="BjUsE2KRh1" role="37wK5m">
                <ref role="37wK5l" to="18ew:~NameUtil.formatNumericalString(int,java.lang.String)" resolve="formatNumericalString" />
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <node concept="37vLTw" id="2BHiRxgmOf_" role="37wK5m">
                  <ref role="3cqZAo" node="BjUsE2KRhj" resolve="changes" />
                </node>
                <node concept="Xl_RD" id="BjUsE2KRh3" role="37wK5m">
                  <property role="Xl_RC" value="unresolved conflicting change" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="BjUsE2KRh4" role="3cqZAp">
          <node concept="3clFbS" id="BjUsE2KRh5" role="3clFbx">
            <node concept="3cpWs6" id="BjUsE2KRh6" role="3cqZAp">
              <node concept="10M0yZ" id="BjUsE2KReA" role="3cqZAk">
                <ref role="1PxDUh" node="BjUsE2KReF" resolve="MergeConfirmation" />
                <ref role="3cqZAo" node="BjUsE2KReK" resolve="SAVE_AS_IS" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="BjUsE2KRh7" role="3clFbw">
            <node concept="2YIFZM" id="5yiqMy2PM6r" role="3uHU7B">
              <ref role="37wK5l" to="jkm4:~Messages.showOkCancelDialog(java.awt.Component,java.lang.String,java.lang.String,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showOkCancelDialog" />
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <node concept="37vLTw" id="5yiqMy2PM6s" role="37wK5m">
                <ref role="3cqZAo" node="BjUsE2KRhh" resolve="parent" />
              </node>
              <node concept="37vLTw" id="5yiqMy2PM6t" role="37wK5m">
                <ref role="3cqZAo" node="BjUsE2KRgV" resolve="msg" />
              </node>
              <node concept="Xl_RD" id="5yiqMy2PM6u" role="37wK5m">
                <property role="Xl_RC" value="Unresolved Conflicting Changes" />
              </node>
              <node concept="Xl_RD" id="1T405pOpXXG" role="37wK5m">
                <property role="Xl_RC" value="Apply Processed Changes and Mark Resolved" />
              </node>
              <node concept="Xl_RD" id="1T405pOpX8t" role="37wK5m">
                <property role="Xl_RC" value="Continue Merge" />
              </node>
              <node concept="2YIFZM" id="5yiqMy2PM6v" role="37wK5m">
                <ref role="37wK5l" to="jkm4:~Messages.getWarningIcon()" resolve="getWarningIcon" />
                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              </node>
            </node>
            <node concept="3cmrfG" id="BjUsE2KRhd" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="9aQIb" id="BjUsE2KRhe" role="9aQIa">
            <node concept="3clFbS" id="BjUsE2KRhf" role="9aQI4">
              <node concept="3cpWs6" id="BjUsE2KRhg" role="3cqZAp">
                <node concept="10M0yZ" id="BjUsE2KReB" role="3cqZAk">
                  <ref role="1PxDUh" node="BjUsE2KReF" resolve="MergeConfirmation" />
                  <ref role="3cqZAo" node="BjUsE2KReG" resolve="RETURN" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KRhh" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="4qk_0lIr2vn" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KRhj" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="10Oyi0" id="BjUsE2KRhk" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="BjUsE2KRhl" role="jymVt">
      <property role="TrG5h" value="showUnresolvedChangesConfirmation" />
      <node concept="37vLTG" id="BjUsE2KRhm" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="4qk_0lIr3sz" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KRho" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="10Oyi0" id="BjUsE2KRhp" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="BjUsE2KRhq" role="3clF45" />
      <node concept="3Tm6S6" id="BjUsE2KRhr" role="1B3o_S" />
      <node concept="3clFbS" id="BjUsE2KRhs" role="3clF47">
        <node concept="3cpWs8" id="BjUsE2KRht" role="3cqZAp">
          <node concept="3cpWsn" id="BjUsE2KRhu" role="3cpWs9">
            <property role="TrG5h" value="message" />
            <node concept="17QB3L" id="BjUsE2KRhv" role="1tU5fm" />
            <node concept="2YIFZM" id="BjUsE2KRhw" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <node concept="Xl_RD" id="BjUsE2KRhx" role="37wK5m">
                <property role="Xl_RC" value="You have %s left unprocessed. You can resolve %s automatically." />
              </node>
              <node concept="2YIFZM" id="BjUsE2KRhy" role="37wK5m">
                <ref role="37wK5l" to="18ew:~NameUtil.formatNumericalString(int,java.lang.String)" resolve="formatNumericalString" />
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <node concept="37vLTw" id="2BHiRxglb0p" role="37wK5m">
                  <ref role="3cqZAo" node="BjUsE2KRho" resolve="changes" />
                </node>
                <node concept="Xl_RD" id="BjUsE2KRh$" role="37wK5m">
                  <property role="Xl_RC" value="unresolved change" />
                </node>
              </node>
              <node concept="3K4zz7" id="BjUsE2KRh_" role="37wK5m">
                <node concept="Xl_RD" id="BjUsE2KRhA" role="3K4E3e">
                  <property role="Xl_RC" value="them" />
                </node>
                <node concept="Xl_RD" id="BjUsE2KRhB" role="3K4GZi">
                  <property role="Xl_RC" value="it" />
                </node>
                <node concept="3eOSWO" id="BjUsE2KRhC" role="3K4Cdx">
                  <node concept="3cmrfG" id="BjUsE2KRhD" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxglGab" role="3uHU7B">
                    <ref role="3cqZAo" node="BjUsE2KRho" resolve="changes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="BjUsE2KRhF" role="3cqZAp">
          <node concept="3cpWsn" id="BjUsE2KRhG" role="3cpWs9">
            <property role="TrG5h" value="title" />
            <node concept="17QB3L" id="BjUsE2KRhH" role="1tU5fm" />
            <node concept="3cpWs3" id="BjUsE2KRhI" role="33vP2m">
              <node concept="1eOMI4" id="BjUsE2KRhJ" role="3uHU7w">
                <node concept="3K4zz7" id="BjUsE2KRhK" role="1eOMHV">
                  <node concept="3eOSWO" id="BjUsE2KRhL" role="3K4Cdx">
                    <node concept="3cmrfG" id="BjUsE2KRhM" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm5Jt" role="3uHU7B">
                      <ref role="3cqZAo" node="BjUsE2KRho" resolve="changes" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="BjUsE2KRhO" role="3K4E3e">
                    <property role="Xl_RC" value="s" />
                  </node>
                  <node concept="Xl_RD" id="BjUsE2KRhP" role="3K4GZi">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="BjUsE2KRhQ" role="3uHU7B">
                <property role="Xl_RC" value="Unresolved Change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="BjUsE2KRhR" role="3cqZAp">
          <node concept="3cpWsn" id="BjUsE2KRhS" role="3cpWs9">
            <property role="TrG5h" value="answer" />
            <node concept="10Oyi0" id="BjUsE2KRhT" role="1tU5fm" />
            <node concept="2YIFZM" id="BjUsE2KRhU" role="33vP2m">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showYesNoCancelDialog(java.awt.Component,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showYesNoCancelDialog" />
              <node concept="37vLTw" id="2BHiRxgm8OO" role="37wK5m">
                <ref role="3cqZAo" node="BjUsE2KRhm" resolve="parent" />
              </node>
              <node concept="37vLTw" id="3GM_nagTy0d" role="37wK5m">
                <ref role="3cqZAo" node="BjUsE2KRhu" resolve="message" />
              </node>
              <node concept="37vLTw" id="3GM_nagTrzo" role="37wK5m">
                <ref role="3cqZAo" node="BjUsE2KRhG" resolve="title" />
              </node>
              <node concept="Xl_RD" id="5yiqMy2PQWJ" role="37wK5m">
                <property role="Xl_RC" value="Resolve Automatically and Exit" />
              </node>
              <node concept="Xl_RD" id="5yiqMy2PRjG" role="37wK5m">
                <property role="Xl_RC" value="Apply Processed Changes and Mark Resolved" />
              </node>
              <node concept="Xl_RD" id="5yiqMy2PRtL" role="37wK5m">
                <property role="Xl_RC" value="Continue Merge" />
              </node>
              <node concept="2YIFZM" id="5yiqMy2PP8n" role="37wK5m">
                <ref role="37wK5l" to="jkm4:~Messages.getWarningIcon()" resolve="getWarningIcon" />
                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="BjUsE2KRhZ" role="3cqZAp">
          <node concept="3clFbS" id="BjUsE2KRi0" role="3clFbx">
            <node concept="3cpWs6" id="BjUsE2KRi1" role="3cqZAp">
              <node concept="10M0yZ" id="BjUsE2KReC" role="3cqZAk">
                <ref role="1PxDUh" node="BjUsE2KReF" resolve="MergeConfirmation" />
                <ref role="3cqZAo" node="BjUsE2KReO" resolve="RESOLVE_AUTOMATICALLY" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="BjUsE2KRi2" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTAKN" role="3uHU7B">
              <ref role="3cqZAo" node="BjUsE2KRhS" resolve="answer" />
            </node>
            <node concept="10M0yZ" id="2GSFnLofvZi" role="3uHU7w">
              <ref role="3cqZAo" to="jkm4:~Messages.YES" resolve="YES" />
              <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
            </node>
          </node>
          <node concept="3eNFk2" id="BjUsE2KRi5" role="3eNLev">
            <node concept="3clFbS" id="BjUsE2KRi6" role="3eOfB_">
              <node concept="3SKdUt" id="BjUsE2KRi7" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXomj4" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXomj5" role="1PaTwD">
                    <property role="3oM_SC" value="Do" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomj6" role="1PaTwD">
                    <property role="3oM_SC" value="nothing," />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomj7" role="1PaTwD">
                    <property role="3oM_SC" value="leave" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomj8" role="1PaTwD">
                    <property role="3oM_SC" value="unresolved" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomj9" role="1PaTwD">
                    <property role="3oM_SC" value="changes" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomja" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomjb" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="BjUsE2KRi9" role="3cqZAp">
                <node concept="10M0yZ" id="BjUsE2KReD" role="3cqZAk">
                  <ref role="1PxDUh" node="BjUsE2KReF" resolve="MergeConfirmation" />
                  <ref role="3cqZAo" node="BjUsE2KReK" resolve="SAVE_AS_IS" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="BjUsE2KRia" role="3eO9$A">
              <node concept="37vLTw" id="3GM_nagT$Uf" role="3uHU7B">
                <ref role="3cqZAo" node="BjUsE2KRhS" resolve="answer" />
              </node>
              <node concept="10M0yZ" id="2GSFnLofzJo" role="3uHU7w">
                <ref role="3cqZAo" to="jkm4:~Messages.NO" resolve="NO" />
                <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="BjUsE2KRid" role="9aQIa">
            <node concept="3clFbS" id="BjUsE2KRie" role="9aQI4">
              <node concept="3SKdUt" id="2GSFnLof$Qi" role="3cqZAp">
                <node concept="1PaTwC" id="2GSFnLof$Qj" role="1aUNEU">
                  <node concept="3oM_SD" id="2GSFnLof$Qk" role="1PaTwD">
                    <property role="3oM_SC" value="answer" />
                  </node>
                  <node concept="3oM_SD" id="2GSFnLof_jW" role="1PaTwD">
                    <property role="3oM_SC" value="==" />
                  </node>
                  <node concept="3oM_SD" id="1jRXUntHlO" role="1PaTwD">
                    <property role="3oM_SC" value="Messages.CANCEL" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="BjUsE2KRif" role="3cqZAp">
                <node concept="10M0yZ" id="BjUsE2KReE" role="3cqZAk">
                  <ref role="1PxDUh" node="BjUsE2KReF" resolve="MergeConfirmation" />
                  <ref role="3cqZAo" node="BjUsE2KReG" resolve="RETURN" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="BjUsE2KQV8">
    <property role="TrG5h" value="MergeButtonsPainter" />
    <node concept="3Tm1VV" id="BjUsE2KQVK" role="1B3o_S" />
    <node concept="3uibUv" id="BjUsE2KQVL" role="1zkMxy">
      <ref role="3uigEE" to="hdhb:42hl10VH9JP" resolve="ButtonsPainter" />
    </node>
    <node concept="312cEg" id="2jv$fqwnczn" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPane" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2jv$fqwnc5j" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwncyv" role="1tU5fm">
        <ref role="3uigEE" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
      </node>
    </node>
    <node concept="3clFbW" id="2jv$fqwndid" role="jymVt">
      <node concept="3cqZAl" id="2jv$fqwndie" role="3clF45" />
      <node concept="3Tm6S6" id="2jv$fqwndif" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwndig" role="3clF47">
        <node concept="XkiVB" id="2jv$fqwndih" role="3cqZAp">
          <ref role="37wK5l" to="hdhb:42hl10VH9KF" resolve="ButtonsPainter" />
          <node concept="3cmrfG" id="2jv$fqwndii" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
          <node concept="37vLTw" id="2BHiRxgmtyY" role="37wK5m">
            <ref role="3cqZAo" node="2jv$fqwndir" resolve="editorComponent" />
          </node>
          <node concept="37vLTw" id="2BHiRxglGXM" role="37wK5m">
            <ref role="3cqZAo" node="2jv$fqwndit" resolve="changeGroupLayout" />
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwndil" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwndim" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwngpV" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwnczn" resolve="myPane" />
            </node>
            <node concept="37vLTw" id="2BHiRxghivG" role="37vLTx">
              <ref role="3cqZAo" node="2jv$fqwndip" resolve="pane" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwndip" role="3clF46">
        <property role="TrG5h" value="pane" />
        <node concept="3uibUv" id="2jv$fqwne2T" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwndir" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="2jv$fqwndis" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwndit" role="3clF46">
        <property role="TrG5h" value="changeGroupLayout" />
        <node concept="3uibUv" id="2jv$fqwndiu" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="BjUsE2KQX0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createButtonsForChangeGroup" />
      <node concept="A3Dl8" id="BjUsE2KQX1" role="3clF45">
        <node concept="3uibUv" id="BjUsE2KQX2" role="A3Ik2">
          <ref role="3uigEE" to="hdhb:42hl10VHb0z" resolve="FoldingAreaButton" />
        </node>
      </node>
      <node concept="3Tmbuc" id="BjUsE2KQX3" role="1B3o_S" />
      <node concept="37vLTG" id="BjUsE2KQX4" role="3clF46">
        <property role="TrG5h" value="changeGroup" />
        <node concept="3uibUv" id="BjUsE2KQX5" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KQX6" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="BjUsE2KQX7" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="BjUsE2KQX8" role="3clF47">
        <node concept="3cpWs8" id="BjUsE2KQX9" role="3cqZAp">
          <node concept="3cpWsn" id="BjUsE2KQXa" role="3cpWs9">
            <property role="TrG5h" value="applyX" />
            <node concept="10Oyi0" id="BjUsE2KQXb" role="1tU5fm" />
            <node concept="3K4zz7" id="BjUsE2KQXc" role="33vP2m">
              <node concept="1rXfSq" id="4hiugqyzcu4" role="3K4E3e">
                <ref role="37wK5l" to="hdhb:42hl10VH9PH" resolve="getX" />
                <node concept="3cmrfG" id="BjUsE2KQXe" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyz3se" role="3K4GZi">
                <ref role="37wK5l" to="hdhb:42hl10VH9PH" resolve="getX" />
                <node concept="3cmrfG" id="BjUsE2KQXg" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyyZF0" role="3K4Cdx">
                <ref role="37wK5l" to="hdhb:42hl10VH9Kp" resolve="isHighlightLeft" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="BjUsE2KQXi" role="3cqZAp">
          <node concept="3cpWsn" id="BjUsE2KQXj" role="3cpWs9">
            <property role="TrG5h" value="excludeX" />
            <node concept="10Oyi0" id="BjUsE2KQXk" role="1tU5fm" />
            <node concept="3K4zz7" id="BjUsE2KQXl" role="33vP2m">
              <node concept="1rXfSq" id="4hiugqyzeG4" role="3K4E3e">
                <ref role="37wK5l" to="hdhb:42hl10VH9PH" resolve="getX" />
                <node concept="3cmrfG" id="BjUsE2KQXn" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyzhL8" role="3K4GZi">
                <ref role="37wK5l" to="hdhb:42hl10VH9PH" resolve="getX" />
                <node concept="3cmrfG" id="BjUsE2KQXp" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyzh_1" role="3K4Cdx">
                <ref role="37wK5l" to="hdhb:42hl10VH9Kp" resolve="isHighlightLeft" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="BjUsE2KQXr" role="3cqZAp">
          <node concept="3cpWsn" id="BjUsE2KQXs" role="3cpWs9">
            <property role="TrG5h" value="apply" />
            <node concept="3uibUv" id="BjUsE2KQXt" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHb0z" resolve="FoldingAreaButton" />
            </node>
            <node concept="2ShNRf" id="BjUsE2KQXu" role="33vP2m">
              <node concept="1pGfFk" id="BjUsE2KQXv" role="2ShVmc">
                <ref role="37wK5l" node="BjUsE2KQWy" resolve="MergeButtonsPainter.MyButton" />
                <node concept="37vLTw" id="2BHiRxgmeXk" role="37wK5m">
                  <ref role="3cqZAo" node="BjUsE2KQX4" resolve="changeGroup" />
                </node>
                <node concept="37vLTw" id="3GM_nagT$4U" role="37wK5m">
                  <ref role="3cqZAo" node="BjUsE2KQXa" resolve="applyX" />
                </node>
                <node concept="37vLTw" id="2BHiRxglf6b" role="37wK5m">
                  <ref role="3cqZAo" node="BjUsE2KQX6" resolve="y" />
                </node>
                <node concept="Xl_RD" id="BjUsE2KQXz" role="37wK5m">
                  <property role="Xl_RC" value="Apply" />
                </node>
                <node concept="3K4zz7" id="BjUsE2KQX$" role="37wK5m">
                  <node concept="10M0yZ" id="BjUsE2KQX_" role="3K4GZi">
                    <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                    <ref role="3cqZAo" to="xnls:~IdeIcons.APPLY" resolve="APPLY" />
                  </node>
                  <node concept="1rXfSq" id="4hiugqyz8U0" role="3K4Cdx">
                    <ref role="37wK5l" to="hdhb:42hl10VH9Kp" resolve="isHighlightLeft" />
                  </node>
                  <node concept="10M0yZ" id="2ulDXJ9wNlB" role="3K4E3e">
                    <ref role="3cqZAo" to="xnls:~IdeIcons.APPLY_RIGHT" resolve="APPLY_RIGHT" />
                    <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                  </node>
                </node>
                <node concept="1bVj0M" id="BjUsE2KQXB" role="37wK5m">
                  <node concept="3clFbS" id="BjUsE2KQXC" role="1bW5cS">
                    <node concept="3clFbF" id="BjUsE2KQXD" role="3cqZAp">
                      <node concept="2OqwBi" id="BjUsE2KQXE" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm$EK" role="2Oq$k0">
                          <ref role="3cqZAo" node="BjUsE2KQXI" resolve="session" />
                        </node>
                        <node concept="liA8E" id="BjUsE2KQXG" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:3$YpntjF4oh" resolve="applyChanges" />
                          <node concept="37vLTw" id="2BHiRxgm$DZ" role="37wK5m">
                            <ref role="3cqZAo" node="BjUsE2KQXK" resolve="changes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="BjUsE2KQXI" role="1bW2Oz">
                    <property role="TrG5h" value="session" />
                    <node concept="3uibUv" id="BjUsE2KQXJ" role="1tU5fm">
                      <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="BjUsE2KQXK" role="1bW2Oz">
                    <property role="TrG5h" value="changes" />
                    <node concept="A3Dl8" id="BjUsE2KQXL" role="1tU5fm">
                      <node concept="3uibUv" id="BjUsE2KQXM" role="A3Ik2">
                        <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="BjUsE2KQXN" role="3cqZAp">
          <node concept="3cpWsn" id="BjUsE2KQXO" role="3cpWs9">
            <property role="TrG5h" value="exclude" />
            <node concept="3uibUv" id="BjUsE2KQXP" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHb0z" resolve="FoldingAreaButton" />
            </node>
            <node concept="2ShNRf" id="BjUsE2KQXQ" role="33vP2m">
              <node concept="1pGfFk" id="BjUsE2KQXR" role="2ShVmc">
                <ref role="37wK5l" node="BjUsE2KQWy" resolve="MergeButtonsPainter.MyButton" />
                <node concept="37vLTw" id="2BHiRxglw9N" role="37wK5m">
                  <ref role="3cqZAo" node="BjUsE2KQX4" resolve="changeGroup" />
                </node>
                <node concept="37vLTw" id="3GM_nagTzuW" role="37wK5m">
                  <ref role="3cqZAo" node="BjUsE2KQXj" resolve="excludeX" />
                </node>
                <node concept="37vLTw" id="2BHiRxghgaj" role="37wK5m">
                  <ref role="3cqZAo" node="BjUsE2KQX6" resolve="y" />
                </node>
                <node concept="Xl_RD" id="BjUsE2KQXV" role="37wK5m">
                  <property role="Xl_RC" value="Exclude" />
                </node>
                <node concept="10M0yZ" id="BjUsE2KQXW" role="37wK5m">
                  <ref role="3cqZAo" to="xnls:~IdeIcons.EXCLUDE" resolve="EXCLUDE" />
                  <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                </node>
                <node concept="1bVj0M" id="BjUsE2KQXX" role="37wK5m">
                  <node concept="3clFbS" id="BjUsE2KQXY" role="1bW5cS">
                    <node concept="3clFbF" id="BjUsE2KQXZ" role="3cqZAp">
                      <node concept="2OqwBi" id="BjUsE2KQY0" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm9Om" role="2Oq$k0">
                          <ref role="3cqZAo" node="BjUsE2KQY4" resolve="session" />
                        </node>
                        <node concept="liA8E" id="BjUsE2KQY2" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:3$YpntjF4ow" resolve="excludeChanges" />
                          <node concept="37vLTw" id="2BHiRxglt9Z" role="37wK5m">
                            <ref role="3cqZAo" node="BjUsE2KQY6" resolve="changes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="BjUsE2KQY4" role="1bW2Oz">
                    <property role="TrG5h" value="session" />
                    <node concept="3uibUv" id="BjUsE2KQY5" role="1tU5fm">
                      <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="BjUsE2KQY6" role="1bW2Oz">
                    <property role="TrG5h" value="changes" />
                    <node concept="A3Dl8" id="BjUsE2KQY7" role="1tU5fm">
                      <node concept="3uibUv" id="BjUsE2KQY8" role="A3Ik2">
                        <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="BjUsE2KQY9" role="3cqZAp">
          <node concept="2YIFZM" id="BjUsE2KQYa" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="3GM_nagT_JG" role="37wK5m">
              <ref role="3cqZAo" node="BjUsE2KQXs" resolve="apply" />
            </node>
            <node concept="37vLTw" id="3GM_nagTr_y" role="37wK5m">
              <ref role="3cqZAo" node="BjUsE2KQXO" resolve="exclude" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SeTY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="2jv$fqwngO8" role="jymVt">
      <property role="TrG5h" value="addTo" />
      <node concept="3uibUv" id="2jv$fqwngO9" role="3clF45">
        <ref role="3uigEE" node="BjUsE2KQV8" resolve="MergeButtonsPainter" />
      </node>
      <node concept="3Tm1VV" id="2jv$fqwngOa" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwngOb" role="3clF47">
        <node concept="3cpWs8" id="2jv$fqwngOc" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwngOd" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="3uibUv" id="2jv$fqwngOe" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="2jv$fqwngOf" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmesV" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwngOA" resolve="diffEditor" />
              </node>
              <node concept="liA8E" id="2jv$fqwngOh" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHaAc" resolve="getEditorComponent" />
                <node concept="37vLTw" id="2BHiRxglkfv" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwngOE" resolve="inspector" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2jv$fqwngOj" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwngOk" role="3cpWs9">
            <property role="TrG5h" value="painter" />
            <node concept="3uibUv" id="2jv$fqwngOl" role="1tU5fm">
              <ref role="3uigEE" node="BjUsE2KQV8" resolve="MergeButtonsPainter" />
            </node>
            <node concept="2ShNRf" id="2jv$fqwngOm" role="33vP2m">
              <node concept="1pGfFk" id="2jv$fqwngOn" role="2ShVmc">
                <ref role="37wK5l" node="2jv$fqwndid" resolve="MergeButtonsPainter" />
                <node concept="37vLTw" id="2BHiRxghf4b" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwngO$" resolve="pane" />
                </node>
                <node concept="37vLTw" id="3GM_nagTylJ" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwngOd" resolve="editorComponent" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm9_k" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwngOC" resolve="changeGroupLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwngOr" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwngOs" role="3clFbG">
            <node concept="2OqwBi" id="2jv$fqwngOt" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagTt3e" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwngOd" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="2jv$fqwngOv" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getLeftEditorHighlighter()" resolve="getLeftEditorHighlighter" />
              </node>
            </node>
            <node concept="liA8E" id="2jv$fqwngOw" role="2OqNvi">
              <ref role="37wK5l" to="px75:~LeftEditorHighlighter.addFoldingAreaPainter(jetbrains.mps.nodeEditor.leftHighlighter.AbstractFoldingAreaPainter)" resolve="addFoldingAreaPainter" />
              <node concept="37vLTw" id="3GM_nagTvsQ" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwngOk" resolve="painter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2jv$fqwngOy" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTsbV" role="3cqZAk">
            <ref role="3cqZAo" node="2jv$fqwngOk" resolve="painter" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwngO$" role="3clF46">
        <property role="TrG5h" value="pane" />
        <node concept="3uibUv" id="2jv$fqwnhBW" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwngOA" role="3clF46">
        <property role="TrG5h" value="diffEditor" />
        <node concept="3uibUv" id="2jv$fqwngOB" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwngOC" role="3clF46">
        <property role="TrG5h" value="changeGroupLayout" />
        <node concept="3uibUv" id="2jv$fqwngOD" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwngOE" role="3clF46">
        <property role="TrG5h" value="inspector" />
        <node concept="10P_77" id="2jv$fqwngOF" role="1tU5fm" />
      </node>
    </node>
    <node concept="312cEu" id="BjUsE2KQW4" role="jymVt">
      <property role="TrG5h" value="MyButton" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="BjUsE2KQWc" role="1B3o_S" />
      <node concept="3uibUv" id="BjUsE2KQWd" role="1zkMxy">
        <ref role="3uigEE" to="hdhb:42hl10VHb0z" resolve="FoldingAreaButton" />
      </node>
      <node concept="312cEg" id="BjUsE2KQW5" role="jymVt">
        <property role="TrG5h" value="myAction" />
        <node concept="3Tm6S6" id="BjUsE2KQW6" role="1B3o_S" />
        <node concept="1ajhzC" id="BjUsE2KQW7" role="1tU5fm">
          <node concept="3cqZAl" id="BjUsE2KQW8" role="1ajl9A" />
          <node concept="3uibUv" id="BjUsE2KQW9" role="1ajw0F">
            <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
          </node>
          <node concept="A3Dl8" id="BjUsE2KQWa" role="1ajw0F">
            <node concept="3uibUv" id="BjUsE2KQWb" role="A3Ik2">
              <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="BjUsE2KQWy" role="jymVt">
        <node concept="3cqZAl" id="BjUsE2KQWz" role="3clF45" />
        <node concept="3Tm6S6" id="BjUsE2KQW$" role="1B3o_S" />
        <node concept="3clFbS" id="BjUsE2KQW_" role="3clF47">
          <node concept="XkiVB" id="BjUsE2KQWA" role="3cqZAp">
            <ref role="37wK5l" to="hdhb:42hl10VHb0O" resolve="FoldingAreaButton" />
            <node concept="37vLTw" id="2BHiRxglgrW" role="37wK5m">
              <ref role="3cqZAo" node="BjUsE2KQWK" resolve="changeGroup" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm6Yi" role="37wK5m">
              <ref role="3cqZAo" node="BjUsE2KQWM" resolve="x" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmjxJ" role="37wK5m">
              <ref role="3cqZAo" node="BjUsE2KQWO" resolve="y" />
            </node>
            <node concept="37vLTw" id="2BHiRxghf2o" role="37wK5m">
              <ref role="3cqZAo" node="BjUsE2KQWQ" resolve="name" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm$Oy" role="37wK5m">
              <ref role="3cqZAo" node="BjUsE2KQWS" resolve="icon" />
            </node>
          </node>
          <node concept="3clFbF" id="BjUsE2KQWG" role="3cqZAp">
            <node concept="37vLTI" id="BjUsE2KQWH" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxglf5p" role="37vLTx">
                <ref role="3cqZAo" node="BjUsE2KQWU" resolve="action" />
              </node>
              <node concept="37vLTw" id="2BHiRxeulbC" role="37vLTJ">
                <ref role="3cqZAo" node="BjUsE2KQW5" resolve="myAction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="BjUsE2KQWK" role="3clF46">
          <property role="TrG5h" value="changeGroup" />
          <node concept="3uibUv" id="BjUsE2KQWL" role="1tU5fm">
            <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
          </node>
        </node>
        <node concept="37vLTG" id="BjUsE2KQWM" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="BjUsE2KQWN" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="BjUsE2KQWO" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="BjUsE2KQWP" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="BjUsE2KQWQ" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="BjUsE2KQWR" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="BjUsE2KQWS" role="3clF46">
          <property role="TrG5h" value="icon" />
          <node concept="3uibUv" id="BjUsE2KQWT" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
          </node>
        </node>
        <node concept="37vLTG" id="BjUsE2KQWU" role="3clF46">
          <property role="TrG5h" value="action" />
          <node concept="1ajhzC" id="BjUsE2KQWV" role="1tU5fm">
            <node concept="3cqZAl" id="BjUsE2KQWW" role="1ajl9A" />
            <node concept="3uibUv" id="BjUsE2KQWX" role="1ajw0F">
              <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
            </node>
            <node concept="A3Dl8" id="BjUsE2KQWY" role="1ajw0F">
              <node concept="3uibUv" id="BjUsE2KQWZ" role="A3Ik2">
                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="BjUsE2KQWe" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="performAction" />
        <node concept="3cqZAl" id="BjUsE2KQWf" role="3clF45" />
        <node concept="3Tm1VV" id="BjUsE2KQWg" role="1B3o_S" />
        <node concept="3clFbS" id="BjUsE2KQWh" role="3clF47">
          <node concept="3clFbF" id="1KUoCiqb7us" role="3cqZAp">
            <node concept="2OqwBi" id="1KUoCiqb7ut" role="3clFbG">
              <node concept="2OqwBi" id="4tEWdMGE7BI" role="2Oq$k0">
                <node concept="2OqwBi" id="4tEWdMGE76s" role="2Oq$k0">
                  <node concept="2OqwBi" id="4tEWdMGE4KC" role="2Oq$k0">
                    <node concept="1rXfSq" id="4tEWdMGE4dO" role="2Oq$k0">
                      <ref role="37wK5l" to="px75:~AbstractHighlighterPainter.getEditorComponent()" resolve="getEditorComponent" />
                    </node>
                    <node concept="liA8E" id="4tEWdMGE6UF" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4tEWdMGE7sP" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="liA8E" id="4tEWdMGE7Qw" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="1KUoCiqb7uv" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                <node concept="1bVj0M" id="1KUoCiqb7uw" role="37wK5m">
                  <node concept="3clFbS" id="1KUoCiqb7ux" role="1bW5cS">
                    <node concept="3clFbF" id="1KUoCiqb7uy" role="3cqZAp">
                      <node concept="2Sg_IR" id="1KUoCiqb7uz" role="3clFbG">
                        <node concept="2OqwBi" id="1KUoCiqb7u$" role="2SgHGx">
                          <node concept="37vLTw" id="1KUoCiqb7u_" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwnczn" resolve="myPane" />
                          </node>
                          <node concept="liA8E" id="1KUoCiqb7uA" role="2OqNvi">
                            <ref role="37wK5l" node="2jv$fqwevny" resolve="getMergeSession" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1KUoCiqb7uC" role="2SgHGx">
                          <node concept="1rXfSq" id="4hiugqyz71k" role="2Oq$k0">
                            <ref role="37wK5l" to="hdhb:42hl10VHb1m" resolve="getChangeGroup" />
                          </node>
                          <node concept="liA8E" id="1KUoCiqb7uE" role="2OqNvi">
                            <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2BHiRxeuklT" role="2SgG2M">
                          <ref role="3cqZAo" node="BjUsE2KQW5" resolve="myAction" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1KUoCiqb7uH" role="3cqZAp">
                      <node concept="2OqwBi" id="1KUoCiqb7uI" role="3clFbG">
                        <node concept="37vLTw" id="1KUoCiqb7uJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jv$fqwnczn" resolve="myPane" />
                        </node>
                        <node concept="liA8E" id="1KUoCiqb7uK" role="2OqNvi">
                          <ref role="37wK5l" node="2jv$fqwevfx" resolve="rehighlight" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_SfyC" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="BjUsE2KQhO">
    <property role="TrG5h" value="ApplyNonConflictsForRoot" />
    <property role="3GE5qa" value="actions" />
    <node concept="3Tm1VV" id="BjUsE2KQhS" role="1B3o_S" />
    <node concept="3uibUv" id="BjUsE2KQia" role="1zkMxy">
      <ref role="3uigEE" to="7bx7:~BaseAction" resolve="BaseAction" />
    </node>
    <node concept="3uibUv" id="3m6vHQ0jAZN" role="EKbjA">
      <ref role="3uigEE" to="4nm9:~DumbAware" resolve="DumbAware" />
    </node>
    <node concept="312cEg" id="2jv$fqwDkg_" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPane" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2jv$fqwDk25" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwDkc9" role="1tU5fm">
        <ref role="3uigEE" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
      </node>
    </node>
    <node concept="3clFbW" id="2jv$fqwDso2" role="jymVt">
      <node concept="3cqZAl" id="2jv$fqwDso3" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwDso4" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwDso5" role="3clF47">
        <node concept="XkiVB" id="2jv$fqwDso6" role="3cqZAp">
          <ref role="37wK5l" to="7bx7:~BaseAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="BaseAction" />
          <node concept="Xl_RD" id="2jv$fqwDso7" role="37wK5m">
            <property role="Xl_RC" value="Apply Non-Conflicting Changes" />
          </node>
          <node concept="10Nm6u" id="2jv$fqwDso8" role="37wK5m" />
          <node concept="10M0yZ" id="2jv$fqwDso9" role="37wK5m">
            <ref role="3cqZAo" node="2jv$fqwD$o$" resolve="APPLY_NON_CONFLICTS" />
            <ref role="1PxDUh" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwDsoe" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwDsof" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwDtoH" role="37vLTx">
              <ref role="3cqZAo" node="2jv$fqwDsol" resolve="pane" />
            </node>
            <node concept="37vLTw" id="2jv$fqwDsoh" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwDkg_" resolve="myPane" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwDsoi" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyYvg" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setDisableOnNoProject(boolean)" resolve="setDisableOnNoProject" />
            <node concept="3clFbT" id="2jv$fqwDsok" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwDsol" role="3clF46">
        <property role="TrG5h" value="pane" />
        <node concept="3uibUv" id="2jv$fqwDsQF" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwDs7l" role="jymVt" />
    <node concept="3clFb_" id="BjUsE2KQib" role="jymVt">
      <property role="TrG5h" value="doExecute" />
      <node concept="3Tmbuc" id="BjUsE2KQic" role="1B3o_S" />
      <node concept="3cqZAl" id="BjUsE2KQid" role="3clF45" />
      <node concept="37vLTG" id="BjUsE2KQie" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="BjUsE2KQif" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KQig" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3uibUv" id="BjUsE2KQih" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="BjUsE2KQii" role="11_B2D" />
          <node concept="3uibUv" id="BjUsE2KQij" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="BjUsE2KQik" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwDmqu" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwDmqv" role="3clFbG">
            <node concept="2OqwBi" id="2jv$fqwDmqw" role="2Oq$k0">
              <node concept="37vLTw" id="2jv$fqwDmT6" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwDkg_" resolve="myPane" />
              </node>
              <node concept="liA8E" id="2jv$fqwDmqy" role="2OqNvi">
                <ref role="37wK5l" node="2jv$fqwevny" resolve="getMergeSession" />
              </node>
            </node>
            <node concept="liA8E" id="2jv$fqwDmqz" role="2OqNvi">
              <ref role="37wK5l" to="bmv6:3$YpntjF4oh" resolve="applyChanges" />
              <node concept="1rXfSq" id="4hiugqyz9tB" role="37wK5m">
                <ref role="37wK5l" node="BjUsE2KQiO" resolve="getChanges" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwDmq_" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwDmqA" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwDnak" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwDkg_" resolve="myPane" />
            </node>
            <node concept="liA8E" id="2jv$fqwDmqC" role="2OqNvi">
              <ref role="37wK5l" node="2jv$fqwevfx" resolve="rehighlight" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Se8B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="BjUsE2KQiw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doUpdate" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="BjUsE2KQix" role="1B3o_S" />
      <node concept="3cqZAl" id="BjUsE2KQiy" role="3clF45" />
      <node concept="37vLTG" id="BjUsE2KQiz" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="BjUsE2KQi$" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KQi_" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3uibUv" id="BjUsE2KQiA" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="BjUsE2KQiB" role="11_B2D" />
          <node concept="3uibUv" id="BjUsE2KQiC" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="BjUsE2KQiD" role="3clF47">
        <node concept="3clFbF" id="BjUsE2KQiE" role="3cqZAp">
          <node concept="2OqwBi" id="BjUsE2KQiF" role="3clFbG">
            <node concept="2OqwBi" id="BjUsE2KQiG" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgkWza" role="2Oq$k0">
                <ref role="3cqZAo" node="BjUsE2KQiz" resolve="event" />
              </node>
              <node concept="liA8E" id="BjUsE2KQiI" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="BjUsE2KQiJ" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="2OqwBi" id="BjUsE2KQiK" role="37wK5m">
                <node concept="1rXfSq" id="4hiugqyyZ80" role="2Oq$k0">
                  <ref role="37wK5l" node="BjUsE2KQiO" resolve="getChanges" />
                </node>
                <node concept="3GX2aA" id="BjUsE2KQiM" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="BjUsE2KQiN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="BjUsE2KQiO" role="jymVt">
      <property role="TrG5h" value="getChanges" />
      <node concept="3Tm6S6" id="BjUsE2KQiP" role="1B3o_S" />
      <node concept="A3Dl8" id="BjUsE2KQiQ" role="3clF45">
        <node concept="3uibUv" id="BjUsE2KQiR" role="A3Ik2">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3clFbS" id="BjUsE2KQiS" role="3clF47">
        <node concept="3cpWs6" id="2jv$fqwDpY2" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwDqhZ" role="3cqZAk">
            <node concept="2OqwBi" id="2jv$fqwDqi0" role="2Oq$k0">
              <node concept="37vLTw" id="2jv$fqwDqJa" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwDkg_" resolve="myPane" />
              </node>
              <node concept="liA8E" id="2jv$fqwDqi2" role="2OqNvi">
                <ref role="37wK5l" node="2jv$fqwevny" resolve="getMergeSession" />
              </node>
            </node>
            <node concept="liA8E" id="2jv$fqwDqi3" role="2OqNvi">
              <ref role="37wK5l" to="bmv6:4O82Dpbuv62" resolve="getApplicableChangesForRoot" />
              <node concept="2OqwBi" id="2jv$fqwDqi4" role="37wK5m">
                <node concept="37vLTw" id="3gJuZhxZzj5" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwDkg_" resolve="myPane" />
                </node>
                <node concept="liA8E" id="2jv$fqwDqi6" role="2OqNvi">
                  <ref role="37wK5l" node="2jv$fqwevmm" resolve="getRootId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="BjUsE2KPW8">
    <property role="TrG5h" value="AcceptYoursTheirs" />
    <property role="3GE5qa" value="actions" />
    <node concept="3Tm1VV" id="BjUsE2KPW_" role="1B3o_S" />
    <node concept="3uibUv" id="BjUsE2KPWA" role="1zkMxy">
      <ref role="3uigEE" to="7bx7:~BaseAction" resolve="BaseAction" />
    </node>
    <node concept="3uibUv" id="3m6vHQ0jBtH" role="EKbjA">
      <ref role="3uigEE" to="4nm9:~DumbAware" resolve="DumbAware" />
    </node>
    <node concept="312cEg" id="BjUsE2KPWv" role="jymVt">
      <property role="TrG5h" value="myMergeModelsDialog" />
      <node concept="3uibUv" id="2jv$fqxcClZ" role="1tU5fm">
        <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
      </node>
      <node concept="3Tm6S6" id="BjUsE2KPWw" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="BjUsE2KPWy" role="jymVt">
      <property role="TrG5h" value="myAcceptMine" />
      <node concept="3Tm6S6" id="BjUsE2KPWz" role="1B3o_S" />
      <node concept="10P_77" id="BjUsE2KPW$" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="BjUsE2KPWB" role="jymVt">
      <node concept="3cqZAl" id="BjUsE2KPWC" role="3clF45" />
      <node concept="3Tm6S6" id="BjUsE2KPWD" role="1B3o_S" />
      <node concept="3clFbS" id="BjUsE2KPWE" role="3clF47">
        <node concept="XkiVB" id="BjUsE2KPWF" role="3cqZAp">
          <ref role="37wK5l" to="7bx7:~BaseAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="BaseAction" />
          <node concept="3cpWs3" id="BjUsE2KPWG" role="37wK5m">
            <node concept="1eOMI4" id="BjUsE2KPWH" role="3uHU7w">
              <node concept="3K4zz7" id="BjUsE2KPWI" role="1eOMHV">
                <node concept="Xl_RD" id="BjUsE2KPWJ" role="3K4E3e">
                  <property role="Xl_RC" value="Yours" />
                </node>
                <node concept="Xl_RD" id="BjUsE2KPWK" role="3K4GZi">
                  <property role="Xl_RC" value="Theirs" />
                </node>
                <node concept="37vLTw" id="2BHiRxgkWty" role="3K4Cdx">
                  <ref role="3cqZAo" node="BjUsE2KPX3" resolve="acceptMine" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="BjUsE2KPWM" role="3uHU7B">
              <property role="Xl_RC" value="Accept " />
            </node>
          </node>
          <node concept="10Nm6u" id="BjUsE2KPWN" role="37wK5m" />
          <node concept="2YIFZM" id="BjUsE2KPWO" role="37wK5m">
            <ref role="1Pybhc" to="g1qu:~EmptyIcon" resolve="EmptyIcon" />
            <ref role="37wK5l" to="g1qu:~EmptyIcon.create(int)" resolve="create" />
            <node concept="3cmrfG" id="BjUsE2KPWP" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BjUsE2KPWQ" role="3cqZAp">
          <node concept="37vLTI" id="BjUsE2KPWR" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunhO" role="37vLTJ">
              <ref role="3cqZAo" node="BjUsE2KPWv" resolve="myMergeModelsDialog" />
            </node>
            <node concept="37vLTw" id="2BHiRxglJWW" role="37vLTx">
              <ref role="3cqZAo" node="BjUsE2KPX1" resolve="mergeModelsDialog" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BjUsE2KPWU" role="3cqZAp">
          <node concept="37vLTI" id="BjUsE2KPWV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeufRU" role="37vLTJ">
              <ref role="3cqZAo" node="BjUsE2KPWy" resolve="myAcceptMine" />
            </node>
            <node concept="37vLTw" id="2BHiRxgkWl0" role="37vLTx">
              <ref role="3cqZAo" node="BjUsE2KPX3" resolve="acceptMine" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BjUsE2KPWY" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzbYy" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setDisableOnNoProject(boolean)" resolve="setDisableOnNoProject" />
            <node concept="3clFbT" id="BjUsE2KPX0" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KPX1" role="3clF46">
        <property role="TrG5h" value="mergeModelsDialog" />
        <node concept="3uibUv" id="2jv$fqxcCVI" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KPX3" role="3clF46">
        <property role="TrG5h" value="acceptMine" />
        <node concept="10P_77" id="BjUsE2KPX4" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="BjUsE2KPX5" role="jymVt">
      <property role="TrG5h" value="doExecute" />
      <node concept="3Tmbuc" id="BjUsE2KPX6" role="1B3o_S" />
      <node concept="3cqZAl" id="BjUsE2KPX7" role="3clF45" />
      <node concept="37vLTG" id="BjUsE2KPX8" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="BjUsE2KPX9" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KPXa" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3uibUv" id="BjUsE2KPXb" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="BjUsE2KPXc" role="11_B2D" />
          <node concept="3uibUv" id="BjUsE2KPXd" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="BjUsE2KPXe" role="3clF47">
        <node concept="3clFbF" id="BjUsE2KPXf" role="3cqZAp">
          <node concept="2OqwBi" id="BjUsE2KPXg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuPEU" role="2Oq$k0">
              <ref role="3cqZAo" node="BjUsE2KPWv" resolve="myMergeModelsDialog" />
            </node>
            <node concept="liA8E" id="BjUsE2KPXi" role="2OqNvi">
              <ref role="37wK5l" node="2jv$fqwD$_n" resolve="acceptVersionForSelectedRoots" />
              <node concept="37vLTw" id="2BHiRxeue91" role="37wK5m">
                <ref role="3cqZAo" node="BjUsE2KPWy" resolve="myAcceptMine" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UpVD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5x3PsNRF9eh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doUpdate" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="5x3PsNRF9ei" role="1B3o_S" />
      <node concept="3cqZAl" id="5x3PsNRF9ej" role="3clF45" />
      <node concept="37vLTG" id="5x3PsNRF9ek" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="5SUz4XmGNY$" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="5x3PsNRF9em" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3uibUv" id="5x3PsNRF9en" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="5x3PsNRF9eE" role="11_B2D" />
          <node concept="3uibUv" id="5x3PsNRF9ep" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5x3PsNRF9eq" role="3clF47">
        <node concept="3clFbF" id="4ZMm6wEAIts" role="3cqZAp">
          <node concept="1rXfSq" id="4ZMm6wEAItr" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setEnabledState(com.intellij.openapi.actionSystem.Presentation,boolean)" resolve="setEnabledState" />
            <node concept="2OqwBi" id="4ZMm6wEAIGy" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgm7cr" role="2Oq$k0">
                <ref role="3cqZAo" node="5x3PsNRF9ek" resolve="event" />
              </node>
              <node concept="liA8E" id="4ZMm6wEAIG$" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="2OqwBi" id="4ZMm6wEAJbd" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxeurpf" role="2Oq$k0">
                <ref role="3cqZAo" node="BjUsE2KPWv" resolve="myMergeModelsDialog" />
              </node>
              <node concept="liA8E" id="4ZMm6wEAJbf" role="2OqNvi">
                <ref role="37wK5l" node="2jv$fqwD$$F" resolve="isAcceptYoursTheirsEnabled" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5x3PsNRF9er" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="BjUsE2KPXk" role="jymVt">
      <property role="TrG5h" value="displayTextInToolbar" />
      <node concept="3Tm1VV" id="BjUsE2KPXl" role="1B3o_S" />
      <node concept="10P_77" id="BjUsE2KPXm" role="3clF45" />
      <node concept="3clFbS" id="BjUsE2KPXn" role="3clF47">
        <node concept="3clFbF" id="BjUsE2KPXo" role="3cqZAp">
          <node concept="3clFbT" id="BjUsE2KPXp" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="BjUsE2KPXq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="BjUsE2KPW9" role="jymVt">
      <property role="TrG5h" value="yoursInstance" />
      <node concept="3uibUv" id="BjUsE2KPWa" role="3clF45">
        <ref role="3uigEE" node="BjUsE2KPW8" resolve="AcceptYoursTheirs" />
      </node>
      <node concept="3Tm1VV" id="BjUsE2KPWb" role="1B3o_S" />
      <node concept="3clFbS" id="BjUsE2KPWc" role="3clF47">
        <node concept="3clFbF" id="BjUsE2KPWd" role="3cqZAp">
          <node concept="2ShNRf" id="BjUsE2KPWe" role="3clFbG">
            <node concept="1pGfFk" id="BjUsE2KPWf" role="2ShVmc">
              <ref role="37wK5l" node="BjUsE2KPWB" resolve="AcceptYoursTheirs" />
              <node concept="37vLTw" id="2jv$fqxcEtm" role="37wK5m">
                <ref role="3cqZAo" node="BjUsE2KPWi" resolve="mergeModelsDialog" />
              </node>
              <node concept="3clFbT" id="BjUsE2KPWh" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KPWi" role="3clF46">
        <property role="TrG5h" value="mergeModelsDialog" />
        <node concept="3uibUv" id="2jv$fqxcEBY" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="BjUsE2KPWk" role="jymVt">
      <property role="TrG5h" value="theirsInstance" />
      <node concept="3uibUv" id="BjUsE2KPWl" role="3clF45">
        <ref role="3uigEE" node="BjUsE2KPW8" resolve="AcceptYoursTheirs" />
      </node>
      <node concept="3Tm1VV" id="BjUsE2KPWm" role="1B3o_S" />
      <node concept="3clFbS" id="BjUsE2KPWn" role="3clF47">
        <node concept="3clFbF" id="BjUsE2KPWo" role="3cqZAp">
          <node concept="2ShNRf" id="BjUsE2KPWp" role="3clFbG">
            <node concept="1pGfFk" id="BjUsE2KPWq" role="2ShVmc">
              <ref role="37wK5l" node="BjUsE2KPWB" resolve="AcceptYoursTheirs" />
              <node concept="37vLTw" id="2jv$fqxcEyY" role="37wK5m">
                <ref role="3cqZAo" node="BjUsE2KPWt" resolve="mergeModelsDialog" />
              </node>
              <node concept="3clFbT" id="BjUsE2KPWs" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KPWt" role="3clF46">
        <property role="TrG5h" value="mergeModelsDialog" />
        <node concept="3uibUv" id="2jv$fqxcEDO" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="BjUsE2KR6U">
    <property role="TrG5h" value="ResetState" />
    <property role="3GE5qa" value="actions" />
    <node concept="3Tm1VV" id="BjUsE2KR6Y" role="1B3o_S" />
    <node concept="3uibUv" id="jXlC_gUUcU" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
    </node>
    <node concept="3uibUv" id="3m6vHQ0jWU8" role="EKbjA">
      <ref role="3uigEE" to="4nm9:~DumbAware" resolve="DumbAware" />
    </node>
    <node concept="312cEg" id="BjUsE2KR6V" role="jymVt">
      <property role="TrG5h" value="myMergeModelsDialog" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2jv$fqxbo6s" role="1tU5fm">
        <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
      </node>
      <node concept="3Tm6S6" id="BjUsE2KR6W" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="jXlC_gUUVK" role="jymVt" />
    <node concept="3clFbW" id="BjUsE2KR6Z" role="jymVt">
      <node concept="3cqZAl" id="BjUsE2KR70" role="3clF45" />
      <node concept="3Tm1VV" id="BjUsE2KR71" role="1B3o_S" />
      <node concept="3clFbS" id="BjUsE2KR72" role="3clF47">
        <node concept="XkiVB" id="BjUsE2KR73" role="3cqZAp">
          <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="AnAction" />
          <node concept="Xl_RD" id="BjUsE2KR74" role="37wK5m">
            <property role="Xl_RC" value="Reset Merge State" />
          </node>
          <node concept="10Nm6u" id="BjUsE2KR75" role="37wK5m" />
          <node concept="10M0yZ" id="BjUsE2KR76" role="37wK5m">
            <ref role="3cqZAo" node="2jv$fqwD$oC" resolve="RESET" />
            <ref role="1PxDUh" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
          </node>
        </node>
        <node concept="3clFbF" id="BjUsE2KR77" role="3cqZAp">
          <node concept="37vLTI" id="BjUsE2KR78" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmOCu" role="37vLTx">
              <ref role="3cqZAo" node="BjUsE2KR7e" resolve="mergeModelsDialog" />
            </node>
            <node concept="37vLTw" id="2BHiRxeumxW" role="37vLTJ">
              <ref role="3cqZAo" node="BjUsE2KR6V" resolve="myMergeModelsDialog" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jXlC_gUWJk" role="3cqZAp">
          <node concept="1rXfSq" id="jXlC_gUWJi" role="3clFbG">
            <ref role="37wK5l" to="qkt:~AnAction.setEnabledInModalContext(boolean)" resolve="setEnabledInModalContext" />
            <node concept="3clFbT" id="jXlC_gUXWM" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KR7e" role="3clF46">
        <property role="TrG5h" value="mergeModelsDialog" />
        <node concept="3uibUv" id="2jv$fqxbogV" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="jXlC_gUYfb" role="jymVt" />
    <node concept="3clFb_" id="jXlC_gUYyr" role="jymVt">
      <property role="TrG5h" value="actionPerformed" />
      <node concept="3Tm1VV" id="jXlC_gUYys" role="1B3o_S" />
      <node concept="3cqZAl" id="jXlC_gUYyv" role="3clF45" />
      <node concept="37vLTG" id="jXlC_gUYyw" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="jXlC_gUYyx" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
        <node concept="2AHcQZ" id="jXlC_gUYyy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="jXlC_gUYyz" role="3clF47">
        <node concept="3clFbF" id="BjUsE2KR7r" role="3cqZAp">
          <node concept="2OqwBi" id="BjUsE2KR7s" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunmS" role="2Oq$k0">
              <ref role="3cqZAo" node="BjUsE2KR6V" resolve="myMergeModelsDialog" />
            </node>
            <node concept="liA8E" id="BjUsE2KR7u" role="2OqNvi">
              <ref role="37wK5l" node="2jv$fqwD$Dk" resolve="resetState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="jXlC_gUYy$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="BjUsE2KQRG">
    <property role="TrG5h" value="MergeNonConflictingRoots" />
    <property role="3GE5qa" value="actions" />
    <node concept="3uibUv" id="BjUsE2KQS1" role="1zkMxy">
      <ref role="3uigEE" to="7bx7:~BaseAction" resolve="BaseAction" />
    </node>
    <node concept="3Tm1VV" id="BjUsE2KQTa" role="1B3o_S" />
    <node concept="3uibUv" id="3m6vHQ0jBVA" role="EKbjA">
      <ref role="3uigEE" to="4nm9:~DumbAware" resolve="DumbAware" />
    </node>
    <node concept="312cEg" id="BjUsE2KQRH" role="jymVt">
      <property role="TrG5h" value="myDialog" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2jv$fqxbCLR" role="1tU5fm">
        <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
      </node>
      <node concept="3Tm6S6" id="BjUsE2KQRI" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="jXlC_gZaiH" role="jymVt" />
    <node concept="3clFbW" id="BjUsE2KQRK" role="jymVt">
      <node concept="3cqZAl" id="BjUsE2KQRL" role="3clF45" />
      <node concept="3Tm1VV" id="BjUsE2KQRM" role="1B3o_S" />
      <node concept="3clFbS" id="BjUsE2KQRN" role="3clF47">
        <node concept="XkiVB" id="BjUsE2KQRO" role="3cqZAp">
          <ref role="37wK5l" to="7bx7:~BaseAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="BaseAction" />
          <node concept="Xl_RD" id="BjUsE2KQRP" role="37wK5m">
            <property role="Xl_RC" value="Automatically Merge Non-Conflicting Roots" />
          </node>
          <node concept="10Nm6u" id="BjUsE2KQRQ" role="37wK5m" />
          <node concept="10M0yZ" id="BjUsE2KQRR" role="37wK5m">
            <ref role="3cqZAo" node="2jv$fqwD$o$" resolve="APPLY_NON_CONFLICTS" />
            <ref role="1PxDUh" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
          </node>
        </node>
        <node concept="3clFbF" id="BjUsE2KQRS" role="3cqZAp">
          <node concept="37vLTI" id="BjUsE2KQRT" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm8w2" role="37vLTx">
              <ref role="3cqZAo" node="BjUsE2KQRZ" resolve="dialog" />
            </node>
            <node concept="37vLTw" id="2BHiRxeu_Gr" role="37vLTJ">
              <ref role="3cqZAo" node="BjUsE2KQRH" resolve="myDialog" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jXlC_gZ00o" role="3cqZAp">
          <node concept="1rXfSq" id="jXlC_gZ00m" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.updateInBackground(boolean)" resolve="updateInBackground" />
            <node concept="3clFbT" id="jXlC_gZ1dM" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BjUsE2KQRW" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyZ2P" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setDisableOnNoProject(boolean)" resolve="setDisableOnNoProject" />
            <node concept="3clFbT" id="BjUsE2KQRY" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbF" id="jXlC_gZ7uS" role="3cqZAp">
          <node concept="1rXfSq" id="jXlC_gZ7uQ" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~BaseAction.setActionAccess(jetbrains.mps.workbench.action.ActionAccess)" resolve="setActionAccess" />
            <node concept="10M0yZ" id="jXlC_gZa58" role="37wK5m">
              <ref role="3cqZAo" to="7bx7:~ActionAccess.NONE" resolve="NONE" />
              <ref role="1PxDUh" to="7bx7:~ActionAccess" resolve="ActionAccess" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KQRZ" role="3clF46">
        <property role="TrG5h" value="dialog" />
        <node concept="3uibUv" id="2jv$fqxbD4v" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="BjUsE2KQS2" role="jymVt">
      <property role="TrG5h" value="doExecute" />
      <node concept="3Tmbuc" id="BjUsE2KQS3" role="1B3o_S" />
      <node concept="3cqZAl" id="BjUsE2KQS4" role="3clF45" />
      <node concept="37vLTG" id="BjUsE2KQS5" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="BjUsE2KQS6" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KQS7" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3uibUv" id="BjUsE2KQS8" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="BjUsE2KQS9" role="11_B2D" />
          <node concept="3uibUv" id="BjUsE2KQSa" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="BjUsE2KQSb" role="3clF47">
        <node concept="3clFbF" id="BjUsE2KQSh" role="3cqZAp">
          <node concept="2OqwBi" id="BjUsE2KQSj" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwyh" role="2Oq$k0">
              <ref role="3cqZAo" node="BjUsE2KQRH" resolve="myDialog" />
            </node>
            <node concept="liA8E" id="BjUsE2KQSl" role="2OqNvi">
              <ref role="37wK5l" node="2jv$fqwD$$6" resolve="mergeNonConflictingRoots" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="BjUsE2KQSB" role="3cqZAp">
          <node concept="2OqwBi" id="BjUsE2KQSC" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuFI5" role="2Oq$k0">
              <ref role="3cqZAo" node="BjUsE2KQRH" resolve="myDialog" />
            </node>
            <node concept="liA8E" id="BjUsE2KQSE" role="2OqNvi">
              <ref role="37wK5l" node="2jv$fqwD$wC" resolve="rebuildLater" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_ScHA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="BjUsE2KQSF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doUpdate" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="BjUsE2KQSG" role="1B3o_S" />
      <node concept="3cqZAl" id="BjUsE2KQSH" role="3clF45" />
      <node concept="37vLTG" id="BjUsE2KQSI" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="BjUsE2KQSJ" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="BjUsE2KQSK" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3uibUv" id="BjUsE2KQSL" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="BjUsE2KQSM" role="11_B2D" />
          <node concept="3uibUv" id="BjUsE2KQSN" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="BjUsE2KQSO" role="3clF47">
        <node concept="3clFbF" id="BjUsE2KQSP" role="3cqZAp">
          <node concept="2OqwBi" id="BjUsE2KQSQ" role="3clFbG">
            <node concept="2OqwBi" id="BjUsE2KQSR" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxghiIq" role="2Oq$k0">
                <ref role="3cqZAo" node="BjUsE2KQSI" resolve="event" />
              </node>
              <node concept="liA8E" id="BjUsE2KQST" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="BjUsE2KQSU" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="2OqwBi" id="2jGU2lVqNyt" role="37wK5m">
                <node concept="liA8E" id="2jGU2lVqNS6" role="2OqNvi">
                  <ref role="37wK5l" node="2jv$fqwD$$r" resolve="hasNonConflictingRoots" />
                </node>
                <node concept="37vLTw" id="2jGU2lVqNgL" role="2Oq$k0">
                  <ref role="3cqZAo" node="BjUsE2KQRH" resolve="myDialog" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="BjUsE2KQSY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2jv$fqwev6Q">
    <property role="TrG5h" value="MergeRootsPane" />
    <node concept="Wx3nA" id="6HpunfUDqhj" role="jymVt">
      <property role="TrG5h" value="PARAM_SHOW_INSPECTOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3cpWs3" id="6HpunfUDEsf" role="33vP2m">
        <node concept="Xl_RD" id="6HpunfUDEsw" role="3uHU7w">
          <property role="Xl_RC" value="ShowInspector" />
        </node>
        <node concept="2OqwBi" id="6HpunfUD$g2" role="3uHU7B">
          <node concept="3VsKOn" id="5J3UphNL9ME" role="2Oq$k0">
            <ref role="3VsUkX" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
          </node>
          <node concept="liA8E" id="6HpunfUDDVX" role="2OqNvi">
            <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6HpunfUDluR" role="1B3o_S" />
      <node concept="17QB3L" id="6IL1Wh7tEN6" role="1tU5fm" />
    </node>
    <node concept="Wx3nA" id="6HpunfUDPxf" role="jymVt">
      <property role="TrG5h" value="PARAM_INSPECTOR_SPLITTER_POSITION" />
      <property role="3TUv4t" value="true" />
      <node concept="3cpWs3" id="6HpunfUDPxg" role="33vP2m">
        <node concept="Xl_RD" id="6HpunfUDPxh" role="3uHU7w">
          <property role="Xl_RC" value="InspectorSplitterPosition" />
        </node>
        <node concept="2OqwBi" id="6HpunfUDPxi" role="3uHU7B">
          <node concept="3VsKOn" id="5J3UphNLaca" role="2Oq$k0">
            <ref role="3VsUkX" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
          </node>
          <node concept="liA8E" id="6HpunfUDPxj" role="2OqNvi">
            <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6HpunfUDPxl" role="1B3o_S" />
      <node concept="17QB3L" id="6IL1Wh7tF3N" role="1tU5fm" />
    </node>
    <node concept="Wx3nA" id="4Dqr_aMY_eb" role="jymVt">
      <property role="TrG5h" value="PARAM_ENABLE_EDITORS_SCROLL_SYNC" />
      <property role="3TUv4t" value="true" />
      <node concept="3cpWs3" id="4Dqr_aMY_ec" role="33vP2m">
        <node concept="Xl_RD" id="4Dqr_aMY_ed" role="3uHU7w">
          <property role="Xl_RC" value="_EnableSync" />
        </node>
        <node concept="2OqwBi" id="4Dqr_aMY_ee" role="3uHU7B">
          <node concept="liA8E" id="4Dqr_aMY_ef" role="2OqNvi">
            <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
          </node>
          <node concept="3VsKOn" id="4Dqr_aMY_eg" role="2Oq$k0">
            <ref role="3VsUkX" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Dqr_aMY_eh" role="1B3o_S" />
      <node concept="17QB3L" id="4Dqr_aMY_ei" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5a3yE9GSAIY" role="jymVt" />
    <node concept="312cEg" id="2jv$fqwev73" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3uibUv" id="2jv$fqwev74" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="2jv$fqwev75" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="2jv$fqwev6R" role="1B3o_S" />
    <node concept="312cEg" id="2jv$fqwev6T" role="jymVt">
      <property role="TrG5h" value="myMergeSession" />
      <node concept="3Tm6S6" id="2jv$fqwev6U" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev6V" role="1tU5fm">
        <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev7a" role="jymVt">
      <property role="TrG5h" value="myRootId" />
      <node concept="3Tm6S6" id="2jv$fqwev7b" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev7c" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev87" role="jymVt">
      <property role="TrG5h" value="myStateToRestore" />
      <node concept="3Tm6S6" id="2jv$fqwev88" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev89" role="1tU5fm">
        <ref role="3uigEE" to="bmv6:2KMWrOXsf9T" resolve="MergeSession.MergeSessionFullState" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev6W" role="jymVt">
      <property role="TrG5h" value="myDisposed" />
      <node concept="3Tm6S6" id="2jv$fqwev6X" role="1B3o_S" />
      <node concept="10P_77" id="2jv$fqwev6Y" role="1tU5fm" />
      <node concept="3clFbT" id="2jv$fqwev6Z" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwjMNI" role="jymVt" />
    <node concept="312cEg" id="2jv$fqwev70" role="jymVt">
      <property role="TrG5h" value="myConflictChecker" />
      <node concept="3Tm6S6" id="2jv$fqwev71" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev72" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHaeN" resolve="ChangeEditorMessage.ConflictChecker" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev76" role="jymVt">
      <property role="TrG5h" value="myTitles" />
      <node concept="3Tm6S6" id="2jv$fqwev79" role="1B3o_S" />
      <node concept="_YKpA" id="fACp920mhN" role="1tU5fm">
        <node concept="17QB3L" id="fACp920zTz" role="_ZDj9" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev7y" role="jymVt">
      <property role="TrG5h" value="myResultEditor" />
      <node concept="3Tm6S6" id="2jv$fqwev7z" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev7$" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev7_" role="jymVt">
      <property role="TrG5h" value="myMineEditor" />
      <node concept="3Tm6S6" id="2jv$fqwev7A" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev7B" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev7C" role="jymVt">
      <property role="TrG5h" value="myRepositoryEditor" />
      <node concept="3Tm6S6" id="2jv$fqwev7D" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev7E" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwk1lM" role="jymVt" />
    <node concept="312cEg" id="2jv$fqwvDnm" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPanel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2jv$fqwvlYf" role="1B3o_S" />
      <node concept="3uibUv" id="5rV$5P0AIrG" role="1tU5fm">
        <ref role="3uigEE" to="xlkh:~ThreesideContentPanel" resolve="ThreesideContentPanel" />
      </node>
    </node>
    <node concept="312cEg" id="f$Zk9J99Td" role="jymVt">
      <property role="TrG5h" value="isInspectorShown" />
      <node concept="2OqwBi" id="6HpunfUACm4" role="33vP2m">
        <node concept="liA8E" id="6HpunfUAFBT" role="2OqNvi">
          <ref role="37wK5l" to="jmi8:~PropertiesComponent.getBoolean(java.lang.String,boolean)" resolve="getBoolean" />
          <node concept="37vLTw" id="5J3UphNM2yb" role="37wK5m">
            <ref role="3cqZAo" node="6HpunfUDqhj" resolve="PARAM_SHOW_INSPECTOR" />
          </node>
          <node concept="3clFbT" id="6HpunfUBnp3" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2YIFZM" id="6HpunfUA$Dp" role="2Oq$k0">
          <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
          <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
        </node>
      </node>
      <node concept="10P_77" id="2OJKTJ7uGLV" role="1tU5fm" />
      <node concept="3Tm6S6" id="f$Zk9J99Te" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2jv$fqwkEDl" role="jymVt" />
    <node concept="312cEg" id="2jv$fqwev7F" role="jymVt">
      <property role="TrG5h" value="myChangeGroupLayouts" />
      <node concept="3Tm6S6" id="2jv$fqwev7G" role="1B3o_S" />
      <node concept="_YKpA" id="2jv$fqwev7H" role="1tU5fm">
        <node concept="3uibUv" id="2jv$fqwev7I" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
        </node>
      </node>
      <node concept="2ShNRf" id="2jv$fqwev7J" role="33vP2m">
        <node concept="Tc6Ow" id="2jv$fqwev7K" role="2ShVmc">
          <node concept="3uibUv" id="2jv$fqwev7L" role="HW$YZ">
            <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev7M" role="jymVt">
      <property role="TrG5h" value="myDiffLayoutPart" />
      <node concept="2ShNRf" id="2jv$fqwev7N" role="33vP2m">
        <node concept="3rGOSV" id="2jv$fqwev7O" role="2ShVmc">
          <node concept="3uibUv" id="2jv$fqwev7P" role="3rHrn6">
            <ref role="3uigEE" to="hdhb:5zpsdFy5n9A" resolve="DiffChangeGroupLayout" />
          </node>
          <node concept="10P_77" id="2jv$fqwev7Q" role="3rHtpV" />
        </node>
      </node>
      <node concept="3rvAFt" id="2jv$fqwev7R" role="1tU5fm">
        <node concept="3uibUv" id="2jv$fqwev7S" role="3rvQeY">
          <ref role="3uigEE" to="hdhb:5zpsdFy5n9A" resolve="DiffChangeGroupLayout" />
        </node>
        <node concept="10P_77" id="2jv$fqwev7T" role="3rvSg0" />
      </node>
      <node concept="3Tm6S6" id="2jv$fqwev7U" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4pxesIpYXsH" role="jymVt">
      <property role="TrG5h" value="myIsEditorsSyncEnabled" />
      <node concept="3Tm6S6" id="4pxesIpYUmE" role="1B3o_S" />
      <node concept="10P_77" id="4pxesIpYXrc" role="1tU5fm" />
      <node concept="1rXfSq" id="2UWfovzMHwQ" role="33vP2m">
        <ref role="37wK5l" node="6JaxsqziG0K" resolve="isEditorsScrollingSyncOptionEnabled" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev82" role="jymVt">
      <property role="TrG5h" value="myDiffEditorsGroup" />
      <node concept="3Tm6S6" id="2jv$fqwev83" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev84" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHaCz" resolve="DiffEditorsGroup" />
      </node>
      <node concept="2ShNRf" id="2jv$fqwev85" role="33vP2m">
        <node concept="1pGfFk" id="2jv$fqwev86" role="2ShVmc">
          <ref role="37wK5l" to="hdhb:42hl10VHaI4" resolve="DiffEditorsGroup" />
          <node concept="37vLTw" id="2UWfovzMI3T" role="37wK5m">
            <ref role="3cqZAo" node="4pxesIpYXsH" resolve="myIsEditorsSyncEnabled" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwlny4" role="jymVt" />
    <node concept="312cEg" id="2jv$fqwev8g" role="jymVt">
      <property role="TrG5h" value="myActionGroup" />
      <node concept="3Tm6S6" id="2jv$fqwev8h" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwev8i" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwev8j" role="jymVt">
      <property role="TrG5h" value="myTraverser" />
      <node concept="3uibUv" id="2jv$fqwev8k" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
      </node>
      <node concept="3Tm6S6" id="2jv$fqwev8l" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5rV$5P0DB9u" role="jymVt">
      <property role="TrG5h" value="mySplitters" />
      <node concept="3Tm6S6" id="5rV$5P0Dxqg" role="1B3o_S" />
      <node concept="_YKpA" id="5rV$5P0D$E$" role="1tU5fm">
        <node concept="3uibUv" id="5rV$5P0EuVl" role="_ZDj9">
          <ref role="3uigEE" to="lzb2:~JBSplitter" resolve="JBSplitter" />
        </node>
      </node>
      <node concept="2ShNRf" id="5rV$5P0DGA2" role="33vP2m">
        <node concept="Tc6Ow" id="5rV$5P0E7nz" role="2ShVmc">
          <node concept="3uibUv" id="5rV$5P0EvCb" role="HW$YZ">
            <ref role="3uigEE" to="lzb2:~JBSplitter" resolve="JBSplitter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1EaAyGRg7Db" role="jymVt" />
    <node concept="312cEg" id="2zb8TK6tGr5" role="jymVt">
      <property role="TrG5h" value="myDiffRegistry" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2zb8TK6t_1Y" role="1B3o_S" />
      <node concept="3uibUv" id="2zb8TK6tGbj" role="1tU5fm">
        <ref role="3uigEE" to="lcr:2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="2zb8TK6uO0d" role="jymVt">
      <property role="TrG5h" value="myDifferenceListener" />
      <node concept="3Tm6S6" id="2zb8TK6uGNz" role="1B3o_S" />
      <node concept="3uibUv" id="1EaAyGRgk7X" role="1tU5fm">
        <ref role="3uigEE" node="2zb8TK6unD2" resolve="MergeRootsPane.MyDifferenceListener" />
      </node>
      <node concept="2ShNRf" id="2zb8TK6v8V8" role="33vP2m">
        <node concept="HV5vD" id="2zb8TK6vEFK" role="2ShVmc">
          <ref role="HV5vE" node="2zb8TK6unD2" resolve="MergeRootsPane.MyDifferenceListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3BAp1_4w_cF" role="jymVt" />
    <node concept="312cEg" id="73GkhK4AfNS" role="jymVt">
      <property role="TrG5h" value="myInvalidationHandler" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="73GkhK4Afqo" role="1B3o_S" />
      <node concept="3uibUv" id="73GkhK4AfNQ" role="1tU5fm">
        <ref role="3uigEE" node="73GkhK4_Tv8" resolve="MergeRootsPane.InvalidationHandler" />
      </node>
    </node>
    <node concept="312cEg" id="1zZcg$v3iuq" role="jymVt">
      <property role="TrG5h" value="myMainLayout" />
      <node concept="3Tm6S6" id="1zZcg$v3e49" role="1B3o_S" />
      <node concept="3uibUv" id="1zZcg$v3hGR" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:1zZcg$udfju" resolve="TripleChangeGroupLayout" />
      </node>
    </node>
    <node concept="312cEg" id="1zZcg$v3uDs" role="jymVt">
      <property role="TrG5h" value="myInspectorLayout" />
      <node concept="3Tm6S6" id="1zZcg$v3r2z" role="1B3o_S" />
      <node concept="3uibUv" id="1zZcg$v3uqs" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:1zZcg$udfju" resolve="TripleChangeGroupLayout" />
      </node>
    </node>
    <node concept="312cEg" id="4v$0iiIJgCs" role="jymVt">
      <property role="TrG5h" value="myGutterMessagesRebuilders" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4v$0iiIJ8uF" role="1B3o_S" />
      <node concept="2ShNRf" id="4v$0iiIJjD6" role="33vP2m">
        <node concept="Tc6Ow" id="3dhKa32XW74" role="2ShVmc">
          <node concept="3uibUv" id="3dhKa32Yas9" role="HW$YZ">
            <ref role="3uigEE" to="hdhb:D356mG1l9K" resolve="ChangeGroupMessages" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="4v$0iiIO6AG" role="1tU5fm">
        <node concept="3uibUv" id="4v$0iiIOcR7" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:D356mG1l9K" resolve="ChangeGroupMessages" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="70RwqOIfDrc" role="jymVt">
      <property role="TrG5h" value="myTitleCustomizers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="70RwqOIfDrd" role="1B3o_S" />
      <node concept="_YKpA" id="70RwqOIfDre" role="1tU5fm">
        <node concept="3uibUv" id="70RwqOIfDrf" role="_ZDj9">
          <ref role="3uigEE" to="yt4f:~DiffEditorTitleCustomizer" resolve="DiffEditorTitleCustomizer" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2zzNdx1McvH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="312cEg" id="56VWuMNumsK" role="jymVt">
      <property role="TrG5h" value="myTitleCustomizersDisposables" />
      <property role="3TUv4t" value="true" />
      <node concept="_YKpA" id="56VWuMNz8Rf" role="1tU5fm">
        <node concept="3uibUv" id="56VWuMNz8Rh" role="_ZDj9">
          <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
        </node>
      </node>
      <node concept="2ShNRf" id="56VWuMNvvl9" role="33vP2m">
        <node concept="Tc6Ow" id="56VWuMNwt_$" role="2ShVmc">
          <node concept="3uibUv" id="56VWuMNwC2p" role="HW$YZ">
            <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="56VWuMNumsQ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="44EradnMMm1" role="jymVt">
      <property role="TrG5h" value="myTrackMovedNodesModeUpdater" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="44EradnMBQl" role="1B3o_S" />
      <node concept="3uibUv" id="44EradnMKAi" role="1tU5fm">
        <ref role="3uigEE" node="44EradnMloV" resolve="MergeRootsPane.TrackMovedNodesModeUpdater" />
      </node>
    </node>
    <node concept="2tJIrI" id="4v$0iiJ0Npr" role="jymVt" />
    <node concept="2tJIrI" id="fteH8PUtPt" role="jymVt" />
    <node concept="3clFbW" id="2jv$fqwev8m" role="jymVt">
      <node concept="37vLTG" id="2jv$fqwev8n" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2jv$fqwev8o" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="2jv$fqwev8p" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwev8q" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwev8r" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwev8M" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev8N" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwev8O" role="37vLTx">
              <ref role="3cqZAo" node="2jv$fqwev8n" resolve="project" />
            </node>
            <node concept="37vLTw" id="2jv$fqwev8P" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev73" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwev8U" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev8V" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwCc" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm841" role="37vLTx">
              <ref role="3cqZAo" node="2jv$fqwevcR" resolve="mergeSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwev8Y" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev8Z" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfeA" role="37vLTx">
              <ref role="3cqZAo" node="2jv$fqwevcT" resolve="rootId" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuTz1" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev7a" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwev92" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev93" role="3clFbG">
            <node concept="2OqwBi" id="2jv$fqwev94" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxeumyq" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
              </node>
              <node concept="liA8E" id="2jv$fqwev96" role="2OqNvi">
                <ref role="37wK5l" to="bmv6:2KMWrOXoI3m" resolve="getCurrentFullState" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuKj4" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev87" resolve="myStateToRestore" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwev8Q" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev8R" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwev8S" role="37vLTx">
              <ref role="3cqZAo" node="2jv$fqwevcX" resolve="titles" />
            </node>
            <node concept="37vLTw" id="2jv$fqwev8T" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev76" resolve="myTitles" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="70RwqOIfO1I" role="3cqZAp">
          <node concept="37vLTI" id="70RwqOIfTg$" role="3clFbG">
            <node concept="37vLTw" id="70RwqOIfV$5" role="37vLTx">
              <ref role="3cqZAo" node="70RwqOIdXPD" resolve="titleCustomizers" />
            </node>
            <node concept="37vLTw" id="70RwqOIfO1G" role="37vLTJ">
              <ref role="3cqZAo" node="70RwqOIfDrc" resolve="myTitleCustomizers" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwev8$" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev8_" role="3clFbG">
            <node concept="1bVj0M" id="2jv$fqwev8A" role="37vLTx">
              <node concept="3clFbS" id="2jv$fqwev8B" role="1bW5cS">
                <node concept="3clFbF" id="2jv$fqwev8C" role="3cqZAp">
                  <node concept="2OqwBi" id="2jv$fqwev8D" role="3clFbG">
                    <node concept="2OqwBi" id="2jv$fqwev8E" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxeuO45" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                      </node>
                      <node concept="liA8E" id="2jv$fqwev8G" role="2OqNvi">
                        <ref role="37wK5l" to="bmv6:3$YpntjF4nE" resolve="getConflictedWith" />
                        <node concept="37vLTw" id="2BHiRxgllhG" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwev8J" resolve="ch" />
                        </node>
                      </node>
                    </node>
                    <node concept="3GX2aA" id="2jv$fqwev8I" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2jv$fqwev8J" role="1bW2Oz">
                <property role="TrG5h" value="ch" />
                <node concept="3uibUv" id="2jv$fqwev8K" role="1tU5fm">
                  <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuMAw" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev70" resolve="myConflictChecker" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44EradnMYxE" role="3cqZAp">
          <node concept="37vLTI" id="44EradnMZMf" role="3clFbG">
            <node concept="37vLTw" id="44EradnN2a0" role="37vLTx">
              <ref role="3cqZAo" node="44EradnMxyS" resolve="trackMovedNodesModeUpdater" />
            </node>
            <node concept="37vLTw" id="44EradnMYxC" role="37vLTJ">
              <ref role="3cqZAo" node="44EradnMMm1" resolve="myTrackMovedNodesModeUpdater" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwev98" role="3cqZAp" />
        <node concept="3clFbF" id="2jv$fqwev99" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev9a" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyyKdn" role="37vLTx">
              <ref role="37wK5l" node="2jv$fqwevkL" resolve="addEditor" />
              <node concept="3cmrfG" id="2jv$fqwev9c" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="2jv$fqwev9d" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuFJK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="2jv$fqwev9f" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuyS8" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwev9h" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev9i" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyzfjg" role="37vLTx">
              <ref role="37wK5l" node="2jv$fqwevkL" resolve="addEditor" />
              <node concept="3cmrfG" id="2jv$fqwev9k" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2jv$fqwev9l" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuPIc" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="2jv$fqwev9n" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuw9g" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwev9p" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwev9q" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyz9FY" role="37vLTx">
              <ref role="37wK5l" node="2jv$fqwevkL" resolve="addEditor" />
              <node concept="3cmrfG" id="2jv$fqwev9s" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="2jv$fqwev9t" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuPgw" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="2jv$fqwev9v" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuyVp" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwev9x" role="3cqZAp" />
        <node concept="3clFbF" id="50LFMYN6PaD" role="3cqZAp">
          <node concept="37vLTI" id="50LFMYN6QEy" role="3clFbG">
            <node concept="1rXfSq" id="50LFMYN6RTI" role="37vLTx">
              <ref role="37wK5l" node="2duWW7Sf6jk" resolve="createThreesideContentPanel" />
            </node>
            <node concept="37vLTw" id="5rV$5P0B5am" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwvDnm" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="50LFMYN6OC9" role="3cqZAp" />
        <node concept="3cpWs8" id="6IL1Wh7tQip" role="3cqZAp">
          <node concept="3cpWsn" id="6IL1Wh7tQiq" role="3cpWs9">
            <property role="TrG5h" value="modelAccess" />
            <node concept="3uibUv" id="6IL1Wh7tQim" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
            </node>
            <node concept="2OqwBi" id="6IL1Wh7tQir" role="33vP2m">
              <node concept="2OqwBi" id="6IL1Wh7tQis" role="2Oq$k0">
                <node concept="2YIFZM" id="6IL1Wh7tQit" role="2Oq$k0">
                  <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="6IL1Wh7tQiu" role="37wK5m">
                    <ref role="3cqZAo" node="2jv$fqwev73" resolve="myProject" />
                  </node>
                </node>
                <node concept="liA8E" id="6IL1Wh7tQiv" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="6IL1Wh7tQiw" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73GkhK4Agbj" role="3cqZAp">
          <node concept="37vLTI" id="73GkhK4Ajk9" role="3clFbG">
            <node concept="2ShNRf" id="73GkhK4AjXD" role="37vLTx">
              <node concept="1pGfFk" id="73GkhK4AlyL" role="2ShVmc">
                <ref role="37wK5l" node="73GkhK4A9NY" resolve="MergeRootsPane.InvalidationHandler" />
                <node concept="37vLTw" id="73GkhK4AlGE" role="37wK5m">
                  <ref role="3cqZAo" node="6IL1Wh7tQiq" resolve="modelAccess" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="73GkhK4Agbh" role="37vLTJ">
              <ref role="3cqZAo" node="73GkhK4AfNS" resolve="myInvalidationHandler" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwev9N" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwev9O" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuFiA" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
            </node>
            <node concept="liA8E" id="2jv$fqwev9Q" role="2OqNvi">
              <ref role="37wK5l" to="bmv6:3UEHyzu03mp" resolve="setChangesInvalidateHandler" />
              <node concept="37vLTw" id="73GkhK4AlSX" role="37wK5m">
                <ref role="3cqZAo" node="73GkhK4AfNS" resolve="myInvalidationHandler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5rV$5P0B81C" role="3cqZAp" />
        <node concept="3clFbF" id="2jv$fqwevaf" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwevag" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwevah" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
            </node>
            <node concept="2ShNRf" id="2jv$fqwevai" role="37vLTx">
              <node concept="1pGfFk" id="2jv$fqwevaj" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:42hl10VHb5A" resolve="NextPreviousTraverser" />
                <node concept="37vLTw" id="2BHiRxeukDW" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwev7F" resolve="myChangeGroupLayouts" />
                </node>
                <node concept="2OqwBi" id="2jv$fqweval" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeuWRA" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwevan" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VHaA0" resolve="getMainEditor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqw_wY9" role="3cqZAp" />
        <node concept="3clFbF" id="3SMO48GlQzT" role="3cqZAp">
          <node concept="1rXfSq" id="3SMO48GlQzS" role="3clFbG">
            <ref role="37wK5l" node="3SMO48Gll7j" resolve="createActionGroup" />
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwxOhY" role="3cqZAp" />
        <node concept="3clFbF" id="2jv$fqwevbA" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzflU" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwevgu" resolve="highlightAllChanges" />
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevbD" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevbE" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwevbF" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
            </node>
            <node concept="liA8E" id="2jv$fqwevbG" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHbc2" resolve="goToFirstChangeLater" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2zb8TK6tNFC" role="3cqZAp">
          <node concept="37vLTI" id="2zb8TK6tP8h" role="3clFbG">
            <node concept="2YIFZM" id="2zb8TK6tRdQ" role="37vLTx">
              <ref role="1Pybhc" to="lcr:2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
              <ref role="37wK5l" to="lcr:2JwSLRbyYP0" resolve="getInstance" />
              <node concept="37vLTw" id="1EaAyGRgqq$" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwev73" resolve="myProject" />
              </node>
            </node>
            <node concept="37vLTw" id="2zb8TK6tNFA" role="37vLTJ">
              <ref role="3cqZAo" node="2zb8TK6tGr5" resolve="myDiffRegistry" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2zb8TK6u76P" role="3cqZAp">
          <node concept="2OqwBi" id="2zb8TK6u9yH" role="3clFbG">
            <node concept="2OqwBi" id="2zb8TK6u8v_" role="2Oq$k0">
              <node concept="37vLTw" id="2zb8TK6u76N" role="2Oq$k0">
                <ref role="3cqZAo" node="2zb8TK6tGr5" resolve="myDiffRegistry" />
              </node>
              <node concept="liA8E" id="2zb8TK6u9ac" role="2OqNvi">
                <ref role="37wK5l" to="lcr:2JwSLRbyYWE" resolve="getCommandQueue" />
              </node>
            </node>
            <node concept="liA8E" id="2zb8TK6uaeb" role="2OqNvi">
              <ref role="37wK5l" to="lcr:3eE6dTgUd0h" resolve="runTask" />
              <node concept="1bVj0M" id="2zb8TK6ubbQ" role="37wK5m">
                <node concept="3clFbS" id="2zb8TK6ubbR" role="1bW5cS">
                  <node concept="3clFbJ" id="1pGF6PXy59n" role="3cqZAp">
                    <node concept="3clFbS" id="1pGF6PXy59p" role="3clFbx">
                      <node concept="3cpWs8" id="2zb8TK6vFIG" role="3cqZAp">
                        <node concept="3cpWsn" id="2zb8TK6vFIH" role="3cpWs9">
                          <property role="3TUv4t" value="true" />
                          <property role="TrG5h" value="currentDifference" />
                          <node concept="3uibUv" id="2zb8TK6vFII" role="1tU5fm">
                            <ref role="3uigEE" to="lcr:2JwSLRbyUxe" resolve="CurrentDifference" />
                          </node>
                          <node concept="2OqwBi" id="2zb8TK6vFIJ" role="33vP2m">
                            <node concept="37vLTw" id="2zb8TK6vFIK" role="2Oq$k0">
                              <ref role="3cqZAo" node="2zb8TK6tGr5" resolve="myDiffRegistry" />
                            </node>
                            <node concept="liA8E" id="2zb8TK6vFIL" role="2OqNvi">
                              <ref role="37wK5l" to="lcr:2JwSLRbyYTp" resolve="getCurrentDifference" />
                              <node concept="10QFUN" id="2zb8TK6vFIM" role="37wK5m">
                                <node concept="3uibUv" id="2zb8TK6vFIN" role="10QFUM">
                                  <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                </node>
                                <node concept="2OqwBi" id="1EaAyGRgrvN" role="10QFUP">
                                  <node concept="37vLTw" id="1EaAyGRgrvO" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                                  </node>
                                  <node concept="liA8E" id="1EaAyGRgrvP" role="2OqNvi">
                                    <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2zb8TK6vFIR" role="3cqZAp">
                        <node concept="2OqwBi" id="2zb8TK6vFIS" role="3clFbG">
                          <node concept="37vLTw" id="2zb8TK6vFIT" role="2Oq$k0">
                            <ref role="3cqZAo" node="2zb8TK6vFIH" resolve="currentDifference" />
                          </node>
                          <node concept="liA8E" id="2zb8TK6vFIU" role="2OqNvi">
                            <ref role="37wK5l" to="lcr:2JwSLRbziMZ" resolve="addDifferenceListener" />
                            <node concept="37vLTw" id="2zb8TK6vFIV" role="37wK5m">
                              <ref role="3cqZAo" node="2zb8TK6uO0d" resolve="myDifferenceListener" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="1pGF6PXy8Ab" role="3clFbw">
                      <node concept="3uibUv" id="1pGF6PXy9Ir" role="2ZW6by">
                        <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                      </node>
                      <node concept="2OqwBi" id="1EaAyGRgqMQ" role="2ZW6bz">
                        <node concept="37vLTw" id="1EaAyGRgqMR" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                        </node>
                        <node concept="liA8E" id="1EaAyGRgqMS" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
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
      <node concept="37vLTG" id="2jv$fqwevcR" role="3clF46">
        <property role="TrG5h" value="mergeSession" />
        <node concept="3uibUv" id="2jv$fqwevcS" role="1tU5fm">
          <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwevcT" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="2jv$fqwevcU" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwevcV" role="3clF46">
        <property role="TrG5h" value="rootName" />
        <node concept="17QB3L" id="2jv$fqwevcW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2jv$fqwevcX" role="3clF46">
        <property role="TrG5h" value="titles" />
        <node concept="_YKpA" id="fACp920jbJ" role="1tU5fm">
          <node concept="17QB3L" id="fACp920jbL" role="_ZDj9" />
        </node>
      </node>
      <node concept="37vLTG" id="70RwqOIdXPD" role="3clF46">
        <property role="TrG5h" value="titleCustomizers" />
        <node concept="_YKpA" id="70RwqOIfN65" role="1tU5fm">
          <node concept="3uibUv" id="70RwqOIfN66" role="_ZDj9">
            <ref role="3uigEE" to="yt4f:~DiffEditorTitleCustomizer" resolve="DiffEditorTitleCustomizer" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2zzNdx1M9Xp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="44EradnMxyS" role="3clF46">
        <property role="TrG5h" value="trackMovedNodesModeUpdater" />
        <node concept="3uibUv" id="44EradnMyTJ" role="1tU5fm">
          <ref role="3uigEE" node="44EradnMloV" resolve="MergeRootsPane.TrackMovedNodesModeUpdater" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5a3yE9GT4Ir" role="jymVt" />
    <node concept="312cEu" id="2zb8TK6unD2" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyDifferenceListener" />
      <node concept="2tJIrI" id="2zb8TK6uv1q" role="jymVt" />
      <node concept="3Tm6S6" id="2zb8TK6ukJJ" role="1B3o_S" />
      <node concept="3uibUv" id="1EaAyGRfMEq" role="1zkMxy">
        <ref role="3uigEE" to="lcr:5R2TaPUKrqT" resolve="CurrentDifferenceAdapter" />
      </node>
      <node concept="3clFb_" id="2zb8TK6uvhB" role="jymVt">
        <property role="TrG5h" value="changeUpdateFinished" />
        <node concept="3cqZAl" id="2zb8TK6uvhC" role="3clF45" />
        <node concept="3Tm1VV" id="2zb8TK6uvhD" role="1B3o_S" />
        <node concept="2AHcQZ" id="2zb8TK6uvhF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="2zb8TK6uvhG" role="3clF47">
          <node concept="3clFbF" id="2zb8TK6u_X7" role="3cqZAp">
            <node concept="1rXfSq" id="2zb8TK6u_X8" role="3clFbG">
              <ref role="37wK5l" node="6FLEn05UH_M" resolve="rehighlightWithRebuild" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2zb8TK6uvi7" role="jymVt">
        <property role="TrG5h" value="changesAdded" />
        <node concept="3Tm1VV" id="2zb8TK6uvig" role="1B3o_S" />
        <node concept="3cqZAl" id="2zb8TK6uvih" role="3clF45" />
        <node concept="37vLTG" id="2zb8TK6uvii" role="3clF46">
          <property role="TrG5h" value="changes" />
          <node concept="3uibUv" id="2zb8TK6uvij" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="2zb8TK6uvik" role="11_B2D">
              <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
            </node>
          </node>
          <node concept="2AHcQZ" id="2zb8TK6uvil" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2zb8TK6uvio" role="3clF47">
          <node concept="3clFbF" id="2zb8TK6u$N9" role="3cqZAp">
            <node concept="1rXfSq" id="2zb8TK6u$N8" role="3clFbG">
              <ref role="37wK5l" node="6FLEn05UH_M" resolve="rehighlightWithRebuild" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2zb8TK6uvip" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2zb8TK6uviu" role="jymVt">
        <property role="TrG5h" value="changesRemoved" />
        <node concept="3Tm1VV" id="2zb8TK6uviB" role="1B3o_S" />
        <node concept="3cqZAl" id="2zb8TK6uviC" role="3clF45" />
        <node concept="37vLTG" id="2zb8TK6uviD" role="3clF46">
          <property role="TrG5h" value="changes" />
          <node concept="3uibUv" id="2zb8TK6uviE" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="2zb8TK6uviF" role="11_B2D">
              <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
            </node>
          </node>
          <node concept="2AHcQZ" id="2zb8TK6uviG" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2zb8TK6uviJ" role="3clF47">
          <node concept="3clFbF" id="2zb8TK6uAuh" role="3cqZAp">
            <node concept="1rXfSq" id="2zb8TK6uAui" role="3clFbG">
              <ref role="37wK5l" node="6FLEn05UH_M" resolve="rehighlightWithRebuild" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2zb8TK6uviK" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6FLEn05UFz3" role="jymVt" />
      <node concept="3clFb_" id="6FLEn05UH_M" role="jymVt">
        <property role="TrG5h" value="rehighlightWithRebuild" />
        <node concept="3clFbS" id="6FLEn05UH_P" role="3clF47">
          <node concept="3clFbF" id="2sMxb0Tz8t_" role="3cqZAp">
            <node concept="2EnYce" id="1A5bqdGOF8U" role="3clFbG">
              <node concept="2YIFZM" id="4q_H4ZbRo_D" role="2Oq$k0">
                <ref role="37wK5l" to="alof:~ProjectHelper.getModelAccess(com.intellij.openapi.project.Project)" resolve="getModelAccess" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="37vLTw" id="4q_H4ZbRo_E" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwev73" resolve="myProject" />
                </node>
              </node>
              <node concept="liA8E" id="1A5bqdGOF8Z" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
                <node concept="1bVj0M" id="1A5bqdGOF90" role="37wK5m">
                  <node concept="3clFbS" id="1A5bqdGOF91" role="1bW5cS">
                    <node concept="3clFbF" id="1A5bqdGOF92" role="3cqZAp">
                      <node concept="1rXfSq" id="1A5bqdGOF93" role="3clFbG">
                        <ref role="37wK5l" node="6FLEn05TK6d" resolve="doRehighlight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6FLEn05UGAK" role="1B3o_S" />
        <node concept="3cqZAl" id="6FLEn05UHvL" role="3clF45" />
      </node>
      <node concept="3clFb_" id="6FLEn05TK6d" role="jymVt">
        <property role="TrG5h" value="doRehighlight" />
        <node concept="3clFbS" id="6FLEn05TK6g" role="3clF47">
          <node concept="3clFbF" id="6FLEn05TQJ1" role="3cqZAp">
            <node concept="1rXfSq" id="6FLEn05TQJ0" role="3clFbG">
              <ref role="37wK5l" node="2jv$fqwevfx" resolve="rehighlight" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6FLEn05TEAL" role="1B3o_S" />
        <node concept="3cqZAl" id="6FLEn05TK3A" role="3clF45" />
      </node>
    </node>
    <node concept="2tJIrI" id="1EaAyGRfCME" role="jymVt" />
    <node concept="3clFb_" id="2lt5FSxy8nC" role="jymVt">
      <property role="TrG5h" value="propertyChange" />
      <node concept="3Tm1VV" id="2lt5FSxy8nD" role="1B3o_S" />
      <node concept="3cqZAl" id="2lt5FSxy8nF" role="3clF45" />
      <node concept="37vLTG" id="2lt5FSxy8nG" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="2lt5FSxy8nH" role="1tU5fm">
          <ref role="3uigEE" to="mnlj:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="2lt5FSxy8nI" role="3clF47">
        <node concept="3clFbJ" id="2lt5FSxyboF" role="3cqZAp">
          <node concept="3fqX7Q" id="2lt5FSxyboG" role="3clFbw">
            <node concept="2OqwBi" id="2lt5FSxyboH" role="3fr31v">
              <node concept="10M0yZ" id="2lt5FSxyboI" role="2Oq$k0">
                <ref role="1PxDUh" to="jkm4:~Splitter" resolve="Splitter" />
                <ref role="3cqZAo" to="jkm4:~Splitter.PROP_PROPORTION" resolve="PROP_PROPORTION" />
              </node>
              <node concept="liA8E" id="2lt5FSxyboJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="2lt5FSxyboK" role="37wK5m">
                  <node concept="37vLTw" id="2lt5FSxyboL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lt5FSxy8nG" resolve="event" />
                  </node>
                  <node concept="liA8E" id="2lt5FSxyboM" role="2OqNvi">
                    <ref role="37wK5l" to="mnlj:~PropertyChangeEvent.getPropertyName()" resolve="getPropertyName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2lt5FSxyboN" role="3clFbx">
            <node concept="3cpWs6" id="2lt5FSxyboO" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="2lt5FSxyv5u" role="3cqZAp">
          <node concept="3cpWsn" id="2lt5FSxyv5v" role="3cpWs9">
            <property role="TrG5h" value="sourceSplitter" />
            <node concept="3uibUv" id="2lt5FSxyv5w" role="1tU5fm">
              <ref role="3uigEE" to="jkm4:~Splitter" resolve="Splitter" />
            </node>
            <node concept="10QFUN" id="2lt5FSxyxrS" role="33vP2m">
              <node concept="3uibUv" id="2lt5FSxyxNK" role="10QFUM">
                <ref role="3uigEE" to="jkm4:~Splitter" resolve="Splitter" />
              </node>
              <node concept="2OqwBi" id="2lt5FSxywy3" role="10QFUP">
                <node concept="37vLTw" id="2lt5FSxyvJz" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lt5FSxy8nG" resolve="event" />
                </node>
                <node concept="liA8E" id="2lt5FSxywWY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~EventObject.getSource()" resolve="getSource" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="AqV75f3mpR" role="3cqZAp">
          <node concept="3clFbS" id="AqV75f3mpW" role="2LFqv$">
            <node concept="3clFbJ" id="AqV75f3mpX" role="3cqZAp">
              <node concept="3y3z36" id="AqV75f3mpY" role="3clFbw">
                <node concept="37vLTw" id="AqV75f3mpZ" role="3uHU7w">
                  <ref role="3cqZAo" node="2lt5FSxyv5v" resolve="sourceSplitter" />
                </node>
                <node concept="2GrUjf" id="AqV75f3mqo" role="3uHU7B">
                  <ref role="2Gs0qQ" node="AqV75f3mqn" resolve="splitter" />
                </node>
              </node>
              <node concept="3clFbS" id="AqV75f3mq1" role="3clFbx">
                <node concept="3clFbF" id="AqV75f3mq2" role="3cqZAp">
                  <node concept="2OqwBi" id="AqV75f3mq3" role="3clFbG">
                    <node concept="2GrUjf" id="AqV75f3mqp" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="AqV75f3mqn" resolve="splitter" />
                    </node>
                    <node concept="liA8E" id="AqV75f3mq5" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.removePropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)" resolve="removePropertyChangeListener" />
                      <node concept="10M0yZ" id="AqV75f3mq6" role="37wK5m">
                        <ref role="3cqZAo" to="jkm4:~Splitter.PROP_PROPORTION" resolve="PROP_PROPORTION" />
                        <ref role="1PxDUh" to="jkm4:~Splitter" resolve="Splitter" />
                      </node>
                      <node concept="Xjq3P" id="AqV75f3mq7" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="AqV75f3mq8" role="3cqZAp">
                  <node concept="2OqwBi" id="AqV75f3mq9" role="3clFbG">
                    <node concept="2GrUjf" id="AqV75f3mqq" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="AqV75f3mqn" resolve="splitter" />
                    </node>
                    <node concept="liA8E" id="AqV75f3mqb" role="2OqNvi">
                      <ref role="37wK5l" to="lzb2:~JBSplitter.setProportion(float)" resolve="setProportion" />
                      <node concept="10QFUN" id="AqV75f3mqc" role="37wK5m">
                        <node concept="10OMs4" id="AqV75f3mqd" role="10QFUM" />
                        <node concept="2OqwBi" id="AqV75f3mqe" role="10QFUP">
                          <node concept="37vLTw" id="AqV75f3mqf" role="2Oq$k0">
                            <ref role="3cqZAo" node="2lt5FSxy8nG" resolve="event" />
                          </node>
                          <node concept="liA8E" id="AqV75f3mqg" role="2OqNvi">
                            <ref role="37wK5l" to="mnlj:~PropertyChangeEvent.getNewValue()" resolve="getNewValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="AqV75f3mqh" role="3cqZAp">
                  <node concept="2OqwBi" id="AqV75f3mqi" role="3clFbG">
                    <node concept="2GrUjf" id="AqV75f3mqr" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="AqV75f3mqn" resolve="splitter" />
                    </node>
                    <node concept="liA8E" id="AqV75f3mqk" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)" resolve="addPropertyChangeListener" />
                      <node concept="10M0yZ" id="AqV75f3mql" role="37wK5m">
                        <ref role="3cqZAo" to="jkm4:~Splitter.PROP_PROPORTION" resolve="PROP_PROPORTION" />
                        <ref role="1PxDUh" to="jkm4:~Splitter" resolve="Splitter" />
                      </node>
                      <node concept="Xjq3P" id="AqV75f3mqm" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="AqV75f3mpV" role="2GsD0m">
            <ref role="3cqZAo" node="5rV$5P0DB9u" resolve="mySplitters" />
          </node>
          <node concept="2GrKxI" id="AqV75f3mqn" role="2Gsz3X">
            <property role="TrG5h" value="splitter" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2lt5FSxy8nJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5a3yE9GTfK3" role="jymVt" />
    <node concept="3clFb_" id="2duWW7Sf6jk" role="jymVt">
      <property role="TrG5h" value="createThreesideContentPanel" />
      <node concept="3clFbS" id="2duWW7Sf6jl" role="3clF47">
        <node concept="3cpWs8" id="2duWW7Sf6jm" role="3cqZAp">
          <node concept="3cpWsn" id="2duWW7Sf6jn" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="50LFMYN3M3u" role="1tU5fm">
              <ref role="3uigEE" to="xlkh:~ThreesideContentPanel" resolve="ThreesideContentPanel" />
            </node>
            <node concept="2ShNRf" id="2duWW7Sf6jp" role="33vP2m">
              <node concept="1pGfFk" id="2duWW7Sf6jq" role="2ShVmc">
                <ref role="37wK5l" to="xlkh:~ThreesideContentPanel.&lt;init&gt;(java.util.List)" resolve="ThreesideContentPanel" />
                <node concept="2YIFZM" id="2duWW7Sf6jr" role="37wK5m">
                  <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                  <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                  <node concept="2OqwBi" id="2duWW7Sf6js" role="37wK5m">
                    <node concept="37vLTw" id="50LFMYN3QFe" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
                    </node>
                    <node concept="liA8E" id="5rV$5P0BcDx" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:6ucDe7IybjI" resolve="getPanel" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2duWW7Sf6jw" role="37wK5m">
                    <node concept="37vLTw" id="50LFMYN3UL2" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                    </node>
                    <node concept="liA8E" id="5rV$5P0BjzA" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:6ucDe7IybjI" resolve="getPanel" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="50LFMYN46Oj" role="37wK5m">
                    <node concept="37vLTw" id="50LFMYN43zP" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
                    </node>
                    <node concept="liA8E" id="5rV$5P0BqWY" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:6ucDe7IybjI" resolve="getPanel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rV$5P0EeMv" role="3cqZAp">
          <node concept="2OqwBi" id="5rV$5P0EkIy" role="3clFbG">
            <node concept="37vLTw" id="5rV$5P0EeMt" role="2Oq$k0">
              <ref role="3cqZAo" node="5rV$5P0DB9u" resolve="mySplitters" />
            </node>
            <node concept="TSZUe" id="5rV$5P0Erfh" role="2OqNvi">
              <node concept="10QFUN" id="5rV$5P0EtNO" role="25WWJ7">
                <node concept="3uibUv" id="5rV$5P0Euz1" role="10QFUM">
                  <ref role="3uigEE" to="lzb2:~JBSplitter" resolve="JBSplitter" />
                </node>
                <node concept="2OqwBi" id="5rV$5P0EsI5" role="10QFUP">
                  <node concept="37vLTw" id="5rV$5P0Es0_" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
                  </node>
                  <node concept="liA8E" id="5rV$5P0Et8H" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:6ucDe7IybjI" resolve="getPanel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rV$5P0E_pL" role="3cqZAp">
          <node concept="2OqwBi" id="5rV$5P0E_pM" role="3clFbG">
            <node concept="37vLTw" id="5rV$5P0E_pN" role="2Oq$k0">
              <ref role="3cqZAo" node="5rV$5P0DB9u" resolve="mySplitters" />
            </node>
            <node concept="TSZUe" id="5rV$5P0E_pO" role="2OqNvi">
              <node concept="10QFUN" id="5rV$5P0E_pP" role="25WWJ7">
                <node concept="3uibUv" id="5rV$5P0E_pQ" role="10QFUM">
                  <ref role="3uigEE" to="lzb2:~JBSplitter" resolve="JBSplitter" />
                </node>
                <node concept="2OqwBi" id="5rV$5P0E_pR" role="10QFUP">
                  <node concept="37vLTw" id="5rV$5P0EHbZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                  </node>
                  <node concept="liA8E" id="5rV$5P0E_pT" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:6ucDe7IybjI" resolve="getPanel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rV$5P0EC2w" role="3cqZAp">
          <node concept="2OqwBi" id="5rV$5P0EC2x" role="3clFbG">
            <node concept="37vLTw" id="5rV$5P0EC2y" role="2Oq$k0">
              <ref role="3cqZAo" node="5rV$5P0DB9u" resolve="mySplitters" />
            </node>
            <node concept="TSZUe" id="5rV$5P0EC2z" role="2OqNvi">
              <node concept="10QFUN" id="5rV$5P0EC2$" role="25WWJ7">
                <node concept="3uibUv" id="5rV$5P0EC2_" role="10QFUM">
                  <ref role="3uigEE" to="lzb2:~JBSplitter" resolve="JBSplitter" />
                </node>
                <node concept="2OqwBi" id="5rV$5P0EC2A" role="10QFUP">
                  <node concept="37vLTw" id="5rV$5P0EHYa" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
                  </node>
                  <node concept="liA8E" id="5rV$5P0EC2C" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:6ucDe7IybjI" resolve="getPanel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5rV$5P0ELsM" role="3cqZAp">
          <node concept="2GrKxI" id="5rV$5P0ELsO" role="2Gsz3X">
            <property role="TrG5h" value="splitter" />
          </node>
          <node concept="37vLTw" id="5rV$5P0F3iy" role="2GsD0m">
            <ref role="3cqZAo" node="5rV$5P0DB9u" resolve="mySplitters" />
          </node>
          <node concept="3clFbS" id="5rV$5P0ELsS" role="2LFqv$">
            <node concept="3clFbF" id="5rV$5P0F8P9" role="3cqZAp">
              <node concept="2OqwBi" id="5rV$5P0F9wS" role="3clFbG">
                <node concept="2GrUjf" id="5rV$5P0F8P8" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="5rV$5P0ELsO" resolve="splitter" />
                </node>
                <node concept="liA8E" id="5rV$5P0FfFF" role="2OqNvi">
                  <ref role="37wK5l" to="lzb2:~JBSplitter.setSplitterProportionKey(java.lang.String)" resolve="setSplitterProportionKey" />
                  <node concept="37vLTw" id="5rV$5P0Fgk5" role="37wK5m">
                    <ref role="3cqZAo" node="6HpunfUDPxf" resolve="PARAM_INSPECTOR_SPLITTER_POSITION" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5rV$5P0Fm1O" role="3cqZAp">
              <node concept="2OqwBi" id="5rV$5P0FmJq" role="3clFbG">
                <node concept="2GrUjf" id="5rV$5P0Fm1M" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="5rV$5P0ELsO" resolve="splitter" />
                </node>
                <node concept="liA8E" id="5rV$5P0FsOt" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)" resolve="addPropertyChangeListener" />
                  <node concept="10M0yZ" id="5rV$5P0FtWb" role="37wK5m">
                    <ref role="1PxDUh" to="jkm4:~Splitter" resolve="Splitter" />
                    <ref role="3cqZAo" to="jkm4:~Splitter.PROP_PROPORTION" resolve="PROP_PROPORTION" />
                  </node>
                  <node concept="Xjq3P" id="5rV$5P0FuCQ" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5rV$5P0EC0L" role="3cqZAp" />
        <node concept="3clFbF" id="KAZ6yAbw8m" role="3cqZAp">
          <node concept="2OqwBi" id="KAZ6yAbw8n" role="3clFbG">
            <node concept="37vLTw" id="KAZ6yAbw8o" role="2Oq$k0">
              <ref role="3cqZAo" node="2duWW7Sf6jn" resolve="panel" />
            </node>
            <node concept="liA8E" id="KAZ6yAbw8p" role="2OqNvi">
              <ref role="37wK5l" to="xlkh:~ThreesideContentPanel.setTitles(java.util.List)" resolve="setTitles" />
              <node concept="1rXfSq" id="KAZ6yAbw8q" role="37wK5m">
                <ref role="37wK5l" node="2duWW7Sf6kk" resolve="createTitles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5rV$5P0BzIh" role="3cqZAp" />
        <node concept="3clFbF" id="2duWW7Sf6k8" role="3cqZAp">
          <node concept="1rXfSq" id="2duWW7Sf6k9" role="3clFbG">
            <ref role="37wK5l" node="42UviMImjKk" resolve="linkEditors" />
            <node concept="37vLTw" id="2duWW7Sf6ka" role="37wK5m">
              <ref role="3cqZAo" node="2duWW7Sf6jn" resolve="panel" />
            </node>
            <node concept="3clFbT" id="50LFMYN6sCg" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="3clFbT" id="5rV$5P0GAwo" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbF" id="5rV$5P0GInU" role="3cqZAp">
          <node concept="1rXfSq" id="5rV$5P0GInV" role="3clFbG">
            <ref role="37wK5l" node="42UviMImjKk" resolve="linkEditors" />
            <node concept="37vLTw" id="5rV$5P0GInW" role="37wK5m">
              <ref role="3cqZAo" node="2duWW7Sf6jn" resolve="panel" />
            </node>
            <node concept="3clFbT" id="5rV$5P0J3eO" role="37wK5m" />
            <node concept="3clFbT" id="5rV$5P0GInY" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbF" id="3BAp1_4xDHL" role="3cqZAp">
          <node concept="37vLTI" id="3BAp1_4xK4Q" role="3clFbG">
            <node concept="2ShNRf" id="3BAp1_4xOvD" role="37vLTx">
              <node concept="1pGfFk" id="3BAp1_4ycrf" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:1zZcg$udi_S" resolve="TripleChangeGroupLayout" />
                <node concept="10QFUN" id="3BAp1_4yjpe" role="37wK5m">
                  <node concept="3uibUv" id="3BAp1_4yk36" role="10QFUM">
                    <ref role="3uigEE" to="hdhb:5zpsdFy5n9A" resolve="DiffChangeGroupLayout" />
                  </node>
                  <node concept="2OqwBi" id="3BAp1_4yefT" role="10QFUP">
                    <node concept="37vLTw" id="3BAp1_4ycV$" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev7F" resolve="myChangeGroupLayouts" />
                    </node>
                    <node concept="34jXtK" id="3BAp1_4yf1P" role="2OqNvi">
                      <node concept="3cmrfG" id="3BAp1_4yfy8" role="25WWJ7">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10QFUN" id="3BAp1_4ykPn" role="37wK5m">
                  <node concept="3uibUv" id="3BAp1_4ylmZ" role="10QFUM">
                    <ref role="3uigEE" to="hdhb:5zpsdFy5n9A" resolve="DiffChangeGroupLayout" />
                  </node>
                  <node concept="2OqwBi" id="3BAp1_4yhxr" role="10QFUP">
                    <node concept="37vLTw" id="3BAp1_4yg3H" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev7F" resolve="myChangeGroupLayouts" />
                    </node>
                    <node concept="34jXtK" id="3BAp1_4yioC" role="2OqNvi">
                      <node concept="3cmrfG" id="3BAp1_4yj36" role="25WWJ7">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="5R_XY2zj$DB" role="37wK5m" />
              </node>
            </node>
            <node concept="37vLTw" id="3BAp1_4xDHJ" role="37vLTJ">
              <ref role="3cqZAo" node="1zZcg$v3iuq" resolve="myMainLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50LFMYN6_Fd" role="3cqZAp">
          <node concept="1rXfSq" id="50LFMYN6_Ff" role="3clFbG">
            <ref role="37wK5l" node="42UviMImjKk" resolve="linkEditors" />
            <node concept="37vLTw" id="50LFMYN6_Fg" role="37wK5m">
              <ref role="3cqZAo" node="2duWW7Sf6jn" resolve="panel" />
            </node>
            <node concept="3clFbT" id="50LFMYN6Hb0" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="3clFbT" id="5rV$5P0GSY4" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rV$5P0GVIe" role="3cqZAp">
          <node concept="1rXfSq" id="5rV$5P0GVIf" role="3clFbG">
            <ref role="37wK5l" node="42UviMImjKk" resolve="linkEditors" />
            <node concept="37vLTw" id="5rV$5P0GVIg" role="37wK5m">
              <ref role="3cqZAo" node="2duWW7Sf6jn" resolve="panel" />
            </node>
            <node concept="3clFbT" id="5rV$5P0GVIh" role="37wK5m" />
            <node concept="3clFbT" id="5rV$5P0GVIi" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3BAp1_4zfxW" role="3cqZAp">
          <node concept="37vLTI" id="3BAp1_4zfxX" role="3clFbG">
            <node concept="2ShNRf" id="3BAp1_4zfxY" role="37vLTx">
              <node concept="1pGfFk" id="3BAp1_4zfxZ" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:1zZcg$udi_S" resolve="TripleChangeGroupLayout" />
                <node concept="10QFUN" id="3BAp1_4zfy0" role="37wK5m">
                  <node concept="3uibUv" id="3BAp1_4zfy1" role="10QFUM">
                    <ref role="3uigEE" to="hdhb:5zpsdFy5n9A" resolve="DiffChangeGroupLayout" />
                  </node>
                  <node concept="2OqwBi" id="3BAp1_4zfy2" role="10QFUP">
                    <node concept="37vLTw" id="3BAp1_4zfy3" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev7F" resolve="myChangeGroupLayouts" />
                    </node>
                    <node concept="34jXtK" id="3BAp1_4zfy4" role="2OqNvi">
                      <node concept="3cmrfG" id="3BAp1_4zmrT" role="25WWJ7">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10QFUN" id="3BAp1_4zfy6" role="37wK5m">
                  <node concept="3uibUv" id="3BAp1_4zfy7" role="10QFUM">
                    <ref role="3uigEE" to="hdhb:5zpsdFy5n9A" resolve="DiffChangeGroupLayout" />
                  </node>
                  <node concept="2OqwBi" id="3BAp1_4zfy8" role="10QFUP">
                    <node concept="37vLTw" id="3BAp1_4zfy9" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev7F" resolve="myChangeGroupLayouts" />
                    </node>
                    <node concept="34jXtK" id="3BAp1_4zfya" role="2OqNvi">
                      <node concept="3cmrfG" id="3BAp1_4zmJH" role="25WWJ7">
                        <property role="3cmrfH" value="3" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="5R_XY2zj_79" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3BAp1_4zn_T" role="37vLTJ">
              <ref role="3cqZAo" node="1zZcg$v3uDs" resolve="myInspectorLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lPG7LaZuCi" role="3cqZAp">
          <node concept="2OqwBi" id="lPG7LaZvFa" role="3clFbG">
            <node concept="37vLTw" id="lPG7LaZuCg" role="2Oq$k0">
              <ref role="3cqZAo" node="2duWW7Sf6jn" resolve="panel" />
            </node>
            <node concept="liA8E" id="lPG7LaZwKh" role="2OqNvi">
              <ref role="37wK5l" to="xlkh:~ThreesideContentPanel.setPainter(com.intellij.diff.tools.util.DiffSplitter$Painter,com.intellij.diff.util.Side)" resolve="setPainter" />
              <node concept="2ShNRf" id="lPG7LaZwWM" role="37wK5m">
                <node concept="1pGfFk" id="lPG7LaZyEI" role="2ShVmc">
                  <ref role="37wK5l" node="5c$TSd$Q$gu" resolve="MergeRootsPane.MyDividerPainter" />
                  <node concept="3clFbT" id="5rV$5P0I9Bp" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="Rm8GO" id="5rV$5P0I995" role="37wK5m">
                <ref role="Rm8GQ" to="xo69:~Side.LEFT" resolve="LEFT" />
                <ref role="1Px2BO" to="xo69:~Side" resolve="Side" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rV$5P0I9M1" role="3cqZAp">
          <node concept="2OqwBi" id="5rV$5P0I9M2" role="3clFbG">
            <node concept="37vLTw" id="5rV$5P0I9M3" role="2Oq$k0">
              <ref role="3cqZAo" node="2duWW7Sf6jn" resolve="panel" />
            </node>
            <node concept="liA8E" id="5rV$5P0I9M4" role="2OqNvi">
              <ref role="37wK5l" to="xlkh:~ThreesideContentPanel.setPainter(com.intellij.diff.tools.util.DiffSplitter$Painter,com.intellij.diff.util.Side)" resolve="setPainter" />
              <node concept="2ShNRf" id="5rV$5P0I9M5" role="37wK5m">
                <node concept="1pGfFk" id="5rV$5P0I9M6" role="2ShVmc">
                  <ref role="37wK5l" node="5c$TSd$Q$gu" resolve="MergeRootsPane.MyDividerPainter" />
                  <node concept="3clFbT" id="5rV$5P0Igao" role="37wK5m" />
                </node>
              </node>
              <node concept="Rm8GO" id="5rV$5P0IfBj" role="37wK5m">
                <ref role="1Px2BO" to="xo69:~Side" resolve="Side" />
                <ref role="Rm8GQ" to="xo69:~Side.RIGHT" resolve="RIGHT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2duWW7Sf6kc" role="3cqZAp">
          <node concept="37vLTw" id="2duWW7Sf6kd" role="3cqZAk">
            <ref role="3cqZAo" node="2duWW7Sf6jn" resolve="panel" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2duWW7Sf6ke" role="1B3o_S" />
      <node concept="3uibUv" id="50LFMYN3Bjn" role="3clF45">
        <ref role="3uigEE" to="xlkh:~ThreesideContentPanel" resolve="ThreesideContentPanel" />
      </node>
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfB" role="jymVt" />
    <node concept="3clFb_" id="2duWW7Sf6kk" role="jymVt">
      <property role="TrG5h" value="createTitles" />
      <node concept="3clFbS" id="2duWW7Sf6kl" role="3clF47">
        <node concept="3clFbJ" id="25dlLVjhX8m" role="3cqZAp">
          <node concept="3clFbS" id="25dlLVjhX8o" role="3clFbx">
            <node concept="3cpWs8" id="25dlLVjeMAZ" role="3cqZAp">
              <node concept="3cpWsn" id="25dlLVjeMB2" role="3cpWs9">
                <property role="TrG5h" value="titles" />
                <node concept="_YKpA" id="25dlLVjeMAV" role="1tU5fm">
                  <node concept="3uibUv" id="25dlLVjeQgA" role="_ZDj9">
                    <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                  </node>
                </node>
                <node concept="2ShNRf" id="25dlLVjeWHs" role="33vP2m">
                  <node concept="Tc6Ow" id="25dlLVjfiYi" role="2ShVmc">
                    <node concept="3uibUv" id="25dlLVjfq4k" role="HW$YZ">
                      <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="25dlLVjcvQO" role="3cqZAp">
              <node concept="3clFbS" id="25dlLVjcvQQ" role="2LFqv$">
                <node concept="3clFbF" id="25dlLVjfrYn" role="3cqZAp">
                  <node concept="2OqwBi" id="25dlLVjfucL" role="3clFbG">
                    <node concept="37vLTw" id="25dlLVjfrYl" role="2Oq$k0">
                      <ref role="3cqZAo" node="25dlLVjeMB2" resolve="titles" />
                    </node>
                    <node concept="TSZUe" id="25dlLVjfy50" role="2OqNvi">
                      <node concept="1rXfSq" id="62EFR7IgSWN" role="25WWJ7">
                        <ref role="37wK5l" node="56VWuMNd2ly" resolve="createTitle" />
                        <node concept="1y4W85" id="fACp920Vtb" role="37wK5m">
                          <node concept="37vLTw" id="fACp9211qy" role="1y58nS">
                            <ref role="3cqZAo" node="25dlLVjcvQR" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="70RwqOIhD5b" role="1y566C">
                            <ref role="3cqZAo" node="2jv$fqwev76" resolve="myTitles" />
                          </node>
                        </node>
                        <node concept="1y4W85" id="fACp921zE5" role="37wK5m">
                          <node concept="37vLTw" id="fACp921F5j" role="1y58nS">
                            <ref role="3cqZAo" node="25dlLVjcvQR" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="25dlLVjf$Tg" role="1y566C">
                            <ref role="3cqZAo" node="70RwqOIfDrc" resolve="myTitleCustomizers" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="25dlLVjcvQR" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="25dlLVjczne" role="1tU5fm" />
                <node concept="3cmrfG" id="25dlLVjcCyw" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="25dlLVjcJBx" role="1Dwp0S">
                <node concept="2OqwBi" id="70RwqOIhlkh" role="3uHU7w">
                  <node concept="37vLTw" id="70RwqOIheoo" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev76" resolve="myTitles" />
                  </node>
                  <node concept="34oBXx" id="fACp920Cor" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="25dlLVjcFjU" role="3uHU7B">
                  <ref role="3cqZAo" node="25dlLVjcvQR" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="25dlLVjd02l" role="1Dwrff">
                <node concept="37vLTw" id="25dlLVjd02n" role="2$L3a6">
                  <ref role="3cqZAo" node="25dlLVjcvQR" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="25dlLVjikzF" role="3cqZAp">
              <node concept="37vLTw" id="25dlLVjismS" role="3cqZAk">
                <ref role="3cqZAo" node="25dlLVjeMB2" resolve="titles" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="25dlLVji7YM" role="3clFbw">
            <node concept="10Nm6u" id="25dlLVjierN" role="3uHU7w" />
            <node concept="37vLTw" id="25dlLVji3HG" role="3uHU7B">
              <ref role="3cqZAo" node="70RwqOIfDrc" resolve="myTitleCustomizers" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2duWW7Sf6km" role="3cqZAp">
          <node concept="2YIFZM" id="2duWW7Sf6kn" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <node concept="2OqwBi" id="2duWW7Sf6ko" role="37wK5m">
              <node concept="37vLTw" id="50LFMYN4_fZ" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
              </node>
              <node concept="liA8E" id="2duWW7Sf6kq" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:2A553ZPxTP$" resolve="getTitleComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="2duWW7Sf6kr" role="37wK5m">
              <node concept="37vLTw" id="50LFMYN4_EY" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
              </node>
              <node concept="liA8E" id="2duWW7Sf6kt" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:2A553ZPxTP$" resolve="getTitleComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="50LFMYN4Awm" role="37wK5m">
              <node concept="37vLTw" id="50LFMYN4A7_" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
              </node>
              <node concept="liA8E" id="50LFMYN4AOv" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:2A553ZPxTP$" resolve="getTitleComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2duWW7Sf6ku" role="1B3o_S" />
      <node concept="_YKpA" id="2duWW7Sf6kv" role="3clF45">
        <node concept="3uibUv" id="2duWW7Sf6kw" role="_ZDj9">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="lPG7LaYzyi" role="jymVt" />
    <node concept="3clFb_" id="3SMO48Gll7j" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createActionGroup" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3SMO48Gll7m" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwyhUQ" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwyhUR" role="3clFbG">
            <node concept="2ShNRf" id="2jv$fqwyhUS" role="37vLTx">
              <node concept="1pGfFk" id="2jv$fqwyhUT" role="2ShVmc">
                <ref role="37wK5l" to="qkt:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqwyhUU" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwyhUV" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwyhUW" role="3clFbG">
            <node concept="liA8E" id="2jv$fqwyhUX" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="2jv$fqwyhUY" role="37wK5m">
                <node concept="1pGfFk" id="2jv$fqwyhUZ" role="2ShVmc">
                  <ref role="37wK5l" node="2jv$fqwDso2" resolve="ApplyNonConflictsForRoot" />
                  <node concept="Xjq3P" id="2jv$fqwyhV0" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqwyhV1" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwyhV2" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwyhV3" role="3clFbG">
            <node concept="liA8E" id="2jv$fqwyhV4" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.addSeparator()" resolve="addSeparator" />
            </node>
            <node concept="37vLTw" id="2jv$fqwyhV5" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwyhV6" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwyhV7" role="3clFbG">
            <node concept="liA8E" id="2jv$fqwyhV8" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.addAll(com.intellij.openapi.actionSystem.AnAction...)" resolve="addAll" />
              <node concept="2OqwBi" id="2jv$fqwyhV9" role="37wK5m">
                <node concept="37vLTw" id="2jv$fqwyhVa" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
                </node>
                <node concept="liA8E" id="2jv$fqwyhVb" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHbbQ" resolve="previousAction" />
                </node>
              </node>
              <node concept="2OqwBi" id="2jv$fqwyhVc" role="37wK5m">
                <node concept="37vLTw" id="2jv$fqwyhVd" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
                </node>
                <node concept="liA8E" id="2jv$fqwyhVe" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHbbW" resolve="nextAction" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqwyhVf" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vmdkvugoy_" role="3cqZAp">
          <node concept="2OqwBi" id="3Vmdkvugz3m" role="3clFbG">
            <node concept="liA8E" id="3VmdkvugDaH" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent)" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="6gc0uWWlKVC" role="37wK5m">
                <ref role="1PxDUh" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
                <ref role="3cqZAo" to="hdhb:6gc0uWWfIsG" resolve="PREV_CHANGE_SHORTCUT" />
              </node>
              <node concept="37vLTw" id="3Vmdkvuh98$" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwvDnm" resolve="myPanel" />
              </node>
            </node>
            <node concept="2OqwBi" id="3VmdkvugrTF" role="2Oq$k0">
              <node concept="liA8E" id="3Vmdkvugvrn" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbQ" resolve="previousAction" />
              </node>
              <node concept="37vLTw" id="3Vmdkvugoy$" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vmdkvuhh6G" role="3cqZAp">
          <node concept="2OqwBi" id="3Vmdkvuhh6H" role="3clFbG">
            <node concept="liA8E" id="3Vmdkvuhh6I" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent)" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="6gc0uWWlDk8" role="37wK5m">
                <ref role="1PxDUh" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
                <ref role="3cqZAo" to="hdhb:6gc0uWWfBpD" resolve="NEXT_CHANGE_SHORTCUT" />
              </node>
              <node concept="37vLTw" id="3Vmdkvuhh6L" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwvDnm" resolve="myPanel" />
              </node>
            </node>
            <node concept="2OqwBi" id="3Vmdkvuhh6M" role="2Oq$k0">
              <node concept="liA8E" id="3Vmdkvuhh6N" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbW" resolve="nextAction" />
              </node>
              <node concept="37vLTw" id="3Vmdkvuhh6O" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5J3UphNK8hP" role="3cqZAp">
          <node concept="2OqwBi" id="5J3UphNK8hQ" role="3clFbG">
            <node concept="liA8E" id="5J3UphNK8hR" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.addSeparator()" resolve="addSeparator" />
            </node>
            <node concept="37vLTw" id="5J3UphNK8hS" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2OJKTJ7uRkU" role="3cqZAp">
          <node concept="2OqwBi" id="2OJKTJ7uUFt" role="3clFbG">
            <node concept="liA8E" id="2OJKTJ7uZ1i" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="2OJKTJ7v1Mu" role="37wK5m">
                <node concept="1pGfFk" id="3ELCs8Fexdd" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="3ELCs8FdrJz" resolve="MergeRootsPane.ShowInspectorAction" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2OJKTJ7uRkT" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4pxesIq08UX" role="3cqZAp">
          <node concept="2OqwBi" id="4pxesIq08UY" role="3clFbG">
            <node concept="liA8E" id="4pxesIq08UZ" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="2wTEqNK$qx9" role="37wK5m">
                <node concept="1pGfFk" id="3ELCs8Fg1yG" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="3ELCs8FfyNx" resolve="MergeRootsPane.SyncScrollingAction" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4pxesIq08Vq" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44EradnP2SP" role="3cqZAp">
          <node concept="2OqwBi" id="44EradnP2SQ" role="3clFbG">
            <node concept="liA8E" id="44EradnP2SR" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="44EradnP2SS" role="37wK5m">
                <node concept="1pGfFk" id="44EradnP2ST" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="44EradnORKG" resolve="MergeRootsPane.SettingsAction" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="44EradnP2SU" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3SMO48Glg$R" role="1B3o_S" />
      <node concept="3cqZAl" id="3SMO48Gll7g" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3ELCs8FcvLt" role="jymVt" />
    <node concept="312cEu" id="3ELCs8FcPKz" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ShowInspectorAction" />
      <node concept="3clFbW" id="3ELCs8FdrJz" role="jymVt">
        <node concept="3cqZAl" id="3ELCs8FdrJ_" role="3clF45" />
        <node concept="3Tm6S6" id="3ELCs8FdrJA" role="1B3o_S" />
        <node concept="3clFbS" id="3ELCs8FdrJB" role="3clF47">
          <node concept="XkiVB" id="3ELCs8Fdt$q" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="ToggleAction" />
            <node concept="Xl_RD" id="2OJKTJ7ysKj" role="37wK5m">
              <property role="Xl_RC" value="Show Inspector" />
            </node>
            <node concept="Xl_RD" id="3Pc1BYGlNsj" role="37wK5m">
              <property role="Xl_RC" value="Show Inspector Windows" />
            </node>
            <node concept="10M0yZ" id="5p4dR3XKKdU" role="37wK5m">
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              <ref role="3cqZAo" to="xnls:~IdeIcons.INSPECTOR_ICON" resolve="INSPECTOR_ICON" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3ELCs8FcHPr" role="1B3o_S" />
      <node concept="3uibUv" id="3ELCs8Fd1Hn" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
      </node>
      <node concept="3uibUv" id="2VmZckbbURb" role="EKbjA">
        <ref role="3uigEE" to="4nm9:~DumbAware" resolve="DumbAware" />
      </node>
      <node concept="3clFb_" id="2OJKTJ7vyNg" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isSelected" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="2OJKTJ7vyNh" role="1B3o_S" />
        <node concept="10P_77" id="2OJKTJ7vyNj" role="3clF45" />
        <node concept="37vLTG" id="2OJKTJ7vyNk" role="3clF46">
          <property role="TrG5h" value="e" />
          <node concept="3uibUv" id="2OJKTJ7vyNl" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="2OJKTJ7vyNm" role="3clF47">
          <node concept="3clFbF" id="2OJKTJ7vCp_" role="3cqZAp">
            <node concept="37vLTw" id="2OJKTJ7vCp$" role="3clFbG">
              <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3ELCs8FdJjz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2OJKTJ7vyNo" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setSelected" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="2OJKTJ7vyNp" role="1B3o_S" />
        <node concept="3cqZAl" id="2OJKTJ7vyNr" role="3clF45" />
        <node concept="37vLTG" id="2OJKTJ7vyNs" role="3clF46">
          <property role="TrG5h" value="e" />
          <node concept="3uibUv" id="2OJKTJ7vyNt" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="37vLTG" id="2OJKTJ7vyNu" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="10P_77" id="2OJKTJ7vyNv" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2OJKTJ7vyNw" role="3clF47">
          <node concept="3clFbF" id="4HKxPX1GG0A" role="3cqZAp">
            <node concept="1rXfSq" id="4HKxPX1GG0_" role="3clFbG">
              <ref role="37wK5l" node="4HKxPX1Gan6" resolve="showInspector" />
              <node concept="37vLTw" id="4HKxPX1GJ8z" role="37wK5m">
                <ref role="3cqZAo" node="2OJKTJ7vyNu" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3ELCs8FdJQi" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7EUe9r9xZmd" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="7EUe9r9xZme" role="1B3o_S" />
        <node concept="2AHcQZ" id="7EUe9r9xZmg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="7EUe9r9xZmh" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="7EUe9r9xZmk" role="3clF47">
          <node concept="3clFbF" id="7EUe9r9z6SR" role="3cqZAp">
            <node concept="Rm8GO" id="7EUe9r9zvyT" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.EDT" resolve="EDT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7EUe9r9xZml" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3ELCs8Ff2V3" role="jymVt" />
    <node concept="312cEu" id="3ELCs8Ffe8F" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="SyncScrollingAction" />
      <node concept="3clFbW" id="3ELCs8FfyNx" role="jymVt">
        <node concept="3cqZAl" id="3ELCs8FfyNz" role="3clF45" />
        <node concept="3Tm6S6" id="3ELCs8FfyN$" role="1B3o_S" />
        <node concept="3clFbS" id="3ELCs8FfyN_" role="3clF47">
          <node concept="XkiVB" id="3ELCs8FfC06" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.util.function.Supplier,javax.swing.Icon)" resolve="ToggleAction" />
            <node concept="1bVj0M" id="2wTEqNKAvTw" role="37wK5m">
              <node concept="3clFbS" id="2wTEqNKAvTy" role="1bW5cS">
                <node concept="3clFbF" id="2wTEqNKAw0u" role="3cqZAp">
                  <node concept="2YIFZM" id="2wTEqNK_8ON" role="3clFbG">
                    <ref role="1Pybhc" to="ok99:~DiffBundle" resolve="DiffBundle" />
                    <ref role="37wK5l" to="ok99:~DiffBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                    <node concept="Xl_RD" id="2wTEqNK_8OO" role="37wK5m">
                      <property role="Xl_RC" value="synchronize.scrolling" />
                    </node>
                    <node concept="2ShNRf" id="2wTEqNKA$0q" role="37wK5m">
                      <node concept="3$_iS1" id="2wTEqNKAO8A" role="2ShVmc">
                        <node concept="3$GHV9" id="2wTEqNKAO8C" role="3$GQph">
                          <node concept="3cmrfG" id="2wTEqNKAQC1" role="3$I4v7">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="2wTEqNKAMmb" role="3$_nBY">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2wTEqNK_65_" role="37wK5m">
              <ref role="3cqZAo" to="xnls:~IdeIcons.SYNC_SCROLLING" resolve="SYNC_SCROLLING" />
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3ELCs8Ff9SR" role="1B3o_S" />
      <node concept="3uibUv" id="3ELCs8Ffq4o" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
      </node>
      <node concept="3uibUv" id="2VmZckbbF3l" role="EKbjA">
        <ref role="3uigEE" to="4nm9:~DumbAware" resolve="DumbAware" />
      </node>
      <node concept="3clFb_" id="2wTEqNK$Z5i" role="jymVt">
        <property role="TrG5h" value="isSelected" />
        <node concept="3Tm1VV" id="2wTEqNK$Z5j" role="1B3o_S" />
        <node concept="10P_77" id="2wTEqNK$Z5l" role="3clF45" />
        <node concept="37vLTG" id="2wTEqNK$Z5m" role="3clF46">
          <property role="TrG5h" value="p1" />
          <node concept="3uibUv" id="2wTEqNK$Z5n" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
          <node concept="2AHcQZ" id="2wTEqNK$Z5o" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2wTEqNK$Z5p" role="3clF47">
          <node concept="3clFbF" id="2UWfovzNiwz" role="3cqZAp">
            <node concept="1rXfSq" id="2UWfovzNiwx" role="3clFbG">
              <ref role="37wK5l" node="6JaxsqziG0K" resolve="isEditorsScrollingSyncOptionEnabled" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2wTEqNK$Z5r" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2wTEqNK$Z5t" role="jymVt">
        <property role="TrG5h" value="setSelected" />
        <node concept="3Tm1VV" id="2wTEqNK$Z5u" role="1B3o_S" />
        <node concept="3cqZAl" id="2wTEqNK$Z5w" role="3clF45" />
        <node concept="37vLTG" id="2wTEqNK$Z5x" role="3clF46">
          <property role="TrG5h" value="e" />
          <node concept="3uibUv" id="2wTEqNK$Z5y" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
          <node concept="2AHcQZ" id="2wTEqNK$Z5z" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2wTEqNK$Z5$" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="10P_77" id="2wTEqNK$Z5_" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2wTEqNK$Z5A" role="3clF47">
          <node concept="3clFbF" id="2wTEqNK_6YG" role="3cqZAp">
            <node concept="1rXfSq" id="2wTEqNK_6YH" role="3clFbG">
              <ref role="37wK5l" node="4pxesIq16Uy" resolve="saveEditorsScrollingSyncOption" />
              <node concept="37vLTw" id="2wTEqNK_8jS" role="37wK5m">
                <ref role="3cqZAo" node="2wTEqNK$Z5$" resolve="b" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2wTEqNKC5Ga" role="3cqZAp">
            <node concept="1rXfSq" id="2wTEqNKC5G8" role="3clFbG">
              <ref role="37wK5l" node="2wTEqNKBQW3" resolve="enableEditorsScrollingSynchronization" />
              <node concept="37vLTw" id="2wTEqNKC7Aq" role="37wK5m">
                <ref role="3cqZAo" node="2wTEqNK$Z5$" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2wTEqNK$Z5C" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2wTEqNKARvA" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="3Tm1VV" id="2wTEqNKARvB" role="1B3o_S" />
        <node concept="3cqZAl" id="2wTEqNKARvD" role="3clF45" />
        <node concept="37vLTG" id="2wTEqNKARvE" role="3clF46">
          <property role="TrG5h" value="e" />
          <node concept="3uibUv" id="2wTEqNKARvF" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
          <node concept="2AHcQZ" id="2wTEqNKARvG" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2wTEqNKARvI" role="3clF47">
          <node concept="3clFbF" id="2wTEqNKARvM" role="3cqZAp">
            <node concept="3nyPlj" id="2wTEqNKARvL" role="3clFbG">
              <ref role="37wK5l" to="qkt:~ToggleAction.update(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="update" />
              <node concept="37vLTw" id="2wTEqNKARvK" role="37wK5m">
                <ref role="3cqZAo" node="2wTEqNKARvE" resolve="e" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2wTEqNKC9HI" role="3cqZAp">
            <node concept="1rXfSq" id="2wTEqNKC9HG" role="3clFbG">
              <ref role="37wK5l" node="2wTEqNKBQW3" resolve="enableEditorsScrollingSynchronization" />
              <node concept="1rXfSq" id="2UWfovzNj_j" role="37wK5m">
                <ref role="37wK5l" node="6JaxsqziG0K" resolve="isEditorsScrollingSyncOptionEnabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2wTEqNKARvJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7EUe9r9zQQW" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="7EUe9r9zQQX" role="1B3o_S" />
        <node concept="2AHcQZ" id="7EUe9r9zQQY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="7EUe9r9zQQZ" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="7EUe9r9zQR0" role="3clF47">
          <node concept="3clFbF" id="7EUe9r9zQR1" role="3cqZAp">
            <node concept="Rm8GO" id="7EUe9r9zQR2" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.EDT" resolve="EDT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7EUe9r9zQR3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="44EradnO1VY" role="jymVt" />
    <node concept="312cEu" id="44EradnOgY5" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="SettingsAction" />
      <node concept="2tJIrI" id="44EradnOQtD" role="jymVt" />
      <node concept="3clFbW" id="44EradnORKG" role="jymVt">
        <node concept="3cqZAl" id="44EradnORKI" role="3clF45" />
        <node concept="3Tm6S6" id="44EradnORKJ" role="1B3o_S" />
        <node concept="3clFbS" id="44EradnORKK" role="3clF47">
          <node concept="XkiVB" id="44EradnOTde" role="3cqZAp">
            <ref role="37wK5l" to="7bx7:~BaseGroup.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="BaseGroup" />
            <node concept="Xl_RD" id="40$eyTd3fCs" role="37wK5m">
              <property role="Xl_RC" value="Settings" />
            </node>
            <node concept="10Nm6u" id="40$eyTd3fR8" role="37wK5m" />
            <node concept="10M0yZ" id="2rTrEwcR0mt" role="37wK5m">
              <ref role="3cqZAo" to="xnls:~IdeIcons.GEAR_PLAIN_ICON" resolve="GEAR_PLAIN_ICON" />
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
            </node>
          </node>
          <node concept="3clFbF" id="40$eyTd3iFJ" role="3cqZAp">
            <node concept="1rXfSq" id="40$eyTd3iFH" role="3clFbG">
              <ref role="37wK5l" to="qkt:~ActionGroup.setPopup(boolean)" resolve="setPopup" />
              <node concept="3clFbT" id="40$eyTd3iWb" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="44EradnOYnr" role="jymVt" />
      <node concept="3clFb_" id="40$eyTd3cDi" role="jymVt">
        <property role="TrG5h" value="getChildren" />
        <node concept="3Tm1VV" id="40$eyTd3cDj" role="1B3o_S" />
        <node concept="10Q1$e" id="40$eyTd3cDl" role="3clF45">
          <node concept="3uibUv" id="40$eyTd3cDm" role="10Q1$1">
            <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
          </node>
        </node>
        <node concept="37vLTG" id="40$eyTd3cDn" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="40$eyTd3cDo" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
          <node concept="2AHcQZ" id="40$eyTd3cDp" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="40$eyTd3cDq" role="3clF47">
          <node concept="3cpWs6" id="4Eo9MbHmk4i" role="3cqZAp">
            <node concept="2ShNRf" id="VRt2v0tPPh" role="3cqZAk">
              <node concept="3g6Rrh" id="VRt2v0uKc1" role="2ShVmc">
                <node concept="2ShNRf" id="VRt2v0uKce" role="3g7hyw">
                  <node concept="1pGfFk" id="VRt2v0uKcf" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="6wKQvsBVQDA" resolve="MergeRootsPane.UseShortChangeDescriptionsAction" />
                  </node>
                </node>
                <node concept="2ShNRf" id="VRt2v0uKcm" role="3g7hyw">
                  <node concept="1pGfFk" id="VRt2v0uKcn" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="6wKQvsBWKGs" resolve="MergeRootsPane.TrackMovedNodesAction" />
                  </node>
                </node>
                <node concept="3uibUv" id="VRt2v0uIIj" role="3g7fb8">
                  <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="40$eyTd3cDr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="44EradnOaoQ" role="1B3o_S" />
      <node concept="3uibUv" id="44EradnOLc9" role="1zkMxy">
        <ref role="3uigEE" to="7bx7:~BaseGroup" resolve="BaseGroup" />
      </node>
    </node>
    <node concept="2tJIrI" id="44EradnM4u5" role="jymVt" />
    <node concept="312cEu" id="6wKQvsBWEh0" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TrackMovedNodesAction" />
      <node concept="2tJIrI" id="6wKQvsBX7vO" role="jymVt" />
      <node concept="3clFbW" id="6wKQvsBWKGs" role="jymVt">
        <node concept="3cqZAl" id="6wKQvsBWKGu" role="3clF45" />
        <node concept="3Tm6S6" id="6wKQvsBWKGv" role="1B3o_S" />
        <node concept="3clFbS" id="6wKQvsBWKGw" role="3clF47">
          <node concept="XkiVB" id="6wKQvsBWN61" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String)" resolve="ToggleAction" />
            <node concept="Xl_RD" id="4Eo9MbHmht3" role="37wK5m">
              <property role="Xl_RC" value="Track Moved Nodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6wKQvsBX6kh" role="jymVt" />
      <node concept="3clFb_" id="4Eo9MbHmhsv" role="jymVt">
        <property role="TrG5h" value="isSelected" />
        <node concept="3Tm1VV" id="4Eo9MbHmhsw" role="1B3o_S" />
        <node concept="10P_77" id="4Eo9MbHmhsx" role="3clF45" />
        <node concept="37vLTG" id="4Eo9MbHmhsy" role="3clF46">
          <property role="TrG5h" value="p1" />
          <node concept="3uibUv" id="4Eo9MbHmhsz" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
          <node concept="2AHcQZ" id="4Eo9MbHmhs$" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="4Eo9MbHmhs_" role="3clF47">
          <node concept="3clFbF" id="2G2A2CbXKO1" role="3cqZAp">
            <node concept="2YIFZM" id="3dZ7d0z3Fud" role="3clFbG">
              <ref role="37wK5l" to="hdhb:3dZ7d0z1c1U" resolve="getTrackMovedNodesMergeOption" />
              <ref role="1Pybhc" to="hdhb:2G2A2CbSLhf" resolve="DiffSettingsUtil" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4Eo9MbHmhsG" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4Eo9MbHmhsH" role="jymVt" />
      <node concept="3clFb_" id="4Eo9MbHmhsI" role="jymVt">
        <property role="TrG5h" value="setSelected" />
        <node concept="3Tm1VV" id="4Eo9MbHmhsJ" role="1B3o_S" />
        <node concept="3cqZAl" id="4Eo9MbHmhsK" role="3clF45" />
        <node concept="37vLTG" id="4Eo9MbHmhsL" role="3clF46">
          <property role="TrG5h" value="p1" />
          <node concept="3uibUv" id="4Eo9MbHmhsM" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
          <node concept="2AHcQZ" id="4Eo9MbHmhsN" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="4Eo9MbHmhsO" role="3clF46">
          <property role="TrG5h" value="p2" />
          <node concept="10P_77" id="4Eo9MbHmhsP" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4Eo9MbHmhsQ" role="3clF47">
          <node concept="3clFbF" id="44EradnQs9Q" role="3cqZAp">
            <node concept="2EnYce" id="1lHayUSGoRy" role="3clFbG">
              <node concept="37vLTw" id="44EradnQs9O" role="2Oq$k0">
                <ref role="3cqZAo" node="44EradnMMm1" resolve="myTrackMovedNodesModeUpdater" />
              </node>
              <node concept="liA8E" id="44EradnQt56" role="2OqNvi">
                <ref role="37wK5l" node="44EradnMxn1" resolve="trackMovedNodesModeChanged" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4Eo9MbHmht2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7EUe9r9$U8z" role="jymVt" />
      <node concept="3clFb_" id="7EUe9r9$5Vc" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="7EUe9r9$5Vd" role="1B3o_S" />
        <node concept="2AHcQZ" id="7EUe9r9$5Ve" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="7EUe9r9$5Vf" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="7EUe9r9$5Vg" role="3clF47">
          <node concept="3clFbF" id="7EUe9r9$5Vh" role="3cqZAp">
            <node concept="Rm8GO" id="7EUe9r9$5Vi" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.EDT" resolve="EDT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7EUe9r9$5Vj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6wKQvsBWCcq" role="1B3o_S" />
      <node concept="3uibUv" id="6wKQvsBWHt9" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
      </node>
      <node concept="3uibUv" id="_jo$4cBOVn" role="EKbjA">
        <ref role="3uigEE" to="4nm9:~DumbAware" resolve="DumbAware" />
      </node>
    </node>
    <node concept="2tJIrI" id="44EradnQ8Oh" role="jymVt" />
    <node concept="312cEu" id="6wKQvsBVH$a" role="jymVt">
      <property role="TrG5h" value="UseShortChangeDescriptionsAction" />
      <node concept="2tJIrI" id="6wKQvsBVRFb" role="jymVt" />
      <node concept="3clFbW" id="6wKQvsBVQDA" role="jymVt">
        <node concept="3cqZAl" id="6wKQvsBVQDC" role="3clF45" />
        <node concept="3Tm6S6" id="6wKQvsBVQDD" role="1B3o_S" />
        <node concept="3clFbS" id="6wKQvsBVQDE" role="3clF47">
          <node concept="XkiVB" id="6wKQvsBVVhB" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String)" resolve="ToggleAction" />
            <node concept="Xl_RD" id="5W3z09jLNoo" role="37wK5m">
              <property role="Xl_RC" value="Use Short Change Descriptions" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6wKQvsBYdjo" role="jymVt" />
      <node concept="3clFb_" id="5W3z09jLNnO" role="jymVt">
        <property role="TrG5h" value="isSelected" />
        <node concept="3Tm1VV" id="5W3z09jLNnP" role="1B3o_S" />
        <node concept="10P_77" id="5W3z09jLNnQ" role="3clF45" />
        <node concept="37vLTG" id="5W3z09jLNnR" role="3clF46">
          <property role="TrG5h" value="p1" />
          <node concept="3uibUv" id="5W3z09jLNnS" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
          <node concept="2AHcQZ" id="5W3z09jLNnT" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="5W3z09jLNnU" role="3clF47">
          <node concept="3clFbF" id="2G2A2CbVXi5" role="3cqZAp">
            <node concept="2YIFZM" id="2G2A2CbVY66" role="3clFbG">
              <ref role="37wK5l" to="hdhb:2G2A2CbUvQA" resolve="getUseShortDescriptionsOption" />
              <ref role="1Pybhc" to="hdhb:2G2A2CbSLhf" resolve="DiffSettingsUtil" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5W3z09jLNo1" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5W3z09jLNo2" role="jymVt" />
      <node concept="3clFb_" id="5W3z09jLNo3" role="jymVt">
        <property role="TrG5h" value="setSelected" />
        <node concept="3Tm1VV" id="5W3z09jLNo4" role="1B3o_S" />
        <node concept="3cqZAl" id="5W3z09jLNo5" role="3clF45" />
        <node concept="37vLTG" id="5W3z09jLNo6" role="3clF46">
          <property role="TrG5h" value="p1" />
          <node concept="3uibUv" id="5W3z09jLNo7" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
          <node concept="2AHcQZ" id="5W3z09jLNo8" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="5W3z09jLNo9" role="3clF46">
          <property role="TrG5h" value="p2" />
          <node concept="10P_77" id="5W3z09jLNoa" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="5W3z09jLNob" role="3clF47">
          <node concept="3clFbF" id="2G2A2CbWbba" role="3cqZAp">
            <node concept="2YIFZM" id="2G2A2CbWbYE" role="3clFbG">
              <ref role="1Pybhc" to="hdhb:2G2A2CbSLhf" resolve="DiffSettingsUtil" />
              <ref role="37wK5l" to="hdhb:2G2A2CbW5WC" resolve="setUseShortDescriptionsOption" />
              <node concept="37vLTw" id="2G2A2CbWdFb" role="37wK5m">
                <ref role="3cqZAo" node="5W3z09jLNo9" resolve="p2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5W3z09jLNon" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6wKQvsBVFUE" role="1B3o_S" />
      <node concept="3uibUv" id="6wKQvsBVKke" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
      </node>
      <node concept="3uibUv" id="_jo$4cCn1P" role="EKbjA">
        <ref role="3uigEE" to="4nm9:~DumbAware" resolve="DumbAware" />
      </node>
      <node concept="2tJIrI" id="7Ei9SmbfIpq" role="jymVt" />
      <node concept="3clFb_" id="6lFKwfyH6mh" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="6lFKwfyH6mi" role="1B3o_S" />
        <node concept="2AHcQZ" id="6lFKwfyH6mj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6lFKwfyH6mk" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="6lFKwfyH6ml" role="3clF47">
          <node concept="3clFbF" id="6lFKwfyH6mm" role="3cqZAp">
            <node concept="Rm8GO" id="6lFKwfyH6mn" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.BGT" resolve="BGT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6lFKwfyH6mo" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="44EradnQcZ1" role="jymVt" />
    <node concept="3HP615" id="44EradnMloV" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TrackMovedNodesModeUpdater" />
      <node concept="3clFb_" id="44EradnMxn1" role="jymVt">
        <property role="TrG5h" value="trackMovedNodesModeChanged" />
        <node concept="3clFbS" id="44EradnMxn4" role="3clF47" />
        <node concept="3Tm1VV" id="44EradnMxn5" role="1B3o_S" />
        <node concept="3cqZAl" id="44EradnMxaW" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="44EradnMloW" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5a3yE9GTDWF" role="jymVt" />
    <node concept="312cEu" id="2RS8k$i2erq" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyDividerPainter" />
      <node concept="2tJIrI" id="5c$TSd$Qt7A" role="jymVt" />
      <node concept="312cEg" id="5rV$5P0HKo0" role="jymVt">
        <property role="TrG5h" value="mine" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5rV$5P0HJru" role="1B3o_S" />
        <node concept="10P_77" id="5rV$5P0HKgo" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="5rV$5P0HWK8" role="jymVt" />
      <node concept="3clFbW" id="5c$TSd$Q$gu" role="jymVt">
        <node concept="3cqZAl" id="5c$TSd$Q$gv" role="3clF45" />
        <node concept="3clFbS" id="5c$TSd$Q$gx" role="3clF47">
          <node concept="3clFbF" id="5rV$5P0HMWN" role="3cqZAp">
            <node concept="37vLTI" id="5rV$5P0HNHs" role="3clFbG">
              <node concept="37vLTw" id="5rV$5P0HOjI" role="37vLTx">
                <ref role="3cqZAo" node="5c$TSd$Q_Ks" resolve="mine" />
              </node>
              <node concept="2OqwBi" id="5rV$5P0HN8t" role="37vLTJ">
                <node concept="Xjq3P" id="5rV$5P0HMWM" role="2Oq$k0" />
                <node concept="2OwXpG" id="5rV$5P0HNk1" role="2OqNvi">
                  <ref role="2Oxat5" node="5rV$5P0HKo0" resolve="mine" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5c$TSd$QyUi" role="1B3o_S" />
        <node concept="37vLTG" id="5c$TSd$Q_Ks" role="3clF46">
          <property role="TrG5h" value="mine" />
          <node concept="10P_77" id="5rV$5P0HLTf" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="5c$TSd$Qxsh" role="jymVt" />
      <node concept="3Tm6S6" id="2RS8k$i2aFA" role="1B3o_S" />
      <node concept="3uibUv" id="lPG7LaYIAU" role="EKbjA">
        <ref role="3uigEE" to="ksd0:~DiffSplitter$Painter" resolve="DiffSplitter.Painter" />
      </node>
      <node concept="3clFb_" id="2RS8k$i2juS" role="jymVt">
        <property role="TrG5h" value="paint" />
        <node concept="3Tm1VV" id="2RS8k$i2juT" role="1B3o_S" />
        <node concept="3cqZAl" id="2RS8k$i2juV" role="3clF45" />
        <node concept="37vLTG" id="2RS8k$i2juW" role="3clF46">
          <property role="TrG5h" value="g" />
          <node concept="3uibUv" id="2RS8k$i2juX" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
          <node concept="2AHcQZ" id="2RS8k$i2juY" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2RS8k$i2juZ" role="3clF46">
          <property role="TrG5h" value="divider" />
          <node concept="3uibUv" id="2RS8k$i2jv0" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
          </node>
          <node concept="2AHcQZ" id="2RS8k$i2jv1" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2RS8k$i2jv2" role="3clF47">
          <node concept="3clFbF" id="KAZ6yA4Q9t" role="3cqZAp">
            <node concept="1rXfSq" id="KAZ6yA4Q9r" role="3clFbG">
              <ref role="37wK5l" node="4IqUOF2WpDY" resolve="paintDividerPart" />
              <node concept="37vLTw" id="KAZ6yA4RVV" role="37wK5m">
                <ref role="3cqZAo" node="2RS8k$i2juW" resolve="g" />
              </node>
              <node concept="37vLTw" id="KAZ6yA4SSq" role="37wK5m">
                <ref role="3cqZAo" node="2RS8k$i2juZ" resolve="divider" />
              </node>
              <node concept="3clFbT" id="1IfhBCOEv1u" role="37wK5m" />
            </node>
          </node>
          <node concept="3clFbJ" id="2b_mBgxorne" role="3cqZAp">
            <node concept="3clFbS" id="2b_mBgxorng" role="3clFbx">
              <node concept="3clFbF" id="KAZ6yA59xY" role="3cqZAp">
                <node concept="1rXfSq" id="KAZ6yA59xW" role="3clFbG">
                  <ref role="37wK5l" node="4IqUOF2WpDY" resolve="paintDividerPart" />
                  <node concept="37vLTw" id="KAZ6yA5bka" role="37wK5m">
                    <ref role="3cqZAo" node="2RS8k$i2juW" resolve="g" />
                  </node>
                  <node concept="37vLTw" id="KAZ6yA5d5s" role="37wK5m">
                    <ref role="3cqZAo" node="2RS8k$i2juZ" resolve="divider" />
                  </node>
                  <node concept="3clFbT" id="1IfhBCOEvFy" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="amHQ2R0_mP" role="3clFbw">
              <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2RS8k$i2jv3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3cdyCVriv_3" role="jymVt" />
      <node concept="3clFb_" id="4IqUOF2WpDY" role="jymVt">
        <property role="TrG5h" value="paintDividerPart" />
        <node concept="37vLTG" id="4IqUOF2WqIt" role="3clF46">
          <property role="TrG5h" value="g" />
          <node concept="3uibUv" id="4IqUOF2WqIu" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
          <node concept="2AHcQZ" id="4IqUOF2WqIv" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="4IqUOF2WslP" role="3clF46">
          <property role="TrG5h" value="divider" />
          <node concept="3uibUv" id="4IqUOF2WslQ" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
          </node>
          <node concept="2AHcQZ" id="4IqUOF2WslR" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="4IqUOF2WpE1" role="3clF47">
          <node concept="3cpWs8" id="1zZcg$v3AB6" role="3cqZAp">
            <node concept="3cpWsn" id="1zZcg$v3AB7" role="3cpWs9">
              <property role="TrG5h" value="layout" />
              <node concept="3uibUv" id="1zZcg$v3AB8" role="1tU5fm">
                <ref role="3uigEE" to="hdhb:1zZcg$udfju" resolve="TripleChangeGroupLayout" />
              </node>
              <node concept="3K4zz7" id="1zZcg$v3DG2" role="33vP2m">
                <node concept="37vLTw" id="1zZcg$v3F9y" role="3K4E3e">
                  <ref role="3cqZAo" node="1zZcg$v3uDs" resolve="myInspectorLayout" />
                </node>
                <node concept="37vLTw" id="1zZcg$v3GMW" role="3K4GZi">
                  <ref role="3cqZAo" node="1zZcg$v3iuq" resolve="myMainLayout" />
                </node>
                <node concept="37vLTw" id="1zZcg$v3CNH" role="3K4Cdx">
                  <ref role="3cqZAo" node="1IfhBCOEtkl" resolve="inspector" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6lKULjmJAum" role="3cqZAp">
            <node concept="3cpWsn" id="6lKULjmJAun" role="3cpWs9">
              <property role="TrG5h" value="leftEditor" />
              <node concept="3uibUv" id="6lKULjmJAuo" role="1tU5fm">
                <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
              </node>
              <node concept="3K4zz7" id="6lKULjmJC1S" role="33vP2m">
                <node concept="37vLTw" id="6lKULjmJJUP" role="3K4E3e">
                  <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
                </node>
                <node concept="37vLTw" id="6lKULjmJKKA" role="3K4GZi">
                  <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                </node>
                <node concept="37vLTw" id="6lKULjmJBsk" role="3K4Cdx">
                  <ref role="3cqZAo" node="5rV$5P0HKo0" resolve="mine" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6lKULjmJM1M" role="3cqZAp">
            <node concept="3cpWsn" id="6lKULjmJM1N" role="3cpWs9">
              <property role="TrG5h" value="rightEditor" />
              <node concept="3uibUv" id="6lKULjmJM1O" role="1tU5fm">
                <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
              </node>
              <node concept="3K4zz7" id="6lKULjmJNle" role="33vP2m">
                <node concept="37vLTw" id="6lKULjmJO0Z" role="3K4E3e">
                  <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                </node>
                <node concept="37vLTw" id="6lKULjmJOQV" role="3K4GZi">
                  <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
                </node>
                <node concept="37vLTw" id="6lKULjmJMI7" role="3K4Cdx">
                  <ref role="3cqZAo" node="5rV$5P0HKo0" resolve="mine" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3cdyCVr$kL2" role="3cqZAp">
            <node concept="2OqwBi" id="3cdyCVr$lIX" role="3clFbG">
              <node concept="37vLTw" id="3cdyCVr$kL0" role="2Oq$k0">
                <ref role="3cqZAo" node="1zZcg$v3AB7" resolve="layout" />
              </node>
              <node concept="liA8E" id="3cdyCVr$m6X" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:4IqUOF2WpDY" resolve="paintPolygons" />
                <node concept="37vLTw" id="3cdyCVr$n5K" role="37wK5m">
                  <ref role="3cqZAo" node="4IqUOF2WqIt" resolve="g" />
                </node>
                <node concept="37vLTw" id="3cdyCVr$twD" role="37wK5m">
                  <ref role="3cqZAo" node="4IqUOF2WslP" resolve="divider" />
                </node>
                <node concept="37vLTw" id="6lKULjmJPf_" role="37wK5m">
                  <ref role="3cqZAo" node="6lKULjmJAun" resolve="leftEditor" />
                </node>
                <node concept="37vLTw" id="6lKULjmJQ8f" role="37wK5m">
                  <ref role="3cqZAo" node="6lKULjmJM1N" resolve="rightEditor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="4IqUOF2WoAB" role="1B3o_S" />
        <node concept="3cqZAl" id="4IqUOF2Wp_b" role="3clF45" />
        <node concept="37vLTG" id="1IfhBCOEtkl" role="3clF46">
          <property role="TrG5h" value="inspector" />
          <node concept="10P_77" id="1IfhBCOEudb" role="1tU5fm" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="lPG7LaYzOI" role="jymVt" />
    <node concept="3clFb_" id="3SMO48G1KZq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getActions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="3SMO48Gj7m5" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
      </node>
      <node concept="3clFbS" id="3SMO48G1KZt" role="3clF47">
        <node concept="3clFbF" id="3SMO48GgBOw" role="3cqZAp">
          <node concept="37vLTw" id="3SMO48Gjj$d" role="3clFbG">
            <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SMO48G1DBP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfD" role="jymVt" />
    <node concept="3clFb_" id="1H$5hGoppBu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="registerShortcuts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1H$5hGoppBx" role="3clF47">
        <node concept="3clFbF" id="1H$5hGopWOd" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGopWOe" role="3clFbG">
            <node concept="liA8E" id="1H$5hGopWOf" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent)" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="1H$5hGopWOg" role="37wK5m">
                <ref role="1PxDUh" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
                <ref role="3cqZAo" to="hdhb:6gc0uWWfIsG" resolve="PREV_CHANGE_SHORTCUT" />
              </node>
              <node concept="37vLTw" id="1H$5hGoqFne" role="37wK5m">
                <ref role="3cqZAo" node="1H$5hGop_R7" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H$5hGopWOi" role="2Oq$k0">
              <node concept="liA8E" id="1H$5hGopWOj" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbQ" resolve="previousAction" />
              </node>
              <node concept="37vLTw" id="1H$5hGopWOk" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H$5hGopWOw" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGopWOx" role="3clFbG">
            <node concept="liA8E" id="1H$5hGopWOy" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent)" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="1H$5hGopWOz" role="37wK5m">
                <ref role="3cqZAo" to="hdhb:6gc0uWWfBpD" resolve="NEXT_CHANGE_SHORTCUT" />
                <ref role="1PxDUh" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
              </node>
              <node concept="37vLTw" id="1H$5hGoqJaI" role="37wK5m">
                <ref role="3cqZAo" node="1H$5hGop_R7" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H$5hGopWO_" role="2Oq$k0">
              <node concept="liA8E" id="1H$5hGopWOA" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbW" resolve="nextAction" />
              </node>
              <node concept="37vLTw" id="1H$5hGopWOB" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1H$5hGopkQ9" role="1B3o_S" />
      <node concept="3cqZAl" id="1H$5hGoppBr" role="3clF45" />
      <node concept="37vLTG" id="1H$5hGop_R7" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="1H$5hGop_R6" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfE" role="jymVt" />
    <node concept="3clFb_" id="1H$5hGoqbcQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="unregisterShortcuts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1H$5hGoqhkI" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="1H$5hGoqhkJ" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="1H$5hGoqbcT" role="3clF47">
        <node concept="3clFbF" id="1H$5hGoqmD4" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGoqmD5" role="3clFbG">
            <node concept="liA8E" id="1H$5hGoqmD6" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~AnAction.unregisterCustomShortcutSet(javax.swing.JComponent)" resolve="unregisterCustomShortcutSet" />
              <node concept="37vLTw" id="1H$5hGoqN6p" role="37wK5m">
                <ref role="3cqZAo" node="1H$5hGoqhkI" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H$5hGoqmD9" role="2Oq$k0">
              <node concept="liA8E" id="1H$5hGoqmDa" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbQ" resolve="previousAction" />
              </node>
              <node concept="37vLTw" id="1H$5hGoqmDb" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H$5hGoqmDn" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGoqmDo" role="3clFbG">
            <node concept="liA8E" id="1H$5hGoqmDp" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~AnAction.unregisterCustomShortcutSet(javax.swing.JComponent)" resolve="unregisterCustomShortcutSet" />
              <node concept="37vLTw" id="1H$5hGoqQHE" role="37wK5m">
                <ref role="3cqZAo" node="1H$5hGoqhkI" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H$5hGoqmDs" role="2Oq$k0">
              <node concept="liA8E" id="1H$5hGoqmDt" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbW" resolve="nextAction" />
              </node>
              <node concept="37vLTw" id="1H$5hGoqmDu" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1H$5hGoq6ke" role="1B3o_S" />
      <node concept="3cqZAl" id="1H$5hGoqbcO" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfF" role="jymVt" />
    <node concept="3clFb_" id="3SMO48FPvtW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPanel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3SMO48FPvtZ" role="3clF47">
        <node concept="3clFbF" id="3SMO48FPxUE" role="3cqZAp">
          <node concept="37vLTw" id="3SMO48FPxUD" role="3clFbG">
            <ref role="3cqZAo" node="2jv$fqwvDnm" resolve="myPanel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SMO48FPnHH" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48FPvtz" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwBJA1" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevmm" role="jymVt">
      <property role="TrG5h" value="getRootId" />
      <node concept="3uibUv" id="2jv$fqwBWcZ" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm1VV" id="2jv$fqwevmo" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwevmp" role="3clF47">
        <node concept="3cpWs6" id="2jv$fqwevmq" role="3cqZAp">
          <node concept="37vLTw" id="2jv$fqwBSYy" role="3cqZAk">
            <ref role="3cqZAo" node="2jv$fqwev7a" resolve="myRootId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfG" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevd6" role="jymVt">
      <property role="TrG5h" value="setRootId" />
      <node concept="3cqZAl" id="2jv$fqwevd7" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwevd8" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwevd9" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwevda" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwevdb" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwevdc" role="37vLTx">
              <ref role="3cqZAo" node="2jv$fqweve3" resolve="rootId" />
            </node>
            <node concept="37vLTw" id="2jv$fqwevdd" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev7a" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevdj" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwevdk" role="3clFbG">
            <node concept="2OqwBi" id="2jv$fqwevdl" role="37vLTx">
              <node concept="liA8E" id="2jv$fqwevdm" role="2OqNvi">
                <ref role="37wK5l" to="bmv6:2KMWrOXoI3m" resolve="getCurrentFullState" />
              </node>
              <node concept="37vLTw" id="2jv$fqwevdn" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqwevdo" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev87" resolve="myStateToRestore" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevdp" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevdq" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwevdr" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevds" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:4$Wo$6lALaX" resolve="editRoot" />
              <node concept="1rXfSq" id="2jv$fqwevdu" role="37wK5m">
                <ref role="37wK5l" node="2jv$fqwevjZ" resolve="getRootNodeId" />
                <node concept="2OqwBi" id="2jv$fqwevdv" role="37wK5m">
                  <node concept="liA8E" id="2jv$fqwevdw" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                  </node>
                  <node concept="37vLTw" id="2jv$fqwevdx" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2jv$fqwevdy" role="37wK5m">
                <node concept="liA8E" id="2jv$fqwevdz" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                </node>
                <node concept="37vLTw" id="2jv$fqwevd$" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevd_" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevdA" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwevdB" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevdC" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:4$Wo$6lALaX" resolve="editRoot" />
              <node concept="1rXfSq" id="2jv$fqwevdE" role="37wK5m">
                <ref role="37wK5l" node="2jv$fqwevjZ" resolve="getRootNodeId" />
                <node concept="2OqwBi" id="2jv$fqwevdF" role="37wK5m">
                  <node concept="liA8E" id="2jv$fqwevdG" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                  </node>
                  <node concept="37vLTw" id="2jv$fqwevdH" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2jv$fqwevdI" role="37wK5m">
                <node concept="liA8E" id="2jv$fqwevdJ" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                </node>
                <node concept="37vLTw" id="2jv$fqwevdK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevdL" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevdM" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwevdN" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevdO" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:4$Wo$6lALaX" resolve="editRoot" />
              <node concept="1rXfSq" id="2jv$fqwevdQ" role="37wK5m">
                <ref role="37wK5l" node="2jv$fqwevjZ" resolve="getRootNodeId" />
                <node concept="2OqwBi" id="2jv$fqwevdR" role="37wK5m">
                  <node concept="liA8E" id="2jv$fqwevdS" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                  </node>
                  <node concept="37vLTw" id="2jv$fqwevdT" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2jv$fqwevdU" role="37wK5m">
                <node concept="liA8E" id="2jv$fqwevdV" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                </node>
                <node concept="37vLTw" id="2jv$fqwevdW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevdX" role="3cqZAp">
          <node concept="1rXfSq" id="2jv$fqwevdY" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwevfx" resolve="rehighlight" />
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevdZ" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqweve0" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqweve1" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev8j" resolve="myTraverser" />
            </node>
            <node concept="liA8E" id="2jv$fqweve2" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHbc2" resolve="goToFirstChangeLater" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqweve3" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="2jv$fqweve4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfH" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqweve7" role="jymVt">
      <property role="TrG5h" value="setRoodId" />
      <node concept="3cqZAl" id="2jv$fqweve8" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqweve9" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwevea" role="3clF47">
        <node concept="3clFbF" id="2jv$fqweveb" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwevec" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqweved" role="37vLTx">
              <ref role="3cqZAo" node="2jv$fqweveJ" resolve="mergeSession" />
            </node>
            <node concept="37vLTw" id="2jv$fqwevee" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevef" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqweveg" role="3clFbG">
            <node concept="2es0OD" id="2jv$fqweveh" role="2OqNvi">
              <node concept="1bVj0M" id="2jv$fqwevei" role="23t8la">
                <node concept="3clFbS" id="2jv$fqwevej" role="1bW5cS">
                  <node concept="3clFbF" id="2jv$fqwevek" role="3cqZAp">
                    <node concept="2OqwBi" id="2jv$fqwevel" role="3clFbG">
                      <node concept="liA8E" id="2jv$fqwevem" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:4Hl5YlbW9AW" resolve="setChangeSet" />
                        <node concept="3K4zz7" id="2jv$fqweven" role="37wK5m">
                          <node concept="2OqwBi" id="2jv$fqweveo" role="3K4GZi">
                            <node concept="liA8E" id="2jv$fqwevep" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4t3" resolve="getRepositoryChangeSet" />
                            </node>
                            <node concept="37vLTw" id="2jv$fqweveq" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqweveJ" resolve="mergeSession" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2jv$fqwever" role="3K4E3e">
                            <node concept="liA8E" id="2jv$fqweves" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sX" resolve="getMyChangeSet" />
                            </node>
                            <node concept="37vLTw" id="2jv$fqwevet" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqweveJ" resolve="mergeSession" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2jv$fqweveu" role="3K4Cdx">
                            <node concept="3AV6Ez" id="2jv$fqwevev" role="2OqNvi" />
                            <node concept="37vLTw" id="2jv$fqwevew" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XR4" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2jv$fqwevex" role="2Oq$k0">
                        <node concept="3AY5_j" id="2jv$fqwevey" role="2OqNvi" />
                        <node concept="37vLTw" id="2jv$fqwevez" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XR4" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XR4" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0XR5" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqweveA" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7M" resolve="myDiffLayoutPart" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqweveB" role="3cqZAp">
          <node concept="1rXfSq" id="2jv$fqweveC" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwevd6" resolve="setRootId" />
            <node concept="37vLTw" id="2jv$fqweveD" role="37wK5m">
              <ref role="3cqZAo" node="2jv$fqweveF" resolve="rootId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqweveF" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="2jv$fqweveG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqweveJ" role="3clF46">
        <property role="TrG5h" value="mergeSession" />
        <node concept="3uibUv" id="2jv$fqweveK" role="1tU5fm">
          <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfI" role="jymVt" />
    <node concept="3clFb_" id="4HKxPX1Gan6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="showInspector" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4HKxPX1Gan9" role="3clF47">
        <node concept="3clFbJ" id="4HKxPX1Gnj6" role="3cqZAp">
          <node concept="3clFbC" id="4HKxPX1Gnj7" role="3clFbw">
            <node concept="37vLTw" id="4HKxPX1Gnj8" role="3uHU7w">
              <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
            </node>
            <node concept="37vLTw" id="4HKxPX1Gnj9" role="3uHU7B">
              <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
            </node>
          </node>
          <node concept="3clFbS" id="4HKxPX1Gnja" role="3clFbx">
            <node concept="3cpWs6" id="4HKxPX1Gnjb" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="4HKxPX1Gnjc" role="3cqZAp">
          <node concept="37vLTI" id="4HKxPX1Gnjd" role="3clFbG">
            <node concept="37vLTw" id="4HKxPX1Gnje" role="37vLTx">
              <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
            </node>
            <node concept="37vLTw" id="4HKxPX1Gnjf" role="37vLTJ">
              <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HKxPX1Gnjg" role="3cqZAp">
          <node concept="2OqwBi" id="4HKxPX1Gnjh" role="3clFbG">
            <node concept="liA8E" id="4HKxPX1Gnji" role="2OqNvi">
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.setValue(java.lang.String,java.lang.String)" resolve="setValue" />
              <node concept="37vLTw" id="5J3UphNMTjG" role="37wK5m">
                <ref role="3cqZAo" node="6HpunfUDqhj" resolve="PARAM_SHOW_INSPECTOR" />
              </node>
              <node concept="3cpWs3" id="4HKxPX1Gnjj" role="37wK5m">
                <node concept="Xl_RD" id="4HKxPX1Gnjk" role="3uHU7w">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="4HKxPX1Gnjl" role="3uHU7B">
                  <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="4HKxPX1Gnjm" role="2Oq$k0">
              <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ucDe7I$1u$" role="3cqZAp">
          <node concept="2OqwBi" id="6ucDe7I$2uK" role="3clFbG">
            <node concept="37vLTw" id="5rV$5P0G3Aq" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
            </node>
            <node concept="liA8E" id="6ucDe7I$2SU" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:6ucDe7Iyzsf" resolve="showInspector" />
              <node concept="37vLTw" id="6ucDe7I$3rO" role="37wK5m">
                <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ucDe7I$4JS" role="3cqZAp">
          <node concept="2OqwBi" id="6ucDe7I$5MB" role="3clFbG">
            <node concept="37vLTw" id="5rV$5P0G4nY" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
            </node>
            <node concept="liA8E" id="6ucDe7I$6jL" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:6ucDe7Iyzsf" resolve="showInspector" />
              <node concept="37vLTw" id="6ucDe7I$7pz" role="37wK5m">
                <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rV$5P0G5pp" role="3cqZAp">
          <node concept="2OqwBi" id="5rV$5P0G62l" role="3clFbG">
            <node concept="37vLTw" id="5rV$5P0G5pn" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
            </node>
            <node concept="liA8E" id="5rV$5P0G6Ca" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:6ucDe7Iyzsf" resolve="showInspector" />
              <node concept="37vLTw" id="5rV$5P0G70O" role="37wK5m">
                <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4HKxPX1G5J$" role="1B3o_S" />
      <node concept="3cqZAl" id="4HKxPX1Gan3" role="3clF45" />
      <node concept="37vLTG" id="4HKxPX1GeZd" role="3clF46">
        <property role="TrG5h" value="show" />
        <node concept="10P_77" id="4HKxPX1GeZc" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2UWfovzMlyY" role="jymVt" />
    <node concept="2YIFZL" id="6JaxsqziG0K" role="jymVt">
      <property role="TrG5h" value="isEditorsScrollingSyncOptionEnabled" />
      <node concept="3clFbS" id="6JaxsqziG0N" role="3clF47">
        <node concept="3clFbF" id="6JaxsqziLhr" role="3cqZAp">
          <node concept="2OqwBi" id="6JaxsqziLht" role="3clFbG">
            <node concept="liA8E" id="6JaxsqziLhu" role="2OqNvi">
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.getBoolean(java.lang.String,boolean)" resolve="getBoolean" />
              <node concept="37vLTw" id="2UWfovzMrt2" role="37wK5m">
                <ref role="3cqZAo" node="4Dqr_aMY_eb" resolve="PARAM_ENABLE_EDITORS_SCROLL_SYNC" />
              </node>
              <node concept="3clFbT" id="6JaxsqziLhv" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
            <node concept="2YIFZM" id="6JaxsqziLhw" role="2Oq$k0">
              <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6JaxsqziAys" role="1B3o_S" />
      <node concept="10P_77" id="6JaxsqziFOa" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4pxesIq0X4c" role="jymVt" />
    <node concept="3clFb_" id="4pxesIq16Uy" role="jymVt">
      <property role="TrG5h" value="saveEditorsScrollingSyncOption" />
      <node concept="3clFbS" id="4pxesIq16U_" role="3clF47">
        <node concept="3clFbF" id="4pxesIq1ti1" role="3cqZAp">
          <node concept="2OqwBi" id="4pxesIq1ti2" role="3clFbG">
            <node concept="liA8E" id="4pxesIq1ti3" role="2OqNvi">
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.setValue(java.lang.String,boolean,boolean)" resolve="setValue" />
              <node concept="37vLTw" id="4pxesIq1$cV" role="37wK5m">
                <ref role="3cqZAo" node="4Dqr_aMY_eb" resolve="PARAM_ENABLE_EDITORS_SCROLL_SYNC" />
              </node>
              <node concept="37vLTw" id="4pxesIpZvwP" role="37wK5m">
                <ref role="3cqZAo" node="4pxesIq19qX" resolve="enable" />
              </node>
              <node concept="3clFbT" id="4pxesIpZw6q" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
            <node concept="2YIFZM" id="4pxesIq1ti4" role="2Oq$k0">
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4pxesIq12uG" role="1B3o_S" />
      <node concept="3cqZAl" id="4pxesIq159T" role="3clF45" />
      <node concept="37vLTG" id="4pxesIq19qX" role="3clF46">
        <property role="TrG5h" value="enable" />
        <node concept="10P_77" id="4pxesIq19qW" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2UWfovzMLTq" role="jymVt" />
    <node concept="3clFb_" id="2wTEqNKBQW3" role="jymVt">
      <property role="TrG5h" value="enableEditorsScrollingSynchronization" />
      <node concept="3clFbS" id="2wTEqNKBQW6" role="3clF47">
        <node concept="3clFbJ" id="2wTEqNKD69f" role="3cqZAp">
          <node concept="3clFbS" id="2wTEqNKD69h" role="3clFbx">
            <node concept="3cpWs6" id="2wTEqNKDah9" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2wTEqNKD9_W" role="3clFbw">
            <node concept="37vLTw" id="2wTEqNKD71h" role="3uHU7B">
              <ref role="3cqZAo" node="4pxesIpYXsH" resolve="myIsEditorsSyncEnabled" />
            </node>
            <node concept="37vLTw" id="2wTEqNKD9eu" role="3uHU7w">
              <ref role="3cqZAo" node="2wTEqNKBZRC" resolve="isEditorsSyncEnabled" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2wTEqNKD3dQ" role="3cqZAp">
          <node concept="37vLTI" id="2wTEqNKD4bl" role="3clFbG">
            <node concept="37vLTw" id="2wTEqNKD5hK" role="37vLTx">
              <ref role="3cqZAo" node="2wTEqNKBZRC" resolve="isEditorsSyncEnabled" />
            </node>
            <node concept="37vLTw" id="2wTEqNKD3dO" role="37vLTJ">
              <ref role="3cqZAo" node="4pxesIpYXsH" resolve="myIsEditorsSyncEnabled" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2wTEqNKBYB_" role="3cqZAp">
          <node concept="2OqwBi" id="2wTEqNKBZn2" role="3clFbG">
            <node concept="37vLTw" id="2wTEqNKBYB$" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev82" resolve="myDiffEditorsGroup" />
            </node>
            <node concept="liA8E" id="2wTEqNKBZFL" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:4pxesIpY_zs" resolve="enableEditorsSynchronization" />
              <node concept="37vLTw" id="2wTEqNKC4BN" role="37wK5m">
                <ref role="3cqZAo" node="2wTEqNKBZRC" resolve="isEditorsSyncEnabled" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2wTEqNKBMnT" role="1B3o_S" />
      <node concept="3cqZAl" id="2wTEqNKBTGH" role="3clF45" />
      <node concept="37vLTG" id="2wTEqNKBZRC" role="3clF46">
        <property role="TrG5h" value="isEditorsSyncEnabled" />
        <node concept="10P_77" id="2wTEqNKBZRB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwAQOj" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevfx" role="jymVt">
      <property role="TrG5h" value="rehighlight" />
      <node concept="3cqZAl" id="2jv$fqwevfy" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwevfz" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwevf$" role="3clF47">
        <node concept="3clFbJ" id="2jv$fqwevf_" role="3cqZAp">
          <node concept="3clFbS" id="2jv$fqwevfA" role="3clFbx">
            <node concept="3cpWs6" id="2jv$fqwevfB" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="2BHiRxeuogt" role="3clFbw">
            <ref role="3cqZAo" node="2jv$fqwev6W" resolve="myDisposed" />
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevfD" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevfE" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuvIF" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevfG" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBE" resolve="unhighlightAllChanges" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevfH" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevfI" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeurp5" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevfK" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBE" resolve="unhighlightAllChanges" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevfL" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevfM" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuymU" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevfO" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBE" resolve="unhighlightAllChanges" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwevfP" role="3cqZAp" />
        <node concept="3clFbJ" id="2jv$fqwevfQ" role="3cqZAp">
          <node concept="3clFbS" id="2jv$fqwevfR" role="3clFbx">
            <node concept="3cpWs8" id="2jv$fqwevfS" role="3cqZAp">
              <node concept="3cpWsn" id="2jv$fqwevfT" role="3cpWs9">
                <property role="TrG5h" value="resultModel" />
                <node concept="H_c77" id="O1Kg_Y9pWm" role="1tU5fm" />
                <node concept="2OqwBi" id="2jv$fqwevfU" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxeuRsv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwevfW" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2jv$fqwevfY" role="3cqZAp">
              <node concept="3cpWsn" id="2jv$fqwevfZ" role="3cpWs9">
                <property role="TrG5h" value="nodeId" />
                <node concept="3uibUv" id="2jv$fqwevg0" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
                <node concept="1rXfSq" id="4hiugqyz2Vl" role="33vP2m">
                  <ref role="37wK5l" node="2jv$fqwevjZ" resolve="getRootNodeId" />
                  <node concept="37vLTw" id="3GM_nagTztF" role="37wK5m">
                    <ref role="3cqZAo" node="2jv$fqwevfT" resolve="resultModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2jv$fqwevg3" role="3cqZAp">
              <node concept="3clFbS" id="2jv$fqwevg4" role="3clFbx">
                <node concept="3clFbF" id="2jv$fqwevg5" role="3cqZAp">
                  <node concept="2OqwBi" id="2jv$fqwevg6" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeuu5q" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                    </node>
                    <node concept="liA8E" id="2jv$fqwevg8" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:4$Wo$6lALaX" resolve="editRoot" />
                      <node concept="37vLTw" id="3GM_nagTw1x" role="37wK5m">
                        <ref role="3cqZAo" node="2jv$fqwevfZ" resolve="nodeId" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTt2K" role="37wK5m">
                        <ref role="3cqZAo" node="2jv$fqwevfT" resolve="resultModel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2jv$fqwevgc" role="3clFbw">
                <node concept="10Nm6u" id="2jv$fqwevgd" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTyWx" role="3uHU7B">
                  <ref role="3cqZAo" node="2jv$fqwevfZ" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2jv$fqwevgf" role="3clFbw">
            <node concept="10Nm6u" id="2jv$fqwevgg" role="3uHU7w" />
            <node concept="2OqwBi" id="2jv$fqwevgh" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeumMQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
              </node>
              <node concept="liA8E" id="2jv$fqwevgj" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:4$Wo$6lAOeL" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwevgk" role="3cqZAp" />
        <node concept="3clFbF" id="2jv$fqwevgl" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevgm" role="3clFbG">
            <node concept="2OqwBi" id="2jv$fqwevgn" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeun7z" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
              </node>
              <node concept="liA8E" id="2jv$fqwevgp" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHaA0" resolve="getMainEditor" />
              </node>
            </node>
            <node concept="liA8E" id="2jv$fqwevgq" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwevgr" role="3cqZAp" />
        <node concept="3clFbF" id="2jv$fqwevgs" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyZcD" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwevgu" resolve="highlightAllChanges" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfK" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevgu" role="jymVt">
      <property role="TrG5h" value="highlightAllChanges" />
      <node concept="3cqZAl" id="2jv$fqwevgv" role="3clF45" />
      <node concept="3Tm6S6" id="2jv$fqwevgw" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwevgx" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwevgy" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevgz" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeugbJ" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7F" resolve="myChangeGroupLayouts" />
            </node>
            <node concept="2es0OD" id="2jv$fqwevg_" role="2OqNvi">
              <node concept="1bVj0M" id="2jv$fqwevgA" role="23t8la">
                <node concept="3clFbS" id="2jv$fqwevgB" role="1bW5cS">
                  <node concept="3clFbF" id="2jv$fqwevgC" role="3cqZAp">
                    <node concept="2OqwBi" id="2jv$fqwevgD" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxghfwt" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0XR6" resolve="b" />
                      </node>
                      <node concept="liA8E" id="2jv$fqwevgF" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:42hl10VHann" resolve="invalidate" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XR6" role="1bW2Oz">
                  <property role="TrG5h" value="b" />
                  <node concept="2jxLKc" id="5W7E4fV0XR7" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwevgI" role="3cqZAp" />
        <node concept="3cpWs8" id="2jv$fqwevgJ" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwevgK" role="3cpWs9">
            <property role="TrG5h" value="changesForRoot" />
            <node concept="_YKpA" id="2jv$fqwevgL" role="1tU5fm">
              <node concept="3uibUv" id="2jv$fqwevgM" role="_ZDj9">
                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
              </node>
            </node>
            <node concept="2OqwBi" id="2jv$fqwevgN" role="33vP2m">
              <node concept="2OqwBi" id="2jv$fqwevgO" role="2Oq$k0">
                <node concept="2OqwBi" id="2jv$fqwevgP" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeu_yk" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwevgR" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4nv" resolve="getChangesForRoot" />
                    <node concept="37vLTw" id="2BHiRxeuL39" role="37wK5m">
                      <ref role="3cqZAo" node="2jv$fqwev7a" resolve="myRootId" />
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="2jv$fqwevgT" role="2OqNvi">
                  <node concept="1bVj0M" id="2jv$fqwevgU" role="23t8la">
                    <node concept="3clFbS" id="2jv$fqwevgV" role="1bW5cS">
                      <node concept="3clFbF" id="2jv$fqwevgW" role="3cqZAp">
                        <node concept="3fqX7Q" id="2jv$fqwevgX" role="3clFbG">
                          <node concept="2OqwBi" id="2jv$fqwevgY" role="3fr31v">
                            <node concept="37vLTw" id="2BHiRxeuFic" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="2jv$fqwevh0" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4o1" resolve="isChangeResolved" />
                              <node concept="37vLTw" id="2BHiRxgm7Lv" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XR8" resolve="ch" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XR8" role="1bW2Oz">
                      <property role="TrG5h" value="ch" />
                      <node concept="2jxLKc" id="5W7E4fV0XR9" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="2jv$fqwevh4" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2jv$fqwevh5" role="3cqZAp">
          <node concept="2GrKxI" id="2jv$fqwevh6" role="2Gsz3X">
            <property role="TrG5h" value="change" />
          </node>
          <node concept="37vLTw" id="3GM_nagTwC9" role="2GsD0m">
            <ref role="3cqZAo" node="2jv$fqwevgK" resolve="changesForRoot" />
          </node>
          <node concept="3clFbS" id="2jv$fqwevh8" role="2LFqv$">
            <node concept="3clFbF" id="2jv$fqwevh9" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz90u" role="3clFbG">
                <ref role="37wK5l" node="2jv$fqwevir" resolve="higlightChange" />
                <node concept="37vLTw" id="2BHiRxeuXip" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                </node>
                <node concept="2OqwBi" id="2jv$fqwevhc" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeuOS5" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwevhe" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                  </node>
                </node>
                <node concept="3clFbT" id="5e4Yt6O733u" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2GrUjf" id="2jv$fqwevhf" role="37wK5m">
                  <ref role="2Gs0qQ" node="2jv$fqwevh6" resolve="change" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2jv$fqwevhg" role="3cqZAp">
              <node concept="2OqwBi" id="2jv$fqwevhh" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxeun28" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="2jv$fqwevhj" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4t9" resolve="isMyChange" />
                  <node concept="2GrUjf" id="2jv$fqwevhk" role="37wK5m">
                    <ref role="2Gs0qQ" node="2jv$fqwevh6" resolve="change" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2jv$fqwevhl" role="3clFbx">
                <node concept="3clFbF" id="2jv$fqwevhm" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqyza0x" role="3clFbG">
                    <ref role="37wK5l" node="2jv$fqwevir" resolve="higlightChange" />
                    <node concept="37vLTw" id="2BHiRxeuWQB" role="37wK5m">
                      <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
                    </node>
                    <node concept="2OqwBi" id="2jv$fqwevhp" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxeun6H" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                      </node>
                      <node concept="liA8E" id="2jv$fqwevhr" role="2OqNvi">
                        <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                      </node>
                    </node>
                    <node concept="3clFbT" id="5e4Yt6O73wn" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="2GrUjf" id="2jv$fqwevhs" role="37wK5m">
                      <ref role="2Gs0qQ" node="2jv$fqwevh6" resolve="change" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2jv$fqwevht" role="9aQIa">
                <node concept="3clFbS" id="2jv$fqwevhu" role="9aQI4">
                  <node concept="3clFbF" id="2jv$fqwevhv" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyz8i7" role="3clFbG">
                      <ref role="37wK5l" node="2jv$fqwevir" resolve="higlightChange" />
                      <node concept="37vLTw" id="2BHiRxeulYo" role="37wK5m">
                        <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
                      </node>
                      <node concept="2OqwBi" id="2jv$fqwevhy" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxeuPsl" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                        </node>
                        <node concept="liA8E" id="2jv$fqwevh$" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                        </node>
                      </node>
                      <node concept="3clFbT" id="5e4Yt6O73XP" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                      <node concept="2GrUjf" id="2jv$fqwevh_" role="37wK5m">
                        <ref role="2Gs0qQ" node="2jv$fqwevh6" resolve="change" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevhA" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevhB" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuVOk" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7F" resolve="myChangeGroupLayouts" />
            </node>
            <node concept="2es0OD" id="2jv$fqwevhD" role="2OqNvi">
              <node concept="1bVj0M" id="2jv$fqwevhE" role="23t8la">
                <node concept="3clFbS" id="2jv$fqwevhF" role="1bW5cS">
                  <node concept="3clFbF" id="2jv$fqwevhG" role="3cqZAp">
                    <node concept="2OqwBi" id="2jv$fqwevhH" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxglWL3" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0XRa" resolve="b" />
                      </node>
                      <node concept="liA8E" id="2jv$fqwevhJ" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:42hl10VHann" resolve="invalidate" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XRa" role="1bW2Oz">
                  <property role="TrG5h" value="b" />
                  <node concept="2jxLKc" id="5W7E4fV0XRb" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevhN" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevhO" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeurp$" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevhQ" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBd" resolve="repaintAndRebuildEditorMessages" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevhR" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevhS" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeun24" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevhU" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBd" resolve="repaintAndRebuildEditorMessages" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevhV" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevhW" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuW3a" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqwevhY" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBd" resolve="repaintAndRebuildEditorMessages" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfL" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevir" role="jymVt">
      <property role="TrG5h" value="higlightChange" />
      <node concept="3cqZAl" id="2jv$fqwevis" role="3clF45" />
      <node concept="3Tm6S6" id="2jv$fqwevit" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqweviu" role="3clF47">
        <node concept="3clFbF" id="2jv$fqweviv" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqweviw" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmqgU" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqweviA" resolve="diffEditor" />
            </node>
            <node concept="liA8E" id="2jv$fqweviy" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaAn" resolve="highlightChange" />
              <node concept="37vLTw" id="2BHiRxgm7it" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqweviC" resolve="model" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmaC2" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqweviE" resolve="change" />
              </node>
              <node concept="37vLTw" id="5e4Yt6O72Mr" role="37wK5m">
                <ref role="3cqZAo" node="5e4Yt6O6XNs" resolve="isOldEditor" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuMvF" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwev70" resolve="myConflictChecker" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqweviA" role="3clF46">
        <property role="TrG5h" value="diffEditor" />
        <node concept="3uibUv" id="2jv$fqweviB" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqweviC" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="O1Kg_Y8mkZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5e4Yt6O6XNs" role="3clF46">
        <property role="TrG5h" value="isOldEditor" />
        <node concept="10P_77" id="5e4Yt6O71Q0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2jv$fqweviE" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="2jv$fqweviF" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50LFMYN53SG" role="jymVt" />
    <node concept="3clFb_" id="42UviMImjKk" role="jymVt">
      <property role="TrG5h" value="linkEditors" />
      <node concept="3clFbS" id="42UviMImjKl" role="3clF47">
        <node concept="3cpWs8" id="42UviMImjKq" role="3cqZAp">
          <node concept="3cpWsn" id="42UviMImjKr" role="3cpWs9">
            <property role="TrG5h" value="layout" />
            <node concept="2ShNRf" id="42UviMImjKs" role="33vP2m">
              <node concept="1pGfFk" id="42UviMImjKt" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:5zpsdFy5nh9" resolve="DiffChangeGroupLayout" />
                <node concept="37vLTw" id="50LFMYN5D04" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwev70" resolve="myConflictChecker" />
                </node>
                <node concept="3K4zz7" id="50LFMYN6ndK" role="37wK5m">
                  <node concept="37vLTw" id="50LFMYN6ndL" role="3K4Cdx">
                    <ref role="3cqZAo" node="50LFMYN6gnM" resolve="mine" />
                  </node>
                  <node concept="2OqwBi" id="50LFMYN6ndM" role="3K4E3e">
                    <node concept="37vLTw" id="50LFMYN6ndN" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="50LFMYN6ndO" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4sX" resolve="getMyChangeSet" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="50LFMYN6ndP" role="3K4GZi">
                    <node concept="37vLTw" id="50LFMYN6ndQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="50LFMYN6ndR" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4t3" resolve="getRepositoryChangeSet" />
                    </node>
                  </node>
                </node>
                <node concept="3K4zz7" id="50LFMYN6o9K" role="37wK5m">
                  <node concept="37vLTw" id="50LFMYN6o9L" role="3K4E3e">
                    <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
                  </node>
                  <node concept="37vLTw" id="50LFMYN6o9M" role="3K4GZi">
                    <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                  </node>
                  <node concept="37vLTw" id="50LFMYN6o9N" role="3K4Cdx">
                    <ref role="3cqZAo" node="50LFMYN6gnM" resolve="mine" />
                  </node>
                </node>
                <node concept="3K4zz7" id="50LFMYN6oKv" role="37wK5m">
                  <node concept="37vLTw" id="50LFMYN6oKw" role="3K4E3e">
                    <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                  </node>
                  <node concept="37vLTw" id="50LFMYN6oKx" role="3K4GZi">
                    <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
                  </node>
                  <node concept="37vLTw" id="50LFMYN6oKy" role="3K4Cdx">
                    <ref role="3cqZAo" node="50LFMYN6gnM" resolve="mine" />
                  </node>
                </node>
                <node concept="1rXfSq" id="6Gx$enTYeb2" role="37wK5m">
                  <ref role="37wK5l" node="6Gx$enTXOJV" resolve="getSplitterRepainter" />
                  <node concept="37vLTw" id="6Gx$enTYeOo" role="37wK5m">
                    <ref role="3cqZAo" node="2duWW7SgePu" resolve="panel" />
                  </node>
                  <node concept="37vLTw" id="6Gx$enTYfz8" role="37wK5m">
                    <ref role="3cqZAo" node="50LFMYN6gnM" resolve="mine" />
                  </node>
                </node>
                <node concept="37vLTw" id="42UviMImjKy" role="37wK5m">
                  <ref role="3cqZAo" node="42UviMImjLE" resolve="inspector" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2duWW7ShtFS" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:5zpsdFy5n9A" resolve="DiffChangeGroupLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="AqV75eYWQ_" role="3cqZAp">
          <node concept="2OqwBi" id="AqV75eZ0Zw" role="3clFbG">
            <node concept="37vLTw" id="AqV75eYWQz" role="2Oq$k0">
              <ref role="3cqZAo" node="42UviMImjKr" resolve="layout" />
            </node>
            <node concept="liA8E" id="AqV75eZ8OT" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:AqV75eY$PD" resolve="setIsMerge" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="20C5E121vzQ" role="3cqZAp">
          <node concept="37vLTI" id="20C5E121xkU" role="3clFbG">
            <node concept="37vLTw" id="20C5E121yhl" role="37vLTx">
              <ref role="3cqZAo" node="50LFMYN6gnM" resolve="mine" />
            </node>
            <node concept="3EllGN" id="20C5E121wrP" role="37vLTJ">
              <node concept="37vLTw" id="20C5E121x4b" role="3ElVtu">
                <ref role="3cqZAo" node="42UviMImjKr" resolve="layout" />
              </node>
              <node concept="37vLTw" id="20C5E121vzO" role="3ElQJh">
                <ref role="3cqZAo" node="2jv$fqwev7M" resolve="myDiffLayoutPart" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3dhKa32ZZbF" role="3cqZAp">
          <node concept="2OqwBi" id="3dhKa32ZZbG" role="3clFbG">
            <node concept="37vLTw" id="3dhKa32ZZbH" role="2Oq$k0">
              <ref role="3cqZAo" node="4v$0iiIJgCs" resolve="myGutterMessagesRebuilders" />
            </node>
            <node concept="TSZUe" id="3dhKa32ZZbI" role="2OqNvi">
              <node concept="2ShNRf" id="3dhKa32ZZbJ" role="25WWJ7">
                <node concept="1pGfFk" id="3dhKa32ZZbK" role="2ShVmc">
                  <ref role="37wK5l" to="hdhb:D356mG1lCH" resolve="ChangeGroupMessages" />
                  <node concept="37vLTw" id="3dhKa32ZZbL" role="37wK5m">
                    <ref role="3cqZAo" node="42UviMImjKr" resolve="layout" />
                  </node>
                  <node concept="37vLTw" id="410DNiAgb6S" role="37wK5m">
                    <ref role="3cqZAo" node="50LFMYN6gnM" resolve="mine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42UviMImjKB" role="3cqZAp">
          <node concept="2OqwBi" id="42UviMImjKC" role="3clFbG">
            <node concept="37vLTw" id="42UviMImjKD" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7F" resolve="myChangeGroupLayouts" />
            </node>
            <node concept="TSZUe" id="42UviMImjKE" role="2OqNvi">
              <node concept="37vLTw" id="42UviMImjKF" role="25WWJ7">
                <ref role="3cqZAo" node="42UviMImjKr" resolve="layout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50LFMYN6qN_" role="3cqZAp">
          <node concept="2YIFZM" id="50LFMYN6qNA" role="3clFbG">
            <ref role="1Pybhc" node="BjUsE2KQV8" resolve="MergeButtonsPainter" />
            <ref role="37wK5l" node="2jv$fqwngO8" resolve="addTo" />
            <node concept="Xjq3P" id="50LFMYN6qNB" role="37wK5m" />
            <node concept="3K4zz7" id="50LFMYN6qNC" role="37wK5m">
              <node concept="37vLTw" id="50LFMYN6qND" role="3K4E3e">
                <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
              </node>
              <node concept="37vLTw" id="50LFMYN6qNE" role="3K4GZi">
                <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
              </node>
              <node concept="37vLTw" id="50LFMYN6qNF" role="3K4Cdx">
                <ref role="3cqZAo" node="50LFMYN6gnM" resolve="mine" />
              </node>
            </node>
            <node concept="37vLTw" id="50LFMYN6qNG" role="37wK5m">
              <ref role="3cqZAo" node="42UviMImjKr" resolve="layout" />
            </node>
            <node concept="37vLTw" id="50LFMYN6qNH" role="37wK5m">
              <ref role="3cqZAo" node="42UviMImjLE" resolve="inspector" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="42UviMImjLD" role="1B3o_S" />
      <node concept="37vLTG" id="2duWW7SgePu" role="3clF46">
        <property role="TrG5h" value="panel" />
        <node concept="3uibUv" id="50LFMYN5vIg" role="1tU5fm">
          <ref role="3uigEE" to="xlkh:~ThreesideContentPanel" resolve="ThreesideContentPanel" />
        </node>
      </node>
      <node concept="37vLTG" id="50LFMYN6gnM" role="3clF46">
        <property role="TrG5h" value="mine" />
        <node concept="10P_77" id="50LFMYN6kl8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="42UviMImjLE" role="3clF46">
        <property role="TrG5h" value="inspector" />
        <node concept="10P_77" id="42UviMImjLF" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="42UviMImjLG" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6Gx$enTXD3I" role="jymVt" />
    <node concept="3clFb_" id="6Gx$enTXOJV" role="jymVt">
      <property role="TrG5h" value="getSplitterRepainter" />
      <node concept="3clFbS" id="6Gx$enTXOJY" role="3clF47">
        <node concept="3clFbF" id="6Gx$enTY5Qf" role="3cqZAp">
          <node concept="2ShNRf" id="6Gx$enTY5Qh" role="3clFbG">
            <node concept="YeOm9" id="6Gx$enTY5Qi" role="2ShVmc">
              <node concept="1Y3b0j" id="6Gx$enTY5Qj" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="hdhb:6Gx$enTWXiW" resolve="DiffChangeGroupLayout.SplitterRepainter" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="6Gx$enTY5Qk" role="1B3o_S" />
                <node concept="3clFb_" id="6Gx$enTY5Ql" role="jymVt">
                  <property role="TrG5h" value="repaintSplitter" />
                  <node concept="3Tm1VV" id="6Gx$enTY5Qm" role="1B3o_S" />
                  <node concept="3cqZAl" id="6Gx$enTY5Qn" role="3clF45" />
                  <node concept="3clFbS" id="6Gx$enTY5Qo" role="3clF47">
                    <node concept="3clFbF" id="6Gx$enTY5Qp" role="3cqZAp">
                      <node concept="2OqwBi" id="6Gx$enTY5Qq" role="3clFbG">
                        <node concept="37vLTw" id="6Gx$enTYcno" role="2Oq$k0">
                          <ref role="3cqZAo" node="6Gx$enTY6Sw" resolve="panel" />
                        </node>
                        <node concept="liA8E" id="6Gx$enTY5Qs" role="2OqNvi">
                          <ref role="37wK5l" to="xlkh:~ThreesideContentPanel.repaintDivider(com.intellij.diff.util.Side)" resolve="repaintDivider" />
                          <node concept="3K4zz7" id="6Gx$enTY5Qt" role="37wK5m">
                            <node concept="Rm8GO" id="6Gx$enTY5Qu" role="3K4E3e">
                              <ref role="Rm8GQ" to="xo69:~Side.LEFT" resolve="LEFT" />
                              <ref role="1Px2BO" to="xo69:~Side" resolve="Side" />
                            </node>
                            <node concept="Rm8GO" id="6Gx$enTY5Qv" role="3K4GZi">
                              <ref role="Rm8GQ" to="xo69:~Side.RIGHT" resolve="RIGHT" />
                              <ref role="1Px2BO" to="xo69:~Side" resolve="Side" />
                            </node>
                            <node concept="37vLTw" id="6Gx$enTY5Qw" role="3K4Cdx">
                              <ref role="3cqZAo" node="6Gx$enTY1dj" resolve="mine" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6Gx$enTY5Qx" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6Gx$enTXKcC" role="1B3o_S" />
      <node concept="3uibUv" id="6Gx$enTXXJU" role="3clF45">
        <ref role="3uigEE" to="hdhb:6Gx$enTWXiW" resolve="DiffChangeGroupLayout.SplitterRepainter" />
      </node>
      <node concept="37vLTG" id="6Gx$enTY6Sw" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="panel" />
        <node concept="3uibUv" id="6Gx$enTYbi9" role="1tU5fm">
          <ref role="3uigEE" to="xlkh:~ThreesideContentPanel" resolve="ThreesideContentPanel" />
        </node>
      </node>
      <node concept="37vLTG" id="6Gx$enTY1dj" role="3clF46">
        <property role="TrG5h" value="mine" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="6Gx$enTY1di" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4e4uN_qANkt" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevjZ" role="jymVt">
      <property role="TrG5h" value="getRootNodeId" />
      <node concept="37vLTG" id="2jv$fqwevk0" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="O1Kg_Y75Xg" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2jv$fqwevk2" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm6S6" id="2jv$fqwevk3" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwevk4" role="3clF47">
        <node concept="3cpWs8" id="2jv$fqwevk5" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwevk6" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="2OqwBi" id="2jv$fqwevk7" role="33vP2m">
              <node concept="liA8E" id="2jv$fqwevk8" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                <node concept="37vLTw" id="2BHiRxeuFnB" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwev7a" resolve="myRootId" />
                </node>
              </node>
              <node concept="2JrnkZ" id="2jv$fqwevka" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgmOd7" role="2JrQYb">
                  <ref role="3cqZAo" node="2jv$fqwevk0" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2jv$fqwevkc" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jv$fqwevkd" role="3cqZAp">
          <node concept="3clFbS" id="2jv$fqwevke" role="3clFbx">
            <node concept="3cpWs6" id="2jv$fqwevkf" role="3cqZAp">
              <node concept="37vLTw" id="2BHiRxeuyIg" role="3cqZAk">
                <ref role="3cqZAo" node="2jv$fqwev7a" resolve="myRootId" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2jv$fqwevkh" role="3clFbw">
            <node concept="3clFbC" id="2jv$fqwevki" role="3uHU7w">
              <node concept="10Nm6u" id="2jv$fqwevkj" role="3uHU7w" />
              <node concept="2OqwBi" id="2jv$fqwevkk" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTukv" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwevk6" resolve="node" />
                </node>
                <node concept="liA8E" id="2jv$fqwevkm" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2jv$fqwevkn" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTzcX" role="3uHU7B">
                <ref role="3cqZAo" node="2jv$fqwevk6" resolve="node" />
              </node>
              <node concept="10Nm6u" id="2jv$fqwevkp" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jv$fqwevkq" role="3cqZAp">
          <node concept="3clFbS" id="2jv$fqwevkr" role="3clFbx">
            <node concept="3cpWs8" id="2jv$fqwevks" role="3cqZAp">
              <node concept="3cpWsn" id="2jv$fqwevkt" role="3cpWs9">
                <property role="TrG5h" value="replacement" />
                <node concept="3uibUv" id="2jv$fqwevku" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
                <node concept="2OqwBi" id="2jv$fqwevkv" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxeuxJH" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwevkx" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:4O82Dpbu63_" resolve="getReplacementId" />
                    <node concept="37vLTw" id="2BHiRxeuogL" role="37wK5m">
                      <ref role="3cqZAo" node="2jv$fqwev7a" resolve="myRootId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2jv$fqwevkz" role="3cqZAp">
              <node concept="3clFbS" id="2jv$fqwevk$" role="3clFbx">
                <node concept="3cpWs6" id="2jv$fqwevk_" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTsGF" role="3cqZAk">
                    <ref role="3cqZAo" node="2jv$fqwevkt" resolve="replacement" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2jv$fqwevkB" role="3clFbw">
                <node concept="10Nm6u" id="2jv$fqwevkC" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTAoc" role="3uHU7B">
                  <ref role="3cqZAo" node="2jv$fqwevkt" resolve="replacement" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2jv$fqwevkE" role="3clFbw">
            <node concept="2OqwBi" id="2jv$fqwevkF" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeusvq" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
              </node>
              <node concept="liA8E" id="2jv$fqwevkH" role="2OqNvi">
                <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgllce" role="3uHU7B">
              <ref role="3cqZAo" node="2jv$fqwevk0" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2jv$fqwevkJ" role="3cqZAp">
          <node concept="10Nm6u" id="2jv$fqwevkK" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwBcXm" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevkL" role="jymVt">
      <property role="TrG5h" value="addEditor" />
      <node concept="3Tm6S6" id="2jv$fqwevkM" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwevkN" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
      </node>
      <node concept="37vLTG" id="2jv$fqwevkO" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="2jv$fqwevkP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2jv$fqwevkQ" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="O1Kg_Y6OtQ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2jv$fqwevkS" role="3clF47">
        <node concept="3cpWs8" id="2jv$fqwevkT" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwevkU" role="3cpWs9">
            <property role="TrG5h" value="rootId" />
            <node concept="3uibUv" id="2jv$fqwevkV" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="1rXfSq" id="4hiugqyyTuu" role="33vP2m">
              <ref role="37wK5l" node="2jv$fqwevjZ" resolve="getRootNodeId" />
              <node concept="37vLTw" id="2BHiRxglf3y" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwevkQ" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2jv$fqwevlb" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwevlc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2jv$fqwevld" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
            </node>
            <node concept="2ShNRf" id="2jv$fqwevle" role="33vP2m">
              <node concept="1pGfFk" id="2jv$fqwevlf" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:42hl10VHaz9" resolve="DiffEditor" />
                <node concept="2YIFZM" id="6IL1Wh7tBCW" role="37wK5m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="6IL1Wh7tBCX" role="37wK5m">
                    <ref role="3cqZAo" node="2jv$fqwev73" resolve="myProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTt0W" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwevkQ" resolve="model" />
                </node>
                <node concept="37vLTw" id="1Ahjuz8PMel" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwevkU" resolve="rootId" />
                </node>
                <node concept="1y4W85" id="fACp921eJ4" role="37wK5m">
                  <node concept="37vLTw" id="fACp921kTA" role="1y58nS">
                    <ref role="3cqZAo" node="2jv$fqwevkO" resolve="index" />
                  </node>
                  <node concept="37vLTw" id="2jv$fqwevll" role="1y566C">
                    <ref role="3cqZAo" node="2jv$fqwev76" resolve="myTitles" />
                  </node>
                </node>
                <node concept="3clFbC" id="2jv$fqwevln" role="37wK5m">
                  <node concept="3cmrfG" id="2jv$fqwevlo" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgmkGY" role="3uHU7B">
                    <ref role="3cqZAo" node="2jv$fqwevkO" resolve="index" />
                  </node>
                </node>
                <node concept="3y3z36" id="3mW$_QPHMEg" role="37wK5m">
                  <node concept="3cmrfG" id="3mW$_QPHQS4" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="3mW$_QPHFGm" role="3uHU7B">
                    <ref role="3cqZAo" node="2jv$fqwevkO" resolve="index" />
                  </node>
                </node>
                <node concept="37vLTw" id="6ucDe7IzAec" role="37wK5m">
                  <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwevmf" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevmg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuvMN" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev82" resolve="myDiffEditorsGroup" />
            </node>
            <node concept="liA8E" id="2jv$fqwevmi" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaHk" resolve="add" />
              <node concept="37vLTw" id="3GM_nagTAp0" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwevlc" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2jv$fqwevmk" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTz9e" role="3cqZAk">
            <ref role="3cqZAo" node="2jv$fqwevlc" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwBm1k" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevny" role="jymVt">
      <property role="TrG5h" value="getMergeSession" />
      <node concept="3uibUv" id="2jv$fqwevnz" role="3clF45">
        <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
      </node>
      <node concept="3clFbS" id="2jv$fqwevn$" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwevn_" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuTx6" role="3clFbG">
            <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6_NZPMYb172" role="jymVt" />
    <node concept="3clFb_" id="6_NZPMYbig2" role="jymVt">
      <property role="TrG5h" value="setMergeSession" />
      <node concept="3clFbS" id="6_NZPMYbig5" role="3clF47">
        <node concept="3clFbF" id="6_NZPMYbWXS" role="3cqZAp">
          <node concept="37vLTI" id="6_NZPMYc1yy" role="3clFbG">
            <node concept="37vLTw" id="6_NZPMYc87I" role="37vLTx">
              <ref role="3cqZAo" node="6_NZPMYbOyE" resolve="mergeSession" />
            </node>
            <node concept="37vLTw" id="6_NZPMYbWXR" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6_NZPMYch41" role="3cqZAp">
          <node concept="2OqwBi" id="6_NZPMYch42" role="3clFbG">
            <node concept="2es0OD" id="6_NZPMYch43" role="2OqNvi">
              <node concept="1bVj0M" id="6_NZPMYch44" role="23t8la">
                <node concept="3clFbS" id="6_NZPMYch45" role="1bW5cS">
                  <node concept="3clFbF" id="6_NZPMYch46" role="3cqZAp">
                    <node concept="2OqwBi" id="6_NZPMYch47" role="3clFbG">
                      <node concept="liA8E" id="6_NZPMYch48" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:4Hl5YlbW9AW" resolve="setChangeSet" />
                        <node concept="3K4zz7" id="6_NZPMYch49" role="37wK5m">
                          <node concept="2OqwBi" id="6_NZPMYch4a" role="3K4GZi">
                            <node concept="liA8E" id="6_NZPMYch4b" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4t3" resolve="getRepositoryChangeSet" />
                            </node>
                            <node concept="37vLTw" id="6_NZPMYch4c" role="2Oq$k0">
                              <ref role="3cqZAo" node="6_NZPMYbOyE" resolve="mergeSession" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6_NZPMYch4d" role="3K4E3e">
                            <node concept="liA8E" id="6_NZPMYch4e" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sX" resolve="getMyChangeSet" />
                            </node>
                            <node concept="37vLTw" id="6_NZPMYch4f" role="2Oq$k0">
                              <ref role="3cqZAo" node="6_NZPMYbOyE" resolve="mergeSession" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6_NZPMYch4g" role="3K4Cdx">
                            <node concept="3AV6Ez" id="6_NZPMYch4h" role="2OqNvi" />
                            <node concept="37vLTw" id="6_NZPMYch4i" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XRc" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6_NZPMYch4j" role="2Oq$k0">
                        <node concept="3AY5_j" id="6_NZPMYch4k" role="2OqNvi" />
                        <node concept="37vLTw" id="6_NZPMYch4l" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XRc" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XRc" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0XRd" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6_NZPMYch4o" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7M" resolve="myDiffLayoutPart" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3u4vQg7T$eM" role="3cqZAp">
          <node concept="2OqwBi" id="3u4vQg7T$eN" role="3clFbG">
            <node concept="37vLTw" id="3u4vQg7T$eO" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
            </node>
            <node concept="liA8E" id="3u4vQg7T$eP" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:4$Wo$6lALaX" resolve="editRoot" />
              <node concept="1rXfSq" id="3u4vQg7T$eQ" role="37wK5m">
                <ref role="37wK5l" node="2jv$fqwevjZ" resolve="getRootNodeId" />
                <node concept="2OqwBi" id="3u4vQg7T$eR" role="37wK5m">
                  <node concept="liA8E" id="3u4vQg7T$eS" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                  </node>
                  <node concept="37vLTw" id="3u4vQg7T$eT" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3u4vQg7T$eU" role="37wK5m">
                <node concept="liA8E" id="3u4vQg7T$eV" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                </node>
                <node concept="37vLTw" id="3u4vQg7T$eW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6_NZPMYcoOR" role="3cqZAp">
          <node concept="1rXfSq" id="6_NZPMYcoOP" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwevfx" resolve="rehighlight" />
          </node>
        </node>
        <node concept="3clFbH" id="3u4vQg7TsaC" role="3cqZAp" />
        <node concept="3clFbF" id="2lTF1Vl9iFD" role="3cqZAp">
          <node concept="2OqwBi" id="2lTF1Vl9r3l" role="3clFbG">
            <node concept="37vLTw" id="2lTF1Vl9iFB" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev82" resolve="myDiffEditorsGroup" />
            </node>
            <node concept="liA8E" id="2lTF1Vl9zlG" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:3KoCsI2B$UP" resolve="synchronizeViewWithOther" />
              <node concept="37vLTw" id="2lTF1Vl9TYq" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
              </node>
              <node concept="37vLTw" id="2lTF1VlaauC" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
              </node>
              <node concept="3clFbT" id="2lTF1VlawXb" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2lTF1Vlb7ed" role="3cqZAp">
          <node concept="2OqwBi" id="2lTF1Vlb7ee" role="3clFbG">
            <node concept="37vLTw" id="2lTF1Vlb7ef" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev82" resolve="myDiffEditorsGroup" />
            </node>
            <node concept="liA8E" id="2lTF1Vlb7eg" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:3KoCsI2B$UP" resolve="synchronizeViewWithOther" />
              <node concept="37vLTw" id="2lTF1Vlb7eh" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
              </node>
              <node concept="37vLTw" id="2lTF1Vlb7ei" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
              </node>
              <node concept="3clFbT" id="2lTF1Vlb7ej" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6_NZPMYba6T" role="3clF45" />
      <node concept="37vLTG" id="6_NZPMYbOyE" role="3clF46">
        <property role="TrG5h" value="mergeSession" />
        <node concept="3uibUv" id="6_NZPMYbOyD" role="1tU5fm">
          <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="73GkhK4_SfO" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevnB" role="jymVt">
      <property role="TrG5h" value="restoreState" />
      <node concept="3cqZAl" id="2jv$fqwevnC" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwevnD" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwevnE" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwevnF" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwevnG" role="3clFbG">
            <node concept="liA8E" id="2jv$fqwevnH" role="2OqNvi">
              <ref role="37wK5l" to="bmv6:2KMWrOXq2tx" resolve="restoreFullState" />
              <node concept="37vLTw" id="2jv$fqwevnI" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwev87" resolve="myStateToRestore" />
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqwevnJ" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwCpti" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwevnK" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3Tm1VV" id="2jv$fqwevnL" role="1B3o_S" />
      <node concept="3cqZAl" id="2jv$fqwevnM" role="3clF45" />
      <node concept="3clFbS" id="2jv$fqwevnN" role="3clF47">
        <node concept="1HWtB8" id="2jv$fqwevnO" role="3cqZAp">
          <node concept="Xjq3P" id="2jv$fqwevnP" role="1HWFw0" />
          <node concept="3clFbS" id="2jv$fqwevnQ" role="1HWHxc">
            <node concept="3clFbJ" id="2jv$fqwevnR" role="3cqZAp">
              <node concept="3clFbS" id="2jv$fqwevnS" role="3clFbx">
                <node concept="3cpWs6" id="2jv$fqwevnT" role="3cqZAp" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuROI" role="3clFbw">
                <ref role="3cqZAo" node="2jv$fqwev6W" resolve="myDisposed" />
              </node>
            </node>
            <node concept="3clFbF" id="3dhKa32ZBZ6" role="3cqZAp">
              <node concept="2OqwBi" id="3dhKa32ZBZ7" role="3clFbG">
                <node concept="37vLTw" id="3dhKa32ZBZ8" role="2Oq$k0">
                  <ref role="3cqZAo" node="4v$0iiIJgCs" resolve="myGutterMessagesRebuilders" />
                </node>
                <node concept="2es0OD" id="3dhKa32ZBZ9" role="2OqNvi">
                  <node concept="1bVj0M" id="3dhKa32ZBZa" role="23t8la">
                    <node concept="3clFbS" id="3dhKa32ZBZb" role="1bW5cS">
                      <node concept="3clFbF" id="3dhKa32ZBZc" role="3cqZAp">
                        <node concept="2OqwBi" id="3dhKa32ZBZd" role="3clFbG">
                          <node concept="37vLTw" id="3dhKa32ZBZe" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XRe" resolve="it" />
                          </node>
                          <node concept="liA8E" id="3dhKa32ZBZf" role="2OqNvi">
                            <ref role="37wK5l" to="hdhb:76itSV98wSB" resolve="dispose" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XRe" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0XRf" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="56VWuMNxpq_" role="3cqZAp">
              <node concept="2OqwBi" id="56VWuMNyp1x" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNxpqC" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNumsK" resolve="myTitleCustomizersDisposables" />
                </node>
                <node concept="2es0OD" id="56VWuMNzHzF" role="2OqNvi">
                  <node concept="1bVj0M" id="56VWuMNzHzH" role="23t8la">
                    <node concept="3clFbS" id="56VWuMNzHzI" role="1bW5cS">
                      <node concept="3clFbF" id="56VWuMNzTev" role="3cqZAp">
                        <node concept="2OqwBi" id="56VWuMNzYR_" role="3clFbG">
                          <node concept="37vLTw" id="56VWuMNzTeu" role="2Oq$k0">
                            <ref role="3cqZAo" node="56VWuMNzHzJ" resolve="it" />
                          </node>
                          <node concept="liA8E" id="56VWuMN$arO" role="2OqNvi">
                            <ref role="37wK5l" to="v23q:~Disposable.dispose()" resolve="dispose" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="56VWuMNzHzJ" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="56VWuMNzHzK" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="56VWuMNxpqJ" role="3cqZAp">
              <node concept="2OqwBi" id="56VWuMNxNOu" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNx$7t" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNumsK" resolve="myTitleCustomizersDisposables" />
                </node>
                <node concept="2Kehj3" id="56VWuMNzzkQ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="56VWuMNxe$m" role="3cqZAp" />
            <node concept="3clFbF" id="2zb8TK6wq4J" role="3cqZAp">
              <node concept="2OqwBi" id="2zb8TK6ws03" role="3clFbG">
                <node concept="2OqwBi" id="2zb8TK6wr7$" role="2Oq$k0">
                  <node concept="37vLTw" id="2zb8TK6wq4H" role="2Oq$k0">
                    <ref role="3cqZAo" node="2zb8TK6tGr5" resolve="myDiffRegistry" />
                  </node>
                  <node concept="liA8E" id="2zb8TK6wrQn" role="2OqNvi">
                    <ref role="37wK5l" to="lcr:2JwSLRbyYWE" resolve="getCommandQueue" />
                  </node>
                </node>
                <node concept="liA8E" id="2zb8TK6wssF" role="2OqNvi">
                  <ref role="37wK5l" to="lcr:3eE6dTgUd0h" resolve="runTask" />
                  <node concept="1bVj0M" id="2zb8TK6wtjY" role="37wK5m">
                    <node concept="3clFbS" id="2zb8TK6wtjZ" role="1bW5cS">
                      <node concept="3clFbJ" id="1pGF6PXyfSg" role="3cqZAp">
                        <node concept="3clFbS" id="1pGF6PXyfSi" role="3clFbx">
                          <node concept="3clFbF" id="2zb8TK6wB5z" role="3cqZAp">
                            <node concept="2OqwBi" id="2zb8TK6wB5$" role="3clFbG">
                              <node concept="2OqwBi" id="2zb8TK6wB5_" role="2Oq$k0">
                                <node concept="37vLTw" id="2zb8TK6wB5A" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2zb8TK6tGr5" resolve="myDiffRegistry" />
                                </node>
                                <node concept="liA8E" id="2zb8TK6wB5B" role="2OqNvi">
                                  <ref role="37wK5l" to="lcr:2JwSLRbyYTp" resolve="getCurrentDifference" />
                                  <node concept="10QFUN" id="2zb8TK6wB5C" role="37wK5m">
                                    <node concept="3uibUv" id="2zb8TK6wB5D" role="10QFUM">
                                      <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                    </node>
                                    <node concept="2OqwBi" id="1EaAyGRg_pG" role="10QFUP">
                                      <node concept="37vLTw" id="1EaAyGRg_pH" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                                      </node>
                                      <node concept="liA8E" id="1EaAyGRg_pI" role="2OqNvi">
                                        <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="2zb8TK6wB5H" role="2OqNvi">
                                <ref role="37wK5l" to="lcr:2JwSLRbziNe" resolve="removeDifferenceListener" />
                                <node concept="37vLTw" id="2zb8TK6wB5I" role="37wK5m">
                                  <ref role="3cqZAo" node="2zb8TK6uO0d" resolve="myDifferenceListener" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2ZW3vV" id="1pGF6PXyiAr" role="3clFbw">
                          <node concept="3uibUv" id="1pGF6PXyjhT" role="2ZW6by">
                            <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                          </node>
                          <node concept="2OqwBi" id="1pGF6PXyhWh" role="2ZW6bz">
                            <node concept="37vLTw" id="1EaAyGRg$mn" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="1EaAyGRg_1N" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2jv$fqwevnV" role="3cqZAp">
              <property role="TyiWK" value="false" />
              <property role="TyiWL" value="true" />
              <node concept="3y3z36" id="2jv$fqwevnW" role="3clFbw">
                <node concept="10Nm6u" id="2jv$fqwevnX" role="3uHU7w" />
                <node concept="37vLTw" id="2jv$fqwevnY" role="3uHU7B">
                  <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
                </node>
              </node>
              <node concept="3clFbS" id="2jv$fqwevnZ" role="3clFbx">
                <node concept="3clFbF" id="2jv$fqwevo0" role="3cqZAp">
                  <node concept="2OqwBi" id="2jv$fqwevo1" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeufP2" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
                    </node>
                    <node concept="liA8E" id="2jv$fqwevo3" role="2OqNvi">
                      <ref role="37wK5l" to="qkt:~DefaultActionGroup.removeAll()" resolve="removeAll" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2jv$fqwevo4" role="3cqZAp">
              <node concept="37vLTI" id="2jv$fqwevo5" role="3clFbG">
                <node concept="10Nm6u" id="2jv$fqwevo6" role="37vLTx" />
                <node concept="37vLTw" id="2jv$fqwevo7" role="37vLTJ">
                  <ref role="3cqZAo" node="2jv$fqwev8g" resolve="myActionGroup" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4CGE8mdfVQu" role="3cqZAp">
              <node concept="2OqwBi" id="4CGE8mdfWSS" role="3clFbG">
                <node concept="37vLTw" id="4CGE8mdfVQs" role="2Oq$k0">
                  <ref role="3cqZAo" node="1zZcg$v3iuq" resolve="myMainLayout" />
                </node>
                <node concept="liA8E" id="4CGE8mdfXvp" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:v7wmxdPE63" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4CGE8mdfYGB" role="3cqZAp">
              <node concept="2OqwBi" id="4CGE8mdfZMc" role="3clFbG">
                <node concept="37vLTw" id="4CGE8mdfYG_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1zZcg$v3uDs" resolve="myInspectorLayout" />
                </node>
                <node concept="liA8E" id="4CGE8mdg0hZ" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:v7wmxdPE63" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7CQX2TzHZI5" role="3cqZAp">
              <node concept="2OqwBi" id="7CQX2TzI0iV" role="3clFbG">
                <node concept="37vLTw" id="7CQX2TzHZI3" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev82" resolve="myDiffEditorsGroup" />
                </node>
                <node concept="liA8E" id="7CQX2TzI0q6" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:7CQX2TzHbyu" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3iM55xNpM3K" role="3cqZAp">
              <node concept="37vLTI" id="3iM55xNpMBY" role="3clFbG">
                <node concept="10Nm6u" id="3iM55xNpMIz" role="37vLTx" />
                <node concept="37vLTw" id="3iM55xNpM3I" role="37vLTJ">
                  <ref role="3cqZAo" node="2jv$fqwev7_" resolve="myMineEditor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3iM55xNpNik" role="3cqZAp">
              <node concept="37vLTI" id="3iM55xNpNRH" role="3clFbG">
                <node concept="10Nm6u" id="3iM55xNpNYi" role="37vLTx" />
                <node concept="37vLTw" id="3iM55xNpNii" role="37vLTJ">
                  <ref role="3cqZAo" node="2jv$fqwev7y" resolve="myResultEditor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3iM55xNpOMC" role="3cqZAp">
              <node concept="37vLTI" id="3iM55xNpPY1" role="3clFbG">
                <node concept="10Nm6u" id="3iM55xNpQcr" role="37vLTx" />
                <node concept="37vLTw" id="3iM55xNpOMA" role="37vLTJ">
                  <ref role="3cqZAo" node="2jv$fqwev7C" resolve="myRepositoryEditor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="73GkhK4Am9l" role="3cqZAp">
              <node concept="2OqwBi" id="73GkhK4AmIy" role="3clFbG">
                <node concept="37vLTw" id="73GkhK4Am9j" role="2Oq$k0">
                  <ref role="3cqZAo" node="73GkhK4AfNS" resolve="myInvalidationHandler" />
                </node>
                <node concept="liA8E" id="73GkhK4Ap2l" role="2OqNvi">
                  <ref role="37wK5l" node="73GkhK4Anij" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Lh2RrCHzWU" role="3cqZAp">
              <node concept="2OqwBi" id="3Lh2RrCHGMu" role="3clFbG">
                <node concept="37vLTw" id="3Lh2RrCHzWS" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwev6T" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="3Lh2RrCHGYo" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3UEHyzu03mp" resolve="setChangesInvalidateHandler" />
                  <node concept="10Nm6u" id="3Lh2RrCHH3m" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2jv$fqwevoZ" role="3cqZAp">
              <node concept="37vLTI" id="2jv$fqwevp0" role="3clFbG">
                <node concept="3clFbT" id="2jv$fqwevp1" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuPz7" role="37vLTJ">
                  <ref role="3cqZAo" node="2jv$fqwev6W" resolve="myDisposed" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="5rV$5P0GmgL" role="EKbjA">
      <ref role="3uigEE" to="mnlj:~PropertyChangeListener" resolve="PropertyChangeListener" />
    </node>
    <node concept="2tJIrI" id="73GkhK4_Sxo" role="jymVt" />
    <node concept="312cEu" id="73GkhK4_Tv8" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="InvalidationHandler" />
      <property role="2bfB8j" value="true" />
      <node concept="312cEg" id="73GkhK4A3oX" role="jymVt">
        <property role="TrG5h" value="myHighlighScheduled" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="73GkhK4A2eY" role="1B3o_S" />
        <node concept="3uibUv" id="73GkhK4A3oV" role="1tU5fm">
          <ref role="3uigEE" to="i5cy:~AtomicBoolean" resolve="AtomicBoolean" />
        </node>
        <node concept="2ShNRf" id="73GkhK4A3FX" role="33vP2m">
          <node concept="1pGfFk" id="73GkhK4A69n" role="2ShVmc">
            <ref role="37wK5l" to="i5cy:~AtomicBoolean.&lt;init&gt;(boolean)" resolve="AtomicBoolean" />
            <node concept="3clFbT" id="73GkhK4A6rK" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="73GkhK4Aa7m" role="jymVt">
        <property role="TrG5h" value="myMA" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="73GkhK4Aa7n" role="1B3o_S" />
        <node concept="3uibUv" id="73GkhK4Aa7p" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
        </node>
      </node>
      <node concept="2tJIrI" id="73GkhK4A0FG" role="jymVt" />
      <node concept="3clFbW" id="73GkhK4A9NY" role="jymVt">
        <node concept="3cqZAl" id="73GkhK4A9O0" role="3clF45" />
        <node concept="3Tm6S6" id="73GkhK4A9O1" role="1B3o_S" />
        <node concept="3clFbS" id="73GkhK4A9O2" role="3clF47">
          <node concept="3clFbF" id="73GkhK4Aa7q" role="3cqZAp">
            <node concept="37vLTI" id="73GkhK4Aa7s" role="3clFbG">
              <node concept="37vLTw" id="73GkhK4Aa7v" role="37vLTJ">
                <ref role="3cqZAo" node="73GkhK4Aa7m" resolve="myMA" />
              </node>
              <node concept="37vLTw" id="73GkhK4Aa7w" role="37vLTx">
                <ref role="3cqZAo" node="73GkhK4Aa6N" resolve="ma" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="73GkhK4Abec" role="3cqZAp">
            <node concept="2OqwBi" id="73GkhK4AbBZ" role="3clFbG">
              <node concept="37vLTw" id="73GkhK4Abea" role="2Oq$k0">
                <ref role="3cqZAo" node="73GkhK4Aa7m" resolve="myMA" />
              </node>
              <node concept="liA8E" id="73GkhK4AbIp" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.addCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="addCommandListener" />
                <node concept="Xjq3P" id="73GkhK4Ac1K" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="73GkhK4Aa6N" role="3clF46">
          <property role="TrG5h" value="ma" />
          <node concept="3uibUv" id="73GkhK4Aa6M" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
          </node>
          <node concept="2AHcQZ" id="73GkhK4AadF" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="73GkhK4A9xi" role="jymVt" />
      <node concept="3clFb_" id="73GkhK4A0xe" role="jymVt">
        <property role="TrG5h" value="doInvalidate" />
        <node concept="3clFbS" id="73GkhK4A0xh" role="3clF47">
          <node concept="3clFbF" id="73GkhK4A0ct" role="3cqZAp">
            <node concept="2OqwBi" id="73GkhK4A0cu" role="3clFbG">
              <node concept="liA8E" id="73GkhK4A0cv" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable)" resolve="runReadInEDT" />
                <node concept="1bVj0M" id="73GkhK4A0cw" role="37wK5m">
                  <node concept="3clFbS" id="73GkhK4A0cx" role="1bW5cS">
                    <node concept="1X3_iC" id="26aXtsci3au" role="lGtFl">
                      <property role="3V$3am" value="statement" />
                      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                      <node concept="RRSsy" id="73GkhK4A0cy" role="8Wnug">
                        <property role="RRSoG" value="gZ5fksE/warn" />
                        <node concept="Xl_RD" id="73GkhK4A0cz" role="RRSoy">
                          <property role="Xl_RC" value="rehighlighting" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="73GkhK4A0c$" role="3cqZAp">
                      <node concept="1rXfSq" id="73GkhK4A0c_" role="3clFbG">
                        <ref role="37wK5l" node="2jv$fqwevfx" resolve="rehighlight" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="73GkhK4Aayt" role="2Oq$k0">
                <ref role="3cqZAo" node="73GkhK4Aa7m" resolve="myMA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="73GkhK4A0nJ" role="1B3o_S" />
        <node concept="3cqZAl" id="73GkhK4A0xc" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="73GkhK4AmWZ" role="jymVt" />
      <node concept="3clFb_" id="73GkhK4Anij" role="jymVt">
        <property role="TrG5h" value="dispose" />
        <node concept="3clFbS" id="73GkhK4Anim" role="3clF47">
          <node concept="3clFbF" id="73GkhK4An_S" role="3cqZAp">
            <node concept="2OqwBi" id="73GkhK4Aooh" role="3clFbG">
              <node concept="37vLTw" id="73GkhK4An_R" role="2Oq$k0">
                <ref role="3cqZAo" node="73GkhK4Aa7m" resolve="myMA" />
              </node>
              <node concept="liA8E" id="73GkhK4Aoyj" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.removeCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="removeCommandListener" />
                <node concept="Xjq3P" id="73GkhK4AoOG" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="73GkhK4An8a" role="1B3o_S" />
        <node concept="3cqZAl" id="73GkhK4Anih" role="3clF45" />
      </node>
      <node concept="3Tm6S6" id="73GkhK4_T6M" role="1B3o_S" />
      <node concept="3uibUv" id="73GkhK4_TL0" role="EKbjA">
        <ref role="3uigEE" to="bmv6:3UEHyzu03mb" resolve="MergeSession.ChangesInvalidateHandler" />
      </node>
      <node concept="3uibUv" id="73GkhK4_TSr" role="EKbjA">
        <ref role="3uigEE" to="nvd4:~CommandListener" resolve="CommandListener" />
      </node>
      <node concept="2tJIrI" id="73GkhK4A0dS" role="jymVt" />
      <node concept="3clFb_" id="73GkhK4A0bT" role="jymVt">
        <property role="TrG5h" value="someChangesInvalidated" />
        <node concept="3cqZAl" id="73GkhK4A0bU" role="3clF45" />
        <node concept="3Tm1VV" id="73GkhK4A0bV" role="1B3o_S" />
        <node concept="3clFbS" id="73GkhK4A0bX" role="3clF47">
          <node concept="3clFbF" id="73GkhK4AsFB" role="3cqZAp">
            <node concept="2OqwBi" id="73GkhK4At6J" role="3clFbG">
              <node concept="37vLTw" id="73GkhK4AsFA" role="2Oq$k0">
                <ref role="3cqZAo" node="73GkhK4A3oX" resolve="myHighlighScheduled" />
              </node>
              <node concept="liA8E" id="73GkhK4Atf7" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicBoolean.set(boolean)" resolve="set" />
                <node concept="3clFbT" id="73GkhK4Atyv" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="73GkhK4A0bY" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="73GkhK4A0dr" role="jymVt" />
      <node concept="3clFb_" id="73GkhK4A0bZ" role="jymVt">
        <property role="TrG5h" value="commandStarted" />
        <node concept="3Tm1VV" id="73GkhK4A0c0" role="1B3o_S" />
        <node concept="3cqZAl" id="73GkhK4A0c2" role="3clF45" />
        <node concept="3clFbS" id="73GkhK4A0c3" role="3clF47">
          <node concept="3SKdUt" id="73GkhK4A6Lb" role="3cqZAp">
            <node concept="1PaTwC" id="73GkhK4A6Lc" role="1aUNEU">
              <node concept="3oM_SD" id="73GkhK4A6Ld" role="1PaTwD">
                <property role="3oM_SC" value="nop" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="73GkhK4A0c4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="73GkhK4A0ds" role="jymVt" />
      <node concept="3clFb_" id="73GkhK4A0c5" role="jymVt">
        <property role="TrG5h" value="commandFinished" />
        <node concept="3Tm1VV" id="73GkhK4A0c6" role="1B3o_S" />
        <node concept="3cqZAl" id="73GkhK4A0c8" role="3clF45" />
        <node concept="3clFbS" id="73GkhK4A0c9" role="3clF47">
          <node concept="3clFbJ" id="73GkhK4A73C" role="3cqZAp">
            <node concept="2OqwBi" id="73GkhK4A85k" role="3clFbw">
              <node concept="37vLTw" id="73GkhK4A7Cq" role="2Oq$k0">
                <ref role="3cqZAo" node="73GkhK4A3oX" resolve="myHighlighScheduled" />
              </node>
              <node concept="liA8E" id="73GkhK4A8k5" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicBoolean.compareAndSet(boolean,boolean)" resolve="compareAndSet" />
                <node concept="3clFbT" id="73GkhK4A8Bw" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3clFbT" id="73GkhK4A9st" role="37wK5m" />
              </node>
            </node>
            <node concept="3clFbS" id="73GkhK4A73E" role="3clFbx">
              <node concept="3clFbF" id="73GkhK4Au8q" role="3cqZAp">
                <node concept="1rXfSq" id="73GkhK4Au8p" role="3clFbG">
                  <ref role="37wK5l" node="73GkhK4A0xe" resolve="doInvalidate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="73GkhK4A0ca" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="56VWuMNcOSR" role="jymVt" />
    <node concept="3clFb_" id="56VWuMNd2ly" role="jymVt">
      <property role="TrG5h" value="createTitle" />
      <node concept="2AHcQZ" id="56VWuMNd2lz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="56VWuMNd2l$" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="2AHcQZ" id="56VWuMNd2l_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="2AHcQZ" id="56VWuMNd2lA" role="2AJF6D">
          <ref role="2AI5Lk" to="zn9m:~NlsContexts$Label" resolve="NlsContexts.Label" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2lB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="56VWuMNd2lC" role="3clF46">
        <property role="TrG5h" value="titleCustomizer" />
        <node concept="2AHcQZ" id="56VWuMNd2lD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2lE" role="1tU5fm">
          <ref role="3uigEE" to="yt4f:~DiffEditorTitleCustomizer" resolve="DiffEditorTitleCustomizer" />
        </node>
      </node>
      <node concept="3clFbS" id="56VWuMNd2lF" role="3clF47">
        <node concept="3cpWs6" id="56VWuMNd2lG" role="3cqZAp">
          <node concept="1rXfSq" id="56VWuMNd2lH" role="3cqZAk">
            <ref role="37wK5l" node="56VWuMNd2lR" resolve="createTitle" />
            <node concept="10Nm6u" id="56VWuMNd2lI" role="37wK5m" />
            <node concept="37vLTw" id="56VWuMNd2lJ" role="37wK5m">
              <ref role="3cqZAo" node="56VWuMNd2l$" resolve="title" />
            </node>
            <node concept="10Nm6u" id="56VWuMNd2lK" role="37wK5m" />
            <node concept="10Nm6u" id="56VWuMNd2lL" role="37wK5m" />
            <node concept="10Nm6u" id="56VWuMNd2lM" role="37wK5m" />
            <node concept="3clFbT" id="56VWuMNd2lN" role="37wK5m" />
            <node concept="37vLTw" id="56VWuMNd2lO" role="37wK5m">
              <ref role="3cqZAo" node="56VWuMNd2lC" resolve="titleCustomizer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="56VWuMNd2lP" role="1B3o_S" />
      <node concept="3uibUv" id="56VWuMNd2lQ" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="3clFb_" id="56VWuMNd2lR" role="jymVt">
      <property role="TrG5h" value="createTitle" />
      <node concept="2AHcQZ" id="56VWuMNd2lS" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="56VWuMNd2lT" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="2AHcQZ" id="56VWuMNd2lU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2lV" role="1tU5fm">
          <ref role="3uigEE" to="yt4f:~FrameDiffTool$DiffViewer" resolve="FrameDiffTool.DiffViewer" />
        </node>
      </node>
      <node concept="37vLTG" id="56VWuMNd2lW" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="2AHcQZ" id="56VWuMNd2lX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="2AHcQZ" id="56VWuMNd2lY" role="2AJF6D">
          <ref role="2AI5Lk" to="zn9m:~NlsContexts$Label" resolve="NlsContexts.Label" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2lZ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="56VWuMNd2m0" role="3clF46">
        <property role="TrG5h" value="separator" />
        <node concept="2AHcQZ" id="56VWuMNd2m1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2m2" role="1tU5fm">
          <ref role="3uigEE" to="9w4s:~LineSeparator" resolve="LineSeparator" />
        </node>
      </node>
      <node concept="37vLTG" id="56VWuMNd2m3" role="3clF46">
        <property role="TrG5h" value="charset" />
        <node concept="2AHcQZ" id="56VWuMNd2m4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2m5" role="1tU5fm">
          <ref role="3uigEE" to="7x5y:~Charset" resolve="Charset" />
        </node>
      </node>
      <node concept="37vLTG" id="56VWuMNd2m6" role="3clF46">
        <property role="TrG5h" value="bom" />
        <node concept="2AHcQZ" id="56VWuMNd2m7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2m8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="37vLTG" id="56VWuMNd2m9" role="3clF46">
        <property role="TrG5h" value="readOnly" />
        <node concept="10P_77" id="56VWuMNd2ma" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="56VWuMNd2mb" role="3clF46">
        <property role="TrG5h" value="titleCustomizer" />
        <node concept="2AHcQZ" id="56VWuMNd2mc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2md" role="1tU5fm">
          <ref role="3uigEE" to="yt4f:~DiffEditorTitleCustomizer" resolve="DiffEditorTitleCustomizer" />
        </node>
      </node>
      <node concept="3clFbS" id="56VWuMNd2me" role="3clF47">
        <node concept="3cpWs8" id="56VWuMNd2mg" role="3cqZAp">
          <node concept="3cpWsn" id="56VWuMNd2mf" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="56VWuMNd2mh" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="56VWuMNdeOZ" role="33vP2m">
              <node concept="1pGfFk" id="56VWuMNdeS9" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="56VWuMNdeSa" role="37wK5m">
                  <node concept="1pGfFk" id="56VWuMNdeSb" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56VWuMNd2mk" role="3cqZAp">
          <node concept="2OqwBi" id="56VWuMNdY6N" role="3clFbG">
            <node concept="37vLTw" id="56VWuMNdeUq" role="2Oq$k0">
              <ref role="3cqZAo" node="56VWuMNd2mf" resolve="panel" />
            </node>
            <node concept="liA8E" id="56VWuMNdY6O" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="56VWuMNdY6P" role="37wK5m">
                <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty(int,int)" resolve="empty" />
                <node concept="3cmrfG" id="56VWuMNdY6Q" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="56VWuMNdY6R" role="37wK5m">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="56VWuMNd2mq" role="3cqZAp">
          <node concept="3cpWsn" id="56VWuMNd2mp" role="3cpWs9">
            <property role="TrG5h" value="labelWithIcon" />
            <node concept="3uibUv" id="56VWuMNd2mr" role="1tU5fm">
              <ref role="3uigEE" to="5stq:~BorderLayoutPanel" resolve="BorderLayoutPanel" />
            </node>
            <node concept="2ShNRf" id="56VWuMNqJPM" role="33vP2m">
              <node concept="1pGfFk" id="56VWuMNqJPT" role="2ShVmc">
                <ref role="37wK5l" to="5stq:~BorderLayoutPanel.&lt;init&gt;()" resolve="BorderLayoutPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="56VWuMNd2mu" role="3cqZAp">
          <node concept="3cpWsn" id="56VWuMNd2mt" role="3cpWs9">
            <property role="TrG5h" value="titleLabel" />
            <node concept="3uibUv" id="56VWuMNd2mv" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="3K4zz7" id="56VWuMNd2mD" role="33vP2m">
              <node concept="3y3z36" id="56VWuMNd2mw" role="3K4Cdx">
                <node concept="37vLTw" id="56VWuMNd2mx" role="3uHU7B">
                  <ref role="3cqZAo" node="56VWuMNd2mb" resolve="titleCustomizer" />
                </node>
                <node concept="10Nm6u" id="56VWuMNd2my" role="3uHU7w" />
              </node>
              <node concept="2OqwBi" id="56VWuMNekRA" role="3K4E3e">
                <node concept="37vLTw" id="56VWuMNdeLo" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNd2mb" resolve="titleCustomizer" />
                </node>
                <node concept="liA8E" id="56VWuMNekRB" role="2OqNvi">
                  <ref role="37wK5l" to="yt4f:~DiffEditorTitleCustomizer.getLabel()" resolve="getLabel" />
                </node>
              </node>
              <node concept="2OqwBi" id="56VWuMNthUy" role="3K4GZi">
                <node concept="2ShNRf" id="56VWuMNsFyh" role="2Oq$k0">
                  <node concept="1pGfFk" id="56VWuMNsFzt" role="2ShVmc">
                    <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                    <node concept="2YIFZM" id="56VWuMNsFzu" role="37wK5m">
                      <ref role="1Pybhc" to="zdap:~StringUtil" resolve="StringUtil" />
                      <ref role="37wK5l" to="zdap:~StringUtil.notNullize(java.lang.String)" resolve="notNullize" />
                      <node concept="37vLTw" id="56VWuMNsFzv" role="37wK5m">
                        <ref role="3cqZAo" node="56VWuMNd2lW" resolve="title" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="56VWuMNthUz" role="2OqNvi">
                  <ref role="37wK5l" to="qqrq:~JBLabel.setCopyable(boolean)" resolve="setCopyable" />
                  <node concept="3clFbT" id="56VWuMNthU$" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56VWuMNd2mE" role="3cqZAp">
          <node concept="1Wc70l" id="56VWuMNd2mF" role="3clFbw">
            <node concept="3y3z36" id="56VWuMNd2mG" role="3uHU7B">
              <node concept="37vLTw" id="56VWuMNd2mH" role="3uHU7B">
                <ref role="3cqZAo" node="56VWuMNd2mb" resolve="titleCustomizer" />
              </node>
              <node concept="10Nm6u" id="56VWuMNd2mI" role="3uHU7w" />
            </node>
            <node concept="2ZW3vV" id="56VWuMNd2mL" role="3uHU7w">
              <node concept="37vLTw" id="56VWuMNd2mJ" role="2ZW6bz">
                <ref role="3cqZAo" node="56VWuMNd2mt" resolve="titleLabel" />
              </node>
              <node concept="3uibUv" id="56VWuMNd2mK" role="2ZW6by">
                <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="56VWuMNd2mN" role="3clFbx">
            <node concept="3SKdUt" id="56VWuMNd2pU" role="3cqZAp">
              <node concept="1PaTwC" id="56VWuMNd2pV" role="1aUNEU">
                <node concept="3oM_SD" id="56VWuMNd2pX" role="1PaTwD">
                  <property role="3oM_SC" value="Disposer.register(viewer," />
                </node>
                <node concept="3oM_SD" id="56VWuMNd2pY" role="1PaTwD">
                  <property role="3oM_SC" value="disposableTitleLabel);" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="56VWuMNd2mO" role="3cqZAp">
              <node concept="2OqwBi" id="56VWuMNAwOq" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNuxyz" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNumsK" resolve="myTitleCustomizersDisposables" />
                </node>
                <node concept="TSZUe" id="56VWuMNAHmS" role="2OqNvi">
                  <node concept="10QFUN" id="56VWuMNARFD" role="25WWJ7">
                    <node concept="3uibUv" id="56VWuMNARFE" role="10QFUM">
                      <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
                    </node>
                    <node concept="37vLTw" id="56VWuMNARFF" role="10QFUP">
                      <ref role="3cqZAo" node="56VWuMNd2mt" resolve="titleLabel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56VWuMNd2mR" role="3cqZAp">
          <node concept="3y3z36" id="56VWuMNd2mS" role="3clFbw">
            <node concept="37vLTw" id="56VWuMNd2mT" role="3uHU7B">
              <ref role="3cqZAo" node="56VWuMNd2mt" resolve="titleLabel" />
            </node>
            <node concept="10Nm6u" id="56VWuMNd2mU" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="56VWuMNd2mW" role="3clFbx">
            <node concept="3clFbF" id="56VWuMNd2mX" role="3cqZAp">
              <node concept="2OqwBi" id="56VWuMNrfEM" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNdeSs" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNd2mp" resolve="labelWithIcon" />
                </node>
                <node concept="liA8E" id="56VWuMNrfEN" role="2OqNvi">
                  <ref role="37wK5l" to="5stq:~BorderLayoutPanel.addToCenter(java.awt.Component)" resolve="addToCenter" />
                  <node concept="37vLTw" id="56VWuMNrfEO" role="37wK5m">
                    <ref role="3cqZAo" node="56VWuMNd2mt" resolve="titleLabel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56VWuMNd2n0" role="3cqZAp">
          <node concept="37vLTw" id="56VWuMNd2n1" role="3clFbw">
            <ref role="3cqZAo" node="56VWuMNd2m9" resolve="readOnly" />
          </node>
          <node concept="3clFbS" id="56VWuMNd2n3" role="3clFbx">
            <node concept="3clFbF" id="56VWuMNd2n4" role="3cqZAp">
              <node concept="2OqwBi" id="56VWuMNqJP$" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNdeW7" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNd2mp" resolve="labelWithIcon" />
                </node>
                <node concept="liA8E" id="56VWuMNqJP_" role="2OqNvi">
                  <ref role="37wK5l" to="5stq:~BorderLayoutPanel.addToLeft(java.awt.Component)" resolve="addToLeft" />
                  <node concept="2ShNRf" id="56VWuMNsFzA" role="37wK5m">
                    <node concept="1pGfFk" id="56VWuMNsF$c" role="2ShVmc">
                      <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(javax.swing.Icon)" resolve="JBLabel" />
                      <node concept="10M0yZ" id="56VWuMNsF$d" role="37wK5m">
                        <ref role="1PxDUh" to="z2i8:~AllIcons$Ide" resolve="AllIcons.Ide" />
                        <ref role="3cqZAo" to="z2i8:~AllIcons$Ide.Readonly" resolve="Readonly" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56VWuMNd2n8" role="3cqZAp">
          <node concept="2OqwBi" id="56VWuMNdBma" role="3clFbG">
            <node concept="37vLTw" id="56VWuMNdeTl" role="2Oq$k0">
              <ref role="3cqZAo" node="56VWuMNd2mf" resolve="panel" />
            </node>
            <node concept="liA8E" id="56VWuMNdBmb" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="56VWuMNdBmc" role="37wK5m">
                <ref role="3cqZAo" node="56VWuMNd2mp" resolve="labelWithIcon" />
              </node>
              <node concept="10M0yZ" id="56VWuMNeXsE" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56VWuMNd2nc" role="3cqZAp">
          <node concept="22lmx$" id="56VWuMNd2nd" role="3clFbw">
            <node concept="3y3z36" id="56VWuMNd2ne" role="3uHU7B">
              <node concept="37vLTw" id="56VWuMNd2nf" role="3uHU7B">
                <ref role="3cqZAo" node="56VWuMNd2m3" resolve="charset" />
              </node>
              <node concept="10Nm6u" id="56VWuMNd2ng" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="56VWuMNd2nh" role="3uHU7w">
              <node concept="37vLTw" id="56VWuMNd2ni" role="3uHU7B">
                <ref role="3cqZAo" node="56VWuMNd2m0" resolve="separator" />
              </node>
              <node concept="10Nm6u" id="56VWuMNd2nj" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="56VWuMNd2nl" role="3clFbx">
            <node concept="3cpWs8" id="56VWuMNd2nn" role="3cqZAp">
              <node concept="3cpWsn" id="56VWuMNd2nm" role="3cpWs9">
                <property role="TrG5h" value="panel2" />
                <node concept="3uibUv" id="56VWuMNd2no" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                </node>
                <node concept="2ShNRf" id="56VWuMNdeVD" role="33vP2m">
                  <node concept="1pGfFk" id="56VWuMNdeVJ" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="56VWuMNd2nq" role="3cqZAp">
              <node concept="2OqwBi" id="56VWuMNdTO2" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNdeNH" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNd2nm" resolve="panel2" />
                </node>
                <node concept="liA8E" id="56VWuMNdTO3" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                  <node concept="2ShNRf" id="56VWuMNeXpy" role="37wK5m">
                    <node concept="1pGfFk" id="56VWuMNeXrT" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                      <node concept="37vLTw" id="56VWuMNeXrU" role="37wK5m">
                        <ref role="3cqZAo" node="56VWuMNd2nm" resolve="panel2" />
                      </node>
                      <node concept="10M0yZ" id="56VWuMNf_7_" role="37wK5m">
                        <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                        <ref role="3cqZAo" to="dxuu:~BoxLayout.X_AXIS" resolve="X_AXIS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="56VWuMNd2nv" role="3cqZAp">
              <node concept="3y3z36" id="56VWuMNd2nw" role="3clFbw">
                <node concept="37vLTw" id="56VWuMNd2nx" role="3uHU7B">
                  <ref role="3cqZAo" node="56VWuMNd2m3" resolve="charset" />
                </node>
                <node concept="10Nm6u" id="56VWuMNd2ny" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="56VWuMNd2n$" role="3clFbx">
                <node concept="3clFbF" id="56VWuMNd2n_" role="3cqZAp">
                  <node concept="2OqwBi" id="56VWuMNdyGt" role="3clFbG">
                    <node concept="37vLTw" id="56VWuMNdeOJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="56VWuMNd2nm" resolve="panel2" />
                    </node>
                    <node concept="liA8E" id="56VWuMNdyGu" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="56VWuMNeXs4" role="37wK5m">
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <ref role="37wK5l" to="dxuu:~Box.createRigidArea(java.awt.Dimension)" resolve="createRigidArea" />
                        <node concept="2YIFZM" id="56VWuMNeXs5" role="37wK5m">
                          <ref role="1Pybhc" to="g1qu:~JBUI" resolve="JBUI" />
                          <ref role="37wK5l" to="g1qu:~JBUI.size(int,int)" resolve="size" />
                          <node concept="3cmrfG" id="56VWuMNeXs6" role="37wK5m">
                            <property role="3cmrfH" value="4" />
                          </node>
                          <node concept="3cmrfG" id="56VWuMNeXs7" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="56VWuMNd2nF" role="3cqZAp">
                  <node concept="2OqwBi" id="56VWuMNdFZH" role="3clFbG">
                    <node concept="37vLTw" id="56VWuMNdeSW" role="2Oq$k0">
                      <ref role="3cqZAo" node="56VWuMNd2nm" resolve="panel2" />
                    </node>
                    <node concept="liA8E" id="56VWuMNdFZI" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="1rXfSq" id="56VWuMNdFZJ" role="37wK5m">
                        <ref role="37wK5l" node="56VWuMNd2o8" resolve="createCharsetPanel" />
                        <node concept="37vLTw" id="56VWuMNdFZK" role="37wK5m">
                          <ref role="3cqZAo" node="56VWuMNd2m3" resolve="charset" />
                        </node>
                        <node concept="37vLTw" id="56VWuMNdFZL" role="37wK5m">
                          <ref role="3cqZAo" node="56VWuMNd2m6" resolve="bom" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="56VWuMNd2nK" role="3cqZAp">
              <node concept="3y3z36" id="56VWuMNd2nL" role="3clFbw">
                <node concept="37vLTw" id="56VWuMNd2nM" role="3uHU7B">
                  <ref role="3cqZAo" node="56VWuMNd2m0" resolve="separator" />
                </node>
                <node concept="10Nm6u" id="56VWuMNd2nN" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="56VWuMNd2nP" role="3clFbx">
                <node concept="3clFbF" id="56VWuMNd2nQ" role="3cqZAp">
                  <node concept="2OqwBi" id="56VWuMNe6w0" role="3clFbG">
                    <node concept="37vLTw" id="56VWuMNdeVy" role="2Oq$k0">
                      <ref role="3cqZAo" node="56VWuMNd2nm" resolve="panel2" />
                    </node>
                    <node concept="liA8E" id="56VWuMNe6w1" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="56VWuMNe6w2" role="37wK5m">
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <ref role="37wK5l" to="dxuu:~Box.createRigidArea(java.awt.Dimension)" resolve="createRigidArea" />
                        <node concept="2YIFZM" id="56VWuMNe6w3" role="37wK5m">
                          <ref role="1Pybhc" to="g1qu:~JBUI" resolve="JBUI" />
                          <ref role="37wK5l" to="g1qu:~JBUI.size(int,int)" resolve="size" />
                          <node concept="3cmrfG" id="56VWuMNe6w4" role="37wK5m">
                            <property role="3cmrfH" value="4" />
                          </node>
                          <node concept="3cmrfG" id="56VWuMNe6w5" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="56VWuMNd2nW" role="3cqZAp">
                  <node concept="2OqwBi" id="56VWuMNdKFo" role="3clFbG">
                    <node concept="37vLTw" id="56VWuMNdeWE" role="2Oq$k0">
                      <ref role="3cqZAo" node="56VWuMNd2nm" resolve="panel2" />
                    </node>
                    <node concept="liA8E" id="56VWuMNdKFp" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="1rXfSq" id="56VWuMNdKFq" role="37wK5m">
                        <ref role="37wK5l" node="56VWuMNd2p1" resolve="createSeparatorPanel" />
                        <node concept="37vLTw" id="56VWuMNdKFr" role="37wK5m">
                          <ref role="3cqZAo" node="56VWuMNd2m0" resolve="separator" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="56VWuMNd2o0" role="3cqZAp">
              <node concept="2OqwBi" id="56VWuMNdPjK" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNdeVm" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNd2mf" resolve="panel" />
                </node>
                <node concept="liA8E" id="56VWuMNdPjL" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="56VWuMNdPjM" role="37wK5m">
                    <ref role="3cqZAo" node="56VWuMNd2nm" resolve="panel2" />
                  </node>
                  <node concept="10M0yZ" id="56VWuMNeXsO" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                    <ref role="3cqZAo" to="z60i:~BorderLayout.EAST" resolve="EAST" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="56VWuMNd2o4" role="3cqZAp">
          <node concept="37vLTw" id="56VWuMNd2o5" role="3cqZAk">
            <ref role="3cqZAo" node="56VWuMNd2mf" resolve="panel" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="56VWuMNd2o6" role="1B3o_S" />
      <node concept="3uibUv" id="56VWuMNd2o7" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="2YIFZL" id="56VWuMNd2o8" role="jymVt">
      <property role="TrG5h" value="createCharsetPanel" />
      <node concept="2AHcQZ" id="56VWuMNd2o9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="56VWuMNd2oa" role="3clF46">
        <property role="TrG5h" value="charset" />
        <node concept="2AHcQZ" id="56VWuMNd2ob" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2oc" role="1tU5fm">
          <ref role="3uigEE" to="7x5y:~Charset" resolve="Charset" />
        </node>
      </node>
      <node concept="37vLTG" id="56VWuMNd2od" role="3clF46">
        <property role="TrG5h" value="bom" />
        <node concept="2AHcQZ" id="56VWuMNd2oe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2of" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3clFbS" id="56VWuMNd2og" role="3clF47">
        <node concept="3cpWs8" id="56VWuMNd2oi" role="3cqZAp">
          <node concept="3cpWsn" id="56VWuMNd2oh" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="3uibUv" id="56VWuMNd2oj" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="56VWuMNmFVu" role="33vP2m">
              <node concept="37vLTw" id="56VWuMNdeTx" role="2Oq$k0">
                <ref role="3cqZAo" node="56VWuMNd2oa" resolve="charset" />
              </node>
              <node concept="liA8E" id="56VWuMNmFVv" role="2OqNvi">
                <ref role="37wK5l" to="7x5y:~Charset.displayName()" resolve="displayName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56VWuMNd2ol" role="3cqZAp">
          <node concept="1Wc70l" id="56VWuMNd2om" role="3clFbw">
            <node concept="3y3z36" id="56VWuMNd2on" role="3uHU7B">
              <node concept="37vLTw" id="56VWuMNd2oo" role="3uHU7B">
                <ref role="3cqZAo" node="56VWuMNd2od" resolve="bom" />
              </node>
              <node concept="10Nm6u" id="56VWuMNd2op" role="3uHU7w" />
            </node>
            <node concept="37vLTw" id="56VWuMNd2oq" role="3uHU7w">
              <ref role="3cqZAo" node="56VWuMNd2od" resolve="bom" />
            </node>
          </node>
          <node concept="3clFbS" id="56VWuMNd2os" role="3clFbx">
            <node concept="3clFbF" id="56VWuMNd2ot" role="3cqZAp">
              <node concept="37vLTI" id="56VWuMNd2ou" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNd2ov" role="37vLTJ">
                  <ref role="3cqZAo" node="56VWuMNd2oh" resolve="text" />
                </node>
                <node concept="2YIFZM" id="56VWuMNdeVS" role="37vLTx">
                  <ref role="1Pybhc" to="ok99:~DiffBundle" resolve="DiffBundle" />
                  <ref role="37wK5l" to="ok99:~DiffBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                  <node concept="Xl_RD" id="56VWuMNdeVT" role="37wK5m">
                    <property role="Xl_RC" value="diff.utf.charset.name.bom.suffix" />
                  </node>
                  <node concept="37vLTw" id="56VWuMNdeVU" role="37wK5m">
                    <ref role="3cqZAo" node="56VWuMNd2oh" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="56VWuMNd2o$" role="3cqZAp">
          <node concept="3cpWsn" id="56VWuMNd2oz" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <node concept="3uibUv" id="56VWuMNd2o_" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="56VWuMNdeUO" role="33vP2m">
              <node concept="1pGfFk" id="56VWuMNdeVc" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="37vLTw" id="56VWuMNdeVd" role="37wK5m">
                  <ref role="3cqZAo" node="56VWuMNd2oh" resolve="text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="56VWuMNd2pZ" role="3cqZAp">
          <node concept="1PaTwC" id="56VWuMNd2q0" role="1aUNEU">
            <node concept="3oM_SD" id="56VWuMNd2q2" role="1PaTwD">
              <property role="3oM_SC" value="TODO:" />
            </node>
            <node concept="3oM_SD" id="56VWuMNd2q3" role="1PaTwD">
              <property role="3oM_SC" value="specific" />
            </node>
            <node concept="3oM_SD" id="56VWuMNd2q4" role="1PaTwD">
              <property role="3oM_SC" value="colors" />
            </node>
            <node concept="3oM_SD" id="56VWuMNd2q5" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="56VWuMNd2q6" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
            <node concept="3oM_SD" id="56VWuMNd2q7" role="1PaTwD">
              <property role="3oM_SC" value="charsets" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56VWuMNd2oC" role="3cqZAp">
          <node concept="2OqwBi" id="56VWuMNnGk2" role="3clFbw">
            <node concept="37vLTw" id="56VWuMNdeO$" role="2Oq$k0">
              <ref role="3cqZAo" node="56VWuMNd2oa" resolve="charset" />
            </node>
            <node concept="liA8E" id="56VWuMNnGk3" role="2OqNvi">
              <ref role="37wK5l" to="7x5y:~Charset.equals(java.lang.Object)" resolve="equals" />
              <node concept="10M0yZ" id="56VWuMNoUQS" role="37wK5m">
                <ref role="1PxDUh" to="7x5y:~StandardCharsets" resolve="StandardCharsets" />
                <ref role="3cqZAo" to="7x5y:~StandardCharsets.UTF_8" resolve="UTF_8" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="56VWuMNd2oK" role="9aQIa">
            <node concept="2OqwBi" id="56VWuMNnc37" role="3clFbw">
              <node concept="37vLTw" id="56VWuMNdeT9" role="2Oq$k0">
                <ref role="3cqZAo" node="56VWuMNd2oa" resolve="charset" />
              </node>
              <node concept="liA8E" id="56VWuMNnc38" role="2OqNvi">
                <ref role="37wK5l" to="7x5y:~Charset.equals(java.lang.Object)" resolve="equals" />
                <node concept="10M0yZ" id="56VWuMNoUPv" role="37wK5m">
                  <ref role="1PxDUh" to="7x5y:~StandardCharsets" resolve="StandardCharsets" />
                  <ref role="3cqZAo" to="7x5y:~StandardCharsets.ISO_8859_1" resolve="ISO_8859_1" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="56VWuMNd2oS" role="9aQIa">
              <node concept="3clFbS" id="56VWuMNd2oT" role="9aQI4">
                <node concept="3clFbF" id="56VWuMNd2oU" role="3cqZAp">
                  <node concept="2OqwBi" id="56VWuMNeg30" role="3clFbG">
                    <node concept="37vLTw" id="56VWuMNdeWk" role="2Oq$k0">
                      <ref role="3cqZAo" node="56VWuMNd2oz" resolve="label" />
                    </node>
                    <node concept="liA8E" id="56VWuMNeg31" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.setForeground(java.awt.Color)" resolve="setForeground" />
                      <node concept="10M0yZ" id="56VWuMNeg32" role="37wK5m">
                        <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                        <ref role="3cqZAo" to="lzb2:~JBColor.BLACK" resolve="BLACK" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="56VWuMNd2oO" role="3clFbx">
              <node concept="3clFbF" id="56VWuMNd2oP" role="3cqZAp">
                <node concept="2OqwBi" id="56VWuMNe2PT" role="3clFbG">
                  <node concept="37vLTw" id="56VWuMNdeNy" role="2Oq$k0">
                    <ref role="3cqZAo" node="56VWuMNd2oz" resolve="label" />
                  </node>
                  <node concept="liA8E" id="56VWuMNe2PU" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JComponent.setForeground(java.awt.Color)" resolve="setForeground" />
                    <node concept="10M0yZ" id="56VWuMNe2PV" role="37wK5m">
                      <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                      <ref role="3cqZAo" to="lzb2:~JBColor.RED" resolve="RED" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="56VWuMNd2oG" role="3clFbx">
            <node concept="3clFbF" id="56VWuMNd2oH" role="3cqZAp">
              <node concept="2OqwBi" id="56VWuMNebd5" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNdeL3" role="2Oq$k0">
                  <ref role="3cqZAo" node="56VWuMNd2oz" resolve="label" />
                </node>
                <node concept="liA8E" id="56VWuMNebd6" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setForeground(java.awt.Color)" resolve="setForeground" />
                  <node concept="10M0yZ" id="56VWuMNeXsw" role="37wK5m">
                    <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                    <ref role="3cqZAo" to="lzb2:~JBColor.BLUE" resolve="BLUE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="56VWuMNd2oX" role="3cqZAp">
          <node concept="37vLTw" id="56VWuMNd2oY" role="3cqZAk">
            <ref role="3cqZAo" node="56VWuMNd2oz" resolve="label" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="56VWuMNd2oZ" role="1B3o_S" />
      <node concept="3uibUv" id="56VWuMNd2p0" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="2YIFZL" id="56VWuMNd2p1" role="jymVt">
      <property role="TrG5h" value="createSeparatorPanel" />
      <node concept="2AHcQZ" id="56VWuMNd2p2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="56VWuMNd2p3" role="3clF46">
        <property role="TrG5h" value="separator" />
        <node concept="2AHcQZ" id="56VWuMNd2p4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="56VWuMNd2p5" role="1tU5fm">
          <ref role="3uigEE" to="9w4s:~LineSeparator" resolve="LineSeparator" />
        </node>
      </node>
      <node concept="3clFbS" id="56VWuMNd2p6" role="3clF47">
        <node concept="3cpWs8" id="56VWuMNd2p8" role="3cqZAp">
          <node concept="3cpWsn" id="56VWuMNd2p7" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <node concept="3uibUv" id="56VWuMNd2p9" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="56VWuMNdeTz" role="33vP2m">
              <node concept="1pGfFk" id="56VWuMNdeU6" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="2OqwBi" id="56VWuMNogFv" role="37wK5m">
                  <node concept="37vLTw" id="56VWuMNdY79" role="2Oq$k0">
                    <ref role="3cqZAo" node="56VWuMNd2p3" resolve="separator" />
                  </node>
                  <node concept="liA8E" id="56VWuMNogFw" role="2OqNvi">
                    <ref role="37wK5l" to="9w4s:~LineSeparator.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="56VWuMNd2pd" role="3cqZAp">
          <node concept="3cpWsn" id="56VWuMNd2pc" role="3cpWs9">
            <property role="TrG5h" value="color" />
            <node concept="3uibUv" id="56VWuMNd2pe" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56VWuMNd2pf" role="3cqZAp">
          <node concept="3clFbC" id="56VWuMNd2pg" role="3clFbw">
            <node concept="37vLTw" id="56VWuMNd2ph" role="3uHU7B">
              <ref role="3cqZAo" node="56VWuMNd2p3" resolve="separator" />
            </node>
            <node concept="Rm8GO" id="56VWuMNnGlr" role="3uHU7w">
              <ref role="1Px2BO" to="9w4s:~LineSeparator" resolve="LineSeparator" />
              <ref role="Rm8GQ" to="9w4s:~LineSeparator.CRLF" resolve="CRLF" />
            </node>
          </node>
          <node concept="3clFbJ" id="56VWuMNd2pp" role="9aQIa">
            <node concept="3clFbC" id="56VWuMNd2pq" role="3clFbw">
              <node concept="37vLTw" id="56VWuMNd2pr" role="3uHU7B">
                <ref role="3cqZAo" node="56VWuMNd2p3" resolve="separator" />
              </node>
              <node concept="Rm8GO" id="56VWuMNm8ha" role="3uHU7w">
                <ref role="1Px2BO" to="9w4s:~LineSeparator" resolve="LineSeparator" />
                <ref role="Rm8GQ" to="9w4s:~LineSeparator.LF" resolve="LF" />
              </node>
            </node>
            <node concept="3clFbJ" id="56VWuMNd2pz" role="9aQIa">
              <node concept="3clFbC" id="56VWuMNd2p$" role="3clFbw">
                <node concept="37vLTw" id="56VWuMNd2p_" role="3uHU7B">
                  <ref role="3cqZAo" node="56VWuMNd2p3" resolve="separator" />
                </node>
                <node concept="Rm8GO" id="56VWuMNnGkd" role="3uHU7w">
                  <ref role="1Px2BO" to="9w4s:~LineSeparator" resolve="LineSeparator" />
                  <ref role="Rm8GQ" to="9w4s:~LineSeparator.CR" resolve="CR" />
                </node>
              </node>
              <node concept="9aQIb" id="56VWuMNd2pH" role="9aQIa">
                <node concept="3clFbS" id="56VWuMNd2pI" role="9aQI4">
                  <node concept="3clFbF" id="56VWuMNd2pJ" role="3cqZAp">
                    <node concept="37vLTI" id="56VWuMNd2pK" role="3clFbG">
                      <node concept="37vLTw" id="56VWuMNd2pL" role="37vLTJ">
                        <ref role="3cqZAo" node="56VWuMNd2pc" resolve="color" />
                      </node>
                      <node concept="10M0yZ" id="56VWuMNdeLe" role="37vLTx">
                        <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                        <ref role="3cqZAo" to="lzb2:~JBColor.BLACK" resolve="BLACK" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="56VWuMNd2pC" role="3clFbx">
                <node concept="3clFbF" id="56VWuMNd2pD" role="3cqZAp">
                  <node concept="37vLTI" id="56VWuMNd2pE" role="3clFbG">
                    <node concept="37vLTw" id="56VWuMNd2pF" role="37vLTJ">
                      <ref role="3cqZAo" node="56VWuMNd2pc" resolve="color" />
                    </node>
                    <node concept="10M0yZ" id="56VWuMNdeSM" role="37vLTx">
                      <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                      <ref role="3cqZAo" to="lzb2:~JBColor.MAGENTA" resolve="MAGENTA" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="56VWuMNd2pu" role="3clFbx">
              <node concept="3clFbF" id="56VWuMNd2pv" role="3cqZAp">
                <node concept="37vLTI" id="56VWuMNd2pw" role="3clFbG">
                  <node concept="37vLTw" id="56VWuMNd2px" role="37vLTJ">
                    <ref role="3cqZAo" node="56VWuMNd2pc" resolve="color" />
                  </node>
                  <node concept="10M0yZ" id="56VWuMNdeUg" role="37vLTx">
                    <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                    <ref role="3cqZAo" to="lzb2:~JBColor.BLUE" resolve="BLUE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="56VWuMNd2pk" role="3clFbx">
            <node concept="3clFbF" id="56VWuMNd2pl" role="3cqZAp">
              <node concept="37vLTI" id="56VWuMNd2pm" role="3clFbG">
                <node concept="37vLTw" id="56VWuMNd2pn" role="37vLTJ">
                  <ref role="3cqZAo" node="56VWuMNd2pc" resolve="color" />
                </node>
                <node concept="10M0yZ" id="56VWuMNdeWw" role="37vLTx">
                  <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                  <ref role="3cqZAo" to="lzb2:~JBColor.RED" resolve="RED" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56VWuMNd2pN" role="3cqZAp">
          <node concept="2OqwBi" id="56VWuMNduQF" role="3clFbG">
            <node concept="37vLTw" id="56VWuMNdeSB" role="2Oq$k0">
              <ref role="3cqZAo" node="56VWuMNd2p7" resolve="label" />
            </node>
            <node concept="liA8E" id="56VWuMNduQG" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setForeground(java.awt.Color)" resolve="setForeground" />
              <node concept="37vLTw" id="56VWuMNduQH" role="37wK5m">
                <ref role="3cqZAo" node="56VWuMNd2pc" resolve="color" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="56VWuMNd2pQ" role="3cqZAp">
          <node concept="37vLTw" id="56VWuMNd2pR" role="3cqZAk">
            <ref role="3cqZAo" node="56VWuMNd2p7" resolve="label" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="56VWuMNd2pS" role="1B3o_S" />
      <node concept="3uibUv" id="56VWuMNd2pT" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="56VWuMNcT0Q" role="jymVt" />
  </node>
  <node concept="312cEu" id="2jv$fqwD$ox">
    <property role="TrG5h" value="MergeModelsPanel" />
    <node concept="3uibUv" id="4qk_0lImRNB" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="3Tm1VV" id="2jv$fqwD$oy" role="1B3o_S" />
    <node concept="Wx3nA" id="2jv$fqwD$o$" role="jymVt">
      <property role="TrG5h" value="APPLY_NON_CONFLICTS" />
      <property role="3TUv4t" value="true" />
      <node concept="10M0yZ" id="2jv$fqwD$o_" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Diff" resolve="AllIcons.Diff" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Diff.ApplyNotConflicts" resolve="ApplyNotConflicts" />
      </node>
      <node concept="3Tm1VV" id="2jv$fqwD$oA" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$oB" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
    </node>
    <node concept="Wx3nA" id="2jv$fqwD$oC" role="jymVt">
      <property role="TrG5h" value="RESET" />
      <property role="3TUv4t" value="true" />
      <node concept="10M0yZ" id="2jv$fqwD$oD" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Rollback" resolve="Rollback" />
      </node>
      <node concept="3Tm1VV" id="2jv$fqwD$oE" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$oF" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwInNh" role="jymVt" />
    <node concept="312cEg" id="2jv$fqwD$oG" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2jv$fqwD$oH" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$oI" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="4tEWdMGIY0C" role="jymVt">
      <property role="TrG5h" value="myProjectRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4tEWdMGIY0D" role="1B3o_S" />
      <node concept="3uibUv" id="4tEWdMGIhlO" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwD$oJ" role="jymVt">
      <property role="TrG5h" value="myMergeSession" />
      <node concept="3Tm6S6" id="2jv$fqwD$oK" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$oL" role="1tU5fm">
        <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
      </node>
    </node>
    <node concept="312cEg" id="568jgXHJ81R" role="jymVt">
      <property role="TrG5h" value="myMetadataModels" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="568jgXHJ81S" role="1B3o_S" />
      <node concept="3uibUv" id="568jgXHJkzH" role="1tU5fm">
        <ref role="3uigEE" to="bmv6:568jgXHmVv8" resolve="ModelLot" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwD$oM" role="jymVt">
      <property role="TrG5h" value="myMetadataMergeSession" />
      <node concept="3Tm6S6" id="2jv$fqwD$oN" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$oO" role="1tU5fm">
        <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwD$oP" role="jymVt">
      <property role="TrG5h" value="myInitialState" />
      <node concept="3Tm6S6" id="2jv$fqwD$oQ" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$oR" role="1tU5fm">
        <ref role="3uigEE" to="bmv6:2KMWrOXsf9T" resolve="MergeSession.MergeSessionFullState" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwD$oS" role="jymVt">
      <property role="TrG5h" value="myMetadataInitialState" />
      <node concept="3Tm6S6" id="2jv$fqwD$oT" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$oU" role="1tU5fm">
        <ref role="3uigEE" to="bmv6:2KMWrOXsf9T" resolve="MergeSession.MergeSessionFullState" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwD$pd" role="jymVt">
      <property role="TrG5h" value="myRootId" />
      <node concept="3uibUv" id="2jv$fqwD$pe" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm6S6" id="2jv$fqwD$pf" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2jv$fqwIHqT" role="jymVt" />
    <node concept="312cEg" id="5$xqaErcJWW" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySaver" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5$xqaErc_a5" role="1B3o_S" />
      <node concept="3uibUv" id="5$xqaErcJL$" role="1tU5fm">
        <ref role="3uigEE" node="5$xqaErb5$G" resolve="ISaveMergedModel" />
      </node>
      <node concept="1bVj0M" id="5$xqaErdaPN" role="33vP2m">
        <node concept="37vLTG" id="5$xqaErdSOV" role="1bW2Oz">
          <property role="TrG5h" value="dialog" />
          <node concept="3uibUv" id="7LCpE5f4Gee" role="1tU5fm">
            <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
          </node>
        </node>
        <node concept="37vLTG" id="5$xqaErdTsn" role="1bW2Oz">
          <property role="TrG5h" value="resultModel" />
          <node concept="H_c77" id="7LCpE5f4HBT" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="5$xqaErdaPP" role="1bW5cS">
          <node concept="3cpWs6" id="5$xqaErdaVh" role="3cqZAp">
            <node concept="3clFbT" id="7LCpE5f4yXo" role="3cqZAk" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$xqaErcmny" role="jymVt" />
    <node concept="312cEg" id="2jv$fqwD$oV" role="jymVt">
      <property role="TrG5h" value="myMergeTree" />
      <node concept="3Tm6S6" id="2jv$fqwD$oW" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$oX" role="1tU5fm">
        <ref role="3uigEE" node="2jv$fqwD$EZ" resolve="MergeModelsPanel.MergeModelsTree" />
      </node>
    </node>
    <node concept="312cEg" id="haj_nVE1K4" role="jymVt">
      <property role="TrG5h" value="myPanel" />
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="2ShNRf" id="haj_nVE7F4" role="33vP2m">
        <node concept="1pGfFk" id="haj_nVE7F3" role="2ShVmc">
          <ref role="37wK5l" to="lzb2:~JBSplitter.&lt;init&gt;(boolean,float)" resolve="JBSplitter" />
          <node concept="3clFbT" id="haj_nVEi_w" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
          <node concept="2$xPTn" id="3UY41VCYhNy" role="37wK5m">
            <property role="2$xPTl" value="0.25f" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="haj_nVDVJg" role="1B3o_S" />
      <node concept="3uibUv" id="haj_nVE1HG" role="1tU5fm">
        <ref role="3uigEE" to="lzb2:~JBSplitter" resolve="JBSplitter" />
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwJhl5" role="jymVt">
      <property role="TrG5h" value="myMergeRootsPane" />
      <node concept="3uibUv" id="2jv$fqwJmHM" role="1tU5fm">
        <ref role="3uigEE" node="2jv$fqwev6Q" resolve="MergeRootsPane" />
      </node>
      <node concept="10Nm6u" id="2jv$fqwJhl6" role="33vP2m" />
      <node concept="3Tm6S6" id="2jv$fqwJhl8" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="65pnlFBLni3" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNoRootPanel" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="65pnlFBLtux" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2ShNRf" id="65pnlFBLt2$" role="33vP2m">
        <node concept="1pGfFk" id="65pnlFBLt2z" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String,int)" resolve="JLabel" />
          <node concept="Xl_RD" id="7osrB1KwWEq" role="37wK5m">
            <property role="Xl_RC" value="Select root to merge" />
          </node>
          <node concept="10M0yZ" id="7rEFA4R5n8U" role="37wK5m">
            <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
            <ref role="3cqZAo" to="dxuu:~SwingConstants.CENTER" resolve="CENTER" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="65pnlFBLhvQ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4qk_0lIpVmS" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myToolbarActions" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4qk_0lIpRJl" role="1B3o_S" />
      <node concept="_YKpA" id="4qk_0lIpV0n" role="1tU5fm">
        <node concept="3uibUv" id="4qk_0lIpVmN" role="_ZDj9">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2jv$fqwD$pr" role="jymVt">
      <property role="TrG5h" value="myToolbar" />
      <node concept="3Tm6S6" id="2jv$fqwD$ps" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$pt" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~ActionToolbar" resolve="ActionToolbar" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwWSLm" role="jymVt" />
    <node concept="312cEg" id="3SMO48GGEDr" role="jymVt">
      <property role="TrG5h" value="myActionGroup" />
      <node concept="3uibUv" id="3SMO48GGEDs" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
      </node>
      <node concept="3Tm6S6" id="3SMO48GGEDt" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="oYcweW9c4e" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myGoToNeighbourRootActions" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="oYcweW9351" role="1B3o_S" />
      <node concept="3uibUv" id="oYcweW9c0r" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHb20" resolve="GoToNeighbourRootActions" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwKg6H" role="jymVt" />
    <node concept="312cEg" id="2jv$fqwD$pg" role="jymVt">
      <property role="TrG5h" value="myContentTitles" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2jv$fqwD$ph" role="1B3o_S" />
      <node concept="_YKpA" id="fACp91YXbN" role="1tU5fm">
        <node concept="17QB3L" id="fACp91ZeqN" role="_ZDj9" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ilXZU3WJpY" role="jymVt" />
    <node concept="312cEg" id="7FGVElwGi68" role="jymVt">
      <property role="TrG5h" value="myMergeModeIsChanging" />
      <node concept="3Tm6S6" id="7FGVElwG2o9" role="1B3o_S" />
      <node concept="10P_77" id="7FGVElwGdJW" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7xGGksqnBMv" role="jymVt" />
    <node concept="312cEg" id="70RwqOIeORc" role="jymVt">
      <property role="TrG5h" value="myTitleCustomizers" />
      <node concept="3Tm6S6" id="70RwqOIezmF" role="1B3o_S" />
      <node concept="_YKpA" id="25dlLVjc6_J" role="1tU5fm">
        <node concept="3uibUv" id="25dlLVjc8I1" role="_ZDj9">
          <ref role="3uigEE" to="yt4f:~DiffEditorTitleCustomizer" resolve="DiffEditorTitleCustomizer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3UUTBtqVPiu" role="jymVt" />
    <node concept="312cEg" id="6n7JwfqXl$o" role="jymVt">
      <property role="TrG5h" value="myCustomRepoFiles" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3UUTBtqVXIO" role="1B3o_S" />
      <node concept="3uibUv" id="6n7JwfqXh3p" role="1tU5fm">
        <ref role="3uigEE" to="kip1:~FileSystemRepoBridge" resolve="FileSystemRepoBridge" />
      </node>
    </node>
    <node concept="2tJIrI" id="2zzNdx1Qj5e" role="jymVt" />
    <node concept="2tJIrI" id="2jv$fqwKriE" role="jymVt" />
    <node concept="3clFbW" id="2jv$fqwD$pu" role="jymVt">
      <node concept="37vLTG" id="4qk_0lIrOee" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4qk_0lIrOXN" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="2jv$fqwD$pv" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwD$pw" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$px" role="3clF47">
        <node concept="XkiVB" id="2jv$fqwD$py" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="4qk_0lIrDYd" role="37wK5m">
            <node concept="1pGfFk" id="4qk_0lIrFn9" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwD$q2" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwD$q3" role="3clFbG">
            <node concept="37vLTw" id="4qk_0lIrPoZ" role="37vLTx">
              <ref role="3cqZAo" node="4qk_0lIrOee" resolve="project" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuWRE" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwD$oG" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwD$q8" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwD$q9" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuX6F" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwD$pg" resolve="myContentTitles" />
            </node>
            <node concept="10QFUN" id="fACp91ZQ$i" role="37vLTx">
              <node concept="_YKpA" id="fACp91ZQ$j" role="10QFUM">
                <node concept="17QB3L" id="fACp91ZQ$k" role="_ZDj9" />
              </node>
              <node concept="2YIFZM" id="fACp922r0w" role="10QFUP">
                <ref role="37wK5l" to="o8e1:~MergeUtil.notNullizeContentTitles(java.util.List)" resolve="notNullizeContentTitles" />
                <ref role="1Pybhc" to="o8e1:~MergeUtil" resolve="MergeUtil" />
                <node concept="2OqwBi" id="2jv$fqwD$qa" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxglnml" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$u3" resolve="request" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwD$qc" role="2OqNvi">
                    <ref role="37wK5l" to="o8e1:~ThreesideMergeRequest.getContentTitles()" resolve="getContentTitles" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fACp922vPs" role="3cqZAp">
          <node concept="2OqwBi" id="fACp922x5b" role="3clFbG">
            <node concept="37vLTw" id="fACp922vPq" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$pg" resolve="myContentTitles" />
            </node>
            <node concept="1ubWrs" id="fACp922zk5" role="2OqNvi">
              <node concept="2OqwBi" id="fACp922HvC" role="1uc2wl">
                <node concept="Rm8GO" id="fACp922EFT" role="2Oq$k0">
                  <ref role="Rm8GQ" to="xo69:~ThreeSide.BASE" resolve="BASE" />
                  <ref role="1Px2BO" to="xo69:~ThreeSide" resolve="ThreeSide" />
                </node>
                <node concept="liA8E" id="fACp922JGr" role="2OqNvi">
                  <ref role="37wK5l" to="xo69:~ThreeSide.getIndex()" resolve="getIndex" />
                </node>
              </node>
              <node concept="2YIFZM" id="fACp922Q3W" role="1uc2wn">
                <ref role="37wK5l" to="ok99:~DiffBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <ref role="1Pybhc" to="ok99:~DiffBundle" resolve="DiffBundle" />
                <node concept="Xl_RD" id="fACp922SQg" role="37wK5m">
                  <property role="Xl_RC" value="merge.version.title.merged.result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="70RwqOIf8S6" role="3cqZAp">
          <node concept="37vLTI" id="70RwqOIfbSe" role="3clFbG">
            <node concept="37vLTw" id="70RwqOIf8S4" role="37vLTJ">
              <ref role="3cqZAo" node="70RwqOIeORc" resolve="myTitleCustomizers" />
            </node>
            <node concept="2OqwBi" id="25dlLVjbQoH" role="37vLTx">
              <node concept="37vLTw" id="25dlLVjbNvK" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwD$u3" resolve="request" />
              </node>
              <node concept="liA8E" id="25dlLVjbTRx" role="2OqNvi">
                <ref role="37wK5l" to="o8e1:~MergeRequest.getUserData(com.intellij.openapi.util.Key)" resolve="getUserData" />
                <node concept="10M0yZ" id="25dlLVjc0hj" role="37wK5m">
                  <ref role="1PxDUh" to="xo69:~DiffUserDataKeysEx" resolve="DiffUserDataKeysEx" />
                  <ref role="3cqZAo" to="xo69:~DiffUserDataKeysEx.EDITORS_TITLE_CUSTOMIZER" resolve="EDITORS_TITLE_CUSTOMIZER" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="2jv$fqwD$qe" role="3cqZAp">
          <node concept="3clFbC" id="2jv$fqwD$qf" role="1gVkn0">
            <node concept="3cmrfG" id="2jv$fqwD$qg" role="3uHU7w">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="2jv$fqwD$qh" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeuh$x" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwD$pg" resolve="myContentTitles" />
              </node>
              <node concept="34oBXx" id="2zzNdx1PJCo" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4tEWdMGI$M7" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomjz" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomj$" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomj_" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjA" role="1PaTwD">
              <property role="3oM_SC" value="below" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjB" role="1PaTwD">
              <property role="3oM_SC" value="requires" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjC" role="1PaTwD">
              <property role="3oM_SC" value="thorough" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjD" role="1PaTwD">
              <property role="3oM_SC" value="refactoring." />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjE" role="1PaTwD">
              <property role="3oM_SC" value="Models" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjF" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjG" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjH" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjI" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjJ" role="1PaTwD">
              <property role="3oM_SC" value="IMO" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjK" role="1PaTwD">
              <property role="3oM_SC" value="loaded" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjL" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjM" role="1PaTwD">
              <property role="3oM_SC" value="disk" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjN" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjO" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjP" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4tEWdMGIRCL" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomjQ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomjR" role="1PaTwD">
              <property role="3oM_SC" value="attached" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjT" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjU" role="1PaTwD">
              <property role="3oM_SC" value="repository," />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjV" role="1PaTwD">
              <property role="3oM_SC" value="hence" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjW" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjX" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjY" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomjZ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk0" role="1PaTwD">
              <property role="3oM_SC" value="grab" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk1" role="1PaTwD">
              <property role="3oM_SC" value="lock" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk2" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk3" role="1PaTwD">
              <property role="3oM_SC" value="deal" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk4" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk5" role="1PaTwD">
              <property role="3oM_SC" value="them." />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk6" role="1PaTwD">
              <property role="3oM_SC" value="OTOH," />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk7" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk8" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk9" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4tEWdMGISYm" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomka" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomkb" role="1PaTwD">
              <property role="3oM_SC" value="registers" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkc" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkd" role="1PaTwD">
              <property role="3oM_SC" value="exposes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomke" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkf" role="1PaTwD">
              <property role="3oM_SC" value="artifacts" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkg" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkh" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomki" role="1PaTwD">
              <property role="3oM_SC" value="temp" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkj" role="1PaTwD">
              <property role="3oM_SC" value="module," />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkk" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkl" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkm" role="1PaTwD">
              <property role="3oM_SC" value="part" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkn" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomko" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkp" role="1PaTwD">
              <property role="3oM_SC" value="repository" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkq" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkr" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomks" role="1PaTwD">
              <property role="3oM_SC" value="hence" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4tEWdMGIUHT" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomkt" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomku" role="1PaTwD">
              <property role="3oM_SC" value="requires" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkv" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkw" role="1PaTwD">
              <property role="3oM_SC" value="lock." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4tEWdMGIVpN" role="3cqZAp">
          <node concept="37vLTI" id="4tEWdMGIVpP" role="3clFbG">
            <node concept="2YIFZM" id="4tEWdMGIhlR" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.getProjectRepository(com.intellij.openapi.project.Project)" resolve="getProjectRepository" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="4tEWdMGIhlS" role="37wK5m">
                <ref role="3cqZAo" node="4qk_0lIrOee" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="4tEWdMGIVpT" role="37vLTJ">
              <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="4tEWdMGIBx_" role="3cqZAp">
          <node concept="3y3z36" id="4tEWdMGIElw" role="1gVkn0">
            <node concept="10Nm6u" id="4tEWdMGIF8d" role="3uHU7w" />
            <node concept="37vLTw" id="4tEWdMGIDtA" role="3uHU7B">
              <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwD$qn" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwD$qo" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyIL" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
            </node>
            <node concept="2OqwBi" id="30J9Cm_8gom" role="37vLTx">
              <node concept="2OqwBi" id="30J9Cm_8cmf" role="2Oq$k0">
                <node concept="37vLTw" id="30J9Cm_8axv" role="2Oq$k0">
                  <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
                </node>
                <node concept="liA8E" id="30J9Cm_8f1y" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="30J9Cm_8hPP" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="1bVj0M" id="30J9Cm_8lUO" role="37wK5m">
                  <node concept="3clFbS" id="30J9Cm_8lUT" role="1bW5cS">
                    <node concept="3clFbF" id="30J9Cm_8sCw" role="3cqZAp">
                      <node concept="2YIFZM" id="2jv$fqwD$qp" role="3clFbG">
                        <ref role="1Pybhc" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                        <ref role="37wK5l" to="bmv6:30J9Cm_gNPc" resolve="createMergeSession" />
                        <node concept="37vLTw" id="4hhnRwR5sFD" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwD$tX" resolve="baseModel" />
                        </node>
                        <node concept="37vLTw" id="4hhnRwR5Asc" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwD$tZ" resolve="mineModel" />
                        </node>
                        <node concept="37vLTw" id="4hhnRwR5JPl" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwD$u1" resolve="repoModel" />
                        </node>
                        <node concept="2YIFZM" id="3dZ7d0z3n4$" role="37wK5m">
                          <ref role="37wK5l" to="hdhb:3dZ7d0z1c1U" resolve="getTrackMovedNodesMergeOption" />
                          <ref role="1Pybhc" to="hdhb:2G2A2CbSLhf" resolve="DiffSettingsUtil" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3oMsNY6VooQ" role="3cqZAp" />
        <node concept="3SKdUt" id="568jgXHZiKc" role="3cqZAp">
          <node concept="1PaTwC" id="568jgXHZiKd" role="1aUNEU">
            <node concept="3oM_SD" id="568jgXHZiKe" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="568jgXHZkeA" role="1PaTwD">
              <property role="3oM_SC" value="once" />
            </node>
            <node concept="3oM_SD" id="568jgXHZkeC" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn57" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn58" role="1PaTwD">
              <property role="3oM_SC" value="distinct" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn5D" role="1PaTwD">
              <property role="3oM_SC" value="repo" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn5E" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn5F" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn6I" role="1PaTwD">
              <property role="3oM_SC" value="MergeSessions," />
            </node>
            <node concept="3oM_SD" id="568jgXHZn7f" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn7w" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn7x" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn7y" role="1PaTwD">
              <property role="3oM_SC" value="repo" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn7z" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn7$" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn7_" role="1PaTwD">
              <property role="3oM_SC" value="read/write" />
            </node>
            <node concept="3oM_SD" id="568jgXHZn8m" role="1PaTwD">
              <property role="3oM_SC" value="operations" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="568jgXHtb6S" role="3cqZAp">
          <node concept="3cpWsn" id="568jgXHtb6T" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="568jgXHtb6U" role="1tU5fm">
              <ref role="3uigEE" to="cttk:5F0lsbynlOq" resolve="RepositoryFacade" />
            </node>
            <node concept="2YIFZM" id="568jgXHtwdx" role="33vP2m">
              <ref role="37wK5l" to="cttk:5F0lsbynlQK" resolve="createPlainRegistrationRepo" />
              <ref role="1Pybhc" to="cttk:5F0lsbynlOq" resolve="RepositoryFacade" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6n7JwfqXAml" role="3cqZAp">
          <node concept="37vLTI" id="6n7JwfqXEW6" role="3clFbG">
            <node concept="2ShNRf" id="6n7JwfqXKMO" role="37vLTx">
              <node concept="1pGfFk" id="6n7JwfqYBP$" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="kip1:~FileSystemRepoBridge.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="FileSystemRepoBridge" />
                <node concept="2OqwBi" id="3UUTBtqVGan" role="37wK5m">
                  <node concept="37vLTw" id="3UUTBtqVEHn" role="2Oq$k0">
                    <ref role="3cqZAo" node="568jgXHtb6T" resolve="repo" />
                  </node>
                  <node concept="liA8E" id="3UUTBtqVHuu" role="2OqNvi">
                    <ref role="37wK5l" to="cttk:5F0lsbynmm$" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6n7JwfqXAmj" role="37vLTJ">
              <ref role="3cqZAo" node="6n7JwfqXl$o" resolve="myCustomRepoFiles" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="568jgXHJwzb" role="3cqZAp">
          <node concept="37vLTI" id="568jgXHJyx_" role="3clFbG">
            <node concept="2ShNRf" id="568jgXHtXXj" role="37vLTx">
              <node concept="1pGfFk" id="568jgXHugfl" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="bmv6:568jgXHnbHR" resolve="ModelLot" />
                <node concept="37vLTw" id="568jgXHukRl" role="37wK5m">
                  <ref role="3cqZAo" node="568jgXHtb6T" resolve="repo" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="568jgXHJwz9" role="37vLTJ">
              <ref role="3cqZAo" node="568jgXHJ81R" resolve="myMetadataModels" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3oMsNY6SmzY" role="3cqZAp">
          <node concept="1PaTwC" id="3oMsNY6SmzZ" role="1aUNEU">
            <node concept="3oM_SD" id="3oMsNY6StRG" role="1PaTwD">
              <property role="3oM_SC" value="create" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6StRI" role="1PaTwD">
              <property role="3oM_SC" value="metamodels" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6SJP3" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6SMZ8" role="1PaTwD">
              <property role="3oM_SC" value="renaming" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6SMZd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6SZA8" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6TeCv" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6Tm67" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6Tm6g" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6TtHY" role="1PaTwD">
              <property role="3oM_SC" value="avoid" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6TtI9" role="1PaTwD">
              <property role="3oM_SC" value="problems" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3oMsNY6TRRY" role="3cqZAp">
          <node concept="1PaTwC" id="3oMsNY6TRRZ" role="1aUNEU">
            <node concept="3oM_SD" id="3oMsNY6TY7D" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6TY7F" role="1PaTwD">
              <property role="3oM_SC" value="stereotypes" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6UbRj" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6Uiug" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6Uiul" role="1PaTwD">
              <property role="3oM_SC" value="MPS-32651" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6UsZi" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="3oMsNY6UsZp" role="1PaTwD">
              <property role="3oM_SC" value="MPS-33991" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jv$fqwD$qH" role="3cqZAp">
          <node concept="1Wc70l" id="39EUdpT1xME" role="3clFbw">
            <node concept="3fqX7Q" id="39EUdpT1BYG" role="3uHU7B">
              <node concept="37vLTw" id="39EUdpT1GTq" role="3fr31v">
                <ref role="3cqZAo" node="39EUdpT03lP" resolve="doNotShowMetadata" />
              </node>
            </node>
            <node concept="2OqwBi" id="2jv$fqwD$qI" role="3uHU7w">
              <node concept="3GX2aA" id="2jv$fqwD$qJ" role="2OqNvi" />
              <node concept="2OqwBi" id="2jv$fqwD$qK" role="2Oq$k0">
                <node concept="liA8E" id="2jv$fqwD$qL" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:R3vfiIzOcY" resolve="getMetadataChanges" />
                </node>
                <node concept="37vLTw" id="2jv$fqwD$qM" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2jv$fqwD$qN" role="3clFbx">
            <node concept="3SKdUt" id="568jgXHZ9gW" role="3cqZAp">
              <node concept="1PaTwC" id="568jgXHZ9gX" role="1aUNEU">
                <node concept="3oM_SD" id="568jgXHZ9Up" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcmb" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcmt" role="1PaTwD">
                  <property role="3oM_SC" value="there" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcmu" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcmv" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcmK" role="1PaTwD">
                  <property role="3oM_SC" value="project" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcnh" role="1PaTwD">
                  <property role="3oM_SC" value="repo" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcnM" role="1PaTwD">
                  <property role="3oM_SC" value="read" />
                </node>
                <node concept="3oM_SD" id="568jgXHZco3" role="1PaTwD">
                  <property role="3oM_SC" value="-" />
                </node>
                <node concept="3oM_SD" id="568jgXHZco4" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcol" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcom" role="1PaTwD">
                  <property role="3oM_SC" value="access" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcoB" role="1PaTwD">
                  <property role="3oM_SC" value="models" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcoS" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcoT" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcoU" role="1PaTwD">
                  <property role="3oM_SC" value="merge" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcoV" role="1PaTwD">
                  <property role="3oM_SC" value="session," />
                </node>
                <node concept="3oM_SD" id="568jgXHZcoW" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcpd" role="1PaTwD">
                  <property role="3oM_SC" value="aren't" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcqe" role="1PaTwD">
                  <property role="3oM_SC" value="they" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcqf" role="1PaTwD">
                  <property role="3oM_SC" value="come" />
                </node>
                <node concept="3oM_SD" id="568jgXHZcqw" role="1PaTwD">
                  <property role="3oM_SC" value="detached?" />
                </node>
              </node>
            </node>
            <node concept="1QHqEK" id="568jgXHIoKf" role="3cqZAp">
              <node concept="1QHqEC" id="568jgXHIoKh" role="1QHqEI">
                <node concept="3clFbS" id="568jgXHIoKj" role="1bW5cS">
                  <node concept="3cpWs8" id="568jgXHChox" role="3cqZAp">
                    <node concept="3cpWsn" id="568jgXHChoy" role="3cpWs9">
                      <property role="TrG5h" value="mmFactory" />
                      <node concept="3uibUv" id="568jgXHChov" role="1tU5fm">
                        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
                        <node concept="1XwpNF" id="568jgXHCtQh" role="11_B2D" />
                        <node concept="H_c77" id="568jgXHC_Ww" role="11_B2D" />
                        <node concept="3uibUv" id="568jgXHCE7m" role="11_B2D">
                          <ref role="3uigEE" to="bmv6:1m2uLwrRQWq" resolve="MergeTemporaryModel" />
                        </node>
                      </node>
                      <node concept="1bVj0M" id="568jgXHCWH3" role="33vP2m">
                        <node concept="gl6BB" id="568jgXHD06P" role="1bW2Oz">
                          <property role="TrG5h" value="mp" />
                          <node concept="2jxLKc" id="568jgXHD06Q" role="1tU5fm" />
                        </node>
                        <node concept="gl6BB" id="568jgXHD5Tp" role="1bW2Oz">
                          <property role="TrG5h" value="m" />
                          <node concept="2jxLKc" id="568jgXHD5Tq" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="568jgXHCWH5" role="1bW5cS">
                          <node concept="3cpWs8" id="568jgXHDki2" role="3cqZAp">
                            <node concept="3cpWsn" id="568jgXHDki3" role="3cpWs9">
                              <property role="TrG5h" value="mm" />
                              <node concept="3uibUv" id="568jgXHDki4" role="1tU5fm">
                                <ref role="3uigEE" to="bmv6:1m2uLwrRQWq" resolve="MergeTemporaryModel" />
                              </node>
                              <node concept="2ShNRf" id="568jgXHDrzc" role="33vP2m">
                                <node concept="1pGfFk" id="568jgXHDDNf" role="2ShVmc">
                                  <property role="373rjd" value="true" />
                                  <ref role="37wK5l" to="bmv6:1m2uLwrS0vs" resolve="MergeTemporaryModel" />
                                  <node concept="37vLTw" id="568jgXHDHmk" role="37wK5m">
                                    <ref role="3cqZAo" node="568jgXHD06P" resolve="mp" />
                                  </node>
                                  <node concept="3clFbT" id="568jgXHDMcr" role="37wK5m">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="568jgXHGzvP" role="3cqZAp">
                            <node concept="2YIFZM" id="568jgXHGAPE" role="3clFbG">
                              <ref role="37wK5l" to="p37l:568jgXH__vU" resolve="populate" />
                              <ref role="1Pybhc" to="p37l:444ZSQ06W$a" resolve="MetadataUtil" />
                              <node concept="37vLTw" id="568jgXHGFDf" role="37wK5m">
                                <ref role="3cqZAo" node="568jgXHDki3" resolve="mm" />
                              </node>
                              <node concept="37vLTw" id="568jgXHGLLb" role="37wK5m">
                                <ref role="3cqZAo" node="568jgXHD5Tp" resolve="m" />
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="jzhoHG1Gy8" role="3cqZAp">
                            <node concept="1PaTwC" id="ATZLwXom9N" role="1aUNEU">
                              <node concept="3oM_SD" id="ATZLwXom9O" role="1PaTwD">
                                <property role="3oM_SC" value="XXX" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9P" role="1PaTwD">
                                <property role="3oM_SC" value="it" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9Q" role="1PaTwD">
                                <property role="3oM_SC" value="looks" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9R" role="1PaTwD">
                                <property role="3oM_SC" value="isChanged" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9S" role="1PaTwD">
                                <property role="3oM_SC" value="used" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9T" role="1PaTwD">
                                <property role="3oM_SC" value="as" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9U" role="1PaTwD">
                                <property role="3oM_SC" value="indication" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9V" role="1PaTwD">
                                <property role="3oM_SC" value="whether" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9W" role="1PaTwD">
                                <property role="3oM_SC" value="there's" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9X" role="1PaTwD">
                                <property role="3oM_SC" value="anything" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9Y" role="1PaTwD">
                                <property role="3oM_SC" value="in" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXom9Z" role="1PaTwD">
                                <property role="3oM_SC" value="the" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXoma0" role="1PaTwD">
                                <property role="3oM_SC" value="model" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXoma1" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXoma2" role="1PaTwD">
                                <property role="3oM_SC" value="apply." />
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="jzhoHG1GQv" role="3cqZAp">
                            <node concept="1PaTwC" id="ATZLwXoma3" role="1aUNEU">
                              <node concept="3oM_SD" id="ATZLwXoma4" role="1PaTwD">
                                <property role="3oM_SC" value="If" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXoma5" role="1PaTwD">
                                <property role="3oM_SC" value="yes," />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXoma6" role="1PaTwD">
                                <property role="3oM_SC" value="why" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXoma7" role="1PaTwD">
                                <property role="3oM_SC" value="not" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXoma8" role="1PaTwD">
                                <property role="3oM_SC" value="use" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXoma9" role="1PaTwD">
                                <property role="3oM_SC" value="dedicated" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXomaa" role="1PaTwD">
                                <property role="3oM_SC" value="flag" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXomab" role="1PaTwD">
                                <property role="3oM_SC" value="in" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXomac" role="1PaTwD">
                                <property role="3oM_SC" value="MergeTemporaryModel," />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXomad" role="1PaTwD">
                                <property role="3oM_SC" value="and" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXomae" role="1PaTwD">
                                <property role="3oM_SC" value="cease" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXomaf" role="1PaTwD">
                                <property role="3oM_SC" value="being" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXomag" role="1PaTwD">
                                <property role="3oM_SC" value="EditableSModel?" />
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="568jgXHNRRS" role="3cqZAp">
                            <node concept="1PaTwC" id="568jgXHNRRT" role="1aUNEU">
                              <node concept="3oM_SD" id="568jgXHNRRU" role="1PaTwD">
                                <property role="3oM_SC" value="Check" />
                              </node>
                              <node concept="3oM_SD" id="568jgXHNUTE" role="1PaTwD">
                                <property role="3oM_SC" value="MetadataUtil.createMetadataModel" />
                              </node>
                              <node concept="3oM_SD" id="568jgXHO2zp" role="1PaTwD">
                                <property role="3oM_SC" value="for" />
                              </node>
                              <node concept="3oM_SD" id="568jgXHO2zq" role="1PaTwD">
                                <property role="3oM_SC" value="history." />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="568jgXHNnlw" role="3cqZAp">
                            <node concept="2OqwBi" id="568jgXHNpou" role="3clFbG">
                              <node concept="37vLTw" id="568jgXHNnlu" role="2Oq$k0">
                                <ref role="3cqZAo" node="568jgXHDki3" resolve="mm" />
                              </node>
                              <node concept="liA8E" id="568jgXHNurE" role="2OqNvi">
                                <ref role="37wK5l" to="w1kc:~EditableModelDescriptor.setChanged(boolean)" resolve="setChanged" />
                                <node concept="3clFbT" id="568jgXHNzEx" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="568jgXHGZSZ" role="3cqZAp">
                            <node concept="37vLTw" id="568jgXHH8x3" role="3cqZAk">
                              <ref role="3cqZAo" node="568jgXHDki3" resolve="mm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="568jgXHu$uB" role="3cqZAp">
                    <node concept="3cpWsn" id="568jgXHu$uC" role="3cpWs9">
                      <property role="TrG5h" value="m1" />
                      <node concept="H_c77" id="568jgXHuRkw" role="1tU5fm" />
                      <node concept="2OqwBi" id="568jgXHu$uD" role="33vP2m">
                        <node concept="37vLTw" id="568jgXHu$uE" role="2Oq$k0">
                          <ref role="3cqZAo" node="568jgXHJ81R" resolve="myMetadataModels" />
                        </node>
                        <node concept="liA8E" id="568jgXHu$uF" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:568jgXHApFd" resolve="deriveModel" />
                          <node concept="2OqwBi" id="568jgXHv23X" role="37wK5m">
                            <node concept="37vLTw" id="568jgXHv23Y" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="568jgXHv23Z" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4s_" resolve="getBaseModel" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="568jgXHvbWi" role="37wK5m">
                            <property role="Xl_RC" value="metadata_base" />
                          </node>
                          <node concept="37vLTw" id="568jgXHHeMO" role="37wK5m">
                            <ref role="3cqZAo" node="568jgXHChoy" resolve="mmFactory" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="568jgXHuTJv" role="3cqZAp">
                    <node concept="3cpWsn" id="568jgXHuTJw" role="3cpWs9">
                      <property role="TrG5h" value="m2" />
                      <node concept="H_c77" id="568jgXHuTJx" role="1tU5fm" />
                      <node concept="2OqwBi" id="568jgXHuTJy" role="33vP2m">
                        <node concept="37vLTw" id="568jgXHuTJz" role="2Oq$k0">
                          <ref role="3cqZAo" node="568jgXHJ81R" resolve="myMetadataModels" />
                        </node>
                        <node concept="liA8E" id="568jgXHuTJ$" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:568jgXHApFd" resolve="deriveModel" />
                          <node concept="2OqwBi" id="568jgXHvsqo" role="37wK5m">
                            <node concept="37vLTw" id="568jgXHvsqp" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="568jgXHvsqq" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="568jgXHvsqr" role="37wK5m">
                            <property role="Xl_RC" value="metadata_mine" />
                          </node>
                          <node concept="37vLTw" id="568jgXHHCI1" role="37wK5m">
                            <ref role="3cqZAo" node="568jgXHChoy" resolve="mmFactory" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="568jgXHuV9G" role="3cqZAp">
                    <node concept="3cpWsn" id="568jgXHuV9H" role="3cpWs9">
                      <property role="TrG5h" value="m3" />
                      <node concept="H_c77" id="568jgXHuV9I" role="1tU5fm" />
                      <node concept="2OqwBi" id="568jgXHuV9J" role="33vP2m">
                        <node concept="37vLTw" id="568jgXHuV9K" role="2Oq$k0">
                          <ref role="3cqZAo" node="568jgXHJ81R" resolve="myMetadataModels" />
                        </node>
                        <node concept="liA8E" id="568jgXHuV9L" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:568jgXHApFd" resolve="deriveModel" />
                          <node concept="2OqwBi" id="568jgXHvx60" role="37wK5m">
                            <node concept="37vLTw" id="568jgXHvx61" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="568jgXHvx62" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="568jgXHvx63" role="37wK5m">
                            <property role="Xl_RC" value="metadata_repo" />
                          </node>
                          <node concept="37vLTw" id="568jgXHHLCS" role="37wK5m">
                            <ref role="3cqZAo" node="568jgXHChoy" resolve="mmFactory" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="568jgXHUOa2" role="3cqZAp">
                    <node concept="3cpWsn" id="568jgXHUOa3" role="3cpWs9">
                      <property role="TrG5h" value="m4" />
                      <node concept="3uibUv" id="568jgXHUE_Q" role="1tU5fm">
                        <ref role="3uigEE" to="bmv6:1m2uLwrRQWq" resolve="MergeTemporaryModel" />
                      </node>
                      <node concept="2YIFZM" id="568jgXHUOa4" role="33vP2m">
                        <ref role="37wK5l" to="bmv6:7rChfv1emGk" resolve="createTemporaryResultModel" />
                        <ref role="1Pybhc" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                        <node concept="37vLTw" id="568jgXHUOa5" role="37wK5m">
                          <ref role="3cqZAo" node="568jgXHu$uC" resolve="m1" />
                        </node>
                        <node concept="37vLTw" id="568jgXHUOa6" role="37wK5m">
                          <ref role="3cqZAo" node="568jgXHuTJw" resolve="m2" />
                        </node>
                        <node concept="37vLTw" id="568jgXHUOa7" role="37wK5m">
                          <ref role="3cqZAo" node="568jgXHuV9H" resolve="m3" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="568jgXHWvBq" role="3cqZAp">
                    <node concept="1PaTwC" id="568jgXHWvBr" role="1aUNEU">
                      <node concept="3oM_SD" id="568jgXHWwek" role="1PaTwD">
                        <property role="3oM_SC" value="FIXME" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWzHj" role="1PaTwD">
                        <property role="3oM_SC" value="refactor" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWBO0" role="1PaTwD">
                        <property role="3oM_SC" value="this" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWDde" role="1PaTwD">
                        <property role="3oM_SC" value="DiffModelUtil" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWM2t" role="1PaTwD">
                        <property role="3oM_SC" value="use" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWO6X" role="1PaTwD">
                        <property role="3oM_SC" value="as" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWPzP" role="1PaTwD">
                        <property role="3oM_SC" value="well," />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWXGv" role="1PaTwD">
                        <property role="3oM_SC" value="but" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWXGw" role="1PaTwD">
                        <property role="3oM_SC" value="have" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWXGx" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHWXGy" role="1PaTwD">
                        <property role="3oM_SC" value="deal" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHX1XR" role="1PaTwD">
                        <property role="3oM_SC" value="with" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHX3qq" role="1PaTwD">
                        <property role="3oM_SC" value="logic" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHX5w4" role="1PaTwD">
                        <property role="3oM_SC" value="inside" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXfes" role="1PaTwD">
                        <property role="3oM_SC" value="createTemporaryResultModel()" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXfet" role="1PaTwD">
                        <property role="3oM_SC" value="first" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="568jgXHXhuL" role="3cqZAp">
                    <node concept="1PaTwC" id="568jgXHXhuM" role="1aUNEU">
                      <node concept="3oM_SD" id="568jgXHXhuN" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXhuQ" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXhuS" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXhuT" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXhuU" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXhuV" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXkBf" role="1PaTwD">
                        <property role="3oM_SC" value="produce" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXkBg" role="1PaTwD">
                        <property role="3oM_SC" value="MTM" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXqCL" role="1PaTwD">
                        <property role="3oM_SC" value="with" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXqCM" role="1PaTwD">
                        <property role="3oM_SC" value="proper" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXCc_" role="1PaTwD">
                        <property role="3oM_SC" value="reference" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXDXT" role="1PaTwD">
                        <property role="3oM_SC" value="right" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXw2T" role="1PaTwD">
                        <property role="3oM_SC" value="away." />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXFZ$" role="1PaTwD">
                        <property role="3oM_SC" value="Shall" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXJk9" role="1PaTwD">
                        <property role="3oM_SC" value="address" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHXOie" role="1PaTwD">
                        <property role="3oM_SC" value="PersistenceVersionAware" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHY2Jv" role="1PaTwD">
                        <property role="3oM_SC" value="case" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHY5Sc" role="1PaTwD">
                        <property role="3oM_SC" value="as" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHY5Sd" role="1PaTwD">
                        <property role="3oM_SC" value="well," />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYBA5" role="1PaTwD">
                        <property role="3oM_SC" value="although" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYBA6" role="1PaTwD">
                        <property role="3oM_SC" value="PWA" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYD0Y" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYFdR" role="1PaTwD">
                        <property role="3oM_SC" value="not" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYFdS" role="1PaTwD">
                        <property role="3oM_SC" value="essential" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYJBO" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYL72" role="1PaTwD">
                        <property role="3oM_SC" value="track" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYLE3" role="1PaTwD">
                        <property role="3oM_SC" value="model" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYLE4" role="1PaTwD">
                        <property role="3oM_SC" value="attributes!" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="568jgXHYT4P" role="3cqZAp">
                    <node concept="1PaTwC" id="568jgXHYT4l" role="1aUNEU">
                      <node concept="3oM_SD" id="568jgXHYT4k" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYT5j" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYTYy" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYTYz" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYTY$" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYXPW" role="1PaTwD">
                        <property role="3oM_SC" value="Therefore," />
                      </node>
                      <node concept="3oM_SD" id="568jgXHZ2pg" role="1PaTwD">
                        <property role="3oM_SC" value="keep" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHZ3QW" role="1PaTwD">
                        <property role="3oM_SC" value="old" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYs06" role="1PaTwD">
                        <property role="3oM_SC" value="logic" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYs07" role="1PaTwD">
                        <property role="3oM_SC" value="as" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYszP" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYszQ" role="1PaTwD">
                        <property role="3oM_SC" value="first" />
                      </node>
                      <node concept="3oM_SD" id="568jgXHYtZy" role="1PaTwD">
                        <property role="3oM_SC" value="step." />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="568jgXHVqbY" role="3cqZAp">
                    <node concept="2YIFZM" id="568jgXHVW9l" role="3clFbG">
                      <ref role="37wK5l" to="hdhb:2VVi9_kc0zu" resolve="renameModel" />
                      <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                      <node concept="37vLTw" id="568jgXHW02C" role="37wK5m">
                        <ref role="3cqZAo" node="568jgXHUOa3" resolve="m4" />
                      </node>
                      <node concept="Xl_RD" id="568jgXHWjnK" role="37wK5m">
                        <property role="Xl_RC" value="metadata_result" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="568jgXHSWFV" role="3cqZAp">
                    <node concept="2OqwBi" id="568jgXHvDdx" role="3clFbG">
                      <node concept="37vLTw" id="568jgXHvDdy" role="2Oq$k0">
                        <ref role="3cqZAo" node="568jgXHJ81R" resolve="myMetadataModels" />
                      </node>
                      <node concept="liA8E" id="568jgXHvDdz" role="2OqNvi">
                        <ref role="37wK5l" to="bmv6:568jgXHRh43" resolve="track" />
                        <node concept="37vLTw" id="568jgXHV31Y" role="37wK5m">
                          <ref role="3cqZAo" node="568jgXHUOa3" resolve="m4" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="568jgXHylld" role="3cqZAp">
                    <node concept="37vLTI" id="568jgXHyo7q" role="3clFbG">
                      <node concept="37vLTw" id="568jgXHyllb" role="37vLTJ">
                        <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                      </node>
                      <node concept="2YIFZM" id="568jgXHwb32" role="37vLTx">
                        <ref role="37wK5l" to="bmv6:5ilXZU3nEdM" resolve="createMergeSession" />
                        <ref role="1Pybhc" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                        <node concept="37vLTw" id="568jgXHwb33" role="37wK5m">
                          <ref role="3cqZAo" node="568jgXHu$uC" resolve="m1" />
                        </node>
                        <node concept="37vLTw" id="568jgXHwb34" role="37wK5m">
                          <ref role="3cqZAo" node="568jgXHuTJw" resolve="m2" />
                        </node>
                        <node concept="37vLTw" id="568jgXHwb35" role="37wK5m">
                          <ref role="3cqZAo" node="568jgXHuV9H" resolve="m3" />
                        </node>
                        <node concept="37vLTw" id="568jgXHVkPE" role="37wK5m">
                          <ref role="3cqZAo" node="568jgXHUOa3" resolve="m4" />
                        </node>
                        <node concept="3clFbT" id="568jgXHwF3A" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="568jgXHxrOA" role="3cqZAp">
                    <node concept="2OqwBi" id="568jgXHxtEt" role="3clFbG">
                      <node concept="37vLTw" id="568jgXHxrO$" role="2Oq$k0">
                        <ref role="3cqZAo" node="568jgXHJ81R" resolve="myMetadataModels" />
                      </node>
                      <node concept="liA8E" id="568jgXHxxtx" role="2OqNvi">
                        <ref role="37wK5l" to="bmv6:568jgXHr1XS" resolve="registerModels" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2jv$fqwD$rm" role="3cqZAp">
                    <node concept="37vLTI" id="2jv$fqwD$rn" role="3clFbG">
                      <node concept="37vLTw" id="2jv$fqwD$ro" role="37vLTJ">
                        <ref role="3cqZAo" node="2jv$fqwD$oS" resolve="myMetadataInitialState" />
                      </node>
                      <node concept="2OqwBi" id="2jv$fqwD$rp" role="37vLTx">
                        <node concept="37vLTw" id="2jv$fqwD$rq" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                        </node>
                        <node concept="liA8E" id="2jv$fqwD$rr" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:2KMWrOXoI3m" resolve="getCurrentFullState" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="568jgXHIv4V" role="ukAjM">
                <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEM" id="6fe4FZiw6GL" role="3cqZAp">
          <node concept="1QHqEC" id="6fe4FZiw6GN" role="1QHqEI">
            <node concept="3clFbS" id="6fe4FZiw6GP" role="1bW5cS">
              <node concept="3clFbF" id="6fe4FZiwo_6" role="3cqZAp">
                <node concept="2YIFZM" id="2v$NtEHog2C" role="3clFbG">
                  <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                  <ref role="37wK5l" to="hdhb:6o37A5sInP5" resolve="renameModelAndRegister" />
                  <node concept="2OqwBi" id="30J9Cm_ce2R" role="37wK5m">
                    <node concept="37vLTw" id="30J9Cm_ce2S" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="30J9Cm_ce2T" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4s_" resolve="getBaseModel" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2v$NtEHog2G" role="37wK5m">
                    <property role="Xl_RC" value="base" />
                  </node>
                  <node concept="37vLTw" id="5u75OIaAvM4" role="37wK5m">
                    <ref role="3cqZAo" node="5u75OIaAp4o" resolve="fixReferences" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6fe4FZiwq0b" role="3cqZAp">
                <node concept="2YIFZM" id="2v$NtEHoD2h" role="3clFbG">
                  <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                  <ref role="37wK5l" to="hdhb:6o37A5sInP5" resolve="renameModelAndRegister" />
                  <node concept="2OqwBi" id="30J9Cm_chHC" role="37wK5m">
                    <node concept="37vLTw" id="30J9Cm_chHD" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="30J9Cm_chHE" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2v$NtEHoD2l" role="37wK5m">
                    <property role="Xl_RC" value="mine" />
                  </node>
                  <node concept="37vLTw" id="5u75OIaAwEZ" role="37wK5m">
                    <ref role="3cqZAo" node="5u75OIaAp4o" resolve="fixReferences" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6fe4FZiwurY" role="3cqZAp">
                <node concept="2YIFZM" id="2v$NtEHoMSw" role="3clFbG">
                  <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                  <ref role="37wK5l" to="hdhb:6o37A5sInP5" resolve="renameModelAndRegister" />
                  <node concept="2OqwBi" id="30J9Cm_cpCm" role="37wK5m">
                    <node concept="37vLTw" id="30J9Cm_cpCn" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="30J9Cm_cpCo" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2v$NtEHoMS$" role="37wK5m">
                    <property role="Xl_RC" value="repo" />
                  </node>
                  <node concept="37vLTw" id="5u75OIaAxzf" role="37wK5m">
                    <ref role="3cqZAo" node="5u75OIaAp4o" resolve="fixReferences" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2jv$fqwD$rx" role="3cqZAp">
                <node concept="2YIFZM" id="2v$NtEHoWt_" role="3clFbG">
                  <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                  <ref role="37wK5l" to="hdhb:6o37A5sInP5" resolve="renameModelAndRegister" />
                  <node concept="2OqwBi" id="30J9Cm_cDEj" role="37wK5m">
                    <node concept="37vLTw" id="7xGGksqq_7b" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="30J9Cm_cGRe" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2v$NtEHoWtD" role="37wK5m">
                    <property role="Xl_RC" value="result" />
                  </node>
                  <node concept="37vLTw" id="5u75OIaAys8" role="37wK5m">
                    <ref role="3cqZAo" node="5u75OIaAp4o" resolve="fixReferences" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2jv$fqwD$qB" role="3cqZAp">
                <node concept="37vLTI" id="2jv$fqwD$qC" role="3clFbG">
                  <node concept="2OqwBi" id="2jv$fqwD$qD" role="37vLTx">
                    <node concept="37vLTw" id="2BHiRxeuXib" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="2jv$fqwD$qF" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:2KMWrOXoI3m" resolve="getCurrentFullState" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxeukvE" role="37vLTJ">
                    <ref role="3cqZAo" node="2jv$fqwD$oP" resolve="myInitialState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4tEWdMGIqpg" role="ukAjM">
            <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwMbC8" role="3cqZAp" />
        <node concept="3clFbF" id="2jv$fqwD$rO" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwD$rP" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuL89" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
            </node>
            <node concept="liA8E" id="2jv$fqwD$rR" role="2OqNvi">
              <ref role="37wK5l" to="bmv6:3UEHyzu02bp" resolve="installResultModelListener" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwD$sG" role="3cqZAp" />
        <node concept="3clFbF" id="4qk_0lIpZwl" role="3cqZAp">
          <node concept="37vLTI" id="4qk_0lIq0WT" role="3clFbG">
            <node concept="2ShNRf" id="4qk_0lIq1wV" role="37vLTx">
              <node concept="Tc6Ow" id="4qk_0lIq1wR" role="2ShVmc">
                <node concept="3uibUv" id="4qk_0lIq1wS" role="HW$YZ">
                  <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                </node>
                <node concept="1X3_iC" id="4qk_0lIrjJ4" role="lGtFl">
                  <property role="3V$3am" value="initValue" />
                  <property role="3V$3ak" value="83888646-71ce-4f1c-9c53-c54016f6ad4f/1237721394592/1237721435808" />
                  <node concept="2ShNRf" id="4qk_0lIq2Qs" role="8Wnug">
                    <node concept="1pGfFk" id="4qk_0lIq2Qt" role="2ShVmc">
                      <ref role="37wK5l" to="hdhb:7$NO6fvW2BQ" resolve="InvokeTextDiffAction" />
                      <node concept="Xl_RD" id="4qk_0lIq2Qu" role="37wK5m">
                        <property role="Xl_RC" value="Merge as Text (Use Carefully!)" />
                      </node>
                      <node concept="Xl_RD" id="4qk_0lIq2Qv" role="37wK5m">
                        <property role="Xl_RC" value="Merge models using text merge for XML contents" />
                      </node>
                      <node concept="Xjq3P" id="4qk_0lIq2Qw" role="37wK5m" />
                      <node concept="37vLTw" id="4qk_0lIq2Qx" role="37wK5m">
                        <ref role="3cqZAo" node="2jv$fqwD$u3" resolve="request" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="4qk_0lIrjOy" role="lGtFl">
                  <property role="3V$3am" value="initValue" />
                  <property role="3V$3ak" value="83888646-71ce-4f1c-9c53-c54016f6ad4f/1237721394592/1237721435808" />
                  <node concept="2YIFZM" id="4qk_0lIq3b_" role="8Wnug">
                    <ref role="1Pybhc" to="qkt:~Separator" resolve="Separator" />
                    <ref role="37wK5l" to="qkt:~Separator.getInstance()" resolve="getInstance" />
                  </node>
                </node>
                <node concept="2ShNRf" id="4qk_0lIq3ga" role="HW$Y0">
                  <node concept="1pGfFk" id="4qk_0lIq3gb" role="2ShVmc">
                    <ref role="37wK5l" node="BjUsE2KR6Z" resolve="ResetState" />
                    <node concept="Xjq3P" id="4qk_0lIq3gc" role="37wK5m" />
                  </node>
                </node>
                <node concept="2ShNRf" id="4qk_0lIq3mp" role="HW$Y0">
                  <node concept="1pGfFk" id="4qk_0lIq3mq" role="2ShVmc">
                    <ref role="37wK5l" node="BjUsE2KQRK" resolve="MergeNonConflictingRoots" />
                    <node concept="Xjq3P" id="4qk_0lIq3mr" role="37wK5m" />
                  </node>
                </node>
                <node concept="2YIFZM" id="4qk_0lIq3rg" role="HW$Y0">
                  <ref role="37wK5l" to="qkt:~Separator.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="qkt:~Separator" resolve="Separator" />
                </node>
                <node concept="2YIFZM" id="4qk_0lIq3we" role="HW$Y0">
                  <ref role="1Pybhc" node="BjUsE2KPW8" resolve="AcceptYoursTheirs" />
                  <ref role="37wK5l" node="BjUsE2KPW9" resolve="yoursInstance" />
                  <node concept="Xjq3P" id="4qk_0lIq3wf" role="37wK5m" />
                </node>
                <node concept="2YIFZM" id="4qk_0lIq3_2" role="HW$Y0">
                  <ref role="1Pybhc" node="BjUsE2KPW8" resolve="AcceptYoursTheirs" />
                  <ref role="37wK5l" node="BjUsE2KPWk" resolve="theirsInstance" />
                  <node concept="Xjq3P" id="4qk_0lIq3_3" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4qk_0lIpZwj" role="37vLTJ">
              <ref role="3cqZAo" node="4qk_0lIpVmS" resolve="myToolbarActions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwX8LB" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwXcWP" role="3clFbG">
            <node concept="2ShNRf" id="4qk_0lIq49z" role="37vLTx">
              <node concept="1pGfFk" id="4qk_0lIq49y" role="2ShVmc">
                <ref role="37wK5l" to="qkt:~DefaultActionGroup.&lt;init&gt;(java.util.List)" resolve="DefaultActionGroup" />
                <node concept="37vLTw" id="4qk_0lIq4BB" role="37wK5m">
                  <ref role="3cqZAo" node="4qk_0lIpVmS" resolve="myToolbarActions" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqwX8LA" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GGEDr" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qk_0lIq57r" role="3cqZAp" />
        <node concept="3clFbF" id="2jv$fqwD$tV" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9$R" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwD$DD" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwD$tX" role="3clF46">
        <property role="TrG5h" value="baseModel" />
        <node concept="H_c77" id="4hhnRwR4a05" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2jv$fqwD$tZ" role="3clF46">
        <property role="TrG5h" value="mineModel" />
        <node concept="H_c77" id="4hhnRwR4jZL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2jv$fqwD$u1" role="3clF46">
        <property role="TrG5h" value="repoModel" />
        <node concept="H_c77" id="4hhnRwR4tYK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2jv$fqwD$u3" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="4qk_0lIrKH$" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~TextMergeRequest" resolve="TextMergeRequest" />
        </node>
      </node>
      <node concept="37vLTG" id="39EUdpT03lP" role="3clF46">
        <property role="TrG5h" value="doNotShowMetadata" />
        <node concept="10P_77" id="39EUdpT08y4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5u75OIaAp4o" role="3clF46">
        <property role="TrG5h" value="fixReferences" />
        <node concept="10P_77" id="5u75OIaArwZ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="568jgXHF3if" role="jymVt" />
    <node concept="2tJIrI" id="5ilXZU3Rve4" role="jymVt" />
    <node concept="3clFb_" id="44EradnKSDx" role="jymVt">
      <property role="TrG5h" value="trackMovedNodes" />
      <node concept="3clFbS" id="44EradnKSD$" role="3clF47">
        <node concept="3clFbH" id="44EradnLvxp" role="3cqZAp" />
        <node concept="3clFbJ" id="44EradnLlSj" role="3cqZAp">
          <node concept="3clFbS" id="44EradnLlSk" role="3clFbx">
            <node concept="3cpWs6" id="44EradnLlSl" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="44EradnLlSm" role="3clFbw">
            <ref role="3cqZAo" node="7FGVElwGi68" resolve="myMergeModeIsChanging" />
          </node>
        </node>
        <node concept="3clFbH" id="44EradnLlSn" role="3cqZAp" />
        <node concept="3cpWs8" id="44EradnLlSo" role="3cqZAp">
          <node concept="3cpWsn" id="44EradnLlSp" role="3cpWs9">
            <property role="TrG5h" value="trackMovedNodes" />
            <node concept="10P_77" id="44EradnLlSq" role="1tU5fm" />
            <node concept="2OqwBi" id="30J9Cm_9PmB" role="33vP2m">
              <node concept="37vLTw" id="30J9Cm_9Kj3" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
              </node>
              <node concept="liA8E" id="30J9Cm_9Yhb" role="2OqNvi">
                <ref role="37wK5l" to="bmv6:30J9Cm_0Drs" resolve="tracksMovedNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="44EradnLlSs" role="3cqZAp">
          <node concept="3clFbS" id="44EradnLlSt" role="3clFbx">
            <node concept="3cpWs8" id="44EradnLlSu" role="3cqZAp">
              <node concept="3cpWsn" id="44EradnLlSv" role="3cpWs9">
                <property role="TrG5h" value="confirmationDialogTitle" />
                <node concept="17QB3L" id="44EradnLlSw" role="1tU5fm" />
                <node concept="3K4zz7" id="44EradnLlSx" role="33vP2m">
                  <node concept="Xl_RD" id="44EradnLlSy" role="3K4E3e">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="44EradnLlSz" role="3K4GZi">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="37vLTw" id="44EradnLlS$" role="3K4Cdx">
                    <ref role="3cqZAo" node="44EradnLlSp" resolve="trackMovedNodes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="44EradnLlS_" role="3cqZAp">
              <node concept="3cpWsn" id="44EradnLlSA" role="3cpWs9">
                <property role="TrG5h" value="confirmationDialogMessage" />
                <node concept="17QB3L" id="44EradnLlSB" role="1tU5fm" />
                <node concept="Xl_RD" id="44EradnLlSC" role="33vP2m">
                  <property role="Xl_RC" value="Merge process was already started for this model. Changing the option will discard all applied changes and restart merge process from scratch.\nAre you sure you’d like to continue?" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="44EradnLlSD" role="3cqZAp">
              <node concept="3clFbS" id="44EradnLlSE" role="3clFbx">
                <node concept="3cpWs6" id="44EradnLlSF" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="44EradnLlSG" role="3clFbw">
                <node concept="10M0yZ" id="44EradnLlSH" role="3uHU7w">
                  <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
                  <ref role="3cqZAo" to="jkm4:~Messages.OK" resolve="OK" />
                </node>
                <node concept="2YIFZM" id="44EradnLlSI" role="3uHU7B">
                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                  <ref role="37wK5l" to="jkm4:~Messages.showOkCancelDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,java.lang.String,java.lang.String,javax.swing.Icon,com.intellij.openapi.ui.DialogWrapper$DoNotAskOption)" resolve="showOkCancelDialog" />
                  <node concept="37vLTw" id="44EradnLlSJ" role="37wK5m">
                    <ref role="3cqZAo" node="2jv$fqwD$oG" resolve="myProject" />
                  </node>
                  <node concept="37vLTw" id="44EradnLlSK" role="37wK5m">
                    <ref role="3cqZAo" node="44EradnLlSA" resolve="confirmationDialogMessage" />
                  </node>
                  <node concept="37vLTw" id="44EradnLlSL" role="37wK5m">
                    <ref role="3cqZAo" node="44EradnLlSv" resolve="confirmationDialogTitle" />
                  </node>
                  <node concept="Xl_RD" id="44EradnLlSM" role="37wK5m">
                    <property role="Xl_RC" value="Yes" />
                  </node>
                  <node concept="Xl_RD" id="44EradnLlSN" role="37wK5m">
                    <property role="Xl_RC" value="Cancel" />
                  </node>
                  <node concept="2YIFZM" id="44EradnLlSO" role="37wK5m">
                    <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                    <ref role="37wK5l" to="jkm4:~Messages.getWarningIcon()" resolve="getWarningIcon" />
                  </node>
                  <node concept="10Nm6u" id="44EradnLlSP" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="44EradnLlSQ" role="3clFbw">
            <node concept="37vLTw" id="44EradnLlSR" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
            </node>
            <node concept="liA8E" id="44EradnLlSS" role="2OqNvi">
              <ref role="37wK5l" to="bmv6:7AaNFvGVovf" resolve="hasResolvedChanges" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="44EradnLlT0" role="3cqZAp" />
        <node concept="3clFbF" id="44EradnLlT1" role="3cqZAp">
          <node concept="2YIFZM" id="3dZ7d0z47w8" role="3clFbG">
            <ref role="37wK5l" to="hdhb:3dZ7d0z1c2b" resolve="setTrackMovedNodesMergeOption" />
            <ref role="1Pybhc" to="hdhb:2G2A2CbSLhf" resolve="DiffSettingsUtil" />
            <node concept="3fqX7Q" id="3dZ7d0z47w9" role="37wK5m">
              <node concept="37vLTw" id="3dZ7d0z47wa" role="3fr31v">
                <ref role="3cqZAo" node="44EradnLlSp" resolve="trackMovedNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44EradnLlT5" role="3cqZAp">
          <node concept="37vLTI" id="44EradnLlT6" role="3clFbG">
            <node concept="3clFbT" id="44EradnLlT7" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="44EradnLlT8" role="37vLTJ">
              <ref role="3cqZAo" node="7FGVElwGi68" resolve="myMergeModeIsChanging" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="44EradnLlT9" role="3cqZAp" />
        <node concept="3clFbF" id="44EradnLlTa" role="3cqZAp">
          <node concept="2OqwBi" id="44EradnLlTb" role="3clFbG">
            <node concept="liA8E" id="44EradnLlTc" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="44EradnLlTd" role="37wK5m">
                <node concept="3clFbS" id="44EradnLlTe" role="1bW5cS">
                  <node concept="3clFbF" id="44EradnLlTf" role="3cqZAp">
                    <node concept="2OqwBi" id="44EradnLlTg" role="3clFbG">
                      <node concept="37vLTw" id="44EradnLlTh" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                      </node>
                      <node concept="liA8E" id="44EradnLlTi" role="2OqNvi">
                        <ref role="37wK5l" to="bmv6:2KMWrOXq2tx" resolve="restoreFullState" />
                        <node concept="37vLTw" id="44EradnLlTj" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwD$oP" resolve="myInitialState" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="44EradnLlTk" role="3cqZAp">
                    <node concept="37vLTI" id="44EradnLlTl" role="3clFbG">
                      <node concept="2YIFZM" id="44EradnLlTm" role="37vLTx">
                        <ref role="37wK5l" to="bmv6:30J9Cm_2qPU" resolve="createMergeSession" />
                        <ref role="1Pybhc" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                        <node concept="37vLTw" id="44EradnLlTn" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                        </node>
                        <node concept="3fqX7Q" id="44EradnLlTr" role="37wK5m">
                          <node concept="37vLTw" id="44EradnLlTs" role="3fr31v">
                            <ref role="3cqZAo" node="44EradnLlSp" resolve="trackMovedNodes" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="44EradnLlTt" role="37vLTJ">
                        <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="44EradnLlTu" role="3cqZAp">
                    <node concept="3y3z36" id="44EradnLlTv" role="3clFbw">
                      <node concept="10Nm6u" id="44EradnLlTw" role="3uHU7w" />
                      <node concept="37vLTw" id="44EradnLlTx" role="3uHU7B">
                        <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="44EradnLlTy" role="3clFbx">
                      <node concept="3clFbF" id="44EradnLlTz" role="3cqZAp">
                        <node concept="2OqwBi" id="44EradnLlT$" role="3clFbG">
                          <node concept="liA8E" id="44EradnLlT_" role="2OqNvi">
                            <ref role="37wK5l" to="bmv6:2KMWrOXq2tx" resolve="restoreFullState" />
                            <node concept="37vLTw" id="44EradnLlTA" role="37wK5m">
                              <ref role="3cqZAo" node="2jv$fqwD$oS" resolve="myMetadataInitialState" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="44EradnLlTB" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6_NZPMYcKrb" role="3cqZAp">
                    <node concept="3cpWsn" id="6_NZPMYcKrc" role="3cpWs9">
                      <property role="TrG5h" value="session" />
                      <node concept="3uibUv" id="6_NZPMYcKrd" role="1tU5fm">
                        <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                      </node>
                      <node concept="3K4zz7" id="6_NZPMYcKre" role="33vP2m">
                        <node concept="37vLTw" id="6_NZPMYcKrf" role="3K4GZi">
                          <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                        </node>
                        <node concept="37vLTw" id="6_NZPMYcKrg" role="3K4E3e">
                          <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                        </node>
                        <node concept="3clFbC" id="6_NZPMYcKrh" role="3K4Cdx">
                          <node concept="10Nm6u" id="6_NZPMYcKri" role="3uHU7w" />
                          <node concept="37vLTw" id="6_NZPMYcKrj" role="3uHU7B">
                            <ref role="3cqZAo" node="2jv$fqwD$pd" resolve="myRootId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6_NZPMY9vms" role="3cqZAp">
                    <node concept="2OqwBi" id="6_NZPMY9$g4" role="3clFbG">
                      <node concept="37vLTw" id="6_NZPMY9vmq" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                      </node>
                      <node concept="liA8E" id="6_NZPMY9G5E" role="2OqNvi">
                        <ref role="37wK5l" node="6_NZPMYbig2" resolve="setMergeSession" />
                        <node concept="37vLTw" id="6_NZPMYdmQp" role="37wK5m">
                          <ref role="3cqZAo" node="6_NZPMYcKrc" resolve="session" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="44EradnLlTC" role="3cqZAp">
                    <node concept="37vLTI" id="44EradnLlTD" role="3clFbG">
                      <node concept="3clFbT" id="44EradnLlTE" role="37vLTx" />
                      <node concept="37vLTw" id="44EradnLlTF" role="37vLTJ">
                        <ref role="3cqZAo" node="7FGVElwGi68" resolve="myMergeModeIsChanging" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="30J9Cm_aJED" role="2Oq$k0">
              <node concept="37vLTw" id="30J9Cm_aEZo" role="2Oq$k0">
                <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
              </node>
              <node concept="liA8E" id="30J9Cm_aT6u" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nOntMMVwZ" role="3cqZAp">
          <node concept="2OqwBi" id="7nOntMN1xr" role="3clFbG">
            <node concept="37vLTw" id="7nOntMMVwX" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
            <node concept="liA8E" id="7nOntMNaol" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.repaint()" resolve="repaint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="44EradnKE2V" role="1B3o_S" />
      <node concept="3cqZAl" id="44EradnKKk4" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4qk_0lIpwJb" role="jymVt" />
    <node concept="3clFb_" id="4qk_0lIpEyS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getToolbarActions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4qk_0lIpEyV" role="3clF47">
        <node concept="3clFbF" id="4qk_0lIpJij" role="3cqZAp">
          <node concept="37vLTw" id="4qk_0lIqtaG" role="3clFbG">
            <ref role="3cqZAo" node="4qk_0lIpVmS" resolve="myToolbarActions" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4qk_0lIpB31" role="1B3o_S" />
      <node concept="_YKpA" id="4qk_0lIqtog" role="3clF45">
        <node concept="3uibUv" id="4qk_0lIqw$s" role="_ZDj9">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqx1Ydt" role="jymVt" />
    <node concept="3clFb_" id="5$xqaEreqhH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setSaver" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5$xqaEreqhK" role="3clF47">
        <node concept="3clFbF" id="5$xqaEreDkS" role="3cqZAp">
          <node concept="37vLTI" id="5$xqaEreDyO" role="3clFbG">
            <node concept="37vLTw" id="5$xqaEreDIq" role="37vLTx">
              <ref role="3cqZAo" node="5$xqaErey3I" resolve="saver" />
            </node>
            <node concept="37vLTw" id="5$xqaEreDkR" role="37vLTJ">
              <ref role="3cqZAo" node="5$xqaErcJWW" resolve="mySaver" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5$xqaEreig$" role="1B3o_S" />
      <node concept="3cqZAl" id="5$xqaEreq5s" role="3clF45" />
      <node concept="37vLTG" id="5$xqaErey3I" role="3clF46">
        <property role="TrG5h" value="saver" />
        <node concept="3uibUv" id="60LhNvlwer8" role="1tU5fm">
          <ref role="3uigEE" node="5$xqaErb5$G" resolve="ISaveMergedModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$xqaEre76H" role="jymVt" />
    <node concept="3clFb_" id="7LCpE5eYhZz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="saveModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7LCpE5eYhZA" role="3clF47">
        <node concept="3clFbF" id="7LCpE5f6CPM" role="3cqZAp">
          <node concept="2OqwBi" id="7LCpE5f6CPO" role="3clFbG">
            <node concept="37vLTw" id="7LCpE5f6CPP" role="2Oq$k0">
              <ref role="3cqZAo" node="5$xqaErcJWW" resolve="mySaver" />
            </node>
            <node concept="liA8E" id="7LCpE5f6CPQ" role="2OqNvi">
              <ref role="37wK5l" node="7LCpE5eWcu6" resolve="save" />
              <node concept="Xjq3P" id="7LCpE5f6CPR" role="37wK5m" />
              <node concept="37vLTw" id="7LCpE5f6CPS" role="37wK5m">
                <ref role="3cqZAo" node="7LCpE5eZ3Hu" resolve="resultModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="7LCpE5f3eCp" role="3clF45" />
      <node concept="3Tmbuc" id="7LCpE5eZrub" role="1B3o_S" />
      <node concept="37vLTG" id="7LCpE5eZ3Hu" role="3clF46">
        <property role="TrG5h" value="resultModel" />
        <node concept="H_c77" id="7LCpE5eZ3Ht" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7LCpE5eXZwH" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$DD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="4qk_0lInO6d" role="3clF45" />
      <node concept="3Tmbuc" id="2jv$fqwD$DE" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$DH" role="3clF47">
        <node concept="1X3_iC" id="4qk_0lIzJXO" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2jv$fqwD$tb" role="8Wnug">
            <node concept="37vLTI" id="2jv$fqwD$tc" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeufBg" role="37vLTJ">
                <ref role="3cqZAo" node="2jv$fqwD$pr" resolve="myToolbar" />
              </node>
              <node concept="2OqwBi" id="2jv$fqwD$te" role="37vLTx">
                <node concept="2YIFZM" id="2jv$fqwD$tf" role="2Oq$k0">
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="2jv$fqwD$tg" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean)" resolve="createActionToolbar" />
                  <node concept="10M0yZ" id="2jv$fqwD$th" role="37wK5m">
                    <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                    <ref role="3cqZAo" to="qkt:~ActionPlaces.UNKNOWN" resolve="UNKNOWN" />
                  </node>
                  <node concept="37vLTw" id="2jv$fqwYjWT" role="37wK5m">
                    <ref role="3cqZAo" node="3SMO48GGEDr" resolve="myActionGroup" />
                  </node>
                  <node concept="3clFbT" id="2jv$fqwD$tj" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4qk_0lIzJr6" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2jv$fqwD$tk" role="8Wnug">
            <node concept="2OqwBi" id="2jv$fqwD$tl" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeulwo" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwD$pr" resolve="myToolbar" />
              </node>
              <node concept="liA8E" id="2jv$fqwD$tn" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionToolbar.updateActionsImmediately()" resolve="updateActionsImmediately" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4qk_0lIq$ps" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2jv$fqwD$to" role="8Wnug">
            <node concept="2OqwBi" id="2jv$fqwD$tp" role="3clFbG">
              <node concept="Xjq3P" id="4qk_0lInilJ" role="2Oq$k0" />
              <node concept="liA8E" id="2jv$fqwD$tr" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="2OqwBi" id="4qODzMz3tD8" role="37wK5m">
                  <node concept="liA8E" id="4qODzMz3tD9" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
                  </node>
                  <node concept="37vLTw" id="4qODzMz3tDa" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$pr" resolve="myToolbar" />
                  </node>
                </node>
                <node concept="10M0yZ" id="2jv$fqwD$tv" role="37wK5m">
                  <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
                  <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5cMoKghwDjP" role="3cqZAp">
          <node concept="2OqwBi" id="5cMoKghwGYU" role="3clFbG">
            <node concept="liA8E" id="5cMoKghx1sd" role="2OqNvi">
              <ref role="37wK5l" to="lzb2:~JBSplitter.setSplitterProportionKey(java.lang.String)" resolve="setSplitterProportionKey" />
              <node concept="3cpWs3" id="5cMoKghxDIa" role="37wK5m">
                <node concept="Xl_RD" id="5cMoKghxDIk" role="3uHU7w">
                  <property role="Xl_RC" value="ModelTreeSplitter" />
                </node>
                <node concept="2OqwBi" id="5cMoKghxlHU" role="3uHU7B">
                  <node concept="1rXfSq" id="5cMoKghxzpK" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="5cMoKghxslg" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5cMoKghwDjO" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwD$sH" role="3cqZAp">
          <node concept="37vLTI" id="2jv$fqwD$sI" role="3clFbG">
            <node concept="2ShNRf" id="2jv$fqwD$sJ" role="37vLTx">
              <node concept="1pGfFk" id="2jv$fqwD$sK" role="2ShVmc">
                <ref role="37wK5l" node="2jv$fqwD$F2" resolve="MergeModelsPanel.MergeModelsTree" />
                <node concept="37vLTw" id="QicWNw6rKb" role="37wK5m">
                  <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuogb" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4puABOe$479" role="3cqZAp">
          <node concept="2OqwBi" id="4puABOe$a9W" role="3clFbG">
            <node concept="37vLTw" id="4puABOe$477" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
            <node concept="liA8E" id="4puABOe$qeW" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:4puABOeuYCg" resolve="withModelName" />
              <node concept="2YIFZM" id="4puABOe$Si6" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="2OqwBi" id="4puABOe$Si7" role="37wK5m">
                  <node concept="37vLTw" id="4puABOe$Si8" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="4puABOe$Si9" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4s_" resolve="getBaseModel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4puABOe$Sia" role="37wK5m">
                  <node concept="37vLTw" id="4puABOe$Sib" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="4puABOe$Sic" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4puABOe$Sid" role="37wK5m">
                  <node concept="37vLTw" id="4puABOe$Sie" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="4puABOe$Sif" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwZq_3" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwZwoG" role="3clFbG">
            <node concept="liA8E" id="2jv$fqwZCrv" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setFirstComponent(javax.swing.JComponent)" resolve="setFirstComponent" />
              <node concept="2YIFZM" id="5BHMdu2u71u" role="37wK5m">
                <ref role="37wK5l" to="lzb2:~ScrollPaneFactory.createScrollPane(java.awt.Component)" resolve="createScrollPane" />
                <ref role="1Pybhc" to="lzb2:~ScrollPaneFactory" resolve="ScrollPaneFactory" />
                <node concept="37vLTw" id="2jv$fqx05CP" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqwZq_2" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65pnlFBLB2Q" role="3cqZAp">
          <node concept="2OqwBi" id="65pnlFBLB2R" role="3clFbG">
            <node concept="liA8E" id="65pnlFBLB2S" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setSecondComponent(javax.swing.JComponent)" resolve="setSecondComponent" />
              <node concept="37vLTw" id="65pnlFBLB2T" role="37wK5m">
                <ref role="3cqZAo" node="65pnlFBLni3" resolve="myNoRootPanel" />
              </node>
            </node>
            <node concept="37vLTw" id="65pnlFBLB2U" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="11Q08O4cj0f" role="3cqZAp">
          <node concept="1PaTwC" id="11Q08O4cj0g" role="1aUNEU">
            <node concept="3oM_SD" id="11Q08O4ck4w" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck4E" role="1PaTwD">
              <property role="3oM_SC" value="rebuild" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck55" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck5h" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck5m" role="1PaTwD">
              <property role="3oM_SC" value="tree" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck5$" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck7w" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck7K" role="1PaTwD">
              <property role="3oM_SC" value="happen" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck7T" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck8b" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck8m" role="1PaTwD">
              <property role="3oM_SC" value="second" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck8E" role="1PaTwD">
              <property role="3oM_SC" value="component" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck97" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck9l" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="11Q08O4ck9G" role="1PaTwD">
              <property role="3oM_SC" value="panel" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="11Q08O4clwr" role="3cqZAp">
          <node concept="1PaTwC" id="11Q08O4clws" role="1aUNEU">
            <node concept="3oM_SD" id="11Q08O4clwt" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm1P" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm1S" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm2Y" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm24" role="1PaTwD">
              <property role="3oM_SC" value="'no" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm2h" role="1PaTwD">
              <property role="3oM_SC" value="root'" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cxtf" role="1PaTwD">
              <property role="3oM_SC" value="panel" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cxvA" role="1PaTwD">
              <property role="3oM_SC" value="since" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm5c" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cxw5" role="1PaTwD">
              <property role="3oM_SC" value="tree" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm5m" role="1PaTwD">
              <property role="3oM_SC" value="rebuild" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cxwt" role="1PaTwD">
              <property role="3oM_SC" value="process" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm5x" role="1PaTwD">
              <property role="3oM_SC" value="includes" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cm5P" role="1PaTwD">
              <property role="3oM_SC" value="row" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cxvg" role="1PaTwD">
              <property role="3oM_SC" value="selection." />
            </node>
            <node concept="3oM_SD" id="11Q08O4cwpZ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="11Q08O4cwsi" role="3cqZAp">
          <node concept="1PaTwC" id="11Q08O4cwsh" role="1aUNEU">
            <node concept="3oM_SD" id="11Q08O4cwsg" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cxpQ" role="1PaTwD">
              <property role="3oM_SC" value="https://youtrack.jetbrains.com/issue/MPS-32897" />
            </node>
            <node concept="3oM_SD" id="11Q08O4cxpP" role="1PaTwD">
              <property role="3oM_SC" value="." />
            </node>
            <node concept="3oM_SD" id="11Q08O4cwrR" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2cFxs3P7tzW" role="3cqZAp">
          <node concept="2OqwBi" id="2cFxs3P7w4q" role="3clFbG">
            <node concept="37vLTw" id="2cFxs3P7tzU" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
            <node concept="liA8E" id="2cFxs3P7yUp" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaON" resolve="rebuildNow" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqwD$sM" role="3cqZAp" />
        <node concept="3clFbF" id="oYcweW9s_b" role="3cqZAp">
          <node concept="37vLTI" id="oYcweW9Buh" role="3clFbG">
            <node concept="37vLTw" id="oYcweW9s_a" role="37vLTJ">
              <ref role="3cqZAo" node="oYcweW9c4e" resolve="myGoToNeighbourRootActions" />
            </node>
            <node concept="2ShNRf" id="oYcweW9IHr" role="37vLTx">
              <node concept="1pGfFk" id="oYcweW9IHs" role="2ShVmc">
                <ref role="37wK5l" node="2jv$fqwD$EA" resolve="MergeModelsPanel.MyGoToNeighbourRootActions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gc0uWWtbna" role="3cqZAp">
          <node concept="2OqwBi" id="6gc0uWWtp_F" role="3clFbG">
            <node concept="liA8E" id="6gc0uWWtyH8" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent)" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="6gc0uWWtAGD" role="37wK5m">
                <ref role="1PxDUh" to="hdhb:42hl10VHb20" resolve="GoToNeighbourRootActions" />
                <ref role="3cqZAo" to="hdhb:6gc0uWWfWew" resolve="PREV_ROOT_SHORTCUT" />
              </node>
              <node concept="Xjq3P" id="4qk_0lInhNw" role="37wK5m" />
            </node>
            <node concept="2OqwBi" id="6gc0uWWteZx" role="2Oq$k0">
              <node concept="37vLTw" id="oYcweWb1RS" role="2Oq$k0">
                <ref role="3cqZAo" node="oYcweW9c4e" resolve="myGoToNeighbourRootActions" />
              </node>
              <node concept="liA8E" id="6gc0uWWtlLY" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHb3S" resolve="previous" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gc0uWWtP0o" role="3cqZAp">
          <node concept="2OqwBi" id="6gc0uWWtP0p" role="3clFbG">
            <node concept="liA8E" id="6gc0uWWtP0q" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent)" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="6gc0uWWtP0r" role="37wK5m">
                <ref role="3cqZAo" to="hdhb:6gc0uWWfPCL" resolve="NEXT_ROOT_SHORTCUT" />
                <ref role="1PxDUh" to="hdhb:42hl10VHb20" resolve="GoToNeighbourRootActions" />
              </node>
              <node concept="Xjq3P" id="4qk_0lIni3i" role="37wK5m" />
            </node>
            <node concept="2OqwBi" id="6gc0uWWtP0t" role="2Oq$k0">
              <node concept="37vLTw" id="oYcweWb5zU" role="2Oq$k0">
                <ref role="3cqZAo" node="oYcweW9c4e" resolve="myGoToNeighbourRootActions" />
              </node>
              <node concept="liA8E" id="6gc0uWWtP0u" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHb40" resolve="next" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4IUmW1QtmYQ" role="3cqZAp" />
        <node concept="3clFbH" id="2jv$fqx0jlP" role="3cqZAp" />
        <node concept="3clFbF" id="2jv$fqwD$tw" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwD$tx" role="3clFbG">
            <node concept="Xjq3P" id="4qk_0lIniCJ" role="2Oq$k0" />
            <node concept="liA8E" id="2jv$fqwD$tz" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2jv$fqx0$Ig" role="37wK5m">
                <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
              </node>
              <node concept="10M0yZ" id="2jv$fqwD$tA" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jv$fqx1eD8" role="3cqZAp" />
        <node concept="3cpWs8" id="2jv$fqwD$tB" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwD$tC" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2jv$fqwD$tD" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
            </node>
            <node concept="2OqwBi" id="2jv$fqwD$tE" role="33vP2m">
              <node concept="2YIFZM" id="2jv$fqwD$tF" role="2Oq$k0">
                <ref role="1Pybhc" to="zn9m:~DimensionService" resolve="DimensionService" />
                <ref role="37wK5l" to="zn9m:~DimensionService.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="2jv$fqwD$tG" role="2OqNvi">
                <ref role="37wK5l" to="zn9m:~DimensionService.getSize(java.lang.String)" resolve="getSize" />
                <node concept="1rXfSq" id="4hiugqyyHVV" role="37wK5m">
                  <ref role="37wK5l" node="2jv$fqwD$u5" resolve="getDimensionServiceKey" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jv$fqwD$tI" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbC" id="2jv$fqwD$tJ" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTzBf" role="3uHU7B">
              <ref role="3cqZAo" node="2jv$fqwD$tC" resolve="size" />
            </node>
            <node concept="10Nm6u" id="2jv$fqwD$tL" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2jv$fqwD$tM" role="3clFbx">
            <node concept="3clFbF" id="2jv$fqwD$tN" role="3cqZAp">
              <node concept="2OqwBi" id="2jv$fqwD$tO" role="3clFbG">
                <node concept="Xjq3P" id="4qk_0lInjfi" role="2Oq$k0" />
                <node concept="liA8E" id="2jv$fqwD$tQ" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
                  <node concept="2ShNRf" id="2jv$fqwD$tR" role="37wK5m">
                    <node concept="1pGfFk" id="2jv$fqwD$tS" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                      <node concept="3cmrfG" id="2jv$fqwD$tT" role="37wK5m">
                        <property role="3cmrfH" value="500" />
                      </node>
                      <node concept="3cmrfG" id="2jv$fqwD$tU" role="37wK5m">
                        <property role="3cmrfH" value="450" />
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
    <node concept="2tJIrI" id="4qk_0lIqBni" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$u5" role="jymVt">
      <property role="TrG5h" value="getDimensionServiceKey" />
      <node concept="17QB3L" id="2jv$fqwD$u6" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwD$u7" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$u8" role="3clF47">
        <node concept="3cpWs6" id="2jv$fqwD$u9" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwD$ua" role="3cqZAk">
            <node concept="1rXfSq" id="4hiugqyyWq$" role="2Oq$k0">
              <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
            </node>
            <node concept="liA8E" id="2jv$fqwD$uc" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS39qK" role="jymVt" />
    <node concept="3clFb_" id="6d004XjC32Z" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPreferredFocusedComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6d004XjC330" role="1B3o_S" />
      <node concept="3uibUv" id="6d004XjC332" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="6d004XjC333" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="6d004XjC334" role="3clF47">
        <node concept="3cpWs6" id="2AVqCwBG63W" role="3cqZAp">
          <node concept="37vLTw" id="7lvIiJ8XlXz" role="3cqZAk">
            <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS3emP" role="jymVt" />
    <node concept="3clFb_" id="4qk_0lIurZq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="saveResults" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4qk_0lIurZt" role="3clF47">
        <node concept="3SKdUt" id="4qk_0lIu$4i" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomkx" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomky" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkz" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk$" role="1PaTwD">
              <property role="3oM_SC" value="everything" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomk_" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkA" role="1PaTwD">
              <property role="3oM_SC" value="OK" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4qk_0lIu_eD" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomkB" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomkC" role="1PaTwD">
              <property role="3oM_SC" value="false" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkD" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkE" role="1PaTwD">
              <property role="3oM_SC" value="saving" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkF" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomkG" role="1PaTwD">
              <property role="3oM_SC" value="cancelled" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qk_0lIuvUt" role="3cqZAp">
          <node concept="1rXfSq" id="4qk_0lIuvUu" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwD$_T" resolve="applyMetadataChanges" />
          </node>
        </node>
        <node concept="3clFbH" id="4qk_0lIuvUv" role="3cqZAp" />
        <node concept="3cpWs8" id="4qk_0lIuvUw" role="3cqZAp">
          <node concept="3cpWsn" id="4qk_0lIuvUx" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="4qk_0lIuvUy" role="1tU5fm" />
            <node concept="2YIFZM" id="4qk_0lIuvUz" role="33vP2m">
              <ref role="1Pybhc" node="BjUsE2KReF" resolve="MergeConfirmation" />
              <ref role="37wK5l" node="2FmJFFZeC2a" resolve="showMergeConfirmationAndTakeAction" />
              <node concept="Xjq3P" id="4qk_0lIuvU$" role="37wK5m" />
              <node concept="37vLTw" id="4qk_0lIuvU_" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
              </node>
              <node concept="2OqwBi" id="4qk_0lIuvUA" role="37wK5m">
                <node concept="3zZkjj" id="4qk_0lIuvUB" role="2OqNvi">
                  <node concept="1bVj0M" id="4qk_0lIuvUC" role="23t8la">
                    <node concept="3clFbS" id="4qk_0lIuvUD" role="1bW5cS">
                      <node concept="3clFbF" id="4qk_0lIuvUE" role="3cqZAp">
                        <node concept="3fqX7Q" id="4qk_0lIuvUF" role="3clFbG">
                          <node concept="2ZW3vV" id="4qk_0lIuvUG" role="3fr31v">
                            <node concept="3uibUv" id="4qk_0lIuvUH" role="2ZW6by">
                              <ref role="3uigEE" to="btf5:5Gi8bfMd_nh" resolve="MetadataChange" />
                            </node>
                            <node concept="37vLTw" id="4qk_0lIuvUI" role="2ZW6bz">
                              <ref role="3cqZAo" node="5W7E4fV0XRg" resolve="ch" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XRg" role="1bW2Oz">
                      <property role="TrG5h" value="ch" />
                      <node concept="2jxLKc" id="5W7E4fV0XRh" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4qk_0lIuvUL" role="2Oq$k0">
                  <node concept="37vLTw" id="4qk_0lIuvUM" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="4qk_0lIuvUN" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4qk_0lIuvUO" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
              </node>
              <node concept="3K4zz7" id="4qk_0lIuvUP" role="37wK5m">
                <node concept="2OqwBi" id="4qk_0lIuvUQ" role="3K4GZi">
                  <node concept="liA8E" id="4qk_0lIuvUR" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                  </node>
                  <node concept="37vLTw" id="4qk_0lIuvUS" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                  </node>
                </node>
                <node concept="10Nm6u" id="4qk_0lIuvUT" role="3K4E3e" />
                <node concept="3clFbC" id="4qk_0lIuvUU" role="3K4Cdx">
                  <node concept="10Nm6u" id="4qk_0lIuvUV" role="3uHU7w" />
                  <node concept="37vLTw" id="4qk_0lIuvUW" role="3uHU7B">
                    <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qk_0lIuPXY" role="3cqZAp">
          <node concept="3clFbS" id="4qk_0lIuPY0" role="3clFbx">
            <node concept="3cpWs6" id="4qk_0lIuVlm" role="3cqZAp">
              <node concept="3clFbT" id="4qk_0lIuYiu" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4qk_0lIuU1j" role="3clFbw">
            <node concept="10M0yZ" id="4qk_0lIuUDv" role="3uHU7w">
              <ref role="1PxDUh" node="BjUsE2KReF" resolve="MergeConfirmation" />
              <ref role="3cqZAo" node="BjUsE2KReG" resolve="RETURN" />
            </node>
            <node concept="37vLTw" id="4qk_0lIuT5f" role="3uHU7B">
              <ref role="3cqZAo" node="4qk_0lIuvUx" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qk_0lIuvUX" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="4qk_0lIuvUY" role="3clFbx">
            <node concept="3clFbF" id="4qk_0lIuvUZ" role="3cqZAp">
              <node concept="1rXfSq" id="4qk_0lIuvV0" role="3clFbG">
                <ref role="37wK5l" node="2jv$fqwD$$6" resolve="mergeNonConflictingRoots" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4qk_0lIuvV1" role="3clFbw">
            <node concept="10M0yZ" id="4qk_0lIuvV2" role="3uHU7w">
              <ref role="1PxDUh" node="BjUsE2KReF" resolve="MergeConfirmation" />
              <ref role="3cqZAo" node="BjUsE2KReO" resolve="RESOLVE_AUTOMATICALLY" />
            </node>
            <node concept="37vLTw" id="4qk_0lIuvV3" role="3uHU7B">
              <ref role="3cqZAo" node="4qk_0lIuvUx" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qk_0lIuvVj" role="3cqZAp">
          <node concept="3clFbS" id="4qk_0lIuvVk" role="3clFbx">
            <node concept="3clFbF" id="4qk_0lIuvVl" role="3cqZAp">
              <node concept="1rXfSq" id="4qk_0lIuvVm" role="3clFbG">
                <ref role="37wK5l" node="2jv$fqwD$vU" resolve="unregisterModels" />
              </node>
            </node>
            <node concept="3cpWs6" id="4qk_0lIuGZ8" role="3cqZAp">
              <node concept="3clFbT" id="4qk_0lIuHe0" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="4qk_0lIuvVq" role="3clFbw">
            <ref role="37wK5l" node="7LCpE5eYhZz" resolve="saveModel" />
            <node concept="1rXfSq" id="4qk_0lIuvVr" role="37wK5m">
              <ref role="37wK5l" node="2jv$fqwD$vy" resolve="getResultModelWithFixedId" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4qk_0lIuAqs" role="3cqZAp">
          <node concept="3clFbT" id="4qk_0lIuDjU" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4qk_0lIuorF" role="1B3o_S" />
      <node concept="10P_77" id="4qk_0lIuwsI" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6Agr_nS3l$7" role="jymVt" />
    <node concept="3clFb_" id="65pnlFBKfjM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4qk_0lIrc3d" role="1B3o_S" />
      <node concept="3cqZAl" id="65pnlFBKfjP" role="3clF45" />
      <node concept="3clFbS" id="65pnlFBKfjQ" role="3clF47">
        <node concept="3clFbJ" id="65pnlFBC9AO" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3y3z36" id="65pnlFBCfH6" role="3clFbw">
            <node concept="37vLTw" id="65pnlFBL0v2" role="3uHU7B">
              <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
            </node>
            <node concept="10Nm6u" id="65pnlFBCiJg" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="65pnlFBC9AQ" role="3clFbx">
            <node concept="3clFbF" id="65pnlFBC2VZ" role="3cqZAp">
              <node concept="2OqwBi" id="65pnlFBC2W0" role="3clFbG">
                <node concept="37vLTw" id="65pnlFBL5lO" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                </node>
                <node concept="liA8E" id="65pnlFBC2W1" role="2OqNvi">
                  <ref role="37wK5l" node="2jv$fqwevnK" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6n7JwfqYVEi" role="3cqZAp">
          <node concept="2OqwBi" id="6n7JwfqZ17h" role="3clFbG">
            <node concept="37vLTw" id="6n7JwfqYVEg" role="2Oq$k0">
              <ref role="3cqZAo" node="6n7JwfqXl$o" resolve="myCustomRepoFiles" />
            </node>
            <node concept="liA8E" id="6n7JwfqZfY9" role="2OqNvi">
              <ref role="37wK5l" to="kip1:~FileSystemRepoBridge.close()" resolve="close" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqx2pM9" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$vy" role="jymVt">
      <property role="TrG5h" value="getResultModelWithFixedId" />
      <node concept="3Tm6S6" id="7LCpE5f8q6E" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$v$" role="3clF47">
        <node concept="3cpWs8" id="6E2SOPziqY_" role="3cqZAp">
          <node concept="3cpWsn" id="6E2SOPziqYC" role="3cpWs9">
            <property role="TrG5h" value="resultModel" />
            <node concept="H_c77" id="6E2SOPziqYz" role="1tU5fm" />
            <node concept="2OqwBi" id="JIxq8WEucw" role="33vP2m">
              <node concept="liA8E" id="JIxq8WEHq7" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runWriteAction(jetbrains.mps.util.Computable)" resolve="runWriteAction" />
                <node concept="1bVj0M" id="JIxq8WEVdz" role="37wK5m">
                  <node concept="3clFbS" id="JIxq8WEVd$" role="1bW5cS">
                    <node concept="3SKdUt" id="JIxq8WBi$X" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXomkH" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXomkI" role="1PaTwD">
                          <property role="3oM_SC" value="copy" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXomkJ" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXomkK" role="1PaTwD">
                          <property role="3oM_SC" value="avoid" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXomkL" role="1PaTwD">
                          <property role="3oM_SC" value="problems" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXomkM" role="1PaTwD">
                          <property role="3oM_SC" value="with" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXomkN" role="1PaTwD">
                          <property role="3oM_SC" value="de-registration" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="59Mw_8gFEig" role="3cqZAp">
                      <node concept="2YIFZM" id="59Mw_8gFJ9g" role="3clFbG">
                        <ref role="37wK5l" to="bmv6:59Mw_8gDwR3" resolve="writableCloneOf" />
                        <ref role="1Pybhc" to="bmv6:1m2uLwrRQWq" resolve="MergeTemporaryModel" />
                        <node concept="2OqwBi" id="59Mw_8gFNPT" role="37wK5m">
                          <node concept="37vLTw" id="59Mw_8gFNPU" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                          </node>
                          <node concept="liA8E" id="59Mw_8gFNPV" role="2OqNvi">
                            <ref role="37wK5l" to="bmv6:7OAO1yPTxzu" resolve="getSortedResultModel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="4tEWdMGJRM4" role="2Oq$k0">
                <node concept="1pGfFk" id="4tEWdMGKhFt" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                  <node concept="37vLTw" id="4tEWdMGJB4C" role="37wK5m">
                    <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwD$vI" role="3cqZAp">
          <node concept="2YIFZM" id="2jv$fqwD$vJ" role="3clFbG">
            <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
            <ref role="37wK5l" to="hdhb:5BWkpD4vfd" resolve="restoreModelName" />
            <node concept="37vLTw" id="6E2SOPzjtAT" role="37wK5m">
              <ref role="3cqZAo" node="6E2SOPziqYC" resolve="resultModel" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6E2SOPzljBB" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomkO" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomkP" role="1PaTwD">
              <property role="3oM_SC" value="fix???" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2pkw$wNHFUG" role="3cqZAp">
          <node concept="2GrKxI" id="2pkw$wNHFUI" role="2Gsz3X">
            <property role="TrG5h" value="m" />
          </node>
          <node concept="2ShNRf" id="2pkw$wNHPgT" role="2GsD0m">
            <node concept="3g6Rrh" id="2pkw$wNIm57" role="2ShVmc">
              <node concept="H_c77" id="6E2SOPzgYjy" role="3g7fb8" />
              <node concept="2OqwBi" id="30J9Cm_eXGC" role="3g7hyw">
                <node concept="37vLTw" id="5ilXZU41e9I" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="30J9Cm_f90V" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="30J9Cm_feGq" role="3g7hyw">
                <node concept="37vLTw" id="30J9Cm_feGr" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="30J9Cm_feGs" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2pkw$wNHFUM" role="2LFqv$">
            <node concept="3clFbF" id="2pkw$wNKgDv" role="3cqZAp">
              <node concept="2YIFZM" id="2pkw$wNKq$t" role="3clFbG">
                <ref role="37wK5l" to="hdhb:2pkw$wNpEBO" resolve="fixModelReferences" />
                <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                <node concept="37vLTw" id="6E2SOPzjKmB" role="37wK5m">
                  <ref role="3cqZAo" node="6E2SOPziqYC" resolve="resultModel" />
                </node>
                <node concept="2OqwBi" id="3XR0QgVCmuG" role="37wK5m">
                  <node concept="2GrUjf" id="3XR0QgVCmuF" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2pkw$wNHFUI" resolve="m" />
                  </node>
                  <node concept="aIX43" id="3XR0QgVCmuH" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2jv$fqwD$vP" role="3cqZAp">
          <node concept="37vLTw" id="6E2SOPzk7Hy" role="3cqZAk">
            <ref role="3cqZAo" node="6E2SOPziqYC" resolve="resultModel" />
          </node>
        </node>
      </node>
      <node concept="H_c77" id="4hhnRwRpILy" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6Agr_nS3vPb" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$vU" role="jymVt">
      <property role="TrG5h" value="unregisterModels" />
      <node concept="3cqZAl" id="2jv$fqwD$vV" role="3clF45" />
      <node concept="3Tm6S6" id="7LCpE5f86jf" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$vX" role="3clF47">
        <node concept="1QHqEM" id="2jv$fqwD$wd" role="3cqZAp">
          <node concept="1QHqEC" id="2jv$fqwD$we" role="1QHqEI">
            <node concept="3clFbS" id="2jv$fqwD$wf" role="1bW5cS">
              <node concept="3clFbF" id="568jgXHKs6R" role="3cqZAp">
                <node concept="2OqwBi" id="568jgXHKxHl" role="3clFbG">
                  <node concept="37vLTw" id="568jgXHKs6P" role="2Oq$k0">
                    <ref role="3cqZAo" node="568jgXHJ81R" resolve="myMetadataModels" />
                  </node>
                  <node concept="liA8E" id="568jgXHKGwp" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:568jgXHqdQ_" resolve="discard" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2jv$fqwD$wg" role="3cqZAp">
                <node concept="2YIFZM" id="2jv$fqwD$wh" role="3clFbG">
                  <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                  <ref role="37wK5l" to="hdhb:2v$NtEHjyyk" resolve="unregisterModel" />
                  <node concept="2OqwBi" id="5gswaKiIqb6" role="37wK5m">
                    <node concept="37vLTw" id="377Orl2ryG4" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="5gswaKiI$FT" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6fe4FZizSF_" role="3cqZAp">
                <node concept="2YIFZM" id="6fe4FZi$N08" role="3clFbG">
                  <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                  <ref role="37wK5l" to="hdhb:2v$NtEHjyyk" resolve="unregisterModel" />
                  <node concept="2OqwBi" id="30J9Cm_cPU9" role="37wK5m">
                    <node concept="37vLTw" id="5ilXZU40HlE" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="30J9Cm_d0Kb" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6fe4FZi$Wgo" role="3cqZAp">
                <node concept="2YIFZM" id="6fe4FZi$Wgp" role="3clFbG">
                  <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                  <ref role="37wK5l" to="hdhb:2v$NtEHjyyk" resolve="unregisterModel" />
                  <node concept="2OqwBi" id="30J9Cm_diiM" role="37wK5m">
                    <node concept="37vLTw" id="5ilXZU40TtH" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="30J9Cm_dlA6" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6fe4FZi_5uV" role="3cqZAp">
                <node concept="2YIFZM" id="6fe4FZi_5uW" role="3clFbG">
                  <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                  <ref role="37wK5l" to="hdhb:2v$NtEHjyyk" resolve="unregisterModel" />
                  <node concept="2OqwBi" id="30J9Cm_d_fx" role="37wK5m">
                    <node concept="37vLTw" id="5ilXZU411su" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                    </node>
                    <node concept="liA8E" id="30J9Cm_dErM" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4s_" resolve="getBaseModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4tEWdMGJAYe" role="ukAjM">
            <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS3Bl$" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$wC" role="jymVt">
      <property role="TrG5h" value="rebuildLater" />
      <node concept="3cqZAl" id="2jv$fqwD$wD" role="3clF45" />
      <node concept="3clFbS" id="2jv$fqwD$wE" role="3clF47">
        <node concept="1X3_iC" id="4qk_0lIzJaF" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2jv$fqwD$wF" role="8Wnug">
            <node concept="2OqwBi" id="2jv$fqwD$wG" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuL1o" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwD$pr" resolve="myToolbar" />
              </node>
              <node concept="liA8E" id="2jv$fqwD$wI" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionToolbar.updateActionsImmediately()" resolve="updateActionsImmediately" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jv$fqwD$wJ" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwD$wK" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyM7" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
            <node concept="liA8E" id="2jv$fqwD$wM" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:6odKvAWD1yN" resolve="rebuildLater" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS3IMo" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$wN" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3uibUv" id="2jv$fqwD$wO" role="3clF45">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3clFbS" id="2jv$fqwD$wP" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$wQ" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuvN5" role="3clFbG">
            <ref role="3cqZAo" node="2jv$fqwD$oG" resolve="myProject" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5wz67X6zjJ$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6Agr_nS3O4V" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$wS" role="jymVt">
      <property role="TrG5h" value="getNeighbourRoot" />
      <node concept="37vLTG" id="2jv$fqwD$wT" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="2jv$fqwD$wU" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$wV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwD$wW" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="10P_77" id="2jv$fqwD$wX" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2jv$fqwD$wY" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm1VV" id="2jv$fqwD$wZ" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$x0" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$x1" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwD$x2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeur3f" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
            <node concept="liA8E" id="2jv$fqwD$x4" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaQi" resolve="getNeighbourRoot" />
              <node concept="37vLTw" id="2BHiRxgm$SO" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwD$wT" resolve="rootId" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmaYE" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwD$wW" resolve="next" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2jv$fqwD$x7" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ldSbGD4X$t" role="jymVt" />
    <node concept="3clFb_" id="7ldSbGD5lp7" role="jymVt">
      <property role="TrG5h" value="discardMergeRootPane" />
      <node concept="3clFbS" id="7ldSbGD5lpa" role="3clF47">
        <node concept="3clFbF" id="1H$5hGosygH" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGosygI" role="3clFbG">
            <node concept="37vLTw" id="7v9sVxjIOA6" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
            </node>
            <node concept="liA8E" id="1H$5hGosygJ" role="2OqNvi">
              <ref role="37wK5l" node="1H$5hGoqbcQ" resolve="unregisterShortcuts" />
              <node concept="Xjq3P" id="4qk_0lIn_bq" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4hav$v7nLh0" role="3cqZAp">
          <node concept="2OqwBi" id="4hav$v7nUe2" role="3clFbG">
            <node concept="liA8E" id="4hav$v7o41T" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setSecondComponent(javax.swing.JComponent)" resolve="setSecondComponent" />
              <node concept="37vLTw" id="7rEFA4R5SzE" role="37wK5m">
                <ref role="3cqZAo" node="65pnlFBLni3" resolve="myNoRootPanel" />
              </node>
            </node>
            <node concept="37vLTw" id="4hav$v7nPRo" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYiATh" role="3cqZAp">
          <node concept="2OqwBi" id="haj_nYiEpw" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqx3Brc" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
            </node>
            <node concept="liA8E" id="haj_nYiJOU" role="2OqNvi">
              <ref role="37wK5l" node="2jv$fqwevnK" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYiQPZ" role="3cqZAp">
          <node concept="37vLTI" id="haj_nYiUl4" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqx3LWe" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
            </node>
            <node concept="10Nm6u" id="haj_nYiXJ0" role="37vLTx" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7ldSbGD53Zb" role="1B3o_S" />
      <node concept="3cqZAl" id="7ldSbGD54N6" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2jv$fqwMVrh" role="jymVt" />
    <node concept="3clFb_" id="haj_nYikT5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="resetCurrentRoot" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="haj_nYikT8" role="3clF47">
        <node concept="3clFbJ" id="7MTGQ94Dv7D" role="3cqZAp">
          <node concept="3clFbC" id="7MTGQ94D$w2" role="3clFbw">
            <node concept="37vLTw" id="2jv$fqx3xDZ" role="3uHU7B">
              <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
            </node>
            <node concept="10Nm6u" id="7MTGQ94D$w5" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7MTGQ94Dv7L" role="3clFbx">
            <node concept="3cpWs6" id="7MTGQ94Dv7M" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="7MTGQ94DrpO" role="3cqZAp" />
        <node concept="3clFbF" id="7ldSbGD5RR1" role="3cqZAp">
          <node concept="1rXfSq" id="7ldSbGD5RQZ" role="3clFbG">
            <ref role="37wK5l" node="7ldSbGD5lp7" resolve="discardMergeRootPane" />
          </node>
        </node>
        <node concept="3clFbF" id="haj_o1ZpyN" role="3cqZAp">
          <node concept="37vLTI" id="haj_o1ZpIf" role="3clFbG">
            <node concept="10Nm6u" id="haj_o1ZpIr" role="37vLTx" />
            <node concept="37vLTw" id="haj_o1ZpyM" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwD$pd" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYkogQ" role="3cqZAp">
          <node concept="1rXfSq" id="haj_nYkogP" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwD$_T" resolve="applyMetadataChanges" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="haj_nYieWT" role="1B3o_S" />
      <node concept="3cqZAl" id="haj_nYikRg" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6Agr_nS3Ym4" role="jymVt" />
    <node concept="3clFb_" id="3SMO48GoPmo" role="jymVt">
      <property role="TrG5h" value="changeCurrentRoot" />
      <node concept="3Tm6S6" id="haj_nYmzYl" role="1B3o_S" />
      <node concept="3cqZAl" id="3SMO48GoPmp" role="3clF45" />
      <node concept="3clFbS" id="3SMO48GoPmr" role="3clF47">
        <node concept="3clFbJ" id="6rlHBM$PRDh" role="3cqZAp">
          <node concept="1Wc70l" id="6rlHBM$PRDi" role="3clFbw">
            <node concept="3clFbC" id="6rlHBM$PRDj" role="3uHU7w">
              <node concept="37vLTw" id="6rlHBM$PRDk" role="3uHU7w">
                <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
              </node>
              <node concept="37vLTw" id="6rlHBM$PRDl" role="3uHU7B">
                <ref role="3cqZAo" node="2jv$fqwD$pd" resolve="myRootId" />
              </node>
            </node>
            <node concept="3y3z36" id="6rlHBM$PRDm" role="3uHU7B">
              <node concept="37vLTw" id="2jv$fqx4IU7" role="3uHU7B">
                <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
              </node>
              <node concept="10Nm6u" id="6rlHBM$PRDo" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="6rlHBM$PRDp" role="3clFbx">
            <node concept="3cpWs6" id="6rlHBM$PRDq" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYl2D5" role="3cqZAp">
          <node concept="1rXfSq" id="haj_nYl2D4" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwD$_T" resolve="applyMetadataChanges" />
          </node>
        </node>
        <node concept="3clFbH" id="5WyNCU0AIHa" role="3cqZAp" />
        <node concept="3clFbJ" id="7ldSbGD1iBg" role="3cqZAp">
          <node concept="3clFbS" id="7ldSbGD1iBi" role="3clFbx">
            <node concept="3SKdUt" id="7ldSbGD4wmM" role="3cqZAp">
              <node concept="1PaTwC" id="7ldSbGD4wmN" role="1aUNEU">
                <node concept="3oM_SD" id="7ldSbGD4wmO" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4_R4" role="1PaTwD">
                  <property role="3oM_SC" value="quite" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4F5c" role="1PaTwD">
                  <property role="3oM_SC" value="odd" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4F5t" role="1PaTwD">
                  <property role="3oM_SC" value="way" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4F6k" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4F6l" role="1PaTwD">
                  <property role="3oM_SC" value="re-initialize" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4F8i" role="1PaTwD">
                  <property role="3oM_SC" value="MergeRootsPane" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Fb_" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4FcG" role="1PaTwD">
                  <property role="3oM_SC" value="moment" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4FcH" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4FcI" role="1PaTwD">
                  <property role="3oM_SC" value="switch" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4FeF" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4FeG" role="1PaTwD">
                  <property role="3oM_SC" value="or" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4FeX" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4FfO" role="1PaTwD">
                  <property role="3oM_SC" value="'model" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4FgV" role="1PaTwD">
                  <property role="3oM_SC" value="properties'" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Fms" role="1PaTwD">
                  <property role="3oM_SC" value="node," />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Fmt" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7ldSbGD4KR0" role="3cqZAp">
              <node concept="1PaTwC" id="7ldSbGD4KR1" role="1aUNEU">
                <node concept="3oM_SD" id="7ldSbGD4KR2" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4PE3" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4PE5" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4PE6" role="1PaTwD">
                  <property role="3oM_SC" value="resided" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Q5K" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Q5L" role="1PaTwD">
                  <property role="3oM_SC" value="another" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4SI3" role="1PaTwD">
                  <property role="3oM_SC" value="repo" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4SI4" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4SIV" role="1PaTwD">
                  <property role="3oM_SC" value="hence" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4XsX" role="1PaTwD">
                  <property role="3oM_SC" value="can't" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Xte" role="1PaTwD">
                  <property role="3oM_SC" value="re-use" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Xvb" role="1PaTwD">
                  <property role="3oM_SC" value="DiffEditors" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Xxo" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4XxD" role="1PaTwD">
                  <property role="3oM_SC" value="existing" />
                </node>
                <node concept="3oM_SD" id="7ldSbGD4Xyw" role="1PaTwD">
                  <property role="3oM_SC" value="MergeRootsPane" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7ldSbGD6s94" role="3cqZAp">
              <node concept="1rXfSq" id="7ldSbGD6s92" role="3clFbG">
                <ref role="37wK5l" node="7ldSbGD5lp7" resolve="discardMergeRootPane" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7ldSbGD1JDW" role="3clFbw">
            <node concept="3y3z36" id="7ldSbGD1AmV" role="3uHU7B">
              <node concept="37vLTw" id="7ldSbGD1p_N" role="3uHU7B">
                <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
              </node>
              <node concept="10Nm6u" id="7ldSbGD1C1g" role="3uHU7w" />
            </node>
            <node concept="1eOMI4" id="7ldSbGD3PJc" role="3uHU7w">
              <node concept="22lmx$" id="7ldSbGD2MRH" role="1eOMHV">
                <node concept="1Wc70l" id="7ldSbGD294t" role="3uHU7B">
                  <node concept="3y3z36" id="7ldSbGD2vRl" role="3uHU7w">
                    <node concept="37vLTw" id="7ldSbGD2nI3" role="3uHU7B">
                      <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                    </node>
                    <node concept="10Nm6u" id="7ldSbGD2Afo" role="3uHU7w" />
                  </node>
                  <node concept="3clFbC" id="7ldSbGD1YKs" role="3uHU7B">
                    <node concept="37vLTw" id="7ldSbGD1SYd" role="3uHU7B">
                      <ref role="3cqZAo" node="2jv$fqwD$pd" resolve="myRootId" />
                    </node>
                    <node concept="10Nm6u" id="7ldSbGD23U2" role="3uHU7w" />
                  </node>
                </node>
                <node concept="1Wc70l" id="7ldSbGD3pgB" role="3uHU7w">
                  <node concept="3clFbC" id="7ldSbGD3IY2" role="3uHU7w">
                    <node concept="10Nm6u" id="7ldSbGD3KCn" role="3uHU7w" />
                    <node concept="37vLTw" id="7ldSbGD3yT$" role="3uHU7B">
                      <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                    </node>
                  </node>
                  <node concept="3y3z36" id="7ldSbGD3au_" role="3uHU7B">
                    <node concept="37vLTw" id="7ldSbGD32VY" role="3uHU7B">
                      <ref role="3cqZAo" node="2jv$fqwD$pd" resolve="myRootId" />
                    </node>
                    <node concept="10Nm6u" id="7ldSbGD3gQm" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_o1UUvf" role="3cqZAp">
          <node concept="37vLTI" id="haj_o1UUFZ" role="3clFbG">
            <node concept="37vLTw" id="haj_o1UUGb" role="37vLTx">
              <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
            </node>
            <node concept="37vLTw" id="haj_o1UUve" role="37vLTJ">
              <ref role="3cqZAo" node="2jv$fqwD$pd" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SMO48GPjS$" role="3cqZAp">
          <node concept="3cpWsn" id="3SMO48GPjS_" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <node concept="3uibUv" id="2jv$fqx5Mwk" role="1tU5fm">
              <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
            </node>
            <node concept="3K4zz7" id="3SMO48GPjSA" role="33vP2m">
              <node concept="37vLTw" id="2jv$fqx68I8" role="3K4GZi">
                <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
              </node>
              <node concept="37vLTw" id="2jv$fqx639h" role="3K4E3e">
                <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
              </node>
              <node concept="3clFbC" id="3SMO48GPjSD" role="3K4Cdx">
                <node concept="10Nm6u" id="3SMO48GPjSE" role="3uHU7w" />
                <node concept="37vLTw" id="3SMO48GPjSF" role="3uHU7B">
                  <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCipv$RQ" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCipv$RR" role="3clFbG">
            <node concept="2OqwBi" id="4tEWdMGJ$aS" role="2Oq$k0">
              <node concept="37vLTw" id="4tEWdMGJz5X" role="2Oq$k0">
                <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
              </node>
              <node concept="liA8E" id="4tEWdMGJ$Uq" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1KUoCipv$RT" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1KUoCipv$RU" role="37wK5m">
                <node concept="3clFbS" id="1KUoCipv$RV" role="1bW5cS">
                  <node concept="3cpWs8" id="1KUoCipv$RW" role="3cqZAp">
                    <node concept="3cpWsn" id="1KUoCipv$RX" role="3cpWs9">
                      <property role="TrG5h" value="nodeId" />
                      <node concept="3uibUv" id="1KUoCipv$RY" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                      </node>
                      <node concept="3K4zz7" id="1KUoCipv$RZ" role="33vP2m">
                        <node concept="2YIFZM" id="6RkMMcXjT_0" role="3K4E3e">
                          <ref role="37wK5l" to="p37l:6RkMMcXj0kh" resolve="getMetadataRootId" />
                          <ref role="1Pybhc" to="p37l:444ZSQ06W$a" resolve="MetadataUtil" />
                        </node>
                        <node concept="37vLTw" id="1KUoCipv$S5" role="3K4GZi">
                          <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                        </node>
                        <node concept="3clFbC" id="1KUoCipv$S6" role="3K4Cdx">
                          <node concept="10Nm6u" id="1KUoCipv$S7" role="3uHU7w" />
                          <node concept="37vLTw" id="1KUoCipv$S8" role="3uHU7B">
                            <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1KUoCipv$S9" role="3cqZAp">
                    <node concept="3clFbC" id="1KUoCipv$Sa" role="3clFbw">
                      <node concept="37vLTw" id="1KUoCipv$Sb" role="3uHU7B">
                        <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                      </node>
                      <node concept="10Nm6u" id="1KUoCipv$Sc" role="3uHU7w" />
                    </node>
                    <node concept="3clFbS" id="1KUoCipv$Sd" role="3clFbx">
                      <node concept="3clFbF" id="1KUoCipv$Se" role="3cqZAp">
                        <node concept="37vLTI" id="1KUoCipv$Sf" role="3clFbG">
                          <node concept="37vLTw" id="1KUoCipv$Sg" role="37vLTJ">
                            <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                          </node>
                          <node concept="2ShNRf" id="1KUoCipv$Sh" role="37vLTx">
                            <node concept="1pGfFk" id="1KUoCipv$Si" role="2ShVmc">
                              <ref role="37wK5l" node="2jv$fqwev8m" resolve="MergeRootsPane" />
                              <node concept="37vLTw" id="1KUoCipv$Sj" role="37wK5m">
                                <ref role="3cqZAo" node="2jv$fqwD$oG" resolve="myProject" />
                              </node>
                              <node concept="37vLTw" id="1KUoCipv$Sk" role="37wK5m">
                                <ref role="3cqZAo" node="3SMO48GPjS_" resolve="session" />
                              </node>
                              <node concept="37vLTw" id="1KUoCipv$Sl" role="37wK5m">
                                <ref role="3cqZAo" node="1KUoCipv$RX" resolve="nodeId" />
                              </node>
                              <node concept="2OqwBi" id="1KUoCipv$Sm" role="37wK5m">
                                <node concept="37vLTw" id="1KUoCipv$Sn" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
                                </node>
                                <node concept="liA8E" id="1KUoCipv$So" role="2OqNvi">
                                  <ref role="37wK5l" to="hdhb:42hl10VHaRb" resolve="getNameForRoot" />
                                  <node concept="37vLTw" id="2BHiRxgm6YR" role="37wK5m">
                                    <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="1KUoCipv$Sq" role="37wK5m">
                                <ref role="3cqZAo" node="2jv$fqwD$pg" resolve="myContentTitles" />
                              </node>
                              <node concept="37vLTw" id="70RwqOIiYpo" role="37wK5m">
                                <ref role="3cqZAo" node="70RwqOIeORc" resolve="myTitleCustomizers" />
                              </node>
                              <node concept="1bVj0M" id="44EradnNwdt" role="37wK5m">
                                <node concept="3clFbS" id="44EradnNwdv" role="1bW5cS">
                                  <node concept="3clFbF" id="44EradnNDrz" role="3cqZAp">
                                    <node concept="1rXfSq" id="44EradnNDry" role="3clFbG">
                                      <ref role="37wK5l" node="44EradnKSDx" resolve="trackMovedNodes" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="1KUoCipv$Ss" role="3cqZAp">
                        <node concept="3cpWsn" id="1KUoCipv$St" role="3cpWs9">
                          <property role="TrG5h" value="actionGroup" />
                          <node concept="2ShNRf" id="1KUoCipv$Su" role="33vP2m">
                            <node concept="1pGfFk" id="1KUoCipv$Sv" role="2ShVmc">
                              <ref role="37wK5l" to="qkt:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="1KUoCipv$Sw" role="1tU5fm">
                            <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1KUoCipv$Sx" role="3cqZAp">
                        <node concept="2OqwBi" id="1KUoCipv$Sy" role="3clFbG">
                          <node concept="liA8E" id="1KUoCipv$Sz" role="2OqNvi">
                            <ref role="37wK5l" to="qkt:~DefaultActionGroup.addAll(com.intellij.openapi.actionSystem.ActionGroup)" resolve="addAll" />
                            <node concept="2OqwBi" id="1KUoCipv$S$" role="37wK5m">
                              <node concept="37vLTw" id="1KUoCipv$S_" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                              </node>
                              <node concept="liA8E" id="1KUoCipv$SA" role="2OqNvi">
                                <ref role="37wK5l" node="3SMO48G1KZq" resolve="getActions" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1KUoCipv$SB" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KUoCipv$St" resolve="actionGroup" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="1KUoCipv$SC" role="3cqZAp">
                        <node concept="3cpWsn" id="1KUoCipv$SD" role="3cpWs9">
                          <property role="TrG5h" value="toolbar" />
                          <node concept="3uibUv" id="1KUoCipv$SE" role="1tU5fm">
                            <ref role="3uigEE" to="qkt:~ActionToolbar" resolve="ActionToolbar" />
                          </node>
                          <node concept="2OqwBi" id="1KUoCipv$SF" role="33vP2m">
                            <node concept="liA8E" id="1KUoCipv$SG" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean)" resolve="createActionToolbar" />
                              <node concept="10M0yZ" id="1V_XV5aem$I" role="37wK5m">
                                <ref role="3cqZAo" to="qkt:~ActionPlaces.TOOLBAR" resolve="TOOLBAR" />
                                <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                              </node>
                              <node concept="37vLTw" id="1KUoCipv$SI" role="37wK5m">
                                <ref role="3cqZAo" node="1KUoCipv$St" resolve="actionGroup" />
                              </node>
                              <node concept="3clFbT" id="1KUoCipv$SJ" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="1KUoCipv$SK" role="2Oq$k0">
                              <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                              <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="43vcy4zHzFM" role="3cqZAp">
                        <node concept="2OqwBi" id="43vcy4zHDco" role="3clFbG">
                          <node concept="37vLTw" id="43vcy4zHzFK" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KUoCipv$SD" resolve="toolbar" />
                          </node>
                          <node concept="liA8E" id="43vcy4zHOLn" role="2OqNvi">
                            <ref role="37wK5l" to="qkt:~ActionToolbar.setTargetComponent(javax.swing.JComponent)" resolve="setTargetComponent" />
                            <node concept="2OqwBi" id="43vcy4zL4Hf" role="37wK5m">
                              <node concept="liA8E" id="43vcy4zL4Hg" role="2OqNvi">
                                <ref role="37wK5l" node="3SMO48FPvtW" resolve="getPanel" />
                              </node>
                              <node concept="37vLTw" id="43vcy4zL4Hh" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1KUoCipv$SL" role="3cqZAp">
                        <node concept="2OqwBi" id="1KUoCipv$SM" role="3clFbG">
                          <node concept="37vLTw" id="1KUoCipv$SN" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                          </node>
                          <node concept="liA8E" id="1KUoCipv$SO" role="2OqNvi">
                            <ref role="37wK5l" node="1H$5hGoppBu" resolve="registerShortcuts" />
                            <node concept="Xjq3P" id="4qk_0lInA2u" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="1KUoCipv$SQ" role="3cqZAp">
                        <node concept="3cpWsn" id="1KUoCipv$SR" role="3cpWs9">
                          <property role="TrG5h" value="panel" />
                          <node concept="2ShNRf" id="1KUoCipv$SS" role="33vP2m">
                            <node concept="1pGfFk" id="1KUoCipv$ST" role="2ShVmc">
                              <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                              <node concept="2ShNRf" id="1KUoCipv$SU" role="37wK5m">
                                <node concept="1pGfFk" id="1KUoCipv$SV" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="1KUoCipv$SW" role="1tU5fm">
                            <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1KUoCipv$SX" role="3cqZAp">
                        <node concept="2OqwBi" id="1KUoCipv$SY" role="3clFbG">
                          <node concept="liA8E" id="1KUoCipv$SZ" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                            <node concept="2OqwBi" id="1KUoCipv$T0" role="37wK5m">
                              <node concept="liA8E" id="1KUoCipv$T1" role="2OqNvi">
                                <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
                              </node>
                              <node concept="37vLTw" id="1KUoCipv$T2" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KUoCipv$SD" resolve="toolbar" />
                              </node>
                            </node>
                            <node concept="10M0yZ" id="1KUoCipv$T3" role="37wK5m">
                              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                              <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1KUoCipv$T4" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KUoCipv$SR" resolve="panel" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1KUoCipv$T5" role="3cqZAp">
                        <node concept="2OqwBi" id="1KUoCipv$T6" role="3clFbG">
                          <node concept="37vLTw" id="1KUoCipv$T7" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KUoCipv$SR" resolve="panel" />
                          </node>
                          <node concept="liA8E" id="1KUoCipv$T8" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                            <node concept="2OqwBi" id="1KUoCipv$T9" role="37wK5m">
                              <node concept="liA8E" id="1KUoCipv$Ta" role="2OqNvi">
                                <ref role="37wK5l" node="3SMO48FPvtW" resolve="getPanel" />
                              </node>
                              <node concept="37vLTw" id="1KUoCipv$Tb" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                              </node>
                            </node>
                            <node concept="10M0yZ" id="1KUoCipv$Tc" role="37wK5m">
                              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                              <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1KUoCipv$Td" role="3cqZAp">
                        <node concept="2OqwBi" id="1KUoCipv$Te" role="3clFbG">
                          <node concept="liA8E" id="1KUoCipv$Tf" role="2OqNvi">
                            <ref role="37wK5l" to="jkm4:~Splitter.setSecondComponent(javax.swing.JComponent)" resolve="setSecondComponent" />
                            <node concept="37vLTw" id="1KUoCipv$Tg" role="37wK5m">
                              <ref role="3cqZAo" node="1KUoCipv$SR" resolve="panel" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1KUoCipv$Th" role="2Oq$k0">
                            <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="1KUoCipv$Ti" role="9aQIa">
                      <node concept="3clFbS" id="1KUoCipv$Tj" role="9aQI4">
                        <node concept="3clFbF" id="1KUoCipv$Tk" role="3cqZAp">
                          <node concept="2OqwBi" id="1KUoCipv$Tl" role="3clFbG">
                            <node concept="37vLTw" id="1KUoCipv$Tm" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwJhl5" resolve="myMergeRootsPane" />
                            </node>
                            <node concept="liA8E" id="1KUoCipv$Tn" role="2OqNvi">
                              <ref role="37wK5l" node="2jv$fqweve7" resolve="setRoodId" />
                              <node concept="37vLTw" id="1KUoCipv$To" role="37wK5m">
                                <ref role="3cqZAo" node="1KUoCipv$RX" resolve="nodeId" />
                              </node>
                              <node concept="37vLTw" id="1KUoCipv$Tp" role="37wK5m">
                                <ref role="3cqZAo" node="3SMO48GPjS_" resolve="session" />
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
      <node concept="37vLTG" id="3SMO48GoPn6" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="2jv$fqxaGIP" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPn8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS48XT" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$yL" role="jymVt">
      <property role="TrG5h" value="setCurrentRoot" />
      <node concept="3cqZAl" id="2jv$fqwD$yM" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwD$yN" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$yO" role="3clF47">
        <node concept="3clFbF" id="haj_nYorKe" role="3cqZAp">
          <node concept="2OqwBi" id="haj_nYoww9" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqxabiK" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
            <node concept="liA8E" id="haj_nYoJOe" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:2alxbCQ_nmZ" resolve="setSelected" />
              <node concept="37vLTw" id="haj_nYEGlB" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwD$zv" resolve="rootId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYohfI" role="3cqZAp">
          <node concept="1rXfSq" id="haj_nYohfH" role="3clFbG">
            <ref role="37wK5l" node="3SMO48GoPmo" resolve="changeCurrentRoot" />
            <node concept="37vLTw" id="haj_nYokKp" role="37wK5m">
              <ref role="3cqZAo" node="2jv$fqwD$zv" resolve="rootId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwD$zv" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="2jv$fqxahwi" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$zx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS4fKz" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$zy" role="jymVt">
      <property role="TrG5h" value="getCurrentRoot" />
      <node concept="3uibUv" id="2jv$fqwD$zz" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm1VV" id="2jv$fqwD$z$" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$z_" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$zA" role="3cqZAp">
          <node concept="37vLTw" id="2jv$fqwD$zB" role="3clFbG">
            <ref role="3cqZAo" node="2jv$fqwD$pd" resolve="myRootId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2jv$fqwD$zC" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwNzBu" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$zD" role="jymVt">
      <property role="TrG5h" value="getApplicableChangesInNonConflictingRoots" />
      <node concept="A3Dl8" id="2jv$fqwD$zE" role="3clF45">
        <node concept="3uibUv" id="2jv$fqwD$zF" role="A3Ik2">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2jv$fqwD$zG" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$zH" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$zI" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwD$zJ" role="3clFbG">
            <node concept="3zZkjj" id="2jv$fqwD$zK" role="2OqNvi">
              <node concept="1bVj0M" id="2jv$fqwD$zL" role="23t8la">
                <node concept="3clFbS" id="2jv$fqwD$zM" role="1bW5cS">
                  <node concept="3clFbF" id="2jv$fqwD$zN" role="3cqZAp">
                    <node concept="3fqX7Q" id="2jv$fqwD$zO" role="3clFbG">
                      <node concept="2ZW3vV" id="2jv$fqwD$zP" role="3fr31v">
                        <node concept="3uibUv" id="2jv$fqwD$zQ" role="2ZW6by">
                          <ref role="3uigEE" to="btf5:5Gi8bfMd_nh" resolve="MetadataChange" />
                        </node>
                        <node concept="37vLTw" id="2jv$fqwD$zR" role="2ZW6bz">
                          <ref role="3cqZAo" node="5W7E4fV0XRi" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XRi" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0XRj" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2jv$fqwD$zU" role="2Oq$k0">
              <node concept="liA8E" id="2jv$fqwD$zV" role="2OqNvi">
                <ref role="37wK5l" to="bmv6:4O82Dpbuv7T" resolve="getApplicableChangesInNonConflictingRoots" />
              </node>
              <node concept="37vLTw" id="2jv$fqwD$zW" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS4oOl" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$zX" role="jymVt">
      <property role="TrG5h" value="getApplicableChangesInMetadata" />
      <node concept="A3Dl8" id="2jv$fqwD$zY" role="3clF45">
        <node concept="3uibUv" id="2jv$fqwD$zZ" role="A3Ik2">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2jv$fqwD$$0" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$$1" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$$2" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwD$$3" role="3clFbG">
            <node concept="37vLTw" id="2jv$fqwD$$4" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
            </node>
            <node concept="liA8E" id="2jv$fqwD$$5" role="2OqNvi">
              <ref role="37wK5l" to="bmv6:4O82Dpbuv7T" resolve="getApplicableChangesInNonConflictingRoots" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwNJaA" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$$6" role="jymVt">
      <property role="TrG5h" value="mergeNonConflictingRoots" />
      <node concept="3cqZAl" id="2jv$fqwD$$7" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwD$$8" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$$9" role="3clF47">
        <node concept="3SKdUt" id="jXlC_h1k4j" role="3cqZAp">
          <node concept="1PaTwC" id="jXlC_h1k4k" role="1aUNEU">
            <node concept="3oM_SD" id="jXlC_h1oU9" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="jXlC_h1oUZ" role="1PaTwD">
              <property role="3oM_SC" value="perhaps," />
            </node>
            <node concept="3oM_SD" id="jXlC_h1oXx" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPCG" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPDy" role="1PaTwD">
              <property role="3oM_SC" value="UndoRunnable" />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPFY" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPH4" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPIa" role="1PaTwD">
              <property role="3oM_SC" value="name," />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPJ0" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPJ1" role="1PaTwD">
              <property role="3oM_SC" value="stick" />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPK7" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="63NfSAAPPK8" role="1PaTwD">
              <property role="3oM_SC" value="writeAction?" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qk_0lIz_3_" role="3cqZAp">
          <node concept="2OqwBi" id="4qk_0lIz_4Q" role="3clFbG">
            <node concept="2OqwBi" id="4tEWdMGJtwt" role="2Oq$k0">
              <node concept="37vLTw" id="4tEWdMGJsXA" role="2Oq$k0">
                <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
              </node>
              <node concept="liA8E" id="4tEWdMGJurj" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="4qk_0lIz_iU" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
              <node concept="1bVj0M" id="4qk_0lIz_K_" role="37wK5m">
                <node concept="3clFbS" id="4qk_0lIz_KA" role="1bW5cS">
                  <node concept="3clFbF" id="2jv$fqwD$$a" role="3cqZAp">
                    <node concept="2OqwBi" id="2jv$fqwD$$b" role="3clFbG">
                      <node concept="liA8E" id="2jv$fqwD$$c" role="2OqNvi">
                        <ref role="37wK5l" to="bmv6:3$YpntjF4oh" resolve="applyChanges" />
                        <node concept="1rXfSq" id="2jv$fqwD$$d" role="37wK5m">
                          <ref role="37wK5l" node="2jv$fqwD$zD" resolve="getApplicableChangesInNonConflictingRoots" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2jv$fqwD$$e" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2jv$fqwD$$f" role="3cqZAp">
                    <node concept="3y3z36" id="2jv$fqwD$$g" role="3clFbw">
                      <node concept="10Nm6u" id="2jv$fqwD$$h" role="3uHU7w" />
                      <node concept="37vLTw" id="2jv$fqwD$$i" role="3uHU7B">
                        <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2jv$fqwD$$j" role="3clFbx">
                      <node concept="3clFbF" id="2jv$fqwD$$k" role="3cqZAp">
                        <node concept="2OqwBi" id="2jv$fqwD$$l" role="3clFbG">
                          <node concept="liA8E" id="2jv$fqwD$$m" role="2OqNvi">
                            <ref role="37wK5l" to="bmv6:3$YpntjF4oh" resolve="applyChanges" />
                            <node concept="1rXfSq" id="2jv$fqwD$$n" role="37wK5m">
                              <ref role="37wK5l" node="2jv$fqwD$zX" resolve="getApplicableChangesInMetadata" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2jv$fqwD$$o" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2jv$fqwD$$p" role="3cqZAp">
                        <node concept="1rXfSq" id="2jv$fqwD$$q" role="3clFbG">
                          <ref role="37wK5l" node="2jv$fqwD$_T" resolve="applyMetadataChanges" />
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
    <node concept="2tJIrI" id="6Agr_nS4yIX" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$$r" role="jymVt">
      <property role="TrG5h" value="hasNonConflictingRoots" />
      <node concept="10P_77" id="2jv$fqwD$$s" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwD$$t" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$$u" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$$v" role="3cqZAp">
          <node concept="22lmx$" id="2jv$fqwD$$w" role="3clFbG">
            <node concept="1Wc70l" id="2jv$fqwD$$x" role="3uHU7w">
              <node concept="2OqwBi" id="2jv$fqwD$$y" role="3uHU7w">
                <node concept="1rXfSq" id="2jv$fqwD$$z" role="2Oq$k0">
                  <ref role="37wK5l" node="2jv$fqwD$zX" resolve="getApplicableChangesInMetadata" />
                </node>
                <node concept="3GX2aA" id="2jv$fqwD$$$" role="2OqNvi" />
              </node>
              <node concept="3y3z36" id="2jv$fqwD$$_" role="3uHU7B">
                <node concept="37vLTw" id="2jv$fqwD$$A" role="3uHU7B">
                  <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                </node>
                <node concept="10Nm6u" id="2jv$fqwD$$B" role="3uHU7w" />
              </node>
            </node>
            <node concept="2OqwBi" id="2jv$fqwD$$C" role="3uHU7B">
              <node concept="1rXfSq" id="2jv$fqwD$$D" role="2Oq$k0">
                <ref role="37wK5l" node="2jv$fqwD$zD" resolve="getApplicableChangesInNonConflictingRoots" />
              </node>
              <node concept="3GX2aA" id="2jv$fqwD$$E" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS4DyC" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$$F" role="jymVt">
      <property role="TrG5h" value="isAcceptYoursTheirsEnabled" />
      <node concept="10P_77" id="2jv$fqwD$$G" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwD$$H" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$$I" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$$J" role="3cqZAp">
          <node concept="22lmx$" id="2jv$fqwD$$K" role="3clFbG">
            <node concept="1Wc70l" id="2jv$fqwD$$L" role="3uHU7w">
              <node concept="1Wc70l" id="2jv$fqwD$$M" role="3uHU7B">
                <node concept="3y3z36" id="2jv$fqwD$$N" role="3uHU7B">
                  <node concept="10Nm6u" id="2jv$fqwD$$O" role="3uHU7w" />
                  <node concept="37vLTw" id="2jv$fqwD$$P" role="3uHU7B">
                    <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                  </node>
                </node>
                <node concept="1rXfSq" id="2jv$fqwD$$Q" role="3uHU7w">
                  <ref role="37wK5l" node="2jv$fqwD$Ad" resolve="isMetadataSelected" />
                </node>
              </node>
              <node concept="2OqwBi" id="2jv$fqwD$$R" role="3uHU7w">
                <node concept="3GX2aA" id="2jv$fqwD$$S" role="2OqNvi" />
                <node concept="2OqwBi" id="2jv$fqwD$$T" role="2Oq$k0">
                  <node concept="2OqwBi" id="2jv$fqwD$$U" role="2Oq$k0">
                    <node concept="37vLTw" id="2jv$fqwD$$V" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                    </node>
                    <node concept="liA8E" id="2jv$fqwD$$W" role="2OqNvi">
                      <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2jv$fqwD$$X" role="2OqNvi">
                    <node concept="1bVj0M" id="2jv$fqwD$$Y" role="23t8la">
                      <node concept="3clFbS" id="2jv$fqwD$$Z" role="1bW5cS">
                        <node concept="3clFbF" id="2jv$fqwD$_0" role="3cqZAp">
                          <node concept="3fqX7Q" id="2jv$fqwD$_1" role="3clFbG">
                            <node concept="2OqwBi" id="2jv$fqwD$_2" role="3fr31v">
                              <node concept="liA8E" id="2jv$fqwD$_3" role="2OqNvi">
                                <ref role="37wK5l" to="bmv6:3$YpntjF4o1" resolve="isChangeResolved" />
                                <node concept="37vLTw" id="2jv$fqwD$_4" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XRk" resolve="ch" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2jv$fqwD$_5" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XRk" role="1bW2Oz">
                        <property role="TrG5h" value="ch" />
                        <node concept="2jxLKc" id="5W7E4fV0XRl" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2jv$fqwD$_8" role="3uHU7B">
              <node concept="3GX2aA" id="2jv$fqwD$_9" role="2OqNvi" />
              <node concept="2OqwBi" id="2jv$fqwD$_a" role="2Oq$k0">
                <node concept="3zZkjj" id="2jv$fqwD$_b" role="2OqNvi">
                  <node concept="1bVj0M" id="2jv$fqwD$_c" role="23t8la">
                    <node concept="3clFbS" id="2jv$fqwD$_d" role="1bW5cS">
                      <node concept="3clFbF" id="2jv$fqwD$_e" role="3cqZAp">
                        <node concept="3fqX7Q" id="2jv$fqwD$_f" role="3clFbG">
                          <node concept="2OqwBi" id="2jv$fqwD$_g" role="3fr31v">
                            <node concept="liA8E" id="2jv$fqwD$_h" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4o1" resolve="isChangeResolved" />
                              <node concept="37vLTw" id="2jv$fqwD$_i" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XRm" resolve="ch" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2jv$fqwD$_j" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XRm" role="1bW2Oz">
                      <property role="TrG5h" value="ch" />
                      <node concept="2jxLKc" id="5W7E4fV0XRn" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="2jv$fqwD$_m" role="2Oq$k0">
                  <ref role="37wK5l" node="2jv$fqwD$A_" resolve="getModelChangesForSelection" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS4KmN" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$_n" role="jymVt">
      <property role="TrG5h" value="acceptVersionForSelectedRoots" />
      <node concept="37vLTG" id="2jv$fqwD$_o" role="3clF46">
        <property role="TrG5h" value="mine" />
        <node concept="10P_77" id="2jv$fqwD$_p" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2jv$fqwD$_q" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwD$_r" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$_s" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$_t" role="3cqZAp">
          <node concept="1rXfSq" id="2jv$fqwD$_u" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwD$BH" resolve="applyUnresolvedChanges" />
            <node concept="37vLTw" id="2jv$fqwD$_v" role="37wK5m">
              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
            </node>
            <node concept="1rXfSq" id="2jv$fqwD$_w" role="37wK5m">
              <ref role="37wK5l" node="2jv$fqwD$A_" resolve="getModelChangesForSelection" />
            </node>
            <node concept="37vLTw" id="2jv$fqwD$_x" role="37wK5m">
              <ref role="3cqZAo" node="2jv$fqwD$_o" resolve="mine" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jv$fqwD$_y" role="3cqZAp">
          <node concept="1Wc70l" id="2jv$fqwD$_z" role="3clFbw">
            <node concept="3y3z36" id="2jv$fqwD$_$" role="3uHU7B">
              <node concept="10Nm6u" id="2jv$fqwD$__" role="3uHU7w" />
              <node concept="37vLTw" id="2jv$fqwD$_A" role="3uHU7B">
                <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
              </node>
            </node>
            <node concept="1rXfSq" id="2jv$fqwD$_B" role="3uHU7w">
              <ref role="37wK5l" node="2jv$fqwD$Ad" resolve="isMetadataSelected" />
            </node>
          </node>
          <node concept="3clFbS" id="2jv$fqwD$_C" role="3clFbx">
            <node concept="3clFbF" id="2jv$fqwD$_D" role="3cqZAp">
              <node concept="1rXfSq" id="2jv$fqwD$_E" role="3clFbG">
                <ref role="37wK5l" node="2jv$fqwD$BH" resolve="applyUnresolvedChanges" />
                <node concept="37vLTw" id="2jv$fqwD$_F" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                </node>
                <node concept="2OqwBi" id="2jv$fqwD$_G" role="37wK5m">
                  <node concept="liA8E" id="2jv$fqwD$_H" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                  </node>
                  <node concept="37vLTw" id="2jv$fqwD$_I" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                  </node>
                </node>
                <node concept="37vLTw" id="2jv$fqwD$_J" role="37wK5m">
                  <ref role="3cqZAo" node="2jv$fqwD$_o" resolve="mine" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2jv$fqwD$_K" role="3cqZAp">
              <node concept="1rXfSq" id="2jv$fqwD$_L" role="3clFbG">
                <ref role="37wK5l" node="2jv$fqwD$_T" resolve="applyMetadataChanges" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4puABOf5W23" role="3cqZAp">
          <node concept="1PaTwC" id="4puABOf5W24" role="1aUNEU">
            <node concept="3oM_SD" id="4puABOf5W25" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4puABOf60AS" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="4puABOf63eK" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4puABOf63eL" role="1PaTwD">
              <property role="3oM_SC" value="invoked" />
            </node>
            <node concept="3oM_SD" id="4puABOf660u" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="4puABOf660v" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="4puABOf660w" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="4puABOf660x" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="4puABOf67Cm" role="1PaTwD">
              <property role="3oM_SC" value="runs" />
            </node>
            <node concept="3oM_SD" id="4puABOf67Nv" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4puABOf67Nw" role="1PaTwD">
              <property role="3oM_SC" value="EDT," />
            </node>
            <node concept="3oM_SD" id="4puABOf67Nx" role="1PaTwD">
              <property role="3oM_SC" value="hence" />
            </node>
            <node concept="3oM_SD" id="4puABOf67Ny" role="1PaTwD">
              <property role="3oM_SC" value="'now'" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCiqb6l3" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCiqb6l4" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuGA4" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
            <node concept="liA8E" id="1KUoCiqb6l6" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaON" resolve="rebuildNow" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS4Sz4" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$_T" role="jymVt">
      <property role="TrG5h" value="applyMetadataChanges" />
      <node concept="3Tm6S6" id="2jv$fqwD$_U" role="1B3o_S" />
      <node concept="3cqZAl" id="2jv$fqwD$_V" role="3clF45" />
      <node concept="3clFbS" id="2jv$fqwD$_W" role="3clF47">
        <node concept="3clFbF" id="1KUoCiqb73A" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCiqb73B" role="3clFbG">
            <node concept="2OqwBi" id="4tEWdMGJw3o" role="2Oq$k0">
              <node concept="37vLTw" id="4tEWdMGJvv$" role="2Oq$k0">
                <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
              </node>
              <node concept="liA8E" id="4tEWdMGJwhh" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1KUoCiqb73D" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
              <node concept="1bVj0M" id="1KUoCiqb73E" role="37wK5m">
                <node concept="3clFbS" id="1KUoCiqb73F" role="1bW5cS">
                  <node concept="3clFbJ" id="1KUoCiqb73G" role="3cqZAp">
                    <node concept="3y3z36" id="1KUoCiqb73H" role="3clFbw">
                      <node concept="37vLTw" id="1KUoCiqb73I" role="3uHU7B">
                        <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                      </node>
                      <node concept="10Nm6u" id="1KUoCiqb73J" role="3uHU7w" />
                    </node>
                    <node concept="3clFbS" id="1KUoCiqb73L" role="3clFbx">
                      <node concept="3clFbF" id="1KUoCiqb73M" role="3cqZAp">
                        <node concept="2YIFZM" id="1KUoCiqb73N" role="3clFbG">
                          <ref role="37wK5l" to="p37l:6fx930y84y8" resolve="applyMetadataChanges" />
                          <ref role="1Pybhc" to="p37l:444ZSQ06W$a" resolve="MetadataUtil" />
                          <node concept="2OqwBi" id="1KUoCiqb73O" role="37wK5m">
                            <node concept="37vLTw" id="1KUoCiqb73P" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="1KUoCiqb73Q" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KUoCiqb73R" role="37wK5m">
                            <node concept="37vLTw" id="1KUoCiqb73S" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                            </node>
                            <node concept="liA8E" id="1KUoCiqb73T" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="1e1T1BEFPQz" role="3cqZAp">
                        <node concept="1PaTwC" id="1e1T1BEFPQ$" role="1aUNEU">
                          <node concept="3oM_SD" id="1e1T1BEFPQA" role="1PaTwD">
                            <property role="3oM_SC" value="hack" />
                          </node>
                          <node concept="3oM_SD" id="1e1T1BEFQ0H" role="1PaTwD">
                            <property role="3oM_SC" value="to" />
                          </node>
                          <node concept="3oM_SD" id="1e1T1BEFQ0K" role="1PaTwD">
                            <property role="3oM_SC" value="fix" />
                          </node>
                          <node concept="3oM_SD" id="1e1T1BEFQcd" role="1PaTwD">
                            <property role="3oM_SC" value="language" />
                          </node>
                          <node concept="3oM_SD" id="1e1T1BEFQh9" role="1PaTwD">
                            <property role="3oM_SC" value="versions" />
                          </node>
                          <node concept="3oM_SD" id="1e1T1BEFQyr" role="1PaTwD">
                            <property role="3oM_SC" value="in" />
                          </node>
                          <node concept="3oM_SD" id="1e1T1BEFQzu" role="1PaTwD">
                            <property role="3oM_SC" value="merged" />
                          </node>
                          <node concept="3oM_SD" id="1e1T1BEFQG0" role="1PaTwD">
                            <property role="3oM_SC" value="models" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1e1T1BEzEzk" role="3cqZAp">
                        <node concept="2YIFZM" id="1e1T1BEzFbh" role="3clFbG">
                          <ref role="37wK5l" to="p37l:1e1T1BEyzs0" resolve="fixLanguageImportVersionsAfterMerge" />
                          <ref role="1Pybhc" to="p37l:444ZSQ06W$a" resolve="MetadataUtil" />
                          <node concept="2OqwBi" id="1e1T1BEzH4w" role="37wK5m">
                            <node concept="37vLTw" id="1e1T1BEzG2a" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="1e1T1BEzHEZ" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="30J9Cm_fpO3" role="37wK5m">
                            <node concept="37vLTw" id="30J9Cm_fpO4" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="30J9Cm_fpO5" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="30J9Cm_fBHg" role="37wK5m">
                            <node concept="37vLTw" id="30J9Cm_fBHh" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="30J9Cm_fBHi" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
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
    <node concept="2tJIrI" id="6Agr_nS50j7" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$Ad" role="jymVt">
      <property role="TrG5h" value="isMetadataSelected" />
      <node concept="3Tm6S6" id="2jv$fqwD$Ae" role="1B3o_S" />
      <node concept="10P_77" id="2jv$fqwD$Af" role="3clF45" />
      <node concept="3clFbS" id="2jv$fqwD$Ag" role="3clF47">
        <node concept="3clFbF" id="2jv$fqwD$Ah" role="3cqZAp">
          <node concept="22lmx$" id="2jv$fqwD$Ai" role="3clFbG">
            <node concept="3clFbC" id="2jv$fqwD$Aj" role="3uHU7B">
              <node concept="2OqwBi" id="2jv$fqwD$Ak" role="3uHU7B">
                <node concept="2OqwBi" id="2jv$fqwD$Al" role="2Oq$k0">
                  <node concept="liA8E" id="2jv$fqwD$Am" role="2OqNvi">
                    <ref role="37wK5l" to="2sud:~Tree.getSelectedNodes(java.lang.Class,com.intellij.ui.treeStructure.Tree$NodeFilter)" resolve="getSelectedNodes" />
                    <node concept="3VsKOn" id="2jv$fqwD$An" role="37wK5m">
                      <ref role="3VsUkX" to="hdhb:42hl10VHaLY" resolve="DiffModelTree.MetadataTreeNode" />
                    </node>
                    <node concept="10Nm6u" id="2jv$fqwD$Ao" role="37wK5m" />
                  </node>
                  <node concept="37vLTw" id="2jv$fqwD$Ap" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
                  </node>
                </node>
                <node concept="1Rwk04" id="2jv$fqwD$Aq" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="2jv$fqwD$Ar" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="3clFbC" id="2jv$fqwD$As" role="3uHU7w">
              <node concept="3cmrfG" id="2jv$fqwD$At" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="2jv$fqwD$Au" role="3uHU7B">
                <node concept="2OqwBi" id="2jv$fqwD$Av" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeuO3H" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwD$Ax" role="2OqNvi">
                    <ref role="37wK5l" to="2sud:~Tree.getSelectedNodes(java.lang.Class,com.intellij.ui.treeStructure.Tree$NodeFilter)" resolve="getSelectedNodes" />
                    <node concept="3VsKOn" id="2jv$fqwD$Ay" role="37wK5m">
                      <ref role="3VsUkX" to="hdhb:42hl10VHaIj" resolve="DiffModelTree.ModelTreeNode" />
                    </node>
                    <node concept="10Nm6u" id="2jv$fqwD$Az" role="37wK5m" />
                  </node>
                </node>
                <node concept="1Rwk04" id="2jv$fqwD$A$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Agr_nS59fo" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$A_" role="jymVt">
      <property role="TrG5h" value="getModelChangesForSelection" />
      <node concept="A3Dl8" id="2jv$fqwD$AA" role="3clF45">
        <node concept="3uibUv" id="2jv$fqwD$AB" role="A3Ik2">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2jv$fqwD$AC" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$AD" role="3clF47">
        <node concept="3clFbJ" id="2jv$fqwD$AE" role="3cqZAp">
          <node concept="3clFbS" id="2jv$fqwD$AF" role="3clFbx">
            <node concept="3cpWs6" id="2jv$fqwD$AG" role="3cqZAp">
              <node concept="2OqwBi" id="2jv$fqwD$AH" role="3cqZAk">
                <node concept="3zZkjj" id="2jv$fqwD$AI" role="2OqNvi">
                  <node concept="1bVj0M" id="2jv$fqwD$AJ" role="23t8la">
                    <node concept="3clFbS" id="2jv$fqwD$AK" role="1bW5cS">
                      <node concept="3clFbF" id="2jv$fqwD$AL" role="3cqZAp">
                        <node concept="3fqX7Q" id="2jv$fqwD$AM" role="3clFbG">
                          <node concept="2ZW3vV" id="2jv$fqwD$AN" role="3fr31v">
                            <node concept="3uibUv" id="2jv$fqwD$AO" role="2ZW6by">
                              <ref role="3uigEE" to="btf5:5Gi8bfMd_nh" resolve="MetadataChange" />
                            </node>
                            <node concept="37vLTw" id="2jv$fqwD$AP" role="2ZW6bz">
                              <ref role="3cqZAo" node="5W7E4fV0XRo" resolve="ch" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XRo" role="1bW2Oz">
                      <property role="TrG5h" value="ch" />
                      <node concept="2jxLKc" id="5W7E4fV0XRp" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2jv$fqwD$AS" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeuQ2V" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwD$AU" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2jv$fqwD$AV" role="3clFbw">
            <node concept="3cmrfG" id="2jv$fqwD$AW" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2jv$fqwD$AX" role="3uHU7B">
              <node concept="2OqwBi" id="2jv$fqwD$AY" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxeugcI" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
                </node>
                <node concept="liA8E" id="2jv$fqwD$B0" role="2OqNvi">
                  <ref role="37wK5l" to="2sud:~Tree.getSelectedNodes(java.lang.Class,com.intellij.ui.treeStructure.Tree$NodeFilter)" resolve="getSelectedNodes" />
                  <node concept="3VsKOn" id="2jv$fqwD$B1" role="37wK5m">
                    <ref role="3VsUkX" to="hdhb:42hl10VHaIj" resolve="DiffModelTree.ModelTreeNode" />
                  </node>
                  <node concept="10Nm6u" id="2jv$fqwD$B2" role="37wK5m" />
                </node>
              </node>
              <node concept="1Rwk04" id="2jv$fqwD$B3" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="2jv$fqwD$B4" role="9aQIa">
            <node concept="3clFbS" id="2jv$fqwD$B5" role="9aQI4">
              <node concept="3cpWs6" id="2jv$fqwD$B6" role="3cqZAp">
                <node concept="2OqwBi" id="2jv$fqwD$B7" role="3cqZAk">
                  <node concept="2OqwBi" id="2jv$fqwD$B8" role="2Oq$k0">
                    <node concept="3zZkjj" id="2jv$fqwD$B9" role="2OqNvi">
                      <node concept="1bVj0M" id="2jv$fqwD$Ba" role="23t8la">
                        <node concept="3clFbS" id="2jv$fqwD$Bb" role="1bW5cS">
                          <node concept="3clFbF" id="2jv$fqwD$Bc" role="3cqZAp">
                            <node concept="3y3z36" id="2jv$fqwD$Bd" role="3clFbG">
                              <node concept="10Nm6u" id="2jv$fqwD$Be" role="3uHU7w" />
                              <node concept="37vLTw" id="2jv$fqwD$Bf" role="3uHU7B">
                                <ref role="3cqZAo" node="5W7E4fV0XRq" resolve="root" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XRq" role="1bW2Oz">
                          <property role="TrG5h" value="root" />
                          <node concept="2jxLKc" id="5W7E4fV0XRr" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2jv$fqwD$Bi" role="2Oq$k0">
                      <node concept="2OqwBi" id="2jv$fqwD$Bj" role="2Oq$k0">
                        <node concept="2OqwBi" id="2jv$fqwD$Bk" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxeuVV2" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
                          </node>
                          <node concept="liA8E" id="2jv$fqwD$Bm" role="2OqNvi">
                            <ref role="37wK5l" to="2sud:~Tree.getSelectedNodes(java.lang.Class,com.intellij.ui.treeStructure.Tree$NodeFilter)" resolve="getSelectedNodes" />
                            <node concept="3VsKOn" id="2jv$fqwD$Bn" role="37wK5m">
                              <ref role="3VsUkX" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
                            </node>
                            <node concept="10Nm6u" id="2jv$fqwD$Bo" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="39bAoz" id="2jv$fqwD$Bp" role="2OqNvi" />
                      </node>
                      <node concept="3$u5V9" id="2jv$fqwD$Bq" role="2OqNvi">
                        <node concept="1bVj0M" id="2jv$fqwD$Br" role="23t8la">
                          <node concept="3clFbS" id="2jv$fqwD$Bs" role="1bW5cS">
                            <node concept="3clFbF" id="2jv$fqwD$Bt" role="3cqZAp">
                              <node concept="2OqwBi" id="2jv$fqwD$Bu" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxgm6fp" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0XRs" resolve="rtn" />
                                </node>
                                <node concept="liA8E" id="2jv$fqwD$Bw" role="2OqNvi">
                                  <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XRs" role="1bW2Oz">
                            <property role="TrG5h" value="rtn" />
                            <node concept="2jxLKc" id="5W7E4fV0XRt" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3goQfb" id="2jv$fqwD$Bz" role="2OqNvi">
                    <node concept="1bVj0M" id="2jv$fqwD$B$" role="23t8la">
                      <node concept="3clFbS" id="2jv$fqwD$B_" role="1bW5cS">
                        <node concept="3clFbF" id="2jv$fqwD$BA" role="3cqZAp">
                          <node concept="2OqwBi" id="2jv$fqwD$BB" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuVYq" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                            </node>
                            <node concept="liA8E" id="2jv$fqwD$BD" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:3$YpntjF4nv" resolve="getChangesForRoot" />
                              <node concept="37vLTw" id="2BHiRxgm9r7" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XRu" resolve="root" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XRu" role="1bW2Oz">
                        <property role="TrG5h" value="root" />
                        <node concept="2jxLKc" id="5W7E4fV0XRv" role="1tU5fm" />
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
    <node concept="2tJIrI" id="6Agr_nS5h83" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$BH" role="jymVt">
      <property role="TrG5h" value="applyUnresolvedChanges" />
      <node concept="3Tm6S6" id="2jv$fqwD$BI" role="1B3o_S" />
      <node concept="3cqZAl" id="2jv$fqwD$BJ" role="3clF45" />
      <node concept="3clFbS" id="2jv$fqwD$BK" role="3clF47">
        <node concept="3cpWs8" id="2jv$fqwD$BL" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwD$BM" role="3cpWs9">
            <property role="TrG5h" value="changesToApply" />
            <node concept="_YKpA" id="2jv$fqwD$BN" role="1tU5fm">
              <node concept="3uibUv" id="2jv$fqwD$BO" role="_ZDj9">
                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
              </node>
            </node>
            <node concept="2ShNRf" id="2jv$fqwD$BP" role="33vP2m">
              <node concept="Tc6Ow" id="2jv$fqwD$BQ" role="2ShVmc">
                <node concept="3uibUv" id="2jv$fqwD$BR" role="HW$YZ">
                  <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2jv$fqwD$BS" role="3cqZAp">
          <node concept="3cpWsn" id="2jv$fqwD$BT" role="3cpWs9">
            <property role="TrG5h" value="changesToExclude" />
            <node concept="_YKpA" id="2jv$fqwD$BU" role="1tU5fm">
              <node concept="3uibUv" id="2jv$fqwD$BV" role="_ZDj9">
                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
              </node>
            </node>
            <node concept="2ShNRf" id="2jv$fqwD$BW" role="33vP2m">
              <node concept="Tc6Ow" id="2jv$fqwD$BX" role="2ShVmc">
                <node concept="3uibUv" id="2jv$fqwD$BY" role="HW$YZ">
                  <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2jv$fqwD$BZ" role="3cqZAp">
          <node concept="2OqwBi" id="2jv$fqwD$C0" role="2GsD0m">
            <node concept="3zZkjj" id="2jv$fqwD$C1" role="2OqNvi">
              <node concept="1bVj0M" id="2jv$fqwD$C2" role="23t8la">
                <node concept="3clFbS" id="2jv$fqwD$C3" role="1bW5cS">
                  <node concept="3clFbF" id="2jv$fqwD$C4" role="3cqZAp">
                    <node concept="3fqX7Q" id="2jv$fqwD$C5" role="3clFbG">
                      <node concept="2OqwBi" id="2jv$fqwD$C6" role="3fr31v">
                        <node concept="liA8E" id="2jv$fqwD$C7" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:3$YpntjF4o1" resolve="isChangeResolved" />
                          <node concept="37vLTw" id="2jv$fqwD$C8" role="37wK5m">
                            <ref role="3cqZAo" node="5W7E4fV0XRw" resolve="ch" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2jv$fqwD$C9" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jv$fqwD$CK" resolve="session" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XRw" role="1bW2Oz">
                  <property role="TrG5h" value="ch" />
                  <node concept="2jxLKc" id="5W7E4fV0XRx" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2jv$fqwD$Cc" role="2Oq$k0">
              <ref role="3cqZAo" node="2jv$fqwD$CM" resolve="changes" />
            </node>
          </node>
          <node concept="2GrKxI" id="2jv$fqwD$Cd" role="2Gsz3X">
            <property role="TrG5h" value="change" />
          </node>
          <node concept="3clFbS" id="2jv$fqwD$Ce" role="2LFqv$">
            <node concept="3clFbJ" id="2jv$fqwD$Cf" role="3cqZAp">
              <node concept="3clFbC" id="2jv$fqwD$Cg" role="3clFbw">
                <node concept="2OqwBi" id="2jv$fqwD$Ch" role="3uHU7w">
                  <node concept="37vLTw" id="2jv$fqwD$Ci" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$CK" resolve="session" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwD$Cj" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4t9" resolve="isMyChange" />
                    <node concept="2GrUjf" id="2jv$fqwD$Ck" role="37wK5m">
                      <ref role="2Gs0qQ" node="2jv$fqwD$Cd" resolve="change" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxgm$8T" role="3uHU7B">
                  <ref role="3cqZAo" node="2jv$fqwD$CP" resolve="mine" />
                </node>
              </node>
              <node concept="3clFbS" id="2jv$fqwD$Cm" role="3clFbx">
                <node concept="3clFbF" id="2jv$fqwD$Cn" role="3cqZAp">
                  <node concept="2OqwBi" id="2jv$fqwD$Co" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTA3S" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$BM" resolve="changesToApply" />
                    </node>
                    <node concept="TSZUe" id="2jv$fqwD$Cq" role="2OqNvi">
                      <node concept="2GrUjf" id="2jv$fqwD$Cr" role="25WWJ7">
                        <ref role="2Gs0qQ" node="2jv$fqwD$Cd" resolve="change" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2jv$fqwD$Cs" role="9aQIa">
                <node concept="3clFbS" id="2jv$fqwD$Ct" role="9aQI4">
                  <node concept="3clFbF" id="2jv$fqwD$Cu" role="3cqZAp">
                    <node concept="2OqwBi" id="2jv$fqwD$Cv" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTw0y" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jv$fqwD$BT" resolve="changesToExclude" />
                      </node>
                      <node concept="TSZUe" id="2jv$fqwD$Cx" role="2OqNvi">
                        <node concept="2GrUjf" id="2jv$fqwD$Cy" role="25WWJ7">
                          <ref role="2Gs0qQ" node="2jv$fqwD$Cd" resolve="change" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCiqb6YF" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCiqb6YG" role="3clFbG">
            <node concept="liA8E" id="1KUoCiqb6YI" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
              <node concept="1bVj0M" id="1KUoCiqb6YJ" role="37wK5m">
                <node concept="3clFbS" id="1KUoCiqb6YK" role="1bW5cS">
                  <node concept="3clFbF" id="1KUoCiqb6YL" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCiqb6YM" role="3clFbG">
                      <node concept="37vLTw" id="1KUoCiqb6YN" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jv$fqwD$CK" resolve="session" />
                      </node>
                      <node concept="liA8E" id="1KUoCiqb6YO" role="2OqNvi">
                        <ref role="37wK5l" to="bmv6:3$YpntjF4oh" resolve="applyChanges" />
                        <node concept="37vLTw" id="3GM_nagT$gG" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwD$BM" resolve="changesToApply" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1KUoCiqb6YR" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCiqb6YS" role="3clFbG">
                      <node concept="37vLTw" id="1KUoCiqb6YT" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jv$fqwD$CK" resolve="session" />
                      </node>
                      <node concept="liA8E" id="1KUoCiqb6YU" role="2OqNvi">
                        <ref role="37wK5l" to="bmv6:3$YpntjF4ow" resolve="excludeChanges" />
                        <node concept="37vLTw" id="3GM_nagTAlc" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwD$BT" resolve="changesToExclude" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4tEWdMGJB4B" role="2Oq$k0">
              <node concept="37vLTw" id="4tEWdMGK_ZG" role="2Oq$k0">
                <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
              </node>
              <node concept="liA8E" id="4tEWdMGJB4D" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwD$CK" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="2jv$fqwD$CL" role="1tU5fm">
          <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwD$CM" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="A3Dl8" id="2jv$fqwD$CN" role="1tU5fm">
          <node concept="3uibUv" id="2jv$fqwD$CO" role="A3Ik2">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2jv$fqwD$CP" role="3clF46">
        <property role="TrG5h" value="mine" />
        <node concept="10P_77" id="2jv$fqwD$CQ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwNPTn" role="jymVt" />
    <node concept="3clFb_" id="2jv$fqwD$Dk" role="jymVt">
      <property role="TrG5h" value="resetState" />
      <node concept="3cqZAl" id="2jv$fqwD$Dl" role="3clF45" />
      <node concept="3Tm1VV" id="2jv$fqwD$Dm" role="1B3o_S" />
      <node concept="3clFbS" id="2jv$fqwD$Dn" role="3clF47">
        <node concept="3clFbF" id="jXlC_gVJDL" role="3cqZAp">
          <node concept="2OqwBi" id="jXlC_gW28k" role="3clFbG">
            <node concept="2OqwBi" id="jXlC_gVPWo" role="2Oq$k0">
              <node concept="37vLTw" id="jXlC_gVJDJ" role="2Oq$k0">
                <ref role="3cqZAo" node="4tEWdMGIY0C" resolve="myProjectRepository" />
              </node>
              <node concept="liA8E" id="jXlC_gVW_S" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="jXlC_gW7f4" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
              <node concept="1bVj0M" id="jXlC_gWlJ3" role="37wK5m">
                <node concept="3clFbS" id="jXlC_gWlJ6" role="1bW5cS">
                  <node concept="9aQIb" id="jXlC_gWzGK" role="3cqZAp">
                    <node concept="3clFbS" id="jXlC_gWzGL" role="9aQI4">
                      <node concept="3clFbF" id="2jv$fqwD$Do" role="3cqZAp">
                        <node concept="2OqwBi" id="2jv$fqwD$Dp" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxeuSnn" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                          </node>
                          <node concept="liA8E" id="2jv$fqwD$Dr" role="2OqNvi">
                            <ref role="37wK5l" to="bmv6:2KMWrOXq2tx" resolve="restoreFullState" />
                            <node concept="37vLTw" id="2jv$fqwD$Ds" role="37wK5m">
                              <ref role="3cqZAo" node="2jv$fqwD$oP" resolve="myInitialState" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2jv$fqwD$Dt" role="3cqZAp">
                        <node concept="3y3z36" id="2jv$fqwD$Du" role="3clFbw">
                          <node concept="10Nm6u" id="2jv$fqwD$Dv" role="3uHU7w" />
                          <node concept="37vLTw" id="2jv$fqwD$Dw" role="3uHU7B">
                            <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2jv$fqwD$Dx" role="3clFbx">
                          <node concept="3clFbF" id="2jv$fqwD$Dy" role="3cqZAp">
                            <node concept="2OqwBi" id="2jv$fqwD$Dz" role="3clFbG">
                              <node concept="liA8E" id="2jv$fqwD$D$" role="2OqNvi">
                                <ref role="37wK5l" to="bmv6:2KMWrOXq2tx" resolve="restoreFullState" />
                                <node concept="37vLTw" id="2jv$fqwD$D_" role="37wK5m">
                                  <ref role="3cqZAo" node="2jv$fqwD$oS" resolve="myMetadataInitialState" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2jv$fqwD$DA" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
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
        <node concept="3clFbF" id="2jv$fqwD$DB" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9mS" role="3clFbG">
            <ref role="37wK5l" node="2jv$fqwD$wC" resolve="rebuildLater" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwH6Yo" role="jymVt" />
    <node concept="2YIFZL" id="2jv$fqwD$DL" role="jymVt">
      <property role="TrG5h" value="generateUnresolvedChangesText" />
      <node concept="37vLTG" id="2jv$fqwD$DM" role="3clF46">
        <property role="TrG5h" value="totalChanges" />
        <node concept="10Oyi0" id="2jv$fqwD$DN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2jv$fqwD$DO" role="3clF46">
        <property role="TrG5h" value="conflictingChanges" />
        <node concept="10Oyi0" id="2jv$fqwD$DP" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="2jv$fqwD$DQ" role="3clF45" />
      <node concept="3clFbS" id="2jv$fqwD$DR" role="3clF47">
        <node concept="3clFbJ" id="2jv$fqwD$DS" role="3cqZAp">
          <node concept="3clFbS" id="2jv$fqwD$DT" role="3clFbx">
            <node concept="3cpWs8" id="2jv$fqwD$DU" role="3cqZAp">
              <node concept="3cpWsn" id="2jv$fqwD$DV" role="3cpWs9">
                <property role="TrG5h" value="text" />
                <node concept="17QB3L" id="2jv$fqwD$DW" role="1tU5fm" />
                <node concept="2YIFZM" id="2jv$fqwD$DX" role="33vP2m">
                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                  <ref role="37wK5l" to="18ew:~NameUtil.formatNumericalString(int,java.lang.String)" resolve="formatNumericalString" />
                  <node concept="37vLTw" id="2BHiRxgm60f" role="37wK5m">
                    <ref role="3cqZAo" node="2jv$fqwD$DO" resolve="conflictingChanges" />
                  </node>
                  <node concept="Xl_RD" id="2jv$fqwD$DZ" role="37wK5m">
                    <property role="Xl_RC" value="conficting change" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2jv$fqwD$E0" role="3cqZAp">
              <node concept="3clFbS" id="2jv$fqwD$E1" role="3clFbx">
                <node concept="3cpWs6" id="2jv$fqwD$E2" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTyqJ" role="3cqZAk">
                    <ref role="3cqZAo" node="2jv$fqwD$DV" resolve="text" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="2jv$fqwD$E4" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxgmFj_" role="3uHU7w">
                  <ref role="3cqZAo" node="2jv$fqwD$DO" resolve="conflictingChanges" />
                </node>
                <node concept="37vLTw" id="2BHiRxgkWkj" role="3uHU7B">
                  <ref role="3cqZAo" node="2jv$fqwD$DM" resolve="totalChanges" />
                </node>
              </node>
              <node concept="9aQIb" id="2jv$fqwD$E7" role="9aQIa">
                <node concept="3clFbS" id="2jv$fqwD$E8" role="9aQI4">
                  <node concept="3cpWs6" id="2jv$fqwD$E9" role="3cqZAp">
                    <node concept="3cpWs3" id="2jv$fqwD$Ea" role="3cqZAk">
                      <node concept="Xl_RD" id="2jv$fqwD$Eb" role="3uHU7w">
                        <property role="Xl_RC" value=" total" />
                      </node>
                      <node concept="3cpWs3" id="2jv$fqwD$Ec" role="3uHU7B">
                        <node concept="37vLTw" id="2BHiRxgm66A" role="3uHU7w">
                          <ref role="3cqZAo" node="2jv$fqwD$DM" resolve="totalChanges" />
                        </node>
                        <node concept="3cpWs3" id="2jv$fqwD$Ee" role="3uHU7B">
                          <node concept="37vLTw" id="3GM_nagT$5g" role="3uHU7B">
                            <ref role="3cqZAo" node="2jv$fqwD$DV" resolve="text" />
                          </node>
                          <node concept="Xl_RD" id="2jv$fqwD$Eg" role="3uHU7w">
                            <property role="Xl_RC" value=" of " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2jv$fqwD$Eh" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgkZ0R" role="3uHU7B">
              <ref role="3cqZAo" node="2jv$fqwD$DO" resolve="conflictingChanges" />
            </node>
            <node concept="3cmrfG" id="2jv$fqwD$Ej" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="9aQIb" id="2jv$fqwD$Ek" role="9aQIa">
            <node concept="3clFbS" id="2jv$fqwD$El" role="9aQI4">
              <node concept="3clFbJ" id="2jv$fqwD$Em" role="3cqZAp">
                <node concept="3clFbC" id="2jv$fqwD$En" role="3clFbw">
                  <node concept="3cmrfG" id="2jv$fqwD$Eo" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgmCKY" role="3uHU7B">
                    <ref role="3cqZAo" node="2jv$fqwD$DM" resolve="totalChanges" />
                  </node>
                </node>
                <node concept="3clFbS" id="2jv$fqwD$Eq" role="3clFbx">
                  <node concept="3cpWs6" id="2jv$fqwD$Er" role="3cqZAp">
                    <node concept="Xl_RD" id="2jv$fqwD$Es" role="3cqZAk">
                      <property role="Xl_RC" value="All changes resolved" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="2jv$fqwD$Et" role="9aQIa">
                  <node concept="3clFbS" id="2jv$fqwD$Eu" role="9aQI4">
                    <node concept="3cpWs6" id="2jv$fqwD$Ev" role="3cqZAp">
                      <node concept="2YIFZM" id="2jv$fqwD$Ew" role="3cqZAk">
                        <ref role="37wK5l" to="18ew:~NameUtil.formatNumericalString(int,java.lang.String)" resolve="formatNumericalString" />
                        <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                        <node concept="37vLTw" id="2BHiRxglyGF" role="37wK5m">
                          <ref role="3cqZAo" node="2jv$fqwD$DM" resolve="totalChanges" />
                        </node>
                        <node concept="Xl_RD" id="2jv$fqwD$Ey" role="37wK5m">
                          <property role="Xl_RC" value=" change" />
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
    <node concept="2tJIrI" id="2jv$fqwPpwL" role="jymVt" />
    <node concept="312cEu" id="2jv$fqwD$Ez" role="jymVt">
      <property role="TrG5h" value="MyGoToNeighbourRootActions" />
      <property role="2bfB8j" value="true" />
      <node concept="3uibUv" id="2jv$fqwD$E$" role="1zkMxy">
        <ref role="3uigEE" to="hdhb:7trNacwWkn6" resolve="GoToNeighbourRootActions.GoToByTree" />
      </node>
      <node concept="3Tm6S6" id="2jv$fqwD$E_" role="1B3o_S" />
      <node concept="3clFbW" id="2jv$fqwD$EA" role="jymVt">
        <node concept="3cqZAl" id="2jv$fqwD$EB" role="3clF45" />
        <node concept="3Tm1VV" id="2jv$fqwD$EC" role="1B3o_S" />
        <node concept="3clFbS" id="2jv$fqwD$ED" role="3clF47">
          <node concept="XkiVB" id="2jv$fqwD$EE" role="3cqZAp">
            <ref role="37wK5l" to="hdhb:7trNacwWkna" resolve="GoToNeighbourRootActions.GoToByTree" />
            <node concept="37vLTw" id="2jv$fqwD$EF" role="37wK5m">
              <ref role="3cqZAo" node="2jv$fqwD$oV" resolve="myMergeTree" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2jv$fqwD$EG" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getCurrentNodeId" />
        <node concept="3Tmbuc" id="2jv$fqwD$EH" role="1B3o_S" />
        <node concept="3uibUv" id="2jv$fqwD$EI" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$EJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="2jv$fqwD$EK" role="3clF47">
          <node concept="3clFbF" id="2jv$fqwD$EL" role="3cqZAp">
            <node concept="1rXfSq" id="2jv$fqwD$EM" role="3clFbG">
              <ref role="37wK5l" node="2jv$fqwD$zy" resolve="getCurrentRoot" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$EN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2jv$fqwD$EO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setCurrentNodeId" />
        <node concept="3cqZAl" id="2jv$fqwD$EP" role="3clF45" />
        <node concept="3Tm1VV" id="2jv$fqwD$EQ" role="1B3o_S" />
        <node concept="37vLTG" id="2jv$fqwD$ER" role="3clF46">
          <property role="TrG5h" value="nodeId" />
          <node concept="3uibUv" id="2jv$fqwD$ES" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="2AHcQZ" id="2jv$fqwD$ET" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="2jv$fqwD$EU" role="3clF47">
          <node concept="3clFbF" id="2jv$fqwD$EV" role="3cqZAp">
            <node concept="1rXfSq" id="2jv$fqwD$EW" role="3clFbG">
              <ref role="37wK5l" node="2jv$fqwD$yL" resolve="setCurrentRoot" />
              <node concept="37vLTw" id="2jv$fqwD$EX" role="37wK5m">
                <ref role="3cqZAo" node="2jv$fqwD$ER" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$EY" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jv$fqwPvmL" role="jymVt" />
    <node concept="312cEu" id="2jv$fqwD$EZ" role="jymVt">
      <property role="TrG5h" value="MergeModelsTree" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="2jv$fqwD$F0" role="1B3o_S" />
      <node concept="3uibUv" id="2jv$fqwD$F1" role="1zkMxy">
        <ref role="3uigEE" to="hdhb:42hl10VHaI8" resolve="DiffModelTree" />
      </node>
      <node concept="3clFbW" id="2jv$fqwD$F2" role="jymVt">
        <node concept="37vLTG" id="QicWNw69$z" role="3clF46">
          <property role="TrG5h" value="repo" />
          <node concept="3uibUv" id="QicWNw69$y" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3cqZAl" id="2jv$fqwD$F3" role="3clF45" />
        <node concept="3Tm6S6" id="2jv$fqwD$F4" role="1B3o_S" />
        <node concept="3clFbS" id="2jv$fqwD$F5" role="3clF47">
          <node concept="XkiVB" id="QicWNw8Fc8" role="3cqZAp">
            <ref role="37wK5l" to="hdhb:42hl10VHaPj" resolve="DiffModelTree" />
            <node concept="37vLTw" id="QicWNw8GYW" role="37wK5m">
              <ref role="3cqZAo" node="QicWNw69$z" resolve="repo" />
            </node>
          </node>
          <node concept="3cpWs8" id="2jv$fqwD$Fy" role="3cqZAp">
            <node concept="3cpWsn" id="2jv$fqwD$Fz" role="3cpWs9">
              <property role="TrG5h" value="md" />
              <node concept="3uibUv" id="2jv$fqwD$F$" role="1tU5fm">
                <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
              </node>
              <node concept="Xjq3P" id="2jv$fqwD$F_" role="33vP2m">
                <ref role="1HBi2w" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2jv$fqwD$Fc" role="3cqZAp">
            <node concept="1rXfSq" id="2cFxs3P4LtY" role="3clFbG">
              <ref role="37wK5l" to="hdhb:2cFxs3P3R2z" resolve="setActions" />
              <node concept="2YIFZM" id="2jv$fqwD$FB" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="2YIFZM" id="2jv$fqwD$FF" role="37wK5m">
                  <ref role="37wK5l" node="BjUsE2KPW9" resolve="yoursInstance" />
                  <ref role="1Pybhc" node="BjUsE2KPW8" resolve="AcceptYoursTheirs" />
                  <node concept="37vLTw" id="3GM_nagTrnJ" role="37wK5m">
                    <ref role="3cqZAo" node="2jv$fqwD$Fz" resolve="md" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2jv$fqwD$FH" role="37wK5m">
                  <ref role="37wK5l" node="BjUsE2KPWk" resolve="theirsInstance" />
                  <ref role="1Pybhc" node="BjUsE2KPW8" resolve="AcceptYoursTheirs" />
                  <node concept="37vLTw" id="3GM_nagTs$w" role="37wK5m">
                    <ref role="3cqZAo" node="2jv$fqwD$Fz" resolve="md" />
                  </node>
                </node>
                <node concept="3uibUv" id="2jv$fqwD$FJ" role="3PaCim">
                  <ref role="3uigEE" to="7bx7:~BaseAction" resolve="BaseAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2cFxs3P5byi" role="jymVt" />
      <node concept="3clFb_" id="2jv$fqwD$FL" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="updateRootCustomPresentation" />
        <node concept="3Tmbuc" id="2jv$fqwD$FM" role="1B3o_S" />
        <node concept="3cqZAl" id="2jv$fqwD$FN" role="3clF45" />
        <node concept="37vLTG" id="2jv$fqwD$FO" role="3clF46">
          <property role="TrG5h" value="rootTreeNode" />
          <node concept="3uibUv" id="2jv$fqwD$FP" role="1tU5fm">
            <ref role="3uigEE" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
          </node>
          <node concept="2AHcQZ" id="2jv$fqwD$FQ" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2jv$fqwD$FR" role="3clF47">
          <node concept="3cpWs8" id="2jv$fqwD$FS" role="3cqZAp">
            <node concept="3cpWsn" id="2jv$fqwD$FT" role="3cpWs9">
              <property role="TrG5h" value="session" />
              <node concept="3uibUv" id="2jv$fqwD$FU" role="1tU5fm">
                <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
              </node>
              <node concept="3K4zz7" id="2jv$fqwD$FV" role="33vP2m">
                <node concept="37vLTw" id="2jv$fqwD$FW" role="3K4GZi">
                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                </node>
                <node concept="37vLTw" id="2jv$fqwD$FX" role="3K4E3e">
                  <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                </node>
                <node concept="3clFbC" id="2jv$fqwD$FY" role="3K4Cdx">
                  <node concept="10Nm6u" id="2jv$fqwD$FZ" role="3uHU7w" />
                  <node concept="2OqwBi" id="2jv$fqwD$G0" role="3uHU7B">
                    <node concept="liA8E" id="2jv$fqwD$G1" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                    </node>
                    <node concept="37vLTw" id="2jv$fqwD$G2" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2jv$fqwD$G3" role="3cqZAp">
            <node concept="3cpWsn" id="2jv$fqwD$G4" role="3cpWs9">
              <property role="TrG5h" value="changes" />
              <node concept="2OqwBi" id="2jv$fqwD$G5" role="33vP2m">
                <node concept="2OqwBi" id="2jv$fqwD$G6" role="2Oq$k0">
                  <node concept="1eOMI4" id="2jv$fqwD$G7" role="2Oq$k0">
                    <node concept="3K4zz7" id="2jv$fqwD$G8" role="1eOMHV">
                      <node concept="2OqwBi" id="2jv$fqwD$G9" role="3K4GZi">
                        <node concept="37vLTw" id="2BHiRxeun1S" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                        </node>
                        <node concept="liA8E" id="2jv$fqwD$Gb" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:3$YpntjF4nv" resolve="getChangesForRoot" />
                          <node concept="2OqwBi" id="2jv$fqwD$Gc" role="37wK5m">
                            <node concept="37vLTw" id="2BHiRxglPi1" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                            </node>
                            <node concept="liA8E" id="2jv$fqwD$Ge" role="2OqNvi">
                              <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2jv$fqwD$Gf" role="3K4E3e">
                        <node concept="37vLTw" id="2jv$fqwD$Gg" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                        </node>
                        <node concept="liA8E" id="2jv$fqwD$Gh" role="2OqNvi">
                          <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="2jv$fqwD$Gi" role="3K4Cdx">
                        <node concept="10Nm6u" id="2jv$fqwD$Gj" role="3uHU7w" />
                        <node concept="2OqwBi" id="2jv$fqwD$Gk" role="3uHU7B">
                          <node concept="liA8E" id="2jv$fqwD$Gl" role="2OqNvi">
                            <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                          </node>
                          <node concept="37vLTw" id="2jv$fqwD$Gm" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2jv$fqwD$Gn" role="2OqNvi">
                    <node concept="1bVj0M" id="2jv$fqwD$Go" role="23t8la">
                      <node concept="3clFbS" id="2jv$fqwD$Gp" role="1bW5cS">
                        <node concept="3clFbF" id="2jv$fqwD$Gq" role="3cqZAp">
                          <node concept="3fqX7Q" id="2jv$fqwD$Gr" role="3clFbG">
                            <node concept="2OqwBi" id="2jv$fqwD$Gs" role="3fr31v">
                              <node concept="37vLTw" id="2jv$fqwD$Gt" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwD$FT" resolve="session" />
                              </node>
                              <node concept="liA8E" id="2jv$fqwD$Gu" role="2OqNvi">
                                <ref role="37wK5l" to="bmv6:3$YpntjF4o1" resolve="isChangeResolved" />
                                <node concept="37vLTw" id="2jv$fqwD$Gv" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XRy" resolve="ch" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XRy" role="1bW2Oz">
                        <property role="TrG5h" value="ch" />
                        <node concept="2jxLKc" id="5W7E4fV0XRz" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="2jv$fqwD$Gy" role="2OqNvi" />
              </node>
              <node concept="_YKpA" id="2jv$fqwD$Gz" role="1tU5fm">
                <node concept="3uibUv" id="2jv$fqwD$G$" role="_ZDj9">
                  <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2jv$fqwD$G_" role="3cqZAp" />
          <node concept="3cpWs8" id="2jv$fqwD$GA" role="3cqZAp">
            <node concept="3cpWsn" id="2jv$fqwD$GB" role="3cpWs9">
              <property role="TrG5h" value="conflictedCount" />
              <node concept="10Oyi0" id="2jv$fqwD$GC" role="1tU5fm" />
              <node concept="2OqwBi" id="2jv$fqwD$GD" role="33vP2m">
                <node concept="2OqwBi" id="2jv$fqwD$GE" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTB6X" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$G4" resolve="changes" />
                  </node>
                  <node concept="3zZkjj" id="2jv$fqwD$GG" role="2OqNvi">
                    <node concept="1bVj0M" id="2jv$fqwD$GH" role="23t8la">
                      <node concept="3clFbS" id="2jv$fqwD$GI" role="1bW5cS">
                        <node concept="3clFbF" id="2jv$fqwD$GJ" role="3cqZAp">
                          <node concept="2OqwBi" id="2jv$fqwD$GK" role="3clFbG">
                            <node concept="2OqwBi" id="2jv$fqwD$GL" role="2Oq$k0">
                              <node concept="37vLTw" id="2jv$fqwD$GM" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwD$FT" resolve="session" />
                              </node>
                              <node concept="liA8E" id="2jv$fqwD$GN" role="2OqNvi">
                                <ref role="37wK5l" to="bmv6:3$YpntjF4nE" resolve="getConflictedWith" />
                                <node concept="37vLTw" id="2BHiRxgmkHX" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XR$" resolve="ch" />
                                </node>
                              </node>
                            </node>
                            <node concept="3GX2aA" id="2jv$fqwD$GP" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XR$" role="1bW2Oz">
                        <property role="TrG5h" value="ch" />
                        <node concept="2jxLKc" id="5W7E4fV0XR_" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="2jv$fqwD$GS" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2jv$fqwD$GT" role="3cqZAp">
            <node concept="3cpWsn" id="2jv$fqwD$GU" role="3cpWs9">
              <property role="TrG5h" value="nonConflictedCount" />
              <node concept="10Oyi0" id="2jv$fqwD$GV" role="1tU5fm" />
              <node concept="3cpWsd" id="2jv$fqwD$GW" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTwft" role="3uHU7w">
                  <ref role="3cqZAo" node="2jv$fqwD$GB" resolve="conflictedCount" />
                </node>
                <node concept="2OqwBi" id="2jv$fqwD$GY" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTtFp" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$G4" resolve="changes" />
                  </node>
                  <node concept="34oBXx" id="2jv$fqwD$H0" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2jv$fqwD$H1" role="3cqZAp">
            <node concept="3cpWsn" id="2jv$fqwD$H2" role="3cpWs9">
              <property role="TrG5h" value="compositeChangeType" />
              <node concept="3uibUv" id="2jv$fqwD$H3" role="1tU5fm">
                <ref role="3uigEE" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
              </node>
              <node concept="10Nm6u" id="2jv$fqwD$H4" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbF" id="2jv$fqwD$H5" role="3cqZAp">
            <node concept="2OqwBi" id="2jv$fqwD$H6" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgliEh" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
              </node>
              <node concept="liA8E" id="2jv$fqwD$H8" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:7yCf_dgMyuY" resolve="setTooltipText" />
                <node concept="1rXfSq" id="4hiugqysgts" role="37wK5m">
                  <ref role="37wK5l" node="2jv$fqwD$DL" resolve="generateUnresolvedChangesText" />
                  <node concept="2OqwBi" id="2jv$fqwD$Ha" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTsLY" role="2Oq$k0">
                      <ref role="3cqZAo" node="2jv$fqwD$G4" resolve="changes" />
                    </node>
                    <node concept="34oBXx" id="2jv$fqwD$Hc" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTrAW" role="37wK5m">
                    <ref role="3cqZAo" node="2jv$fqwD$GB" resolve="conflictedCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2jv$fqwD$He" role="3cqZAp">
            <node concept="3clFbS" id="2jv$fqwD$Hf" role="3clFbx">
              <node concept="3clFbF" id="2jv$fqwD$Hg" role="3cqZAp">
                <node concept="37vLTI" id="2jv$fqwD$Hh" role="3clFbG">
                  <node concept="Rm8GO" id="2jv$fqwD$Hi" role="37vLTx">
                    <ref role="Rm8GQ" to="btf5:ftI7W2Rarc" resolve="CONFLICTED" />
                    <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTzwB" role="37vLTJ">
                    <ref role="3cqZAo" node="2jv$fqwD$H2" resolve="compositeChangeType" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2jv$fqwD$Hk" role="3cqZAp">
                <node concept="2OqwBi" id="2jv$fqwD$Hl" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxgmySL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                  </node>
                  <node concept="liA8E" id="2jv$fqwD$Hn" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:7yCf_dgMyuI" resolve="setAdditionalText" />
                    <node concept="Xl_RD" id="2jv$fqwD$Ho" role="37wK5m">
                      <property role="Xl_RC" value="with conflicts" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2jv$fqwD$Hp" role="3clFbw">
              <node concept="37vLTw" id="3GM_nagTun6" role="3uHU7B">
                <ref role="3cqZAo" node="2jv$fqwD$GB" resolve="conflictedCount" />
              </node>
              <node concept="3cmrfG" id="2jv$fqwD$Hr" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="9aQIb" id="2jv$fqwD$Hs" role="9aQIa">
              <node concept="3clFbS" id="2jv$fqwD$Ht" role="9aQI4">
                <node concept="3clFbJ" id="2jv$fqwD$Hu" role="3cqZAp">
                  <node concept="3clFbC" id="2jv$fqwD$Hv" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTs5K" role="3uHU7B">
                      <ref role="3cqZAo" node="2jv$fqwD$GU" resolve="nonConflictedCount" />
                    </node>
                    <node concept="3cmrfG" id="2jv$fqwD$Hx" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="2jv$fqwD$Hy" role="3clFbx">
                    <node concept="3clFbJ" id="2jv$fqwD$Hz" role="3cqZAp">
                      <node concept="3clFbS" id="2jv$fqwD$H$" role="3clFbx">
                        <node concept="3clFbF" id="2jv$fqwD$H_" role="3cqZAp">
                          <node concept="2OqwBi" id="2jv$fqwD$HA" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxglKkP" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                            </node>
                            <node concept="liA8E" id="2jv$fqwD$HC" role="2OqNvi">
                              <ref role="37wK5l" to="hdhb:5zhK2iKPAQs" resolve="setTextStyle" />
                              <node concept="10M0yZ" id="2jv$fqwD$HD" role="37wK5m">
                                <ref role="1PxDUh" to="lzb2:~SimpleTextAttributes" resolve="SimpleTextAttributes" />
                                <ref role="3cqZAo" to="lzb2:~SimpleTextAttributes.STYLE_STRIKEOUT" resolve="STYLE_STRIKEOUT" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1Wc70l" id="2jv$fqwD$HE" role="3clFbw">
                        <node concept="3clFbC" id="2jv$fqwD$HF" role="3uHU7w">
                          <node concept="2OqwBi" id="2jv$fqwD$HG" role="3uHU7B">
                            <node concept="liA8E" id="2jv$fqwD$HH" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                              <node concept="2OqwBi" id="2jv$fqwD$HI" role="37wK5m">
                                <node concept="37vLTw" id="2BHiRxgmCmX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                                </node>
                                <node concept="liA8E" id="2jv$fqwD$HK" role="2OqNvi">
                                  <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                                </node>
                              </node>
                            </node>
                            <node concept="2JrnkZ" id="2jv$fqwD$HL" role="2Oq$k0">
                              <node concept="2OqwBi" id="2jv$fqwD$HM" role="2JrQYb">
                                <node concept="37vLTw" id="2BHiRxeuDIC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                                </node>
                                <node concept="liA8E" id="2jv$fqwD$HO" role="2OqNvi">
                                  <ref role="37wK5l" to="bmv6:3$YpntjF4sv" resolve="getResultModel" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="10Nm6u" id="2jv$fqwD$HP" role="3uHU7w" />
                        </node>
                        <node concept="3y3z36" id="2jv$fqwD$HQ" role="3uHU7B">
                          <node concept="10Nm6u" id="2jv$fqwD$HR" role="3uHU7w" />
                          <node concept="2OqwBi" id="2jv$fqwD$HS" role="3uHU7B">
                            <node concept="37vLTw" id="2BHiRxgmLgT" role="2Oq$k0">
                              <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                            </node>
                            <node concept="liA8E" id="2jv$fqwD$HU" role="2OqNvi">
                              <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="3WwtC0_L53g" role="9aQIa">
                        <node concept="3clFbS" id="3WwtC0_L53h" role="9aQI4">
                          <node concept="3clFbF" id="3WwtC0_LaKD" role="3cqZAp">
                            <node concept="2OqwBi" id="3WwtC0_LaKE" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxgm6Zz" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                              </node>
                              <node concept="liA8E" id="3WwtC0_LaKG" role="2OqNvi">
                                <ref role="37wK5l" to="hdhb:7yCf_dgMyuI" resolve="setAdditionalText" />
                                <node concept="10Nm6u" id="29ji2rsX0WX" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="2jv$fqwD$HV" role="9aQIa">
                    <node concept="3clFbS" id="2jv$fqwD$HW" role="9aQI4">
                      <node concept="3clFbF" id="2jv$fqwD$HX" role="3cqZAp">
                        <node concept="37vLTI" id="2jv$fqwD$HY" role="3clFbG">
                          <node concept="Rm8GO" id="2jv$fqwD$HZ" role="37vLTx">
                            <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
                            <ref role="Rm8GQ" to="btf5:7inhnIFBpI0" resolve="CHANGE" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTB9D" role="37vLTJ">
                            <ref role="3cqZAo" node="2jv$fqwD$H2" resolve="compositeChangeType" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2jv$fqwD$I1" role="3cqZAp">
                        <node concept="3clFbS" id="2jv$fqwD$I2" role="3clFbx">
                          <node concept="3clFbF" id="2jv$fqwD$I3" role="3cqZAp">
                            <node concept="37vLTI" id="2jv$fqwD$I4" role="3clFbG">
                              <node concept="2OqwBi" id="2jv$fqwD$I5" role="37vLTx">
                                <node concept="2OqwBi" id="2jv$fqwD$I6" role="2Oq$k0">
                                  <node concept="37vLTw" id="3GM_nagTwPG" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2jv$fqwD$G4" resolve="changes" />
                                  </node>
                                  <node concept="1uHKPH" id="2jv$fqwD$I8" role="2OqNvi" />
                                </node>
                                <node concept="liA8E" id="2jv$fqwD$I9" role="2OqNvi">
                                  <ref role="37wK5l" to="btf5:7inhnIFBpIN" resolve="getType" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3GM_nagTwaN" role="37vLTJ">
                                <ref role="3cqZAo" node="2jv$fqwD$H2" resolve="compositeChangeType" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2jv$fqwD$Ib" role="3clFbw">
                          <node concept="37vLTw" id="3GM_nagTrFx" role="2Oq$k0">
                            <ref role="3cqZAo" node="2jv$fqwD$G4" resolve="changes" />
                          </node>
                          <node concept="2HxqBE" id="2jv$fqwD$Id" role="2OqNvi">
                            <node concept="1bVj0M" id="2jv$fqwD$Ie" role="23t8la">
                              <node concept="3clFbS" id="2jv$fqwD$If" role="1bW5cS">
                                <node concept="3clFbF" id="2jv$fqwD$Ig" role="3cqZAp">
                                  <node concept="22lmx$" id="2jv$fqwD$Ih" role="3clFbG">
                                    <node concept="2ZW3vV" id="2jv$fqwD$Ii" role="3uHU7w">
                                      <node concept="3uibUv" id="2jv$fqwD$Ij" role="2ZW6by">
                                        <ref role="3uigEE" to="btf5:5x0q8wkvVi1" resolve="DeleteRootChange" />
                                      </node>
                                      <node concept="37vLTw" id="2BHiRxglbog" role="2ZW6bz">
                                        <ref role="3cqZAo" node="5W7E4fV0XRA" resolve="ch" />
                                      </node>
                                    </node>
                                    <node concept="2ZW3vV" id="2jv$fqwD$Il" role="3uHU7B">
                                      <node concept="3uibUv" id="2jv$fqwD$Im" role="2ZW6by">
                                        <ref role="3uigEE" to="btf5:5x0q8wkvS3B" resolve="AddRootChange" />
                                      </node>
                                      <node concept="37vLTw" id="2BHiRxgm1k7" role="2ZW6bz">
                                        <ref role="3cqZAo" node="5W7E4fV0XRA" resolve="ch" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0XRA" role="1bW2Oz">
                                <property role="TrG5h" value="ch" />
                                <node concept="2jxLKc" id="5W7E4fV0XRB" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2jv$fqwD$Iq" role="3cqZAp" />
                      <node concept="3cpWs8" id="2jv$fqwD$Ir" role="3cqZAp">
                        <node concept="3cpWsn" id="2jv$fqwD$Is" role="3cpWs9">
                          <property role="TrG5h" value="myChangesCount" />
                          <node concept="10Oyi0" id="2jv$fqwD$It" role="1tU5fm" />
                          <node concept="2OqwBi" id="2jv$fqwD$Iu" role="33vP2m">
                            <node concept="2OqwBi" id="2jv$fqwD$Iv" role="2Oq$k0">
                              <node concept="37vLTw" id="3GM_nagTtiA" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwD$G4" resolve="changes" />
                              </node>
                              <node concept="3zZkjj" id="2jv$fqwD$Ix" role="2OqNvi">
                                <node concept="1bVj0M" id="2jv$fqwD$Iy" role="23t8la">
                                  <node concept="3clFbS" id="2jv$fqwD$Iz" role="1bW5cS">
                                    <node concept="3clFbF" id="2jv$fqwD$I$" role="3cqZAp">
                                      <node concept="2OqwBi" id="2jv$fqwD$I_" role="3clFbG">
                                        <node concept="37vLTw" id="2jv$fqwD$IA" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2jv$fqwD$FT" resolve="session" />
                                        </node>
                                        <node concept="liA8E" id="2jv$fqwD$IB" role="2OqNvi">
                                          <ref role="37wK5l" to="bmv6:3$YpntjF4t9" resolve="isMyChange" />
                                          <node concept="37vLTw" id="2BHiRxgmaIT" role="37wK5m">
                                            <ref role="3cqZAo" node="5W7E4fV0XRC" resolve="ch" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="5W7E4fV0XRC" role="1bW2Oz">
                                    <property role="TrG5h" value="ch" />
                                    <node concept="2jxLKc" id="5W7E4fV0XRD" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="34oBXx" id="2jv$fqwD$IF" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2jv$fqwD$IG" role="3cqZAp">
                        <node concept="3clFbS" id="2jv$fqwD$IH" role="3clFbx">
                          <node concept="3clFbF" id="2jv$fqwD$II" role="3cqZAp">
                            <node concept="2OqwBi" id="2jv$fqwD$IJ" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxgheMf" role="2Oq$k0">
                                <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                              </node>
                              <node concept="liA8E" id="2jv$fqwD$IL" role="2OqNvi">
                                <ref role="37wK5l" to="hdhb:7yCf_dgMyuI" resolve="setAdditionalText" />
                                <node concept="Xl_RD" id="2jv$fqwD$IM" role="37wK5m">
                                  <property role="Xl_RC" value="local" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="2jv$fqwD$IN" role="3clFbw">
                          <node concept="37vLTw" id="3GM_nagTBLe" role="3uHU7w">
                            <ref role="3cqZAo" node="2jv$fqwD$GU" resolve="nonConflictedCount" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTtQI" role="3uHU7B">
                            <ref role="3cqZAo" node="2jv$fqwD$Is" resolve="myChangesCount" />
                          </node>
                        </node>
                        <node concept="3eNFk2" id="2jv$fqwD$IQ" role="3eNLev">
                          <node concept="3clFbS" id="2jv$fqwD$IR" role="3eOfB_">
                            <node concept="3clFbF" id="2jv$fqwD$IS" role="3cqZAp">
                              <node concept="2OqwBi" id="2jv$fqwD$IT" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxglWLD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                                </node>
                                <node concept="liA8E" id="2jv$fqwD$IV" role="2OqNvi">
                                  <ref role="37wK5l" to="hdhb:7yCf_dgMyuI" resolve="setAdditionalText" />
                                  <node concept="Xl_RD" id="2jv$fqwD$IW" role="37wK5m">
                                    <property role="Xl_RC" value="remote" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="2jv$fqwD$IX" role="3eO9$A">
                            <node concept="3cmrfG" id="2jv$fqwD$IY" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagT_uZ" role="3uHU7B">
                              <ref role="3cqZAo" node="2jv$fqwD$Is" resolve="myChangesCount" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="2jv$fqwD$J0" role="9aQIa">
                          <node concept="3clFbS" id="2jv$fqwD$J1" role="9aQI4">
                            <node concept="3clFbF" id="2jv$fqwD$J2" role="3cqZAp">
                              <node concept="2OqwBi" id="2jv$fqwD$J3" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxgm_fF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
                                </node>
                                <node concept="liA8E" id="2jv$fqwD$J5" role="2OqNvi">
                                  <ref role="37wK5l" to="hdhb:7yCf_dgMyuI" resolve="setAdditionalText" />
                                  <node concept="Xl_RD" id="2jv$fqwD$J6" role="37wK5m">
                                    <property role="Xl_RC" value="both modified" />
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
          <node concept="3clFbH" id="2jv$fqwD$J7" role="3cqZAp" />
          <node concept="3clFbF" id="3WwtC0_NVKl" role="3cqZAp">
            <node concept="2OqwBi" id="3WwtC0_O0a6" role="3clFbG">
              <node concept="liA8E" id="3WwtC0_O6OT" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:7yCf_dgMyvu" resolve="setColor" />
                <node concept="3K4zz7" id="3WwtC0_OpbV" role="37wK5m">
                  <node concept="10Nm6u" id="3WwtC0_Otwe" role="3K4E3e" />
                  <node concept="3clFbC" id="3WwtC0_Ogbq" role="3K4Cdx">
                    <node concept="10Nm6u" id="3WwtC0_OkDy" role="3uHU7w" />
                    <node concept="37vLTw" id="3WwtC0_Ob6v" role="3uHU7B">
                      <ref role="3cqZAo" node="2jv$fqwD$H2" resolve="compositeChangeType" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7dUqWL4qncs" role="3K4GZi">
                    <node concept="2YIFZM" id="7dUqWL4qn4g" role="2Oq$k0">
                      <ref role="37wK5l" to="hdhb:3$C2wb7p0AM" resolve="getInstance" />
                      <ref role="1Pybhc" to="hdhb:42hl10VH9R2" resolve="ChangeColors" />
                    </node>
                    <node concept="liA8E" id="7dUqWL4qnla" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:3$C2wb7pOSG" resolve="getTreeColor" />
                      <node concept="37vLTw" id="7dUqWL4qn4h" role="37wK5m">
                        <ref role="3cqZAo" node="2jv$fqwD$H2" resolve="compositeChangeType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3WwtC0_NVKk" role="2Oq$k0">
                <ref role="3cqZAo" node="2jv$fqwD$FO" resolve="rootTreeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$Jj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2jv$fqwD$Jk" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModels" />
        <node concept="A3Dl8" id="2jv$fqwD$Jl" role="3clF45">
          <node concept="H_c77" id="18nb9UMiNu1" role="A3Ik2" />
        </node>
        <node concept="3Tmbuc" id="2jv$fqwD$Jn" role="1B3o_S" />
        <node concept="3clFbS" id="2jv$fqwD$Jo" role="3clF47">
          <node concept="3clFbF" id="2jv$fqwD$Jp" role="3cqZAp">
            <node concept="2YIFZM" id="2jv$fqwD$Jq" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="2OqwBi" id="30J9Cm_dPY8" role="37wK5m">
                <node concept="37vLTw" id="30J9Cm_dPY9" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="30J9Cm_dPYa" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4s_" resolve="getBaseModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="30J9Cm_dZXs" role="37wK5m">
                <node concept="37vLTw" id="30J9Cm_dZXt" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="30J9Cm_dZXu" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sH" resolve="getMyModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="30J9Cm_ehxV" role="37wK5m">
                <node concept="37vLTw" id="30J9Cm_ehxW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="30J9Cm_ehxX" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4sP" resolve="getRepositoryModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$J$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2jv$fqwD$J_" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getAffectedRoots" />
        <node concept="A3Dl8" id="2jv$fqwD$JA" role="3clF45">
          <node concept="3uibUv" id="2jv$fqwD$JB" role="A3Ik2">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
        <node concept="3Tmbuc" id="2jv$fqwD$JC" role="1B3o_S" />
        <node concept="3clFbS" id="2jv$fqwD$JD" role="3clF47">
          <node concept="3clFbF" id="vNUzDwQ4Oe" role="3cqZAp">
            <node concept="3K4zz7" id="vNUzDwQEiv" role="3clFbG">
              <node concept="3clFbC" id="vNUzDwQgRs" role="3K4Cdx">
                <node concept="10Nm6u" id="vNUzDwQuiR" role="3uHU7w" />
                <node concept="37vLTw" id="vNUzDwQ4Oc" role="3uHU7B">
                  <ref role="3cqZAo" node="2jv$fqwD$oM" resolve="myMetadataMergeSession" />
                </node>
              </node>
              <node concept="2OqwBi" id="vNUzDwQW8g" role="3K4E3e">
                <node concept="2OqwBi" id="vNUzDwQNsb" role="2Oq$k0">
                  <node concept="37vLTw" id="vNUzDwQNsc" role="2Oq$k0">
                    <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                  </node>
                  <node concept="liA8E" id="vNUzDwQNsd" role="2OqNvi">
                    <ref role="37wK5l" to="bmv6:3$YpntjF4nm" resolve="getAffectedRoots" />
                  </node>
                </node>
                <node concept="1KnU$U" id="vNUzDwR9oR" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="vNUzDwRmaf" role="3K4GZi">
                <node concept="37vLTw" id="vNUzDwRmag" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jv$fqwD$oJ" resolve="myMergeSession" />
                </node>
                <node concept="liA8E" id="vNUzDwRmah" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:3$YpntjF4nm" resolve="getAffectedRoots" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$JI" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="2jv$fqwD$JJ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isMultipleRootNames" />
        <node concept="10P_77" id="2jv$fqwD$JK" role="3clF45" />
        <node concept="3Tmbuc" id="2jv$fqwD$JL" role="1B3o_S" />
        <node concept="3clFbS" id="2jv$fqwD$JM" role="3clF47">
          <node concept="3clFbF" id="2jv$fqwD$JN" role="3cqZAp">
            <node concept="3clFbT" id="2jv$fqwD$JO" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2jv$fqwD$JP" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2jv$fqwUlHe" role="jymVt" />
      <node concept="3clFb_" id="6rlHBM$Poo6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="onUnselect" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="6rlHBM$Poo8" role="1B3o_S" />
        <node concept="3cqZAl" id="6rlHBM$Poo9" role="3clF45" />
        <node concept="3clFbS" id="6rlHBM$Pooa" role="3clF47">
          <node concept="3clFbF" id="6rlHBM$Q20t" role="3cqZAp">
            <node concept="1rXfSq" id="6rlHBM$Q20s" role="3clFbG">
              <ref role="37wK5l" node="haj_nYikT5" resolve="resetCurrentRoot" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6rlHBM$Poob" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3UY41VCYoLZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="onSelectRoot" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="3UY41VCYoM1" role="1B3o_S" />
        <node concept="3cqZAl" id="3UY41VCYoM2" role="3clF45" />
        <node concept="37vLTG" id="3UY41VCYoM3" role="3clF46">
          <property role="TrG5h" value="rootId" />
          <node concept="3uibUv" id="2jv$fqwU_oA" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="2AHcQZ" id="3UY41VCYoM5" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="3UY41VCYoM6" role="3clF47">
          <node concept="3clFbF" id="3UY41VCYv$6" role="3cqZAp">
            <node concept="1rXfSq" id="3UY41VCYv$5" role="3clFbG">
              <ref role="37wK5l" node="3SMO48GoPmo" resolve="changeCurrentRoot" />
              <node concept="37vLTw" id="3UY41VCYyq4" role="37wK5m">
                <ref role="3cqZAo" node="3UY41VCYoM3" resolve="rootId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3UY41VCYoM7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5$xqaErb5$G">
    <property role="TrG5h" value="ISaveMergedModel" />
    <node concept="3clFb_" id="7LCpE5eWcu6" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="save" />
      <node concept="3clFbS" id="7LCpE5eWcu9" role="3clF47" />
      <node concept="3Tm1VV" id="7LCpE5eWcua" role="1B3o_S" />
      <node concept="10P_77" id="7LCpE5f38C4" role="3clF45" />
      <node concept="37vLTG" id="7LCpE5eWcAk" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="7LCpE5eWcBc" role="1tU5fm">
          <ref role="3uigEE" node="2jv$fqwD$ox" resolve="MergeModelsPanel" />
        </node>
      </node>
      <node concept="37vLTG" id="7LCpE5f0gwo" role="3clF46">
        <property role="TrG5h" value="resultModel" />
        <node concept="H_c77" id="7LCpE5f0gxn" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="7LCpE5f38DU" role="lGtFl">
        <node concept="x79VA" id="7LCpE5f38Iw" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHsD_s" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsD_t" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsD_u" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsD_v" role="1PaTwD">
              <property role="3oM_SC" value="close" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsD_w" role="1PaTwD">
              <property role="3oM_SC" value="dialog," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsD_x" role="1PaTwD">
              <property role="3oM_SC" value="false" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsD_y" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsD_z" role="1PaTwD">
              <property role="3oM_SC" value="continue" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsD_$" role="1PaTwD">
              <property role="3oM_SC" value="merging" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsD_k" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsD_l" role="1PaTwD">
            <property role="3oM_SC" value="Called" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_m" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_n" role="1PaTwD">
            <property role="3oM_SC" value="OK" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_o" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_p" role="1PaTwD">
            <property role="3oM_SC" value="MergeModelsDialog" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_q" role="1PaTwD">
            <property role="3oM_SC" value="before" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_r" role="1PaTwD">
            <property role="3oM_SC" value="closing" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5$xqaErb5$H" role="1B3o_S" />
  </node>
</model>

