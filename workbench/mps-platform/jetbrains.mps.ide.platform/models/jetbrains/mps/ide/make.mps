<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:abe0ad99-3ef3-4277-a170-d1efd7986b86(jetbrains.mps.ide.make)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
  </languages>
  <imports>
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="4rvk" ref="r:7cb72aee-d3e2-47e9-9964-3abda6a73a9a(jetbrains.mps.make.service)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="i9so" ref="r:9e5578e0-37f0-4c9b-a301-771bcb453678(jetbrains.mps.make.script)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4o98" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.core.platform(MPS.Core/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="rk9m" ref="r:f8580193-afc4-4673-a635-d4757ca591cf(jetbrains.mps.internal.make.runtime.util)" />
    <import index="j07i" ref="r:d357a980-6a2b-481f-acb3-29792a9d3728(jetbrains.mps.make.dependencies)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="ud0o" ref="r:71895ceb-c89d-4545-aa38-89d1cd891f17(jetbrains.mps.make.facet)" />
    <import index="1gam" ref="r:dc013bd4-6bcf-44c3-9e08-a65e07c88df7(jetbrains.mps.internal.make.cfg)" />
    <import index="jqcx" ref="r:8e0d2787-667a-41b8-9f98-9bb45c087fba(jetbrains.mps.internal.make.runtime.script)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mzcb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.make.kotlin(MPS.Core/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
    <import index="fnpx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.notification(MPS.IDEA/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
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
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
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
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
    </language>
  </registry>
  <node concept="312cEu" id="9D0Ba05uYl">
    <property role="TrG5h" value="WorkbenchMakeService" />
    <node concept="3Tm1VV" id="9D0Ba05v9D" role="1B3o_S" />
    <node concept="3uibUv" id="9D0Ba05vmE" role="EKbjA">
      <ref role="3uigEE" to="hfuk:1NAY6bPd4nM" resolve="IMakeService" />
    </node>
    <node concept="3uibUv" id="1aDdKrsJ$hW" role="EKbjA">
      <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
    </node>
    <node concept="3uibUv" id="9D0Ba05vmJ" role="1zkMxy">
      <ref role="3uigEE" to="4rvk:1Z_kCIGSOD4" resolve="AbstractMakeService" />
    </node>
    <node concept="2tJIrI" id="5rIhWKNSIUA" role="jymVt" />
    <node concept="312cEg" id="9D0Ba05vmg" role="jymVt">
      <property role="TrG5h" value="currentSessionStickyMark" />
      <node concept="3Tm6S6" id="9D0Ba05vmh" role="1B3o_S" />
      <node concept="3uibUv" id="9D0Ba05vmi" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicMarkableReference" resolve="AtomicMarkableReference" />
        <node concept="3uibUv" id="9D0Ba05vmj" role="11_B2D">
          <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
        </node>
      </node>
      <node concept="2ShNRf" id="9D0Ba05vmk" role="33vP2m">
        <node concept="1pGfFk" id="9D0Ba05vml" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.&lt;init&gt;(java.lang.Object,boolean)" resolve="AtomicMarkableReference" />
          <node concept="3uibUv" id="9D0Ba05vmm" role="1pMfVU">
            <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
          </node>
          <node concept="10Nm6u" id="9D0Ba05vmn" role="37wK5m" />
          <node concept="3clFbT" id="9D0Ba05vmo" role="37wK5m">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9D0Ba05vmp" role="jymVt">
      <property role="TrG5h" value="currentProcess" />
      <property role="34CwA1" value="true" />
      <node concept="3Tm6S6" id="9D0Ba05vmq" role="1B3o_S" />
      <node concept="3uibUv" id="9D0Ba05vmr" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
        <node concept="3uibUv" id="9D0Ba05vms" role="11_B2D">
          <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
          <node concept="3uibUv" id="9D0Ba05vmt" role="11_B2D">
            <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="9D0Ba05vmu" role="33vP2m">
        <node concept="1pGfFk" id="9D0Ba05vmv" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;()" resolve="AtomicReference" />
          <node concept="3uibUv" id="9D0Ba05vmw" role="1pMfVU">
            <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
            <node concept="3uibUv" id="9D0Ba05vmx" role="11_B2D">
              <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9D0Ba05vmy" role="jymVt">
      <property role="TrG5h" value="listeners" />
      <node concept="3Tm6S6" id="9D0Ba05vmz" role="1B3o_S" />
      <node concept="_YKpA" id="9D0Ba05vm$" role="1tU5fm">
        <node concept="3uibUv" id="9D0Ba05vm_" role="_ZDj9">
          <ref role="3uigEE" to="hfuk:7lTD6YZtjg2" resolve="IMakeNotificationListener" />
        </node>
      </node>
      <node concept="2YIFZM" id="9D0Ba05vmA" role="33vP2m">
        <ref role="37wK5l" to="33ny:~Collections.synchronizedList(java.util.List)" resolve="synchronizedList" />
        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
        <node concept="2ShNRf" id="9D0Ba05vmB" role="37wK5m">
          <node concept="Tc6Ow" id="9D0Ba05vmC" role="2ShVmc">
            <node concept="3uibUv" id="9D0Ba05vmD" role="HW$YZ">
              <ref role="3uigEE" to="hfuk:7lTD6YZtjg2" resolve="IMakeNotificationListener" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1LibDRnMi__" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1LibDRnMi_A" role="1B3o_S" />
      <node concept="3uibUv" id="1LibDRnMii3" role="1tU5fm">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZzUxXZQOVM" role="jymVt" />
    <node concept="312cEg" id="4DiVYcGjAvq" role="jymVt">
      <property role="TrG5h" value="myAliveFile" />
      <node concept="3Tm6S6" id="4DiVYcGjvL$" role="1B3o_S" />
      <node concept="3uibUv" id="4DiVYcGjyLr" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="z59LJ" id="4DiVYcGjH9c" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsE3l" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsE3m" role="1PaTwD">
            <property role="3oM_SC" value="File" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3n" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3o" role="1PaTwD">
            <property role="3oM_SC" value="indicates" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3p" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3q" role="1PaTwD">
            <property role="3oM_SC" value="service" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3r" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3s" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3t" role="1PaTwD">
            <property role="3oM_SC" value="up," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3u" role="1PaTwD">
            <property role="3oM_SC" value="will" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3v" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3w" role="1PaTwD">
            <property role="3oM_SC" value="deleted" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3x" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3y" role="1PaTwD">
            <property role="3oM_SC" value="dispose." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3z" role="1PaTwD">
            <property role="3oM_SC" value="Used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3$" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3_" role="1PaTwD">
            <property role="3oM_SC" value="kotlin" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3A" role="1PaTwD">
            <property role="3oM_SC" value="compiler" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsE3B" role="1PaTwD">
            <property role="3oM_SC" value="options." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4DiVYcGjomB" role="jymVt" />
    <node concept="3clFbW" id="9D0Ba05v9E" role="jymVt">
      <node concept="3cqZAl" id="9D0Ba05v9F" role="3clF45" />
      <node concept="3Tm1VV" id="9D0Ba05v9G" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05v9H" role="3clF47">
        <node concept="3clFbF" id="1LibDRnMisW" role="3cqZAp">
          <node concept="37vLTI" id="1LibDRnMisY" role="3clFbG">
            <node concept="2OqwBi" id="1LibDRnMii9" role="37vLTx">
              <node concept="2YIFZM" id="1vwCG6QuVxt" role="2Oq$k0">
                <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
              </node>
              <node concept="liA8E" id="1LibDRnMiib" role="2OqNvi">
                <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
              </node>
            </node>
            <node concept="37vLTw" id="1LibDRnMit2" role="37vLTJ">
              <ref role="3cqZAo" node="1LibDRnMi__" resolve="myPlatform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZzUxXZQXlE" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vaK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="9D0Ba05vaL" role="1B3o_S" />
      <node concept="3cqZAl" id="9D0Ba05vaM" role="3clF45" />
      <node concept="3clFbS" id="9D0Ba05vaN" role="3clF47">
        <node concept="3SKdUt" id="1aDdKrsJUKK" role="3cqZAp">
          <node concept="1PaTwC" id="1aDdKrsJUKL" role="1aUNEU">
            <node concept="3oM_SD" id="1aDdKrsJUKM" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsK1$J" role="1PaTwD">
              <property role="3oM_SC" value="serve" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsK1A5" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsK1A6" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsK1A7" role="1PaTwD">
              <property role="3oM_SC" value="top" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsK1AY" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsK1AZ" role="1PaTwD">
              <property role="3oM_SC" value="dependant" />
            </node>
            <node concept="3oM_SD" id="1aDdKrsK1Da" role="1PaTwD">
              <property role="3oM_SC" value="disposable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SlqU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzN" role="jymVt" />
    <node concept="3clFb_" id="43l$qHE8U6I" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="make" />
      <node concept="37vLTG" id="43l$qHE8U6J" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="43l$qHE8U6K" role="1tU5fm">
          <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
        </node>
      </node>
      <node concept="37vLTG" id="43l$qHE8U6L" role="3clF46">
        <property role="TrG5h" value="resources" />
        <node concept="A3Dl8" id="43l$qHE8U6M" role="1tU5fm">
          <node concept="3qUE_q" id="43l$qHE8U6N" role="A3Ik2">
            <node concept="3uibUv" id="43l$qHE8U6O" role="3qUE_r">
              <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="43l$qHE8U6P" role="1B3o_S" />
      <node concept="37vLTG" id="43l$qHE8U6Q" role="3clF46">
        <property role="TrG5h" value="script" />
        <node concept="3uibUv" id="43l$qHE8U6R" role="1tU5fm">
          <ref role="3uigEE" to="i9so:5mqBoD3U3Wb" resolve="IScript" />
        </node>
      </node>
      <node concept="37vLTG" id="43l$qHE8U6S" role="3clF46">
        <property role="TrG5h" value="controller" />
        <node concept="3uibUv" id="43l$qHE8U6T" role="1tU5fm">
          <ref role="3uigEE" to="i9so:4231y0oKQyu" resolve="IScriptController" />
        </node>
      </node>
      <node concept="37vLTG" id="43l$qHE8U7o" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="43l$qHE8Ue3" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
        <node concept="2AHcQZ" id="43l$qHE8Uj0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="43l$qHE8U6U" role="3clF45">
        <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
        <node concept="3uibUv" id="43l$qHE8U6V" role="11_B2D">
          <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
        </node>
      </node>
      <node concept="3clFbS" id="43l$qHE8U6W" role="3clF47">
        <node concept="3clFbF" id="43l$qHE8U6X" role="3cqZAp">
          <node concept="2OqwBi" id="43l$qHE8U6Y" role="3clFbG">
            <node concept="Xjq3P" id="43l$qHE8U6Z" role="2Oq$k0" />
            <node concept="liA8E" id="43l$qHE8U70" role="2OqNvi">
              <ref role="37wK5l" node="9D0Ba05vl9" resolve="checkValidUsage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="43l$qHE8U71" role="3cqZAp">
          <node concept="2OqwBi" id="43l$qHE8U72" role="3clFbG">
            <node concept="Xjq3P" id="43l$qHE8U73" role="2Oq$k0" />
            <node concept="liA8E" id="43l$qHE8U74" role="2OqNvi">
              <ref role="37wK5l" node="9D0Ba05vlu" resolve="checkValidSession" />
              <node concept="37vLTw" id="2BHiRxgm5G0" role="37wK5m">
                <ref role="3cqZAo" node="43l$qHE8U6J" resolve="session" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3$29j12OHK6" role="3cqZAp">
          <node concept="3cpWsn" id="3$29j12OHK7" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3$29j12OHK8" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
              <node concept="3uibUv" id="3$29j12OHK9" role="11_B2D">
                <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
              </node>
            </node>
            <node concept="10Nm6u" id="6ZzUxXZUPdZ" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="3$29j12OHKb" role="3cqZAp">
          <node concept="3clFbS" id="3$29j12OHKc" role="1zxBo7">
            <node concept="3clFbF" id="3$29j12OHKd" role="3cqZAp">
              <node concept="1rXfSq" id="3$29j12OHKe" role="3clFbG">
                <ref role="37wK5l" node="9D0Ba05viC" resolve="awaitCurrentProcess" />
              </node>
            </node>
            <node concept="3clFbF" id="3$29j12OHKf" role="3cqZAp">
              <node concept="37vLTI" id="3$29j12OHKg" role="3clFbG">
                <node concept="1rXfSq" id="3$29j12OHKh" role="37vLTx">
                  <ref role="37wK5l" node="9D0Ba05vjl" resolve="_doMake" />
                  <node concept="37vLTw" id="3$29j12OIyo" role="37wK5m">
                    <ref role="3cqZAo" node="43l$qHE8U6L" resolve="resources" />
                  </node>
                  <node concept="37vLTw" id="3$29j12OHKj" role="37wK5m">
                    <ref role="3cqZAo" node="43l$qHE8U6Q" resolve="script" />
                  </node>
                  <node concept="37vLTw" id="3$29j12OHKk" role="37wK5m">
                    <ref role="3cqZAo" node="43l$qHE8U6S" resolve="controller" />
                  </node>
                  <node concept="37vLTw" id="3$29j12OHKl" role="37wK5m">
                    <ref role="3cqZAo" node="43l$qHE8U7o" resolve="monitor" />
                  </node>
                </node>
                <node concept="37vLTw" id="3$29j12OHKm" role="37vLTJ">
                  <ref role="3cqZAo" node="3$29j12OHK7" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="xvs04dI$UJ" role="1zxBo6">
            <node concept="3clFbS" id="3$29j12OHKn" role="1wplMD">
              <node concept="3clFbJ" id="3$29j12OHKo" role="3cqZAp">
                <node concept="3clFbS" id="3$29j12OHKp" role="3clFbx">
                  <node concept="3clFbF" id="3$29j12OHKq" role="3cqZAp">
                    <node concept="2OqwBi" id="3$29j12OHKr" role="3clFbG">
                      <node concept="Xjq3P" id="3$29j12OHKs" role="2Oq$k0" />
                      <node concept="liA8E" id="3$29j12OHKt" role="2OqNvi">
                        <ref role="37wK5l" node="9D0Ba05vhn" resolve="attemptCloseSession" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="22lmx$" id="3$29j12OHKu" role="3clFbw">
                  <node concept="2OqwBi" id="3$29j12OHKv" role="3uHU7w">
                    <node concept="37vLTw" id="3$29j12OHKw" role="2Oq$k0">
                      <ref role="3cqZAo" node="3$29j12OHK7" resolve="result" />
                    </node>
                    <node concept="liA8E" id="3$29j12OHKx" role="2OqNvi">
                      <ref role="37wK5l" to="5zyv:~Future.isDone()" resolve="isDone" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="3$29j12OHKy" role="3uHU7B">
                    <node concept="37vLTw" id="3$29j12OHKz" role="3uHU7B">
                      <ref role="3cqZAo" node="3$29j12OHK7" resolve="result" />
                    </node>
                    <node concept="10Nm6u" id="3$29j12OHK$" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4uO1VCfME7q" role="3cqZAp">
          <node concept="1PaTwC" id="4uO1VCfME7r" role="1aUNEU">
            <node concept="3oM_SD" id="4uO1VCfME8b" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMJn7" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKpg" role="1PaTwD">
              <property role="3oM_SC" value="wonder" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKqa" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKqf" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKqN" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKrK" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKy7" role="1PaTwD">
              <property role="3oM_SC" value="'composed'" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKtc" role="1PaTwD">
              <property role="3oM_SC" value="future" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKB2" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKBd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKCH" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKCU" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKD8" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKFZ" role="1PaTwD">
              <property role="3oM_SC" value="report" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKKD" role="1PaTwD">
              <property role="3oM_SC" value="IResult," />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKSr" role="1PaTwD">
              <property role="3oM_SC" value="once" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKU3" role="1PaTwD">
              <property role="3oM_SC" value="ready," />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKOo" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMKPw" role="1PaTwD">
              <property role="3oM_SC" value="displayInfo()" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4uO1VCfMOob" role="3cqZAp">
          <node concept="1PaTwC" id="4uO1VCfMOoc" role="1aUNEU">
            <node concept="3oM_SD" id="4uO1VCfMOpi" role="1PaTwD">
              <property role="3oM_SC" value=" " />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMQaT" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMQaW" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMQb0" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMQXa" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMQY6" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfMQYd" role="1PaTwD">
              <property role="3oM_SC" value="done()." />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7ti" role="1PaTwD">
              <property role="3oM_SC" value="Perhaps," />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7v_" role="1PaTwD">
              <property role="3oM_SC" value="delegation?" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7Ji" role="1PaTwD">
              <property role="3oM_SC" value="Just" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7Lf" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7Mh" role="1PaTwD">
              <property role="3oM_SC" value="feel" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7Mu" role="1PaTwD">
              <property role="3oM_SC" value="comfortable" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7RW" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7Sb" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7VT" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN7Yk" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN88P" role="1PaTwD">
              <property role="3oM_SC" value="service" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfN81e" role="1PaTwD">
              <property role="3oM_SC" value="instance." />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3$29j12OHK_" role="3cqZAp">
          <node concept="37vLTw" id="3$29j12OHKA" role="3cqZAk">
            <ref role="3cqZAo" node="3$29j12OHK7" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SlqW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzO" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vcF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isSessionActive" />
      <node concept="10P_77" id="9D0Ba05vcG" role="3clF45" />
      <node concept="3Tm1VV" id="9D0Ba05vcH" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05vcI" role="3clF47">
        <node concept="3clFbF" id="9D0Ba05vcJ" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vcK" role="3clFbG">
            <node concept="Xjq3P" id="9D0Ba05vcL" role="2Oq$k0" />
            <node concept="liA8E" id="9D0Ba05vcM" role="2OqNvi">
              <ref role="37wK5l" node="9D0Ba05vl9" resolve="checkValidUsage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05vcN" role="3cqZAp">
          <node concept="3y3z36" id="9D0Ba05vcO" role="3clFbG">
            <node concept="10Nm6u" id="9D0Ba05vcP" role="3uHU7w" />
            <node concept="2OqwBi" id="9D0Ba05vcQ" role="3uHU7B">
              <node concept="Xjq3P" id="9D0Ba05vcR" role="2Oq$k0" />
              <node concept="liA8E" id="9D0Ba05vcS" role="2OqNvi">
                <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SlqY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzP" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vcT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="openNewSession" />
      <node concept="10P_77" id="9D0Ba05vcU" role="3clF45" />
      <node concept="3Tm1VV" id="9D0Ba05vcV" role="1B3o_S" />
      <node concept="37vLTG" id="9D0Ba05vcW" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="9D0Ba05vcX" role="1tU5fm">
          <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
        </node>
      </node>
      <node concept="3clFbS" id="9D0Ba05vcY" role="3clF47">
        <node concept="3clFbF" id="9D0Ba05vcZ" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vd0" role="3clFbG">
            <node concept="Xjq3P" id="9D0Ba05vd1" role="2Oq$k0" />
            <node concept="liA8E" id="9D0Ba05vd2" role="2OqNvi">
              <ref role="37wK5l" node="9D0Ba05vl9" resolve="checkValidUsage" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2BjwmTxV0jn" role="3cqZAp">
          <node concept="3cpWsn" id="2BjwmTxV0jo" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="2BjwmTxV0jj" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="2BjwmTxV0jp" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2OqwBi" id="2BjwmTxV0jq" role="37wK5m">
                <node concept="37vLTw" id="2BjwmTxV0js" role="2Oq$k0">
                  <ref role="3cqZAo" node="9D0Ba05vcW" resolve="session" />
                </node>
                <node concept="liA8E" id="4_zjhpmxxFg" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="6ZzUxXZQJKG" role="3cqZAp">
          <node concept="3y3z36" id="6ZzUxXZQNdn" role="1gVkn0">
            <node concept="10Nm6u" id="6ZzUxXZQNoX" role="3uHU7w" />
            <node concept="37vLTw" id="6ZzUxXZQMSs" role="3uHU7B">
              <ref role="3cqZAo" node="2BjwmTxV0jo" resolve="ideaProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6y_Op2B0Dme" role="3cqZAp">
          <node concept="3cpWsn" id="6y_Op2B0Dmf" role="3cpWs9">
            <property role="TrG5h" value="dumbInstance" />
            <node concept="3uibUv" id="6y_Op2B0BeV" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~DumbService" resolve="DumbService" />
            </node>
            <node concept="2YIFZM" id="6y_Op2B0Dmg" role="33vP2m">
              <ref role="1Pybhc" to="4nm9:~DumbService" resolve="DumbService" />
              <ref role="37wK5l" to="4nm9:~DumbService.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <node concept="37vLTw" id="6y_Op2B0Dmh" role="37wK5m">
                <ref role="3cqZAo" node="2BjwmTxV0jo" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05vd3" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05vd4" role="3clFbx">
            <node concept="3clFbJ" id="6y_Op2B0kGg" role="3cqZAp">
              <node concept="3fqX7Q" id="6y_Op2B0kGh" role="3clFbw">
                <node concept="2YIFZM" id="6y_Op2B0v6c" role="3fr31v">
                  <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
                  <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                </node>
              </node>
              <node concept="9aQIb" id="6y_Op2B0kGq" role="9aQIa">
                <node concept="3clFbS" id="6y_Op2B0kGr" role="9aQI4">
                  <node concept="3clFbF" id="6y_Op2B0kGs" role="3cqZAp">
                    <node concept="2OqwBi" id="6y_Op2B0kGt" role="3clFbG">
                      <node concept="37vLTw" id="6y_Op2B0HPB" role="2Oq$k0">
                        <ref role="3cqZAo" node="6y_Op2B0Dmf" resolve="dumbInstance" />
                      </node>
                      <node concept="liA8E" id="6y_Op2B0NNY" role="2OqNvi">
                        <ref role="37wK5l" to="4nm9:~DumbService.completeJustSubmittedTasks()" resolve="completeJustSubmittedTasks" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6y_Op2B0kGk" role="3clFbx">
                <node concept="3clFbF" id="6y_Op2B0kGl" role="3cqZAp">
                  <node concept="2OqwBi" id="6y_Op2B0kGm" role="3clFbG">
                    <node concept="37vLTw" id="6y_Op2B0HDW" role="2Oq$k0">
                      <ref role="3cqZAo" node="6y_Op2B0Dmf" resolve="dumbInstance" />
                    </node>
                    <node concept="liA8E" id="6y_Op2B0NQF" role="2OqNvi">
                      <ref role="37wK5l" to="4nm9:~DumbService.waitForSmartMode()" resolve="waitForSmartMode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6y_Op2B0O1J" role="3cqZAp">
              <node concept="3clFbS" id="6y_Op2B0O1L" role="3clFbx">
                <node concept="3clFbF" id="9D0Ba05vd5" role="3cqZAp">
                  <node concept="2OqwBi" id="9D0Ba05vd6" role="3clFbG">
                    <node concept="37vLTw" id="6y_Op2B0Dmj" role="2Oq$k0">
                      <ref role="3cqZAo" node="6y_Op2B0Dmf" resolve="dumbInstance" />
                    </node>
                    <node concept="liA8E" id="9D0Ba05vde" role="2OqNvi">
                      <ref role="37wK5l" to="4nm9:~DumbService.showDumbModeNotification(java.lang.String)" resolve="showDumbModeNotification" />
                      <node concept="Xl_RD" id="9D0Ba05vdf" role="37wK5m">
                        <property role="Xl_RC" value="Generation is not available until indices are built" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="9D0Ba05vdg" role="3cqZAp">
                  <node concept="3clFbT" id="9D0Ba05vdh" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6y_Op2B0R6B" role="3clFbw">
                <node concept="37vLTw" id="6y_Op2B0QYw" role="2Oq$k0">
                  <ref role="3cqZAo" node="6y_Op2B0Dmf" resolve="dumbInstance" />
                </node>
                <node concept="liA8E" id="6y_Op2B0SjW" role="2OqNvi">
                  <ref role="37wK5l" to="4nm9:~DumbService.isDumb()" resolve="isDumb" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="9D0Ba05vdi" role="3clFbw">
            <node concept="37vLTw" id="6y_Op2B0Dmi" role="2Oq$k0">
              <ref role="3cqZAo" node="6y_Op2B0Dmf" resolve="dumbInstance" />
            </node>
            <node concept="liA8E" id="9D0Ba05vdq" role="2OqNvi">
              <ref role="37wK5l" to="4nm9:~DumbService.isDumb()" resolve="isDumb" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05vdr" role="3cqZAp">
          <node concept="3fqX7Q" id="9D0Ba05vds" role="3clFbw">
            <node concept="2OqwBi" id="9D0Ba05vdt" role="3fr31v">
              <node concept="37vLTw" id="2BHiRxeuMxU" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
              </node>
              <node concept="liA8E" id="9D0Ba05vdv" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.compareAndSet(java.lang.Object,java.lang.Object,boolean,boolean)" resolve="compareAndSet" />
                <node concept="10Nm6u" id="9D0Ba05vdw" role="37wK5m" />
                <node concept="37vLTw" id="2BHiRxglCw_" role="37wK5m">
                  <ref role="3cqZAo" node="9D0Ba05vcW" resolve="session" />
                </node>
                <node concept="3clFbT" id="9D0Ba05vdy" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="2OqwBi" id="9D0Ba05vdz" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxglbnG" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05vcW" resolve="session" />
                  </node>
                  <node concept="liA8E" id="4_zjhpmxxHf" role="2OqNvi">
                    <ref role="37wK5l" to="hfuk:1AfPmE4tJU7" resolve="isSticky" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="9D0Ba05vdA" role="3clFbx">
            <node concept="3cpWs6" id="9D0Ba05vdB" role="3cqZAp">
              <node concept="3clFbT" id="9D0Ba05vdC" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05vdD" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzh$x" role="3clFbG">
            <ref role="37wK5l" node="9D0Ba05vgk" resolve="notifyListeners" />
            <node concept="2ShNRf" id="9D0Ba05vdF" role="37wK5m">
              <node concept="1pGfFk" id="9D0Ba05vdG" role="2ShVmc">
                <ref role="37wK5l" to="hfuk:7lTD6YZtg3_" resolve="MakeNotification" />
                <node concept="2OqwBi" id="54Qi_O4kRhS" role="37wK5m">
                  <node concept="37vLTw" id="54Qi_O4kKoI" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05vcW" resolve="session" />
                  </node>
                  <node concept="liA8E" id="54Qi_O4l3eB" role="2OqNvi">
                    <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                  </node>
                </node>
                <node concept="Xjq3P" id="9D0Ba05vdH" role="37wK5m" />
                <node concept="Rm8GO" id="9D0Ba05vdI" role="37wK5m">
                  <ref role="Rm8GQ" to="hfuk:5O50Cn9WpA7" resolve="SESSION_OPENED" />
                  <ref role="1Px2BO" to="hfuk:7lTD6YZtjgd" resolve="MakeNotification.Kind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="9D0Ba05vdJ" role="3cqZAp">
          <node concept="3clFbT" id="9D0Ba05vdK" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SlqV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzQ" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vdL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="closeSession" />
      <node concept="37vLTG" id="9D0Ba05vdM" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="9D0Ba05vdN" role="1tU5fm">
          <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
        </node>
      </node>
      <node concept="3cqZAl" id="9D0Ba05vdO" role="3clF45" />
      <node concept="3Tm1VV" id="9D0Ba05vdP" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05vdQ" role="3clF47">
        <node concept="3clFbF" id="9D0Ba05vdR" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vdS" role="3clFbG">
            <node concept="Xjq3P" id="9D0Ba05vdT" role="2Oq$k0" />
            <node concept="liA8E" id="9D0Ba05vdU" role="2OqNvi">
              <ref role="37wK5l" node="9D0Ba05vl9" resolve="checkValidUsage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05vdV" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vdW" role="3clFbG">
            <node concept="Xjq3P" id="9D0Ba05vdX" role="2Oq$k0" />
            <node concept="liA8E" id="9D0Ba05vdY" role="2OqNvi">
              <ref role="37wK5l" node="9D0Ba05vlu" resolve="checkValidSession" />
              <node concept="37vLTw" id="2BHiRxgm9Vy" role="37wK5m">
                <ref role="3cqZAo" node="9D0Ba05vdM" resolve="session" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05ve0" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05ve1" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuhUc" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
            </node>
            <node concept="liA8E" id="9D0Ba05ve3" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.attemptMark(java.lang.Object,boolean)" resolve="attemptMark" />
              <node concept="37vLTw" id="2BHiRxgm8jP" role="37wK5m">
                <ref role="3cqZAo" node="9D0Ba05vdM" resolve="session" />
              </node>
              <node concept="3clFbT" id="9D0Ba05ve5" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9D0Ba05ve6" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05ve7" role="3cpWs9">
            <property role="TrG5h" value="cp" />
            <node concept="3uibUv" id="9D0Ba05ve8" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
              <node concept="3uibUv" id="9D0Ba05ve9" role="11_B2D">
                <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
              </node>
            </node>
            <node concept="2OqwBi" id="9D0Ba05vea" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeukvV" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05vmp" resolve="currentProcess" />
              </node>
              <node concept="liA8E" id="9D0Ba05vec" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05ved" role="3cqZAp">
          <node concept="22lmx$" id="9D0Ba05vee" role="3clFbw">
            <node concept="2OqwBi" id="9D0Ba05vef" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTtMp" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05ve7" resolve="cp" />
              </node>
              <node concept="liA8E" id="9D0Ba05veh" role="2OqNvi">
                <ref role="37wK5l" to="5zyv:~Future.isDone()" resolve="isDone" />
              </node>
            </node>
            <node concept="3clFbC" id="9D0Ba05vei" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTu5M" role="3uHU7B">
                <ref role="3cqZAo" node="9D0Ba05ve7" resolve="cp" />
              </node>
              <node concept="10Nm6u" id="9D0Ba05vek" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="9D0Ba05vel" role="3clFbx">
            <node concept="3clFbJ" id="9D0Ba05vem" role="3cqZAp">
              <node concept="22lmx$" id="9D0Ba05ven" role="3clFbw">
                <node concept="2OqwBi" id="9D0Ba05veo" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxeuRPT" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
                  </node>
                  <node concept="liA8E" id="9D0Ba05veq" role="2OqNvi">
                    <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.compareAndSet(java.lang.Object,java.lang.Object,boolean,boolean)" resolve="compareAndSet" />
                    <node concept="37vLTw" id="2BHiRxglKZ4" role="37wK5m">
                      <ref role="3cqZAo" node="9D0Ba05vdM" resolve="session" />
                    </node>
                    <node concept="10Nm6u" id="9D0Ba05ves" role="37wK5m" />
                    <node concept="3clFbT" id="9D0Ba05vet" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="3clFbT" id="9D0Ba05veu" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="9D0Ba05vev" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxeuk0m" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
                  </node>
                  <node concept="liA8E" id="9D0Ba05vex" role="2OqNvi">
                    <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.compareAndSet(java.lang.Object,java.lang.Object,boolean,boolean)" resolve="compareAndSet" />
                    <node concept="37vLTw" id="2BHiRxgm8rW" role="37wK5m">
                      <ref role="3cqZAo" node="9D0Ba05vdM" resolve="session" />
                    </node>
                    <node concept="10Nm6u" id="9D0Ba05vez" role="37wK5m" />
                    <node concept="3clFbT" id="9D0Ba05ve$" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="3clFbT" id="9D0Ba05ve_" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="9D0Ba05veA" role="3clFbx">
                <node concept="3clFbF" id="9D0Ba05veB" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqyzhWe" role="3clFbG">
                    <ref role="37wK5l" node="9D0Ba05vgk" resolve="notifyListeners" />
                    <node concept="2ShNRf" id="9D0Ba05veD" role="37wK5m">
                      <node concept="1pGfFk" id="9D0Ba05veE" role="2ShVmc">
                        <ref role="37wK5l" to="hfuk:7lTD6YZtg3_" resolve="MakeNotification" />
                        <node concept="2OqwBi" id="54Qi_O4lmgc" role="37wK5m">
                          <node concept="37vLTw" id="54Qi_O4lgyD" role="2Oq$k0">
                            <ref role="3cqZAo" node="9D0Ba05vdM" resolve="session" />
                          </node>
                          <node concept="liA8E" id="54Qi_O4lsFA" role="2OqNvi">
                            <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                          </node>
                        </node>
                        <node concept="Xjq3P" id="9D0Ba05veF" role="37wK5m" />
                        <node concept="Rm8GO" id="9D0Ba05veG" role="37wK5m">
                          <ref role="Rm8GQ" to="hfuk:5O50Cn9WpYr" resolve="SESSION_CLOSED" />
                          <ref role="1Px2BO" to="hfuk:7lTD6YZtjgd" resolve="MakeNotification.Kind" />
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
      <node concept="2AHcQZ" id="3tYsUK_SlqT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzR" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vfM" role="jymVt">
      <property role="TrG5h" value="getSession" />
      <node concept="3uibUv" id="4_zjhpmxlOw" role="3clF45">
        <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
      </node>
      <node concept="3clFbS" id="9D0Ba05vfP" role="3clF47">
        <node concept="3cpWs6" id="9D0Ba05vfQ" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vfR" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxeuoeN" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
            </node>
            <node concept="liA8E" id="9D0Ba05vfT" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.getReference()" resolve="getReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzS" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vfU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addListener" />
      <node concept="37vLTG" id="9D0Ba05vfV" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="9D0Ba05vfW" role="1tU5fm">
          <ref role="3uigEE" to="hfuk:7lTD6YZtjg2" resolve="IMakeNotificationListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="9D0Ba05vfX" role="3clF45" />
      <node concept="3Tm1VV" id="9D0Ba05vfY" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05vfZ" role="3clF47">
        <node concept="3clFbF" id="9D0Ba05vg0" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzhyK" role="3clFbG">
            <ref role="37wK5l" node="9D0Ba05vl9" resolve="checkValidUsage" />
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05vg2" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vg3" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuMxw" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05vmy" resolve="listeners" />
            </node>
            <node concept="TSZUe" id="9D0Ba05vg5" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgm6Kl" role="25WWJ7">
                <ref role="3cqZAo" node="9D0Ba05vfV" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Slr1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzT" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vg7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="removeListener" />
      <node concept="3cqZAl" id="9D0Ba05vg8" role="3clF45" />
      <node concept="3Tm1VV" id="9D0Ba05vg9" role="1B3o_S" />
      <node concept="37vLTG" id="9D0Ba05vga" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="9D0Ba05vgb" role="1tU5fm">
          <ref role="3uigEE" to="hfuk:7lTD6YZtjg2" resolve="IMakeNotificationListener" />
        </node>
      </node>
      <node concept="3clFbS" id="9D0Ba05vgc" role="3clF47">
        <node concept="3SKdUt" id="2nj0UTlefU5" role="3cqZAp">
          <node concept="1PaTwC" id="2nj0UTlefU6" role="1aUNEU">
            <node concept="3oM_SD" id="2nj0UTlefU7" role="1PaTwD">
              <property role="3oM_SC" value="provisionally" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekCi" role="1PaTwD">
              <property role="3oM_SC" value="allow" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekCk" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekDD" role="1PaTwD">
              <property role="3oM_SC" value="unregister" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekFs" role="1PaTwD">
              <property role="3oM_SC" value="listeners" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekGL" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekI6" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekIX" role="1PaTwD">
              <property role="3oM_SC" value="moment" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekIY" role="1PaTwD">
              <property role="3oM_SC" value="(not" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekJP" role="1PaTwD">
              <property role="3oM_SC" value="necessarily" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekMW" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekOh" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekOi" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekOL" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekPC" role="1PaTwD">
              <property role="3oM_SC" value="active" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekQX" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="2nj0UTlekSi" role="1PaTwD">
              <property role="3oM_SC" value="service)" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2nj0UTle6sZ" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="9D0Ba05vgd" role="8Wnug">
            <node concept="1rXfSq" id="4hiugqyziXM" role="3clFbG">
              <ref role="37wK5l" node="9D0Ba05vl9" resolve="checkValidUsage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05vgf" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vgg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuW2N" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05vmy" resolve="listeners" />
            </node>
            <node concept="3dhRuq" id="9D0Ba05vgi" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxglsdM" role="25WWJ7">
                <ref role="3cqZAo" node="9D0Ba05vga" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SlqQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzU" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vgk" role="jymVt">
      <property role="TrG5h" value="notifyListeners" />
      <node concept="3cqZAl" id="9D0Ba05vgl" role="3clF45" />
      <node concept="3Tm6S6" id="9D0Ba05vgm" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05vgn" role="3clF47">
        <node concept="3clFbF" id="9D0Ba05vgo" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vgp" role="3clFbG">
            <node concept="2ShNRf" id="9D0Ba05vgq" role="2Oq$k0">
              <node concept="Tc6Ow" id="9D0Ba05vgr" role="2ShVmc">
                <node concept="37vLTw" id="2BHiRxeuL6P" role="I$8f6">
                  <ref role="3cqZAo" node="9D0Ba05vmy" resolve="listeners" />
                </node>
                <node concept="3uibUv" id="9D0Ba05vgt" role="HW$YZ">
                  <ref role="3uigEE" to="hfuk:7lTD6YZtjg2" resolve="IMakeNotificationListener" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="9D0Ba05vgu" role="2OqNvi">
              <node concept="1bVj0M" id="9D0Ba05vgv" role="23t8la">
                <node concept="3clFbS" id="9D0Ba05vgw" role="1bW5cS">
                  <node concept="3clFbF" id="9D0Ba05vgx" role="3cqZAp">
                    <node concept="2OqwBi" id="9D0Ba05vgy" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxglRHq" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0Y50" resolve="li" />
                      </node>
                      <node concept="liA8E" id="9D0Ba05vg$" role="2OqNvi">
                        <ref role="37wK5l" to="hfuk:7lTD6YZtjg4" resolve="handleNotification" />
                        <node concept="37vLTw" id="2BHiRxgmzv0" role="37wK5m">
                          <ref role="3cqZAo" node="9D0Ba05vgC" resolve="notification" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Y50" role="1bW2Oz">
                  <property role="TrG5h" value="li" />
                  <node concept="2jxLKc" id="5W7E4fV0Y51" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9D0Ba05vgC" role="3clF46">
        <property role="TrG5h" value="notification" />
        <node concept="3uibUv" id="9D0Ba05vgD" role="1tU5fm">
          <ref role="3uigEE" to="hfuk:7lTD6YZtg3z" resolve="MakeNotification" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzV" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vhn" role="jymVt">
      <property role="TrG5h" value="attemptCloseSession" />
      <node concept="3Tm6S6" id="9D0Ba05vho" role="1B3o_S" />
      <node concept="3cqZAl" id="9D0Ba05vhp" role="3clF45" />
      <node concept="3clFbS" id="9D0Ba05vhq" role="3clF47">
        <node concept="3cpWs8" id="9D0Ba05vhr" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05vhs" role="3cpWs9">
            <property role="TrG5h" value="mark" />
            <node concept="10Q1$e" id="9D0Ba05vht" role="1tU5fm">
              <node concept="10P_77" id="9D0Ba05vhu" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="9D0Ba05vhv" role="33vP2m">
              <node concept="3$_iS1" id="9D0Ba05vhw" role="2ShVmc">
                <node concept="3$GHV9" id="9D0Ba05vhx" role="3$GQph">
                  <node concept="3cmrfG" id="9D0Ba05vhy" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="10P_77" id="9D0Ba05vhz" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9D0Ba05vh$" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05vh_" role="3cpWs9">
            <property role="TrG5h" value="sess" />
            <node concept="3uibUv" id="9D0Ba05vhA" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
            <node concept="2OqwBi" id="9D0Ba05vhB" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuKj2" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
              </node>
              <node concept="liA8E" id="9D0Ba05vhD" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.get(boolean[])" resolve="get" />
                <node concept="37vLTw" id="3GM_nagTviN" role="37wK5m">
                  <ref role="3cqZAo" node="9D0Ba05vhs" resolve="mark" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05vhF" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05vhG" role="3clFbx">
            <node concept="3clFbF" id="9D0Ba05vhH" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz74K" role="3clFbG">
                <ref role="37wK5l" node="9D0Ba05vgk" resolve="notifyListeners" />
                <node concept="2ShNRf" id="9D0Ba05vhJ" role="37wK5m">
                  <node concept="1pGfFk" id="9D0Ba05vhK" role="2ShVmc">
                    <ref role="37wK5l" to="hfuk:7lTD6YZtg3_" resolve="MakeNotification" />
                    <node concept="2OqwBi" id="54Qi_O4lJE4" role="37wK5m">
                      <node concept="37vLTw" id="54Qi_O4lCxs" role="2Oq$k0">
                        <ref role="3cqZAo" node="9D0Ba05vh_" resolve="sess" />
                      </node>
                      <node concept="liA8E" id="54Qi_O4lPth" role="2OqNvi">
                        <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="9D0Ba05vhL" role="37wK5m" />
                    <node concept="Rm8GO" id="9D0Ba05vhM" role="37wK5m">
                      <ref role="Rm8GQ" to="hfuk:5O50Cn9WpYr" resolve="SESSION_CLOSED" />
                      <ref role="1Px2BO" to="hfuk:7lTD6YZtjgd" resolve="MakeNotification.Kind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="9D0Ba05vhN" role="3clFbw">
            <node concept="2OqwBi" id="9D0Ba05vhO" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeuhiv" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
              </node>
              <node concept="liA8E" id="9D0Ba05vhQ" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.compareAndSet(java.lang.Object,java.lang.Object,boolean,boolean)" resolve="compareAndSet" />
                <node concept="37vLTw" id="3GM_nagTtiu" role="37wK5m">
                  <ref role="3cqZAo" node="9D0Ba05vh_" resolve="sess" />
                </node>
                <node concept="10Nm6u" id="9D0Ba05vhS" role="37wK5m" />
                <node concept="3clFbT" id="9D0Ba05vhT" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="3clFbT" id="9D0Ba05vhU" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="9D0Ba05vhV" role="3uHU7B">
              <node concept="3y3z36" id="9D0Ba05vhW" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTxkJ" role="3uHU7B">
                  <ref role="3cqZAo" node="9D0Ba05vh_" resolve="sess" />
                </node>
                <node concept="10Nm6u" id="9D0Ba05vhY" role="3uHU7w" />
              </node>
              <node concept="3fqX7Q" id="9D0Ba05vhZ" role="3uHU7w">
                <node concept="AH0OO" id="9D0Ba05vi0" role="3fr31v">
                  <node concept="3cmrfG" id="9D0Ba05vi1" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTyoi" role="AHHXb">
                    <ref role="3cqZAo" node="9D0Ba05vhs" resolve="mark" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzW" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vi3" role="jymVt">
      <property role="TrG5h" value="abortSession" />
      <node concept="3cqZAl" id="9D0Ba05vi4" role="3clF45" />
      <node concept="3Tm6S6" id="9D0Ba05vi5" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05vi6" role="3clF47">
        <node concept="3cpWs8" id="9D0Ba05vi7" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05vi8" role="3cpWs9">
            <property role="TrG5h" value="mark" />
            <node concept="10Q1$e" id="9D0Ba05vi9" role="1tU5fm">
              <node concept="10P_77" id="9D0Ba05via" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="9D0Ba05vib" role="33vP2m">
              <node concept="3$_iS1" id="9D0Ba05vic" role="2ShVmc">
                <node concept="3$GHV9" id="9D0Ba05vid" role="3$GQph">
                  <node concept="3cmrfG" id="9D0Ba05vie" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="10P_77" id="9D0Ba05vif" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9D0Ba05vig" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05vih" role="3cpWs9">
            <property role="TrG5h" value="sess" />
            <node concept="3uibUv" id="9D0Ba05vii" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
            <node concept="2OqwBi" id="9D0Ba05vij" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuQZF" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
              </node>
              <node concept="liA8E" id="9D0Ba05vil" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.get(boolean[])" resolve="get" />
                <node concept="37vLTw" id="3GM_nagTrlt" role="37wK5m">
                  <ref role="3cqZAo" node="9D0Ba05vi8" resolve="mark" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05vin" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05vio" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuu5L" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05vmg" resolve="currentSessionStickyMark" />
            </node>
            <node concept="liA8E" id="9D0Ba05viq" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicMarkableReference.set(java.lang.Object,boolean)" resolve="set" />
              <node concept="10Nm6u" id="9D0Ba05vir" role="37wK5m" />
              <node concept="3clFbT" id="9D0Ba05vis" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05vit" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05viu" role="3clFbx">
            <node concept="3clFbF" id="9D0Ba05viv" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz3xg" role="3clFbG">
                <ref role="37wK5l" node="9D0Ba05vgk" resolve="notifyListeners" />
                <node concept="2ShNRf" id="9D0Ba05vix" role="37wK5m">
                  <node concept="1pGfFk" id="9D0Ba05viy" role="2ShVmc">
                    <ref role="37wK5l" to="hfuk:7lTD6YZtg3_" resolve="MakeNotification" />
                    <node concept="2OqwBi" id="54Qi_O4m9rj" role="37wK5m">
                      <node concept="37vLTw" id="54Qi_O4m2R9" role="2Oq$k0">
                        <ref role="3cqZAo" node="9D0Ba05vih" resolve="sess" />
                      </node>
                      <node concept="liA8E" id="54Qi_O4mf_s" role="2OqNvi">
                        <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="9D0Ba05viz" role="37wK5m" />
                    <node concept="Rm8GO" id="9D0Ba05vi$" role="37wK5m">
                      <ref role="Rm8GQ" to="hfuk:5O50Cn9WpYr" resolve="SESSION_CLOSED" />
                      <ref role="1Px2BO" to="hfuk:7lTD6YZtjgd" resolve="MakeNotification.Kind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="9D0Ba05vi_" role="3clFbw">
            <node concept="10Nm6u" id="9D0Ba05viA" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTtE_" role="3uHU7B">
              <ref role="3cqZAo" node="9D0Ba05vih" resolve="sess" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4DiVYcGkla1" role="jymVt" />
    <node concept="3clFb_" id="4DiVYcGk$6r" role="jymVt">
      <property role="TrG5h" value="getAliveFlagFile" />
      <node concept="3clFbS" id="4DiVYcGk$6u" role="3clF47">
        <node concept="3clFbJ" id="4DiVYcGkF4$" role="3cqZAp">
          <node concept="3clFbC" id="4DiVYcGkOGF" role="3clFbw">
            <node concept="10Nm6u" id="4DiVYcGkRBZ" role="3uHU7w" />
            <node concept="37vLTw" id="4DiVYcGkJQM" role="3uHU7B">
              <ref role="3cqZAo" node="4DiVYcGjAvq" resolve="myAliveFile" />
            </node>
          </node>
          <node concept="3clFbS" id="4DiVYcGkF4A" role="3clFbx">
            <node concept="3J1_TO" id="4DiVYcGlanm" role="3cqZAp">
              <node concept="3uVAMA" id="4DiVYcGlann" role="1zxBo5">
                <node concept="XOnhg" id="4DiVYcGlano" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="4DiVYcGlanp" role="1tU5fm">
                    <node concept="3uibUv" id="4DiVYcGlanq" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4DiVYcGlanr" role="1zc67A">
                  <node concept="3clFbF" id="4DiVYcGlans" role="3cqZAp">
                    <node concept="37vLTI" id="4DiVYcGlant" role="3clFbG">
                      <node concept="37vLTw" id="4DiVYcGlanu" role="37vLTJ">
                        <ref role="3cqZAo" node="4DiVYcGjAvq" resolve="myAliveFile" />
                      </node>
                      <node concept="2ShNRf" id="4DiVYcGlanv" role="37vLTx">
                        <node concept="1pGfFk" id="4DiVYcGlanw" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="Xl_RD" id="4DiVYcGlanx" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4DiVYcGlany" role="1zxBo7">
                <node concept="3cpWs8" id="4DiVYcGlanz" role="3cqZAp">
                  <node concept="3cpWsn" id="4DiVYcGlan$" role="3cpWs9">
                    <property role="TrG5h" value="createTempFile" />
                    <node concept="3uibUv" id="4DiVYcGlan_" role="1tU5fm">
                      <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                    </node>
                    <node concept="2YIFZM" id="4DiVYcGlanA" role="33vP2m">
                      <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                      <ref role="37wK5l" to="eoo2:~Files.createTempFile(java.lang.String,java.lang.String,java.nio.file.attribute.FileAttribute...)" resolve="createTempFile" />
                      <node concept="Xl_RD" id="4DiVYcGlanB" role="37wK5m">
                        <property role="Xl_RC" value="mps-workbench-make-" />
                      </node>
                      <node concept="Xl_RD" id="4DiVYcGlanC" role="37wK5m">
                        <property role="Xl_RC" value=".alive" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5dSrHJ5haJO" role="3cqZAp">
                  <node concept="37vLTI" id="5dSrHJ5hfKL" role="3clFbG">
                    <node concept="37vLTw" id="5dSrHJ5haJM" role="37vLTJ">
                      <ref role="3cqZAo" node="4DiVYcGjAvq" resolve="myAliveFile" />
                    </node>
                    <node concept="2OqwBi" id="4DiVYcGlanG" role="37vLTx">
                      <node concept="37vLTw" id="4DiVYcGlanH" role="2Oq$k0">
                        <ref role="3cqZAo" node="4DiVYcGlan$" resolve="createTempFile" />
                      </node>
                      <node concept="liA8E" id="4DiVYcGlanI" role="2OqNvi">
                        <ref role="37wK5l" to="eoo2:~Path.toFile()" resolve="toFile" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4DiVYcGlanJ" role="3cqZAp">
                  <node concept="2YIFZM" id="4DiVYcGlanK" role="3clFbG">
                    <ref role="37wK5l" to="zn9m:~Disposer.register(com.intellij.openapi.Disposable,com.intellij.openapi.Disposable)" resolve="register" />
                    <ref role="1Pybhc" to="zn9m:~Disposer" resolve="Disposer" />
                    <node concept="Xjq3P" id="4DiVYcGlanL" role="37wK5m" />
                    <node concept="1bVj0M" id="4DiVYcGlanM" role="37wK5m">
                      <node concept="3clFbS" id="4DiVYcGlanN" role="1bW5cS">
                        <node concept="3clFbF" id="4DiVYcGlanO" role="3cqZAp">
                          <node concept="2OqwBi" id="4DiVYcGlanP" role="3clFbG">
                            <node concept="37vLTw" id="4DiVYcGlanQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="4DiVYcGjAvq" resolve="myAliveFile" />
                            </node>
                            <node concept="liA8E" id="4DiVYcGlanR" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~File.delete()" resolve="delete" />
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
        <node concept="3clFbH" id="4DiVYcGm71L" role="3cqZAp" />
        <node concept="3cpWs6" id="4DiVYcGlanT" role="3cqZAp">
          <node concept="37vLTw" id="4DiVYcGlanU" role="3cqZAk">
            <ref role="3cqZAo" node="4DiVYcGjAvq" resolve="myAliveFile" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4DiVYcGksxQ" role="1B3o_S" />
      <node concept="3uibUv" id="4DiVYcGlMee" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzX" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05viC" role="jymVt">
      <property role="od$2w" value="true" />
      <property role="TrG5h" value="awaitCurrentProcess" />
      <node concept="3cqZAl" id="9D0Ba05viD" role="3clF45" />
      <node concept="3Tm6S6" id="9D0Ba05viE" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05viF" role="3clF47">
        <node concept="3cpWs8" id="9D0Ba05viG" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05viH" role="3cpWs9">
            <property role="TrG5h" value="proc" />
            <node concept="3uibUv" id="9D0Ba05viI" role="1tU5fm">
              <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
              <node concept="3uibUv" id="9D0Ba05viJ" role="11_B2D">
                <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
              </node>
            </node>
            <node concept="2OqwBi" id="9D0Ba05viK" role="33vP2m">
              <node concept="2OqwBi" id="9D0Ba05viL" role="2Oq$k0">
                <node concept="Xjq3P" id="9D0Ba05viM" role="2Oq$k0" />
                <node concept="2OwXpG" id="9D0Ba05viN" role="2OqNvi">
                  <ref role="2Oxat5" node="9D0Ba05vmp" resolve="currentProcess" />
                </node>
              </node>
              <node concept="liA8E" id="9D0Ba05viO" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="9D0Ba05viP" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05viQ" role="1zxBo7">
            <node concept="3clFbJ" id="9D0Ba05viR" role="3cqZAp">
              <node concept="3clFbS" id="9D0Ba05viS" role="3clFbx">
                <node concept="3clFbF" id="9D0Ba05viT" role="3cqZAp">
                  <node concept="2OqwBi" id="9D0Ba05viU" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTwb2" role="2Oq$k0">
                      <ref role="3cqZAo" node="9D0Ba05viH" resolve="proc" />
                    </node>
                    <node concept="liA8E" id="9D0Ba05viW" role="2OqNvi">
                      <ref role="37wK5l" to="5zyv:~Future.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="9D0Ba05viX" role="3clFbw">
                <node concept="3fqX7Q" id="9D0Ba05viY" role="3uHU7w">
                  <node concept="2OqwBi" id="9D0Ba05viZ" role="3fr31v">
                    <node concept="37vLTw" id="3GM_nagTssA" role="2Oq$k0">
                      <ref role="3cqZAo" node="9D0Ba05viH" resolve="proc" />
                    </node>
                    <node concept="liA8E" id="9D0Ba05vj1" role="2OqNvi">
                      <ref role="37wK5l" to="5zyv:~Future.isDone()" resolve="isDone" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="9D0Ba05vj2" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTvpI" role="3uHU7B">
                    <ref role="3cqZAo" node="9D0Ba05viH" resolve="proc" />
                  </node>
                  <node concept="10Nm6u" id="9D0Ba05vj4" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="9D0Ba05vj5" role="1zxBo5">
            <node concept="XOnhg" id="9D0Ba05vj6" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ignore" />
              <node concept="nSUau" id="xvs04dIxy_" role="1tU5fm">
                <node concept="3uibUv" id="9D0Ba05vj7" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                </node>
                <node concept="3uibUv" id="1iVKrxqs_JS" role="nSUat">
                  <ref role="3uigEE" to="5zyv:~ExecutionException" resolve="ExecutionException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="9D0Ba05vj8" role="1zc67A" />
          </node>
          <node concept="1wplmZ" id="xvs04dI$UL" role="1zxBo6">
            <node concept="3clFbS" id="9D0Ba05vjd" role="1wplMD">
              <node concept="3clFbF" id="9D0Ba05vje" role="3cqZAp">
                <node concept="2OqwBi" id="9D0Ba05vjf" role="3clFbG">
                  <node concept="2OqwBi" id="9D0Ba05vjg" role="2Oq$k0">
                    <node concept="Xjq3P" id="9D0Ba05vjh" role="2Oq$k0" />
                    <node concept="2OwXpG" id="9D0Ba05vji" role="2OqNvi">
                      <ref role="2Oxat5" node="9D0Ba05vmp" resolve="currentProcess" />
                    </node>
                  </node>
                  <node concept="liA8E" id="9D0Ba05vjj" role="2OqNvi">
                    <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                    <node concept="10Nm6u" id="9D0Ba05vjk" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzY" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vjl" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="_doMake" />
      <node concept="37vLTG" id="9D0Ba05vjm" role="3clF46">
        <property role="TrG5h" value="inputRes" />
        <node concept="A3Dl8" id="9D0Ba05vjn" role="1tU5fm">
          <node concept="3qUE_q" id="9D0Ba05vjo" role="A3Ik2">
            <node concept="3uibUv" id="9D0Ba05vjp" role="3qUE_r">
              <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9D0Ba05vjq" role="3clF46">
        <property role="TrG5h" value="defaultScript" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="9D0Ba05vjr" role="1tU5fm">
          <ref role="3uigEE" to="i9so:5mqBoD3U3Wb" resolve="IScript" />
        </node>
      </node>
      <node concept="37vLTG" id="9D0Ba05vjs" role="3clF46">
        <property role="TrG5h" value="controller" />
        <node concept="3uibUv" id="9D0Ba05vjt" role="1tU5fm">
          <ref role="3uigEE" to="i9so:4231y0oKQyu" resolve="IScriptController" />
        </node>
      </node>
      <node concept="37vLTG" id="43l$qHE844i" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="43l$qHE8M6t" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
        <node concept="2AHcQZ" id="43l$qHE8Uzv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm6S6" id="9D0Ba05vju" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05vjv" role="3clF47">
        <node concept="3clFbH" id="9D0Ba05vjw" role="3cqZAp" />
        <node concept="3cpWs8" id="9D0Ba05vjx" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05vjy" role="3cpWs9">
            <property role="TrG5h" value="scrName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="9D0Ba05vjz" role="1tU5fm" />
            <node concept="1eOMI4" id="9D0Ba05vj$" role="33vP2m">
              <node concept="3K4zz7" id="9D0Ba05vj_" role="1eOMHV">
                <node concept="Xl_RD" id="9D0Ba05vjA" role="3K4E3e">
                  <property role="Xl_RC" value="Rebuild" />
                </node>
                <node concept="2OqwBi" id="9D0Ba05vjB" role="3K4Cdx">
                  <node concept="2OqwBi" id="9D0Ba05vjC" role="2Oq$k0">
                    <node concept="Xjq3P" id="9D0Ba05vjD" role="2Oq$k0" />
                    <node concept="liA8E" id="9D0Ba05vjE" role="2OqNvi">
                      <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
                    </node>
                  </node>
                  <node concept="liA8E" id="9D0Ba05vjF" role="2OqNvi">
                    <ref role="37wK5l" to="hfuk:7yGn3z4N631" resolve="isCleanMake" />
                  </node>
                </node>
                <node concept="Xl_RD" id="9D0Ba05vjG" role="3K4GZi">
                  <property role="Xl_RC" value="Make" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9D0Ba05vjH" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05vjI" role="3cpWs9">
            <property role="TrG5h" value="mh" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="9D0Ba05vjJ" role="1tU5fm">
              <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
            </node>
            <node concept="2OqwBi" id="9D0Ba05vjK" role="33vP2m">
              <node concept="2OqwBi" id="9D0Ba05vjL" role="2Oq$k0">
                <node concept="Xjq3P" id="9D0Ba05vjM" role="2Oq$k0" />
                <node concept="liA8E" id="9D0Ba05vjN" role="2OqNvi">
                  <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
                </node>
              </node>
              <node concept="liA8E" id="9D0Ba05vjO" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:7yGn3z4N4Nw" resolve="getMessageHandler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5mUuiRFrRU9" role="3cqZAp" />
        <node concept="3clFbJ" id="9D0Ba05vka" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05vkb" role="3clFbx">
            <node concept="3cpWs8" id="4uO1VCfS4nB" role="3cqZAp">
              <node concept="3cpWsn" id="4uO1VCfS4nC" role="3cpWs9">
                <property role="TrG5h" value="msg" />
                <node concept="17QB3L" id="4uO1VCfS1Vj" role="1tU5fm" />
                <node concept="Xl_RD" id="4uO1VCfS4nD" role="33vP2m">
                  <property role="Xl_RC" value="Everything is up to date" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4uO1VCfS0$u" role="3cqZAp">
              <node concept="1rXfSq" id="4uO1VCfS0$s" role="3clFbG">
                <ref role="37wK5l" node="9D0Ba05vlK" resolve="displayInfo" />
                <node concept="37vLTw" id="4uO1VCfSkzP" role="37wK5m">
                  <ref role="3cqZAo" node="4uO1VCfS4nC" resolve="msg" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="9D0Ba05vkN" role="3cqZAp">
              <node concept="2ShNRf" id="9D0Ba05vkO" role="3cqZAk">
                <node concept="1pGfFk" id="9D0Ba05vkP" role="2ShVmc">
                  <ref role="37wK5l" to="rk9m:7UmW2QiY4tP" resolve="FutureValue" />
                  <node concept="2ShNRf" id="9D0Ba05vkQ" role="37wK5m">
                    <node concept="1pGfFk" id="9D0Ba05vkR" role="2ShVmc">
                      <ref role="37wK5l" to="i9so:4uO1VCfB6tz" resolve="IResult.SUCCESS" />
                      <node concept="37vLTw" id="4uO1VCfS4nE" role="37wK5m">
                        <ref role="3cqZAo" node="4uO1VCfS4nC" resolve="msg" />
                      </node>
                      <node concept="10Nm6u" id="9D0Ba05vkS" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="7KKM$eW2jf5" role="1pMfVU">
                    <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="9D0Ba05vkT" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglXe0" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05vjm" resolve="inputRes" />
            </node>
            <node concept="1v1jN8" id="9D0Ba05vkV" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="41innpAph2E" role="3cqZAp" />
        <node concept="3cpWs8" id="41innpApzBK" role="3cqZAp">
          <node concept="3cpWsn" id="41innpApzBL" role="3cpWs9">
            <property role="TrG5h" value="session" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="41innpApzBJ" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
            <node concept="1rXfSq" id="41innpApzBM" role="33vP2m">
              <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="41innpAkY8J" role="3cqZAp">
          <node concept="3cpWsn" id="41innpAkY8K" role="3cpWs9">
            <property role="TrG5h" value="makeSeq" />
            <node concept="3uibUv" id="41innpAkY8L" role="1tU5fm">
              <ref role="3uigEE" to="j07i:41innpAgfFQ" resolve="MakeSequence" />
            </node>
            <node concept="2ShNRf" id="41innpAkZBX" role="33vP2m">
              <node concept="1pGfFk" id="41innpAl7Hu" role="2ShVmc">
                <ref role="37wK5l" to="j07i:41innpAipgn" resolve="MakeSequence" />
                <node concept="37vLTw" id="6ZzUxXZSeHy" role="37wK5m">
                  <ref role="3cqZAo" node="9D0Ba05vjm" resolve="inputRes" />
                </node>
                <node concept="37vLTw" id="6ZzUxXZSFpC" role="37wK5m">
                  <ref role="3cqZAo" node="9D0Ba05vjq" resolve="defaultScript" />
                </node>
                <node concept="37vLTw" id="6ZzUxXZSzW$" role="37wK5m">
                  <ref role="3cqZAo" node="41innpApzBL" resolve="session" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41innpApj8F" role="3cqZAp" />
        <node concept="3cpWs8" id="41innpApNZk" role="3cqZAp">
          <node concept="3cpWsn" id="41innpApNZl" role="3cpWs9">
            <property role="TrG5h" value="ideaPrj" />
            <node concept="3uibUv" id="41innpApNZd" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="41innpApNZm" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2OqwBi" id="41innpApNZn" role="37wK5m">
                <node concept="37vLTw" id="41innpApNZq" role="2Oq$k0">
                  <ref role="3cqZAo" node="41innpApzBL" resolve="session" />
                </node>
                <node concept="liA8E" id="41innpApNZr" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Eb$RRpzzdh" role="3cqZAp">
          <node concept="3cpWsn" id="2Eb$RRpzzdi" role="3cpWs9">
            <property role="TrG5h" value="makeTask" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2Eb$RRpzzdj" role="1tU5fm">
              <ref role="3uigEE" node="9D0Ba05uFz" resolve="WorkbenchMakeTask" />
            </node>
            <node concept="2ShNRf" id="2Eb$RRpzKS4" role="33vP2m">
              <node concept="YeOm9" id="2Eb$RRp$Fa7" role="2ShVmc">
                <node concept="1Y3b0j" id="2Eb$RRp$Faa" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="41innpAnahF" resolve="WorkbenchMakeTask" />
                  <ref role="1Y3XeK" node="9D0Ba05uFz" resolve="WorkbenchMakeTask" />
                  <node concept="2tJIrI" id="2l43ouTGDuS" role="jymVt" />
                  <node concept="3clFb_" id="2l43ouTGKYh" role="jymVt">
                    <property role="TrG5h" value="doRun" />
                    <node concept="3Tmbuc" id="2l43ouTGKYi" role="1B3o_S" />
                    <node concept="3cqZAl" id="2l43ouTGKYj" role="3clF45" />
                    <node concept="37vLTG" id="2l43ouTGKYk" role="3clF46">
                      <property role="TrG5h" value="monitor" />
                      <node concept="3uibUv" id="2l43ouTGKYl" role="1tU5fm">
                        <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2l43ouTGKYA" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="2l43ouTGKYC" role="3clF47">
                      <node concept="3clFbF" id="41innpAoSuK" role="3cqZAp">
                        <node concept="1rXfSq" id="41innpAoSuL" role="3clFbG">
                          <ref role="37wK5l" node="9D0Ba05vgk" resolve="notifyListeners" />
                          <node concept="2ShNRf" id="41innpAoSuM" role="37wK5m">
                            <node concept="1pGfFk" id="41innpAoSuN" role="2ShVmc">
                              <ref role="37wK5l" to="hfuk:7lTD6YZtg3_" resolve="MakeNotification" />
                              <node concept="2OqwBi" id="54Qi_O4nGco" role="37wK5m">
                                <node concept="37vLTw" id="54Qi_O4n_gU" role="2Oq$k0">
                                  <ref role="3cqZAo" node="41innpApzBL" resolve="session" />
                                </node>
                                <node concept="liA8E" id="54Qi_O4nM0B" role="2OqNvi">
                                  <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                                </node>
                              </node>
                              <node concept="Xjq3P" id="41innpAoSuO" role="37wK5m">
                                <ref role="1HBi2w" node="9D0Ba05uYl" resolve="WorkbenchMakeService" />
                              </node>
                              <node concept="Rm8GO" id="41innpAoSuP" role="37wK5m">
                                <ref role="1Px2BO" to="hfuk:7lTD6YZtjgd" resolve="MakeNotification.Kind" />
                                <ref role="Rm8GQ" to="hfuk:7lTD6YZtjgj" resolve="SCRIPT_ABOUT_TO_START" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2l43ouTGKYF" role="3cqZAp">
                        <node concept="3nyPlj" id="2l43ouTGKYE" role="3clFbG">
                          <ref role="37wK5l" node="9D0Ba05uGD" resolve="doRun" />
                          <node concept="37vLTw" id="2l43ouTGKYD" role="37wK5m">
                            <ref role="3cqZAo" node="2l43ouTGKYk" resolve="monitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2tJIrI" id="2l43ouTI_i3" role="jymVt" />
                  <node concept="3clFb_" id="41innpAoSuR" role="jymVt">
                    <property role="TrG5h" value="done" />
                    <node concept="3cqZAl" id="41innpAoSuS" role="3clF45" />
                    <node concept="3Tmbuc" id="41innpAoSuT" role="1B3o_S" />
                    <node concept="3clFbS" id="41innpAoSuU" role="3clF47">
                      <node concept="3clFbJ" id="1iVKrxqp2Ns" role="3cqZAp">
                        <node concept="3clFbS" id="1iVKrxqp2Nt" role="3clFbx">
                          <node concept="3SKdUt" id="1iVKrxqp2Nu" role="3cqZAp">
                            <node concept="1PaTwC" id="1iVKrxqp2Nv" role="1aUNEU">
                              <node concept="3oM_SD" id="1iVKrxqp2Nw" role="1PaTwD">
                                <property role="3oM_SC" value="I" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2Nx" role="1PaTwD">
                                <property role="3oM_SC" value="work" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2Ny" role="1PaTwD">
                                <property role="3oM_SC" value="towards" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2Nz" role="1PaTwD">
                                <property role="3oM_SC" value="not" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2N$" role="1PaTwD">
                                <property role="3oM_SC" value="null" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2N_" role="1PaTwD">
                                <property role="3oM_SC" value="result," />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NA" role="1PaTwD">
                                <property role="3oM_SC" value="however," />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NB" role="1PaTwD">
                                <property role="3oM_SC" value="still" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NC" role="1PaTwD">
                                <property role="3oM_SC" value="seems" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2ND" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NE" role="1PaTwD">
                                <property role="3oM_SC" value="be" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NF" role="1PaTwD">
                                <property role="3oM_SC" value="possible" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NG" role="1PaTwD">
                                <property role="3oM_SC" value="in" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NH" role="1PaTwD">
                                <property role="3oM_SC" value="case" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NI" role="1PaTwD">
                                <property role="3oM_SC" value="MakeTask" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NJ" role="1PaTwD">
                                <property role="3oM_SC" value="didn't" />
                              </node>
                              <node concept="3oM_SD" id="1iVKrxqp2NK" role="1PaTwD">
                                <property role="3oM_SC" value="start" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="1iVKrxqs6hg" role="3cqZAp">
                            <node concept="3cpWsn" id="1iVKrxqs6ge" role="3cpWs9">
                              <property role="TrG5h" value="info" />
                              <node concept="17QB3L" id="1iVKrxqs6hf" role="1tU5fm" />
                              <node concept="3cpWs3" id="1iVKrxqp2NN" role="33vP2m">
                                <node concept="Xl_RD" id="1iVKrxqp2NO" role="3uHU7w">
                                  <property role="Xl_RC" value=" aborted" />
                                </node>
                                <node concept="37vLTw" id="1iVKrxqp2NP" role="3uHU7B">
                                  <ref role="3cqZAo" node="9D0Ba05vjy" resolve="scrName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1iVKrxqs6g9" role="3cqZAp">
                            <node concept="2OqwBi" id="1iVKrxqs6ga" role="3clFbG">
                              <node concept="Xjq3P" id="1iVKrxqs6gb" role="2Oq$k0">
                                <ref role="1HBi2w" node="9D0Ba05uYl" resolve="WorkbenchMakeService" />
                              </node>
                              <node concept="liA8E" id="1iVKrxqs6gc" role="2OqNvi">
                                <ref role="37wK5l" node="9D0Ba05vlK" resolve="displayInfo" />
                                <node concept="37vLTw" id="1iVKrxqs6hi" role="37wK5m">
                                  <ref role="3cqZAo" node="1iVKrxqs6ge" resolve="info" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="1iVKrxqp2NQ" role="3clFbw">
                          <node concept="1rXfSq" id="1iVKrxqqCfO" role="3uHU7B">
                            <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
                          </node>
                          <node concept="10Nm6u" id="1iVKrxqp2NU" role="3uHU7w" />
                        </node>
                        <node concept="3eNFk2" id="1iVKrxqp2NV" role="3eNLev">
                          <node concept="2OqwBi" id="1iVKrxqp2NW" role="3eO9$A">
                            <node concept="1rXfSq" id="1iVKrxqqYgK" role="2Oq$k0">
                              <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
                            </node>
                            <node concept="liA8E" id="1iVKrxqp2O0" role="2OqNvi">
                              <ref role="37wK5l" to="i9so:17I1R__cQ6v" resolve="isSucessful" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="1iVKrxqp2O1" role="3eOfB_">
                            <node concept="3cpWs8" id="1iVKrxqp2O2" role="3cqZAp">
                              <node concept="3cpWsn" id="1iVKrxqp2O3" role="3cpWs9">
                                <property role="TrG5h" value="msg" />
                                <node concept="17QB3L" id="1iVKrxqp2O4" role="1tU5fm" />
                                <node concept="3cpWs3" id="1iVKrxqp2O5" role="33vP2m">
                                  <node concept="Xl_RD" id="1iVKrxqp2O6" role="3uHU7w">
                                    <property role="Xl_RC" value=" successful" />
                                  </node>
                                  <node concept="37vLTw" id="1iVKrxqp2O7" role="3uHU7B">
                                    <ref role="3cqZAo" node="9D0Ba05vjy" resolve="scrName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1iVKrxqp2O8" role="3cqZAp">
                              <node concept="3clFbS" id="1iVKrxqp2O9" role="3clFbx">
                                <node concept="3clFbF" id="1iVKrxqp2Oa" role="3cqZAp">
                                  <node concept="37vLTI" id="1iVKrxqp2Ob" role="3clFbG">
                                    <node concept="3cpWs3" id="1iVKrxqp2Oc" role="37vLTx">
                                      <node concept="3cpWs3" id="1iVKrxqp2Od" role="3uHU7B">
                                        <node concept="37vLTw" id="1iVKrxqp2Oe" role="3uHU7B">
                                          <ref role="3cqZAo" node="1iVKrxqp2O3" resolve="msg" />
                                        </node>
                                        <node concept="Xl_RD" id="1iVKrxqp2Of" role="3uHU7w">
                                          <property role="Xl_RC" value=". " />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1iVKrxqp2Og" role="3uHU7w">
                                        <node concept="1rXfSq" id="1iVKrxqrjCr" role="2Oq$k0">
                                          <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
                                        </node>
                                        <node concept="liA8E" id="1iVKrxqp2Ok" role="2OqNvi">
                                          <ref role="37wK5l" to="i9so:4uO1VCfB5pJ" resolve="message" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="1iVKrxqp2Ol" role="37vLTJ">
                                      <ref role="3cqZAo" node="1iVKrxqp2O3" resolve="msg" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1iVKrxqp2Om" role="3clFbw">
                                <node concept="2OqwBi" id="1iVKrxqp2On" role="2Oq$k0">
                                  <node concept="1rXfSq" id="1iVKrxqrabI" role="2Oq$k0">
                                    <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
                                  </node>
                                  <node concept="liA8E" id="1iVKrxqp2Or" role="2OqNvi">
                                    <ref role="37wK5l" to="i9so:4uO1VCfB5pJ" resolve="message" />
                                  </node>
                                </node>
                                <node concept="17RvpY" id="1iVKrxqp2Os" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="1iVKrxqs6hk" role="3cqZAp">
                              <node concept="2OqwBi" id="1iVKrxqs6hl" role="3clFbG">
                                <node concept="Xjq3P" id="1iVKrxqs6hm" role="2Oq$k0">
                                  <ref role="1HBi2w" node="9D0Ba05uYl" resolve="WorkbenchMakeService" />
                                </node>
                                <node concept="liA8E" id="1iVKrxqs6hn" role="2OqNvi">
                                  <ref role="37wK5l" node="9D0Ba05vlK" resolve="displayInfo" />
                                  <node concept="37vLTw" id="1iVKrxqs6hp" role="37wK5m">
                                    <ref role="3cqZAo" node="1iVKrxqp2O3" resolve="msg" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="1iVKrxqp2Ow" role="9aQIa">
                          <node concept="3clFbS" id="1iVKrxqp2Ox" role="9aQI4">
                            <node concept="3cpWs8" id="1iVKrxqp2Oy" role="3cqZAp">
                              <node concept="3cpWsn" id="1iVKrxqp2Oz" role="3cpWs9">
                                <property role="TrG5h" value="msg" />
                                <node concept="17QB3L" id="1iVKrxqp2O$" role="1tU5fm" />
                                <node concept="3cpWs3" id="1iVKrxqp2O_" role="33vP2m">
                                  <node concept="Xl_RD" id="1iVKrxqp2OA" role="3uHU7w">
                                    <property role="Xl_RC" value=" failed" />
                                  </node>
                                  <node concept="37vLTw" id="1iVKrxqp2OB" role="3uHU7B">
                                    <ref role="3cqZAo" node="9D0Ba05vjy" resolve="scrName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1iVKrxqp2OC" role="3cqZAp">
                              <node concept="3clFbS" id="1iVKrxqp2OD" role="3clFbx">
                                <node concept="3clFbF" id="1iVKrxqp2OE" role="3cqZAp">
                                  <node concept="37vLTI" id="1iVKrxqp2OF" role="3clFbG">
                                    <node concept="3cpWs3" id="1iVKrxqp2OG" role="37vLTx">
                                      <node concept="3cpWs3" id="1iVKrxqp2OH" role="3uHU7B">
                                        <node concept="37vLTw" id="1iVKrxqp2OI" role="3uHU7B">
                                          <ref role="3cqZAo" node="1iVKrxqp2Oz" resolve="msg" />
                                        </node>
                                        <node concept="Xl_RD" id="1iVKrxqp2OJ" role="3uHU7w">
                                          <property role="Xl_RC" value=". " />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1iVKrxqp2OK" role="3uHU7w">
                                        <node concept="1rXfSq" id="1iVKrxqrRzr" role="2Oq$k0">
                                          <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
                                        </node>
                                        <node concept="liA8E" id="1iVKrxqp2OO" role="2OqNvi">
                                          <ref role="37wK5l" to="i9so:4uO1VCfB5pJ" resolve="message" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="1iVKrxqp2OP" role="37vLTJ">
                                      <ref role="3cqZAo" node="1iVKrxqp2Oz" resolve="msg" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1iVKrxqp2OQ" role="3clFbw">
                                <node concept="2OqwBi" id="1iVKrxqp2OR" role="2Oq$k0">
                                  <node concept="1rXfSq" id="1iVKrxqr_Zg" role="2Oq$k0">
                                    <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
                                  </node>
                                  <node concept="liA8E" id="1iVKrxqp2OV" role="2OqNvi">
                                    <ref role="37wK5l" to="i9so:4uO1VCfB5pJ" resolve="message" />
                                  </node>
                                </node>
                                <node concept="17RvpY" id="1iVKrxqp2OW" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3SKdUt" id="1iVKrxqp2OX" role="3cqZAp">
                              <node concept="1PaTwC" id="1iVKrxqp2OY" role="1aUNEU">
                                <node concept="3oM_SD" id="1iVKrxqp2OZ" role="1PaTwD">
                                  <property role="3oM_SC" value="displayBalloon" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P0" role="1PaTwD">
                                  <property role="3oM_SC" value="would" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P1" role="1PaTwD">
                                  <property role="3oM_SC" value="draw" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P2" role="1PaTwD">
                                  <property role="3oM_SC" value="more" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P3" role="1PaTwD">
                                  <property role="3oM_SC" value="attention" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P4" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P5" role="1PaTwD">
                                  <property role="3oM_SC" value="the" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P6" role="1PaTwD">
                                  <property role="3oM_SC" value="failure," />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P7" role="1PaTwD">
                                  <property role="3oM_SC" value="just" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P8" role="1PaTwD">
                                  <property role="3oM_SC" value="need" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P9" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pa" role="1PaTwD">
                                  <property role="3oM_SC" value="make" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pb" role="1PaTwD">
                                  <property role="3oM_SC" value="sure" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pc" role="1PaTwD">
                                  <property role="3oM_SC" value="it" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pd" role="1PaTwD">
                                  <property role="3oM_SC" value="works" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1iVKrxqs6hr" role="3cqZAp">
                              <node concept="2OqwBi" id="1iVKrxqs6hs" role="3clFbG">
                                <node concept="Xjq3P" id="1iVKrxqs6ht" role="2Oq$k0">
                                  <ref role="1HBi2w" node="9D0Ba05uYl" resolve="WorkbenchMakeService" />
                                </node>
                                <node concept="liA8E" id="1iVKrxqs6hu" role="2OqNvi">
                                  <ref role="37wK5l" node="9D0Ba05vlK" resolve="displayInfo" />
                                  <node concept="37vLTw" id="1iVKrxqs6hw" role="37wK5m">
                                    <ref role="3cqZAo" node="1iVKrxqp2Oz" resolve="msg" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="1iVKrxqp2Ph" role="3cqZAp">
                              <node concept="1PaTwC" id="1iVKrxqp2Pi" role="1aUNEU">
                                <node concept="3oM_SD" id="1iVKrxqp2Pj" role="1PaTwD">
                                  <property role="3oM_SC" value="FIXME" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pk" role="1PaTwD">
                                  <property role="3oM_SC" value="I" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pl" role="1PaTwD">
                                  <property role="3oM_SC" value="hate" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pm" role="1PaTwD">
                                  <property role="3oM_SC" value="this" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pn" role="1PaTwD">
                                  <property role="3oM_SC" value="string" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Po" role="1PaTwD">
                                  <property role="3oM_SC" value="formatting," />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pp" role="1PaTwD">
                                  <property role="3oM_SC" value="but" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pq" role="1PaTwD">
                                  <property role="3oM_SC" value="for" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pr" role="1PaTwD">
                                  <property role="3oM_SC" value="the" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Ps" role="1PaTwD">
                                  <property role="3oM_SC" value="moment" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pt" role="1PaTwD">
                                  <property role="3oM_SC" value="just" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pu" role="1PaTwD">
                                  <property role="3oM_SC" value="need" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pv" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pw" role="1PaTwD">
                                  <property role="3oM_SC" value="move" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Px" role="1PaTwD">
                                  <property role="3oM_SC" value="this" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Py" role="1PaTwD">
                                  <property role="3oM_SC" value="out" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2Pz" role="1PaTwD">
                                  <property role="3oM_SC" value="of" />
                                </node>
                                <node concept="3oM_SD" id="1iVKrxqp2P$" role="1PaTwD">
                                  <property role="3oM_SC" value="CoreMakeTask" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1iVKrxqp2P_" role="3cqZAp">
                              <node concept="2OqwBi" id="1iVKrxqp2PA" role="3clFbG">
                                <node concept="37vLTw" id="1iVKrxqp2PB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="9D0Ba05vjI" resolve="mh" />
                                </node>
                                <node concept="liA8E" id="1iVKrxqp2PC" role="2OqNvi">
                                  <ref role="37wK5l" to="et5u:~IMessageHandler.handle(jetbrains.mps.messages.IMessage)" resolve="handle" />
                                  <node concept="2ShNRf" id="1iVKrxqp2PD" role="37wK5m">
                                    <node concept="1pGfFk" id="1iVKrxqp2PE" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="et5u:~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.String)" resolve="Message" />
                                      <node concept="Rm8GO" id="1iVKrxqp2PF" role="37wK5m">
                                        <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                                        <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                                      </node>
                                      <node concept="3cpWs3" id="1iVKrxqp2PG" role="37wK5m">
                                        <node concept="37vLTw" id="1iVKrxqp2PH" role="3uHU7B">
                                          <ref role="3cqZAo" node="1iVKrxqp2Oz" resolve="msg" />
                                        </node>
                                        <node concept="Xl_RD" id="1iVKrxqp2PI" role="3uHU7w">
                                          <property role="Xl_RC" value=". See previous messages for details." />
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
                      <node concept="3clFbF" id="41innpAoSuV" role="3cqZAp">
                        <node concept="2OqwBi" id="41innpAoSuW" role="3clFbG">
                          <node concept="37vLTw" id="41innpAoSuX" role="2Oq$k0">
                            <ref role="3cqZAo" node="9D0Ba05vmp" resolve="currentProcess" />
                          </node>
                          <node concept="liA8E" id="41innpAoSuY" role="2OqNvi">
                            <ref role="37wK5l" to="i5cy:~AtomicReference.compareAndSet(java.lang.Object,java.lang.Object)" resolve="compareAndSet" />
                            <node concept="Xjq3P" id="41innpAoSuZ" role="37wK5m" />
                            <node concept="10Nm6u" id="41innpAoSv0" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="41innpAoSv1" role="3cqZAp">
                        <node concept="1rXfSq" id="41innpAoSv2" role="3clFbG">
                          <ref role="37wK5l" node="9D0Ba05vhn" resolve="attemptCloseSession" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="41innpAoSv3" role="3cqZAp">
                        <node concept="1rXfSq" id="41innpAoSv4" role="3clFbG">
                          <ref role="37wK5l" node="9D0Ba05vgk" resolve="notifyListeners" />
                          <node concept="2ShNRf" id="41innpAoSv5" role="37wK5m">
                            <node concept="1pGfFk" id="41innpAoSv6" role="2ShVmc">
                              <ref role="37wK5l" to="hfuk:7lTD6YZtg3_" resolve="MakeNotification" />
                              <node concept="2OqwBi" id="54Qi_O4o6g9" role="37wK5m">
                                <node concept="37vLTw" id="54Qi_O4nZiV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="41innpApzBL" resolve="session" />
                                </node>
                                <node concept="liA8E" id="54Qi_O4ocwo" role="2OqNvi">
                                  <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                                </node>
                              </node>
                              <node concept="Xjq3P" id="41innpAoSv7" role="37wK5m">
                                <ref role="1HBi2w" node="9D0Ba05uYl" resolve="WorkbenchMakeService" />
                              </node>
                              <node concept="Rm8GO" id="41innpAoSv8" role="37wK5m">
                                <ref role="1Px2BO" to="hfuk:7lTD6YZtjgd" resolve="MakeNotification.Kind" />
                                <ref role="Rm8GQ" to="hfuk:7lTD6YZtjgl" resolve="SCRIPT_FINISHED" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="41innpAoSv9" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="2Eb$RRp$Fab" role="1B3o_S" />
                  <node concept="37vLTw" id="41innpAqz7k" role="37wK5m">
                    <ref role="3cqZAo" node="41innpAkY8K" resolve="makeSeq" />
                  </node>
                  <node concept="2ShNRf" id="41innpAoSu$" role="37wK5m">
                    <node concept="1pGfFk" id="41innpAoSu_" role="2ShVmc">
                      <ref role="37wK5l" node="9D0Ba05v2h" resolve="WorkbenchMakeService.Controller" />
                      <node concept="37vLTw" id="41innpAoSuA" role="37wK5m">
                        <ref role="3cqZAo" node="9D0Ba05vjs" resolve="controller" />
                      </node>
                      <node concept="37vLTw" id="41innpAoSuB" role="37wK5m">
                        <ref role="3cqZAo" node="9D0Ba05vjI" resolve="mh" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="41innpAoSuD" role="37wK5m">
                    <ref role="3cqZAo" node="9D0Ba05vjI" resolve="mh" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7kKMI7ohWqC" role="3cqZAp">
          <node concept="3cpWsn" id="7kKMI7ohWqD" role="3cpWs9">
            <property role="TrG5h" value="bg" />
            <node concept="3uibUv" id="7kKMI7ohWdy" role="1tU5fm">
              <ref role="3uigEE" to="xygl:~PerformInBackgroundOption" resolve="PerformInBackgroundOption" />
            </node>
            <node concept="2OqwBi" id="7kKMI7oiUyt" role="33vP2m">
              <node concept="2YIFZM" id="4_zjhpmwFvz" role="2Oq$k0">
                <ref role="37wK5l" node="2UA$I15WtCC" resolve="getInstance" />
                <ref role="1Pybhc" node="2UA$I15WhPI" resolve="MakeServiceConfiguration" />
                <node concept="37vLTw" id="7kKMI7oiP1u" role="37wK5m">
                  <ref role="3cqZAo" node="41innpApNZl" resolve="ideaPrj" />
                </node>
              </node>
              <node concept="liA8E" id="7kKMI7oj0bb" role="2OqNvi">
                <ref role="37wK5l" node="2UA$I15WCcN" resolve="getMakeInBackgroundOption" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="41innpAoSui" role="3cqZAp">
          <node concept="3cpWsn" id="41innpAoSuj" role="3cpWs9">
            <property role="TrG5h" value="platformTask" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="41innpAoSuk" role="1tU5fm">
              <ref role="3uigEE" to="xygl:~Task" resolve="Task" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5oM91R2Ak0F" role="3cqZAp">
          <node concept="1PaTwC" id="5oM91R2Ak0J" role="1aUNEU">
            <node concept="3oM_SD" id="5oM91R2Ak0L" role="1PaTwD">
              <property role="3oM_SC" value="A" />
            </node>
            <node concept="3oM_SD" id="5oM91R2Ak0M" role="1PaTwD">
              <property role="3oM_SC" value="modal" />
            </node>
            <node concept="3oM_SD" id="5oM91R2Ak0N" role="1PaTwD">
              <property role="3oM_SC" value="progress" />
            </node>
            <node concept="3oM_SD" id="5oM91R2Ak0O" role="1PaTwD">
              <property role="3oM_SC" value="blocks" />
            </node>
            <node concept="3oM_SD" id="5oM91R2Ak0P" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5oM91R2Ak0Q" role="1PaTwD">
              <property role="3oM_SC" value="EDT" />
            </node>
            <node concept="3oM_SD" id="5oM91R2Ak0R" role="1PaTwD">
              <property role="3oM_SC" value="until" />
            </node>
            <node concept="3oM_SD" id="5oM91R2Ak0S" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="5oM91R2Ak0T" role="1PaTwD">
              <property role="3oM_SC" value="completes." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5oM91R2AqIy" role="3cqZAp">
          <node concept="1PaTwC" id="5oM91R2AqIA" role="1aUNEU">
            <node concept="3oM_SD" id="5oM91R2AqIC" role="1PaTwD">
              <property role="3oM_SC" value="When" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqID" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIE" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIF" role="1PaTwD">
              <property role="3oM_SC" value="requested" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIG" role="1PaTwD">
              <property role="3oM_SC" value="off" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqII" role="1PaTwD">
              <property role="3oM_SC" value="EDT," />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIK" role="1PaTwD">
              <property role="3oM_SC" value="EDT" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIL" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIM" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIN" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIO" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIP" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIQ" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIR" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIS" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIT" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIU" role="1PaTwD">
              <property role="3oM_SC" value="write" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIV" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIW" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIX" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIY" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqIZ" role="1PaTwD">
              <property role="3oM_SC" value="deadlock" />
            </node>
            <node concept="3oM_SD" id="5oM91R2AqJ0" role="1PaTwD">
              <property role="3oM_SC" value="(MPS-40142)." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Eb$RRpAvDF" role="3cqZAp">
          <node concept="3clFbS" id="2Eb$RRpAvDH" role="3clFbx">
            <node concept="3clFbF" id="2Eb$RRpB5nA" role="3cqZAp">
              <node concept="37vLTI" id="2Eb$RRpBaRa" role="3clFbG">
                <node concept="2ShNRf" id="2Eb$RRpBg2_" role="37vLTx">
                  <node concept="YeOm9" id="2Eb$RRpBMKm" role="2ShVmc">
                    <node concept="1Y3b0j" id="2Eb$RRpBMKr" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <property role="373rjd" value="true" />
                      <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Task.Backgroundable" />
                      <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Backgroundable" />
                      <node concept="3Tm1VV" id="2Eb$RRpBMKs" role="1B3o_S" />
                      <node concept="3clFb_" id="2Eb$RRpBVCl" role="jymVt">
                        <property role="TrG5h" value="run" />
                        <node concept="3Tm1VV" id="2Eb$RRpBVCm" role="1B3o_S" />
                        <node concept="3cqZAl" id="2Eb$RRpBVCo" role="3clF45" />
                        <node concept="37vLTG" id="2Eb$RRpBVCp" role="3clF46">
                          <property role="TrG5h" value="indicator" />
                          <node concept="3uibUv" id="2Eb$RRpBVCq" role="1tU5fm">
                            <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                          </node>
                          <node concept="2AHcQZ" id="2Eb$RRpBVCr" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2Eb$RRpBVCy" role="3clF47">
                          <node concept="3clFbF" id="2Eb$RRpCGYL" role="3cqZAp">
                            <node concept="2OqwBi" id="2Eb$RRpCXTp" role="3clFbG">
                              <node concept="liA8E" id="2Eb$RRpD3jl" role="2OqNvi">
                                <ref role="37wK5l" to="4rvk:6eQ0BhLYtnI" resolve="run" />
                                <node concept="2ShNRf" id="2Eb$RRpD776" role="37wK5m">
                                  <node concept="1pGfFk" id="2Eb$RRpDgK_" role="2ShVmc">
                                    <property role="373rjd" value="true" />
                                    <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                    <node concept="37vLTw" id="2Eb$RRpDmGH" role="37wK5m">
                                      <ref role="3cqZAo" node="2Eb$RRpBVCp" resolve="indicator" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="2Eb$RRpDF6g" role="2Oq$k0">
                                <ref role="3cqZAo" node="2Eb$RRpzzdi" resolve="makeTask" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2Eb$RRpBVCz" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="2Eb$RRpCqBC" role="jymVt" />
                      <node concept="3clFb_" id="2Eb$RRpCarv" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="onCancel" />
                        <property role="DiZV1" value="false" />
                        <node concept="3Tm1VV" id="2Eb$RRpCarw" role="1B3o_S" />
                        <node concept="3cqZAl" id="2Eb$RRpCarx" role="3clF45" />
                        <node concept="3clFbS" id="2Eb$RRpCary" role="3clF47">
                          <node concept="3clFbF" id="2Eb$RRpCarz" role="3cqZAp">
                            <node concept="2OqwBi" id="2Eb$RRpCar$" role="3clFbG">
                              <node concept="37vLTw" id="2Eb$RRpCar_" role="2Oq$k0">
                                <ref role="3cqZAo" node="2Eb$RRpzzdi" resolve="makeTask" />
                              </node>
                              <node concept="liA8E" id="2Eb$RRpCarA" role="2OqNvi">
                                <ref role="37wK5l" node="2Eb$RRpxXRP" resolve="cancel" />
                                <node concept="3clFbT" id="2Eb$RRpCarB" role="37wK5m">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2Eb$RRpCarC" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2Eb$RRpDKH2" role="37wK5m">
                        <ref role="3cqZAo" node="41innpApNZl" resolve="ideaPrj" />
                      </node>
                      <node concept="37vLTw" id="2Eb$RRpDRaT" role="37wK5m">
                        <ref role="3cqZAo" node="9D0Ba05vjy" resolve="scrName" />
                      </node>
                      <node concept="3clFbT" id="2Eb$RRpE6_o" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2Eb$RRpB5n$" role="37vLTJ">
                  <ref role="3cqZAo" node="41innpAoSuj" resolve="platformTask" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5oM91R2A5qC" role="3clFbw">
            <node concept="2OqwBi" id="5oM91R2A5sH" role="3uHU7B">
              <node concept="37vLTw" id="5oM91R2A5rA" role="2Oq$k0">
                <ref role="3cqZAo" node="7kKMI7ohWqD" resolve="bg" />
              </node>
              <node concept="liA8E" id="5oM91R2A5sI" role="2OqNvi">
                <ref role="37wK5l" to="xygl:~PerformInBackgroundOption.shouldStartInBackground()" resolve="shouldStartInBackground" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5oM91R2A5qE" role="3uHU7w">
              <node concept="2YIFZM" id="5oM91R2A5sy" role="3fr31v">
                <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2Eb$RRpAXWF" role="9aQIa">
            <node concept="3clFbS" id="2Eb$RRpAXWG" role="9aQI4">
              <node concept="3clFbF" id="2Eb$RRpACM7" role="3cqZAp">
                <node concept="37vLTI" id="2Eb$RRpACM9" role="3clFbG">
                  <node concept="37vLTw" id="2Eb$RRpACMd" role="37vLTJ">
                    <ref role="3cqZAo" node="41innpAoSuj" resolve="platformTask" />
                  </node>
                  <node concept="2ShNRf" id="2Eb$RRpElCK" role="37vLTx">
                    <node concept="YeOm9" id="2Eb$RRpEzmr" role="2ShVmc">
                      <node concept="1Y3b0j" id="2Eb$RRpEzmu" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                        <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                        <node concept="37vLTw" id="2Eb$RRpF7rp" role="37wK5m">
                          <ref role="3cqZAo" node="41innpApNZl" resolve="ideaPrj" />
                        </node>
                        <node concept="37vLTw" id="2Eb$RRpF7rq" role="37wK5m">
                          <ref role="3cqZAo" node="9D0Ba05vjy" resolve="scrName" />
                        </node>
                        <node concept="3clFbT" id="2Eb$RRpF7rr" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="3Tm1VV" id="2Eb$RRpEzmv" role="1B3o_S" />
                        <node concept="3clFb_" id="2Eb$RRpEB37" role="jymVt">
                          <property role="TrG5h" value="run" />
                          <node concept="3Tm1VV" id="2Eb$RRpEB38" role="1B3o_S" />
                          <node concept="3cqZAl" id="2Eb$RRpEB3a" role="3clF45" />
                          <node concept="37vLTG" id="2Eb$RRpEB3b" role="3clF46">
                            <property role="TrG5h" value="indicator" />
                            <node concept="3uibUv" id="2Eb$RRpEB3c" role="1tU5fm">
                              <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                            </node>
                            <node concept="2AHcQZ" id="2Eb$RRpEB3d" role="2AJF6D">
                              <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="2Eb$RRpEB3j" role="3clF47">
                            <node concept="3clFbF" id="2Eb$RRpEMFQ" role="3cqZAp">
                              <node concept="2OqwBi" id="2Eb$RRpEMFR" role="3clFbG">
                                <node concept="37vLTw" id="4pkeYHhD_IS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2Eb$RRpzzdi" resolve="makeTask" />
                                </node>
                                <node concept="liA8E" id="2Eb$RRpEMFV" role="2OqNvi">
                                  <ref role="37wK5l" to="4rvk:6eQ0BhLYtnI" resolve="run" />
                                  <node concept="2ShNRf" id="2Eb$RRpEMFW" role="37wK5m">
                                    <node concept="1pGfFk" id="2Eb$RRpEMFX" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                      <node concept="37vLTw" id="2Eb$RRpEMFY" role="37wK5m">
                                        <ref role="3cqZAo" node="2Eb$RRpEB3b" resolve="indicator" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="2Eb$RRpEB3k" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3clFb_" id="2Eb$RRpEYh7" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="onCancel" />
                          <property role="DiZV1" value="false" />
                          <node concept="3Tm1VV" id="2Eb$RRpEYh8" role="1B3o_S" />
                          <node concept="3cqZAl" id="2Eb$RRpEYh9" role="3clF45" />
                          <node concept="3clFbS" id="2Eb$RRpEYha" role="3clF47">
                            <node concept="3clFbF" id="2Eb$RRpEYhb" role="3cqZAp">
                              <node concept="2OqwBi" id="2Eb$RRpEYhc" role="3clFbG">
                                <node concept="37vLTw" id="2Eb$RRpEYhd" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2Eb$RRpzzdi" resolve="makeTask" />
                                </node>
                                <node concept="liA8E" id="2Eb$RRpEYhe" role="2OqNvi">
                                  <ref role="37wK5l" node="2Eb$RRpxXRP" resolve="cancel" />
                                  <node concept="3clFbT" id="2Eb$RRpEYhf" role="37wK5m">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="2Eb$RRpEYhg" role="2AJF6D">
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
        <node concept="3clFbH" id="41innpAoSw0" role="3cqZAp" />
        <node concept="3J1_TO" id="41innpAoSw7" role="3cqZAp">
          <node concept="3clFbS" id="41innpAoSw8" role="1zxBo7">
            <node concept="3SKdUt" id="4uO1VCfFoQY" role="3cqZAp">
              <node concept="1PaTwC" id="4uO1VCfFoQZ" role="1aUNEU">
                <node concept="3oM_SD" id="4uO1VCfFoSx" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFr3_" role="1PaTwD">
                  <property role="3oM_SC" value="suspicious" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFv3B" role="1PaTwD">
                  <property role="3oM_SC" value="try/catch" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFv58" role="1PaTwD">
                  <property role="3oM_SC" value="around" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFv7h" role="1PaTwD">
                  <property role="3oM_SC" value="doExecute" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFv9r" role="1PaTwD">
                  <property role="3oM_SC" value="-&gt;" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvaZ" role="1PaTwD">
                  <property role="3oM_SC" value="invokeLater()." />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvjJ" role="1PaTwD">
                  <property role="3oM_SC" value="It's" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvll" role="1PaTwD">
                  <property role="3oM_SC" value="highly" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvny" role="1PaTwD">
                  <property role="3oM_SC" value="unlikely" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvpn" role="1PaTwD">
                  <property role="3oM_SC" value="anything" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvrQ" role="1PaTwD">
                  <property role="3oM_SC" value="goes" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvsT" role="1PaTwD">
                  <property role="3oM_SC" value="wrong" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvwC" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="4uO1VCfFvyk" role="1PaTwD">
                  <property role="3oM_SC" value="doExecute" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="41innpAoSw9" role="3cqZAp">
              <node concept="2OqwBi" id="41innpAoSwa" role="3clFbG">
                <node concept="1rXfSq" id="41innpArnJ7" role="2Oq$k0">
                  <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
                </node>
                <node concept="liA8E" id="41innpAoSwc" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:7yGn3z4N62_" resolve="doExecute" />
                  <node concept="1bVj0M" id="41innpAoSwd" role="37wK5m">
                    <node concept="3clFbS" id="41innpAoSwe" role="1bW5cS">
                      <node concept="3clFbF" id="WEmn41y5F2" role="3cqZAp">
                        <node concept="2OqwBi" id="WEmn41y6GT" role="3clFbG">
                          <node concept="2YIFZM" id="WEmn41y64y" role="2Oq$k0">
                            <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                            <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                          </node>
                          <node concept="liA8E" id="WEmn41y7xd" role="2OqNvi">
                            <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                            <node concept="1bVj0M" id="41innpAoSwh" role="37wK5m">
                              <node concept="3clFbS" id="41innpAoSwi" role="1bW5cS">
                                <node concept="3clFbF" id="41innpAoSwj" role="3cqZAp">
                                  <node concept="2OqwBi" id="41innpAoSwk" role="3clFbG">
                                    <node concept="2YIFZM" id="41innpAoSwl" role="2Oq$k0">
                                      <ref role="1Pybhc" to="ddhc:~IdeEventQueue" resolve="IdeEventQueue" />
                                      <ref role="37wK5l" to="ddhc:~IdeEventQueue.getInstance()" resolve="getInstance" />
                                    </node>
                                    <node concept="liA8E" id="41innpAoSwm" role="2OqNvi">
                                      <ref role="37wK5l" to="ddhc:~IdeEventQueue.flushQueue()" resolve="flushQueue" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="41innpAoSwn" role="3cqZAp">
                                  <node concept="3clFbS" id="41innpAoSwo" role="3clFbx">
                                    <node concept="3clFbF" id="41innpAoSwp" role="3cqZAp">
                                      <node concept="2OqwBi" id="41innpAoSwq" role="3clFbG">
                                        <node concept="2YIFZM" id="41innpAoSwr" role="2Oq$k0">
                                          <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                                          <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                                        </node>
                                        <node concept="liA8E" id="41innpAoSws" role="2OqNvi">
                                          <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
                                          <node concept="37vLTw" id="41innpAoSwt" role="37wK5m">
                                            <ref role="3cqZAo" node="41innpAoSuj" resolve="platformTask" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="41innpAoSwu" role="3clFbw">
                                    <node concept="37vLTw" id="41innpAoSwv" role="2Oq$k0">
                                      <ref role="3cqZAo" node="9D0Ba05vmp" resolve="currentProcess" />
                                    </node>
                                    <node concept="liA8E" id="41innpAoSww" role="2OqNvi">
                                      <ref role="37wK5l" to="i5cy:~AtomicReference.compareAndSet(java.lang.Object,java.lang.Object)" resolve="compareAndSet" />
                                      <node concept="10Nm6u" id="41innpAoSwx" role="37wK5m" />
                                      <node concept="37vLTw" id="41innpAoSwy" role="37wK5m">
                                        <ref role="3cqZAo" node="2Eb$RRpzzdi" resolve="makeTask" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="9aQIb" id="41innpAoSwz" role="9aQIa">
                                    <node concept="3clFbS" id="41innpAoSw$" role="9aQI4">
                                      <node concept="YS8fn" id="41innpAoSw_" role="3cqZAp">
                                        <node concept="2ShNRf" id="41innpAoSwA" role="YScLw">
                                          <node concept="1pGfFk" id="41innpAoSwB" role="2ShVmc">
                                            <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                                            <node concept="Xl_RD" id="41innpAoSwC" role="37wK5m">
                                              <property role="Xl_RC" value="unexpected: make process is already running" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="41innpAoSwD" role="3cqZAp">
                                  <node concept="2OqwBi" id="41innpAoSwE" role="3clFbG">
                                    <node concept="2YIFZM" id="41innpAoSwF" role="2Oq$k0">
                                      <ref role="37wK5l" to="ddhc:~IdeEventQueue.getInstance()" resolve="getInstance" />
                                      <ref role="1Pybhc" to="ddhc:~IdeEventQueue" resolve="IdeEventQueue" />
                                    </node>
                                    <node concept="liA8E" id="41innpAoSwG" role="2OqNvi">
                                      <ref role="37wK5l" to="ddhc:~IdeEventQueue.flushQueue()" resolve="flushQueue" />
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
            <node concept="3clFbH" id="41innpAoSwH" role="3cqZAp" />
          </node>
          <node concept="3uVAMA" id="41innpAoSwI" role="1zxBo5">
            <node concept="XOnhg" id="41innpAoSwJ" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="rex" />
              <node concept="nSUau" id="xvs04dIxyD" role="1tU5fm">
                <node concept="3uibUv" id="41innpAoSwK" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="41innpAoSwL" role="1zc67A">
              <node concept="3SKdUt" id="41innpAoSwM" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXos9c" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXos9d" role="1PaTwD">
                    <property role="3oM_SC" value="abort" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXos9e" role="1PaTwD">
                    <property role="3oM_SC" value="session" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="41innpAoSwO" role="3cqZAp">
                <node concept="3clFbS" id="41innpAoSwP" role="3clFbx">
                  <node concept="3clFbF" id="41innpAoSwQ" role="3cqZAp">
                    <node concept="1rXfSq" id="41innpAoSwR" role="3clFbG">
                      <ref role="37wK5l" node="9D0Ba05vi3" resolve="abortSession" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="41innpAoSwS" role="3clFbw">
                  <node concept="10Nm6u" id="41innpAoSwT" role="3uHU7w" />
                  <node concept="2OqwBi" id="41innpAoSwU" role="3uHU7B">
                    <node concept="37vLTw" id="41innpAoSwV" role="2Oq$k0">
                      <ref role="3cqZAo" node="9D0Ba05vmp" resolve="currentProcess" />
                    </node>
                    <node concept="liA8E" id="41innpAoSwW" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="41innpAoSwX" role="3cqZAp">
                <node concept="37vLTw" id="41innpAoSwY" role="YScLw">
                  <ref role="3cqZAo" node="41innpAoSwJ" resolve="rex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41innpAoSwZ" role="3cqZAp" />
        <node concept="3cpWs6" id="41innpAoSx0" role="3cqZAp">
          <node concept="37vLTw" id="41innpAoSx1" role="3cqZAk">
            <ref role="3cqZAo" node="2Eb$RRpzzdi" resolve="makeTask" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="9D0Ba05vl7" role="3clF45">
        <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
        <node concept="3uibUv" id="9D0Ba05vl8" role="11_B2D">
          <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfVzZ" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vl9" role="jymVt">
      <property role="TrG5h" value="checkValidUsage" />
      <node concept="3Tm6S6" id="9D0Ba05vla" role="1B3o_S" />
      <node concept="3cqZAl" id="9D0Ba05vlb" role="3clF45" />
      <node concept="3clFbS" id="9D0Ba05vlc" role="3clF47">
        <node concept="3cpWs8" id="1LibDRnM_z$" role="3cqZAp">
          <node concept="3cpWsn" id="1LibDRnM_z_" role="3cpWs9">
            <property role="TrG5h" value="msc" />
            <node concept="3uibUv" id="1LibDRnM_zz" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
            </node>
            <node concept="2OqwBi" id="1LibDRnM_zA" role="33vP2m">
              <node concept="37vLTw" id="1LibDRnM_zB" role="2Oq$k0">
                <ref role="3cqZAo" node="1LibDRnMi__" resolve="myPlatform" />
              </node>
              <node concept="liA8E" id="1LibDRnM_zC" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="1LibDRnM_zD" role="37wK5m">
                  <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1LibDRnM$Wr" role="3cqZAp" />
        <node concept="3clFbJ" id="9D0Ba05vlm" role="3cqZAp">
          <node concept="22lmx$" id="1LibDRnMB7Y" role="3clFbw">
            <node concept="3y3z36" id="1LibDRnMCO4" role="3uHU7w">
              <node concept="Xjq3P" id="1LibDRnMEmO" role="3uHU7w" />
              <node concept="2OqwBi" id="1LibDRnMBrA" role="3uHU7B">
                <node concept="37vLTw" id="1LibDRnMBfK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LibDRnM_z_" resolve="msc" />
                </node>
                <node concept="liA8E" id="1LibDRnMB$y" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:4QUA3SqtLoe" resolve="get" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1LibDRnMAZf" role="3uHU7B">
              <node concept="37vLTw" id="1LibDRnMAND" role="3uHU7B">
                <ref role="3cqZAo" node="1LibDRnM_z_" resolve="msc" />
              </node>
              <node concept="10Nm6u" id="1LibDRnMB6G" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="9D0Ba05vlp" role="3clFbx">
            <node concept="YS8fn" id="9D0Ba05vlq" role="3cqZAp">
              <node concept="2ShNRf" id="9D0Ba05vlr" role="YScLw">
                <node concept="1pGfFk" id="9D0Ba05vls" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="9D0Ba05vlt" role="37wK5m">
                    <property role="Xl_RC" value="invalid usage of service" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05vld" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05vle" role="3clFbx">
            <node concept="YS8fn" id="9D0Ba05vlf" role="3cqZAp">
              <node concept="2ShNRf" id="9D0Ba05vlg" role="YScLw">
                <node concept="1pGfFk" id="9D0Ba05vlh" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="9D0Ba05vli" role="37wK5m">
                    <property role="Xl_RC" value="already disposed" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1LibDRnMDPW" role="3clFbw">
            <node concept="10Nm6u" id="1LibDRnMEga" role="3uHU7w" />
            <node concept="2OqwBi" id="1LibDRnMD$z" role="3uHU7B">
              <node concept="37vLTw" id="1LibDRnMDmw" role="2Oq$k0">
                <ref role="3cqZAo" node="1LibDRnM_z_" resolve="msc" />
              </node>
              <node concept="liA8E" id="1LibDRnMDHv" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:4QUA3SqtLoe" resolve="get" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfV$0" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vlu" role="jymVt">
      <property role="TrG5h" value="checkValidSession" />
      <node concept="3cqZAl" id="9D0Ba05vlv" role="3clF45" />
      <node concept="3Tm1VV" id="9D0Ba05vlw" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05vlx" role="3clF47">
        <node concept="3clFbJ" id="9D0Ba05vly" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05vlz" role="3clFbx">
            <node concept="YS8fn" id="9D0Ba05vl$" role="3cqZAp">
              <node concept="2ShNRf" id="9D0Ba05vl_" role="YScLw">
                <node concept="1pGfFk" id="9D0Ba05vlA" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="9D0Ba05vlB" role="37wK5m">
                    <property role="Xl_RC" value="invalid session" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4uO1VCfOaFo" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmjy5" role="3uHU7w">
              <ref role="3cqZAo" node="9D0Ba05vlI" resolve="session" />
            </node>
            <node concept="2OqwBi" id="9D0Ba05vlF" role="3uHU7B">
              <node concept="Xjq3P" id="9D0Ba05vlG" role="2Oq$k0" />
              <node concept="liA8E" id="9D0Ba05vlH" role="2OqNvi">
                <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9D0Ba05vlI" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="9D0Ba05vlJ" role="1tU5fm">
          <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfV$1" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05vlK" role="jymVt">
      <property role="TrG5h" value="displayInfo" />
      <node concept="3Tm6S6" id="9D0Ba05vlL" role="1B3o_S" />
      <node concept="3cqZAl" id="9D0Ba05vlM" role="3clF45" />
      <node concept="37vLTG" id="9D0Ba05vlN" role="3clF46">
        <property role="TrG5h" value="info" />
        <node concept="17QB3L" id="9D0Ba05vlO" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="9D0Ba05vlP" role="3clF47">
        <node concept="3cpWs8" id="9D0Ba05vlQ" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05vlR" role="3cpWs9">
            <property role="TrG5h" value="frame" />
            <node concept="3uibUv" id="9D0Ba05vlS" role="1tU5fm">
              <ref role="3uigEE" to="jkny:~IdeFrame" resolve="IdeFrame" />
            </node>
            <node concept="2OqwBi" id="9D0Ba05vlT" role="33vP2m">
              <node concept="2YIFZM" id="9D0Ba05vlU" role="2Oq$k0">
                <ref role="37wK5l" to="jkny:~WindowManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="jkny:~WindowManager" resolve="WindowManager" />
              </node>
              <node concept="liA8E" id="9D0Ba05vlV" role="2OqNvi">
                <ref role="37wK5l" to="jkny:~WindowManager.getIdeFrame(com.intellij.openapi.project.Project)" resolve="getIdeFrame" />
                <node concept="2YIFZM" id="9D0Ba05vlW" role="37wK5m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2OqwBi" id="9D0Ba05vlX" role="37wK5m">
                    <node concept="2OqwBi" id="9D0Ba05vlZ" role="2Oq$k0">
                      <node concept="Xjq3P" id="9D0Ba05vm0" role="2Oq$k0" />
                      <node concept="liA8E" id="9D0Ba05vm1" role="2OqNvi">
                        <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
                      </node>
                    </node>
                    <node concept="liA8E" id="9D0Ba05vm3" role="2OqNvi">
                      <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05vm4" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05vm5" role="3clFbx">
            <node concept="3clFbF" id="9D0Ba05vm6" role="3cqZAp">
              <node concept="2OqwBi" id="9D0Ba05vm7" role="3clFbG">
                <node concept="2OqwBi" id="9D0Ba05vm8" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagT_jR" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05vlR" resolve="frame" />
                  </node>
                  <node concept="liA8E" id="9D0Ba05vma" role="2OqNvi">
                    <ref role="37wK5l" to="jkny:~IdeFrame.getStatusBar()" resolve="getStatusBar" />
                  </node>
                </node>
                <node concept="liA8E" id="9D0Ba05vmb" role="2OqNvi">
                  <ref role="37wK5l" to="jkny:~StatusBarInfo.setInfo(java.lang.String)" resolve="setInfo" />
                  <node concept="37vLTw" id="2BHiRxglqBp" role="37wK5m">
                    <ref role="3cqZAo" node="9D0Ba05vlN" resolve="info" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="9D0Ba05vmd" role="3clFbw">
            <node concept="10Nm6u" id="9D0Ba05vme" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagT_9Q" role="3uHU7B">
              <ref role="3cqZAo" node="9D0Ba05vlR" resolve="frame" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4PZILea$bwu" role="jymVt" />
    <node concept="3clFb_" id="_nxV6n3HMn" role="jymVt">
      <property role="TrG5h" value="displayBalloon" />
      <node concept="37vLTG" id="_nxV6n4SHJ" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="_nxV6n4SOe" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="_nxV6n3HMp" role="3clF45" />
      <node concept="3Tm6S6" id="_nxV6n3M7e" role="1B3o_S" />
      <node concept="3clFbS" id="_nxV6n3HMr" role="3clF47">
        <node concept="3SKdUt" id="4uO1VCfIO_h" role="3cqZAp">
          <node concept="1PaTwC" id="4uO1VCfIO_i" role="1aUNEU">
            <node concept="3oM_SD" id="4uO1VCfIRnJ" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfISZz" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIT0s" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIT1m" role="1PaTwD">
              <property role="3oM_SC" value="tool" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIT2h" role="1PaTwD">
              <property role="3oM_SC" value="window" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIT3d" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIT3k" role="1PaTwD">
              <property role="3oM_SC" value="&quot;Make&quot;" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIT5Y" role="1PaTwD">
              <property role="3oM_SC" value="id?" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIT67" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIT9D" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfITaE" role="1PaTwD">
              <property role="3oM_SC" value="prefer" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfITbG" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfITbT" role="1PaTwD">
              <property role="3oM_SC" value="report" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfITcX" role="1PaTwD">
              <property role="3oM_SC" value="IResult.FAILURE" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfITpx" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfITqB" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfITtq" role="1PaTwD">
              <property role="3oM_SC" value="balloon" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIZVS" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIZXv" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIZYh" role="1PaTwD">
              <property role="3oM_SC" value="status" />
            </node>
            <node concept="3oM_SD" id="4uO1VCfIZZs" role="1PaTwD">
              <property role="3oM_SC" value="bar." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_nxV6n44PA" role="3cqZAp">
          <node concept="2OqwBi" id="_nxV6n45Zs" role="3clFbG">
            <node concept="2YIFZM" id="_nxV6n44PZ" role="2Oq$k0">
              <ref role="37wK5l" to="jkny:~ToolWindowManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="jkny:~ToolWindowManager" resolve="ToolWindowManager" />
              <node concept="2YIFZM" id="_nxV6n44Qk" role="37wK5m">
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                <node concept="2OqwBi" id="_nxV6n44Ql" role="37wK5m">
                  <node concept="2OqwBi" id="_nxV6n44Qm" role="2Oq$k0">
                    <node concept="Xjq3P" id="_nxV6n44Qn" role="2Oq$k0" />
                    <node concept="liA8E" id="_nxV6n44Qo" role="2OqNvi">
                      <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
                    </node>
                  </node>
                  <node concept="liA8E" id="_nxV6n44Qp" role="2OqNvi">
                    <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_nxV6n47cQ" role="2OqNvi">
              <ref role="37wK5l" to="jkny:~ToolWindowManager.notifyByBalloon(java.lang.String,com.intellij.openapi.ui.MessageType,java.lang.String)" resolve="notifyByBalloon" />
              <node concept="Xl_RD" id="_nxV6n47zV" role="37wK5m">
                <property role="Xl_RC" value="Make" />
              </node>
              <node concept="10M0yZ" id="_nxV6n48fp" role="37wK5m">
                <ref role="3cqZAo" to="jkm4:~MessageType.WARNING" resolve="WARNING" />
                <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
              </node>
              <node concept="37vLTw" id="_nxV6n4YJ5" role="37wK5m">
                <ref role="3cqZAo" node="_nxV6n4SHJ" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="_nxV6n4797" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="_nxV6n3DFK" role="jymVt" />
    <node concept="312cEu" id="9D0Ba05v20" role="jymVt">
      <property role="TrG5h" value="Controller" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="9D0Ba05v2g" role="1B3o_S" />
      <node concept="312cEg" id="9D0Ba05v24" role="jymVt">
        <property role="TrG5h" value="delegateScrCtr" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="9D0Ba05v25" role="1B3o_S" />
        <node concept="3uibUv" id="9D0Ba05v26" role="1tU5fm">
          <ref role="3uigEE" to="i9so:4231y0oKQyu" resolve="IScriptController" />
        </node>
      </node>
      <node concept="312cEg" id="9D0Ba05v27" role="jymVt">
        <property role="TrG5h" value="delegateConfMon" />
        <node concept="3Tm6S6" id="9D0Ba05v28" role="1B3o_S" />
        <node concept="3uibUv" id="9D0Ba05v29" role="1tU5fm">
          <ref role="3uigEE" to="i9so:7eUbKP2Zue8" resolve="IConfigMonitor" />
        </node>
      </node>
      <node concept="312cEg" id="9D0Ba05v2a" role="jymVt">
        <property role="TrG5h" value="confMon" />
        <node concept="3Tm6S6" id="9D0Ba05v2b" role="1B3o_S" />
        <node concept="3uibUv" id="9D0Ba05v2c" role="1tU5fm">
          <ref role="3uigEE" to="i9so:7eUbKP2Zue8" resolve="IConfigMonitor" />
        </node>
      </node>
      <node concept="312cEg" id="9D0Ba05v2d" role="jymVt">
        <property role="TrG5h" value="jobMon" />
        <node concept="3Tm6S6" id="9D0Ba05v2e" role="1B3o_S" />
        <node concept="3uibUv" id="9D0Ba05v2f" role="1tU5fm">
          <ref role="3uigEE" to="i9so:5mqBoD3U3Wy" resolve="IJobMonitor" />
        </node>
      </node>
      <node concept="312cEg" id="9D0Ba05v8b" role="jymVt">
        <property role="TrG5h" value="mh" />
        <node concept="3Tm6S6" id="9D0Ba05v8c" role="1B3o_S" />
        <node concept="3uibUv" id="9D0Ba05v8d" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
        </node>
      </node>
      <node concept="312cEg" id="9D0Ba05v8e" role="jymVt">
        <property role="TrG5h" value="predParamPool" />
        <node concept="3Tm6S6" id="9D0Ba05v8f" role="1B3o_S" />
        <node concept="3uibUv" id="9D0Ba05v8g" role="1tU5fm">
          <ref role="3uigEE" to="i9so:5XvfMqim0Fp" resolve="IPropertiesPool" />
        </node>
      </node>
      <node concept="3clFbW" id="9D0Ba05v2h" role="jymVt">
        <node concept="3cqZAl" id="9D0Ba05v2i" role="3clF45" />
        <node concept="3Tm1VV" id="9D0Ba05v2j" role="1B3o_S" />
        <node concept="3clFbS" id="9D0Ba05v2k" role="3clF47">
          <node concept="3clFbF" id="9D0Ba05v2l" role="3cqZAp">
            <node concept="37vLTI" id="9D0Ba05v2m" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxglQyI" role="37vLTx">
                <ref role="3cqZAo" node="9D0Ba05v2D" resolve="delegate" />
              </node>
              <node concept="2OqwBi" id="9D0Ba05v2o" role="37vLTJ">
                <node concept="Xjq3P" id="9D0Ba05v2p" role="2Oq$k0" />
                <node concept="2OwXpG" id="9D0Ba05v2q" role="2OqNvi">
                  <ref role="2Oxat5" node="9D0Ba05v24" resolve="delegateScrCtr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="9D0Ba05v2x" role="3cqZAp">
            <node concept="37vLTI" id="9D0Ba05v2y" role="3clFbG">
              <node concept="2OqwBi" id="9D0Ba05v2z" role="37vLTJ">
                <node concept="Xjq3P" id="9D0Ba05v2$" role="2Oq$k0" />
                <node concept="2OwXpG" id="9D0Ba05v2_" role="2OqNvi">
                  <ref role="2Oxat5" node="9D0Ba05v8b" resolve="mh" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgm8Qc" role="37vLTx">
                <ref role="3cqZAo" node="9D0Ba05v2F" resolve="mh" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="9D0Ba05v2B" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz3vA" role="3clFbG">
              <ref role="37wK5l" node="9D0Ba05v6$" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="9D0Ba05v2D" role="3clF46">
          <property role="TrG5h" value="delegate" />
          <node concept="3uibUv" id="9D0Ba05v2E" role="1tU5fm">
            <ref role="3uigEE" to="i9so:4231y0oKQyu" resolve="IScriptController" />
          </node>
        </node>
        <node concept="37vLTG" id="9D0Ba05v2F" role="3clF46">
          <property role="TrG5h" value="mh" />
          <node concept="3uibUv" id="9D0Ba05v2G" role="1tU5fm">
            <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1k3_r9OYzcW" role="jymVt" />
      <node concept="3clFb_" id="9D0Ba05v2J" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="runConfigWithMonitor" />
        <node concept="3cqZAl" id="9D0Ba05v2K" role="3clF45" />
        <node concept="3Tm1VV" id="9D0Ba05v2L" role="1B3o_S" />
        <node concept="37vLTG" id="9D0Ba05v2M" role="3clF46">
          <property role="TrG5h" value="code" />
          <node concept="1ajhzC" id="9D0Ba05v2N" role="1tU5fm">
            <node concept="3cqZAl" id="9D0Ba05v2O" role="1ajl9A" />
            <node concept="3uibUv" id="9D0Ba05v2P" role="1ajw0F">
              <ref role="3uigEE" to="i9so:7eUbKP2Zue8" resolve="IConfigMonitor" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="9D0Ba05v2Q" role="3clF47">
          <node concept="3clFbJ" id="9D0Ba05v2R" role="3cqZAp">
            <node concept="3clFbS" id="9D0Ba05v2S" role="3clFbx">
              <node concept="3clFbF" id="9D0Ba05v2T" role="3cqZAp">
                <node concept="2OqwBi" id="9D0Ba05v2U" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuoeA" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05v24" resolve="delegateScrCtr" />
                  </node>
                  <node concept="liA8E" id="9D0Ba05v2W" role="2OqNvi">
                    <ref role="37wK5l" to="i9so:4231y0oKQyL" resolve="runConfigWithMonitor" />
                    <node concept="1bVj0M" id="9D0Ba05v2X" role="37wK5m">
                      <node concept="3clFbS" id="9D0Ba05v2Y" role="1bW5cS">
                        <node concept="3J1_TO" id="9D0Ba05v2Z" role="3cqZAp">
                          <node concept="3clFbS" id="9D0Ba05v30" role="1zxBo7">
                            <node concept="3clFbF" id="9D0Ba05v31" role="3cqZAp">
                              <node concept="37vLTI" id="9D0Ba05v32" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxgmac2" role="37vLTx">
                                  <ref role="3cqZAo" node="9D0Ba05v3i" resolve="c" />
                                </node>
                                <node concept="2OqwBi" id="9D0Ba05v34" role="37vLTJ">
                                  <node concept="Xjq3P" id="9D0Ba05v35" role="2Oq$k0" />
                                  <node concept="2OwXpG" id="9D0Ba05v36" role="2OqNvi">
                                    <ref role="2Oxat5" node="9D0Ba05v27" resolve="delegateConfMon" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="9D0Ba05v37" role="3cqZAp">
                              <node concept="2Sg_IR" id="9D0Ba05v38" role="3clFbG">
                                <node concept="37vLTw" id="2BHiRxgmai8" role="2SgG2M">
                                  <ref role="3cqZAo" node="9D0Ba05v2M" resolve="code" />
                                </node>
                                <node concept="37vLTw" id="2BHiRxeuu3E" role="2SgHGx">
                                  <ref role="3cqZAo" node="9D0Ba05v2a" resolve="confMon" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1wplmZ" id="xvs04dI$UF" role="1zxBo6">
                            <node concept="3clFbS" id="9D0Ba05v3b" role="1wplMD">
                              <node concept="3clFbF" id="9D0Ba05v3c" role="3cqZAp">
                                <node concept="37vLTI" id="9D0Ba05v3d" role="3clFbG">
                                  <node concept="10Nm6u" id="9D0Ba05v3e" role="37vLTx" />
                                  <node concept="2OqwBi" id="9D0Ba05v3f" role="37vLTJ">
                                    <node concept="Xjq3P" id="9D0Ba05v3g" role="2Oq$k0" />
                                    <node concept="2OwXpG" id="9D0Ba05v3h" role="2OqNvi">
                                      <ref role="2Oxat5" node="9D0Ba05v27" resolve="delegateConfMon" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="9D0Ba05v3i" role="1bW2Oz">
                        <property role="TrG5h" value="c" />
                        <node concept="3uibUv" id="9D0Ba05v3j" role="1tU5fm">
                          <ref role="3uigEE" to="i9so:7eUbKP2Zue8" resolve="IConfigMonitor" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="9D0Ba05v3k" role="3clFbw">
              <node concept="10Nm6u" id="9D0Ba05v3l" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeuyMf" role="3uHU7B">
                <ref role="3cqZAo" node="9D0Ba05v24" resolve="delegateScrCtr" />
              </node>
            </node>
            <node concept="9aQIb" id="9D0Ba05v3n" role="9aQIa">
              <node concept="3clFbS" id="9D0Ba05v3o" role="9aQI4">
                <node concept="3clFbF" id="9D0Ba05v3p" role="3cqZAp">
                  <node concept="2Sg_IR" id="9D0Ba05v3q" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmzut" role="2SgG2M">
                      <ref role="3cqZAo" node="9D0Ba05v2M" resolve="code" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxeumLG" role="2SgHGx">
                      <ref role="3cqZAo" node="9D0Ba05v2a" resolve="confMon" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="9D0Ba05v3t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1k3_r9OYzcX" role="jymVt" />
      <node concept="3clFb_" id="9D0Ba05v3u" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="runJobWithMonitor" />
        <node concept="37vLTG" id="9D0Ba05v3v" role="3clF46">
          <property role="TrG5h" value="code" />
          <node concept="1ajhzC" id="9D0Ba05v3w" role="1tU5fm">
            <node concept="3cqZAl" id="9D0Ba05v3x" role="1ajl9A" />
            <node concept="3uibUv" id="9D0Ba05v3y" role="1ajw0F">
              <ref role="3uigEE" to="i9so:5mqBoD3U3Wy" resolve="IJobMonitor" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="9D0Ba05v3z" role="3clF45" />
        <node concept="3Tm1VV" id="9D0Ba05v3$" role="1B3o_S" />
        <node concept="3clFbS" id="9D0Ba05v3_" role="3clF47">
          <node concept="3J1_TO" id="4Sa0NTIoK6K" role="3cqZAp">
            <node concept="3clFbS" id="9D0Ba05v3G" role="1zxBo7">
              <node concept="3clFbF" id="9D0Ba05v3H" role="3cqZAp">
                <node concept="2Sg_IR" id="9D0Ba05v3I" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuPgU" role="2SgHGx">
                    <ref role="3cqZAo" node="9D0Ba05v2d" resolve="jobMon" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxghiCN" role="2SgG2M">
                    <ref role="3cqZAo" node="9D0Ba05v3v" resolve="code" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="9D0Ba05v3L" role="1zxBo5">
              <node concept="XOnhg" id="9D0Ba05v3M" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dIxyt" role="1tU5fm">
                  <node concept="3uibUv" id="9D0Ba05v3N" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="9D0Ba05v3O" role="1zc67A">
                <node concept="3clFbF" id="6V2p7Iulbwq" role="3cqZAp">
                  <node concept="2OqwBi" id="6V2p7IulvAl" role="3clFbG">
                    <node concept="2YIFZM" id="6V2p7IulgSM" role="2Oq$k0">
                      <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                      <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                      <node concept="3VsKOn" id="6V2p7Iulq$v" role="37wK5m">
                        <ref role="3VsUkX" node="9D0Ba05uYl" resolve="WorkbenchMakeService" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6V2p7Iul$Jo" role="2OqNvi">
                      <ref role="37wK5l" to="wwqx:~Logger.debug(java.lang.String,java.lang.Throwable)" resolve="debug" />
                      <node concept="Xl_RD" id="9D0Ba05v3T" role="37wK5m">
                        <property role="Xl_RC" value="Error running job" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTuay" role="37wK5m">
                        <ref role="3cqZAo" node="9D0Ba05v3M" resolve="e" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="9D0Ba05v3V" role="3cqZAp">
                  <node concept="2OqwBi" id="9D0Ba05v3W" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeuE3n" role="2Oq$k0">
                      <ref role="3cqZAo" node="9D0Ba05v2d" resolve="jobMon" />
                    </node>
                    <node concept="liA8E" id="9D0Ba05v3Y" role="2OqNvi">
                      <ref role="37wK5l" to="i9so:3bEKrlZKk50" resolve="reportFeedback" />
                      <node concept="2ShNRf" id="9D0Ba05v3Z" role="37wK5m">
                        <node concept="1pGfFk" id="9D0Ba05v40" role="2ShVmc">
                          <ref role="37wK5l" to="i9so:2W20f651bY_" resolve="IFeedback.ERROR" />
                          <node concept="Xl_RD" id="9D0Ba05v41" role="37wK5m">
                            <property role="Xl_RC" value="Error running job" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTxEa" role="37wK5m">
                            <ref role="3cqZAo" node="9D0Ba05v3M" resolve="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="YS8fn" id="9D0Ba05v43" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTuvA" role="YScLw">
                    <ref role="3cqZAo" node="9D0Ba05v3M" resolve="e" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="9D0Ba05v49" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1k3_r9OYzcY" role="jymVt" />
      <node concept="3clFb_" id="9D0Ba05v4a" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setup" />
        <node concept="3cqZAl" id="9D0Ba05v4b" role="3clF45" />
        <node concept="3Tm1VV" id="9D0Ba05v4c" role="1B3o_S" />
        <node concept="37vLTG" id="9D0Ba05v4d" role="3clF46">
          <property role="TrG5h" value="ppool" />
          <node concept="3uibUv" id="9D0Ba05v4e" role="1tU5fm">
            <ref role="3uigEE" to="i9so:5XvfMqim0Fp" resolve="IPropertiesPool" />
          </node>
        </node>
        <node concept="37vLTG" id="9D0Ba05v4f" role="3clF46">
          <property role="TrG5h" value="targets" />
          <node concept="A3Dl8" id="9D0Ba05v4g" role="1tU5fm">
            <node concept="3uibUv" id="9D0Ba05v4h" role="A3Ik2">
              <ref role="3uigEE" to="ud0o:5mqBoD3U3UI" resolve="ITarget" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="9D0Ba05v4i" role="3clF46">
          <property role="TrG5h" value="input" />
          <node concept="A3Dl8" id="9D0Ba05v4j" role="1tU5fm">
            <node concept="3qUE_q" id="9D0Ba05v4k" role="A3Ik2">
              <node concept="3uibUv" id="4g8ToP4m6j_" role="3qUE_r">
                <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="9D0Ba05v4m" role="3clF47">
          <node concept="3clFbF" id="9D0Ba05v4n" role="3cqZAp">
            <node concept="2OqwBi" id="9D0Ba05v4o" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxghf28" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05v4d" resolve="ppool" />
              </node>
              <node concept="liA8E" id="9D0Ba05v4q" role="2OqNvi">
                <ref role="37wK5l" to="i9so:3gpk4snss$o" resolve="setPredecessor" />
                <node concept="37vLTw" id="2BHiRxeuncj" role="37wK5m">
                  <ref role="3cqZAo" node="9D0Ba05v8e" resolve="predParamPool" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="9D0Ba05v4s" role="3cqZAp">
            <node concept="37vLTI" id="9D0Ba05v4t" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgm8ln" role="37vLTx">
                <ref role="3cqZAo" node="9D0Ba05v4d" resolve="ppool" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuNXb" role="37vLTJ">
                <ref role="3cqZAo" node="9D0Ba05v8e" resolve="predParamPool" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2zR2ackd7in" role="3cqZAp" />
          <node concept="3SKdUt" id="2qoqtMKPusp" role="3cqZAp">
            <node concept="1PaTwC" id="2qoqtMKPusq" role="1aUNEU">
              <node concept="3oM_SD" id="2qoqtMKPusr" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_0k" role="1PaTwD">
                <property role="3oM_SC" value="WorkbenchMakeService" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_2e" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_2f" role="1PaTwD">
                <property role="3oM_SC" value="generic" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_2u" role="1PaTwD">
                <property role="3oM_SC" value="code" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_2v" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_2w" role="1PaTwD">
                <property role="3oM_SC" value="doesn't" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_2Z" role="1PaTwD">
                <property role="3oM_SC" value="need" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_3G" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_4d" role="1PaTwD">
                <property role="3oM_SC" value="know/care" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_4s" role="1PaTwD">
                <property role="3oM_SC" value="about" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_4t" role="1PaTwD">
                <property role="3oM_SC" value="JavaCompile" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_6$" role="1PaTwD">
                <property role="3oM_SC" value="facet" />
              </node>
              <node concept="3oM_SD" id="2qoqtMKP_73" role="1PaTwD">
                <property role="3oM_SC" value="existence" />
              </node>
              <node concept="3oM_SD" id="3ZzSubugyBu" role="1PaTwD">
                <property role="3oM_SC" value="or" />
              </node>
              <node concept="3oM_SD" id="3ZzSubugyDp" role="1PaTwD">
                <property role="3oM_SC" value="Kotlin" />
              </node>
              <node concept="3oM_SD" id="3ZzSubugyDS" role="1PaTwD">
                <property role="3oM_SC" value="compilation" />
              </node>
              <node concept="3oM_SD" id="3ZzSubugyEn" role="1PaTwD">
                <property role="3oM_SC" value="parameters." />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="bvkaYAI0Xd" role="3cqZAp">
            <node concept="2OqwBi" id="bvkaYAHYsw" role="3clFbG">
              <node concept="2OqwBi" id="1_R49hKcXQW" role="2Oq$k0">
                <node concept="2ShNRf" id="bvkaYAGZgT" role="2Oq$k0">
                  <node concept="1pGfFk" id="bvkaYAHwVI" role="2ShVmc">
                    <ref role="37wK5l" to="1gam:5OeL7nc8$v7" resolve="JavaCompileFacetInitializer" />
                  </node>
                </node>
                <node concept="liA8E" id="1_R49hKd2wf" role="2OqNvi">
                  <ref role="37wK5l" to="1gam:4IjTpK4JCVw" resolve="setKotlinCompileOptions" />
                  <node concept="2ShNRf" id="1_R49hKefW1" role="37wK5m">
                    <node concept="1pGfFk" id="1_R49hKefW2" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="mzcb:~KotlinCompilerOptions.&lt;init&gt;(java.io.File)" resolve="KotlinCompilerOptions" />
                      <node concept="1rXfSq" id="4DiVYcGmgmO" role="37wK5m">
                        <ref role="37wK5l" node="4DiVYcGk$6r" resolve="getAliveFlagFile" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="bvkaYAHZ48" role="2OqNvi">
                <ref role="37wK5l" to="1gam:5OeL7nc7t9L" resolve="populate" />
                <node concept="37vLTw" id="bvkaYAHZkZ" role="37wK5m">
                  <ref role="3cqZAo" node="9D0Ba05v4d" resolve="ppool" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="9D0Ba05v6a" role="3cqZAp" />
          <node concept="3clFbJ" id="9D0Ba05v6b" role="3cqZAp">
            <node concept="3clFbS" id="9D0Ba05v6c" role="3clFbx">
              <node concept="3clFbF" id="9D0Ba05v6d" role="3cqZAp">
                <node concept="2OqwBi" id="9D0Ba05v6e" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuTxA" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05v24" resolve="delegateScrCtr" />
                  </node>
                  <node concept="liA8E" id="9D0Ba05v6g" role="2OqNvi">
                    <ref role="37wK5l" to="i9so:70hZ3jyJvfD" resolve="setup" />
                    <node concept="37vLTw" id="2BHiRxgm9q1" role="37wK5m">
                      <ref role="3cqZAo" node="9D0Ba05v4d" resolve="ppool" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxghi_h" role="37wK5m">
                      <ref role="3cqZAo" node="9D0Ba05v4f" resolve="targets" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm9t6" role="37wK5m">
                      <ref role="3cqZAo" node="9D0Ba05v4i" resolve="input" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="9D0Ba05v6k" role="3clFbw">
              <node concept="10Nm6u" id="9D0Ba05v6l" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeuknQ" role="3uHU7B">
                <ref role="3cqZAo" node="9D0Ba05v24" resolve="delegateScrCtr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="9D0Ba05v6n" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1k3_r9OYzcZ" role="jymVt" />
      <node concept="3clFb_" id="9D0Ba05v6$" role="jymVt">
        <property role="TrG5h" value="init" />
        <node concept="3cqZAl" id="9D0Ba05v6_" role="3clF45" />
        <node concept="3Tm6S6" id="9D0Ba05v6A" role="1B3o_S" />
        <node concept="3clFbS" id="9D0Ba05v6B" role="3clF47">
          <node concept="3cpWs8" id="5Pnc_qQv9BN" role="3cqZAp">
            <node concept="3cpWsn" id="5Pnc_qQv9BO" role="3cpWs9">
              <property role="TrG5h" value="makeSession" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4_zjhpmxla6" role="1tU5fm">
                <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
              </node>
              <node concept="2OqwBi" id="5Pnc_qQv9BP" role="33vP2m">
                <node concept="Xjq3P" id="5Pnc_qQv9BQ" role="2Oq$k0">
                  <ref role="1HBi2w" node="9D0Ba05uYl" resolve="WorkbenchMakeService" />
                </node>
                <node concept="liA8E" id="5Pnc_qQv9BR" role="2OqNvi">
                  <ref role="37wK5l" node="9D0Ba05vfM" resolve="getSession" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="9D0Ba05v6C" role="3cqZAp">
            <node concept="37vLTI" id="9D0Ba05v6D" role="3clFbG">
              <node concept="2ShNRf" id="9D0Ba05v6E" role="37vLTx">
                <node concept="YeOm9" id="9D0Ba05v6F" role="2ShVmc">
                  <node concept="1Y3b0j" id="9D0Ba05v6G" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="i9so:4TqQgK0rdP4" resolve="IConfigMonitor.Stub" />
                    <ref role="37wK5l" to="i9so:5Pnc_qQuW1m" resolve="IConfigMonitor.Stub" />
                    <node concept="37vLTw" id="5Pnc_qQv9BS" role="37wK5m">
                      <ref role="3cqZAo" node="5Pnc_qQv9BO" resolve="makeSession" />
                    </node>
                    <node concept="3Tm1VV" id="9D0Ba05v6H" role="1B3o_S" />
                    <node concept="3clFb_" id="9D0Ba05v6I" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="relayQuery" />
                      <node concept="37vLTG" id="9D0Ba05v6J" role="3clF46">
                        <property role="TrG5h" value="query" />
                        <node concept="3uibUv" id="9D0Ba05v6K" role="1tU5fm">
                          <ref role="3uigEE" to="i9so:7n5UAVXWrRu" resolve="IQuery" />
                          <node concept="16syzq" id="9D0Ba05v6L" role="11_B2D">
                            <ref role="16sUi3" node="9D0Ba05v6N" resolve="T" />
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="9D0Ba05v6M" role="1B3o_S" />
                      <node concept="16euLQ" id="9D0Ba05v6N" role="16eVyc">
                        <property role="TrG5h" value="T" />
                        <node concept="3uibUv" id="9D0Ba05v6O" role="3ztrMU">
                          <ref role="3uigEE" to="i9so:2dB$GwFH8Z7" resolve="IOption" />
                        </node>
                      </node>
                      <node concept="16syzq" id="9D0Ba05v6P" role="3clF45">
                        <ref role="16sUi3" node="9D0Ba05v6N" resolve="T" />
                      </node>
                      <node concept="3clFbS" id="9D0Ba05v6Q" role="3clF47">
                        <node concept="3cpWs8" id="9D0Ba05v6R" role="3cqZAp">
                          <node concept="3cpWsn" id="9D0Ba05v6S" role="3cpWs9">
                            <property role="TrG5h" value="opt" />
                            <node concept="16syzq" id="9D0Ba05v6T" role="1tU5fm">
                              <ref role="16sUi3" node="9D0Ba05v6N" resolve="T" />
                            </node>
                            <node concept="10Nm6u" id="9D0Ba05v6U" role="33vP2m" />
                          </node>
                        </node>
                        <node concept="3clFbJ" id="9D0Ba05v6V" role="3cqZAp">
                          <node concept="3clFbS" id="9D0Ba05v6W" role="3clFbx">
                            <node concept="3clFbF" id="9D0Ba05v6X" role="3cqZAp">
                              <node concept="37vLTI" id="9D0Ba05v6Y" role="3clFbG">
                                <node concept="2OqwBi" id="9D0Ba05v6Z" role="37vLTx">
                                  <node concept="37vLTw" id="2BHiRxeuOCn" role="2Oq$k0">
                                    <ref role="3cqZAo" node="9D0Ba05v27" resolve="delegateConfMon" />
                                  </node>
                                  <node concept="liA8E" id="9D0Ba05v71" role="2OqNvi">
                                    <ref role="37wK5l" to="i9so:7eUbKP2ZRJM" resolve="relayQuery" />
                                    <node concept="37vLTw" id="2BHiRxgm7NL" role="37wK5m">
                                      <ref role="3cqZAo" node="9D0Ba05v6J" resolve="query" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="3GM_nagTzyb" role="37vLTJ">
                                  <ref role="3cqZAo" node="9D0Ba05v6S" resolve="opt" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="9D0Ba05v74" role="3clFbw">
                            <node concept="10Nm6u" id="9D0Ba05v75" role="3uHU7w" />
                            <node concept="37vLTw" id="2BHiRxeuFJC" role="3uHU7B">
                              <ref role="3cqZAo" node="9D0Ba05v27" resolve="delegateConfMon" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="9D0Ba05v77" role="3cqZAp">
                          <node concept="3K4zz7" id="9D0Ba05v78" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTuUr" role="3K4E3e">
                              <ref role="3cqZAo" node="9D0Ba05v6S" resolve="opt" />
                            </node>
                            <node concept="3y3z36" id="9D0Ba05v7a" role="3K4Cdx">
                              <node concept="10Nm6u" id="9D0Ba05v7b" role="3uHU7w" />
                              <node concept="37vLTw" id="3GM_nagTz9C" role="3uHU7B">
                                <ref role="3cqZAo" node="9D0Ba05v6S" resolve="opt" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="9D0Ba05v7d" role="3K4GZi">
                              <node concept="2ShNRf" id="9D0Ba05v7e" role="2Oq$k0">
                                <node concept="1pGfFk" id="9D0Ba05v7f" role="2ShVmc">
                                  <ref role="37wK5l" node="9D0Ba05uYb" resolve="UIQueryRelayStrategy" />
                                </node>
                              </node>
                              <node concept="liA8E" id="9D0Ba05v7g" role="2OqNvi">
                                <ref role="37wK5l" node="9D0Ba05uWQ" resolve="relayQuery" />
                                <node concept="37vLTw" id="2BHiRxgm6lC" role="37wK5m">
                                  <ref role="3cqZAo" node="9D0Ba05v6J" resolve="query" />
                                </node>
                                <node concept="2OqwBi" id="9D0Ba05v7i" role="37wK5m">
                                  <node concept="37vLTw" id="5Pnc_qQvdAi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5Pnc_qQv9BO" resolve="makeSession" />
                                  </node>
                                  <node concept="liA8E" id="4_zjhpmxxJ7" role="2OqNvi">
                                    <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="9D0Ba05v7l" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="9D0Ba05v7v" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="stopRequested" />
                      <node concept="3Tm1VV" id="9D0Ba05v7w" role="1B3o_S" />
                      <node concept="10P_77" id="9D0Ba05v7x" role="3clF45" />
                      <node concept="3clFbS" id="9D0Ba05v7y" role="3clF47">
                        <node concept="3clFbF" id="1qAwLBZXtoP" role="3cqZAp">
                          <node concept="1Wc70l" id="1Hzkh2dOAL9" role="3clFbG">
                            <node concept="2OqwBi" id="1Hzkh2dOD0z" role="3uHU7w">
                              <node concept="37vLTw" id="1Hzkh2dOERq" role="2Oq$k0">
                                <ref role="3cqZAo" node="9D0Ba05v27" resolve="delegateConfMon" />
                              </node>
                              <node concept="liA8E" id="1Hzkh2dOFh6" role="2OqNvi">
                                <ref role="37wK5l" to="i9so:5mqBoD3U3Wz" resolve="stopRequested" />
                              </node>
                            </node>
                            <node concept="3y3z36" id="1Hzkh2dO_nA" role="3uHU7B">
                              <node concept="37vLTw" id="1Hzkh2dOE1P" role="3uHU7B">
                                <ref role="3cqZAo" node="9D0Ba05v27" resolve="delegateConfMon" />
                              </node>
                              <node concept="10Nm6u" id="1Hzkh2dOAah" role="3uHU7w" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="9D0Ba05v7K" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="9D0Ba05v7L" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="reportFeedback" />
                      <node concept="37vLTG" id="9D0Ba05v7M" role="3clF46">
                        <property role="TrG5h" value="fdbk" />
                        <node concept="3uibUv" id="9D0Ba05v7N" role="1tU5fm">
                          <ref role="3uigEE" to="i9so:6KRD$9F_Ul3" resolve="IFeedback" />
                        </node>
                      </node>
                      <node concept="3cqZAl" id="9D0Ba05v7O" role="3clF45" />
                      <node concept="3Tm1VV" id="9D0Ba05v7P" role="1B3o_S" />
                      <node concept="3clFbS" id="9D0Ba05v7Q" role="3clF47">
                        <node concept="3clFbF" id="9D0Ba05v7R" role="3cqZAp">
                          <node concept="2OqwBi" id="9D0Ba05v7S" role="3clFbG">
                            <node concept="2ShNRf" id="9D0Ba05v7T" role="2Oq$k0">
                              <node concept="1pGfFk" id="9D0Ba05v7U" role="2ShVmc">
                                <ref role="37wK5l" node="yMIAu2eims" resolve="WorkbenchMakeService.NotificationFeedbackStrategy" />
                                <node concept="37vLTw" id="2BHiRxeuIwn" role="37wK5m">
                                  <ref role="3cqZAo" node="9D0Ba05v8b" resolve="mh" />
                                </node>
                                <node concept="2OqwBi" id="6ACuwpUDOg2" role="37wK5m">
                                  <node concept="37vLTw" id="6ACuwpUDHl1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5Pnc_qQv9BO" resolve="makeSession" />
                                  </node>
                                  <node concept="liA8E" id="6ACuwpUDUvN" role="2OqNvi">
                                    <ref role="37wK5l" to="hfuk:2BjwmTxTf34" resolve="getProject" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="9D0Ba05v7W" role="2OqNvi">
                              <ref role="37wK5l" node="yMIAu2ekpm" resolve="reportFeedback" />
                              <node concept="37vLTw" id="2BHiRxglpQJ" role="37wK5m">
                                <ref role="3cqZAo" node="9D0Ba05v7M" resolve="fdbk" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="9D0Ba05v7Y" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="9D0Ba05v7m" role="37vLTJ">
                <node concept="Xjq3P" id="9D0Ba05v7n" role="2Oq$k0" />
                <node concept="2OwXpG" id="9D0Ba05v7o" role="2OqNvi">
                  <ref role="2Oxat5" node="9D0Ba05v2a" resolve="confMon" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="9D0Ba05v7p" role="3cqZAp">
            <node concept="37vLTI" id="9D0Ba05v7q" role="3clFbG">
              <node concept="2OqwBi" id="9D0Ba05v88" role="37vLTJ">
                <node concept="Xjq3P" id="9D0Ba05v89" role="2Oq$k0" />
                <node concept="2OwXpG" id="9D0Ba05v8a" role="2OqNvi">
                  <ref role="2Oxat5" node="9D0Ba05v2d" resolve="jobMon" />
                </node>
              </node>
              <node concept="37vLTw" id="5Pnc_qQuvhz" role="37vLTx">
                <ref role="3cqZAo" node="9D0Ba05v2a" resolve="confMon" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1qAwLBZXkuT" role="EKbjA">
        <ref role="3uigEE" to="i9so:4231y0oKQyu" resolve="IScriptController" />
      </node>
    </node>
    <node concept="2tJIrI" id="yMIAu2dHp4" role="jymVt" />
    <node concept="312cEu" id="yMIAu2dNR6" role="jymVt">
      <property role="TrG5h" value="NotificationFeedbackStrategy" />
      <node concept="3Tm6S6" id="yMIAu2dVzb" role="1B3o_S" />
      <node concept="3uibUv" id="yMIAu2eggI" role="1zkMxy">
        <ref role="3uigEE" to="jqcx:5oXcJSdWLoz" resolve="MessageFeedbackStrategy" />
      </node>
      <node concept="312cEg" id="6ACuwpUEFPq" role="jymVt">
        <property role="TrG5h" value="myMpsProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6ACuwpUEFPr" role="1B3o_S" />
        <node concept="3uibUv" id="6ACuwpUEFPt" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbW" id="yMIAu2eims" role="jymVt">
        <node concept="3cqZAl" id="yMIAu2eimt" role="3clF45" />
        <node concept="3Tm1VV" id="yMIAu2eimu" role="1B3o_S" />
        <node concept="37vLTG" id="yMIAu2eimA" role="3clF46">
          <property role="TrG5h" value="handler" />
          <node concept="3uibUv" id="yMIAu2eimB" role="1tU5fm">
            <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
          </node>
        </node>
        <node concept="37vLTG" id="6ACuwpUE3ak" role="3clF46">
          <property role="TrG5h" value="mpsProject" />
          <node concept="3uibUv" id="6ACuwpUEa5z" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3clFbS" id="yMIAu2eimC" role="3clF47">
          <node concept="XkiVB" id="yMIAu2eimD" role="3cqZAp">
            <ref role="37wK5l" to="jqcx:5oXcJSdWLpG" resolve="MessageFeedbackStrategy" />
            <node concept="37vLTw" id="yMIAu2eimE" role="37wK5m">
              <ref role="3cqZAo" node="yMIAu2eimA" resolve="handler" />
            </node>
          </node>
          <node concept="3clFbF" id="6ACuwpUEFPu" role="3cqZAp">
            <node concept="37vLTI" id="6ACuwpUEFPw" role="3clFbG">
              <node concept="37vLTw" id="6ACuwpUEFPz" role="37vLTJ">
                <ref role="3cqZAo" node="6ACuwpUEFPq" resolve="myMpsProject" />
              </node>
              <node concept="37vLTw" id="6ACuwpUEFP$" role="37vLTx">
                <ref role="3cqZAo" node="6ACuwpUE3ak" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="yMIAu2ekpm" role="jymVt">
        <property role="TrG5h" value="reportFeedback" />
        <node concept="3cqZAl" id="yMIAu2ekpn" role="3clF45" />
        <node concept="3Tm1VV" id="yMIAu2ekpo" role="1B3o_S" />
        <node concept="37vLTG" id="yMIAu2ekqr" role="3clF46">
          <property role="TrG5h" value="fdk" />
          <node concept="3uibUv" id="yMIAu2ekqs" role="1tU5fm">
            <ref role="3uigEE" to="i9so:6KRD$9F_Ul3" resolve="IFeedback" />
          </node>
        </node>
        <node concept="3clFbS" id="yMIAu2ekqt" role="3clF47">
          <node concept="3clFbJ" id="yMIAu2evUM" role="3cqZAp">
            <node concept="3clFbS" id="yMIAu2evUO" role="3clFbx">
              <node concept="3clFbJ" id="yMIAu2fEZ$" role="3cqZAp">
                <node concept="3clFbS" id="yMIAu2fEZP" role="3clFbx">
                  <node concept="3cpWs8" id="6ACuwpUDcnB" role="3cqZAp">
                    <node concept="3cpWsn" id="6ACuwpUDcnC" role="3cpWs9">
                      <property role="TrG5h" value="notification" />
                      <node concept="3uibUv" id="6ACuwpUD5WR" role="1tU5fm">
                        <ref role="3uigEE" to="fnpx:~Notification" resolve="Notification" />
                      </node>
                      <node concept="2ShNRf" id="6ACuwpUDcnD" role="33vP2m">
                        <node concept="1pGfFk" id="6ACuwpUDcnE" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="fnpx:~Notification.&lt;init&gt;(java.lang.String,java.lang.String,com.intellij.notification.NotificationType)" resolve="Notification" />
                          <node concept="Xl_RD" id="6ACuwpUDcnF" role="37wK5m">
                            <property role="Xl_RC" value="jetbrains.mps.make" />
                          </node>
                          <node concept="2OqwBi" id="6ACuwpUDcnG" role="37wK5m">
                            <node concept="37vLTw" id="6ACuwpUDcnH" role="2Oq$k0">
                              <ref role="3cqZAo" node="yMIAu2ekqr" resolve="fdk" />
                            </node>
                            <node concept="liA8E" id="6ACuwpUDcnI" role="2OqNvi">
                              <ref role="37wK5l" to="i9so:6KRD$9F_UlA" resolve="getMessage" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="6ACuwpUDcnJ" role="37wK5m">
                            <ref role="Rm8GQ" to="fnpx:~NotificationType.WARNING" resolve="WARNING" />
                            <ref role="1Px2BO" to="fnpx:~NotificationType" resolve="NotificationType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="yMIAu2fJIe" role="3cqZAp">
                    <node concept="2OqwBi" id="6ACuwpUDjbv" role="3clFbG">
                      <node concept="37vLTw" id="6ACuwpUDcnK" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ACuwpUDcnC" resolve="notification" />
                      </node>
                      <node concept="liA8E" id="6ACuwpUDpoD" role="2OqNvi">
                        <ref role="37wK5l" to="fnpx:~Notification.notify(com.intellij.openapi.project.Project)" resolve="notify" />
                        <node concept="2OqwBi" id="6ACuwpUGgx7" role="37wK5m">
                          <node concept="1eOMI4" id="6ACuwpUG7vR" role="2Oq$k0">
                            <node concept="10QFUN" id="6ACuwpUG7vQ" role="1eOMHV">
                              <node concept="37vLTw" id="6ACuwpUG7vP" role="10QFUP">
                                <ref role="3cqZAo" node="6ACuwpUEFPq" resolve="myMpsProject" />
                              </node>
                              <node concept="3uibUv" id="6ACuwpUG7vM" role="10QFUM">
                                <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="6ACuwpUGmKM" role="2OqNvi">
                            <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="4L2t6z8MLIm" role="3clFbw">
                  <node concept="3uibUv" id="4L2t6z8MQKV" role="2ZW6by">
                    <ref role="3uigEE" to="rk9m:4L2t6z8JxPJ" resolve="NotificationMessage" />
                  </node>
                  <node concept="2OqwBi" id="4n7If0BW3Rm" role="2ZW6bz">
                    <node concept="1eOMI4" id="4L2t6z8KRVE" role="2Oq$k0">
                      <node concept="10QFUN" id="4L2t6z8KRVD" role="1eOMHV">
                        <node concept="37vLTw" id="4L2t6z8KRVC" role="10QFUP">
                          <ref role="3cqZAo" node="yMIAu2ekqr" resolve="fdk" />
                        </node>
                        <node concept="3uibUv" id="4L2t6z8KYGS" role="10QFUM">
                          <ref role="3uigEE" to="i9so:3MQtXko2auV" resolve="IFeedback.MESSAGE" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4n7If0BW3Ro" role="2OqNvi">
                      <ref role="37wK5l" to="i9so:4L2t6z8Lamh" resolve="getIMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="6ACuwpUFdo6" role="3clFbw">
              <node concept="2ZW3vV" id="6ACuwpUFqAM" role="3uHU7w">
                <node concept="3uibUv" id="6ACuwpUFY_4" role="2ZW6by">
                  <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                </node>
                <node concept="37vLTw" id="6ACuwpUFjxj" role="2ZW6bz">
                  <ref role="3cqZAo" node="6ACuwpUEFPq" resolve="myMpsProject" />
                </node>
              </node>
              <node concept="2ZW3vV" id="yMIAu2eX7T" role="3uHU7B">
                <node concept="3uibUv" id="yMIAu2f3HM" role="2ZW6by">
                  <ref role="3uigEE" to="i9so:3MQtXko2auV" resolve="IFeedback.MESSAGE" />
                </node>
                <node concept="37vLTw" id="yMIAu2ey9U" role="2ZW6bz">
                  <ref role="3cqZAo" node="yMIAu2ekqr" resolve="fdk" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yMIAu2ekqx" role="3cqZAp">
            <node concept="3nyPlj" id="yMIAu2ekqw" role="3clFbG">
              <ref role="37wK5l" to="jqcx:5oXcJSdWLo$" resolve="reportFeedback" />
              <node concept="37vLTw" id="yMIAu2ekqv" role="37wK5m">
                <ref role="3cqZAo" node="yMIAu2ekqr" resolve="fdk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="yMIAu2ekqu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="1aDdKrsIhp8" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsE2G" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsE2H" role="1PaTwD">
          <property role="3oM_SC" value="IDEA" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2I" role="1PaTwD">
          <property role="3oM_SC" value="App" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2J" role="1PaTwD">
          <property role="3oM_SC" value="Service," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2K" role="1PaTwD">
          <property role="3oM_SC" value="its" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2L" role="1PaTwD">
          <property role="3oM_SC" value="instance" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2M" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2N" role="1PaTwD">
          <property role="3oM_SC" value="registered" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2O" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2P" role="1PaTwD">
          <property role="3oM_SC" value="MakeServiceComponent" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2Q" role="1PaTwD">
          <property role="3oM_SC" value="CC" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2R" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2S" role="1PaTwD">
          <property role="3oM_SC" value="activator" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2T" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2U" role="1PaTwD">
          <property role="3oM_SC" value="[mps-platform]/j.m.ide.platform" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2UA$I15WhPI">
    <property role="TrG5h" value="MakeServiceConfiguration" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="2UA$I15WzsL" role="jymVt">
      <property role="TrG5h" value="myMakeInBackground" />
      <node concept="3Tm6S6" id="2UA$I15WzgJ" role="1B3o_S" />
      <node concept="10P_77" id="2UA$I15Wznd" role="1tU5fm" />
      <node concept="3clFbT" id="2UA$I15WzzT" role="33vP2m" />
    </node>
    <node concept="312cEg" id="19IglfvW4MV" role="jymVt">
      <property role="TrG5h" value="myDisableMakeOnStartup" />
      <node concept="3Tm6S6" id="19IglfvW4ty" role="1B3o_S" />
      <node concept="10P_77" id="19IglfvW4Ku" role="1tU5fm" />
      <node concept="3clFbT" id="19IglfvW544" role="33vP2m" />
    </node>
    <node concept="2YIFZL" id="2UA$I15WtCC" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="2UA$I15WtBw" role="3clF47">
        <node concept="3SKdUt" id="2UA$I15Wx62" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXos9q" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXos9r" role="1PaTwD">
              <property role="3oM_SC" value="implementation" />
            </node>
            <node concept="3oM_SD" id="ATZLwXos9s" role="1PaTwD">
              <property role="3oM_SC" value="inspired" />
            </node>
            <node concept="3oM_SD" id="ATZLwXos9t" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="ATZLwXos9u" role="1PaTwD">
              <property role="3oM_SC" value="c.i.openapi.vcs.VcsConfiguration" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2UA$I15WuZc" role="3cqZAp">
          <node concept="2YIFZM" id="2UA$I15Wv2R" role="3cqZAk">
            <ref role="1Pybhc" to="1m72:~ServiceManager" resolve="ServiceManager" />
            <ref role="37wK5l" to="1m72:~ServiceManager.getService(com.intellij.openapi.project.Project,java.lang.Class)" resolve="getService" />
            <node concept="37vLTw" id="2UA$I15Wv54" role="37wK5m">
              <ref role="3cqZAo" node="2UA$I15WuW4" resolve="project" />
            </node>
            <node concept="3VsKOn" id="2UA$I15Wvaf" role="37wK5m">
              <ref role="3VsUkX" node="2UA$I15WhPI" resolve="MakeServiceConfiguration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2UA$I15WtEh" role="3clF45">
        <ref role="3uigEE" node="2UA$I15WhPI" resolve="MakeServiceConfiguration" />
      </node>
      <node concept="3Tm1VV" id="2UA$I15WtBv" role="1B3o_S" />
      <node concept="37vLTG" id="2UA$I15WuW4" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2UA$I15WuW3" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UA$I15Wvjd" role="jymVt" />
    <node concept="3clFb_" id="2UA$I15Wvlx" role="jymVt">
      <property role="TrG5h" value="getState" />
      <node concept="3Tm1VV" id="2UA$I15Wvly" role="1B3o_S" />
      <node concept="2AHcQZ" id="2UA$I15Wvl$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2UA$I15WvlA" role="3clF45">
        <ref role="3uigEE" node="2UA$I15WhPI" resolve="MakeServiceConfiguration" />
      </node>
      <node concept="3clFbS" id="2UA$I15WvlB" role="3clF47">
        <node concept="3cpWs6" id="2UA$I15Wvu8" role="3cqZAp">
          <node concept="Xjq3P" id="2UA$I15Wv$w" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2UA$I15WvlC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2UA$I15WvlD" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="3Tm1VV" id="2UA$I15WvlE" role="1B3o_S" />
      <node concept="3cqZAl" id="2UA$I15WvlG" role="3clF45" />
      <node concept="37vLTG" id="2UA$I15WvlH" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <node concept="3uibUv" id="2UA$I15WvlK" role="1tU5fm">
          <ref role="3uigEE" node="2UA$I15WhPI" resolve="MakeServiceConfiguration" />
        </node>
        <node concept="2AHcQZ" id="2UA$I15WvlJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2UA$I15WvlL" role="3clF47">
        <node concept="3clFbF" id="2UA$I15WzHb" role="3cqZAp">
          <node concept="37vLTI" id="2UA$I15WzYW" role="3clFbG">
            <node concept="2OqwBi" id="2UA$I15W$th" role="37vLTx">
              <node concept="37vLTw" id="2UA$I15W$cd" role="2Oq$k0">
                <ref role="3cqZAo" node="2UA$I15WvlH" resolve="configuration" />
              </node>
              <node concept="2OwXpG" id="2UA$I15W$Lw" role="2OqNvi">
                <ref role="2Oxat5" node="2UA$I15WzsL" resolve="myMakeInBackground" />
              </node>
            </node>
            <node concept="37vLTw" id="2UA$I15WzHa" role="37vLTJ">
              <ref role="3cqZAo" node="2UA$I15WzsL" resolve="myMakeInBackground" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19IglfvX1_v" role="3cqZAp">
          <node concept="37vLTI" id="19IglfvX1_w" role="3clFbG">
            <node concept="2OqwBi" id="19IglfvX1_x" role="37vLTx">
              <node concept="37vLTw" id="19IglfvX1_y" role="2Oq$k0">
                <ref role="3cqZAo" node="2UA$I15WvlH" resolve="configuration" />
              </node>
              <node concept="2OwXpG" id="19IglfvX1_z" role="2OqNvi">
                <ref role="2Oxat5" node="19IglfvW4MV" resolve="myDisableMakeOnStartup" />
              </node>
            </node>
            <node concept="37vLTw" id="19IglfvX1_$" role="37vLTJ">
              <ref role="3cqZAo" node="19IglfvW4MV" resolve="myDisableMakeOnStartup" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2UA$I15WvlM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2UA$I15W_4w" role="jymVt" />
    <node concept="3clFb_" id="2UA$I15W_rA" role="jymVt">
      <property role="TrG5h" value="isMakeInBackground" />
      <node concept="3clFbS" id="2UA$I15W_rD" role="3clF47">
        <node concept="3cpWs6" id="2UA$I15W_$x" role="3cqZAp">
          <node concept="37vLTw" id="2UA$I15W_Hq" role="3cqZAk">
            <ref role="3cqZAo" node="2UA$I15WzsL" resolve="myMakeInBackground" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2UA$I15W_cX" role="1B3o_S" />
      <node concept="10P_77" id="2UA$I15W_kO" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2UA$I15W_Z7" role="jymVt">
      <property role="TrG5h" value="setMakeInBackground" />
      <node concept="3cqZAl" id="2UA$I15W_Z9" role="3clF45" />
      <node concept="3Tm1VV" id="2UA$I15W_Za" role="1B3o_S" />
      <node concept="3clFbS" id="2UA$I15W_Zb" role="3clF47">
        <node concept="3clFbF" id="2UA$I15WB06" role="3cqZAp">
          <node concept="37vLTI" id="2UA$I15WBqY" role="3clFbG">
            <node concept="37vLTw" id="2UA$I15WBt0" role="37vLTx">
              <ref role="3cqZAo" node="2UA$I15WAuC" resolve="value" />
            </node>
            <node concept="37vLTw" id="2UA$I15WB03" role="37vLTJ">
              <ref role="3cqZAo" node="2UA$I15WzsL" resolve="myMakeInBackground" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2UA$I15WAuC" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="2UA$I15WAuB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2UA$I15WBMh" role="jymVt" />
    <node concept="3clFb_" id="19IglfvX2ED" role="jymVt">
      <property role="TrG5h" value="isDisableMakeOnStartup" />
      <node concept="3clFbS" id="19IglfvX2EE" role="3clF47">
        <node concept="3cpWs6" id="19IglfvX2EF" role="3cqZAp">
          <node concept="37vLTw" id="19IglfvX2EG" role="3cqZAk">
            <ref role="3cqZAo" node="19IglfvW4MV" resolve="myDisableMakeOnStartup" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="19IglfvX2EH" role="1B3o_S" />
      <node concept="10P_77" id="19IglfvX2EI" role="3clF45" />
    </node>
    <node concept="3clFb_" id="19IglfvX2EJ" role="jymVt">
      <property role="TrG5h" value="setDisableMakeOnStartup" />
      <node concept="3cqZAl" id="19IglfvX2EK" role="3clF45" />
      <node concept="3Tm1VV" id="19IglfvX2EL" role="1B3o_S" />
      <node concept="3clFbS" id="19IglfvX2EM" role="3clF47">
        <node concept="3clFbF" id="19IglfvX2EN" role="3cqZAp">
          <node concept="37vLTI" id="19IglfvX2EO" role="3clFbG">
            <node concept="37vLTw" id="19IglfvX2EP" role="37vLTx">
              <ref role="3cqZAo" node="19IglfvX2ER" resolve="value" />
            </node>
            <node concept="37vLTw" id="19IglfvX2EQ" role="37vLTJ">
              <ref role="3cqZAo" node="19IglfvW4MV" resolve="myDisableMakeOnStartup" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="19IglfvX2ER" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="19IglfvX2ES" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="19IglfvX2ET" role="jymVt" />
    <node concept="3clFb_" id="2UA$I15WCcN" role="jymVt">
      <property role="TrG5h" value="getMakeInBackgroundOption" />
      <node concept="3clFbS" id="2UA$I15WCcQ" role="3clF47">
        <node concept="3cpWs6" id="2UA$I15WCn7" role="3cqZAp">
          <node concept="2ShNRf" id="2UA$I15WCBt" role="3cqZAk">
            <node concept="YeOm9" id="2UA$I15X9lm" role="2ShVmc">
              <node concept="1Y3b0j" id="2UA$I15X9lp" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="xygl:~PerformInBackgroundOption" resolve="PerformInBackgroundOption" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="2UA$I15X9lq" role="1B3o_S" />
                <node concept="3clFb_" id="2UA$I15X9lv" role="jymVt">
                  <property role="TrG5h" value="shouldStartInBackground" />
                  <node concept="3Tm1VV" id="2UA$I15X9lw" role="1B3o_S" />
                  <node concept="10P_77" id="2UA$I15X9ly" role="3clF45" />
                  <node concept="3clFbS" id="2UA$I15X9lz" role="3clF47">
                    <node concept="3cpWs6" id="2UA$I15Xa1r" role="3cqZAp">
                      <node concept="1rXfSq" id="2UA$I15Xa$b" role="3cqZAk">
                        <ref role="37wK5l" node="2UA$I15W_rA" resolve="isMakeInBackground" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="2UA$I15X9l_" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="2UA$I15X9_C" role="jymVt" />
                <node concept="3clFb_" id="2UA$I15XaXF" role="jymVt">
                  <property role="TrG5h" value="processSentToBackground" />
                  <node concept="3Tm1VV" id="2UA$I15XaXH" role="1B3o_S" />
                  <node concept="3cqZAl" id="2UA$I15XaXJ" role="3clF45" />
                  <node concept="3clFbS" id="2UA$I15XaXL" role="3clF47">
                    <node concept="3clFbF" id="2UA$I15Xbnl" role="3cqZAp">
                      <node concept="1rXfSq" id="2UA$I15Xbni" role="3clFbG">
                        <ref role="37wK5l" node="2UA$I15W_Z7" resolve="setMakeInBackground" />
                        <node concept="3clFbT" id="2UA$I15Xb_y" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="2UA$I15XaXM" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2UA$I15WBVW" role="1B3o_S" />
      <node concept="3uibUv" id="2UA$I15WC5a" role="3clF45">
        <ref role="3uigEE" to="xygl:~PerformInBackgroundOption" resolve="PerformInBackgroundOption" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2UA$I15WhPJ" role="1B3o_S" />
    <node concept="3uibUv" id="2UA$I15Wt$u" role="EKbjA">
      <ref role="3uigEE" to="1m72:~PersistentStateComponent" resolve="PersistentStateComponent" />
      <node concept="3uibUv" id="2UA$I15Wt_i" role="11_B2D">
        <ref role="3uigEE" node="2UA$I15WhPI" resolve="MakeServiceConfiguration" />
      </node>
    </node>
    <node concept="2AHcQZ" id="2UA$I15WvWy" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~State" resolve="State" />
      <node concept="2B6LJw" id="2UA$I15Ww7I" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.name()" resolve="name" />
        <node concept="Xl_RD" id="2UA$I15WxNP" role="2B70Vg">
          <property role="Xl_RC" value="mpsMakeService" />
        </node>
      </node>
      <node concept="2B6LJw" id="16awQSIaojf" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.storages()" resolve="storages" />
        <node concept="2AHcQZ" id="16awQSIaAIh" role="2B70Vg">
          <ref role="2AI5Lk" to="1m72:~Storage" resolve="Storage" />
          <node concept="2B6LJw" id="16awQSIaAVm" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.value()" resolve="value" />
            <node concept="10M0yZ" id="16awQSIaCpp" role="2B70Vg">
              <ref role="3cqZAo" to="1m72:~StoragePathMacros.WORKSPACE_FILE" resolve="WORKSPACE_FILE" />
              <ref role="1PxDUh" to="1m72:~StoragePathMacros" resolve="StoragePathMacros" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2B6LJw" id="5Kg_Wlnj4vX" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.reportStatistic()" resolve="reportStatistic" />
        <node concept="3clFbT" id="5Kg_WlnjfwP" role="2B70Vg">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9D0Ba05uWP">
    <property role="TrG5h" value="UIQueryRelayStrategy" />
    <node concept="3clFbW" id="9D0Ba05uYb" role="jymVt">
      <node concept="3cqZAl" id="9D0Ba05uYc" role="3clF45" />
      <node concept="3Tm1VV" id="9D0Ba05uYd" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05uYe" role="3clF47" />
    </node>
    <node concept="3clFb_" id="9D0Ba05uWQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="relayQuery" />
      <node concept="37vLTG" id="9D0Ba05uWR" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="3uibUv" id="9D0Ba05uWS" role="1tU5fm">
          <ref role="3uigEE" to="i9so:7n5UAVXWrRu" resolve="IQuery" />
          <node concept="16syzq" id="9D0Ba05uWT" role="11_B2D">
            <ref role="16sUi3" node="9D0Ba05uY7" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9D0Ba05uWU" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="1tRhlzSE6_T" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm1VV" id="9D0Ba05uWW" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05uWX" role="3clF47">
        <node concept="3cpWs8" id="9D0Ba05uWY" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05uWZ" role="3cpWs9">
            <property role="TrG5h" value="optList" />
            <node concept="_YKpA" id="9D0Ba05uX0" role="1tU5fm">
              <node concept="16syzq" id="9D0Ba05uX1" role="_ZDj9">
                <ref role="16sUi3" node="9D0Ba05uY7" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="9D0Ba05uX2" role="33vP2m">
              <node concept="2OqwBi" id="9D0Ba05uX3" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgkWnn" role="2Oq$k0">
                  <ref role="3cqZAo" node="9D0Ba05uWR" resolve="query" />
                </node>
                <node concept="liA8E" id="9D0Ba05uX5" role="2OqNvi">
                  <ref role="37wK5l" to="i9so:2dB$GwFHaH6" resolve="options" />
                </node>
              </node>
              <node concept="ANE8D" id="9D0Ba05uX6" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9D0Ba05uX7" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05uX8" role="3cpWs9">
            <property role="TrG5h" value="options" />
            <node concept="10Q1$e" id="9D0Ba05uX9" role="1tU5fm">
              <node concept="17QB3L" id="9D0Ba05uXa" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="9D0Ba05uXb" role="33vP2m">
              <node concept="2OqwBi" id="9D0Ba05uXc" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTum3" role="2Oq$k0">
                  <ref role="3cqZAo" node="9D0Ba05uWZ" resolve="optList" />
                </node>
                <node concept="3$u5V9" id="9D0Ba05uXe" role="2OqNvi">
                  <node concept="1bVj0M" id="9D0Ba05uXf" role="23t8la">
                    <node concept="3clFbS" id="9D0Ba05uXg" role="1bW5cS">
                      <node concept="3clFbF" id="9D0Ba05uXh" role="3cqZAp">
                        <node concept="2OqwBi" id="9D0Ba05uXi" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgm_tv" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Y52" resolve="o" />
                          </node>
                          <node concept="liA8E" id="9D0Ba05uXk" role="2OqNvi">
                            <ref role="37wK5l" to="i9so:2dB$GwFH8Z9" resolve="getText" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Y52" role="1bW2Oz">
                      <property role="TrG5h" value="o" />
                      <node concept="2jxLKc" id="5W7E4fV0Y53" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_kTaI" id="9D0Ba05uXn" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9D0Ba05uXo" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05uXp" role="3cpWs9">
            <property role="TrG5h" value="defopt" />
            <node concept="10Oyi0" id="9D0Ba05uXq" role="1tU5fm" />
            <node concept="2OqwBi" id="9D0Ba05uXr" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagT_E_" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05uWZ" resolve="optList" />
              </node>
              <node concept="2WmjW8" id="9D0Ba05uXt" role="2OqNvi">
                <node concept="2OqwBi" id="9D0Ba05uXu" role="25WWJ7">
                  <node concept="37vLTw" id="2BHiRxgmykM" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05uWR" resolve="query" />
                  </node>
                  <node concept="liA8E" id="9D0Ba05uXw" role="2OqNvi">
                    <ref role="37wK5l" to="i9so:Uc2MpYY_Jc" resolve="defaultOption" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9D0Ba05uXx" role="3cqZAp">
          <node concept="3cpWsn" id="9D0Ba05uXy" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="10Oyi0" id="9D0Ba05uXz" role="1tU5fm" />
            <node concept="3cmrfG" id="9D0Ba05uX$" role="33vP2m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05uX_" role="3cqZAp">
          <node concept="2YIFZM" id="9D0Ba05uXA" role="3clFbG">
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
            <node concept="1bVj0M" id="9D0Ba05uXB" role="37wK5m">
              <node concept="3clFbS" id="9D0Ba05uXC" role="1bW5cS">
                <node concept="3clFbF" id="9D0Ba05uXD" role="3cqZAp">
                  <node concept="37vLTI" id="9D0Ba05uXE" role="3clFbG">
                    <node concept="2YIFZM" id="9D0Ba05uXF" role="37vLTx">
                      <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                      <ref role="37wK5l" to="jkm4:~Messages.showDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,java.lang.String[],int,javax.swing.Icon)" resolve="showDialog" />
                      <node concept="2YIFZM" id="9D0Ba05uXG" role="37wK5m">
                        <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                        <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                        <node concept="37vLTw" id="2BHiRxghiBb" role="37wK5m">
                          <ref role="3cqZAo" node="9D0Ba05uWU" resolve="mpsProject" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="9D0Ba05uXK" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxgmIK3" role="2Oq$k0">
                          <ref role="3cqZAo" node="9D0Ba05uWR" resolve="query" />
                        </node>
                        <node concept="liA8E" id="9D0Ba05uXM" role="2OqNvi">
                          <ref role="37wK5l" to="i9so:2dB$GwFHaHd" resolve="getText" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="9D0Ba05uXN" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxglRL7" role="2Oq$k0">
                          <ref role="3cqZAo" node="9D0Ba05uWR" resolve="query" />
                        </node>
                        <node concept="liA8E" id="9D0Ba05uXP" role="2OqNvi">
                          <ref role="37wK5l" to="i9so:3rIkejMXQuJ" resolve="getTitle" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTyhT" role="37wK5m">
                        <ref role="3cqZAo" node="9D0Ba05uX8" resolve="options" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTv5B" role="37wK5m">
                        <ref role="3cqZAo" node="9D0Ba05uXp" resolve="defopt" />
                      </node>
                      <node concept="2YIFZM" id="9D0Ba05uXS" role="37wK5m">
                        <ref role="37wK5l" to="jkm4:~Messages.getQuestionIcon()" resolve="getQuestionIcon" />
                        <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTv2w" role="37vLTJ">
                      <ref role="3cqZAo" node="9D0Ba05uXy" resolve="res" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05uXU" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05uXV" role="3clFbx">
            <node concept="3cpWs6" id="9D0Ba05uXW" role="3cqZAp">
              <node concept="2OqwBi" id="9D0Ba05uXX" role="3cqZAk">
                <node concept="37vLTw" id="2BHiRxghg_X" role="2Oq$k0">
                  <ref role="3cqZAo" node="9D0Ba05uWR" resolve="query" />
                </node>
                <node concept="liA8E" id="9D0Ba05uXZ" role="2OqNvi">
                  <ref role="37wK5l" to="i9so:2QRVCSBR05Y" resolve="voidOption" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="9D0Ba05uY0" role="3clFbw">
            <node concept="3cmrfG" id="9D0Ba05uY1" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="3GM_nagT_Yr" role="3uHU7B">
              <ref role="3cqZAo" node="9D0Ba05uXy" resolve="res" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9D0Ba05uY3" role="3cqZAp">
          <node concept="1y4W85" id="9D0Ba05uY4" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTxhA" role="1y58nS">
              <ref role="3cqZAo" node="9D0Ba05uXy" resolve="res" />
            </node>
            <node concept="37vLTw" id="3GM_nagTyOr" role="1y566C">
              <ref role="3cqZAo" node="9D0Ba05uWZ" resolve="optList" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="9D0Ba05uY7" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="9D0Ba05uY8" role="3ztrMU">
          <ref role="3uigEE" to="i9so:2dB$GwFH8Z7" resolve="IOption" />
        </node>
      </node>
      <node concept="16syzq" id="9D0Ba05uY9" role="3clF45">
        <ref role="16sUi3" node="9D0Ba05uY7" resolve="T" />
      </node>
    </node>
    <node concept="3HP615" id="9D0Ba05uYf" role="jymVt">
      <property role="TrG5h" value="DialogListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="9D0Ba05uYk" role="1B3o_S" />
      <node concept="3clFb_" id="9D0Ba05uYg" role="jymVt">
        <property role="TrG5h" value="beforeDialogShown" />
        <node concept="3cqZAl" id="9D0Ba05uYh" role="3clF45" />
        <node concept="3Tm1VV" id="9D0Ba05uYi" role="1B3o_S" />
        <node concept="3clFbS" id="9D0Ba05uYj" role="3clF47" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9D0Ba05uFz">
    <property role="TrG5h" value="WorkbenchMakeTask" />
    <node concept="312cEg" id="9D0Ba05uFi" role="jymVt">
      <property role="TrG5h" value="myState" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="9D0Ba05uFj" role="1B3o_S" />
      <node concept="2ShNRf" id="9D0Ba05uFk" role="33vP2m">
        <node concept="1pGfFk" id="9D0Ba05uFl" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;(java.lang.Object)" resolve="AtomicReference" />
          <node concept="3uibUv" id="9D0Ba05uFm" role="1pMfVU">
            <ref role="3uigEE" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
          </node>
          <node concept="Rm8GO" id="9D0Ba05uFn" role="37wK5m">
            <ref role="Rm8GQ" node="9D0Ba05uJR" resolve="NOT_STARTED" />
            <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="9D0Ba05uFo" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
        <node concept="3uibUv" id="9D0Ba05uFp" role="11_B2D">
          <ref role="3uigEE" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9D0Ba05uFc" role="jymVt">
      <property role="TrG5h" value="myLatch" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="9D0Ba05uFd" role="1B3o_S" />
      <node concept="3uibUv" id="9D0Ba05uFe" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~CountDownLatch" resolve="CountDownLatch" />
      </node>
      <node concept="2ShNRf" id="9D0Ba05uFf" role="33vP2m">
        <node concept="1pGfFk" id="9D0Ba05uFg" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~CountDownLatch.&lt;init&gt;(int)" resolve="CountDownLatch" />
          <node concept="3cmrfG" id="9D0Ba05uFh" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2Eb$RRpxd_u" role="jymVt" />
    <node concept="312cEg" id="9D0Ba05uFt" role="jymVt">
      <property role="TrG5h" value="isCancelled" />
      <node concept="3Tm6S6" id="9D0Ba05uFu" role="1B3o_S" />
      <node concept="10P_77" id="9D0Ba05uFv" role="1tU5fm" />
      <node concept="3clFbT" id="9D0Ba05uFw" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Eb$RRpvxrZ" role="jymVt" />
    <node concept="3uibUv" id="9D0Ba05uG1" role="1zkMxy">
      <ref role="3uigEE" to="4rvk:6eQ0BhLYtbb" resolve="CoreMakeTask" />
    </node>
    <node concept="3clFbW" id="41innpAnahF" role="jymVt">
      <node concept="37vLTG" id="41innpAnbYd" role="3clF46">
        <property role="TrG5h" value="makeSeq" />
        <node concept="3uibUv" id="41innpAndh4" role="1tU5fm">
          <ref role="3uigEE" to="j07i:41innpAgfFQ" resolve="MakeSequence" />
        </node>
      </node>
      <node concept="37vLTG" id="41innpAnefH" role="3clF46">
        <property role="TrG5h" value="ctl" />
        <node concept="3uibUv" id="41innpAnefI" role="1tU5fm">
          <ref role="3uigEE" to="i9so:4231y0oKQyu" resolve="IScriptController" />
        </node>
      </node>
      <node concept="37vLTG" id="41innpAndpW" role="3clF46">
        <property role="TrG5h" value="mh" />
        <node concept="3uibUv" id="41innpAnf5q" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
        </node>
      </node>
      <node concept="3cqZAl" id="41innpAnahG" role="3clF45" />
      <node concept="3clFbS" id="41innpAnahI" role="3clF47">
        <node concept="XkiVB" id="41innpAnff3" role="3cqZAp">
          <ref role="37wK5l" to="4rvk:4uO1VCfEygl" resolve="CoreMakeTask" />
          <node concept="37vLTw" id="41innpAnfXw" role="37wK5m">
            <ref role="3cqZAo" node="41innpAnbYd" resolve="makeSeq" />
          </node>
          <node concept="37vLTw" id="41innpAnfZI" role="37wK5m">
            <ref role="3cqZAo" node="41innpAnefH" resolve="ctl" />
          </node>
          <node concept="37vLTw" id="41innpAng2e" role="37wK5m">
            <ref role="3cqZAo" node="41innpAndpW" resolve="mh" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="41innpAnahJ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2Eb$RRpv8bO" role="jymVt" />
    <node concept="3clFb_" id="2Eb$RRpvbXY" role="jymVt">
      <property role="TrG5h" value="isCancelled" />
      <node concept="3clFbS" id="2Eb$RRpvbY1" role="3clF47">
        <node concept="3cpWs6" id="2Eb$RRpvebC" role="3cqZAp">
          <node concept="3clFbC" id="2Eb$RRpvfwZ" role="3cqZAk">
            <node concept="Rm8GO" id="2Eb$RRpvfx0" role="3uHU7w">
              <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
              <ref role="Rm8GQ" node="9D0Ba05uJU" resolve="CANCELLED" />
            </node>
            <node concept="2OqwBi" id="2Eb$RRpvfx1" role="3uHU7B">
              <node concept="37vLTw" id="2Eb$RRpvfx2" role="2Oq$k0">
                <ref role="3cqZAo" node="9D0Ba05uFi" resolve="myState" />
              </node>
              <node concept="liA8E" id="2Eb$RRpvfx3" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2Eb$RRpvaaQ" role="1B3o_S" />
      <node concept="10P_77" id="2Eb$RRpvbMA" role="3clF45" />
      <node concept="2AHcQZ" id="2Eb$RRpxTM0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Eb$RRpx1Mr" role="jymVt" />
    <node concept="3clFb_" id="2Eb$RRpwXRE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isDone" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Eb$RRpwXRF" role="1B3o_S" />
      <node concept="10P_77" id="2Eb$RRpwXRG" role="3clF45" />
      <node concept="3clFbS" id="2Eb$RRpwXRH" role="3clF47">
        <node concept="3clFbF" id="2Eb$RRpwXRI" role="3cqZAp">
          <node concept="1Wc70l" id="2Eb$RRpwXRJ" role="3clFbG">
            <node concept="3y3z36" id="2Eb$RRpwXRK" role="3uHU7w">
              <node concept="Rm8GO" id="2Eb$RRpwXRL" role="3uHU7w">
                <ref role="Rm8GQ" node="9D0Ba05uJS" resolve="RUNNING" />
                <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
              </node>
              <node concept="2OqwBi" id="2Eb$RRpwXRM" role="3uHU7B">
                <node concept="37vLTw" id="2Eb$RRpwXRN" role="2Oq$k0">
                  <ref role="3cqZAo" node="9D0Ba05uFi" resolve="myState" />
                </node>
                <node concept="liA8E" id="2Eb$RRpwXRO" role="2OqNvi">
                  <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2Eb$RRpwXRP" role="3uHU7B">
              <node concept="2OqwBi" id="2Eb$RRpwXRQ" role="3uHU7B">
                <node concept="37vLTw" id="2Eb$RRpwXRR" role="2Oq$k0">
                  <ref role="3cqZAo" node="9D0Ba05uFi" resolve="myState" />
                </node>
                <node concept="liA8E" id="2Eb$RRpwXRS" role="2OqNvi">
                  <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                </node>
              </node>
              <node concept="Rm8GO" id="2Eb$RRpwXRT" role="3uHU7w">
                <ref role="Rm8GQ" node="9D0Ba05uJR" resolve="NOT_STARTED" />
                <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Eb$RRpxVUZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Eb$RRpxXqO" role="jymVt" />
    <node concept="3clFb_" id="2Eb$RRpxXRP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="cancel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Eb$RRpxXRQ" role="1B3o_S" />
      <node concept="10P_77" id="2Eb$RRpxXRR" role="3clF45" />
      <node concept="37vLTG" id="2Eb$RRpxXRS" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10P_77" id="2Eb$RRpxXRT" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2Eb$RRpxXRU" role="3clF47">
        <node concept="3clFbJ" id="2Eb$RRpxXRV" role="3cqZAp">
          <node concept="3clFbS" id="2Eb$RRpxXRW" role="3clFbx">
            <node concept="3cpWs6" id="2Eb$RRpxXRX" role="3cqZAp">
              <node concept="3clFbT" id="2Eb$RRpxXRY" role="3cqZAk" />
            </node>
          </node>
          <node concept="1rXfSq" id="2Eb$RRpxXRZ" role="3clFbw">
            <ref role="37wK5l" node="2Eb$RRpwXRE" resolve="isDone" />
          </node>
        </node>
        <node concept="3clFbF" id="2Eb$RRpvJbg" role="3cqZAp">
          <node concept="37vLTI" id="2Eb$RRpvKNn" role="3clFbG">
            <node concept="3clFbT" id="2Eb$RRpvMDI" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="2Eb$RRpvJbf" role="37vLTJ">
              <ref role="3cqZAo" node="9D0Ba05uFt" resolve="isCancelled" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Eb$RRpxXS4" role="3cqZAp">
          <node concept="3clFbT" id="2Eb$RRpxXS5" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Eb$RRpxXS6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Eb$RRpxXtj" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05uDs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="9D0Ba05uDt" role="1B3o_S" />
      <node concept="3uibUv" id="9D0Ba05uDu" role="3clF45">
        <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
      </node>
      <node concept="3uibUv" id="9D0Ba05uDv" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
      <node concept="3uibUv" id="9D0Ba05uDw" role="Sfmx6">
        <ref role="3uigEE" to="5zyv:~ExecutionException" resolve="ExecutionException" />
      </node>
      <node concept="3clFbS" id="9D0Ba05uDx" role="3clF47">
        <node concept="3clFbF" id="9D0Ba05uDy" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05uDz" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuIxg" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05uFc" resolve="myLatch" />
            </node>
            <node concept="liA8E" id="9D0Ba05uD_" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~CountDownLatch.await()" resolve="await" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05uDA" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05uDB" role="3clFbx">
            <node concept="YS8fn" id="9D0Ba05uDC" role="3cqZAp">
              <node concept="2ShNRf" id="9D0Ba05uDD" role="YScLw">
                <node concept="1pGfFk" id="9D0Ba05uDE" role="2ShVmc">
                  <ref role="37wK5l" to="5zyv:~CancellationException.&lt;init&gt;()" resolve="CancellationException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="2Eb$RRpvttD" role="3clFbw">
            <ref role="37wK5l" node="2Eb$RRpvbXY" resolve="isCancelled" />
          </node>
        </node>
        <node concept="3cpWs6" id="9D0Ba05uDK" role="3cqZAp">
          <node concept="1rXfSq" id="2Eb$RRpykCl" role="3cqZAk">
            <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S1Af" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4bOkk0MKJuh" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05uDO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="9D0Ba05uDP" role="1B3o_S" />
      <node concept="3uibUv" id="9D0Ba05uDQ" role="3clF45">
        <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
      </node>
      <node concept="37vLTG" id="9D0Ba05uDR" role="3clF46">
        <property role="TrG5h" value="timeout" />
        <node concept="3cpWsb" id="9D0Ba05uDS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="9D0Ba05uDT" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="3uibUv" id="9D0Ba05uDU" role="1tU5fm">
          <ref role="3uigEE" to="5zyv:~TimeUnit" resolve="TimeUnit" />
        </node>
      </node>
      <node concept="3uibUv" id="9D0Ba05uDV" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
      </node>
      <node concept="3uibUv" id="9D0Ba05uDW" role="Sfmx6">
        <ref role="3uigEE" to="5zyv:~ExecutionException" resolve="ExecutionException" />
      </node>
      <node concept="3uibUv" id="9D0Ba05uDX" role="Sfmx6">
        <ref role="3uigEE" to="5zyv:~TimeoutException" resolve="TimeoutException" />
      </node>
      <node concept="3clFbS" id="9D0Ba05uDY" role="3clF47">
        <node concept="3clFbF" id="9D0Ba05uDZ" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05uE0" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuF8V" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05uFc" resolve="myLatch" />
            </node>
            <node concept="liA8E" id="9D0Ba05uE2" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~CountDownLatch.await(long,java.util.concurrent.TimeUnit)" resolve="await" />
              <node concept="37vLTw" id="2BHiRxglI85" role="37wK5m">
                <ref role="3cqZAo" node="9D0Ba05uDR" resolve="timeout" />
              </node>
              <node concept="37vLTw" id="2BHiRxglpNG" role="37wK5m">
                <ref role="3cqZAo" node="9D0Ba05uDT" resolve="unit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9D0Ba05uE5" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05uE6" role="3clFbx">
            <node concept="YS8fn" id="9D0Ba05uE7" role="3cqZAp">
              <node concept="2ShNRf" id="9D0Ba05uE8" role="YScLw">
                <node concept="1pGfFk" id="9D0Ba05uE9" role="2ShVmc">
                  <ref role="37wK5l" to="5zyv:~CancellationException.&lt;init&gt;()" resolve="CancellationException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="2Eb$RRpvqh9" role="3clFbw">
            <ref role="37wK5l" node="2Eb$RRpvbXY" resolve="isCancelled" />
          </node>
        </node>
        <node concept="3cpWs6" id="9D0Ba05uEf" role="3cqZAp">
          <node concept="1rXfSq" id="2Eb$RRpynmI" role="3cqZAk">
            <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S1A8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Eb$RRpyf7o" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05uG2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reconcile" />
      <node concept="3cqZAl" id="9D0Ba05uG3" role="3clF45" />
      <node concept="3Tm6S6" id="2l43ouTJj5t" role="1B3o_S" />
      <node concept="3clFbS" id="9D0Ba05uG5" role="3clF47">
        <node concept="3clFbF" id="9D0Ba05uG6" role="3cqZAp">
          <node concept="2OqwBi" id="9D0Ba05uG7" role="3clFbG">
            <node concept="37vLTw" id="2Eb$RRpw5po" role="2Oq$k0">
              <ref role="3cqZAo" node="9D0Ba05uFi" resolve="myState" />
            </node>
            <node concept="liA8E" id="9D0Ba05uGb" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
              <node concept="Rm8GO" id="9D0Ba05uGc" role="37wK5m">
                <ref role="Rm8GQ" node="9D0Ba05uJT" resolve="DONE" />
                <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="9D0Ba05uGd" role="3cqZAp">
          <node concept="3clFbS" id="9D0Ba05uGe" role="1zxBo7">
            <node concept="3clFbJ" id="9D0Ba05uGf" role="3cqZAp">
              <node concept="3clFbS" id="9D0Ba05uGg" role="3clFbx">
                <node concept="3clFbF" id="9D0Ba05uGh" role="3cqZAp">
                  <node concept="2OqwBi" id="9D0Ba05uGi" role="3clFbG">
                    <node concept="37vLTw" id="2Eb$RRpw2I$" role="2Oq$k0">
                      <ref role="3cqZAo" node="9D0Ba05uFi" resolve="myState" />
                    </node>
                    <node concept="liA8E" id="9D0Ba05uGm" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                      <node concept="Rm8GO" id="9D0Ba05uGn" role="37wK5m">
                        <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
                        <ref role="Rm8GQ" node="9D0Ba05uJU" resolve="CANCELLED" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="9D0Ba05uGo" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxeuTvQ" role="3uHU7B">
                  <ref role="3cqZAo" node="9D0Ba05uFt" resolve="isCancelled" />
                </node>
                <node concept="3clFbC" id="9D0Ba05uGq" role="3uHU7w">
                  <node concept="10Nm6u" id="9D0Ba05uGr" role="3uHU7w" />
                  <node concept="1rXfSq" id="2Eb$RRpvV$M" role="3uHU7B">
                    <ref role="37wK5l" to="4rvk:6eQ0BhLYKvv" resolve="getResult" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="xvs04dI$UH" role="1zxBo6">
            <node concept="3clFbS" id="9D0Ba05uGx" role="1wplMD">
              <node concept="3clFbF" id="9D0Ba05uGy" role="3cqZAp">
                <node concept="2OqwBi" id="9D0Ba05uGz" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuoUM" role="2Oq$k0">
                    <ref role="3cqZAo" node="9D0Ba05uFc" resolve="myLatch" />
                  </node>
                  <node concept="liA8E" id="9D0Ba05uG_" role="2OqNvi">
                    <ref role="37wK5l" to="5zyv:~CountDownLatch.countDown()" resolve="countDown" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="9D0Ba05uGA" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyzeyg" role="3clFbG">
                  <ref role="37wK5l" node="2Eb$RRpxDpg" resolve="done" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DhoVFdfaVp" role="jymVt" />
    <node concept="3clFb_" id="9D0Ba05uGD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doRun" />
      <node concept="3Tmbuc" id="9D0Ba05uGE" role="1B3o_S" />
      <node concept="3cqZAl" id="9D0Ba05uGF" role="3clF45" />
      <node concept="37vLTG" id="9D0Ba05uGG" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="9D0Ba05uGH" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3clFbS" id="9D0Ba05uGI" role="3clF47">
        <node concept="3J1_TO" id="2l43ouTIRxM" role="3cqZAp">
          <node concept="3clFbS" id="2l43ouTIRxO" role="1zxBo7">
            <node concept="3clFbJ" id="9D0Ba05uBh" role="3cqZAp">
              <node concept="3clFbS" id="9D0Ba05uBi" role="3clFbx">
                <node concept="3clFbF" id="9D0Ba05uGJ" role="3cqZAp">
                  <node concept="3nyPlj" id="9D0Ba05uGK" role="3clFbG">
                    <ref role="37wK5l" to="4rvk:1Z_kCIGSOoj" resolve="doRun" />
                    <node concept="37vLTw" id="2BHiRxgm9Xa" role="37wK5m">
                      <ref role="3cqZAo" node="9D0Ba05uGG" resolve="monitor" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="9D0Ba05uGM" role="3cqZAp">
                  <node concept="2OqwBi" id="9D0Ba05uGN" role="3clFbG">
                    <node concept="37vLTw" id="2Eb$RRpvZ8q" role="2Oq$k0">
                      <ref role="3cqZAo" node="9D0Ba05uFi" resolve="myState" />
                    </node>
                    <node concept="liA8E" id="9D0Ba05uGR" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                      <node concept="Rm8GO" id="9D0Ba05uGS" role="37wK5m">
                        <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
                        <ref role="Rm8GQ" node="9D0Ba05uJV" resolve="INDETERMINATE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="9D0Ba05uBA" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxeuvyB" role="2Oq$k0">
                  <ref role="3cqZAo" node="9D0Ba05uFi" resolve="myState" />
                </node>
                <node concept="liA8E" id="9D0Ba05uBC" role="2OqNvi">
                  <ref role="37wK5l" to="i5cy:~AtomicReference.compareAndSet(java.lang.Object,java.lang.Object)" resolve="compareAndSet" />
                  <node concept="Rm8GO" id="9D0Ba05uBD" role="37wK5m">
                    <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
                    <ref role="Rm8GQ" node="9D0Ba05uJR" resolve="NOT_STARTED" />
                  </node>
                  <node concept="Rm8GO" id="9D0Ba05uBE" role="37wK5m">
                    <ref role="1Px2BO" node="9D0Ba05uHf" resolve="WorkbenchMakeTask.TaskState" />
                    <ref role="Rm8GQ" node="9D0Ba05uJS" resolve="RUNNING" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="2l43ouTISdU" role="1zxBo6">
            <node concept="3clFbS" id="2l43ouTISdV" role="1wplMD">
              <node concept="3clFbF" id="2l43ouTISV0" role="3cqZAp">
                <node concept="1rXfSq" id="2l43ouTISUZ" role="3clFbG">
                  <ref role="37wK5l" node="9D0Ba05uG2" resolve="reconcile" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="9D0Ba05uGT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Eb$RRpxHpR" role="jymVt" />
    <node concept="3clFb_" id="2Eb$RRpxDpg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="done" />
      <node concept="3cqZAl" id="2Eb$RRpxDph" role="3clF45" />
      <node concept="3Tmbuc" id="2Eb$RRpxDpi" role="1B3o_S" />
      <node concept="3clFbS" id="2Eb$RRpxDpj" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2Eb$RRpz9i0" role="jymVt" />
    <node concept="2tJIrI" id="2Eb$RRpza9H" role="jymVt" />
    <node concept="Qs71p" id="9D0Ba05uHf" role="jymVt">
      <property role="TrG5h" value="TaskState" />
      <property role="2bfB8j" value="false" />
      <node concept="QsSxf" id="9D0Ba05uJR" role="Qtgdg">
        <property role="TrG5h" value="NOT_STARTED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="9D0Ba05uJS" role="Qtgdg">
        <property role="TrG5h" value="RUNNING" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="9D0Ba05uJT" role="Qtgdg">
        <property role="TrG5h" value="DONE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="9D0Ba05uJU" role="Qtgdg">
        <property role="TrG5h" value="CANCELLED" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="9D0Ba05uJV" role="Qtgdg">
        <property role="TrG5h" value="INDETERMINATE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="3Tm6S6" id="9D0Ba05uJW" role="1B3o_S" />
    </node>
    <node concept="3uibUv" id="2Eb$RRpxO6Q" role="EKbjA">
      <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
      <node concept="3uibUv" id="2Eb$RRpxSnG" role="11_B2D">
        <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
      </node>
    </node>
    <node concept="3UR2Jj" id="2Eb$RRpA7v2" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsE2V" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsE2W" role="1PaTwD">
          <property role="3oM_SC" value="CoreMakeTask" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2X" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2Y" role="1PaTwD">
          <property role="3oM_SC" value="tracks" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE2Z" role="1PaTwD">
          <property role="3oM_SC" value="state" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE30" role="1PaTwD">
          <property role="3oM_SC" value="changes" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE31" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE32" role="1PaTwD">
          <property role="3oM_SC" value="it" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE33" role="1PaTwD">
          <property role="3oM_SC" value="progresses" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE34" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE35" role="1PaTwD">
          <property role="3oM_SC" value="let" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE36" role="1PaTwD">
          <property role="3oM_SC" value="you" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE37" role="1PaTwD">
          <property role="3oM_SC" value="get" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE38" role="1PaTwD">
          <property role="3oM_SC" value="outcome" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE39" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3a" role="1PaTwD">
          <property role="3oM_SC" value="non-blocking," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3b" role="1PaTwD">
          <property role="3oM_SC" value="IFuture" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3c" role="1PaTwD">
          <property role="3oM_SC" value="way" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsE3d" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsE3e" role="1PaTwD">
          <property role="3oM_SC" value="Not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3f" role="1PaTwD">
          <property role="3oM_SC" value="supposed" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3g" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3h" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3i" role="1PaTwD">
          <property role="3oM_SC" value="re-executed," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3j" role="1PaTwD">
          <property role="3oM_SC" value="runs" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsE3k" role="1PaTwD">
          <property role="3oM_SC" value="once." />
        </node>
      </node>
    </node>
  </node>
</model>

