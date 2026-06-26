<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:49e49752-a85e-4d81-811e-1dc850a8e4cd(jetbrains.mps.execution.lib.ui)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="qfni" ref="r:bfb6ca7e-5411-4ee0-a5c0-1edd33370efd(jetbrains.mps.ide.platform.dialogs.choosers)" />
    <import index="3s15" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench(MPS.Workbench/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="3fkn" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileChooser(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="7bx7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.action(MPS.Platform/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="awpe" ref="r:5a505993-793e-4b2d-84cf-271f9dde39b3(jetbrains.mps.execution.lib)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
      <concept id="1239559992092" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleLiteral" flags="nn" index="2ry78W">
        <reference id="1239560008022" name="tupleDeclaration" index="2ryb1Q" />
        <child id="1239560910577" name="componentRef" index="2r_Bvh" />
      </concept>
      <concept id="1239560581441" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentReference" flags="ng" index="2r$n1x">
        <reference id="1239560595302" name="componentDeclaration" index="2r$qp6" />
        <child id="1239560837729" name="value" index="2r_lH1" />
      </concept>
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings">
      <concept id="2722628536111969416" name="jetbrains.mps.execution.settings.structure.GridBagConstraints" flags="nn" index="1rwKMM">
        <property id="2722628536111969418" name="constraintsKind" index="1rwKMK" />
        <child id="2722628536112144966" name="order" index="1rxHDW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1173946412755" name="jetbrains.mps.baseLanguage.collections.structure.RemoveAllElementsOperation" flags="nn" index="1kEaZ2" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="14R2qyOCnM1">
    <property role="TrG5h" value="NodeChooser" />
    <property role="3GE5qa" value="nodeChooser" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="2v3Vf7mYdJT" role="1zkMxy">
      <ref role="3uigEE" to="jkm4:~TextFieldWithBrowseButton$NoPathCompletion" resolve="TextFieldWithBrowseButton.NoPathCompletion" />
    </node>
    <node concept="3Tm1VV" id="14R2qyOCnQh" role="1B3o_S" />
    <node concept="312cEg" id="14R2qyOCnPQ" role="jymVt">
      <property role="TrG5h" value="myNodePointer" />
      <node concept="3Tm6S6" id="14R2qyOCnPR" role="1B3o_S" />
      <node concept="3uibUv" id="5h4fo9Gsr$q" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="2AHcQZ" id="5QasOvb$fv4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GpnK2" role="jymVt" />
    <node concept="3clFbW" id="14R2qyOCnQi" role="jymVt">
      <node concept="3cqZAl" id="14R2qyOCnQj" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCnQk" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCnQl" role="3clF47">
        <node concept="3clFbF" id="2v3Vf7mZM3r" role="3cqZAp">
          <node concept="1rXfSq" id="2v3Vf7mZM3q" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
            <node concept="2ShNRf" id="14R2qyOCnQq" role="37wK5m">
              <node concept="YeOm9" id="14R2qyOCnQr" role="2ShVmc">
                <node concept="1Y3b0j" id="14R2qyOCnQs" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="14R2qyOCnQt" role="1B3o_S" />
                  <node concept="3clFb_" id="14R2qyOCnQu" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="actionPerformed" />
                    <node concept="3Tm1VV" id="14R2qyOCnQv" role="1B3o_S" />
                    <node concept="3cqZAl" id="14R2qyOCnQw" role="3clF45" />
                    <node concept="37vLTG" id="14R2qyOCnQx" role="3clF46">
                      <property role="TrG5h" value="p0" />
                      <node concept="3uibUv" id="14R2qyOCnQy" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="14R2qyOCnQz" role="3clF47">
                      <node concept="3cpWs8" id="14R2qyOCnQ_" role="3cqZAp">
                        <node concept="3cpWsn" id="14R2qyOCnQA" role="3cpWs9">
                          <property role="TrG5h" value="findUsegesManager" />
                          <node concept="2YIFZM" id="6Knue6ZNBKw" role="33vP2m">
                            <ref role="1Pybhc" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                            <ref role="37wK5l" to="lui2:~FindUsagesFacade.getInstance()" resolve="getInstance" />
                          </node>
                          <node concept="3uibUv" id="6Knue6ZNtNr" role="1tU5fm">
                            <ref role="3uigEE" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="fweninX9R2" role="3cqZAp">
                        <node concept="3cpWsn" id="fweninX9R3" role="3cpWs9">
                          <property role="TrG5h" value="dataContext" />
                          <node concept="3uibUv" id="fweninX9R1" role="1tU5fm">
                            <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
                          </node>
                          <node concept="2OqwBi" id="fweninX9R4" role="33vP2m">
                            <node concept="2YIFZM" id="fweninX9R5" role="2Oq$k0">
                              <ref role="1Pybhc" to="ddhc:~DataManager" resolve="DataManager" />
                              <ref role="37wK5l" to="ddhc:~DataManager.getInstance()" resolve="getInstance" />
                            </node>
                            <node concept="liA8E" id="fweninX9R6" role="2OqNvi">
                              <ref role="37wK5l" to="ddhc:~DataManager.getDataContext(java.awt.Component)" resolve="getDataContext" />
                              <node concept="Xjq3P" id="fweninX9R7" role="37wK5m">
                                <ref role="1HBi2w" node="14R2qyOCnM1" resolve="NodeChooser" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="25rknuvJE9U" role="3cqZAp">
                        <node concept="3cpWsn" id="25rknuvJE9V" role="3cpWs9">
                          <property role="TrG5h" value="project" />
                          <node concept="3uibUv" id="25rknuvJE9S" role="1tU5fm">
                            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                          </node>
                          <node concept="2OqwBi" id="25rknuvJE9W" role="33vP2m">
                            <node concept="10M0yZ" id="25rknuvJE9X" role="2Oq$k0">
                              <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                              <ref role="3cqZAo" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
                            </node>
                            <node concept="liA8E" id="25rknuvJE9Y" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                              <node concept="37vLTw" id="fweninX9R8" role="37wK5m">
                                <ref role="3cqZAo" node="fweninX9R3" resolve="dataContext" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="fweninXbMO" role="3cqZAp">
                        <node concept="3cpWsn" id="fweninXbMP" role="3cpWs9">
                          <property role="TrG5h" value="mpsProject" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="fweninXbMJ" role="1tU5fm">
                            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                          </node>
                          <node concept="2OqwBi" id="fweninXbMQ" role="33vP2m">
                            <node concept="10M0yZ" id="fweninXbMR" role="2Oq$k0">
                              <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                              <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                            </node>
                            <node concept="liA8E" id="fweninXbMS" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                              <node concept="37vLTw" id="fweninXbMT" role="37wK5m">
                                <ref role="3cqZAo" node="fweninX9R3" resolve="dataContext" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="fweninXfbs" role="3cqZAp">
                        <node concept="3clFbS" id="fweninXfbu" role="3clFbx">
                          <node concept="3cpWs6" id="fweninXkh0" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="fweninXi0q" role="3clFbw">
                          <node concept="10Nm6u" id="fweninXiVb" role="3uHU7w" />
                          <node concept="37vLTw" id="fweninXh2S" role="3uHU7B">
                            <ref role="3cqZAo" node="fweninXbMP" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="25rknuvJEmq" role="3cqZAp" />
                      <node concept="3cpWs8" id="14R2qyOCnQJ" role="3cqZAp">
                        <node concept="3cpWsn" id="14R2qyOCnQK" role="3cpWs9">
                          <property role="TrG5h" value="toChooseFrom" />
                          <property role="3TUv4t" value="false" />
                          <node concept="_YKpA" id="L4W0vZ$AbJ" role="1tU5fm">
                            <node concept="3uibUv" id="L4W0vZ$LpO" role="_ZDj9">
                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="25rknuvIThn" role="3cqZAp">
                        <node concept="2OqwBi" id="25rknuvIU_H" role="3clFbG">
                          <node concept="2YIFZM" id="6pYUqzDdNqC" role="2Oq$k0">
                            <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                            <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                          </node>
                          <node concept="liA8E" id="25rknuvIZ6l" role="2OqNvi">
                            <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
                            <node concept="2ShNRf" id="25rknuvIZb8" role="37wK5m">
                              <node concept="YeOm9" id="25rknuvJDol" role="2ShVmc">
                                <node concept="1Y3b0j" id="25rknuvJDoo" role="YeSDq">
                                  <property role="2bfB8j" value="true" />
                                  <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                                  <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                                  <node concept="37vLTw" id="25rknuvJF48" role="37wK5m">
                                    <ref role="3cqZAo" node="25rknuvJE9V" resolve="project" />
                                  </node>
                                  <node concept="Xl_RD" id="25rknuvJFCQ" role="37wK5m">
                                    <property role="Xl_RC" value="Searching for nodes" />
                                  </node>
                                  <node concept="3clFbT" id="25rknuvJFQp" role="37wK5m">
                                    <property role="3clFbU" value="false" />
                                  </node>
                                  <node concept="3Tm1VV" id="25rknuvJDop" role="1B3o_S" />
                                  <node concept="3clFb_" id="25rknuvJDoq" role="jymVt">
                                    <property role="1EzhhJ" value="false" />
                                    <property role="TrG5h" value="run" />
                                    <property role="DiZV1" value="false" />
                                    <node concept="3Tm1VV" id="25rknuvJDor" role="1B3o_S" />
                                    <node concept="3cqZAl" id="25rknuvJDot" role="3clF45" />
                                    <node concept="37vLTG" id="25rknuvJDou" role="3clF46">
                                      <property role="TrG5h" value="indicator" />
                                      <node concept="3uibUv" id="25rknuvJDov" role="1tU5fm">
                                        <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                                      </node>
                                      <node concept="2AHcQZ" id="25rknuvJDow" role="2AJF6D">
                                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="25rknuvJDox" role="3clF47">
                                      <node concept="3clFbF" id="4MOdh09lZbl" role="3cqZAp">
                                        <node concept="2OqwBi" id="fweninXsAY" role="3clFbG">
                                          <node concept="liA8E" id="fweninXsPL" role="2OqNvi">
                                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                                            <node concept="1bVj0M" id="1KUoCipvwIB" role="37wK5m">
                                              <node concept="3clFbS" id="1KUoCipvwIC" role="1bW5cS">
                                                <node concept="3clFbF" id="1KUoCipvwID" role="3cqZAp">
                                                  <node concept="37vLTI" id="4MOdh09mxat" role="3clFbG">
                                                    <node concept="37vLTw" id="4MOdh09m$A6" role="37vLTJ">
                                                      <ref role="3cqZAo" node="14R2qyOCnQK" resolve="toChooseFrom" />
                                                    </node>
                                                    <node concept="2OqwBi" id="4MOdh09momO" role="37vLTx">
                                                      <node concept="2OqwBi" id="4MOdh09mmnq" role="2Oq$k0">
                                                        <node concept="1rXfSq" id="4hiugqyzksG" role="2Oq$k0">
                                                          <ref role="37wK5l" node="14R2qyOCnMi" resolve="findToChooseFromOnInit" />
                                                          <node concept="37vLTw" id="3GM_nagTs4A" role="37wK5m">
                                                            <ref role="3cqZAo" node="14R2qyOCnQA" resolve="findUsegesManager" />
                                                          </node>
                                                          <node concept="2OqwBi" id="4MOdh09mgdr" role="37wK5m">
                                                            <node concept="37vLTw" id="4MOdh09mdJZ" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="fweninXbMP" resolve="mpsProject" />
                                                            </node>
                                                            <node concept="liA8E" id="4MOdh09mhGs" role="2OqNvi">
                                                              <ref role="37wK5l" to="z1c3:~Project.getScope()" resolve="getScope" />
                                                            </node>
                                                          </node>
                                                          <node concept="2ShNRf" id="25rknuvKtjr" role="37wK5m">
                                                            <node concept="1pGfFk" id="25rknuvKwya" role="2ShVmc">
                                                              <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                                              <node concept="37vLTw" id="25rknuvKB59" role="37wK5m">
                                                                <ref role="3cqZAo" node="25rknuvJDou" resolve="indicator" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="3$u5V9" id="1KUoCipvwIK" role="2OqNvi">
                                                          <node concept="1bVj0M" id="1KUoCipvwIL" role="23t8la">
                                                            <node concept="3clFbS" id="1KUoCipvwIM" role="1bW5cS">
                                                              <node concept="3clFbF" id="1KUoCipvwIN" role="3cqZAp">
                                                                <node concept="2JrnkZ" id="7u2HgD1Kny_" role="3clFbG">
                                                                  <node concept="2OqwBi" id="fweninXn1x" role="2JrQYb">
                                                                    <node concept="37vLTw" id="fweninXlUk" role="2Oq$k0">
                                                                      <ref role="3cqZAo" node="5W7E4fV0Xkm" resolve="it" />
                                                                    </node>
                                                                    <node concept="iZEcu" id="fweninXn9I" role="2OqNvi" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="gl6BB" id="5W7E4fV0Xkm" role="1bW2Oz">
                                                              <property role="TrG5h" value="it" />
                                                              <node concept="2jxLKc" id="5W7E4fV0Xkn" role="1tU5fm" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="ANE8D" id="4MOdh09mqwv" role="2OqNvi" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="4MOdh09lPIl" role="2Oq$k0">
                                            <node concept="37vLTw" id="4MOdh09lNtB" role="2Oq$k0">
                                              <ref role="3cqZAo" node="fweninXbMP" resolve="mpsProject" />
                                            </node>
                                            <node concept="liA8E" id="4MOdh09lRH7" role="2OqNvi">
                                              <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
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
                      <node concept="3clFbH" id="66ocHI7CqPj" role="3cqZAp" />
                      <node concept="3cpWs8" id="66ocHI7CoQi" role="3cqZAp">
                        <node concept="3cpWsn" id="66ocHI7CoQj" role="3cpWs9">
                          <property role="TrG5h" value="chooserDialog" />
                          <node concept="3uibUv" id="66ocHI7CoQk" role="1tU5fm">
                            <ref role="3uigEE" to="qfni:m2MuEX6obZ" resolve="NodeChooserDialog" />
                          </node>
                          <node concept="2ShNRf" id="66ocHI7CoQm" role="33vP2m">
                            <node concept="1pGfFk" id="66ocHI7CoQo" role="2ShVmc">
                              <ref role="37wK5l" to="qfni:m2MuEX6oc1" resolve="NodeChooserDialog" />
                              <node concept="37vLTw" id="25rknuvJEa3" role="37wK5m">
                                <ref role="3cqZAo" node="25rknuvJE9V" resolve="project" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTAQD" role="37wK5m">
                                <ref role="3cqZAo" node="14R2qyOCnQK" resolve="toChooseFrom" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="66ocHI7CqQE" role="3cqZAp">
                        <node concept="2OqwBi" id="66ocHI7CqR0" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTwQP" role="2Oq$k0">
                            <ref role="3cqZAo" node="66ocHI7CoQj" resolve="chooserDialog" />
                          </node>
                          <node concept="liA8E" id="66ocHI7CqR7" role="2OqNvi">
                            <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="fweninXzK$" role="3cqZAp">
                        <node concept="3cpWsn" id="fweninXzK_" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <node concept="3uibUv" id="fweninXzK4" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                          </node>
                          <node concept="2OqwBi" id="fweninXzKA" role="33vP2m">
                            <node concept="37vLTw" id="fweninXzKB" role="2Oq$k0">
                              <ref role="3cqZAo" node="66ocHI7CoQj" resolve="chooserDialog" />
                            </node>
                            <node concept="liA8E" id="fweninXzKC" role="2OqNvi">
                              <ref role="37wK5l" to="qfni:L4W0vZ$xq2" resolve="getResult" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="fweninXFM0" role="3cqZAp">
                        <node concept="3clFbS" id="fweninXFM2" role="3clFbx">
                          <node concept="3clFbF" id="2P21tSVn6ux" role="3cqZAp">
                            <node concept="1rXfSq" id="2P21tSVn6uv" role="3clFbG">
                              <ref role="37wK5l" node="14R2qyOCnMy" resolve="setNode" />
                              <node concept="37vLTw" id="2P21tSVn7Lt" role="37wK5m">
                                <ref role="3cqZAo" node="fweninXzK_" resolve="result" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="EdexLh2G7t" role="3cqZAp">
                            <node concept="1rXfSq" id="EdexLh2G7r" role="3clFbG">
                              <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String)" resolve="setText" />
                              <node concept="2OqwBi" id="EdexLh34ws" role="37wK5m">
                                <node concept="2ShNRf" id="EdexLh2Hl8" role="2Oq$k0">
                                  <node concept="1pGfFk" id="EdexLh32za" role="2ShVmc">
                                    <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                                    <node concept="2OqwBi" id="fweninXCBf" role="37wK5m">
                                      <node concept="37vLTw" id="fweninXBIo" role="2Oq$k0">
                                        <ref role="3cqZAo" node="fweninXbMP" resolve="mpsProject" />
                                      </node>
                                      <node concept="liA8E" id="fweninXCVo" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="EdexLh35sD" role="2OqNvi">
                                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                                  <node concept="1bVj0M" id="1KUoCipvBms" role="37wK5m">
                                    <node concept="3clFbS" id="1KUoCipvBmt" role="1bW5cS">
                                      <node concept="3cpWs8" id="25rknuvFAiz" role="3cqZAp">
                                        <node concept="3cpWsn" id="25rknuvFAi$" role="3cpWs9">
                                          <property role="TrG5h" value="resultNode" />
                                          <node concept="3Tqbb2" id="25rknuvFAid" role="1tU5fm" />
                                          <node concept="2OqwBi" id="fweninXK8Y" role="33vP2m">
                                            <node concept="37vLTw" id="fweninXDXY" role="2Oq$k0">
                                              <ref role="3cqZAo" node="fweninXzK_" resolve="result" />
                                            </node>
                                            <node concept="liA8E" id="fweninXKet" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                              <node concept="2OqwBi" id="fweninXMDu" role="37wK5m">
                                                <node concept="37vLTw" id="fweninXLOZ" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="fweninXbMP" resolve="mpsProject" />
                                                </node>
                                                <node concept="liA8E" id="fweninXN48" role="2OqNvi">
                                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs6" id="EdexLh38D2" role="3cqZAp">
                                        <node concept="3K4zz7" id="EdexLh3dy5" role="3cqZAk">
                                          <node concept="10Nm6u" id="EdexLh3eIw" role="3K4E3e" />
                                          <node concept="3clFbC" id="EdexLh3ckf" role="3K4Cdx">
                                            <node concept="10Nm6u" id="EdexLh3dpo" role="3uHU7w" />
                                            <node concept="37vLTw" id="EdexLh3b1G" role="3uHU7B">
                                              <ref role="3cqZAo" node="25rknuvFAi$" resolve="resultNode" />
                                            </node>
                                          </node>
                                          <node concept="1rXfSq" id="2P21tSVndgf" role="3K4GZi">
                                            <ref role="37wK5l" node="EdexLh2_Wq" resolve="getFqName" />
                                            <node concept="37vLTw" id="2P21tSVnfCh" role="37wK5m">
                                              <ref role="3cqZAo" node="25rknuvFAi$" resolve="resultNode" />
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
                        <node concept="3y3z36" id="fweninXHTz" role="3clFbw">
                          <node concept="10Nm6u" id="fweninXIPl" role="3uHU7w" />
                          <node concept="37vLTw" id="fweninXGQJ" role="3uHU7B">
                            <ref role="3cqZAo" node="fweninXzK_" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_UvTB" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2P21tSVo3aY" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXofC2" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXofC3" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofC4" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofC5" role="1PaTwD">
              <property role="3oM_SC" value="support" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofC6" role="1PaTwD">
              <property role="3oM_SC" value="entering" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofC7" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofC8" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofC9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofCa" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofCb" role="1PaTwD">
              <property role="3oM_SC" value="manually" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2P21tSVnZL1" role="3cqZAp">
          <node concept="1rXfSq" id="2P21tSVnZKZ" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setEditable(boolean)" resolve="setEditable" />
            <node concept="3clFbT" id="2P21tSVo1ji" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GpjhL" role="jymVt" />
    <node concept="3clFb_" id="14R2qyOCnMi" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findToChooseFromOnInit" />
      <node concept="2I9FWS" id="14R2qyOCnMj" role="3clF45" />
      <node concept="3Tmbuc" id="14R2qyOCnMk" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCnMl" role="3clF47" />
      <node concept="37vLTG" id="14R2qyOCnMm" role="3clF46">
        <property role="TrG5h" value="manager" />
        <node concept="3uibUv" id="6Knue6ZPyex" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
        </node>
      </node>
      <node concept="37vLTG" id="4MOdh09l9ft" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4MOdh09lceF" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCnMo" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="14R2qyOCnMp" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GpjhO" role="jymVt" />
    <node concept="3clFb_" id="14R2qyOCnMq" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3uibUv" id="2P21tSVnmca" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="14R2qyOCnMs" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCnMt" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCnMu" role="3cqZAp">
          <node concept="2OqwBi" id="2q2JH_NuQe9" role="3clFbG">
            <node concept="Xjq3P" id="2q2JH_NuQea" role="2Oq$k0" />
            <node concept="2OwXpG" id="2q2JH_NuQeb" role="2OqNvi">
              <ref role="2Oxat5" node="14R2qyOCnPQ" resolve="myNodePointer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2P21tSVnmXi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GpjhP" role="jymVt" />
    <node concept="3clFb_" id="14R2qyOCnMy" role="jymVt">
      <property role="TrG5h" value="setNode" />
      <node concept="3cqZAl" id="14R2qyOCnMz" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCnM$" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCnM_" role="3clF47">
        <node concept="3clFbF" id="2P21tSVnRWj" role="3cqZAp">
          <node concept="37vLTI" id="2P21tSVnTsa" role="3clFbG">
            <node concept="37vLTw" id="2P21tSVnUKJ" role="37vLTx">
              <ref role="3cqZAo" node="14R2qyOCnNr" resolve="node" />
            </node>
            <node concept="37vLTw" id="2P21tSVnRWh" role="37vLTJ">
              <ref role="3cqZAo" node="14R2qyOCnPQ" resolve="myNodePointer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCnNr" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2P21tSVngKx" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GpjhQ" role="jymVt" />
    <node concept="2YIFZL" id="EdexLh2_Wq" role="jymVt">
      <property role="TrG5h" value="getFqName" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="14R2qyOCnNw" role="3clF47">
        <node concept="3cpWs8" id="14R2qyOCnNI" role="3cqZAp">
          <node concept="3cpWsn" id="14R2qyOCnNJ" role="3cpWs9">
            <property role="TrG5h" value="modelName" />
            <node concept="17QB3L" id="14R2qyOCnNK" role="1tU5fm" />
            <node concept="2OqwBi" id="1$jl23lAMVk" role="33vP2m">
              <node concept="LkI2h" id="fweninXQ53" role="2OqNvi" />
              <node concept="2OqwBi" id="1$jl23lALFH" role="2Oq$k0">
                <node concept="37vLTw" id="1$jl23lAIYo" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOCnOf" resolve="node" />
                </node>
                <node concept="I4A8Y" id="1$jl23lAM2$" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="YJX_InPiPy" role="3cqZAp" />
        <node concept="3SKdUt" id="2P21tSVo9bv" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXofCc" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXofCd" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofCe" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofCf" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofCg" role="1PaTwD">
              <property role="3oM_SC" value="node.getFqName" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofCh" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="ATZLwXofCi" role="1PaTwD">
              <property role="3oM_SC" value="node/.getPresentation?" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="YJX_InPhx1" role="3cqZAp">
          <node concept="3cpWsn" id="YJX_InPhx4" role="3cpWs9">
            <property role="TrG5h" value="nodeName" />
            <node concept="17QB3L" id="YJX_InPhwZ" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="14R2qyOCnNx" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCnNy" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmP7M" role="2Oq$k0">
              <ref role="3cqZAo" node="14R2qyOCnOf" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="14R2qyOCnN$" role="2OqNvi">
              <node concept="chp4Y" id="14R2qyOCnN_" role="cj9EA">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="14R2qyOCnNA" role="3clFbx">
            <node concept="3clFbF" id="YJX_InPh$Q" role="3cqZAp">
              <node concept="37vLTI" id="YJX_InPi0P" role="3clFbG">
                <node concept="37vLTw" id="YJX_InPh$P" role="37vLTJ">
                  <ref role="3cqZAo" node="YJX_InPhx4" resolve="nodeName" />
                </node>
                <node concept="2OqwBi" id="14R2qyOCnNC" role="37vLTx">
                  <node concept="1PxgMI" id="14R2qyOCnND" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgm_sJ" role="1m5AlR">
                      <ref role="3cqZAo" node="14R2qyOCnOf" resolve="node" />
                    </node>
                    <node concept="chp4Y" id="714IaVdH084" role="3oSUPX">
                      <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="YJX_InOWWf" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="14R2qyOCnNG" role="9aQIa">
            <node concept="3clFbS" id="14R2qyOCnNH" role="9aQI4">
              <node concept="3clFbF" id="YJX_InPikb" role="3cqZAp">
                <node concept="37vLTI" id="YJX_InPiJN" role="3clFbG">
                  <node concept="37vLTw" id="YJX_InPika" role="37vLTJ">
                    <ref role="3cqZAo" node="YJX_InPhx4" resolve="nodeName" />
                  </node>
                  <node concept="2OqwBi" id="14R2qyOCnO9" role="37vLTx">
                    <node concept="2OqwBi" id="14R2qyOCnOa" role="2Oq$k0">
                      <node concept="liA8E" id="24cAaiUz$k9" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                      </node>
                      <node concept="2JrnkZ" id="14R2qyOCnOb" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxgmAiv" role="2JrQYb">
                          <ref role="3cqZAo" node="14R2qyOCnOf" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="14R2qyOCnOe" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="YJX_InPiV$" role="3cqZAp" />
        <node concept="3clFbJ" id="14R2qyOCnNR" role="3cqZAp">
          <node concept="3clFbS" id="14R2qyOCnNS" role="3clFbx">
            <node concept="3cpWs6" id="14R2qyOCnNT" role="3cqZAp">
              <node concept="37vLTw" id="YJX_InPiXg" role="3cqZAk">
                <ref role="3cqZAo" node="YJX_InPhx4" resolve="nodeName" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="14R2qyOCnO0" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTzpz" role="2Oq$k0">
              <ref role="3cqZAo" node="14R2qyOCnNJ" resolve="modelName" />
            </node>
            <node concept="17RlXB" id="YJX_InPncB" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="14R2qyOCnO4" role="3cqZAp">
          <node concept="3cpWs3" id="14R2qyOCnO5" role="3cqZAk">
            <node concept="3cpWs3" id="14R2qyOCnO6" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTy6U" role="3uHU7B">
                <ref role="3cqZAo" node="14R2qyOCnNJ" resolve="modelName" />
              </node>
              <node concept="1Xhbcc" id="2P21tSVo4Tu" role="3uHU7w">
                <property role="1XhdNS" value="." />
              </node>
            </node>
            <node concept="37vLTw" id="YJX_InPiMw" role="3uHU7w">
              <ref role="3cqZAo" node="YJX_InPhx4" resolve="nodeName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCnOf" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="14R2qyOCnOg" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="14R2qyOCnNu" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCnNv" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="14R2qyOCo9f">
    <property role="TrG5h" value="FieldWithPathChooseDialog" />
    <node concept="3uibUv" id="3HvR9IHMwvI" role="1zkMxy">
      <ref role="3uigEE" to="jkm4:~TextFieldWithBrowseButton$NoPathCompletion" resolve="TextFieldWithBrowseButton.NoPathCompletion" />
    </node>
    <node concept="3Tm1VV" id="14R2qyOCoaq" role="1B3o_S" />
    <node concept="312cEg" id="14R2qyOCobR" role="jymVt">
      <property role="TrG5h" value="myChooser" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="14R2qyOCobS" role="1B3o_S" />
      <node concept="3uibUv" id="14R2qyOCobT" role="1tU5fm">
        <ref role="3uigEE" to="3fkn:~FileChooserDescriptor" resolve="FileChooserDescriptor" />
      </node>
    </node>
    <node concept="3clFbW" id="14R2qyOCoar" role="jymVt">
      <node concept="3cqZAl" id="14R2qyOCoas" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCoat" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCoau" role="3clF47">
        <node concept="1VxSAg" id="5CmzFdK2$J1" role="3cqZAp">
          <ref role="37wK5l" node="5CmzFdK2$Io" resolve="FieldWithPathChooseDialog" />
          <node concept="2ShNRf" id="14R2qyOCoaB" role="37wK5m">
            <node concept="1pGfFk" id="14R2qyOCoaC" role="2ShVmc">
              <ref role="37wK5l" to="3fkn:~FileChooserDescriptor.&lt;init&gt;(boolean,boolean,boolean,boolean,boolean,boolean)" resolve="FileChooserDescriptor" />
              <node concept="3clFbT" id="14R2qyOCoaD" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="14R2qyOCoaE" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="14R2qyOCoaF" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="14R2qyOCoaG" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="14R2qyOCoaH" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="14R2qyOCoaI" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="5CmzFdK2$Io" role="jymVt">
      <node concept="37vLTG" id="5CmzFdK2$I_" role="3clF46">
        <property role="TrG5h" value="descriptor" />
        <node concept="3uibUv" id="5CmzFdK2$IB" role="1tU5fm">
          <ref role="3uigEE" to="3fkn:~FileChooserDescriptor" resolve="FileChooserDescriptor" />
        </node>
      </node>
      <node concept="3cqZAl" id="5CmzFdK2$Ip" role="3clF45" />
      <node concept="3Tm1VV" id="5CmzFdK2$Iq" role="1B3o_S" />
      <node concept="3clFbS" id="5CmzFdK2$Ir" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCoa_" role="3cqZAp">
          <node concept="37vLTI" id="14R2qyOCoaA" role="3clFbG">
            <node concept="2OqwBi" id="14R2qyOCoaJ" role="37vLTJ">
              <node concept="2OwXpG" id="14R2qyOCoaK" role="2OqNvi">
                <ref role="2Oxat5" node="14R2qyOCobR" resolve="myChooser" />
              </node>
              <node concept="Xjq3P" id="14R2qyOCoaL" role="2Oq$k0" />
            </node>
            <node concept="37vLTw" id="2BHiRxglI6M" role="37vLTx">
              <ref role="3cqZAo" node="5CmzFdK2$I_" resolve="descriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HvR9IHMDSY" role="3cqZAp">
          <node concept="1rXfSq" id="3HvR9IHMDSX" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
            <node concept="2ShNRf" id="14R2qyOCoaQ" role="37wK5m">
              <node concept="YeOm9" id="14R2qyOCoaR" role="2ShVmc">
                <node concept="1Y3b0j" id="14R2qyOCoaS" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                  <node concept="3Tm1VV" id="14R2qyOCoaT" role="1B3o_S" />
                  <node concept="3clFb_" id="14R2qyOCoaU" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="actionPerformed" />
                    <node concept="3Tm1VV" id="14R2qyOCoaV" role="1B3o_S" />
                    <node concept="3cqZAl" id="14R2qyOCoaW" role="3clF45" />
                    <node concept="37vLTG" id="14R2qyOCoaX" role="3clF46">
                      <property role="TrG5h" value="p0" />
                      <node concept="3uibUv" id="14R2qyOCoaY" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="14R2qyOCoaZ" role="3clF47">
                      <node concept="3cpWs8" id="14R2qyOCob0" role="3cqZAp">
                        <node concept="3cpWsn" id="14R2qyOCob1" role="3cpWs9">
                          <property role="TrG5h" value="dialog" />
                          <node concept="3uibUv" id="14R2qyOCob2" role="1tU5fm">
                            <ref role="3uigEE" to="3fkn:~FileChooserDialog" resolve="FileChooserDialog" />
                          </node>
                          <node concept="2OqwBi" id="14R2qyOCob3" role="33vP2m">
                            <node concept="2YIFZM" id="14R2qyOCob4" role="2Oq$k0">
                              <ref role="1Pybhc" to="3fkn:~FileChooserFactory" resolve="FileChooserFactory" />
                              <ref role="37wK5l" to="3fkn:~FileChooserFactory.getInstance()" resolve="getInstance" />
                            </node>
                            <node concept="liA8E" id="14R2qyOCob5" role="2OqNvi">
                              <ref role="37wK5l" to="3fkn:~FileChooserFactory.createFileChooser(com.intellij.openapi.fileChooser.FileChooserDescriptor,com.intellij.openapi.project.Project,java.awt.Component)" resolve="createFileChooser" />
                              <node concept="2OqwBi" id="14R2qyOCob6" role="37wK5m">
                                <node concept="2OwXpG" id="14R2qyOCob7" role="2OqNvi">
                                  <ref role="2Oxat5" node="14R2qyOCobR" resolve="myChooser" />
                                </node>
                                <node concept="Xjq3P" id="14R2qyOCob8" role="2Oq$k0">
                                  <ref role="1HBi2w" node="14R2qyOCo9f" resolve="FieldWithPathChooseDialog" />
                                </node>
                              </node>
                              <node concept="10Nm6u" id="43Bo99sSxpp" role="37wK5m" />
                              <node concept="Xjq3P" id="14R2qyOCob9" role="37wK5m">
                                <ref role="1HBi2w" node="14R2qyOCo9f" resolve="FieldWithPathChooseDialog" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="14R2qyOCoba" role="3cqZAp">
                        <node concept="3cpWsn" id="14R2qyOCobb" role="3cpWs9">
                          <property role="TrG5h" value="selectedFiles" />
                          <node concept="10Q1$e" id="14R2qyOCobc" role="1tU5fm">
                            <node concept="3uibUv" id="14R2qyOCobd" role="10Q1$1">
                              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="14R2qyOCobe" role="33vP2m">
                            <node concept="37vLTw" id="3GM_nagT$A3" role="2Oq$k0">
                              <ref role="3cqZAo" node="14R2qyOCob1" resolve="dialog" />
                            </node>
                            <node concept="liA8E" id="14R2qyOCobg" role="2OqNvi">
                              <ref role="37wK5l" to="3fkn:~FileChooserDialog.choose(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile...)" resolve="choose" />
                              <node concept="10Nm6u" id="14R2qyOCobh" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="14R2qyOCobj" role="3cqZAp">
                        <node concept="3clFbS" id="14R2qyOCobk" role="3clFbx">
                          <node concept="3clFbF" id="14R2qyOCobl" role="3cqZAp">
                            <node concept="2OqwBi" id="14R2qyOCobm" role="3clFbG">
                              <node concept="Xjq3P" id="14R2qyOCobn" role="2Oq$k0">
                                <ref role="1HBi2w" node="14R2qyOCo9f" resolve="FieldWithPathChooseDialog" />
                              </node>
                              <node concept="liA8E" id="14R2qyOCobo" role="2OqNvi">
                                <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String)" resolve="setText" />
                                <node concept="2OqwBi" id="14R2qyOCobp" role="37wK5m">
                                  <node concept="AH0OO" id="14R2qyOCobq" role="2Oq$k0">
                                    <node concept="3cmrfG" id="14R2qyOCobr" role="AHEQo">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTuUo" role="AHHXb">
                                      <ref role="3cqZAo" node="14R2qyOCobb" resolve="selectedFiles" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="14R2qyOCobt" role="2OqNvi">
                                    <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="14R2qyOCobu" role="3clFbw">
                          <node concept="3y3z36" id="14R2qyOCobv" role="3uHU7w">
                            <node concept="10Nm6u" id="14R2qyOCobw" role="3uHU7w" />
                            <node concept="AH0OO" id="14R2qyOCobx" role="3uHU7B">
                              <node concept="3cmrfG" id="14R2qyOCoby" role="AHEQo">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTyV0" role="AHHXb">
                                <ref role="3cqZAo" node="14R2qyOCobb" resolve="selectedFiles" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eOSWO" id="14R2qyOCob$" role="3uHU7B">
                            <node concept="3cmrfG" id="14R2qyOCob_" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="2OqwBi" id="14R2qyOCobA" role="3uHU7B">
                              <node concept="37vLTw" id="3GM_nagTBKQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="14R2qyOCobb" resolve="selectedFiles" />
                              </node>
                              <node concept="1Rwk04" id="14R2qyOCobC" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_UBJe" role="2AJF6D">
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
    <node concept="3clFb_" id="14R2qyOCo9g" role="jymVt">
      <property role="TrG5h" value="setEditable" />
      <node concept="3cqZAl" id="14R2qyOCo9h" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCo9i" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCo9j" role="3clF47">
        <node concept="3clFbF" id="3HvR9IHN7Vc" role="3cqZAp">
          <node concept="3nyPlj" id="3HvR9IHN7Va" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setEditable(boolean)" resolve="setEditable" />
            <node concept="37vLTw" id="3HvR9IHN88h" role="37wK5m">
              <ref role="3cqZAo" node="14R2qyOCo9$" resolve="editable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HvR9IHMEE8" role="3cqZAp">
          <node concept="2OqwBi" id="3HvR9IHMF5H" role="3clFbG">
            <node concept="1rXfSq" id="3HvR9IHMEE7" role="2Oq$k0">
              <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.getButton()" resolve="getButton" />
            </node>
            <node concept="liA8E" id="3HvR9IHML1J" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="37vLTw" id="3HvR9IHMLaj" role="37wK5m">
                <ref role="3cqZAo" node="14R2qyOCo9$" resolve="editable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCo9$" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="14R2qyOCo9_" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCo9A" role="jymVt">
      <property role="TrG5h" value="getEditable" />
      <node concept="10P_77" id="14R2qyOCo9B" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCo9C" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCo9D" role="3clF47">
        <node concept="3clFbF" id="3HvR9IHMOR5" role="3cqZAp">
          <node concept="1rXfSq" id="3HvR9IHMOR4" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.isEditable()" resolve="isEditable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCo9K" role="jymVt">
      <property role="TrG5h" value="setTitle" />
      <node concept="3cqZAl" id="14R2qyOCo9L" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCo9M" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCo9N" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCo9O" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCo9P" role="3clFbG">
            <node concept="2OqwBi" id="14R2qyOCo9Q" role="2Oq$k0">
              <node concept="2OwXpG" id="14R2qyOCo9R" role="2OqNvi">
                <ref role="2Oxat5" node="14R2qyOCobR" resolve="myChooser" />
              </node>
              <node concept="Xjq3P" id="14R2qyOCo9S" role="2Oq$k0" />
            </node>
            <node concept="liA8E" id="14R2qyOCo9T" role="2OqNvi">
              <ref role="37wK5l" to="3fkn:~FileChooserDescriptor.setTitle(java.lang.String)" resolve="setTitle" />
              <node concept="37vLTw" id="2BHiRxghfiI" role="37wK5m">
                <ref role="3cqZAo" node="14R2qyOCo9V" resolve="title" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCo9V" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="14R2qyOCo9W" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCo9X" role="jymVt">
      <property role="TrG5h" value="getTitle" />
      <node concept="17QB3L" id="14R2qyOCo9Y" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCo9Z" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCoa0" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCoa1" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCoa2" role="3clFbG">
            <node concept="2OqwBi" id="14R2qyOCoa3" role="2Oq$k0">
              <node concept="2OwXpG" id="14R2qyOCoa4" role="2OqNvi">
                <ref role="2Oxat5" node="14R2qyOCobR" resolve="myChooser" />
              </node>
              <node concept="Xjq3P" id="14R2qyOCoa5" role="2Oq$k0" />
            </node>
            <node concept="liA8E" id="14R2qyOCoa6" role="2OqNvi">
              <ref role="37wK5l" to="3fkn:~FileChooserDescriptor.getTitle()" resolve="getTitle" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="14R2qyOCoc1">
    <property role="TrG5h" value="RawLineEditorComponent" />
    <node concept="3uibUv" id="3HvR9IHMORx" role="1zkMxy">
      <ref role="3uigEE" to="jkm4:~TextFieldWithBrowseButton" resolve="TextFieldWithBrowseButton" />
    </node>
    <node concept="3Tm1VV" id="14R2qyOCocX" role="1B3o_S" />
    <node concept="312cEg" id="14R2qyOCocU" role="jymVt">
      <property role="TrG5h" value="myDialogCaption" />
      <node concept="3Tm6S6" id="14R2qyOCocV" role="1B3o_S" />
      <node concept="17QB3L" id="14R2qyOCocW" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="14R2qyOCocY" role="jymVt">
      <node concept="3cqZAl" id="14R2qyOCocZ" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCod0" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCod1" role="3clF47">
        <node concept="3clFbF" id="3HvR9IHMPtq" role="3cqZAp">
          <node concept="1rXfSq" id="3HvR9IHMPtp" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
            <node concept="2ShNRf" id="14R2qyOCodc" role="37wK5m">
              <node concept="YeOm9" id="14R2qyOCodd" role="2ShVmc">
                <node concept="1Y3b0j" id="14R2qyOCode" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                  <node concept="3Tm1VV" id="14R2qyOCodf" role="1B3o_S" />
                  <node concept="3clFb_" id="14R2qyOCodg" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="actionPerformed" />
                    <node concept="3Tm1VV" id="14R2qyOCodh" role="1B3o_S" />
                    <node concept="3cqZAl" id="14R2qyOCodi" role="3clF45" />
                    <node concept="37vLTG" id="14R2qyOCodj" role="3clF46">
                      <property role="TrG5h" value="p0" />
                      <node concept="3uibUv" id="14R2qyOCodk" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="14R2qyOCodl" role="3clF47">
                      <node concept="3clFbF" id="14R2qyOCodm" role="3cqZAp">
                        <node concept="2YIFZM" id="14R2qyOCodn" role="3clFbG">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showTextAreaDialog(javax.swing.JTextField,java.lang.String,java.lang.String)" resolve="showTextAreaDialog" />
                          <node concept="2OqwBi" id="14R2qyOCodo" role="37wK5m">
                            <node concept="Xjq3P" id="14R2qyOCodr" role="2Oq$k0">
                              <ref role="1HBi2w" node="14R2qyOCoc1" resolve="RawLineEditorComponent" />
                            </node>
                            <node concept="liA8E" id="14R2qyOCods" role="2OqNvi">
                              <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getTextField()" resolve="getTextField" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="14R2qyOCodt" role="37wK5m">
                            <node concept="2OwXpG" id="14R2qyOCodu" role="2OqNvi">
                              <ref role="2Oxat5" node="14R2qyOCocU" resolve="myDialogCaption" />
                            </node>
                            <node concept="Xjq3P" id="14R2qyOCodv" role="2Oq$k0">
                              <ref role="1HBi2w" node="14R2qyOCoc1" resolve="RawLineEditorComponent" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="14R2qyOCodw" role="37wK5m">
                            <property role="Xl_RC" value="EditParametersPopupWindow" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_S5PC" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HvR9IHMW23" role="3cqZAp">
          <node concept="1rXfSq" id="3HvR9IHMW22" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.setButtonIcon(javax.swing.Icon)" resolve="setButtonIcon" />
            <node concept="10M0yZ" id="2bADoQZf7cv" role="37wK5m">
              <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.ShowCode" resolve="ShowCode" />
              <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14R2qyOCodY" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCodZ" role="3clFbG">
            <node concept="liA8E" id="14R2qyOCoe0" role="2OqNvi">
              <ref role="37wK5l" node="14R2qyOCocw" resolve="setDescriptor" />
              <node concept="10Nm6u" id="14R2qyOCoe1" role="37wK5m" />
            </node>
            <node concept="Xjq3P" id="14R2qyOCoe2" role="2Oq$k0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCocc" role="jymVt">
      <property role="TrG5h" value="setDialogCaption" />
      <node concept="3cqZAl" id="14R2qyOCocd" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCoce" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCocf" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCocg" role="3cqZAp">
          <node concept="37vLTI" id="14R2qyOCoch" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmpNb" role="37vLTx">
              <ref role="3cqZAo" node="14R2qyOCocm" resolve="value" />
            </node>
            <node concept="2OqwBi" id="14R2qyOCocj" role="37vLTJ">
              <node concept="2OwXpG" id="14R2qyOCock" role="2OqNvi">
                <ref role="2Oxat5" node="14R2qyOCocU" resolve="myDialogCaption" />
              </node>
              <node concept="Xjq3P" id="14R2qyOCocl" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCocm" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="14R2qyOCocn" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCoco" role="jymVt">
      <property role="TrG5h" value="getDialodCaption" />
      <node concept="17QB3L" id="14R2qyOCocp" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCocq" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCocr" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCocs" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCoct" role="3clFbG">
            <node concept="2OwXpG" id="14R2qyOCocu" role="2OqNvi">
              <ref role="2Oxat5" node="14R2qyOCocU" resolve="myDialogCaption" />
            </node>
            <node concept="Xjq3P" id="14R2qyOCocv" role="2Oq$k0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCocw" role="jymVt">
      <property role="TrG5h" value="setDescriptor" />
      <node concept="3cqZAl" id="14R2qyOCocx" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCocy" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCocz" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCoc$" role="3cqZAp">
          <node concept="2YIFZM" id="14R2qyOCoc_" role="3clFbG">
            <ref role="1Pybhc" to="lzb2:~InsertPathAction" resolve="InsertPathAction" />
            <ref role="37wK5l" to="lzb2:~InsertPathAction.addTo(javax.swing.text.JTextComponent,com.intellij.openapi.fileChooser.FileChooserDescriptor)" resolve="addTo" />
            <node concept="1rXfSq" id="3HvR9IHN3Ff" role="37wK5m">
              <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getTextField()" resolve="getTextField" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmert" role="37wK5m">
              <ref role="3cqZAo" node="14R2qyOCocG" resolve="descriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCocG" role="3clF46">
        <property role="TrG5h" value="descriptor" />
        <node concept="3uibUv" id="14R2qyOCocH" role="1tU5fm">
          <ref role="3uigEE" to="3fkn:~FileChooserDescriptor" resolve="FileChooserDescriptor" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7Mz_zRJBlIN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setEditable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7Mz_zRJBlIQ" role="3clF47">
        <node concept="3clFbF" id="3HvR9IHN7Co" role="3cqZAp">
          <node concept="3nyPlj" id="3HvR9IHN7Cm" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setEditable(boolean)" resolve="setEditable" />
            <node concept="37vLTw" id="3HvR9IHN7Pt" role="37wK5m">
              <ref role="3cqZAo" node="7Mz_zRJBlKX" resolve="editable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HvR9IHN3Yx" role="3cqZAp">
          <node concept="2OqwBi" id="3HvR9IHN4w5" role="3clFbG">
            <node concept="1rXfSq" id="3HvR9IHN3Yw" role="2Oq$k0">
              <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.getButton()" resolve="getButton" />
            </node>
            <node concept="liA8E" id="3HvR9IHN7u6" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="37vLTw" id="3HvR9IHN7yp" role="37wK5m">
                <ref role="3cqZAo" node="7Mz_zRJBlKX" resolve="editable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Mz_zRJBlGF" role="1B3o_S" />
      <node concept="3cqZAl" id="7Mz_zRJBlIL" role="3clF45" />
      <node concept="37vLTG" id="7Mz_zRJBlKX" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="7Mz_zRJBlKW" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7byHRlLC1T4">
    <property role="TrG5h" value="NodeByConceptChooser" />
    <property role="3GE5qa" value="nodeChooser" />
    <node concept="3uibUv" id="7byHRlLC1T5" role="1zkMxy">
      <ref role="3uigEE" node="14R2qyOCnM1" resolve="NodeChooser" />
    </node>
    <node concept="3Tm1VV" id="7byHRlLC1Ts" role="1B3o_S" />
    <node concept="312cEg" id="7byHRlLC1Tf" role="jymVt">
      <property role="TrG5h" value="myTargetConcept" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7byHRlLC1Tg" role="1B3o_S" />
      <node concept="2AHcQZ" id="7byHRlLC1Ti" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3bZ5Sz" id="_dGddVSIr7" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7byHRlLC1Tj" role="jymVt">
      <property role="TrG5h" value="myAcceptor" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7byHRlLC1Tk" role="1B3o_S" />
      <node concept="2AHcQZ" id="7byHRlLC1To" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="1ajhzC" id="3FS7wUTooZ$" role="1tU5fm">
        <node concept="3Tqbb2" id="3FS7wUTooZ_" role="1ajw0F" />
        <node concept="10P_77" id="3FS7wUTooZA" role="1ajl9A" />
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5uDx" role="jymVt" />
    <node concept="3clFbW" id="7byHRlLC1T6" role="jymVt">
      <node concept="3cqZAl" id="7byHRlLC1T7" role="3clF45" />
      <node concept="3Tm1VV" id="7byHRlLC1T8" role="1B3o_S" />
      <node concept="3clFbS" id="7byHRlLC1T9" role="3clF47">
        <node concept="1VxSAg" id="7byHRlLC1Ta" role="3cqZAp">
          <ref role="37wK5l" node="7byHRlLC1Tt" resolve="NodeByConceptChooser" />
          <node concept="35c_gC" id="_dGddVT0E3" role="37wK5m">
            <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
          </node>
          <node concept="10Nm6u" id="7byHRlLC1Te" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5vfe" role="jymVt" />
    <node concept="3clFbW" id="7byHRlLC1Tt" role="jymVt">
      <node concept="3cqZAl" id="7byHRlLC1Tu" role="3clF45" />
      <node concept="3Tm1VV" id="7byHRlLC1Tv" role="1B3o_S" />
      <node concept="3clFbS" id="7byHRlLC1Tw" role="3clF47">
        <node concept="XkiVB" id="7byHRlLC1Tx" role="3cqZAp">
          <ref role="37wK5l" node="14R2qyOCnQi" resolve="NodeChooser" />
        </node>
        <node concept="3clFbH" id="7byHRlLC1Ty" role="3cqZAp" />
        <node concept="3clFbF" id="7byHRlLC1Tz" role="3cqZAp">
          <node concept="37vLTI" id="7byHRlLC1T$" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuPDJ" role="37vLTJ">
              <ref role="3cqZAo" node="7byHRlLC1Tf" resolve="myTargetConcept" />
            </node>
            <node concept="37vLTw" id="2BHiRxglCz0" role="37vLTx">
              <ref role="3cqZAo" node="7byHRlLC3ot" resolve="conceptFqName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7byHRlLC1TB" role="3cqZAp">
          <node concept="37vLTI" id="7byHRlLC1TC" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm5YV" role="37vLTx">
              <ref role="3cqZAo" node="7byHRlLC1Uv" resolve="acceptor" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuCs$" role="37vLTJ">
              <ref role="3cqZAo" node="7byHRlLC1Tj" resolve="myAcceptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7byHRlLC3ot" role="3clF46">
        <property role="TrG5h" value="conceptFqName" />
        <node concept="3bZ5Sz" id="_dGddVSIhU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7byHRlLC1Uv" role="3clF46">
        <property role="TrG5h" value="acceptor" />
        <node concept="2AHcQZ" id="7byHRlLC1Uz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="1ajhzC" id="3FS7wUToq9n" role="1tU5fm">
          <node concept="3Tqbb2" id="3FS7wUToq9o" role="1ajw0F" />
          <node concept="10P_77" id="3FS7wUToq9p" role="1ajl9A" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5wuo" role="jymVt" />
    <node concept="3clFb_" id="7byHRlLC1U$" role="jymVt">
      <property role="TrG5h" value="getTargetConcept" />
      <node concept="3bZ5Sz" id="_dGddVSIIN" role="3clF45" />
      <node concept="3Tm1VV" id="7byHRlLC1UA" role="1B3o_S" />
      <node concept="3clFbS" id="7byHRlLC1UB" role="3clF47">
        <node concept="3clFbF" id="7byHRlLC1UC" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuneH" role="3clFbG">
            <ref role="3cqZAo" node="7byHRlLC1Tf" resolve="myTargetConcept" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5x47" role="jymVt" />
    <node concept="3clFb_" id="7byHRlLC1UE" role="jymVt">
      <property role="TrG5h" value="setTargetConcept" />
      <node concept="3cqZAl" id="7byHRlLC1UF" role="3clF45" />
      <node concept="3Tm1VV" id="7byHRlLC1UG" role="1B3o_S" />
      <node concept="3clFbS" id="7byHRlLC1UH" role="3clF47">
        <node concept="3clFbF" id="7byHRlLC1UI" role="3cqZAp">
          <node concept="37vLTI" id="7byHRlLC1UJ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm6Rt" role="37vLTx">
              <ref role="3cqZAo" node="7byHRlLC1UM" resolve="targetConcept" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuO1T" role="37vLTJ">
              <ref role="3cqZAo" node="7byHRlLC1Tf" resolve="myTargetConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7byHRlLC1UM" role="3clF46">
        <property role="TrG5h" value="targetConcept" />
        <node concept="3bZ5Sz" id="_dGddVSKp1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5xDZ" role="jymVt" />
    <node concept="3clFb_" id="7byHRlLC1UO" role="jymVt">
      <property role="TrG5h" value="getAcceptor" />
      <node concept="1ajhzC" id="7byHRlLC1UP" role="3clF45">
        <node concept="3Tqbb2" id="7byHRlLC1UQ" role="1ajw0F" />
        <node concept="10P_77" id="7byHRlLC1UR" role="1ajl9A" />
      </node>
      <node concept="3Tm1VV" id="7byHRlLC1US" role="1B3o_S" />
      <node concept="3clFbS" id="7byHRlLC1UT" role="3clF47">
        <node concept="3clFbF" id="7byHRlLC1UU" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuwdk" role="3clFbG">
            <ref role="3cqZAo" node="7byHRlLC1Tj" resolve="myAcceptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5yfK" role="jymVt" />
    <node concept="3clFb_" id="7byHRlLC1UW" role="jymVt">
      <property role="TrG5h" value="setAcceptor" />
      <node concept="3clFbS" id="7byHRlLC1UX" role="3clF47">
        <node concept="3clFbF" id="7byHRlLC1UY" role="3cqZAp">
          <node concept="37vLTI" id="7byHRlLC1UZ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfCq" role="37vLTx">
              <ref role="3cqZAo" node="7byHRlLC1V2" resolve="acceptor" />
            </node>
            <node concept="37vLTw" id="2BHiRxeulwI" role="37vLTJ">
              <ref role="3cqZAo" node="7byHRlLC1Tj" resolve="myAcceptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7byHRlLC1V2" role="3clF46">
        <property role="TrG5h" value="acceptor" />
        <node concept="1ajhzC" id="3FS7wUTorkc" role="1tU5fm">
          <node concept="3Tqbb2" id="3FS7wUTorkd" role="1ajw0F" />
          <node concept="10P_77" id="3FS7wUTorke" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="7byHRlLC1V6" role="3clF45" />
      <node concept="3Tm1VV" id="7byHRlLC1V7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6mg1qHf5yPy" role="jymVt" />
    <node concept="3clFb_" id="7byHRlLC1V8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findToChooseFromOnInit" />
      <node concept="2I9FWS" id="7byHRlLC1V9" role="3clF45" />
      <node concept="3Tmbuc" id="7byHRlLC1Va" role="1B3o_S" />
      <node concept="37vLTG" id="7byHRlLC1Vb" role="3clF46">
        <property role="TrG5h" value="manager" />
        <node concept="3uibUv" id="6Knue6ZP2p$" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
        </node>
      </node>
      <node concept="37vLTG" id="4MOdh09ljps" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4MOdh09ljpt" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="7byHRlLC1Vd" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="7byHRlLC1Ve" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3clFbS" id="7byHRlLC1Vf" role="3clF47">
        <node concept="3cpWs8" id="7byHRlLC1Vg" role="3cqZAp">
          <node concept="3cpWsn" id="7byHRlLC1Vh" role="3cpWs9">
            <property role="TrG5h" value="instances" />
            <node concept="2OqwBi" id="L8C0ASL7s5" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxglJSd" role="2Oq$k0">
                <ref role="3cqZAo" node="7byHRlLC1Vb" resolve="manager" />
              </node>
              <node concept="liA8E" id="L8C0ASL7s7" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~FindUsagesFacade.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                <node concept="37vLTw" id="4MOdh09llnk" role="37wK5m">
                  <ref role="3cqZAo" node="4MOdh09ljps" resolve="scope" />
                </node>
                <node concept="2YIFZM" id="L8C0ASL7s8" role="37wK5m">
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                  <node concept="37vLTw" id="_dGddVSNiZ" role="37wK5m">
                    <ref role="3cqZAo" node="7byHRlLC1Tf" resolve="myTargetConcept" />
                  </node>
                </node>
                <node concept="3clFbT" id="6Knue6Z3v6J" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="37vLTw" id="2BHiRxghfHd" role="37wK5m">
                  <ref role="3cqZAo" node="7byHRlLC1Vd" resolve="monitor" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7byHRlLC1Vi" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="L8C0ASL7iX" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7byHRlLC1Vx" role="3cqZAp">
          <node concept="3clFbS" id="7byHRlLC1Vy" role="3clFbx">
            <node concept="3cpWs6" id="7byHRlLC1Vz" role="3cqZAp">
              <node concept="2ShNRf" id="7byHRlLC1V$" role="3cqZAk">
                <node concept="Tc6Ow" id="7byHRlLC1V_" role="2ShVmc">
                  <node concept="3Tqbb2" id="7byHRlLC1VA" role="HW$YZ" />
                  <node concept="37vLTw" id="3GM_nagTARg" role="I$8f6">
                    <ref role="3cqZAo" node="7byHRlLC1Vh" resolve="instances" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7byHRlLC1VC" role="3clFbw">
            <node concept="10Nm6u" id="7byHRlLC1VD" role="3uHU7w" />
            <node concept="2OqwBi" id="7byHRlLC1VE" role="3uHU7B">
              <node concept="2OwXpG" id="7byHRlLC1VF" role="2OqNvi">
                <ref role="2Oxat5" node="7byHRlLC1Tj" resolve="myAcceptor" />
              </node>
              <node concept="Xjq3P" id="7byHRlLC1VG" role="2Oq$k0" />
            </node>
          </node>
          <node concept="9aQIb" id="7byHRlLC1VH" role="9aQIa">
            <node concept="3clFbS" id="7byHRlLC1VI" role="9aQI4">
              <node concept="3cpWs6" id="7byHRlLC1VJ" role="3cqZAp">
                <node concept="2OqwBi" id="7byHRlLC1VK" role="3cqZAk">
                  <node concept="2OqwBi" id="7byHRlLC1VL" role="2Oq$k0">
                    <node concept="2ShNRf" id="7byHRlLC1VM" role="2Oq$k0">
                      <node concept="Tc6Ow" id="7byHRlLC1VN" role="2ShVmc">
                        <node concept="3Tqbb2" id="7byHRlLC1VO" role="HW$YZ" />
                        <node concept="37vLTw" id="3GM_nagTzFk" role="I$8f6">
                          <ref role="3cqZAo" node="7byHRlLC1Vh" resolve="instances" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zZkjj" id="7byHRlLC1VQ" role="2OqNvi">
                      <node concept="1bVj0M" id="7byHRlLC1VR" role="23t8la">
                        <node concept="3clFbS" id="7byHRlLC1VS" role="1bW5cS">
                          <node concept="3clFbF" id="7byHRlLC1VT" role="3cqZAp">
                            <node concept="2OqwBi" id="7byHRlLC1VU" role="3clFbG">
                              <node concept="2OqwBi" id="7byHRlLC1VV" role="2Oq$k0">
                                <node concept="2OwXpG" id="7byHRlLC1VW" role="2OqNvi">
                                  <ref role="2Oxat5" node="7byHRlLC1Tj" resolve="myAcceptor" />
                                </node>
                                <node concept="Xjq3P" id="7byHRlLC1VX" role="2Oq$k0" />
                              </node>
                              <node concept="1Bd96e" id="7byHRlLC1VY" role="2OqNvi">
                                <node concept="37vLTw" id="2BHiRxgm8FB" role="1BdPVh">
                                  <ref role="3cqZAo" node="5W7E4fV0Xko" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Xko" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Xkp" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="7byHRlLC1W2" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RU9B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7byHRlLCxS0">
    <property role="TrG5h" value="NodeBySeveralConceptChooser" />
    <property role="3GE5qa" value="nodeChooser" />
    <node concept="3Tm1VV" id="7byHRlLCxSk" role="1B3o_S" />
    <node concept="3uibUv" id="7byHRlLCxTY" role="1zkMxy">
      <ref role="3uigEE" node="14R2qyOCnM1" resolve="NodeChooser" />
    </node>
    <node concept="312cEg" id="7byHRlLCxS1" role="jymVt">
      <property role="TrG5h" value="myTargetConcepts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7byHRlLCxS2" role="1B3o_S" />
      <node concept="2AHcQZ" id="7byHRlLCxS3" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="_YKpA" id="7byHRlLCxS4" role="1tU5fm">
        <node concept="3uibUv" id="6XGccOtv4Pc" role="_ZDj9">
          <ref role="3uigEE" to="awpe:6XGccOtuKPk" resolve="NodesFilter" />
        </node>
      </node>
      <node concept="2ShNRf" id="7byHRlLCxSa" role="33vP2m">
        <node concept="Tc6Ow" id="7byHRlLCxSb" role="2ShVmc" />
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5tV1" role="jymVt" />
    <node concept="3clFbW" id="7byHRlLCxSl" role="jymVt">
      <node concept="37vLTG" id="7byHRlLCxSm" role="3clF46">
        <property role="TrG5h" value="targets" />
        <node concept="8X2XB" id="7byHRlLCxSn" role="1tU5fm">
          <node concept="2pR195" id="7osd9LNygdh" role="8Xvag">
            <ref role="3uigEE" to="awpe:7osd9LNxQRM" resolve="NodesDescriptor" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7byHRlLCxSt" role="3clF45" />
      <node concept="3Tm1VV" id="7byHRlLCxSu" role="1B3o_S" />
      <node concept="3clFbS" id="7byHRlLCxSv" role="3clF47">
        <node concept="1VxSAg" id="7byHRlLCxSw" role="3cqZAp">
          <ref role="37wK5l" node="6XGccOty7C$" resolve="NodeBySeveralConceptChooser" />
          <node concept="2OqwBi" id="7byHRlLCxSx" role="37wK5m">
            <node concept="2OqwBi" id="6XGccOtwzXU" role="2Oq$k0">
              <node concept="2OqwBi" id="7byHRlLCxSy" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxghf5A" role="2Oq$k0">
                  <ref role="3cqZAo" node="7byHRlLCxSm" resolve="targets" />
                </node>
                <node concept="39bAoz" id="7byHRlLCxS$" role="2OqNvi" />
              </node>
              <node concept="3$u5V9" id="6XGccOtwBp7" role="2OqNvi">
                <node concept="1bVj0M" id="6XGccOtwBp9" role="23t8la">
                  <node concept="3clFbS" id="6XGccOtwBpa" role="1bW5cS">
                    <node concept="3clFbF" id="6XGccOtwH3Q" role="3cqZAp">
                      <node concept="2ShNRf" id="6XGccOtwH3O" role="3clFbG">
                        <node concept="1pGfFk" id="6XGccOtxuQN" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" node="6XGccOtvrKx" resolve="NodeBySeveralConceptChooser.NodesFilterAdapter" />
                          <node concept="37vLTw" id="6XGccOtx_D4" role="37wK5m">
                            <ref role="3cqZAo" node="6XGccOtwBpb" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="6XGccOtwBpb" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6XGccOtwBpc" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7byHRlLCxS_" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6XGccOt$tNj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5tiu" role="jymVt" />
    <node concept="3clFbW" id="7byHRlLCxSA" role="jymVt">
      <node concept="37vLTG" id="7byHRlLCxSB" role="3clF46">
        <property role="TrG5h" value="targets" />
        <node concept="_YKpA" id="7byHRlLCxSC" role="1tU5fm">
          <node concept="2pR195" id="7osd9LNzjeg" role="_ZDj9">
            <ref role="3uigEE" to="awpe:7osd9LNxQRM" resolve="NodesDescriptor" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7byHRlLCxSI" role="3clF45" />
      <node concept="3Tm1VV" id="7byHRlLCxSJ" role="1B3o_S" />
      <node concept="3clFbS" id="7byHRlLCxSK" role="3clF47">
        <node concept="1VxSAg" id="6XGccOtzJpt" role="3cqZAp">
          <ref role="37wK5l" node="6XGccOty7C$" resolve="NodeBySeveralConceptChooser" />
          <node concept="2OqwBi" id="6XGccOtzQ5_" role="37wK5m">
            <node concept="1eOMI4" id="6XGccOt$ijk" role="2Oq$k0">
              <node concept="2OqwBi" id="6XGccOt$iiW" role="1eOMHV">
                <node concept="37vLTw" id="6XGccOt$iiX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7byHRlLCxSB" resolve="targets" />
                </node>
                <node concept="3$u5V9" id="6XGccOt$iiY" role="2OqNvi">
                  <node concept="1bVj0M" id="6XGccOt$iiZ" role="23t8la">
                    <property role="3yWfEV" value="true" />
                    <node concept="3clFbS" id="6XGccOt$ij0" role="1bW5cS">
                      <node concept="3clFbF" id="6XGccOt$ij1" role="3cqZAp">
                        <node concept="2ry78W" id="6XGccOt$ij2" role="3clFbG">
                          <ref role="2ryb1Q" to="awpe:7osd9LNxQRM" resolve="NodesDescriptor" />
                          <node concept="2r$n1x" id="6XGccOt$ij3" role="2r_Bvh">
                            <ref role="2r$qp6" to="awpe:7osd9LNxR41" resolve="concept" />
                            <node concept="3K4zz7" id="6XGccOt$ij4" role="2r_lH1">
                              <node concept="35c_gC" id="6XGccOt$ij5" role="3K4E3e">
                                <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              </node>
                              <node concept="2OqwBi" id="6XGccOt$ij6" role="3K4GZi">
                                <node concept="37vLTw" id="6XGccOt$ij7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6XGccOt$iji" resolve="it" />
                                </node>
                                <node concept="2sxana" id="6XGccOt$ij8" role="2OqNvi">
                                  <ref role="2sxfKC" to="awpe:7osd9LNxR41" resolve="concept" />
                                </node>
                              </node>
                              <node concept="3clFbC" id="6XGccOt$ij9" role="3K4Cdx">
                                <node concept="10Nm6u" id="6XGccOt$ija" role="3uHU7w" />
                                <node concept="2OqwBi" id="6XGccOt$ijb" role="3uHU7B">
                                  <node concept="37vLTw" id="6XGccOt$ijc" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6XGccOt$iji" resolve="it" />
                                  </node>
                                  <node concept="2sxana" id="6XGccOt$ijd" role="2OqNvi">
                                    <ref role="2sxfKC" to="awpe:7osd9LNxR41" resolve="concept" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2r$n1x" id="6XGccOt$ije" role="2r_Bvh">
                            <ref role="2r$qp6" to="awpe:7osd9LNxRxi" resolve="filter" />
                            <node concept="2OqwBi" id="6XGccOt$ijf" role="2r_lH1">
                              <node concept="37vLTw" id="6XGccOt$ijg" role="2Oq$k0">
                                <ref role="3cqZAo" node="6XGccOt$iji" resolve="it" />
                              </node>
                              <node concept="2sxana" id="6XGccOt$ijh" role="2OqNvi">
                                <ref role="2sxfKC" to="awpe:7osd9LNxRxi" resolve="filter" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="6XGccOt$iji" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6XGccOt$ijj" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$u5V9" id="6XGccOtzTgV" role="2OqNvi">
              <node concept="1bVj0M" id="6XGccOtzTgX" role="23t8la">
                <node concept="3clFbS" id="6XGccOtzTgY" role="1bW5cS">
                  <node concept="3clFbF" id="6XGccOtzYJ8" role="3cqZAp">
                    <node concept="2ShNRf" id="6XGccOtzYJ6" role="3clFbG">
                      <node concept="1pGfFk" id="6XGccOt$8bl" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" node="6XGccOtvrKx" resolve="NodeBySeveralConceptChooser.NodesFilterAdapter" />
                        <node concept="37vLTw" id="6XGccOt$f_p" role="37wK5m">
                          <ref role="3cqZAo" node="6XGccOtzTgZ" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="6XGccOtzTgZ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6XGccOtzTh0" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6XGccOt$yDn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="6XGccOty3hZ" role="jymVt" />
    <node concept="3clFbW" id="6XGccOty7C$" role="jymVt">
      <node concept="37vLTG" id="6XGccOtyaZg" role="3clF46">
        <property role="TrG5h" value="filters" />
        <node concept="A3Dl8" id="6XGccOtyYAo" role="1tU5fm">
          <node concept="3qUE_q" id="6XGccOtCG1A" role="A3Ik2">
            <node concept="3uibUv" id="6XGccOtCOTP" role="3qUE_r">
              <ref role="3uigEE" to="awpe:6XGccOtuKPk" resolve="NodesFilter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6XGccOty7CA" role="3clF45" />
      <node concept="3Tm1VV" id="6XGccOty7CB" role="1B3o_S" />
      <node concept="3clFbS" id="6XGccOty7CC" role="3clF47">
        <node concept="3clFbF" id="6XGccOtyskd" role="3cqZAp">
          <node concept="2OqwBi" id="6XGccOtyx2s" role="3clFbG">
            <node concept="37vLTw" id="6XGccOtyskc" role="2Oq$k0">
              <ref role="3cqZAo" node="7byHRlLCxS1" resolve="myTargetConcepts" />
            </node>
            <node concept="X8dFx" id="6XGccOty_vf" role="2OqNvi">
              <node concept="37vLTw" id="6XGccOtyL78" role="25WWJ7">
                <ref role="3cqZAo" node="6XGccOtyaZg" resolve="filters" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6mg1qHf5sEE" role="jymVt" />
    <node concept="3clFb_" id="7byHRlLCxTZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findToChooseFromOnInit" />
      <node concept="2I9FWS" id="7byHRlLCxU0" role="3clF45" />
      <node concept="3Tmbuc" id="7byHRlLCxU1" role="1B3o_S" />
      <node concept="37vLTG" id="7byHRlLCxU2" role="3clF46">
        <property role="TrG5h" value="manager" />
        <node concept="3uibUv" id="6Knue6ZPi4I" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
        </node>
      </node>
      <node concept="37vLTG" id="4MOdh09lmFV" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4MOdh09lmFW" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="7byHRlLCxU4" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="7byHRlLCxU5" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3clFbS" id="7byHRlLCxU6" role="3clF47">
        <node concept="3clFbF" id="7byHRlLCxU7" role="3cqZAp">
          <node concept="10QFUN" id="7byHRlLCxU8" role="3clFbG">
            <node concept="2I9FWS" id="7byHRlLCxU9" role="10QFUM" />
            <node concept="1eOMI4" id="7byHRlLCxUa" role="10QFUP">
              <node concept="2OqwBi" id="7byHRlLCxUb" role="1eOMHV">
                <node concept="2OqwBi" id="7byHRlLCxUc" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeudD9" role="2Oq$k0">
                    <ref role="3cqZAo" node="7byHRlLCxS1" resolve="myTargetConcepts" />
                  </node>
                  <node concept="3goQfb" id="7byHRlLCxUe" role="2OqNvi">
                    <node concept="1bVj0M" id="7byHRlLCxUf" role="23t8la">
                      <node concept="3clFbS" id="7byHRlLCxUg" role="1bW5cS">
                        <node concept="3cpWs8" id="7byHRlLCxUh" role="3cqZAp">
                          <node concept="3cpWsn" id="7byHRlLCxUi" role="3cpWs9">
                            <property role="TrG5h" value="targetConcept" />
                            <node concept="2OqwBi" id="7osd9LNzLXH" role="33vP2m">
                              <node concept="37vLTw" id="7osd9LNzLlc" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Xku" resolve="filter" />
                              </node>
                              <node concept="liA8E" id="6XGccOt$CNJ" role="2OqNvi">
                                <ref role="37wK5l" to="awpe:6XGccOtuQ1u" resolve="getConcept" />
                              </node>
                            </node>
                            <node concept="3bZ5Sz" id="_dGddVUkeU" role="1tU5fm" />
                          </node>
                        </node>
                        <node concept="3cpWs8" id="7byHRlLCxUv" role="3cqZAp">
                          <node concept="3cpWsn" id="7byHRlLCxUw" role="3cpWs9">
                            <property role="TrG5h" value="instances" />
                            <node concept="2OqwBi" id="L8C0ASNG6G" role="33vP2m">
                              <node concept="37vLTw" id="2BHiRxglyJF" role="2Oq$k0">
                                <ref role="3cqZAo" node="7byHRlLCxU2" resolve="manager" />
                              </node>
                              <node concept="liA8E" id="L8C0ASNG6I" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~FindUsagesFacade.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                                <node concept="37vLTw" id="4MOdh09loY6" role="37wK5m">
                                  <ref role="3cqZAo" node="4MOdh09lmFV" resolve="scope" />
                                </node>
                                <node concept="2YIFZM" id="L8C0ASNG6J" role="37wK5m">
                                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                                  <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                                  <node concept="37vLTw" id="_dGddVUlYA" role="37wK5m">
                                    <ref role="3cqZAo" node="7byHRlLCxUi" resolve="targetConcept" />
                                  </node>
                                </node>
                                <node concept="3clFbT" id="6Knue6Z4fHf" role="37wK5m">
                                  <property role="3clFbU" value="false" />
                                </node>
                                <node concept="2OqwBi" id="4r6gfc$Y4eU" role="37wK5m">
                                  <node concept="37vLTw" id="2BHiRxglCt$" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7byHRlLCxU4" resolve="monitor" />
                                  </node>
                                  <node concept="liA8E" id="4r6gfc$Y5eY" role="2OqNvi">
                                    <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                                    <node concept="3cmrfG" id="4r6gfc$Y85R" role="37wK5m">
                                      <property role="3cmrfH" value="10" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2hMVRd" id="4ZAQAeIG9qa" role="1tU5fm">
                              <node concept="3uibUv" id="L8C0ASNFX5" role="2hN53Y">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="7byHRlLCxUR" role="3cqZAp">
                          <node concept="2OqwBi" id="7byHRlLCxUT" role="3cqZAk">
                            <node concept="3zZkjj" id="7byHRlLCxUY" role="2OqNvi">
                              <node concept="1bVj0M" id="7byHRlLCxUZ" role="23t8la">
                                <node concept="3clFbS" id="7byHRlLCxV0" role="1bW5cS">
                                  <node concept="3clFbF" id="7byHRlLCxV1" role="3cqZAp">
                                    <node concept="2OqwBi" id="6XGccOtBNep" role="3clFbG">
                                      <node concept="37vLTw" id="6XGccOtBLwZ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Xku" resolve="filter" />
                                      </node>
                                      <node concept="liA8E" id="6XGccOtBRGD" role="2OqNvi">
                                        <ref role="37wK5l" to="awpe:6XGccOtuOY9" resolve="accept" />
                                        <node concept="37vLTw" id="6XGccOtBWCN" role="37wK5m">
                                          <ref role="3cqZAo" node="5W7E4fV0Xks" resolve="it" />
                                        </node>
                                        <node concept="1bVj0M" id="6XGccOtC4Y9" role="37wK5m">
                                          <node concept="gl6BB" id="6XGccOtC4Yk" role="1bW2Oz">
                                            <property role="TrG5h" value="s" />
                                            <node concept="2jxLKc" id="6XGccOtC4Yl" role="1tU5fm" />
                                          </node>
                                          <node concept="3clFbS" id="6XGccOtC52I" role="1bW5cS" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0Xks" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0Xkt" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="3GM_nagTwBO" role="2Oq$k0">
                              <ref role="3cqZAo" node="7byHRlLCxUw" resolve="instances" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xku" role="1bW2Oz">
                        <property role="TrG5h" value="filter" />
                        <node concept="2jxLKc" id="5W7E4fV0Xkv" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="7byHRlLCxVb" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SaR0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6XGccOtvb5D" role="jymVt" />
    <node concept="312cEu" id="6XGccOtvdOf" role="jymVt">
      <property role="TrG5h" value="NodesFilterAdapter" />
      <node concept="2tJIrI" id="6XGccOtvqjn" role="jymVt" />
      <node concept="3Tm6S6" id="6XGccOtxTMV" role="1B3o_S" />
      <node concept="3uibUv" id="6XGccOtvp0S" role="1zkMxy">
        <ref role="3uigEE" to="awpe:6XGccOtuKPk" resolve="NodesFilter" />
      </node>
      <node concept="312cEg" id="6XGccOtvP5d" role="jymVt">
        <property role="TrG5h" value="myFilter" />
        <node concept="3Tm6S6" id="6XGccOtvP59" role="1B3o_S" />
        <node concept="1ajhzC" id="6XGccOtvP5a" role="1tU5fm">
          <node concept="10P_77" id="6XGccOtvP5b" role="1ajl9A" />
          <node concept="3Tqbb2" id="6XGccOtvP5c" role="1ajw0F" />
        </node>
      </node>
      <node concept="2tJIrI" id="6XGccOtvRxb" role="jymVt" />
      <node concept="3clFbW" id="6XGccOtvrKx" role="jymVt">
        <node concept="37vLTG" id="6XGccOtvrKy" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="2pR195" id="6XGccOtvxuL" role="1tU5fm">
            <ref role="3uigEE" to="awpe:7osd9LNxQRM" resolve="NodesDescriptor" />
          </node>
        </node>
        <node concept="3cqZAl" id="6XGccOtvrK$" role="3clF45" />
        <node concept="3Tm1VV" id="6XGccOtvrK_" role="1B3o_S" />
        <node concept="3clFbS" id="6XGccOtvrKF" role="3clF47">
          <node concept="XkiVB" id="6XGccOtvrKH" role="3cqZAp">
            <ref role="37wK5l" to="awpe:6XGccOtuOGj" resolve="NodesFilter" />
            <node concept="2OqwBi" id="6XGccOtv_6l" role="37wK5m">
              <node concept="37vLTw" id="6XGccOtvrKG" role="2Oq$k0">
                <ref role="3cqZAo" node="6XGccOtvrKy" resolve="target" />
              </node>
              <node concept="2sxana" id="6XGccOtvAEK" role="2OqNvi">
                <ref role="2sxfKC" to="awpe:7osd9LNxR41" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6XGccOtvP5m" role="3cqZAp">
            <node concept="37vLTI" id="6XGccOtvP5n" role="3clFbG">
              <node concept="2OqwBi" id="6XGccOtvP5o" role="37vLTJ">
                <node concept="Xjq3P" id="6XGccOtvP5p" role="2Oq$k0" />
                <node concept="2OwXpG" id="6XGccOtvP5q" role="2OqNvi">
                  <ref role="2Oxat5" node="6XGccOtvP5d" resolve="myFilter" />
                </node>
              </node>
              <node concept="2OqwBi" id="6XGccOtA7QQ" role="37vLTx">
                <node concept="37vLTw" id="6XGccOtA63G" role="2Oq$k0">
                  <ref role="3cqZAo" node="6XGccOtvrKy" resolve="target" />
                </node>
                <node concept="2sxana" id="6XGccOtA8FV" role="2OqNvi">
                  <ref role="2sxfKC" to="awpe:7osd9LNxRxi" resolve="filter" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6XGccOtvvaH" role="jymVt" />
      <node concept="3clFb_" id="6XGccOtvrKI" role="jymVt">
        <property role="TrG5h" value="accept" />
        <node concept="37vLTG" id="6XGccOtvrKJ" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="6XGccOtvrKK" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="6XGccOtvrKL" role="3clF46">
          <property role="TrG5h" value="errorCollector" />
          <node concept="3uibUv" id="6XGccOtvrKM" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
            <node concept="17QB3L" id="6XGccOtvrKN" role="11_B2D" />
          </node>
        </node>
        <node concept="10P_77" id="6XGccOtvrKO" role="3clF45" />
        <node concept="3Tm1VV" id="6XGccOtvrKP" role="1B3o_S" />
        <node concept="3clFbS" id="6XGccOtvrKR" role="3clF47">
          <node concept="3clFbJ" id="6XGccOtAdgx" role="3cqZAp">
            <node concept="3clFbS" id="6XGccOtAdgz" role="3clFbx">
              <node concept="3cpWs6" id="6XGccOtB7dO" role="3cqZAp">
                <node concept="2Sg_IR" id="6XGccOtwoEU" role="3cqZAk">
                  <node concept="37vLTw" id="6XGccOtwoEV" role="2SgG2M">
                    <ref role="3cqZAo" node="6XGccOtvP5d" resolve="myFilter" />
                  </node>
                  <node concept="37vLTw" id="6XGccOtwx9o" role="2SgHGx">
                    <ref role="3cqZAo" node="6XGccOtvrKJ" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6XGccOtArAZ" role="3clFbw">
              <node concept="10Nm6u" id="6XGccOtAy1m" role="3uHU7w" />
              <node concept="37vLTw" id="6XGccOtAnKK" role="3uHU7B">
                <ref role="3cqZAo" node="6XGccOtvP5d" resolve="myFilter" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6XGccOtBtFP" role="3cqZAp">
            <node concept="3clFbT" id="6XGccOtBtFO" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6XGccOtvrKS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1DeqbSMDT0o">
    <property role="TrG5h" value="ListPanel" />
    <property role="3GE5qa" value="" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="1T5iP2aaNIk" role="1zkMxy">
      <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
    </node>
    <node concept="312cEg" id="1DeqbSMDT0p" role="jymVt">
      <property role="TrG5h" value="myLock" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3m2egpBLL_2" role="1B3o_S" />
      <node concept="3uibUv" id="1DeqbSMDT0r" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="1DeqbSMDT0s" role="33vP2m">
        <node concept="1pGfFk" id="1DeqbSMDT0t" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1DeqbSMDT0u" role="jymVt">
      <property role="TrG5h" value="myListComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1T5iP2aaWci" role="1tU5fm">
        <ref role="3uigEE" to="qqrq:~JBList" resolve="JBList" />
      </node>
      <node concept="3Tm6S6" id="1DeqbSMDT0v" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1DeqbSMDT0x" role="jymVt">
      <property role="TrG5h" value="myValues" />
      <property role="3TUv4t" value="true" />
      <node concept="_YKpA" id="1DeqbSMDT0y" role="1tU5fm">
        <node concept="16syzq" id="1DeqbSMDT0z" role="_ZDj9">
          <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
        </node>
      </node>
      <node concept="3Tmbuc" id="1DeqbSMDT0$" role="1B3o_S" />
      <node concept="2ShNRf" id="1DeqbSMDT0_" role="33vP2m">
        <node concept="Tc6Ow" id="1DeqbSMDT0A" role="2ShVmc">
          <node concept="16syzq" id="1DeqbSMDT0B" role="HW$YZ">
            <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1DeqbSMDT0C" role="jymVt">
      <property role="TrG5h" value="myCandidates" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="1DeqbSMDT0D" role="1B3o_S" />
      <node concept="_YKpA" id="1DeqbSMDT0E" role="1tU5fm">
        <node concept="16syzq" id="1DeqbSMDT0F" role="_ZDj9">
          <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
        </node>
      </node>
      <node concept="2ShNRf" id="1DeqbSMDT0G" role="33vP2m">
        <node concept="Tc6Ow" id="1DeqbSMDT0H" role="2ShVmc">
          <node concept="16syzq" id="1DeqbSMDT0I" role="HW$YZ">
            <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1DeqbSMDT0J" role="jymVt">
      <property role="TrG5h" value="myListener" />
      <node concept="3uibUv" id="1DeqbSMDT0K" role="1tU5fm">
        <ref role="3uigEE" to="hyam:~ActionListener" resolve="ActionListener" />
      </node>
      <node concept="3Tm6S6" id="1DeqbSMDT0L" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1DeqbSMDT0M" role="jymVt">
      <property role="TrG5h" value="myListModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1DeqbSMDT0N" role="1B3o_S" />
      <node concept="3uibUv" id="1DeqbSMDT0O" role="1tU5fm">
        <ref role="3uigEE" node="1DeqbSMDT52" resolve="ListPanel.MyAbstractListModel" />
      </node>
    </node>
    <node concept="312cEg" id="1DeqbSMDT0P" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="1DeqbSMDT0Q" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tmbuc" id="_Qgg$$umA9" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2_AUN5Goh6w" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMpsProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2_AUN5Goe2Q" role="1B3o_S" />
      <node concept="3uibUv" id="2_AUN5Goh1J" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="2AHcQZ" id="4zlCqr6PcBQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="312cEg" id="1uIykzNJCyf" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myTitle" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1uIykzNJCpt" role="1B3o_S" />
      <node concept="17QB3L" id="1uIykzNJCyd" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7XbeqBAyo8l" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="isEditable" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7XbeqBAynZA" role="1B3o_S" />
      <node concept="10P_77" id="7XbeqBA_wzc" role="1tU5fm" />
      <node concept="3clFbT" id="7XbeqBA_ztU" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GnJOg" role="jymVt" />
    <node concept="3clFbW" id="1DeqbSMDT0S" role="jymVt">
      <node concept="3clFbS" id="1DeqbSMDT0T" role="3clF47">
        <node concept="3clFbF" id="65jjYivhqok" role="3cqZAp">
          <node concept="37vLTI" id="65jjYivhrgi" role="3clFbG">
            <node concept="37vLTw" id="65jjYivhrRL" role="37vLTx">
              <ref role="3cqZAo" node="65jjYivhliQ" resolve="p" />
            </node>
            <node concept="37vLTw" id="65jjYivhqoi" role="37vLTJ">
              <ref role="3cqZAo" node="1DeqbSMDT0P" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_AUN5Gom$N" role="3cqZAp">
          <node concept="37vLTI" id="2_AUN5GooIS" role="3clFbG">
            <node concept="2YIFZM" id="2_AUN5GotzT" role="37vLTx">
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <node concept="37vLTw" id="2_AUN5Go_Gj" role="37wK5m">
                <ref role="3cqZAo" node="65jjYivhliQ" resolve="p" />
              </node>
            </node>
            <node concept="37vLTw" id="2_AUN5Gom$L" role="37vLTJ">
              <ref role="3cqZAo" node="2_AUN5Goh6w" resolve="myMpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1uIykzNJDTW" role="3cqZAp">
          <node concept="37vLTI" id="1uIykzNJE2y" role="3clFbG">
            <node concept="37vLTw" id="1uIykzNJJv4" role="37vLTx">
              <ref role="3cqZAo" node="1uIykzNJCEV" resolve="title" />
            </node>
            <node concept="37vLTw" id="1uIykzNJDTV" role="37vLTJ">
              <ref role="3cqZAo" node="1uIykzNJCyf" resolve="myTitle" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OiZBHE07OQ" role="3cqZAp" />
        <node concept="3clFbF" id="7OiZBHE04$Y" role="3cqZAp">
          <node concept="1rXfSq" id="7OiZBHE04$Z" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="7OiZBHE04_0" role="37wK5m">
              <node concept="1pGfFk" id="7OiZBHE04_1" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7OiZBHE04_2" role="3cqZAp">
          <node concept="3cpWsn" id="7OiZBHE04_3" role="3cpWs9">
            <property role="TrG5h" value="mainPanel" />
            <node concept="3uibUv" id="1T5iP2ab1us" role="1tU5fm">
              <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
            </node>
            <node concept="2ShNRf" id="7OiZBHE04_5" role="33vP2m">
              <node concept="1pGfFk" id="7OiZBHE04_6" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JBPanel" />
                <node concept="2ShNRf" id="7OiZBHE04_7" role="37wK5m">
                  <node concept="1pGfFk" id="7OiZBHE04_8" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OiZBHE04_9" role="3cqZAp" />
        <node concept="3clFbF" id="7OiZBHE04_a" role="3cqZAp">
          <node concept="37vLTI" id="7OiZBHE04_b" role="3clFbG">
            <node concept="2ShNRf" id="7OiZBHE04_c" role="37vLTx">
              <node concept="1pGfFk" id="7OiZBHE04_d" role="2ShVmc">
                <ref role="37wK5l" node="1DeqbSMDT54" resolve="ListPanel.MyAbstractListModel" />
              </node>
            </node>
            <node concept="37vLTw" id="7OiZBHE04_e" role="37vLTJ">
              <ref role="3cqZAo" node="1DeqbSMDT0M" resolve="myListModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OiZBHE04_f" role="3cqZAp">
          <node concept="37vLTI" id="7OiZBHE04_g" role="3clFbG">
            <node concept="37vLTw" id="7OiZBHE04_h" role="37vLTJ">
              <ref role="3cqZAo" node="1DeqbSMDT0u" resolve="myListComponent" />
            </node>
            <node concept="2ShNRf" id="7OiZBHE04_i" role="37vLTx">
              <node concept="1pGfFk" id="7OiZBHE04_j" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBList.&lt;init&gt;(javax.swing.ListModel)" resolve="JBList" />
                <node concept="37vLTw" id="7OiZBHE04_k" role="37wK5m">
                  <ref role="3cqZAo" node="1DeqbSMDT0M" resolve="myListModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7OiZBHE04_l" role="3cqZAp">
          <node concept="3cpWsn" id="7OiZBHE04_m" role="3cpWs9">
            <property role="TrG5h" value="scrolledListComponent" />
            <node concept="2YIFZM" id="6ury$Ihz9kS" role="33vP2m">
              <ref role="1Pybhc" to="lzb2:~ScrollPaneFactory" resolve="ScrollPaneFactory" />
              <ref role="37wK5l" to="lzb2:~ScrollPaneFactory.createScrollPane(java.awt.Component)" resolve="createScrollPane" />
              <node concept="37vLTw" id="6ury$Ihz9kT" role="37wK5m">
                <ref role="3cqZAo" node="1DeqbSMDT0u" resolve="myListComponent" />
              </node>
            </node>
            <node concept="3uibUv" id="7OiZBHE04_p" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OiZBHE04_q" role="3cqZAp">
          <node concept="2OqwBi" id="7OiZBHE04_r" role="3clFbG">
            <node concept="37vLTw" id="7OiZBHE04_s" role="2Oq$k0">
              <ref role="3cqZAo" node="7OiZBHE04_m" resolve="scrolledListComponent" />
            </node>
            <node concept="liA8E" id="7OiZBHE04_t" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.doLayout()" resolve="doLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OiZBHE04_u" role="3cqZAp">
          <node concept="2OqwBi" id="7OiZBHE04_v" role="3clFbG">
            <node concept="liA8E" id="7OiZBHE04_w" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="7OiZBHE04_x" role="37wK5m">
                <ref role="3cqZAo" node="7OiZBHE04_m" resolve="scrolledListComponent" />
              </node>
              <node concept="10M0yZ" id="7OiZBHE04_y" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              </node>
            </node>
            <node concept="37vLTw" id="7OiZBHE04_z" role="2Oq$k0">
              <ref role="3cqZAo" node="7OiZBHE04_3" resolve="mainPanel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1_3tIz5L7kt" role="3cqZAp">
          <node concept="3cpWsn" id="1_3tIz5L7ku" role="3cpWs9">
            <property role="TrG5h" value="scaledSz" />
            <node concept="10Oyi0" id="1_3tIz5L78z" role="1tU5fm" />
            <node concept="2YIFZM" id="1_3tIz5L7kv" role="33vP2m">
              <ref role="37wK5l" to="g1qu:~JBUI.scale(int)" resolve="scale" />
              <ref role="1Pybhc" to="g1qu:~JBUI" resolve="JBUI" />
              <node concept="3cmrfG" id="1_3tIz5M1e5" role="37wK5m">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_3tIz5KMjC" role="3cqZAp">
          <node concept="2OqwBi" id="1_3tIz5KOFv" role="3clFbG">
            <node concept="37vLTw" id="1_3tIz5KMjA" role="2Oq$k0">
              <ref role="3cqZAo" node="7OiZBHE04_3" resolve="mainPanel" />
            </node>
            <node concept="liA8E" id="1_3tIz5KPYA" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="1_3tIz5GxbH" role="37wK5m">
                <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty(int,int,int,int)" resolve="empty" />
                <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                <node concept="37vLTw" id="1_3tIz5L7kx" role="37wK5m">
                  <ref role="3cqZAo" node="1_3tIz5L7ku" resolve="scaledSz" />
                </node>
                <node concept="3cmrfG" id="1_3tIz5L$vn" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="1_3tIz5L7kz" role="37wK5m">
                  <ref role="3cqZAo" node="1_3tIz5L7ku" resolve="scaledSz" />
                </node>
                <node concept="3cmrfG" id="1_3tIz5L_KQ" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OiZBHE04_$" role="3cqZAp" />
        <node concept="3cpWs8" id="7OiZBHE04__" role="3cqZAp">
          <node concept="3cpWsn" id="7OiZBHE04_A" role="3cpWs9">
            <property role="TrG5h" value="add" />
            <node concept="2ShNRf" id="7OiZBHE04_B" role="33vP2m">
              <node concept="1pGfFk" id="7OiZBHE04_C" role="2ShVmc">
                <ref role="37wK5l" node="1DeqbSMDT5M" resolve="ListPanel.MyListAddAction" />
                <node concept="37vLTw" id="7OiZBHE04_D" role="37wK5m">
                  <ref role="3cqZAo" node="1DeqbSMDT0u" resolve="myListComponent" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7OiZBHE04_E" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7OiZBHE04_F" role="3cqZAp">
          <node concept="3cpWsn" id="7OiZBHE04_G" role="3cpWs9">
            <property role="TrG5h" value="remove" />
            <node concept="3uibUv" id="7OiZBHE04_H" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
            <node concept="2ShNRf" id="7OiZBHE04_I" role="33vP2m">
              <node concept="1pGfFk" id="7OiZBHE04_J" role="2ShVmc">
                <ref role="37wK5l" node="1DeqbSMDT7A" resolve="ListPanel.MyListRemoveAction" />
                <node concept="2OqwBi" id="7OiZBHE04_K" role="37wK5m">
                  <node concept="2OwXpG" id="7OiZBHE04_L" role="2OqNvi">
                    <ref role="2Oxat5" node="1DeqbSMDT0u" resolve="myListComponent" />
                  </node>
                  <node concept="Xjq3P" id="7OiZBHE04_M" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7OiZBHE04_N" role="3cqZAp">
          <node concept="3cpWsn" id="7OiZBHE04_O" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <node concept="2YIFZM" id="7OiZBHE04_P" role="33vP2m">
              <ref role="1Pybhc" to="7bx7:~ActionUtils" resolve="ActionUtils" />
              <ref role="37wK5l" to="7bx7:~ActionUtils.groupFromActions(com.intellij.openapi.actionSystem.AnAction...)" resolve="groupFromActions" />
              <node concept="37vLTw" id="7OiZBHE04_Q" role="37wK5m">
                <ref role="3cqZAo" node="7OiZBHE04_A" resolve="add" />
              </node>
              <node concept="37vLTw" id="7OiZBHE04_R" role="37wK5m">
                <ref role="3cqZAo" node="7OiZBHE04_G" resolve="remove" />
              </node>
            </node>
            <node concept="3uibUv" id="7OiZBHE04_S" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7OiZBHE04_T" role="3cqZAp">
          <node concept="3cpWsn" id="7OiZBHE04_U" role="3cpWs9">
            <property role="TrG5h" value="toolbar" />
            <node concept="3uibUv" id="7OiZBHE04_V" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~ActionToolbar" resolve="ActionToolbar" />
            </node>
            <node concept="2OqwBi" id="7OiZBHE04_W" role="33vP2m">
              <node concept="2YIFZM" id="7OiZBHE04_X" role="2Oq$k0">
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7OiZBHE04_Y" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean)" resolve="createActionToolbar" />
                <node concept="10M0yZ" id="4zlCqr6Pjov" role="37wK5m">
                  <ref role="3cqZAo" to="qkt:~ActionPlaces.RUN_CONFIGURATIONS_COMBOBOX" resolve="RUN_CONFIGURATIONS_COMBOBOX" />
                  <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                </node>
                <node concept="37vLTw" id="7OiZBHE04A0" role="37wK5m">
                  <ref role="3cqZAo" node="7OiZBHE04_O" resolve="group" />
                </node>
                <node concept="3clFbT" id="7OiZBHE04A1" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OiZBHE04A2" role="3cqZAp">
          <node concept="2OqwBi" id="7OiZBHE04A3" role="3clFbG">
            <node concept="liA8E" id="7OiZBHE04A4" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="2OqwBi" id="7OiZBHE04A5" role="37wK5m">
                <node concept="37vLTw" id="7OiZBHE04A6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7OiZBHE04_U" resolve="toolbar" />
                </node>
                <node concept="liA8E" id="7OiZBHE04A7" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
                </node>
              </node>
              <node concept="10M0yZ" id="7OiZBHE04A8" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.EAST" resolve="EAST" />
              </node>
            </node>
            <node concept="37vLTw" id="7OiZBHE04A9" role="2Oq$k0">
              <ref role="3cqZAo" node="7OiZBHE04_3" resolve="mainPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="66S5nDB5jUt" role="3cqZAp">
          <node concept="2OqwBi" id="66S5nDB5t3K" role="3clFbG">
            <node concept="37vLTw" id="66S5nDB5jUr" role="2Oq$k0">
              <ref role="3cqZAo" node="7OiZBHE04_U" resolve="toolbar" />
            </node>
            <node concept="liA8E" id="66S5nDB5_jQ" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~ActionToolbar.setTargetComponent(javax.swing.JComponent)" resolve="setTargetComponent" />
              <node concept="37vLTw" id="66S5nDB5TQW" role="37wK5m">
                <ref role="3cqZAo" node="7OiZBHE04_3" resolve="mainPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="66S5nDB5HjI" role="3cqZAp" />
        <node concept="3clFbF" id="7OiZBHE04Ab" role="3cqZAp">
          <node concept="1rXfSq" id="1_3tIz5KrTv" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2ShNRf" id="7OiZBHE04Af" role="37wK5m">
              <node concept="1pGfFk" id="7OiZBHE04Ag" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                <node concept="3cpWs3" id="7OiZBHE04Ah" role="37wK5m">
                  <node concept="Xl_RD" id="7OiZBHE04Ai" role="3uHU7w">
                    <property role="Xl_RC" value=":" />
                  </node>
                  <node concept="37vLTw" id="7OiZBHE04Aj" role="3uHU7B">
                    <ref role="3cqZAo" node="1uIykzNJCyf" resolve="myTitle" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1rwKMM" id="7OiZBHE04Ak" role="37wK5m">
              <property role="1rwKMK" value="label" />
              <node concept="3cmrfG" id="7OiZBHE04Al" role="1rxHDW">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OiZBHE04Am" role="3cqZAp">
          <node concept="1rXfSq" id="1_3tIz5KvPb" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="7OiZBHE04Aq" role="37wK5m">
              <ref role="3cqZAo" node="7OiZBHE04_3" resolve="mainPanel" />
            </node>
            <node concept="1rwKMM" id="7OiZBHE04Ar" role="37wK5m">
              <property role="1rwKMK" value="panel" />
              <node concept="3cmrfG" id="7OiZBHE04As" role="1rxHDW">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1DeqbSMDT0U" role="1B3o_S" />
      <node concept="3cqZAl" id="1DeqbSMDT0V" role="3clF45" />
      <node concept="37vLTG" id="65jjYivhliQ" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="65jjYivholO" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="1uIykzNJCEV" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="1uIykzNJCEU" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4zlCqr6TuIG" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT0W" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="wrap" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1DeqbSMDT0X" role="3clF47" />
      <node concept="3Tmbuc" id="1DeqbSMDT0Y" role="1B3o_S" />
      <node concept="16syzq" id="1DeqbSMDT0Z" role="3clF45">
        <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
      </node>
      <node concept="37vLTG" id="1DeqbSMDT10" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1DeqbSMDT11" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl0" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT12" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="unwrap" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1DeqbSMDT13" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="16syzq" id="1DeqbSMDT14" role="1tU5fm">
          <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="1DeqbSMDT15" role="3clF47" />
      <node concept="3Tmbuc" id="1DeqbSMDT16" role="1B3o_S" />
      <node concept="3uibUv" id="1DeqbSMDT17" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl1" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT18" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getPresentation" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1DeqbSMDT19" role="3clF47" />
      <node concept="3Tmbuc" id="1DeqbSMDT1a" role="1B3o_S" />
      <node concept="17QB3L" id="1DeqbSMDT1b" role="3clF45" />
      <node concept="37vLTG" id="1DeqbSMDT1c" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="16syzq" id="1DeqbSMDT1d" role="1tU5fm">
          <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl2" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT1m" role="jymVt">
      <property role="TrG5h" value="collectCandidates" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7bi2vNWiHMh" role="3clF46">
        <property role="TrG5h" value="progress" />
        <node concept="3uibUv" id="7bi2vNWiHMg" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tmbuc" id="1DeqbSMDT1n" role="1B3o_S" />
      <node concept="_YKpA" id="3m2egpBJ5nE" role="3clF45">
        <node concept="16syzq" id="3m2egpBJ9K8" role="_ZDj9">
          <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="1DeqbSMDT1p" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl3" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT1q" role="jymVt">
      <property role="TrG5h" value="addItem" />
      <node concept="3cqZAl" id="1DeqbSMDT1r" role="3clF45" />
      <node concept="3Tm1VV" id="1DeqbSMDT1s" role="1B3o_S" />
      <node concept="3clFbS" id="1DeqbSMDT1t" role="3clF47">
        <node concept="3clFbF" id="1DeqbSMDT1u" role="3cqZAp">
          <node concept="2OqwBi" id="1DeqbSMDT1v" role="3clFbG">
            <node concept="37vLTw" id="1DeqbSMDT1w" role="2Oq$k0">
              <ref role="3cqZAo" node="1DeqbSMDT0x" resolve="myValues" />
            </node>
            <node concept="TSZUe" id="1DeqbSMDT1x" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgmpNh" role="25WWJ7">
                <ref role="3cqZAo" node="1DeqbSMDT1B" resolve="item" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DeqbSMDT1z" role="3cqZAp">
          <node concept="2OqwBi" id="1DeqbSMDT1$" role="3clFbG">
            <node concept="37vLTw" id="1DeqbSMDT1_" role="2Oq$k0">
              <ref role="3cqZAo" node="1DeqbSMDT0u" resolve="myListComponent" />
            </node>
            <node concept="liA8E" id="1DeqbSMDT1A" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JList.updateUI()" resolve="updateUI" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DeqbSMDT1B" role="3clF46">
        <property role="TrG5h" value="item" />
        <node concept="16syzq" id="1DeqbSMDT1C" role="1tU5fm">
          <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl4" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT1D" role="jymVt">
      <property role="TrG5h" value="addActionListener" />
      <node concept="37vLTG" id="1DeqbSMDT1E" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="1DeqbSMDT1F" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~ActionListener" resolve="ActionListener" />
        </node>
      </node>
      <node concept="3clFbS" id="1DeqbSMDT1G" role="3clF47">
        <node concept="3clFbF" id="1DeqbSMDT1H" role="3cqZAp">
          <node concept="37vLTI" id="1DeqbSMDT1I" role="3clFbG">
            <node concept="37vLTw" id="1DeqbSMDT1J" role="37vLTJ">
              <ref role="3cqZAo" node="1DeqbSMDT0J" resolve="myListener" />
            </node>
            <node concept="37vLTw" id="2BHiRxghgrT" role="37vLTx">
              <ref role="3cqZAo" node="1DeqbSMDT1E" resolve="listener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1DeqbSMDT1L" role="3clF45" />
      <node concept="3Tm1VV" id="1DeqbSMDT1M" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl5" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT1N" role="jymVt">
      <property role="TrG5h" value="getItems" />
      <node concept="_YKpA" id="1DeqbSMDT1O" role="3clF45">
        <node concept="16syzq" id="1DeqbSMDT1P" role="_ZDj9">
          <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1DeqbSMDT1Q" role="1B3o_S" />
      <node concept="3clFbS" id="1DeqbSMDT1R" role="3clF47">
        <node concept="3clFbF" id="1DeqbSMDT1S" role="3cqZAp">
          <node concept="37vLTw" id="1DeqbSMDT1T" role="3clFbG">
            <ref role="3cqZAo" node="1DeqbSMDT0x" resolve="myValues" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl6" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT1U" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3clFbS" id="1DeqbSMDT1V" role="3clF47">
        <node concept="3clFbF" id="1DeqbSMDT1W" role="3cqZAp">
          <node concept="2OqwBi" id="1DeqbSMDT1X" role="3clFbG">
            <node concept="2Kehj3" id="4e2mRz0MWoH" role="2OqNvi" />
            <node concept="37vLTw" id="1DeqbSMDT20" role="2Oq$k0">
              <ref role="3cqZAo" node="1DeqbSMDT0x" resolve="myValues" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DeqbSMDT21" role="3cqZAp">
          <node concept="2OqwBi" id="1DeqbSMDT22" role="3clFbG">
            <node concept="37vLTw" id="1DeqbSMDT23" role="2Oq$k0">
              <ref role="3cqZAo" node="1DeqbSMDT0u" resolve="myListComponent" />
            </node>
            <node concept="liA8E" id="1DeqbSMDT24" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JList.updateUI()" resolve="updateUI" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1DeqbSMDT25" role="1B3o_S" />
      <node concept="3cqZAl" id="1DeqbSMDT26" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl7" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT27" role="jymVt">
      <property role="TrG5h" value="setData" />
      <node concept="37vLTG" id="1DeqbSMDT28" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="_YKpA" id="1DeqbSMDT29" role="1tU5fm">
          <node concept="3qUE_q" id="1DeqbSMDT2a" role="_ZDj9">
            <node concept="16syzq" id="1DeqbSMDT2b" role="3qUE_r">
              <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1DeqbSMDT2c" role="3clF45" />
      <node concept="3Tm1VV" id="1DeqbSMDT2d" role="1B3o_S" />
      <node concept="3clFbS" id="1DeqbSMDT2e" role="3clF47">
        <node concept="3clFbF" id="1DeqbSMDT2j" role="3cqZAp">
          <node concept="2OqwBi" id="1DeqbSMDT2k" role="3clFbG">
            <node concept="37vLTw" id="1DeqbSMDT2l" role="2Oq$k0">
              <ref role="3cqZAo" node="1DeqbSMDT0x" resolve="myValues" />
            </node>
            <node concept="2Kehj3" id="1DeqbSMDT2m" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1DeqbSMDT2n" role="3cqZAp">
          <node concept="2OqwBi" id="1DeqbSMDT2o" role="3clFbG">
            <node concept="37vLTw" id="1DeqbSMDT2p" role="2Oq$k0">
              <ref role="3cqZAo" node="1DeqbSMDT0x" resolve="myValues" />
            </node>
            <node concept="X8dFx" id="1DeqbSMDT2q" role="2OqNvi">
              <node concept="37vLTw" id="1DeqbSMDT2r" role="25WWJ7">
                <ref role="3cqZAo" node="1DeqbSMDT28" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DeqbSMDT3I" role="3cqZAp">
          <node concept="2OqwBi" id="1DeqbSMDT3J" role="3clFbG">
            <node concept="liA8E" id="1DeqbSMDT3K" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JList.updateUI()" resolve="updateUI" />
            </node>
            <node concept="37vLTw" id="1DeqbSMDT3L" role="2Oq$k0">
              <ref role="3cqZAo" node="1DeqbSMDT0u" resolve="myListComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl8" role="jymVt" />
    <node concept="3clFb_" id="1DeqbSMDT3M" role="jymVt">
      <property role="TrG5h" value="getCandidates" />
      <node concept="3clFbS" id="1DeqbSMDT3N" role="3clF47">
        <node concept="3cpWs8" id="1DeqbSMDT3O" role="3cqZAp">
          <node concept="3cpWsn" id="1DeqbSMDT3P" role="3cpWs9">
            <property role="TrG5h" value="needsUpdate" />
            <node concept="10P_77" id="1DeqbSMDT3Q" role="1tU5fm" />
          </node>
        </node>
        <node concept="1HWtB8" id="1DeqbSMDT3R" role="3cqZAp">
          <node concept="3clFbS" id="1DeqbSMDT3S" role="1HWHxc">
            <node concept="3clFbF" id="1DeqbSMDT3T" role="3cqZAp">
              <node concept="37vLTI" id="1DeqbSMDT3U" role="3clFbG">
                <node concept="2OqwBi" id="1DeqbSMDT3V" role="37vLTx">
                  <node concept="2OqwBi" id="1DeqbSMDT3W" role="2Oq$k0">
                    <node concept="2OwXpG" id="1DeqbSMDT3X" role="2OqNvi">
                      <ref role="2Oxat5" node="1DeqbSMDT0C" resolve="myCandidates" />
                    </node>
                    <node concept="Xjq3P" id="1DeqbSMDT3Y" role="2Oq$k0" />
                  </node>
                  <node concept="1v1jN8" id="1DeqbSMDT3Z" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="3GM_nagTx2p" role="37vLTJ">
                  <ref role="3cqZAo" node="1DeqbSMDT3P" resolve="needsUpdate" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxeudIR" role="1HWFw0">
            <ref role="3cqZAo" node="1DeqbSMDT0p" resolve="myLock" />
          </node>
        </node>
        <node concept="3clFbH" id="1DeqbSMDT42" role="3cqZAp" />
        <node concept="3clFbJ" id="1DeqbSMDT43" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTsqe" role="3clFbw">
            <ref role="3cqZAo" node="1DeqbSMDT3P" resolve="needsUpdate" />
          </node>
          <node concept="3clFbS" id="1DeqbSMDT45" role="3clFbx">
            <node concept="3clFbF" id="1DeqbSMDT46" role="3cqZAp">
              <node concept="2OqwBi" id="1DeqbSMDT47" role="3clFbG">
                <node concept="liA8E" id="1DeqbSMDT48" role="2OqNvi">
                  <ref role="37wK5l" to="xygl:~ProgressManager.runProcessWithProgressSynchronously(java.lang.Runnable,java.lang.String,boolean,com.intellij.openapi.project.Project)" resolve="runProcessWithProgressSynchronously" />
                  <node concept="2ShNRf" id="1DeqbSMDT49" role="37wK5m">
                    <node concept="YeOm9" id="1DeqbSMDT4a" role="2ShVmc">
                      <node concept="1Y3b0j" id="1DeqbSMDT4b" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                        <node concept="3Tm1VV" id="1DeqbSMDT4c" role="1B3o_S" />
                        <node concept="3clFb_" id="1DeqbSMDT4d" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="run" />
                          <node concept="3Tm1VV" id="1DeqbSMDT4e" role="1B3o_S" />
                          <node concept="3clFbS" id="1DeqbSMDT4f" role="3clF47">
                            <node concept="3cpWs8" id="3m2egpBJ9Xt" role="3cqZAp">
                              <node concept="3cpWsn" id="3m2egpBJ9Xu" role="3cpWs9">
                                <property role="TrG5h" value="candidates" />
                                <node concept="_YKpA" id="3m2egpBJ9Xp" role="1tU5fm">
                                  <node concept="16syzq" id="3m2egpBJ9Xs" role="_ZDj9">
                                    <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
                                  </node>
                                </node>
                                <node concept="1rXfSq" id="3m2egpBJ9Xv" role="33vP2m">
                                  <ref role="37wK5l" node="1DeqbSMDT1m" resolve="collectCandidates" />
                                  <node concept="2ShNRf" id="3m2egpBJ9Xw" role="37wK5m">
                                    <node concept="1pGfFk" id="3m2egpBJ9Xx" role="2ShVmc">
                                      <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                      <node concept="2OqwBi" id="3m2egpBJ9Xy" role="37wK5m">
                                        <node concept="2YIFZM" id="3m2egpBJ9Xz" role="2Oq$k0">
                                          <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                                          <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                                        </node>
                                        <node concept="liA8E" id="3m2egpBJ9X$" role="2OqNvi">
                                          <ref role="37wK5l" to="xygl:~ProgressManager.getProgressIndicator()" resolve="getProgressIndicator" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1HWtB8" id="3m2egpBJibP" role="3cqZAp">
                              <node concept="37vLTw" id="3m2egpBJjqO" role="1HWFw0">
                                <ref role="3cqZAo" node="1DeqbSMDT0p" resolve="myLock" />
                              </node>
                              <node concept="3clFbS" id="3m2egpBJibT" role="1HWHxc">
                                <node concept="3clFbF" id="3m2egpBJcIb" role="3cqZAp">
                                  <node concept="2OqwBi" id="3m2egpBJern" role="3clFbG">
                                    <node concept="37vLTw" id="3m2egpBJcI9" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1DeqbSMDT0C" resolve="myCandidates" />
                                    </node>
                                    <node concept="2Kehj3" id="3m2egpBJfpb" role="2OqNvi" />
                                  </node>
                                </node>
                                <node concept="3clFbF" id="3m2egpBJmEf" role="3cqZAp">
                                  <node concept="2OqwBi" id="3m2egpBJou1" role="3clFbG">
                                    <node concept="37vLTw" id="3m2egpBJmEd" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1DeqbSMDT0C" resolve="myCandidates" />
                                    </node>
                                    <node concept="X8dFx" id="3m2egpBJpox" role="2OqNvi">
                                      <node concept="37vLTw" id="3m2egpBJrmI" role="25WWJ7">
                                        <ref role="3cqZAo" node="3m2egpBJ9Xu" resolve="candidates" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cqZAl" id="1DeqbSMDT4i" role="3clF45" />
                          <node concept="2AHcQZ" id="1DeqbSMDT4j" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1DeqbSMDT4k" role="37wK5m">
                    <property role="Xl_RC" value="Searching for nodes" />
                  </node>
                  <node concept="3clFbT" id="1DeqbSMDT4l" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeun9e" role="37wK5m">
                    <ref role="3cqZAo" node="1DeqbSMDT0P" resolve="myProject" />
                  </node>
                </node>
                <node concept="2YIFZM" id="1DeqbSMDT4n" role="2Oq$k0">
                  <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                  <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1DeqbSMDT4o" role="3cqZAp" />
        <node concept="1HWtB8" id="1DeqbSMDT4p" role="3cqZAp">
          <node concept="3clFbS" id="1DeqbSMDT4q" role="1HWHxc">
            <node concept="3clFbF" id="1DeqbSMDT4r" role="3cqZAp">
              <node concept="2OqwBi" id="1DeqbSMDT4s" role="3clFbG">
                <node concept="1kEaZ2" id="1DeqbSMDT4t" role="2OqNvi">
                  <node concept="2OqwBi" id="1DeqbSMDT4u" role="25WWJ7">
                    <node concept="2OwXpG" id="1DeqbSMDT4v" role="2OqNvi">
                      <ref role="2Oxat5" node="1DeqbSMDT0x" resolve="myValues" />
                    </node>
                    <node concept="Xjq3P" id="1DeqbSMDT4w" role="2Oq$k0" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1DeqbSMDT4x" role="2Oq$k0">
                  <node concept="2OwXpG" id="1DeqbSMDT4y" role="2OqNvi">
                    <ref role="2Oxat5" node="1DeqbSMDT0C" resolve="myCandidates" />
                  </node>
                  <node concept="Xjq3P" id="1DeqbSMDT4z" role="2Oq$k0" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1DeqbSMDT4$" role="3cqZAp">
              <node concept="2OqwBi" id="1DeqbSMDT4_" role="3cqZAk">
                <node concept="ANE8D" id="1DeqbSMDT4A" role="2OqNvi" />
                <node concept="2OqwBi" id="1DeqbSMDT4B" role="2Oq$k0">
                  <node concept="3$u5V9" id="1DeqbSMDT4C" role="2OqNvi">
                    <node concept="1bVj0M" id="1DeqbSMDT4D" role="23t8la">
                      <node concept="3clFbS" id="1DeqbSMDT4G" role="1bW5cS">
                        <node concept="3clFbF" id="1DeqbSMDT4H" role="3cqZAp">
                          <node concept="1rXfSq" id="1DeqbSMDT4I" role="3clFbG">
                            <ref role="37wK5l" node="1DeqbSMDT12" resolve="unwrap" />
                            <node concept="37vLTw" id="1DeqbSMDT4J" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0Xkw" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xkw" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Xkx" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1DeqbSMDT4K" role="2Oq$k0">
                    <node concept="Xjq3P" id="1DeqbSMDT4L" role="2Oq$k0" />
                    <node concept="2OwXpG" id="1DeqbSMDT4M" role="2OqNvi">
                      <ref role="2Oxat5" node="1DeqbSMDT0C" resolve="myCandidates" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxeuO3T" role="1HWFw0">
            <ref role="3cqZAo" node="1DeqbSMDT0p" resolve="myLock" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="1DeqbSMDT4O" role="3clF45">
        <node concept="3uibUv" id="1DeqbSMDT4P" role="_ZDj9">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1DeqbSMDT4Q" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHl9" role="jymVt" />
    <node concept="3clFb_" id="7XbeqBAxYMY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setEditable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7XbeqBAxYN1" role="3clF47">
        <node concept="3clFbF" id="7XbeqBA_Ato" role="3cqZAp">
          <node concept="37vLTI" id="7XbeqBA_APg" role="3clFbG">
            <node concept="37vLTw" id="7XbeqBA_AUw" role="37vLTx">
              <ref role="3cqZAo" node="7XbeqBAxYV$" resolve="editable" />
            </node>
            <node concept="37vLTw" id="7XbeqBA_Atn" role="37vLTJ">
              <ref role="3cqZAo" node="7XbeqBAyo8l" resolve="isEditable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7XbeqBAxYEq" role="1B3o_S" />
      <node concept="3cqZAl" id="7XbeqBAxYMW" role="3clF45" />
      <node concept="37vLTG" id="7XbeqBAxYV$" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="7XbeqBAxYVz" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GnHla" role="jymVt" />
    <node concept="3clFb_" id="_Qgg$$tPXH" role="jymVt">
      <property role="TrG5h" value="createNodeChooserDialog" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="_Qgg$$tPJj" role="3clF47">
        <node concept="3cpWs6" id="_Qgg$$tPL_" role="3cqZAp">
          <node concept="2ShNRf" id="_Qgg$$tPLA" role="3cqZAk">
            <node concept="1pGfFk" id="_Qgg$$tPLB" role="2ShVmc">
              <ref role="37wK5l" to="qfni:m2MuEX6oc1" resolve="NodeChooserDialog" />
              <node concept="37vLTw" id="_Qgg$$tPLC" role="37wK5m">
                <ref role="3cqZAo" node="1DeqbSMDT0P" resolve="myProject" />
              </node>
              <node concept="37vLTw" id="_Qgg$$tPLH" role="37wK5m">
                <ref role="3cqZAo" node="_Qgg$$tPLE" resolve="nodesList" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_Qgg$$tPLE" role="3clF46">
        <property role="TrG5h" value="nodesList" />
        <node concept="_YKpA" id="_Qgg$$tPLF" role="1tU5fm">
          <node concept="3uibUv" id="_Qgg$$tPLG" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="_Qgg$$tPO2" role="3clF45">
        <ref role="3uigEE" to="qfni:m2MuEX6obZ" resolve="NodeChooserDialog" />
      </node>
      <node concept="3Tm1VV" id="_Qgg$$uiJn" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2_AUN5Gp8we" role="jymVt" />
    <node concept="312cEu" id="1DeqbSMDT52" role="jymVt">
      <property role="TrG5h" value="MyAbstractListModel" />
      <property role="2bfB8j" value="true" />
      <node concept="3uibUv" id="1DeqbSMDT53" role="1zkMxy">
        <ref role="3uigEE" to="dxuu:~AbstractListModel" resolve="AbstractListModel" />
      </node>
      <node concept="3clFbW" id="1DeqbSMDT54" role="jymVt">
        <node concept="3Tm1VV" id="1DeqbSMDT55" role="1B3o_S" />
        <node concept="3cqZAl" id="1DeqbSMDT56" role="3clF45" />
        <node concept="3clFbS" id="1DeqbSMDT57" role="3clF47" />
      </node>
      <node concept="3Tm6S6" id="1DeqbSMDT58" role="1B3o_S" />
      <node concept="2tJIrI" id="4zlCqr6P9Jw" role="jymVt" />
      <node concept="3clFb_" id="1DeqbSMDT59" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getElementAt" />
        <node concept="3uibUv" id="1DeqbSMDT5a" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="37vLTG" id="1DeqbSMDT5b" role="3clF46">
          <property role="TrG5h" value="p0" />
          <node concept="10Oyi0" id="1DeqbSMDT5c" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1DeqbSMDT5d" role="3clF47">
          <node concept="3cpWs6" id="1DeqbSMDT5e" role="3cqZAp">
            <node concept="1rXfSq" id="1DeqbSMDT5f" role="3cqZAk">
              <ref role="37wK5l" node="1DeqbSMDT18" resolve="getPresentation" />
              <node concept="2OqwBi" id="1DeqbSMDT5g" role="37wK5m">
                <node concept="2OqwBi" id="1DeqbSMDT5h" role="2Oq$k0">
                  <node concept="2OwXpG" id="1DeqbSMDT5i" role="2OqNvi">
                    <ref role="2Oxat5" node="1DeqbSMDT0x" resolve="myValues" />
                  </node>
                  <node concept="Xjq3P" id="1DeqbSMDT5j" role="2Oq$k0">
                    <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                  </node>
                </node>
                <node concept="34jXtK" id="1DeqbSMDT5k" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxghg2D" role="25WWJ7">
                    <ref role="3cqZAo" node="1DeqbSMDT5b" resolve="p0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1DeqbSMDT5m" role="1B3o_S" />
        <node concept="2AHcQZ" id="1DeqbSMDT5n" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4zlCqr6P9Jx" role="jymVt" />
      <node concept="3clFb_" id="1DeqbSMDT5o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getSize" />
        <node concept="3clFbS" id="1DeqbSMDT5p" role="3clF47">
          <node concept="3clFbF" id="1DeqbSMDT5q" role="3cqZAp">
            <node concept="2OqwBi" id="1DeqbSMDT5r" role="3clFbG">
              <node concept="2OqwBi" id="1DeqbSMDT5s" role="2Oq$k0">
                <node concept="Xjq3P" id="1DeqbSMDT5t" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
                <node concept="2OwXpG" id="1DeqbSMDT5u" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0x" resolve="myValues" />
                </node>
              </node>
              <node concept="34oBXx" id="1DeqbSMDT5v" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1DeqbSMDT5w" role="1B3o_S" />
        <node concept="10Oyi0" id="1DeqbSMDT5x" role="3clF45" />
        <node concept="2AHcQZ" id="1DeqbSMDT5y" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4zlCqr6P9Jy" role="jymVt" />
      <node concept="3clFb_" id="1DeqbSMDT5z" role="jymVt">
        <property role="TrG5h" value="fireSomethingChanged" />
        <node concept="3clFbS" id="1DeqbSMDT5$" role="3clF47">
          <node concept="3clFbF" id="1DeqbSMDT5_" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz9o0" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~AbstractListModel.fireContentsChanged(java.lang.Object,int,int)" resolve="fireContentsChanged" />
              <node concept="Xjq3P" id="1DeqbSMDT5B" role="37wK5m" />
              <node concept="3cmrfG" id="1DeqbSMDT5C" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="1DeqbSMDT5D" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuqTC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1DeqbSMDT0x" resolve="myValues" />
                </node>
                <node concept="34oBXx" id="1DeqbSMDT5F" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1DeqbSMDT5G" role="1B3o_S" />
        <node concept="3cqZAl" id="1DeqbSMDT5H" role="3clF45" />
      </node>
    </node>
    <node concept="2tJIrI" id="4zlCqr6OZP4" role="jymVt" />
    <node concept="3Tm1VV" id="1DeqbSMDT5I" role="1B3o_S" />
    <node concept="16euLQ" id="1DeqbSMDT5K" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="312cEu" id="1DeqbSMDT5L" role="jymVt">
      <property role="TrG5h" value="MyListAddAction" />
      <property role="2bfB8j" value="true" />
      <node concept="312cEg" id="5kWneGv3x7n" role="jymVt">
        <property role="TrG5h" value="myList" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5kWneGv3x7o" role="1B3o_S" />
        <node concept="3uibUv" id="5kWneGv3x7p" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JList" resolve="JList" />
        </node>
      </node>
      <node concept="2tJIrI" id="5kWneGv3wAk" role="jymVt" />
      <node concept="3clFbW" id="1DeqbSMDT5M" role="jymVt">
        <node concept="3clFbS" id="1DeqbSMDT5N" role="3clF47">
          <node concept="XkiVB" id="1DeqbSMDT5O" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="AnAction" />
            <node concept="Xl_RD" id="1mBiRF0LBaG" role="37wK5m">
              <property role="Xl_RC" value="Add" />
            </node>
            <node concept="Xl_RD" id="1mBiRF0LBaH" role="37wK5m">
              <property role="Xl_RC" value="Add" />
            </node>
            <node concept="10M0yZ" id="6XsdSphHn_9" role="37wK5m">
              <ref role="1PxDUh" to="z2i8:~AllIcons$General" resolve="AllIcons.General" />
              <ref role="3cqZAo" to="z2i8:~AllIcons$General.Add" resolve="Add" />
            </node>
          </node>
          <node concept="3clFbF" id="5kWneGv3yF2" role="3cqZAp">
            <node concept="37vLTI" id="5kWneGv3zia" role="3clFbG">
              <node concept="37vLTw" id="5kWneGv3_2e" role="37vLTx">
                <ref role="3cqZAo" node="1DeqbSMDT5S" resolve="list" />
              </node>
              <node concept="37vLTw" id="5kWneGv3yF0" role="37vLTJ">
                <ref role="3cqZAo" node="5kWneGv3x7n" resolve="myList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1DeqbSMDT5Q" role="1B3o_S" />
        <node concept="3cqZAl" id="1DeqbSMDT5R" role="3clF45" />
        <node concept="37vLTG" id="1DeqbSMDT5S" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="1DeqbSMDT5T" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~JList" resolve="JList" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5kWneGv3D_v" role="jymVt" />
      <node concept="2tJIrI" id="5kWneGv3DBN" role="jymVt" />
      <node concept="3clFb_" id="5kWneGv3E9$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="actionPerformed" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5kWneGv3E9_" role="1B3o_S" />
        <node concept="3cqZAl" id="5kWneGv3E9B" role="3clF45" />
        <node concept="37vLTG" id="5kWneGv3E9C" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="5kWneGv3E9D" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="5kWneGv3E9E" role="3clF47">
          <node concept="3clFbJ" id="4zlCqr6OPVE" role="3cqZAp">
            <node concept="3clFbS" id="4zlCqr6OPVG" role="3clFbx">
              <node concept="3cpWs6" id="4zlCqr6OZOx" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="4zlCqr6OU8_" role="3clFbw">
              <node concept="10Nm6u" id="4zlCqr6OYTh" role="3uHU7w" />
              <node concept="37vLTw" id="4zlCqr6OSfo" role="3uHU7B">
                <ref role="3cqZAo" node="2_AUN5Goh6w" resolve="myMpsProject" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1DeqbSMDT5X" role="3cqZAp">
            <node concept="3cpWsn" id="1DeqbSMDT5Y" role="3cpWs9">
              <property role="TrG5h" value="nodesList" />
              <node concept="1rXfSq" id="4hiugqyyZ5w" role="33vP2m">
                <ref role="37wK5l" node="1DeqbSMDT3M" resolve="getCandidates" />
              </node>
              <node concept="_YKpA" id="1DeqbSMDT60" role="1tU5fm">
                <node concept="3uibUv" id="1DeqbSMDT61" role="_ZDj9">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1DeqbSMDT62" role="3cqZAp" />
          <node concept="3cpWs8" id="1DeqbSMDT63" role="3cqZAp">
            <node concept="3cpWsn" id="1DeqbSMDT64" role="3cpWs9">
              <property role="TrG5h" value="chooserDialog" />
              <node concept="3uibUv" id="1DeqbSMDT65" role="1tU5fm">
                <ref role="3uigEE" to="qfni:m2MuEX6obZ" resolve="NodeChooserDialog" />
              </node>
              <node concept="2OqwBi" id="_Qgg$$u574" role="33vP2m">
                <node concept="Xjq3P" id="_Qgg$$u4nc" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
                <node concept="liA8E" id="_Qgg$$udoB" role="2OqNvi">
                  <ref role="37wK5l" node="_Qgg$$tPXH" resolve="createNodeChooserDialog" />
                  <node concept="37vLTw" id="_Qgg$$uiJk" role="37wK5m">
                    <ref role="3cqZAo" node="1DeqbSMDT5Y" resolve="nodesList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1DeqbSMDT6a" role="3cqZAp">
            <node concept="2OqwBi" id="1DeqbSMDT6b" role="3clFbG">
              <node concept="liA8E" id="1DeqbSMDT6c" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
              </node>
              <node concept="37vLTw" id="3GM_nagTBuk" role="2Oq$k0">
                <ref role="3cqZAo" node="1DeqbSMDT64" resolve="chooserDialog" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1DeqbSMDT6e" role="3cqZAp">
            <node concept="3cpWsn" id="1DeqbSMDT6f" role="3cpWs9">
              <property role="TrG5h" value="resultNode" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="1DeqbSMDT6g" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="2OqwBi" id="1DeqbSMDT6h" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTzm9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1DeqbSMDT64" resolve="chooserDialog" />
                </node>
                <node concept="liA8E" id="1DeqbSMDT6j" role="2OqNvi">
                  <ref role="37wK5l" to="qfni:L4W0vZ$xq2" resolve="getResult" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1DeqbSMDT6k" role="3cqZAp" />
          <node concept="3SKdUt" id="5kWneGv41eA" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXofCj" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXofCk" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCl" role="1PaTwD">
                <property role="3oM_SC" value="please" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCm" role="1PaTwD">
                <property role="3oM_SC" value="refactor" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCn" role="1PaTwD">
                <property role="3oM_SC" value="this," />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCo" role="1PaTwD">
                <property role="3oM_SC" value="please," />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCp" role="1PaTwD">
                <property role="3oM_SC" value="please!!!" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2lMuMRU58KE" role="3cqZAp">
            <node concept="1PaTwC" id="2lMuMRU58KF" role="1aUNEU">
              <node concept="3oM_SD" id="2lMuMRU58KG" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="2lMuMRU58KJ" role="1PaTwD">
                <property role="3oM_SC" value="PRETTY" />
              </node>
              <node concept="3oM_SD" id="2lMuMRU5i1s" role="1PaTwD">
                <property role="3oM_SC" value="PLEASE!" />
              </node>
              <node concept="3oM_SD" id="2lMuMRU5i2u" role="1PaTwD">
                <property role="3oM_SC" value="wrap/unwrap," />
              </node>
              <node concept="3oM_SD" id="2lMuMRU5i3K" role="1PaTwD">
                <property role="3oM_SC" value="really?!" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1DeqbSMDT6l" role="3cqZAp">
            <node concept="3clFbC" id="1DeqbSMDT6m" role="3clFbw">
              <node concept="10Nm6u" id="1DeqbSMDT6n" role="3uHU7w" />
              <node concept="37vLTw" id="3GM_nagTzts" role="3uHU7B">
                <ref role="3cqZAo" node="1DeqbSMDT6f" resolve="resultNode" />
              </node>
            </node>
            <node concept="3clFbS" id="1DeqbSMDT6p" role="3clFbx">
              <node concept="3cpWs6" id="1DeqbSMDT6q" role="3cqZAp" />
            </node>
          </node>
          <node concept="3cpWs8" id="1DeqbSMDT6s" role="3cqZAp">
            <node concept="3cpWsn" id="1DeqbSMDT6t" role="3cpWs9">
              <property role="TrG5h" value="wrapper" />
              <node concept="16syzq" id="1DeqbSMDT6u" role="1tU5fm">
                <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
              </node>
              <node concept="2OqwBi" id="1DeqbSMDT6w" role="33vP2m">
                <node concept="2OqwBi" id="2_AUN5GoYHk" role="2Oq$k0">
                  <node concept="37vLTw" id="2_AUN5GoXrg" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_AUN5Goh6w" resolve="myMpsProject" />
                  </node>
                  <node concept="liA8E" id="2_AUN5Gp0wS" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="1DeqbSMDT6y" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                  <node concept="1bVj0M" id="1DeqbSMDT6z" role="37wK5m">
                    <node concept="3clFbS" id="1DeqbSMDT6$" role="1bW5cS">
                      <node concept="3cpWs8" id="2lMuMRU2xRN" role="3cqZAp">
                        <node concept="3cpWsn" id="2lMuMRU2xRO" role="3cpWs9">
                          <property role="TrG5h" value="resolved" />
                          <node concept="3uibUv" id="2lMuMRTTBQU" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="2lMuMRU2xRP" role="33vP2m">
                            <node concept="liA8E" id="2lMuMRU2xRQ" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="2OqwBi" id="2lMuMRU2xRR" role="37wK5m">
                                <node concept="37vLTw" id="2lMuMRU2xRS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2_AUN5Goh6w" resolve="myMpsProject" />
                                </node>
                                <node concept="liA8E" id="2lMuMRU2xRT" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="2lMuMRU2xRU" role="2Oq$k0">
                              <ref role="3cqZAo" node="1DeqbSMDT6f" resolve="resultNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="2lMuMRU3hLF" role="3cqZAp">
                        <node concept="3K4zz7" id="2lMuMRU3Ksw" role="3cqZAk">
                          <node concept="10Nm6u" id="2lMuMRU3Oo4" role="3K4E3e" />
                          <node concept="1rXfSq" id="2lMuMRU47za" role="3K4GZi">
                            <ref role="37wK5l" node="1DeqbSMDT0W" resolve="wrap" />
                            <node concept="37vLTw" id="2lMuMRU4jkm" role="37wK5m">
                              <ref role="3cqZAo" node="2lMuMRU2xRO" resolve="resolved" />
                            </node>
                          </node>
                          <node concept="3clFbC" id="2lMuMRU3B45" role="3K4Cdx">
                            <node concept="10Nm6u" id="2lMuMRU3HGH" role="3uHU7w" />
                            <node concept="37vLTw" id="2lMuMRU3$6p" role="3uHU7B">
                              <ref role="3cqZAo" node="2lMuMRU2xRO" resolve="resolved" />
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
          <node concept="3clFbJ" id="1DeqbSMDT6K" role="3cqZAp">
            <node concept="3clFbS" id="1DeqbSMDT6L" role="3clFbx">
              <node concept="3cpWs6" id="1DeqbSMDT6M" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="1DeqbSMDT6O" role="3clFbw">
              <node concept="10Nm6u" id="1DeqbSMDT6P" role="3uHU7w" />
              <node concept="37vLTw" id="3GM_nagT$4S" role="3uHU7B">
                <ref role="3cqZAo" node="1DeqbSMDT6t" resolve="wrapper" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1DeqbSMDT6R" role="3cqZAp">
            <node concept="2OqwBi" id="1DeqbSMDT6S" role="3clFbG">
              <node concept="2OqwBi" id="1DeqbSMDT6T" role="2Oq$k0">
                <node concept="2OwXpG" id="1DeqbSMDT6U" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0x" resolve="myValues" />
                </node>
                <node concept="Xjq3P" id="1DeqbSMDT6V" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
              </node>
              <node concept="TSZUe" id="1DeqbSMDT6W" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagT$bJ" role="25WWJ7">
                  <ref role="3cqZAo" node="1DeqbSMDT6t" resolve="wrapper" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1DeqbSMDT6Y" role="3cqZAp">
            <node concept="3y3z36" id="1DeqbSMDT6Z" role="3clFbw">
              <node concept="2OqwBi" id="1DeqbSMDT70" role="3uHU7B">
                <node concept="Xjq3P" id="1DeqbSMDT71" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
                <node concept="2OwXpG" id="1DeqbSMDT72" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0J" resolve="myListener" />
                </node>
              </node>
              <node concept="10Nm6u" id="1DeqbSMDT73" role="3uHU7w" />
            </node>
            <node concept="3clFbS" id="1DeqbSMDT74" role="3clFbx">
              <node concept="3clFbF" id="1DeqbSMDT75" role="3cqZAp">
                <node concept="2OqwBi" id="1DeqbSMDT76" role="3clFbG">
                  <node concept="2OqwBi" id="1DeqbSMDT77" role="2Oq$k0">
                    <node concept="2OwXpG" id="1DeqbSMDT78" role="2OqNvi">
                      <ref role="2Oxat5" node="1DeqbSMDT0J" resolve="myListener" />
                    </node>
                    <node concept="Xjq3P" id="1DeqbSMDT79" role="2Oq$k0">
                      <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1DeqbSMDT7a" role="2OqNvi">
                    <ref role="37wK5l" to="hyam:~ActionListener.actionPerformed(java.awt.event.ActionEvent)" resolve="actionPerformed" />
                    <node concept="10Nm6u" id="1DeqbSMDT7b" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1DeqbSMDT7c" role="3cqZAp">
            <node concept="2OqwBi" id="1DeqbSMDT7d" role="3clFbG">
              <node concept="liA8E" id="1DeqbSMDT7e" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JList.updateUI()" resolve="updateUI" />
              </node>
              <node concept="2OqwBi" id="1DeqbSMDT7f" role="2Oq$k0">
                <node concept="Xjq3P" id="1DeqbSMDT7g" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
                <node concept="2OwXpG" id="1DeqbSMDT7h" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0u" resolve="myListComponent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1DeqbSMDT7i" role="3cqZAp">
            <node concept="2OqwBi" id="1DeqbSMDT7j" role="3clFbG">
              <node concept="liA8E" id="1DeqbSMDT7k" role="2OqNvi">
                <ref role="37wK5l" node="1DeqbSMDT5z" resolve="fireSomethingChanged" />
              </node>
              <node concept="2OqwBi" id="1DeqbSMDT7l" role="2Oq$k0">
                <node concept="2OwXpG" id="1DeqbSMDT7m" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0M" resolve="myListModel" />
                </node>
                <node concept="Xjq3P" id="1DeqbSMDT7n" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5kWneGv3Z0K" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXofCq" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXofCr" role="1PaTwD">
                <property role="3oM_SC" value="return" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCs" role="1PaTwD">
                <property role="3oM_SC" value="value" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCt" role="1PaTwD">
                <property role="3oM_SC" value="used" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCu" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCv" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCw" role="1PaTwD">
                <property role="3oM_SC" value="an" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCx" role="1PaTwD">
                <property role="3oM_SC" value="index" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCy" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCz" role="1PaTwD">
                <property role="3oM_SC" value="select" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofC$" role="1PaTwD">
                <property role="3oM_SC" value="(though," />
              </node>
              <node concept="3oM_SD" id="ATZLwXofC_" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCA" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCB" role="1PaTwD">
                <property role="3oM_SC" value="bit" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCC" role="1PaTwD">
                <property role="3oM_SC" value="cryptic" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCD" role="1PaTwD">
                <property role="3oM_SC" value="manner," />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCE" role="1PaTwD">
                <property role="3oM_SC" value="see" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCF" role="1PaTwD">
                <property role="3oM_SC" value="BaseAddAction)" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5kWneGv3Mr0" role="3cqZAp">
            <node concept="2OqwBi" id="5kWneGv3Oni" role="3clFbG">
              <node concept="37vLTw" id="5kWneGv3MqY" role="2Oq$k0">
                <ref role="3cqZAo" node="5kWneGv3x7n" resolve="myList" />
              </node>
              <node concept="liA8E" id="5kWneGv3POZ" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JList.setSelectedIndex(int)" resolve="setSelectedIndex" />
                <node concept="2OqwBi" id="5kWneGv3QgG" role="37wK5m">
                  <node concept="2OqwBi" id="5kWneGv3QgH" role="2Oq$k0">
                    <node concept="2OwXpG" id="5kWneGv3QgI" role="2OqNvi">
                      <ref role="2Oxat5" node="1DeqbSMDT0x" resolve="myValues" />
                    </node>
                    <node concept="Xjq3P" id="5kWneGv3QgJ" role="2Oq$k0">
                      <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                    </node>
                  </node>
                  <node concept="2WmjW8" id="5kWneGv3QgK" role="2OqNvi">
                    <node concept="37vLTw" id="5kWneGv3QgL" role="25WWJ7">
                      <ref role="3cqZAo" node="1DeqbSMDT6t" resolve="wrapper" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5kWneGv3E9F" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2_AUN5Gp7Wn" role="jymVt" />
      <node concept="3Tm6S6" id="1DeqbSMDT5U" role="1B3o_S" />
      <node concept="3clFb_" id="7XbeqBA_E$$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="update" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7XbeqBA_E$_" role="1B3o_S" />
        <node concept="3cqZAl" id="7XbeqBA_E$A" role="3clF45" />
        <node concept="37vLTG" id="7XbeqBA_E$B" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="7XbeqBA_E$C" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="7XbeqBA_E$D" role="3clF47">
          <node concept="3clFbF" id="7XbeqBA_E$L" role="3cqZAp">
            <node concept="3nyPlj" id="7XbeqBA_E$M" role="3clFbG">
              <ref role="37wK5l" to="qkt:~AnAction.update(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="update" />
              <node concept="37vLTw" id="7XbeqBA_E$N" role="37wK5m">
                <ref role="3cqZAo" node="7XbeqBA_E$B" resolve="event" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7XbeqBA_E$E" role="3cqZAp">
            <node concept="2OqwBi" id="7XbeqBA_E$F" role="3clFbG">
              <node concept="2OqwBi" id="7XbeqBA_E$G" role="2Oq$k0">
                <node concept="37vLTw" id="7XbeqBA_E$H" role="2Oq$k0">
                  <ref role="3cqZAo" node="7XbeqBA_E$B" resolve="event" />
                </node>
                <node concept="liA8E" id="7XbeqBA_E$I" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                </node>
              </node>
              <node concept="liA8E" id="7XbeqBA_E$J" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                <node concept="1Wc70l" id="2nr0n4UcYhN" role="37wK5m">
                  <node concept="3y3z36" id="2nr0n4Ud50q" role="3uHU7w">
                    <node concept="10Nm6u" id="2nr0n4Ud5Ra" role="3uHU7w" />
                    <node concept="37vLTw" id="2nr0n4Ud2cm" role="3uHU7B">
                      <ref role="3cqZAo" node="2_AUN5Goh6w" resolve="myMpsProject" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7XbeqBA_E$K" role="3uHU7B">
                    <ref role="3cqZAo" node="7XbeqBAyo8l" resolve="isEditable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7XbeqBA_E$O" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6CaFcV_myH5" role="jymVt" />
      <node concept="3uibUv" id="5kWneGv3w34" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
      </node>
      <node concept="3clFb_" id="6CaFcV_mKl$" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="6CaFcV_mKl_" role="1B3o_S" />
        <node concept="2AHcQZ" id="6CaFcV_mKlB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6CaFcV_mKlC" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="6CaFcV_mKlD" role="3clF47">
          <node concept="3clFbF" id="6CaFcV_n_za" role="3cqZAp">
            <node concept="Rm8GO" id="6CaFcV_nIIF" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.BGT" resolve="BGT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6CaFcV_mKlE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_AUN5GoT7C" role="jymVt" />
    <node concept="312cEu" id="1DeqbSMDT7_" role="jymVt">
      <property role="TrG5h" value="MyListRemoveAction" />
      <property role="2bfB8j" value="true" />
      <node concept="312cEg" id="5kWneGv26cR" role="jymVt">
        <property role="TrG5h" value="myList" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5kWneGv26cS" role="1B3o_S" />
        <node concept="3uibUv" id="5kWneGv26OO" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JList" resolve="JList" />
        </node>
      </node>
      <node concept="2tJIrI" id="5kWneGv26S9" role="jymVt" />
      <node concept="3clFbW" id="1DeqbSMDT7A" role="jymVt">
        <node concept="3clFbS" id="1DeqbSMDT7B" role="3clF47">
          <node concept="XkiVB" id="5kWneGv2gq1" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="AnAction" />
            <node concept="Xl_RD" id="1mBiRF0LBRA" role="37wK5m">
              <property role="Xl_RC" value="Remove" />
            </node>
            <node concept="Xl_RD" id="1mBiRF0LBRB" role="37wK5m">
              <property role="Xl_RC" value="Remove" />
            </node>
            <node concept="10M0yZ" id="6XsdSphHAjZ" role="37wK5m">
              <ref role="1PxDUh" to="z2i8:~AllIcons$General" resolve="AllIcons.General" />
              <ref role="3cqZAo" to="z2i8:~AllIcons$General.Remove" resolve="Remove" />
            </node>
          </node>
          <node concept="3clFbF" id="5kWneGv29ht" role="3cqZAp">
            <node concept="37vLTI" id="5kWneGv2c2r" role="3clFbG">
              <node concept="37vLTw" id="5kWneGv2dPX" role="37vLTx">
                <ref role="3cqZAo" node="1DeqbSMDT7G" resolve="list" />
              </node>
              <node concept="37vLTw" id="5kWneGv29hr" role="37vLTJ">
                <ref role="3cqZAo" node="5kWneGv26cR" resolve="myList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1DeqbSMDT7E" role="1B3o_S" />
        <node concept="3cqZAl" id="1DeqbSMDT7F" role="3clF45" />
        <node concept="37vLTG" id="1DeqbSMDT7G" role="3clF46">
          <property role="TrG5h" value="list" />
          <node concept="3uibUv" id="1DeqbSMDT7H" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~JList" resolve="JList" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5kWneGv2dV4" role="jymVt" />
      <node concept="2tJIrI" id="5kWneGv2qOF" role="jymVt" />
      <node concept="3clFb_" id="5kWneGv2sc8" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="actionPerformed" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5kWneGv2sc9" role="1B3o_S" />
        <node concept="3cqZAl" id="5kWneGv2scb" role="3clF45" />
        <node concept="37vLTG" id="5kWneGv2scc" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="5kWneGv2scd" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="5kWneGv2sce" role="3clF47">
          <node concept="3clFbJ" id="4zlCqr6Pfe_" role="3cqZAp">
            <node concept="3clFbS" id="4zlCqr6PfeA" role="3clFbx">
              <node concept="3cpWs6" id="4zlCqr6PfeB" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="4zlCqr6PfeC" role="3clFbw">
              <node concept="10Nm6u" id="4zlCqr6PfeD" role="3uHU7w" />
              <node concept="37vLTw" id="4zlCqr6PfeE" role="3uHU7B">
                <ref role="3cqZAo" node="2_AUN5Goh6w" resolve="myMpsProject" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5kWneGv2Y25" role="3cqZAp">
            <node concept="3cpWsn" id="5kWneGv2Y26" role="3cpWs9">
              <property role="TrG5h" value="minSelectionIndex" />
              <node concept="10Oyi0" id="5kWneGv2Y24" role="1tU5fm" />
              <node concept="2OqwBi" id="5kWneGv2Y27" role="33vP2m">
                <node concept="37vLTw" id="5kWneGv2Y28" role="2Oq$k0">
                  <ref role="3cqZAo" node="5kWneGv26cR" resolve="myList" />
                </node>
                <node concept="liA8E" id="5kWneGv2Y29" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JList.getMinSelectionIndex()" resolve="getMinSelectionIndex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5kWneGv2Wit" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXofCG" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXofCH" role="1PaTwD">
                <property role="3oM_SC" value="XXX" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCI" role="1PaTwD">
                <property role="3oM_SC" value="I" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCJ" role="1PaTwD">
                <property role="3oM_SC" value="cried" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCK" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCL" role="1PaTwD">
                <property role="3oM_SC" value="blood" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCM" role="1PaTwD">
                <property role="3oM_SC" value="tears" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCN" role="1PaTwD">
                <property role="3oM_SC" value="over" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCO" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCP" role="1PaTwD">
                <property role="3oM_SC" value="code" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCQ" role="1PaTwD">
                <property role="3oM_SC" value="below." />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5kWneGv34nF" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXofCR" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXofCS" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCT" role="1PaTwD">
                <property role="3oM_SC" value="ListPanel.this.myListComponent" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCU" role="1PaTwD">
                <property role="3oM_SC" value="==" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCV" role="1PaTwD">
                <property role="3oM_SC" value="myList," />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5kWneGv2Xe6" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXofCW" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXofCX" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCY" role="1PaTwD">
                <property role="3oM_SC" value="access" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofCZ" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD0" role="1PaTwD">
                <property role="3oM_SC" value="myListModel" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD1" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD2" role="1PaTwD">
                <property role="3oM_SC" value="mind-blowing." />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD3" role="1PaTwD">
                <property role="3oM_SC" value="Need" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD4" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD5" role="1PaTwD">
                <property role="3oM_SC" value="find" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD6" role="1PaTwD">
                <property role="3oM_SC" value="enough" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD7" role="1PaTwD">
                <property role="3oM_SC" value="courage" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD8" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofD9" role="1PaTwD">
                <property role="3oM_SC" value="refactor" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofDa" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofDb" role="1PaTwD">
                <property role="3oM_SC" value="mess." />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="1DeqbSMDT7P" role="3cqZAp">
            <node concept="2OqwBi" id="1DeqbSMDT7Q" role="1DdaDG">
              <node concept="2OqwBi" id="1DeqbSMDT7R" role="2Oq$k0">
                <node concept="2OwXpG" id="1DeqbSMDT7S" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0u" resolve="myListComponent" />
                </node>
                <node concept="Xjq3P" id="1DeqbSMDT7T" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
              </node>
              <node concept="liA8E" id="1DeqbSMDT7U" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JList.getSelectedValuesList()" resolve="getSelectedValuesList" />
              </node>
            </node>
            <node concept="3cpWsn" id="1DeqbSMDT7V" role="1Duv9x">
              <property role="TrG5h" value="value" />
              <node concept="3uibUv" id="1DeqbSMDT7W" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="3clFbS" id="1DeqbSMDT7X" role="2LFqv$">
              <node concept="1DcWWT" id="1DeqbSMDT7Y" role="3cqZAp">
                <node concept="3cpWsn" id="1DeqbSMDT7Z" role="1Duv9x">
                  <property role="TrG5h" value="node" />
                  <node concept="16syzq" id="1DeqbSMDT80" role="1tU5fm">
                    <ref role="16sUi3" node="1DeqbSMDT5K" resolve="T" />
                  </node>
                </node>
                <node concept="3clFbS" id="1DeqbSMDT81" role="2LFqv$">
                  <node concept="3cpWs8" id="1DeqbSMDT82" role="3cqZAp">
                    <node concept="3cpWsn" id="1DeqbSMDT83" role="3cpWs9">
                      <property role="TrG5h" value="presentation" />
                      <node concept="17QB3L" id="1DeqbSMDT84" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="1DeqbSMDT85" role="3cqZAp">
                    <node concept="2OqwBi" id="1DeqbSMDT86" role="3clFbG">
                      <node concept="2OqwBi" id="2_AUN5GoIMV" role="2Oq$k0">
                        <node concept="liA8E" id="2_AUN5GoMGB" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                        </node>
                        <node concept="37vLTw" id="2_AUN5GoLO3" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_AUN5Goh6w" resolve="myMpsProject" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1DeqbSMDT88" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                        <node concept="1bVj0M" id="1DeqbSMDT89" role="37wK5m">
                          <node concept="3clFbS" id="1DeqbSMDT8a" role="1bW5cS">
                            <node concept="3clFbF" id="1DeqbSMDT8b" role="3cqZAp">
                              <node concept="37vLTI" id="1DeqbSMDT8c" role="3clFbG">
                                <node concept="37vLTw" id="3GM_nagTzs3" role="37vLTJ">
                                  <ref role="3cqZAo" node="1DeqbSMDT83" resolve="presentation" />
                                </node>
                                <node concept="1rXfSq" id="1DeqbSMDT8e" role="37vLTx">
                                  <ref role="37wK5l" node="1DeqbSMDT18" resolve="getPresentation" />
                                  <node concept="37vLTw" id="1DeqbSMDT8f" role="37wK5m">
                                    <ref role="3cqZAo" node="1DeqbSMDT7Z" resolve="node" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1DeqbSMDT8g" role="3cqZAp">
                    <node concept="2OqwBi" id="1DeqbSMDT8h" role="3clFbw">
                      <node concept="37vLTw" id="3GM_nagTunu" role="2Oq$k0">
                        <ref role="3cqZAo" node="1DeqbSMDT83" resolve="presentation" />
                      </node>
                      <node concept="liA8E" id="1DeqbSMDT8j" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="3GM_nagTujm" role="37wK5m">
                          <ref role="3cqZAo" node="1DeqbSMDT7V" resolve="value" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="1DeqbSMDT8l" role="3clFbx">
                      <node concept="3clFbF" id="1DeqbSMDT8m" role="3cqZAp">
                        <node concept="2OqwBi" id="1DeqbSMDT8n" role="3clFbG">
                          <node concept="3dhRuq" id="1DeqbSMDT8o" role="2OqNvi">
                            <node concept="37vLTw" id="3GM_nagTvRJ" role="25WWJ7">
                              <ref role="3cqZAo" node="1DeqbSMDT7Z" resolve="node" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1DeqbSMDT8q" role="2Oq$k0">
                            <node concept="Xjq3P" id="1DeqbSMDT8r" role="2Oq$k0">
                              <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                            </node>
                            <node concept="2OwXpG" id="1DeqbSMDT8s" role="2OqNvi">
                              <ref role="2Oxat5" node="1DeqbSMDT0x" resolve="myValues" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zACq4" id="1DeqbSMDT8t" role="3cqZAp" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DeqbSMDT8u" role="1DdaDG">
                  <node concept="Xjq3P" id="1DeqbSMDT8v" role="2Oq$k0">
                    <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                  </node>
                  <node concept="2OwXpG" id="1DeqbSMDT8w" role="2OqNvi">
                    <ref role="2Oxat5" node="1DeqbSMDT0x" resolve="myValues" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1DeqbSMDT8x" role="3cqZAp">
            <node concept="3y3z36" id="1DeqbSMDT8y" role="3clFbw">
              <node concept="10Nm6u" id="1DeqbSMDT8z" role="3uHU7w" />
              <node concept="2OqwBi" id="1DeqbSMDT8$" role="3uHU7B">
                <node concept="2OwXpG" id="1DeqbSMDT8_" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0J" resolve="myListener" />
                </node>
                <node concept="Xjq3P" id="1DeqbSMDT8A" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1DeqbSMDT8B" role="3clFbx">
              <node concept="3clFbF" id="1DeqbSMDT8C" role="3cqZAp">
                <node concept="2OqwBi" id="1DeqbSMDT8D" role="3clFbG">
                  <node concept="liA8E" id="1DeqbSMDT8E" role="2OqNvi">
                    <ref role="37wK5l" to="hyam:~ActionListener.actionPerformed(java.awt.event.ActionEvent)" resolve="actionPerformed" />
                    <node concept="10Nm6u" id="1DeqbSMDT8F" role="37wK5m" />
                  </node>
                  <node concept="2OqwBi" id="1DeqbSMDT8G" role="2Oq$k0">
                    <node concept="Xjq3P" id="1DeqbSMDT8H" role="2Oq$k0">
                      <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                    </node>
                    <node concept="2OwXpG" id="1DeqbSMDT8I" role="2OqNvi">
                      <ref role="2Oxat5" node="1DeqbSMDT0J" resolve="myListener" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1DeqbSMDT8J" role="3cqZAp">
            <node concept="2OqwBi" id="1DeqbSMDT8K" role="3clFbG">
              <node concept="liA8E" id="1DeqbSMDT8L" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JList.updateUI()" resolve="updateUI" />
              </node>
              <node concept="2OqwBi" id="1DeqbSMDT8M" role="2Oq$k0">
                <node concept="Xjq3P" id="1DeqbSMDT8N" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
                <node concept="2OwXpG" id="1DeqbSMDT8O" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0u" resolve="myListComponent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1DeqbSMDT8P" role="3cqZAp">
            <node concept="2OqwBi" id="1DeqbSMDT8Q" role="3clFbG">
              <node concept="2OqwBi" id="1DeqbSMDT8R" role="2Oq$k0">
                <node concept="Xjq3P" id="1DeqbSMDT8S" role="2Oq$k0">
                  <ref role="1HBi2w" node="1DeqbSMDT0o" resolve="ListPanel" />
                </node>
                <node concept="2OwXpG" id="1DeqbSMDT8T" role="2OqNvi">
                  <ref role="2Oxat5" node="1DeqbSMDT0M" resolve="myListModel" />
                </node>
              </node>
              <node concept="liA8E" id="1DeqbSMDT8U" role="2OqNvi">
                <ref role="37wK5l" node="1DeqbSMDT5z" resolve="fireSomethingChanged" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5kWneGv32Tc" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXofDc" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXofDd" role="1PaTwD">
                <property role="3oM_SC" value="index" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofDe" role="1PaTwD">
                <property role="3oM_SC" value="restore" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofDf" role="1PaTwD">
                <property role="3oM_SC" value="code" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofDg" role="1PaTwD">
                <property role="3oM_SC" value="came" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofDh" role="1PaTwD">
                <property role="3oM_SC" value="from" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofDi" role="1PaTwD">
                <property role="3oM_SC" value="base" />
              </node>
              <node concept="3oM_SD" id="ATZLwXofDj" role="1PaTwD">
                <property role="3oM_SC" value="ListRemoveAction" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5kWneGv3bf3" role="3cqZAp">
            <node concept="2OqwBi" id="5kWneGv3ciB" role="3clFbG">
              <node concept="37vLTw" id="5kWneGv3bf1" role="2Oq$k0">
                <ref role="3cqZAo" node="5kWneGv26cR" resolve="myList" />
              </node>
              <node concept="liA8E" id="5kWneGv3e8a" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JList.setSelectedIndex(int)" resolve="setSelectedIndex" />
                <node concept="2YIFZM" id="5kWneGv3n3_" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.min(int,int)" resolve="min" />
                  <node concept="3cpWsd" id="5kWneGv3r38" role="37wK5m">
                    <node concept="3cmrfG" id="5kWneGv3rOz" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="5kWneGv3jtQ" role="3uHU7B">
                      <node concept="2OqwBi" id="5kWneGv3fMS" role="2Oq$k0">
                        <node concept="37vLTw" id="5kWneGv3f8B" role="2Oq$k0">
                          <ref role="3cqZAo" node="5kWneGv26cR" resolve="myList" />
                        </node>
                        <node concept="liA8E" id="5kWneGv3je3" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JList.getModel()" resolve="getModel" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5kWneGv3kUH" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~ListModel.getSize()" resolve="getSize" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5kWneGv3pPI" role="37wK5m">
                    <ref role="3cqZAo" node="5kWneGv2Y26" resolve="minSelectionIndex" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5kWneGv2scf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5kWneGv2qoK" role="jymVt" />
      <node concept="3Tm6S6" id="1DeqbSMDT7I" role="1B3o_S" />
      <node concept="3clFb_" id="7XbeqBA_iC4" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="update" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7XbeqBA_iC5" role="1B3o_S" />
        <node concept="3cqZAl" id="7XbeqBA_iC7" role="3clF45" />
        <node concept="37vLTG" id="7XbeqBA_iC8" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="7XbeqBA_iC9" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="7XbeqBA_iCa" role="3clF47">
          <node concept="3clFbF" id="7XbeqBA_iIh" role="3cqZAp">
            <node concept="2OqwBi" id="7XbeqBA_DiC" role="3clFbG">
              <node concept="2OqwBi" id="7XbeqBA_j09" role="2Oq$k0">
                <node concept="37vLTw" id="7XbeqBA_iIg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7XbeqBA_iC8" resolve="event" />
                </node>
                <node concept="liA8E" id="7XbeqBA_Da$" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                </node>
              </node>
              <node concept="liA8E" id="7XbeqBA_EoR" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
                <node concept="1Wc70l" id="5kWneGv2oyk" role="37wK5m">
                  <node concept="1Wc70l" id="2nr0n4UdaXU" role="3uHU7B">
                    <node concept="37vLTw" id="7XbeqBA_ExF" role="3uHU7B">
                      <ref role="3cqZAo" node="7XbeqBAyo8l" resolve="isEditable" />
                    </node>
                    <node concept="3y3z36" id="2nr0n4Udcg1" role="3uHU7w">
                      <node concept="10Nm6u" id="2nr0n4Udcg2" role="3uHU7w" />
                      <node concept="37vLTw" id="2nr0n4Udcg3" role="3uHU7B">
                        <ref role="3cqZAo" node="2_AUN5Goh6w" resolve="myMpsProject" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1mBiRF0LBRY" role="3uHU7w">
                    <node concept="2OqwBi" id="1mBiRF0LBRZ" role="3uHU7B">
                      <node concept="2OqwBi" id="1mBiRF0LBS0" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxeuUac" role="2Oq$k0">
                          <ref role="3cqZAo" node="5kWneGv26cR" resolve="myList" />
                        </node>
                        <node concept="liA8E" id="1mBiRF0LBS4" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JList.getSelectedIndices()" resolve="getSelectedIndices" />
                        </node>
                      </node>
                      <node concept="1Rwk04" id="1mBiRF0LBS5" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="1mBiRF0LBS6" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7XbeqBA_iCb" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6CaFcV_nSjx" role="jymVt" />
      <node concept="3clFb_" id="6CaFcV_nSjy" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="6CaFcV_nSjz" role="1B3o_S" />
        <node concept="2AHcQZ" id="6CaFcV_nSj$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6CaFcV_nSj_" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="6CaFcV_nSjA" role="3clF47">
          <node concept="3SKdUt" id="6CaFcV_oBiZ" role="3cqZAp">
            <node concept="1PaTwC" id="6CaFcV_oBj0" role="1aUNEU">
              <node concept="3oM_SD" id="6CaFcV_oBkc" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="6CaFcV_oOxO" role="1PaTwD">
                <property role="3oM_SC" value="Swing" />
              </node>
              <node concept="3oM_SD" id="6CaFcV_oOzi" role="1PaTwD">
                <property role="3oM_SC" value="access" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6CaFcV_nSjB" role="3cqZAp">
            <node concept="Rm8GO" id="6CaFcV_oirM" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.EDT" resolve="EDT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6CaFcV_nSjD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="5kWneGv259K" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
      </node>
    </node>
    <node concept="3UR2Jj" id="1DeqbSMJ8fU" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBNM" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBNN" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNO" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNP" role="1PaTwD">
          <property role="3oM_SC" value="was" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNQ" role="1PaTwD">
          <property role="3oM_SC" value="split" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNR" role="1PaTwD">
          <property role="3oM_SC" value="up" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNS" role="1PaTwD">
          <property role="3oM_SC" value="without" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNT" role="1PaTwD">
          <property role="3oM_SC" value="thinking," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNU" role="1PaTwD">
          <property role="3oM_SC" value="just" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNV" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNW" role="1PaTwD">
          <property role="3oM_SC" value="make" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNX" role="1PaTwD">
          <property role="3oM_SC" value="something" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNY" role="1PaTwD">
          <property role="3oM_SC" value="work" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBNZ" role="1PaTwD">
          <property role="3oM_SC" value="quickly." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBO0" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBO1" role="1PaTwD">
          <property role="3oM_SC" value="TODO:" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBO2" role="1PaTwD">
          <property role="3oM_SC" value="refactor" />
        </node>
      </node>
    </node>
  </node>
</model>

