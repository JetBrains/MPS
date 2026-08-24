<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d634c129-ecb4-4acd-bd8c-5f057c144ffa(jetbrains.mps.vcs.changesmanager)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="bfxj" ref="r:5744ed46-c83f-47cd-94ce-f24d1f92d6a1(jetbrains.mps.vcs.diff)" />
    <import index="btf5" ref="r:9b4a89e1-ec38-42c4-b1bd-96ab47ffcb3f(jetbrains.mps.vcs.diff.changes)" />
    <import index="4rb9" ref="r:e4939376-be00-4167-9510-67715eca6425(jetbrains.mps.vcs.platform.util)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="4hrd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.vfs(MPS.Platform/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="hdhb" ref="r:07568eb8-30c0-4bb3-9dcb-50ee4b8de59a(jetbrains.mps.vcs.diff.ui.common)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="1037" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="j86o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.impl(MPS.IDEA/)" />
    <import index="bmv6" ref="r:e9c4e128-4808-4224-a92b-dbeed02eb860(jetbrains.mps.vcs.diff.merge)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="j9co" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.event(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="e8no" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.containers(MPS.IDEA/)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="kip1" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.nodefs(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="bxo2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence.datasource(MPS.OpenAPI/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="nvd4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.repository(MPS.OpenAPI/)" />
    <import index="1038" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.changes(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="7485977462274819189" name="jetbrains.mps.baseLanguage.structure.FormatOperation" flags="ng" index="2cAKMz">
        <child id="7485977462274819664" name="arguments" index="2cAKU6" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ngI" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.structure.DefaultModifier" flags="ng" index="2JFqV2" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="5351203823916832286" name="jetbrains.mps.baseLanguage.structure.ResourceVariable" flags="ng" index="3J1hQo" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
        <child id="5351203823916750334" name="resource" index="3J1_TS" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="2580416627845338977" name="jetbrains.mps.baseLanguage.structure.ImplicitAnnotationInstanceValue" flags="ng" index="1SXeKx" />
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
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences">
      <concept id="7915009415671748557" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReferenceTypeTargetExpression" flags="ng" index="2FaPjH">
        <child id="7915009415671751864" name="type" index="2FaQuo" />
      </concept>
      <concept id="237887375562511215" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReference" flags="ng" index="37Ijox" />
      <concept id="3507059745126391419" name="jetbrains.mps.baseLanguage.methodReferences.structure.IMethodReference" flags="ngI" index="3UZKCU">
        <reference id="237887375562511297" name="method" index="37Ijqf" />
        <child id="962278442658307079" name="target" index="wWaWy" />
      </concept>
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
      <concept id="3506770386464365589" name="jetbrains.mps.lang.smodel.structure.Model_PointerOperation" flags="ng" index="aIX43" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1172667724288" name="jetbrains.mps.baseLanguage.collections.structure.PageOperation" flags="nn" index="8snch">
        <child id="1172667737868" name="fromElement" index="8sqot" />
        <child id="1172667748353" name="toElement" index="8st4g" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="3eE6dTgTyYL">
    <property role="TrG5h" value="SimpleCommandQueue" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="3eE6dTgTyYM" role="1B3o_S" />
    <node concept="312cEg" id="3eE6dTgTzae" role="jymVt">
      <property role="TrG5h" value="myThread" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3eE6dTgTzaf" role="1B3o_S" />
      <node concept="3uibUv" id="3eE6dTgTzLj" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
    </node>
    <node concept="312cEg" id="58EREyZPyGY" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="58EREyZPwOA" role="1B3o_S" />
      <node concept="3uibUv" id="58EREyZPyGy" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="212jB9aS6Nb" role="jymVt">
      <property role="TrG5h" value="myDisposed" />
      <node concept="3Tm6S6" id="212jB9aS6Nc" role="1B3o_S" />
      <node concept="10P_77" id="212jB9aS8P8" role="1tU5fm" />
      <node concept="3clFbT" id="212jB9aS8Ph" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="4xDM31OB1M4" role="jymVt">
      <property role="TrG5h" value="myHadExceptions" />
      <node concept="3Tm6S6" id="4xDM31OB1M5" role="1B3o_S" />
      <node concept="10P_77" id="4xDM31OB1M7" role="1tU5fm" />
      <node concept="3clFbT" id="4xDM31OB1M9" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="3eE6dTgTzLk" role="jymVt">
      <property role="TrG5h" value="myQueue" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4DPIwUs89HV" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="4DPIwUs89HW" role="11_B2D">
          <ref role="3uigEE" node="4DPIwUs72iR" resolve="SimpleCommandQueue.QueueElem" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3eE6dTgTzLl" role="1B3o_S" />
      <node concept="2ShNRf" id="3eE6dTgTGxi" role="33vP2m">
        <node concept="1pGfFk" id="3eE6dTgTRk1" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
          <node concept="3uibUv" id="4DPIwUs8a4l" role="1pMfVU">
            <ref role="3uigEE" node="4DPIwUs72iR" resolve="SimpleCommandQueue.QueueElem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="xzqpZZZBhb" role="jymVt" />
    <node concept="3clFbW" id="3eE6dTgTyYN" role="jymVt">
      <node concept="3cqZAl" id="3eE6dTgTyYO" role="3clF45" />
      <node concept="3Tm1VV" id="3eE6dTgTyYP" role="1B3o_S" />
      <node concept="3clFbS" id="3eE6dTgTyYQ" role="3clF47">
        <node concept="3clFbF" id="3eE6dTgTGw0" role="3cqZAp">
          <node concept="37vLTI" id="3eE6dTgTGw4" role="3clFbG">
            <node concept="2ShNRf" id="3eE6dTgTGw7" role="37vLTx">
              <node concept="1pGfFk" id="3eE6dTgTGw9" role="2ShVmc">
                <ref role="37wK5l" node="3eE6dTgTGvL" resolve="SimpleCommandQueue.MyExecutorThread" />
                <node concept="37vLTw" id="2BHiRxgmv5f" role="37wK5m">
                  <ref role="3cqZAo" node="3eE6dTgTGvY" resolve="threadName" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeup0y" role="37vLTJ">
              <ref role="3cqZAo" node="3eE6dTgTzae" resolve="myThread" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58EREyZP$bc" role="3cqZAp">
          <node concept="37vLTI" id="58EREyZP$ym" role="3clFbG">
            <node concept="37vLTw" id="58EREyZP$$4" role="37vLTx">
              <ref role="3cqZAo" node="58EREyZP$6w" resolve="project" />
            </node>
            <node concept="37vLTw" id="58EREyZP$ba" role="37vLTJ">
              <ref role="3cqZAo" node="58EREyZPyGY" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3eE6dTgTGvY" role="3clF46">
        <property role="TrG5h" value="threadName" />
        <node concept="17QB3L" id="3eE6dTgTGvZ" role="1tU5fm" />
        <node concept="2AHcQZ" id="f7MobKgkFk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="58EREyZP$6w" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="58EREyZP$9I" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="xzqpZZZIVr" role="jymVt" />
    <node concept="3clFb_" id="xzqpZZZRCQ" role="jymVt">
      <property role="TrG5h" value="startThread" />
      <node concept="3cqZAl" id="xzqpZZZRCS" role="3clF45" />
      <node concept="3clFbS" id="xzqpZZZRCU" role="3clF47">
        <node concept="3clFbF" id="3eE6dTgTRlG" role="3cqZAp">
          <node concept="2OqwBi" id="3eE6dTgTRlK" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoZH" role="2Oq$k0">
              <ref role="3cqZAo" node="3eE6dTgTzae" resolve="myThread" />
            </node>
            <node concept="liA8E" id="3eE6dTgTRlO" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="xzqpZZZEp_" role="jymVt" />
    <node concept="3clFb_" id="3eE6dTgUd0h" role="jymVt">
      <property role="TrG5h" value="runTask" />
      <node concept="3cqZAl" id="3eE6dTgUd0i" role="3clF45" />
      <node concept="3Tm1VV" id="3eE6dTgUd0j" role="1B3o_S" />
      <node concept="3clFbS" id="3eE6dTgUd0k" role="3clF47">
        <node concept="3clFbJ" id="3eE6dTgUd0w" role="3cqZAp">
          <node concept="3clFbS" id="3eE6dTgUd0y" role="3clFbx">
            <node concept="3clFbF" id="6n7ZudhhkSD" role="3cqZAp">
              <node concept="2OqwBi" id="6n7ZudhhkSF" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglf65" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eE6dTgUd0m" resolve="task" />
                </node>
                <node concept="liA8E" id="6n7ZudhhkSJ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3eE6dTgUd0z" role="3clFbw">
            <node concept="2YIFZM" id="3eE6dTgUd0$" role="3uHU7B">
              <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuM_4" role="3uHU7w">
              <ref role="3cqZAo" node="3eE6dTgTzae" resolve="myThread" />
            </node>
          </node>
          <node concept="9aQIb" id="3eE6dTgUd0N" role="9aQIa">
            <node concept="3clFbS" id="3eE6dTgUd0O" role="9aQI4">
              <node concept="3clFbF" id="3eE6dTgUd0P" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyzbEv" role="3clFbG">
                  <ref role="37wK5l" node="3eE6dTgTRlP" resolve="addTask" />
                  <node concept="37vLTw" id="2BHiRxgmayK" role="37wK5m">
                    <ref role="3cqZAo" node="3eE6dTgUd0m" resolve="task" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3eE6dTgUd0m" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="3uibUv" id="6n7ZudhhkSs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="2AHcQZ" id="f7MobKgkFi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="xzqpZZZHkX" role="jymVt" />
    <node concept="3clFb_" id="3eE6dTgTRlP" role="jymVt">
      <property role="TrG5h" value="addTask" />
      <node concept="3cqZAl" id="3eE6dTgTRlQ" role="3clF45" />
      <node concept="3Tm1VV" id="3eE6dTgTRlR" role="1B3o_S" />
      <node concept="3clFbS" id="3eE6dTgTRlS" role="3clF47">
        <node concept="3clFbF" id="4DPIwUs8j7Z" role="3cqZAp">
          <node concept="1rXfSq" id="4DPIwUs8j7Y" role="3clFbG">
            <ref role="37wK5l" node="4DPIwUs8cj$" resolve="addTask" />
            <node concept="37vLTw" id="4DPIwUs8jaM" role="37wK5m">
              <ref role="3cqZAo" node="3eE6dTgTRm0" resolve="task" />
            </node>
            <node concept="10Nm6u" id="4DPIwUs8jcW" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3eE6dTgTRm0" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="3uibUv" id="6n7Zudhhpwy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="2AHcQZ" id="f7MobKgkFj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="xzqpZZZFPe" role="jymVt" />
    <node concept="3clFb_" id="4DPIwUs8cj$" role="jymVt">
      <property role="TrG5h" value="addTask" />
      <node concept="3cqZAl" id="4DPIwUs8cj_" role="3clF45" />
      <node concept="3Tm1VV" id="4DPIwUs8cjA" role="1B3o_S" />
      <node concept="3clFbS" id="4DPIwUs8cjB" role="3clF47">
        <node concept="3SKdUt" id="4DPIwUs8jq3" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom4P" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom4Q" role="1PaTwD">
              <property role="3oM_SC" value="removes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom4R" role="1PaTwD">
              <property role="3oM_SC" value="task" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom4S" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom4T" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom4U" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom4V" role="1PaTwD">
              <property role="3oM_SC" value="key" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom4W" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom4X" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="4DPIwUs8cjC" role="3cqZAp">
          <node concept="37vLTw" id="4DPIwUs8cjD" role="1HWFw0">
            <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
          </node>
          <node concept="3clFbS" id="4DPIwUs8cjE" role="1HWHxc">
            <node concept="3cpWs8" id="4DPIwUs8hwY" role="3cqZAp">
              <node concept="3cpWsn" id="4DPIwUs8hwZ" role="3cpWs9">
                <property role="TrG5h" value="elem" />
                <node concept="3uibUv" id="4DPIwUs8hx0" role="1tU5fm">
                  <ref role="3uigEE" node="4DPIwUs72iR" resolve="SimpleCommandQueue.QueueElem" />
                </node>
                <node concept="2ShNRf" id="4DPIwUs8hIY" role="33vP2m">
                  <node concept="1pGfFk" id="4DPIwUs8hI0" role="2ShVmc">
                    <ref role="37wK5l" node="4DPIwUs72V1" resolve="SimpleCommandQueue.QueueElem" />
                    <node concept="37vLTw" id="4DPIwUs8hMo" role="37wK5m">
                      <ref role="3cqZAo" node="4DPIwUs8cjO" resolve="task" />
                    </node>
                    <node concept="37vLTw" id="4DPIwUs8hQW" role="37wK5m">
                      <ref role="3cqZAo" node="4DPIwUs8d$F" resolve="key" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4DPIwUs8eCj" role="3cqZAp">
              <node concept="3clFbS" id="4DPIwUs8eCl" role="3clFbx">
                <node concept="3clFbF" id="4DPIwUs8eV4" role="3cqZAp">
                  <node concept="2OqwBi" id="4DPIwUs8f$6" role="3clFbG">
                    <node concept="37vLTw" id="4DPIwUs8eV2" role="2Oq$k0">
                      <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                    </node>
                    <node concept="liA8E" id="4DPIwUs8gM$" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~LinkedList.remove(java.lang.Object)" resolve="remove" />
                      <node concept="37vLTw" id="4DPIwUs8hTP" role="37wK5m">
                        <ref role="3cqZAo" node="4DPIwUs8hwZ" resolve="elem" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4DPIwUs8eQP" role="3clFbw">
                <node concept="10Nm6u" id="4DPIwUs8eSe" role="3uHU7w" />
                <node concept="37vLTw" id="4DPIwUs8eLz" role="3uHU7B">
                  <ref role="3cqZAo" node="4DPIwUs8d$F" resolve="key" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4DPIwUs8cjF" role="3cqZAp">
              <node concept="2OqwBi" id="4DPIwUs8cjG" role="3clFbG">
                <node concept="37vLTw" id="4DPIwUs8cjH" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                </node>
                <node concept="liA8E" id="4DPIwUs8cjI" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~LinkedList.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4DPIwUs8irf" role="37wK5m">
                    <ref role="3cqZAo" node="4DPIwUs8hwZ" resolve="elem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4DPIwUs8cjK" role="3cqZAp">
              <node concept="2OqwBi" id="4DPIwUs8cjL" role="3clFbG">
                <node concept="37vLTw" id="4DPIwUs8cjM" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                </node>
                <node concept="liA8E" id="4DPIwUs8cjN" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.notify()" resolve="notify" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4DPIwUs8cjO" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="3uibUv" id="4DPIwUs8cjP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="2AHcQZ" id="4DPIwUs8cjQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4DPIwUs8d$F" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4DPIwUs8erE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4DPIwUs8b_Y" role="jymVt" />
    <node concept="3clFb_" id="5MeZjb01poS" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="5MeZjb01poT" role="3clF45" />
      <node concept="3Tm1VV" id="5MeZjb01poU" role="1B3o_S" />
      <node concept="3clFbS" id="5MeZjb01poV" role="3clF47">
        <node concept="3clFbF" id="212jB9aS8Pa" role="3cqZAp">
          <node concept="37vLTI" id="212jB9aS8Pc" role="3clFbG">
            <node concept="3clFbT" id="212jB9aS8Pf" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="2BHiRxeukqs" role="37vLTJ">
              <ref role="3cqZAo" node="212jB9aS6Nb" resolve="myDisposed" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MeZjb01tld" role="3cqZAp">
          <node concept="2OqwBi" id="5MeZjb01tlk" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuPhC" role="2Oq$k0">
              <ref role="3cqZAo" node="3eE6dTgTzae" resolve="myThread" />
            </node>
            <node concept="liA8E" id="5MeZjb01tlo" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Thread.interrupt()" resolve="interrupt" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2niNgNo4qwV" role="jymVt" />
    <node concept="3clFb_" id="3eE6dTgTRmD" role="jymVt">
      <property role="TrG5h" value="assertIsCommandThread" />
      <node concept="3cqZAl" id="3eE6dTgTRmE" role="3clF45" />
      <node concept="3Tm1VV" id="3eE6dTgTRmQ" role="1B3o_S" />
      <node concept="3clFbS" id="3eE6dTgTRmG" role="3clF47">
        <node concept="1X3_iC" id="5G_0tNYOYnZ" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="1gVbGN" id="3eE6dTgTRnn" role="8Wnug">
            <node concept="3clFbC" id="3eE6dTgTRnp" role="1gVkn0">
              <node concept="2YIFZM" id="3eE6dTgTRnq" role="3uHU7B">
                <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuld8" role="3uHU7w">
                <ref role="3cqZAo" node="3eE6dTgTzae" resolve="myThread" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2niNgNo4qwW" role="jymVt" />
    <node concept="3clFb_" id="3eE6dTgTRnu" role="jymVt">
      <property role="TrG5h" value="assertSoftlyIsCommandThread" />
      <node concept="3cqZAl" id="3eE6dTgTRnv" role="3clF45" />
      <node concept="3Tm1VV" id="3eE6dTgTRnw" role="1B3o_S" />
      <node concept="3clFbS" id="3eE6dTgTRnx" role="3clF47">
        <node concept="1X3_iC" id="5G_0tNYOWUw" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="3eE6dTgTRnE" role="8Wnug">
            <node concept="3clFbS" id="3eE6dTgTRnG" role="3clFbx">
              <node concept="RRSsy" id="3jYQuSB3899" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="3eE6dTgTRnY" role="RRSoy">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2ShNRf" id="3eE6dTgTRnZ" role="RRSow">
                  <node concept="1pGfFk" id="3eE6dTgTRo1" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~AssertionError.&lt;init&gt;(java.lang.Object)" resolve="AssertionError" />
                    <node concept="3cpWs3" id="3eE6dTgTRow" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxeuFNS" role="3uHU7w">
                        <ref role="3cqZAo" node="3eE6dTgTzae" resolve="myThread" />
                      </node>
                      <node concept="3cpWs3" id="3eE6dTgTRos" role="3uHU7B">
                        <node concept="3cpWs3" id="3eE6dTgTRo2" role="3uHU7B">
                          <node concept="Xl_RD" id="3eE6dTgTRo4" role="3uHU7B">
                            <property role="Xl_RC" value="Current thread is " />
                          </node>
                          <node concept="2YIFZM" id="3eE6dTgTRor" role="3uHU7w">
                            <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3eE6dTgTRov" role="3uHU7w">
                          <property role="Xl_RC" value=", but should be " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3eE6dTgTRnM" role="3clFbw">
              <node concept="2YIFZM" id="3eE6dTgTRnN" role="3uHU7B">
                <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuTtr" role="3uHU7w">
                <ref role="3cqZAo" node="3eE6dTgTzae" resolve="myThread" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2niNgNo4qwX" role="jymVt" />
    <node concept="3clFb_" id="38WJxXowabv" role="jymVt">
      <property role="TrG5h" value="setHadExceptions" />
      <node concept="37vLTG" id="38WJxXowabD" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="38WJxXowabF" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="38WJxXowabw" role="3clF45" />
      <node concept="3clFbS" id="38WJxXowaby" role="3clF47">
        <node concept="3clFbF" id="38WJxXowabz" role="3cqZAp">
          <node concept="37vLTI" id="38WJxXowab_" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghiGe" role="37vLTx">
              <ref role="3cqZAo" node="38WJxXowabD" resolve="value" />
            </node>
            <node concept="37vLTw" id="2BHiRxeus9h" role="37vLTJ">
              <ref role="3cqZAo" node="4xDM31OB1M4" resolve="myHadExceptions" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="38WJxXowbBz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2niNgNo4qwY" role="jymVt" />
    <node concept="3clFb_" id="4xDM31OB1Mi" role="jymVt">
      <property role="TrG5h" value="hadExceptions" />
      <node concept="10P_77" id="4xDM31OB1Mj" role="3clF45" />
      <node concept="3Tm1VV" id="4xDM31OB1Mk" role="1B3o_S" />
      <node concept="3clFbS" id="4xDM31OB1Ml" role="3clF47">
        <node concept="3clFbF" id="4xDM31OB1Mm" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeucSw" role="3clFbG">
            <ref role="3cqZAo" node="4xDM31OB1M4" resolve="myHadExceptions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2niNgNo4qwZ" role="jymVt" />
    <node concept="3clFb_" id="5PCG$7kDnHo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isEmpty" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5PCG$7kDnHr" role="3clF47">
        <node concept="1HWtB8" id="5PCG$7kDoAx" role="3cqZAp">
          <node concept="37vLTw" id="5PCG$7kDoBM" role="1HWFw0">
            <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
          </node>
          <node concept="3clFbS" id="5PCG$7kDoAz" role="1HWHxc">
            <node concept="3cpWs6" id="5PCG$7kDvAu" role="3cqZAp">
              <node concept="2OqwBi" id="5PCG$7kDvAw" role="3cqZAk">
                <node concept="37vLTw" id="5PCG$7kDvAx" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                </node>
                <node concept="liA8E" id="5PCG$7kDvAy" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~AbstractCollection.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5PCG$7kDmQZ" role="1B3o_S" />
      <node concept="10P_77" id="5PCG$7kDnHj" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2niNgNo4pH3" role="jymVt" />
    <node concept="312cEu" id="3eE6dTgTGvJ" role="jymVt">
      <property role="TrG5h" value="MyExecutorThread" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="3eE6dTgTVBB" role="1B3o_S" />
      <node concept="3uibUv" id="3eE6dTgTGvP" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="3clFbW" id="3eE6dTgTGvL" role="jymVt">
        <node concept="3cqZAl" id="3eE6dTgTGvM" role="3clF45" />
        <node concept="3Tm1VV" id="3eE6dTgTGvN" role="1B3o_S" />
        <node concept="3clFbS" id="3eE6dTgTGvO" role="3clF47">
          <node concept="XkiVB" id="3eE6dTgTGvQ" role="3cqZAp">
            <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.String)" resolve="Thread" />
            <node concept="37vLTw" id="2BHiRxgm9tT" role="37wK5m">
              <ref role="3cqZAo" node="3eE6dTgTGvR" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3eE6dTgTGvR" role="3clF46">
          <property role="TrG5h" value="name" />
          <property role="3TUv4t" value="false" />
          <node concept="17QB3L" id="3eE6dTgTGvS" role="1tU5fm" />
          <node concept="2AHcQZ" id="f7MobKgkFm" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7znbqLix5lw" role="jymVt" />
      <node concept="3clFb_" id="3eE6dTgU8Wq" role="jymVt">
        <property role="TrG5h" value="run" />
        <node concept="3Tm1VV" id="3eE6dTgU8Wr" role="1B3o_S" />
        <node concept="3cqZAl" id="3eE6dTgU8Ws" role="3clF45" />
        <node concept="3clFbS" id="3eE6dTgU8Wt" role="3clF47">
          <node concept="2$JKZl" id="3eE6dTgU8W$" role="3cqZAp">
            <node concept="3clFbT" id="3eE6dTgU8W_" role="2$JKZa">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="3clFbS" id="3eE6dTgU8WA" role="2LFqv$">
              <node concept="3clFbJ" id="5MeZjb01tlv" role="3cqZAp">
                <node concept="3clFbS" id="5MeZjb01tlw" role="3clFbx">
                  <node concept="3cpWs6" id="5MeZjb01A5M" role="3cqZAp" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuEHO" role="3clFbw">
                  <ref role="3cqZAo" node="212jB9aS6Nb" resolve="myDisposed" />
                </node>
              </node>
              <node concept="3cpWs8" id="7znbqLixxd5" role="3cqZAp">
                <node concept="3cpWsn" id="7znbqLixxdb" role="3cpWs9">
                  <property role="TrG5h" value="tasksToExecute" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="7znbqLixxdd" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="7znbqLixydP" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7znbqLix$hG" role="33vP2m">
                    <node concept="1pGfFk" id="7znbqLixA44" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                      <node concept="3uibUv" id="7znbqLixByc" role="1pMfVU">
                        <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1HWtB8" id="3eE6dTgU8WF" role="3cqZAp">
                <node concept="37vLTw" id="2BHiRxeuNZt" role="1HWFw0">
                  <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                </node>
                <node concept="3clFbS" id="3eE6dTgU8WJ" role="1HWHxc">
                  <node concept="2$JKZl" id="3eE6dTgU8WK" role="3cqZAp">
                    <node concept="3clFbS" id="3eE6dTgU8WL" role="2LFqv$">
                      <node concept="3J1_TO" id="3eE6dTgU8WM" role="3cqZAp">
                        <node concept="3clFbS" id="3eE6dTgU8WN" role="1zxBo7">
                          <node concept="3clFbF" id="3eE6dTgU8WO" role="3cqZAp">
                            <node concept="2OqwBi" id="3eE6dTgU8WP" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxeunaS" role="2Oq$k0">
                                <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                              </node>
                              <node concept="liA8E" id="3eE6dTgU8WT" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.wait()" resolve="wait" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uVAMA" id="3eE6dTgU8WU" role="1zxBo5">
                          <node concept="XOnhg" id="3eE6dTgU8WV" role="1zc67B">
                            <property role="3TUv4t" value="false" />
                            <property role="TrG5h" value="e" />
                            <node concept="nSUau" id="xvs04dIfLE" role="1tU5fm">
                              <node concept="3uibUv" id="3eE6dTgU8WW" role="nSUat">
                                <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3eE6dTgU8WX" role="1zc67A">
                            <node concept="3cpWs6" id="3eE6dTgU8WY" role="3cqZAp" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3eE6dTgU8WZ" role="2$JKZa">
                      <node concept="37vLTw" id="2BHiRxeuSZI" role="2Oq$k0">
                        <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                      </node>
                      <node concept="liA8E" id="3eE6dTgU8X3" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~AbstractCollection.isEmpty()" resolve="isEmpty" />
                      </node>
                    </node>
                  </node>
                  <node concept="2$JKZl" id="7znbqLiwSlq" role="3cqZAp">
                    <node concept="3clFbS" id="7znbqLiwSlr" role="2LFqv$">
                      <node concept="3cpWs8" id="3eE6dTgU8WB" role="3cqZAp">
                        <node concept="3cpWsn" id="3eE6dTgU8WC" role="3cpWs9">
                          <property role="TrG5h" value="task" />
                          <node concept="3uibUv" id="6n7ZudhhpwG" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
                          </node>
                          <node concept="2OqwBi" id="4DPIwUs8v1S" role="33vP2m">
                            <node concept="2OqwBi" id="3eE6dTgU8X7" role="2Oq$k0">
                              <node concept="37vLTw" id="4DPIwUs8pz0" role="2Oq$k0">
                                <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                              </node>
                              <node concept="liA8E" id="3eE6dTgU8Xb" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~LinkedList.poll()" resolve="poll" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4DPIwUs8xnx" role="2OqNvi">
                              <ref role="37wK5l" node="4DPIwUs87wM" resolve="getTask" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7znbqLixGOc" role="3cqZAp">
                        <node concept="2OqwBi" id="7znbqLixHPp" role="3clFbG">
                          <node concept="37vLTw" id="7znbqLixGO7" role="2Oq$k0">
                            <ref role="3cqZAo" node="7znbqLixxdb" resolve="tasksToExecute" />
                          </node>
                          <node concept="liA8E" id="7znbqLixJe3" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                            <node concept="37vLTw" id="7znbqLixJVp" role="37wK5m">
                              <ref role="3cqZAo" node="3eE6dTgU8WC" resolve="task" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="7znbqLiwVFZ" role="2$JKZa">
                      <node concept="2OqwBi" id="7znbqLiwVG1" role="3fr31v">
                        <node concept="37vLTw" id="7znbqLiwVG2" role="2Oq$k0">
                          <ref role="3cqZAo" node="3eE6dTgTzLk" resolve="myQueue" />
                        </node>
                        <node concept="liA8E" id="7znbqLiwVG3" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~AbstractCollection.isEmpty()" resolve="isEmpty" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1gVbGN" id="5G_0tNYPOYD" role="3cqZAp">
                <node concept="3fqX7Q" id="5G_0tNYPQ0b" role="1gVkn0">
                  <node concept="2OqwBi" id="5G_0tNYPRIm" role="3fr31v">
                    <node concept="37vLTw" id="5G_0tNYPQsv" role="2Oq$k0">
                      <ref role="3cqZAo" node="7znbqLixxdb" resolve="tasksToExecute" />
                    </node>
                    <node concept="liA8E" id="5G_0tNYPSBT" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7znbqLiw1kZ" role="3cqZAp">
                <node concept="3cpWsn" id="7znbqLiw1l0" role="3cpWs9">
                  <property role="TrG5h" value="flushingRunnable" />
                  <node concept="3uibUv" id="7znbqLiw1l1" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
                  </node>
                  <node concept="2ShNRf" id="7znbqLiw27j" role="33vP2m">
                    <node concept="YeOm9" id="7znbqLiwO1g" role="2ShVmc">
                      <node concept="1Y3b0j" id="7znbqLiwO1j" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3Tm1VV" id="7znbqLiwO1k" role="1B3o_S" />
                        <node concept="3clFb_" id="7znbqLiwO1p" role="jymVt">
                          <property role="TrG5h" value="run" />
                          <node concept="3Tm1VV" id="7znbqLiwO1q" role="1B3o_S" />
                          <node concept="3cqZAl" id="7znbqLiwO1s" role="3clF45" />
                          <node concept="3clFbS" id="7znbqLiwO1t" role="3clF47">
                            <node concept="2Gpval" id="7znbqLixNCc" role="3cqZAp">
                              <node concept="2GrKxI" id="7znbqLixNCd" role="2Gsz3X">
                                <property role="TrG5h" value="task" />
                              </node>
                              <node concept="37vLTw" id="7znbqLixOWC" role="2GsD0m">
                                <ref role="3cqZAo" node="7znbqLixxdb" resolve="tasksToExecute" />
                              </node>
                              <node concept="3clFbS" id="7znbqLixNCf" role="2LFqv$">
                                <node concept="3J1_TO" id="7znbqLixRMy" role="3cqZAp">
                                  <node concept="3uVAMA" id="7znbqLixTAC" role="1zxBo5">
                                    <node concept="XOnhg" id="7znbqLixTAD" role="1zc67B">
                                      <property role="TrG5h" value="t" />
                                      <node concept="nSUau" id="7znbqLixTAE" role="1tU5fm">
                                        <node concept="3uibUv" id="7znbqLixU4J" role="nSUat">
                                          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="7znbqLixTAF" role="1zc67A">
                                      <node concept="3clFbJ" id="7znbqLixVmh" role="3cqZAp">
                                        <node concept="3clFbS" id="7znbqLixVmi" role="3clFbx">
                                          <node concept="3N13vt" id="7znbqLixVmj" role="3cqZAp" />
                                        </node>
                                        <node concept="22lmx$" id="7znbqLixVmk" role="3clFbw">
                                          <node concept="2ZW3vV" id="7znbqLixVml" role="3uHU7w">
                                            <node concept="3uibUv" id="7znbqLixVmm" role="2ZW6by">
                                              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                                            </node>
                                            <node concept="2OqwBi" id="7znbqLixVmn" role="2ZW6bz">
                                              <node concept="liA8E" id="7znbqLixVmp" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~Throwable.getCause()" resolve="getCause" />
                                              </node>
                                              <node concept="37vLTw" id="7znbqLixXh2" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7znbqLixTAD" resolve="t" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2ZW3vV" id="7znbqLixVmq" role="3uHU7B">
                                            <node concept="3uibUv" id="7znbqLixVmr" role="2ZW6by">
                                              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                                            </node>
                                            <node concept="37vLTw" id="7znbqLixZ8c" role="2ZW6bz">
                                              <ref role="3cqZAo" node="7znbqLixTAD" resolve="t" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="RRSsy" id="7znbqLixVmt" role="3cqZAp">
                                        <property role="RRSoG" value="gZ5fh_4/error" />
                                        <node concept="3cpWs3" id="7znbqLixVmu" role="RRSoy">
                                          <node concept="1rXfSq" id="7znbqLixVmv" role="3uHU7w">
                                            <ref role="37wK5l" to="wyt6:~Thread.getName()" resolve="getName" />
                                          </node>
                                          <node concept="3cpWs3" id="7znbqLixVmw" role="3uHU7B">
                                            <node concept="2OqwBi" id="7znbqLixVmx" role="3uHU7B">
                                              <node concept="2OqwBi" id="7znbqLixVmy" role="2Oq$k0">
                                                <node concept="liA8E" id="7znbqLixVm$" role="2OqNvi">
                                                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                                                </node>
                                                <node concept="37vLTw" id="7znbqLiy0sG" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7znbqLixTAD" resolve="t" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="7znbqLixVm_" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="7znbqLixVmA" role="3uHU7w">
                                              <property role="Xl_RC" value=" exception in " />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="7znbqLixXFz" role="RRSow">
                                          <ref role="3cqZAo" node="7znbqLixTAD" resolve="t" />
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="7znbqLixVmC" role="3cqZAp">
                                        <node concept="37vLTI" id="7znbqLixVmD" role="3clFbG">
                                          <node concept="3clFbT" id="7znbqLixVmE" role="37vLTx">
                                            <property role="3clFbU" value="true" />
                                          </node>
                                          <node concept="37vLTw" id="7znbqLixVmF" role="37vLTJ">
                                            <ref role="3cqZAo" node="4xDM31OB1M4" resolve="myHadExceptions" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="7znbqLixRM$" role="1zxBo7">
                                    <node concept="3clFbF" id="7znbqLixPS9" role="3cqZAp">
                                      <node concept="2OqwBi" id="7znbqLixQB_" role="3clFbG">
                                        <node concept="2GrUjf" id="7znbqLixPS8" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="7znbqLixNCd" resolve="task" />
                                        </node>
                                        <node concept="liA8E" id="7znbqLixR5_" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="7znbqLiwO1v" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="58EREyZPAib" role="3cqZAp">
                <node concept="3cpWsn" id="58EREyZPAic" role="3cpWs9">
                  <property role="TrG5h" value="clm" />
                  <node concept="3uibUv" id="58EREyZPAid" role="1tU5fm">
                    <ref role="3uigEE" to="1038:~ChangeListManagerImpl" resolve="ChangeListManagerImpl" />
                  </node>
                  <node concept="10QFUN" id="58EREyZPCKc" role="33vP2m">
                    <node concept="3uibUv" id="58EREyZPD4T" role="10QFUM">
                      <ref role="3uigEE" to="1038:~ChangeListManagerImpl" resolve="ChangeListManagerImpl" />
                    </node>
                    <node concept="2YIFZM" id="58EREyZPCuh" role="10QFUP">
                      <ref role="37wK5l" to="1037:~ChangeListManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                      <ref role="1Pybhc" to="1037:~ChangeListManager" resolve="ChangeListManager" />
                      <node concept="37vLTw" id="58EREyZPKiK" role="37wK5m">
                        <ref role="3cqZAo" node="58EREyZPyGY" resolve="myProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="58EREyZPEov" role="3cqZAp">
                <node concept="2OqwBi" id="58EREyZPFad" role="3clFbG">
                  <node concept="37vLTw" id="58EREyZPEot" role="2Oq$k0">
                    <ref role="3cqZAo" node="58EREyZPAic" resolve="clm" />
                  </node>
                  <node concept="liA8E" id="58EREyZPGl3" role="2OqNvi">
                    <ref role="37wK5l" to="1038:~ChangeListManagerImpl.executeOnUpdaterThread(java.lang.Runnable)" resolve="executeOnUpdaterThread" />
                    <node concept="37vLTw" id="7znbqLix2yp" role="37wK5m">
                      <ref role="3cqZAo" node="7znbqLiw1l0" resolve="flushingRunnable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3J1_TO" id="4q0vic29aE7" role="3cqZAp">
                <node concept="3uVAMA" id="4q0vic29e9o" role="1zxBo5">
                  <node concept="XOnhg" id="4q0vic29e9p" role="1zc67B">
                    <property role="TrG5h" value="e" />
                    <node concept="nSUau" id="4q0vic29e9q" role="1tU5fm">
                      <node concept="3uibUv" id="4q0vic29eHK" role="nSUat">
                        <ref role="3uigEE" to="xygl:~ProcessCanceledException" resolve="ProcessCanceledException" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="4q0vic29e9r" role="1zc67A">
                    <node concept="3clFbJ" id="4q0vic29iI7" role="3cqZAp">
                      <node concept="3fqX7Q" id="4q0vic29jQk" role="3clFbw">
                        <node concept="37vLTw" id="4q0vic29k9D" role="3fr31v">
                          <ref role="3cqZAo" node="212jB9aS6Nb" resolve="myDisposed" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4q0vic29iI9" role="3clFbx">
                        <node concept="RRSsy" id="4q0vic2aebT" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fh_4/error" />
                          <node concept="Xl_RD" id="4q0vic2aebV" role="RRSoy">
                            <property role="Xl_RC" value="received while for an update from ChangeListManagerImpl" />
                          </node>
                          <node concept="37vLTw" id="4q0vic2ak7e" role="RRSow">
                            <ref role="3cqZAo" node="4q0vic29e9p" resolve="e" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="4q0vic2alFp" role="9aQIa">
                        <node concept="3clFbS" id="4q0vic2alFq" role="9aQI4">
                          <node concept="3zACq4" id="4q0vic2aml$" role="3cqZAp" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4q0vic29aE9" role="1zxBo7">
                  <node concept="3clFbF" id="7znbqLix6Zy" role="3cqZAp">
                    <node concept="2OqwBi" id="7znbqLix7Lh" role="3clFbG">
                      <node concept="37vLTw" id="7znbqLix6Zw" role="2Oq$k0">
                        <ref role="3cqZAo" node="58EREyZPAic" resolve="clm" />
                      </node>
                      <node concept="liA8E" id="7znbqLix8UZ" role="2OqNvi">
                        <ref role="37wK5l" to="1038:~ChangeListManagerImpl.waitForUpdate()" resolve="waitForUpdate" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3eE6dTgU8Wu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4DPIwUs70Pu" role="jymVt" />
    <node concept="312cEu" id="4DPIwUs72iR" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="QueueElem" />
      <node concept="312cEg" id="4DPIwUs72Rx" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myTask" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4DPIwUs72Rg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="3Tm6S6" id="4DPIwUs73xV" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="4DPIwUs72Tb" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myKey" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4DPIwUs72SD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3Tm6S6" id="4DPIwUs73z4" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="2niNgNo4oXX" role="jymVt" />
      <node concept="3clFbW" id="4DPIwUs88QX" role="jymVt">
        <node concept="37vLTG" id="4DPIwUs88YS" role="3clF46">
          <property role="TrG5h" value="task" />
          <node concept="3uibUv" id="4DPIwUs892j" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
          </node>
          <node concept="2AHcQZ" id="2niNgNo4lPW" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3cqZAl" id="4DPIwUs88QY" role="3clF45" />
        <node concept="3clFbS" id="4DPIwUs88R0" role="3clF47">
          <node concept="1VxSAg" id="4DPIwUs89y1" role="3cqZAp">
            <ref role="37wK5l" node="4DPIwUs72V1" resolve="SimpleCommandQueue.QueueElem" />
            <node concept="37vLTw" id="4DPIwUs89CH" role="37wK5m">
              <ref role="3cqZAo" node="4DPIwUs88YS" resolve="task" />
            </node>
            <node concept="10Nm6u" id="4DPIwUs89Hr" role="37wK5m" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4DPIwUs88Co" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="2niNgNo4nCq" role="jymVt" />
      <node concept="3clFbW" id="4DPIwUs72V1" role="jymVt">
        <node concept="3cqZAl" id="4DPIwUs72V2" role="3clF45" />
        <node concept="3clFbS" id="4DPIwUs72V4" role="3clF47">
          <node concept="3clFbF" id="4DPIwUs736O" role="3cqZAp">
            <node concept="37vLTI" id="4DPIwUs73fe" role="3clFbG">
              <node concept="37vLTw" id="4DPIwUs73i4" role="37vLTx">
                <ref role="3cqZAo" node="4DPIwUs72Yp" resolve="task" />
              </node>
              <node concept="37vLTw" id="4DPIwUs736N" role="37vLTJ">
                <ref role="3cqZAo" node="4DPIwUs72Rx" resolve="myTask" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4DPIwUs73o6" role="3cqZAp">
            <node concept="37vLTI" id="4DPIwUs73uG" role="3clFbG">
              <node concept="37vLTw" id="4DPIwUs73x4" role="37vLTx">
                <ref role="3cqZAo" node="4DPIwUs72Zd" resolve="key" />
              </node>
              <node concept="37vLTw" id="4DPIwUs73o4" role="37vLTJ">
                <ref role="3cqZAo" node="4DPIwUs72Tb" resolve="myKey" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4DPIwUs72V5" role="1B3o_S" />
        <node concept="37vLTG" id="4DPIwUs72Yp" role="3clF46">
          <property role="TrG5h" value="task" />
          <node concept="3uibUv" id="4DPIwUs72Yo" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
          </node>
          <node concept="2AHcQZ" id="2niNgNo4lXd" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="4DPIwUs72Zd" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="3uibUv" id="4DPIwUs730C" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2niNgNo4nCr" role="jymVt" />
      <node concept="3clFb_" id="4DPIwUs87wM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getTask" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="4DPIwUs87wP" role="3clF47">
          <node concept="3clFbF" id="4DPIwUs88ec" role="3cqZAp">
            <node concept="37vLTw" id="4DPIwUs88eb" role="3clFbG">
              <ref role="3cqZAo" node="4DPIwUs72Rx" resolve="myTask" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4DPIwUs87pc" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="3Tm1VV" id="4DPIwUs8lpr" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="4DPIwUs879r" role="jymVt" />
      <node concept="3clFb_" id="4DPIwUs73_p" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="equals" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4DPIwUs73_q" role="1B3o_S" />
        <node concept="10P_77" id="4DPIwUs73_s" role="3clF45" />
        <node concept="37vLTG" id="4DPIwUs73_t" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="4DPIwUs73_u" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="4DPIwUs73_v" role="3clF47">
          <node concept="3clFbJ" id="4DPIwUs7X3s" role="3cqZAp">
            <node concept="1Wc70l" id="4DPIwUs82zp" role="3clFbw">
              <node concept="3y3z36" id="4DPIwUs82LO" role="3uHU7w">
                <node concept="10Nm6u" id="4DPIwUs82Q7" role="3uHU7w" />
                <node concept="37vLTw" id="4DPIwUs82DA" role="3uHU7B">
                  <ref role="3cqZAo" node="4DPIwUs72Tb" resolve="myKey" />
                </node>
              </node>
              <node concept="2ZW3vV" id="4DPIwUs7Xjc" role="3uHU7B">
                <node concept="3uibUv" id="4DPIwUs7Y4c" role="2ZW6by">
                  <ref role="3uigEE" node="4DPIwUs72iR" resolve="SimpleCommandQueue.QueueElem" />
                </node>
                <node concept="37vLTw" id="4DPIwUs7X5A" role="2ZW6bz">
                  <ref role="3cqZAo" node="4DPIwUs73_t" resolve="o" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4DPIwUs7X3u" role="3clFbx">
              <node concept="3cpWs6" id="4DPIwUs85iS" role="3cqZAp">
                <node concept="2OqwBi" id="4DPIwUs85iU" role="3cqZAk">
                  <node concept="37vLTw" id="4DPIwUs85iV" role="2Oq$k0">
                    <ref role="3cqZAo" node="4DPIwUs72Tb" resolve="myKey" />
                  </node>
                  <node concept="liA8E" id="4DPIwUs85iW" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="4DPIwUs85iX" role="37wK5m">
                      <node concept="1eOMI4" id="4DPIwUs85iY" role="2Oq$k0">
                        <node concept="10QFUN" id="4DPIwUs85iZ" role="1eOMHV">
                          <node concept="3uibUv" id="4DPIwUs85j0" role="10QFUM">
                            <ref role="3uigEE" node="4DPIwUs72iR" resolve="SimpleCommandQueue.QueueElem" />
                          </node>
                          <node concept="37vLTw" id="4DPIwUs85j1" role="10QFUP">
                            <ref role="3cqZAo" node="4DPIwUs73_t" resolve="o" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OwXpG" id="4DPIwUs85j2" role="2OqNvi">
                        <ref role="2Oxat5" node="4DPIwUs72Tb" resolve="myKey" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="4DPIwUs810M" role="9aQIa">
              <node concept="3clFbS" id="4DPIwUs810N" role="9aQI4">
                <node concept="3cpWs6" id="4DPIwUs85ot" role="3cqZAp">
                  <node concept="3nyPlj" id="4DPIwUs85ov" role="3cqZAk">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="4DPIwUs85ow" role="37wK5m">
                      <ref role="3cqZAo" node="4DPIwUs73_t" resolve="o" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4DPIwUs73_w" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2niNgNo4nCs" role="jymVt" />
      <node concept="3clFb_" id="4DPIwUs85qp" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="hashCode" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4DPIwUs85qq" role="1B3o_S" />
        <node concept="10Oyi0" id="4DPIwUs85qs" role="3clF45" />
        <node concept="3clFbS" id="4DPIwUs85qt" role="3clF47">
          <node concept="3clFbJ" id="4DPIwUs85J4" role="3cqZAp">
            <node concept="3y3z36" id="4DPIwUs85J6" role="3clFbw">
              <node concept="10Nm6u" id="4DPIwUs85J7" role="3uHU7w" />
              <node concept="37vLTw" id="4DPIwUs85J8" role="3uHU7B">
                <ref role="3cqZAo" node="4DPIwUs72Tb" resolve="myKey" />
              </node>
            </node>
            <node concept="3clFbS" id="4DPIwUs85Jc" role="3clFbx">
              <node concept="3cpWs6" id="4DPIwUs85Jd" role="3cqZAp">
                <node concept="2OqwBi" id="4DPIwUs85Je" role="3cqZAk">
                  <node concept="37vLTw" id="4DPIwUs85Jf" role="2Oq$k0">
                    <ref role="3cqZAo" node="4DPIwUs72Tb" resolve="myKey" />
                  </node>
                  <node concept="liA8E" id="4DPIwUs86p2" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="4DPIwUs85Jn" role="9aQIa">
              <node concept="3clFbS" id="4DPIwUs85Jo" role="9aQI4">
                <node concept="3cpWs6" id="4DPIwUs85Jp" role="3cqZAp">
                  <node concept="3nyPlj" id="4DPIwUs86WO" role="3cqZAk">
                    <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4DPIwUs85qu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1X5qtjfumIz">
    <property role="TrG5h" value="BaseVersionModelLoader" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="6ww30ZnlGYN" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6ww30ZnlGYO" role="1B3o_S" />
      <node concept="3uibUv" id="2F$QDg9EFrZ" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="7vnZ8Y08aI7" role="jymVt" />
    <node concept="3clFbW" id="6xD1Zl6F7rM" role="jymVt">
      <node concept="3cqZAl" id="6xD1Zl6F7rN" role="3clF45" />
      <node concept="3clFbS" id="6xD1Zl6F7rP" role="3clF47">
        <node concept="3clFbF" id="6ww30ZnlHgX" role="3cqZAp">
          <node concept="37vLTI" id="6ww30ZnlIex" role="3clFbG">
            <node concept="37vLTw" id="6ww30ZnlIfW" role="37vLTx">
              <ref role="3cqZAo" node="6ww30ZnlG$p" resolve="project" />
            </node>
            <node concept="37vLTw" id="6ww30ZnlHgW" role="37vLTJ">
              <ref role="3cqZAo" node="6ww30ZnlGYN" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ww30ZnlG$p" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6ww30ZnlG$q" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="6ww30ZnlG$r" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vnZ8Y08V8l" role="jymVt" />
    <node concept="3clFb_" id="7vnZ8Y08Vzv" role="jymVt">
      <property role="TrG5h" value="guessFactory" />
      <node concept="3clFbS" id="7vnZ8Y08Vzy" role="3clF47">
        <node concept="3clFbJ" id="7vnZ8Y08VI5" role="3cqZAp">
          <node concept="3clFbS" id="7vnZ8Y08VI7" role="3clFbx">
            <node concept="3cpWs6" id="7vnZ8Y08WBD" role="3cqZAp">
              <node concept="2OqwBi" id="7vnZ8Y08YbV" role="3cqZAk">
                <node concept="1eOMI4" id="7vnZ8Y08Y7i" role="2Oq$k0">
                  <node concept="10QFUN" id="7vnZ8Y08WFs" role="1eOMHV">
                    <node concept="3uibUv" id="7vnZ8Y08Y4e" role="10QFUM">
                      <ref role="3uigEE" to="pa15:~LoadedStrategyAware" resolve="LoadedStrategyAware" />
                    </node>
                    <node concept="37vLTw" id="7vnZ8Y08WDX" role="10QFUP">
                      <ref role="3cqZAo" node="7vnZ8Y08VGU" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7vnZ8Y08Ykw" role="2OqNvi">
                  <ref role="37wK5l" to="pa15:~LoadedStrategyAware.getModelFactory()" resolve="getModelFactory" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7vnZ8Y08W$T" role="3clFbw">
            <node concept="3uibUv" id="7vnZ8Y08WAv" role="2ZW6by">
              <ref role="3uigEE" to="pa15:~LoadedStrategyAware" resolve="LoadedStrategyAware" />
            </node>
            <node concept="37vLTw" id="7vnZ8Y08VMK" role="2ZW6bz">
              <ref role="3cqZAo" node="7vnZ8Y08VGU" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7vnZ8Y08Ymj" role="3cqZAp">
          <node concept="10Nm6u" id="7vnZ8Y08YnG" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7vnZ8Y08Vq3" role="1B3o_S" />
      <node concept="3uibUv" id="7vnZ8Y08Vzs" role="3clF45">
        <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
      </node>
      <node concept="37vLTG" id="7vnZ8Y08VGU" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="7vnZ8Y08VGT" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ww30ZnkWWn" role="jymVt" />
    <node concept="3clFb_" id="6ww30ZnlIhe" role="jymVt">
      <property role="TrG5h" value="getBaseVersionModel" />
      <node concept="2AHcQZ" id="2LgKyNJ3oQd" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2LgKyNJ3f_X" role="3clF47">
        <node concept="3cpWs8" id="2LgKyNJ3_1_" role="3cqZAp">
          <node concept="3cpWsn" id="2LgKyNJ3_1A" role="3cpWs9">
            <property role="TrG5h" value="ds" />
            <node concept="3uibUv" id="2LgKyNJ3_1B" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
            <node concept="2OqwBi" id="2LgKyNJ3_9I" role="33vP2m">
              <node concept="2JrnkZ" id="2LgKyNJ47$e" role="2Oq$k0">
                <node concept="37vLTw" id="2LgKyNJ3_3N" role="2JrQYb">
                  <ref role="3cqZAo" node="2LgKyNJ3x2V" resolve="model" />
                </node>
              </node>
              <node concept="liA8E" id="2LgKyNJ3CUk" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7vnZ8Y09gy8" role="3cqZAp">
          <node concept="3clFbS" id="7vnZ8Y09gya" role="3clFbx">
            <node concept="3cpWs6" id="2KujyEVI5CK" role="3cqZAp">
              <node concept="10Nm6u" id="2KujyEVI5F7" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="2KujyEVI5Bu" role="3clFbw">
            <node concept="1eOMI4" id="2KujyEVI5Bw" role="3fr31v">
              <node concept="2ZW3vV" id="2KujyEVI5Bx" role="1eOMHV">
                <node concept="3uibUv" id="2KujyEVI5By" role="2ZW6by">
                  <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
                </node>
                <node concept="37vLTw" id="2KujyEVI5Bz" role="2ZW6bz">
                  <ref role="3cqZAo" node="2LgKyNJ3_1A" resolve="ds" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vnZ8Y08dYt" role="3cqZAp">
          <node concept="3cpWsn" id="7vnZ8Y08dYu" role="3cpWs9">
            <property role="TrG5h" value="mpsPlatform" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7vnZ8Y08dYv" role="1tU5fm">
              <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
            </node>
            <node concept="2OqwBi" id="7vnZ8Y08dYw" role="33vP2m">
              <node concept="2YIFZM" id="7vnZ8Y08dYx" role="2Oq$k0">
                <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="37vLTw" id="7vnZ8Y08ecW" role="37wK5m">
                  <ref role="3cqZAo" node="6ww30ZnlGYN" resolve="myProject" />
                </node>
              </node>
              <node concept="liA8E" id="7vnZ8Y08dYz" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~ProjectBase.getPlatform()" resolve="getPlatform" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7nu2Tk19E$2" role="3cqZAp">
          <node concept="3cpWsn" id="7nu2Tk19E$3" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="7nu2Tk19Ezk" role="1tU5fm">
              <ref role="3uigEE" node="6ww30ZnlvGw" resolve="BaseVersionModelLoader.RedirectingDataSource" />
            </node>
            <node concept="2ShNRf" id="7nu2Tk19E$4" role="33vP2m">
              <node concept="1pGfFk" id="7nu2Tk19E$5" role="2ShVmc">
                <ref role="37wK5l" node="7vnZ8Y08YxF" resolve="BaseVersionModelLoader.RedirectingDataSource" />
                <node concept="10QFUN" id="7nu2Tk19E$6" role="37wK5m">
                  <node concept="3uibUv" id="7nu2Tk19E$7" role="10QFUM">
                    <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
                  </node>
                  <node concept="37vLTw" id="7nu2Tk19E$8" role="10QFUP">
                    <ref role="3cqZAo" node="2LgKyNJ3_1A" resolve="ds" />
                  </node>
                </node>
                <node concept="37vLTw" id="7nu2Tk19E$9" role="37wK5m">
                  <ref role="3cqZAo" node="6ww30ZnlGYN" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7nu2Tk19EAy" role="3cqZAp">
          <node concept="3clFbS" id="7nu2Tk19EA$" role="3clFbx">
            <node concept="RRSsy" id="2bgm8sLAyRt" role="3cqZAp">
              <property role="RRSoG" value="gZ5fh_4/error" />
              <node concept="Xl_RD" id="2bgm8sLAyRv" role="RRSoy">
                <property role="Xl_RC" value="empty substreams" />
              </node>
              <node concept="2ShNRf" id="2bgm8sLAF5s" role="RRSow">
                <node concept="1pGfFk" id="2bgm8sLAWLX" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2bgm8sLAZx5" role="3cqZAp">
              <node concept="10Nm6u" id="2bgm8sLB2kJ" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="7nu2Tk19GxW" role="3clFbw">
            <node concept="2OqwBi" id="7nu2Tk19FMo" role="2Oq$k0">
              <node concept="2OqwBi" id="7nu2Tk19F8h" role="2Oq$k0">
                <node concept="37vLTw" id="7nu2Tk19ECl" role="2Oq$k0">
                  <ref role="3cqZAo" node="7nu2Tk19E$3" resolve="source" />
                </node>
                <node concept="liA8E" id="7nu2Tk19FqW" role="2OqNvi">
                  <ref role="37wK5l" node="6ww30Znlylc" resolve="getSubStreams" />
                </node>
              </node>
              <node concept="liA8E" id="7nu2Tk19GlO" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.findAny()" resolve="findAny" />
              </node>
            </node>
            <node concept="liA8E" id="7nu2Tk19GUD" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7fJvc3BiORn" role="3cqZAp">
          <node concept="3cpWsn" id="7fJvc3BiORo" role="3cpWs9">
            <property role="TrG5h" value="factory" />
            <node concept="3uibUv" id="7fJvc3BiNuD" role="1tU5fm">
              <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
            </node>
            <node concept="1rXfSq" id="7fJvc3BiORp" role="33vP2m">
              <ref role="37wK5l" node="7vnZ8Y08Vzv" resolve="guessFactory" />
              <node concept="37vLTw" id="7fJvc3BiORq" role="37wK5m">
                <ref role="3cqZAo" node="2LgKyNJ3x2V" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7fJvc3BfHg5" role="3cqZAp">
          <node concept="3uVAMA" id="7fJvc3BfKOo" role="1zxBo5">
            <node concept="XOnhg" id="7fJvc3BfKOp" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="7fJvc3BfKOq" role="1tU5fm">
                <node concept="3uibUv" id="7fJvc3BfNQX" role="nSUat">
                  <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
                </node>
                <node concept="3uibUv" id="7fJvc3Bkbza" role="nSUat">
                  <ref role="3uigEE" to="dush:~UnsupportedDataSourceException" resolve="UnsupportedDataSourceException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7fJvc3BfKOr" role="1zc67A">
              <node concept="3SKdUt" id="7fJvc3Bg80o" role="3cqZAp">
                <node concept="1PaTwC" id="7fJvc3Bg80p" role="1aUNEU">
                  <node concept="3oM_SD" id="7fJvc3Bg8GI" role="1PaTwD">
                    <property role="3oM_SC" value="generally," />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgabP" role="1PaTwD">
                    <property role="3oM_SC" value="it's" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3Bgacp" role="1PaTwD">
                    <property role="3oM_SC" value="ok" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdN3" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdN4" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdN5" role="1PaTwD">
                    <property role="3oM_SC" value="get" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdN6" role="1PaTwD">
                    <property role="3oM_SC" value="base" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdND" role="1PaTwD">
                    <property role="3oM_SC" value="revision," />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdQk" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdQR" role="1PaTwD">
                    <property role="3oM_SC" value="could" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdQS" role="1PaTwD">
                    <property role="3oM_SC" value="try" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdRX" role="1PaTwD">
                    <property role="3oM_SC" value="another" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdSw" role="1PaTwD">
                    <property role="3oM_SC" value="time" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdVh" role="1PaTwD">
                    <property role="3oM_SC" value="(e.g." />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdWm" role="1PaTwD">
                    <property role="3oM_SC" value="if" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdWn" role="1PaTwD">
                    <property role="3oM_SC" value="it's" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdWU" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdWV" role="1PaTwD">
                    <property role="3oM_SC" value="VFS" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdXu" role="1PaTwD">
                    <property role="3oM_SC" value="caching" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdXv" role="1PaTwD">
                    <property role="3oM_SC" value="issue," />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdY$" role="1PaTwD">
                    <property role="3oM_SC" value="see" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdY_" role="1PaTwD">
                    <property role="3oM_SC" value="MPS-37919)," />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdT3" role="1PaTwD">
                    <property role="3oM_SC" value="hence" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdUa" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdUb" role="1PaTwD">
                    <property role="3oM_SC" value="an" />
                  </node>
                  <node concept="3oM_SD" id="7fJvc3BgdUc" role="1PaTwD">
                    <property role="3oM_SC" value="error" />
                  </node>
                </node>
              </node>
              <node concept="RRSsy" id="7vnZ8Y08R_G" role="3cqZAp">
                <property role="RRSoG" value="gZ5fksE/warn" />
                <node concept="2OqwBi" id="7fJvc3BiAf_" role="RRSoy">
                  <node concept="Xl_RD" id="7fJvc3BiAfA" role="2Oq$k0">
                    <property role="Xl_RC" value="Caught on model load with %s from %s, no base revision for model %s" />
                  </node>
                  <node concept="2cAKMz" id="7fJvc3BiAfB" role="2OqNvi">
                    <node concept="37vLTw" id="7vnZ8Y08SE6" role="2cAKU6">
                      <ref role="3cqZAo" node="7fJvc3BiORo" resolve="factory" />
                    </node>
                    <node concept="37vLTw" id="7fJvc3BiHig" role="2cAKU6">
                      <ref role="3cqZAo" node="7nu2Tk19E$3" resolve="source" />
                    </node>
                    <node concept="2OqwBi" id="7fJvc3Bk1nU" role="2cAKU6">
                      <node concept="37vLTw" id="7fJvc3BjXFQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2LgKyNJ3x2V" resolve="model" />
                      </node>
                      <node concept="LkI2h" id="7fJvc3Bk3yH" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7fJvc3Bifxj" role="RRSow">
                  <ref role="3cqZAo" node="7fJvc3BfKOp" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7fJvc3BfHg7" role="1zxBo7">
            <node concept="3clFbJ" id="7l6b$Kxs8e6" role="3cqZAp">
              <node concept="3clFbC" id="7l6b$Kxs8e8" role="3clFbw">
                <node concept="10Nm6u" id="7l6b$Kxs8ea" role="3uHU7w" />
                <node concept="37vLTw" id="7vnZ8Y08kT5" role="3uHU7B">
                  <ref role="3cqZAo" node="7fJvc3BiORo" resolve="factory" />
                </node>
              </node>
              <node concept="3clFbS" id="7l6b$Kxs8ed" role="3clFbx">
                <node concept="3clFbF" id="7vnZ8Y08jfS" role="3cqZAp">
                  <node concept="37vLTI" id="7vnZ8Y08jfU" role="3clFbG">
                    <node concept="2OqwBi" id="7l6b$Kxs8e2" role="37vLTx">
                      <node concept="2OqwBi" id="ku3LtoUny9" role="2Oq$k0">
                        <node concept="37vLTw" id="ku3LtoUldz" role="2Oq$k0">
                          <ref role="3cqZAo" node="7vnZ8Y08dYu" resolve="mpsPlatform" />
                        </node>
                        <node concept="liA8E" id="ku3LtoUpLU" role="2OqNvi">
                          <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                          <node concept="3VsKOn" id="ku3LtoUtHC" role="37wK5m">
                            <ref role="3VsUkX" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7vnZ8Y08gZ_" role="2OqNvi">
                        <ref role="37wK5l" to="ends:~ModelFactoryService.getDefaultModelFactory(org.jetbrains.mps.openapi.persistence.datasource.DataSourceType)" resolve="getDefaultModelFactory" />
                        <node concept="2OqwBi" id="7vnZ8Y08ixo" role="37wK5m">
                          <node concept="37vLTw" id="7vnZ8Y08hJK" role="2Oq$k0">
                            <ref role="3cqZAo" node="7nu2Tk19E$3" resolve="source" />
                          </node>
                          <node concept="liA8E" id="7vnZ8Y08j2g" role="2OqNvi">
                            <ref role="37wK5l" node="7l6b$Kxs8ep" resolve="getType" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7vnZ8Y08jiQ" role="37vLTJ">
                      <ref role="3cqZAo" node="7fJvc3BiORo" resolve="factory" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7vnZ8Y08kWi" role="3cqZAp">
              <node concept="3clFbS" id="7vnZ8Y08kWk" role="3clFbx">
                <node concept="RRSsy" id="7fJvc3BkfZS" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fksE/warn" />
                  <node concept="2OqwBi" id="7fJvc3BkKX9" role="RRSoy">
                    <node concept="Xl_RD" id="7fJvc3BkfZU" role="2Oq$k0">
                      <property role="Xl_RC" value="Could not find a suitable model factory to access base revision of model %s" />
                    </node>
                    <node concept="2cAKMz" id="7fJvc3BkNsx" role="2OqNvi">
                      <node concept="2OqwBi" id="7fJvc3BkZbw" role="2cAKU6">
                        <node concept="37vLTw" id="7fJvc3BkPFF" role="2Oq$k0">
                          <ref role="3cqZAo" node="2LgKyNJ3x2V" resolve="model" />
                        </node>
                        <node concept="LkI2h" id="7fJvc3Bl1XJ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7fJvc3Bl9Q0" role="3cqZAp">
                  <node concept="10Nm6u" id="7fJvc3Blb9S" role="3cqZAk" />
                </node>
              </node>
              <node concept="3clFbC" id="7vnZ8Y08lPt" role="3clFbw">
                <node concept="10Nm6u" id="7vnZ8Y08lQF" role="3uHU7w" />
                <node concept="37vLTw" id="7vnZ8Y08kYd" role="3uHU7B">
                  <ref role="3cqZAo" node="7fJvc3BiORo" resolve="factory" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7l6b$Kxs8ej" role="3cqZAp">
              <node concept="3cpWsn" id="7l6b$Kxs8ei" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="baseRev" />
                <node concept="3uibUv" id="7l6b$KxsjRz" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="7l6b$Kxs8g2" role="33vP2m">
                  <node concept="liA8E" id="7l6b$Kxs8g3" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~ModelFactory.load(org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelLoadingOption...)" resolve="load" />
                    <node concept="37vLTw" id="7vnZ8Y08OEp" role="37wK5m">
                      <ref role="3cqZAo" node="7nu2Tk19E$3" resolve="source" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7vnZ8Y08O2d" role="2Oq$k0">
                    <ref role="3cqZAo" node="7fJvc3BiORo" resolve="factory" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7l6b$Kxs8ft" role="3cqZAp">
              <node concept="2OqwBi" id="7l6b$Kxs8lQ" role="3clFbG">
                <node concept="37vLTw" id="7l6b$Kxs8lP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7l6b$Kxs8ei" resolve="baseRev" />
                </node>
                <node concept="liA8E" id="7l6b$Kxs8lR" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.load()" resolve="load" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7l6b$Kxs8fv" role="3cqZAp">
              <node concept="37vLTw" id="7l6b$Kxs8fw" role="3cqZAk">
                <ref role="3cqZAo" node="7l6b$Kxs8ei" resolve="baseRev" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7fJvc3Bg17e" role="3cqZAp">
          <node concept="10Nm6u" id="7fJvc3Bg3mD" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="2LgKyNJ3x2V" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="2LgKyNJ46VY" role="1tU5fm" />
      </node>
      <node concept="H_c77" id="2LgKyNJ46jA" role="3clF45" />
      <node concept="3Tm1VV" id="2LgKyNJ2rJb" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7l6b$Kxs840" role="jymVt" />
    <node concept="2tJIrI" id="6ww30ZnlvlF" role="jymVt" />
    <node concept="312cEu" id="6ww30ZnlvGw" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RedirectingDataSource" />
      <node concept="312cEg" id="7vnZ8Y09h_m" role="jymVt">
        <property role="TrG5h" value="myOriginal" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6ww30ZnlCbh" role="1B3o_S" />
        <node concept="3uibUv" id="2KujyEVI6oK" role="1tU5fm">
          <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
        </node>
      </node>
      <node concept="312cEg" id="2KujyEVI8SB" role="jymVt">
        <property role="TrG5h" value="mySubs" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2KujyEVI8P$" role="1B3o_S" />
        <node concept="3uibUv" id="2KujyEVIdjl" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2KujyEVIdoV" role="11_B2D">
            <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2KujyEVJe4R" role="jymVt" />
      <node concept="3Tm6S6" id="6ww30Znlv$n" role="1B3o_S" />
      <node concept="3uibUv" id="6ww30ZnlvOV" role="1zkMxy">
        <ref role="3uigEE" to="pa15:~MultiStreamDataSourceBase" resolve="MultiStreamDataSourceBase" />
      </node>
      <node concept="3clFbW" id="7vnZ8Y08YxF" role="jymVt">
        <node concept="3cqZAl" id="7vnZ8Y08YxH" role="3clF45" />
        <node concept="3Tm6S6" id="7vnZ8Y08YxI" role="1B3o_S" />
        <node concept="3clFbS" id="7vnZ8Y08YxJ" role="3clF47">
          <node concept="XkiVB" id="FrvtFCesmK" role="3cqZAp">
            <ref role="37wK5l" to="pa15:~MultiStreamDataSourceBase.&lt;init&gt;(java.lang.String)" resolve="MultiStreamDataSourceBase" />
            <node concept="Xl_RD" id="FrvtFCespe" role="37wK5m">
              <property role="Xl_RC" value="IJ VCSVFS" />
            </node>
          </node>
          <node concept="3clFbF" id="7vnZ8Y09hCo" role="3cqZAp">
            <node concept="37vLTI" id="7vnZ8Y09iMb" role="3clFbG">
              <node concept="37vLTw" id="7vnZ8Y09iOx" role="37vLTx">
                <ref role="3cqZAo" node="7vnZ8Y08Yzj" resolve="original" />
              </node>
              <node concept="37vLTw" id="7vnZ8Y09hCn" role="37vLTJ">
                <ref role="3cqZAo" node="7vnZ8Y09h_m" resolve="myOriginal" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2KujyEVIe9L" role="3cqZAp">
            <node concept="37vLTI" id="2KujyEVIeIU" role="3clFbG">
              <node concept="2OqwBi" id="FrvtFCetYq" role="37vLTx">
                <node concept="1rXfSq" id="2KujyEVJdZQ" role="2Oq$k0">
                  <ref role="37wK5l" node="Jpw4evHepW" resolve="convertSubStreams" />
                  <node concept="37vLTw" id="2KujyEVJdZP" role="37wK5m">
                    <ref role="3cqZAo" node="7vnZ8Y08Yzj" resolve="original" />
                  </node>
                  <node concept="37vLTw" id="Jpw4evID73" role="37wK5m">
                    <ref role="3cqZAo" node="2KujyEVJa_Y" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="FrvtFCeuw0" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                  <node concept="2YIFZM" id="FrvtFCeuYK" role="37wK5m">
                    <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                    <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                    <node concept="3uibUv" id="Jpw4evHc4a" role="3PaCim">
                      <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2KujyEVIe9J" role="37vLTJ">
                <ref role="3cqZAo" node="2KujyEVI8SB" resolve="mySubs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7vnZ8Y08Yzj" role="3clF46">
          <property role="TrG5h" value="original" />
          <node concept="3uibUv" id="2KujyEVI5FK" role="1tU5fm">
            <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
          </node>
          <node concept="2AHcQZ" id="2KujyEVHMcg" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2KujyEVJa_Y" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="2KujyEVJb3S" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7vnZ8Y08Yut" role="jymVt" />
      <node concept="2YIFZL" id="Jpw4evHepW" role="jymVt">
        <property role="TrG5h" value="convertSubStreams" />
        <node concept="3clFbS" id="2KujyEVJdXV" role="3clF47">
          <node concept="3cpWs8" id="Jpw4evIWmR" role="3cqZAp">
            <node concept="3cpWsn" id="Jpw4evIWmP" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="fsBridge" />
              <node concept="3uibUv" id="Jpw4evIZJ5" role="1tU5fm">
                <ref role="3uigEE" to="4hrd:~FileSystemBridge" resolve="FileSystemBridge" />
              </node>
              <node concept="2OqwBi" id="Jpw4evJkNr" role="33vP2m">
                <node concept="2YIFZM" id="Jpw4evJeh1" role="2Oq$k0">
                  <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="Jpw4evJhoz" role="37wK5m">
                    <ref role="3cqZAo" node="Jpw4evId25" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="Jpw4evJoip" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getFileSystem()" resolve="getFileSystem" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2KujyEVJdXW" role="3cqZAp">
            <node concept="2OqwBi" id="2KujyEVJdXX" role="3cqZAk">
              <node concept="2OqwBi" id="2KujyEVJdXY" role="2Oq$k0">
                <node concept="37vLTw" id="2KujyEVJdZI" role="2Oq$k0">
                  <ref role="3cqZAo" node="2KujyEVJdZG" resolve="original" />
                </node>
                <node concept="liA8E" id="2KujyEVJdY0" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~MultiStreamDataSource.getSubStreams()" resolve="getSubStreams" />
                </node>
              </node>
              <node concept="liA8E" id="2KujyEVJdY1" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.flatMap(java.util.function.Function)" resolve="flatMap" />
                <node concept="2ShNRf" id="2KujyEVJdY2" role="37wK5m">
                  <node concept="YeOm9" id="2KujyEVJdY3" role="2ShVmc">
                    <node concept="1Y3b0j" id="2KujyEVJdY4" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="82uw:~Function" resolve="Function" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2KujyEVJdY5" role="1B3o_S" />
                      <node concept="3clFb_" id="2KujyEVJdY6" role="jymVt">
                        <property role="TrG5h" value="apply" />
                        <node concept="3Tm1VV" id="2KujyEVJdY7" role="1B3o_S" />
                        <node concept="37vLTG" id="2KujyEVJdY8" role="3clF46">
                          <property role="TrG5h" value="dataSource" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="2KujyEVJdY9" role="1tU5fm">
                            <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2KujyEVJdYa" role="3clF47">
                          <node concept="3clFbJ" id="2KujyEVJdYb" role="3cqZAp">
                            <node concept="3clFbS" id="2KujyEVJdYc" role="3clFbx">
                              <node concept="3cpWs6" id="FrvtFCevK2" role="3cqZAp">
                                <node concept="2OqwBi" id="2KujyEVJdYe" role="3cqZAk">
                                  <node concept="2OqwBi" id="2KujyEVJdYf" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2KujyEVJdYg" role="2Oq$k0">
                                      <node concept="1eOMI4" id="2KujyEVJdYh" role="2Oq$k0">
                                        <node concept="10QFUN" id="2KujyEVJdYi" role="1eOMHV">
                                          <node concept="3uibUv" id="2KujyEVJdYj" role="10QFUM">
                                            <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                                          </node>
                                          <node concept="37vLTw" id="2KujyEVJdYk" role="10QFUP">
                                            <ref role="3cqZAo" node="2KujyEVJdY8" resolve="dataSource" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="2KujyEVJdYl" role="2OqNvi">
                                        <ref role="37wK5l" to="ends:~FileSystemBasedDataSource.getAffectedFilesWithDirsExtracted()" resolve="getAffectedFilesWithDirsExtracted" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="2KujyEVJdYm" role="2OqNvi">
                                      <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                                      <node concept="2ShNRf" id="2KujyEVJdYn" role="37wK5m">
                                        <node concept="YeOm9" id="2KujyEVJdYo" role="2ShVmc">
                                          <node concept="1Y3b0j" id="2KujyEVJdYp" role="YeSDq">
                                            <property role="2bfB8j" value="true" />
                                            <ref role="1Y3XeK" to="82uw:~Function" resolve="Function" />
                                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                            <node concept="3Tm1VV" id="2KujyEVJdYq" role="1B3o_S" />
                                            <node concept="3clFb_" id="2KujyEVJdYr" role="jymVt">
                                              <property role="TrG5h" value="apply" />
                                              <node concept="3Tm1VV" id="2KujyEVJdYs" role="1B3o_S" />
                                              <node concept="3uibUv" id="2KujyEVJdYt" role="3clF45">
                                                <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                                              </node>
                                              <node concept="37vLTG" id="2KujyEVJdYu" role="3clF46">
                                                <property role="TrG5h" value="file" />
                                                <node concept="3uibUv" id="2KujyEVJdYv" role="1tU5fm">
                                                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                                </node>
                                              </node>
                                              <node concept="3clFbS" id="2KujyEVJdYw" role="3clF47">
                                                <node concept="3clFbJ" id="2KujyEVJdYx" role="3cqZAp">
                                                  <node concept="3fqX7Q" id="2KujyEVJdYy" role="3clFbw">
                                                    <node concept="2OqwBi" id="2KujyEVJdYz" role="3fr31v">
                                                      <node concept="37vLTw" id="2KujyEVJdY$" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="2KujyEVJdYu" resolve="file" />
                                                      </node>
                                                      <node concept="liA8E" id="2KujyEVJdY_" role="2OqNvi">
                                                        <ref role="37wK5l" to="3ju5:~IFile.exists()" resolve="exists" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbS" id="2KujyEVJdYA" role="3clFbx">
                                                    <node concept="RRSsy" id="7nu2Tk19H0k" role="3cqZAp">
                                                      <property role="RRSoG" value="gZ5fksE/warn" />
                                                      <node concept="3cpWs3" id="7nu2Tk19HTu" role="RRSoy">
                                                        <node concept="Xl_RD" id="7nu2Tk19I4_" role="3uHU7w">
                                                          <property role="Xl_RC" value=" does not exist" />
                                                        </node>
                                                        <node concept="3cpWs3" id="7nu2Tk19Hp6" role="3uHU7B">
                                                          <node concept="Xl_RD" id="7nu2Tk19H0l" role="3uHU7B">
                                                            <property role="Xl_RC" value="The file " />
                                                          </node>
                                                          <node concept="37vLTw" id="7nu2Tk19H$h" role="3uHU7w">
                                                            <ref role="3cqZAo" node="2KujyEVJdYu" resolve="file" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3cpWs6" id="2KujyEVJdYB" role="3cqZAp">
                                                      <node concept="10Nm6u" id="2KujyEVJdYC" role="3cqZAk" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs8" id="2KujyEVJdYD" role="3cqZAp">
                                                  <node concept="3cpWsn" id="2KujyEVJdYE" role="3cpWs9">
                                                    <property role="TrG5h" value="vFile" />
                                                    <node concept="3uibUv" id="2KujyEVJdYF" role="1tU5fm">
                                                      <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                                                    </node>
                                                    <node concept="2OqwBi" id="Jpw4evJvIN" role="33vP2m">
                                                      <node concept="37vLTw" id="Jpw4evJu7U" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="Jpw4evIWmP" resolve="fsBridge" />
                                                      </node>
                                                      <node concept="liA8E" id="Jpw4evJyru" role="2OqNvi">
                                                        <ref role="37wK5l" to="4hrd:~FileSystemBridge.asVirtualFile(jetbrains.mps.vfs.IFile)" resolve="asVirtualFile" />
                                                        <node concept="37vLTw" id="Jpw4evJ_Fw" role="37wK5m">
                                                          <ref role="3cqZAo" node="2KujyEVJdYu" resolve="file" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="2KujyEVJdYI" role="3cqZAp">
                                                  <node concept="3clFbS" id="2KujyEVJdYJ" role="3clFbx">
                                                    <node concept="RRSsy" id="7nu2Tk19I4O" role="3cqZAp">
                                                      <property role="RRSoG" value="gZ5fksE/warn" />
                                                      <node concept="2OqwBi" id="Jpw4evJTAy" role="RRSoy">
                                                        <node concept="Xl_RD" id="7nu2Tk19I4S" role="2Oq$k0">
                                                          <property role="Xl_RC" value="No virtual file for %s" />
                                                        </node>
                                                        <node concept="2cAKMz" id="Jpw4evJWdv" role="2OqNvi">
                                                          <node concept="37vLTw" id="Jpw4evK053" role="2cAKU6">
                                                            <ref role="3cqZAo" node="2KujyEVJdYu" resolve="file" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3cpWs6" id="2KujyEVJdYK" role="3cqZAp">
                                                      <node concept="10Nm6u" id="2KujyEVJdYL" role="3cqZAk" />
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbC" id="2KujyEVJdYM" role="3clFbw">
                                                    <node concept="10Nm6u" id="2KujyEVJdYN" role="3uHU7w" />
                                                    <node concept="37vLTw" id="2KujyEVJdYO" role="3uHU7B">
                                                      <ref role="3cqZAo" node="2KujyEVJdYE" resolve="vFile" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="3o_pIpUdzCM" role="3cqZAp">
                                                  <node concept="1rXfSq" id="3o_pIpUdzCN" role="3clFbw">
                                                    <ref role="37wK5l" node="3o_pIpUcNpz" resolve="isUnderVcsButNoBaseVersion" />
                                                    <node concept="37vLTw" id="3o_pIpUdzCO" role="37wK5m">
                                                      <ref role="3cqZAo" node="2KujyEVJdYE" resolve="vFile" />
                                                    </node>
                                                    <node concept="2YIFZM" id="3o_pIpUdBnI" role="37wK5m">
                                                      <ref role="1Pybhc" to="1037:~ChangeListManager" resolve="ChangeListManager" />
                                                      <ref role="37wK5l" to="1037:~ChangeListManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                                      <node concept="37vLTw" id="3o_pIpUdBnJ" role="37wK5m">
                                                        <ref role="3cqZAo" node="Jpw4evId25" resolve="project" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbS" id="3o_pIpUdzCS" role="3clFbx">
                                                    <node concept="3SKdUt" id="3o_pIpUeFoI" role="3cqZAp">
                                                      <node concept="1PaTwC" id="3o_pIpUeFoJ" role="1aUNEU">
                                                        <node concept="3oM_SD" id="3o_pIpUeFoK" role="1PaTwD">
                                                          <property role="3oM_SC" value="it" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJ5V" role="1PaTwD">
                                                          <property role="3oM_SC" value="is" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJ6H" role="1PaTwD">
                                                          <property role="3oM_SC" value="normal:" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJae" role="1PaTwD">
                                                          <property role="3oM_SC" value="the" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJcv" role="1PaTwD">
                                                          <property role="3oM_SC" value="model" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJe0" role="1PaTwD">
                                                          <property role="3oM_SC" value="or" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJeL" role="1PaTwD">
                                                          <property role="3oM_SC" value="root" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJfy" role="1PaTwD">
                                                          <property role="3oM_SC" value="is" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJh3" role="1PaTwD">
                                                          <property role="3oM_SC" value="just" />
                                                        </node>
                                                        <node concept="3oM_SD" id="3o_pIpUeJh4" role="1PaTwD">
                                                          <property role="3oM_SC" value="added" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="RRSsy" id="3o_pIpUewVJ" role="3cqZAp">
                                                      <property role="RRSoG" value="h1akgim/info" />
                                                      <node concept="3cpWs3" id="3o_pIpUewVK" role="RRSoy">
                                                        <node concept="37vLTw" id="3o_pIpUewVL" role="3uHU7w">
                                                          <ref role="3cqZAo" node="2KujyEVJdYu" resolve="file" />
                                                        </node>
                                                        <node concept="Xl_RD" id="3o_pIpUewVM" role="3uHU7B">
                                                          <property role="Xl_RC" value="before revision is null for " />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3cpWs6" id="3o_pIpUdzD2" role="3cqZAp">
                                                      <node concept="10Nm6u" id="3o_pIpUdzD3" role="3cqZAk" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbH" id="3o_pIpUdxuK" role="3cqZAp" />
                                                <node concept="3cpWs6" id="2KujyEVJdZ2" role="3cqZAp">
                                                  <node concept="2ShNRf" id="2KujyEVJdZ3" role="3cqZAk">
                                                    <node concept="1pGfFk" id="2KujyEVJdZ4" role="2ShVmc">
                                                      <ref role="37wK5l" node="7HnJnLuDwor" resolve="BaseVersionModelLoader.RedirectingDataSource.StreamRelay" />
                                                      <node concept="2OqwBi" id="FrvtFCewIO" role="37wK5m">
                                                        <node concept="37vLTw" id="FrvtFCew9X" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="2KujyEVJdY8" resolve="dataSource" />
                                                        </node>
                                                        <node concept="liA8E" id="FrvtFCewWH" role="2OqNvi">
                                                          <ref role="37wK5l" to="dush:~StreamDataSource.getStreamName()" resolve="getStreamName" />
                                                        </node>
                                                      </node>
                                                      <node concept="2OqwBi" id="FrvtFCeydG" role="37wK5m">
                                                        <node concept="37vLTw" id="FrvtFCexOY" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="2KujyEVJdY8" resolve="dataSource" />
                                                        </node>
                                                        <node concept="liA8E" id="FrvtFCeyoU" role="2OqNvi">
                                                          <ref role="37wK5l" to="dush:~DataSource.getLocation()" resolve="getLocation" />
                                                        </node>
                                                      </node>
                                                      <node concept="37vLTw" id="7HnJnLuE6k4" role="37wK5m">
                                                        <ref role="3cqZAo" node="Jpw4evId25" resolve="project" />
                                                      </node>
                                                      <node concept="37vLTw" id="7HnJnLuEaHC" role="37wK5m">
                                                        <ref role="3cqZAo" node="2KujyEVJdYE" resolve="vFile" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2AHcQZ" id="2KujyEVJdZ6" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                            <node concept="3uibUv" id="2KujyEVJdZ7" role="2Ghqu4">
                                              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                            </node>
                                            <node concept="3uibUv" id="2KujyEVJdZ8" role="2Ghqu4">
                                              <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2KujyEVJdZ9" role="2OqNvi">
                                    <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                                    <node concept="37Ijox" id="Jpw4evKfv7" role="37wK5m">
                                      <ref role="37Ijqf" to="33ny:~Objects.nonNull(java.lang.Object)" resolve="nonNull" />
                                      <node concept="2FaPjH" id="Jpw4evKfv9" role="wWaWy">
                                        <node concept="3uibUv" id="Jpw4evKfva" role="2FaQuo">
                                          <ref role="3uigEE" to="33ny:~Objects" resolve="Objects" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2ZW3vV" id="2KujyEVJdZq" role="3clFbw">
                              <node concept="3uibUv" id="2KujyEVJdZr" role="2ZW6by">
                                <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                              </node>
                              <node concept="37vLTw" id="2KujyEVJdZs" role="2ZW6bz">
                                <ref role="3cqZAo" node="2KujyEVJdY8" resolve="dataSource" />
                              </node>
                            </node>
                          </node>
                          <node concept="RRSsy" id="2KujyEVJdZt" role="3cqZAp">
                            <property role="RRSoG" value="gZ5fksE/warn" />
                            <node concept="3cpWs3" id="2KujyEVJdZu" role="RRSoy">
                              <node concept="Xl_RD" id="2KujyEVJdZv" role="3uHU7w">
                                <property role="Xl_RC" value=" is not file-based" />
                              </node>
                              <node concept="3cpWs3" id="2KujyEVJdZw" role="3uHU7B">
                                <node concept="Xl_RD" id="2KujyEVJdZx" role="3uHU7B">
                                  <property role="Xl_RC" value="The ds " />
                                </node>
                                <node concept="37vLTw" id="2KujyEVJdZy" role="3uHU7w">
                                  <ref role="3cqZAo" node="2KujyEVJdY8" resolve="dataSource" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="2KujyEVJdZz" role="3cqZAp">
                            <node concept="2YIFZM" id="2KujyEVJdZ$" role="3cqZAk">
                              <ref role="37wK5l" to="1ctc:~Stream.empty()" resolve="empty" />
                              <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
                              <node concept="3uibUv" id="2KujyEVJdZ_" role="3PaCim">
                                <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2KujyEVJdZA" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="3uibUv" id="2KujyEVJdZB" role="3clF45">
                          <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
                          <node concept="3uibUv" id="2KujyEVJdZC" role="11_B2D">
                            <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="2KujyEVJdZD" role="2Ghqu4">
                        <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                      </node>
                      <node concept="3uibUv" id="2KujyEVJdZE" role="2Ghqu4">
                        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
                        <node concept="3uibUv" id="2KujyEVJdZF" role="11_B2D">
                          <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2KujyEVJdZG" role="3clF46">
          <property role="TrG5h" value="original" />
          <node concept="3uibUv" id="2KujyEVJdZH" role="1tU5fm">
            <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
          </node>
        </node>
        <node concept="37vLTG" id="Jpw4evId25" role="3clF46">
          <property role="TrG5h" value="project" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="Jpw4evIflT" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="3uibUv" id="2KujyEVJdZN" role="3clF45">
          <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
          <node concept="3uibUv" id="2KujyEVJdZO" role="11_B2D">
            <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
          </node>
        </node>
        <node concept="3Tm6S6" id="2KujyEVJdZM" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="7vnZ8Y08Ywc" role="jymVt" />
      <node concept="3clFb_" id="6ww30Znlylc" role="jymVt">
        <property role="TrG5h" value="getSubStreams" />
        <node concept="3Tm1VV" id="6ww30Znlyld" role="1B3o_S" />
        <node concept="2AHcQZ" id="6ww30Znlylf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6ww30Znlylg" role="3clF45">
          <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
          <node concept="3uibUv" id="6ww30Znlylh" role="11_B2D">
            <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
          </node>
        </node>
        <node concept="3clFbS" id="6ww30Znlyll" role="3clF47">
          <node concept="3cpWs6" id="2KujyEVI8NO" role="3cqZAp">
            <node concept="2OqwBi" id="FrvtFCez5w" role="3cqZAk">
              <node concept="37vLTw" id="2KujyEVI8VN" role="2Oq$k0">
                <ref role="3cqZAo" node="2KujyEVI8SB" resolve="mySubs" />
              </node>
              <node concept="liA8E" id="FrvtFCezMc" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6ww30Znlylm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6ww30ZnlBUD" role="jymVt" />
      <node concept="3clFb_" id="7l6b$Kxs8ep" role="jymVt">
        <property role="TrG5h" value="getType" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="7l6b$Kxs8eq" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="7l6b$Kxs8er" role="3clF47">
          <node concept="3cpWs6" id="7l6b$Kxs8es" role="3cqZAp">
            <node concept="2OqwBi" id="2KujyEVI9ZR" role="3cqZAk">
              <node concept="37vLTw" id="2KujyEVI8ZU" role="2Oq$k0">
                <ref role="3cqZAo" node="7vnZ8Y09h_m" resolve="myOriginal" />
              </node>
              <node concept="liA8E" id="2KujyEVIazT" role="2OqNvi">
                <ref role="37wK5l" to="dush:~DataSource.getType()" resolve="getType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7l6b$Kxs8eu" role="1B3o_S" />
        <node concept="3uibUv" id="7l6b$Kxsm6I" role="3clF45">
          <ref role="3uigEE" to="bxo2:~DataSourceType" resolve="DataSourceType" />
        </node>
      </node>
      <node concept="2tJIrI" id="2KujyEVIaAg" role="jymVt" />
      <node concept="3clFb_" id="2KujyEVIaCv" role="jymVt">
        <property role="TrG5h" value="isReadOnly" />
        <node concept="3Tm1VV" id="2KujyEVIaCw" role="1B3o_S" />
        <node concept="10P_77" id="2KujyEVIaCy" role="3clF45" />
        <node concept="3clFbS" id="2KujyEVIaCz" role="3clF47">
          <node concept="3clFbF" id="2KujyEVIaFO" role="3cqZAp">
            <node concept="3clFbT" id="2KujyEVIaFN" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2KujyEVIaC$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2KujyEVIcto" role="jymVt" />
      <node concept="3clFb_" id="FrvtFCe$f8" role="jymVt">
        <property role="TrG5h" value="exists" />
        <node concept="3Tm1VV" id="FrvtFCe$f9" role="1B3o_S" />
        <node concept="10P_77" id="FrvtFCe$fa" role="3clF45" />
        <node concept="3clFbS" id="FrvtFCe$fb" role="3clF47">
          <node concept="3clFbF" id="FrvtFCe$fc" role="3cqZAp">
            <node concept="3clFbT" id="FrvtFCe$fd" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="FrvtFCe$fe" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7HnJnLuClHz" role="jymVt" />
      <node concept="312cEu" id="7HnJnLuCteO" role="jymVt">
        <property role="TrG5h" value="StreamRelay" />
        <node concept="312cEg" id="7HnJnLuDv0z" role="jymVt">
          <property role="TrG5h" value="myProject" />
          <property role="3TUv4t" value="true" />
          <node concept="3Tm6S6" id="7HnJnLuDu_s" role="1B3o_S" />
          <node concept="3uibUv" id="7HnJnLuDuUJ" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="312cEg" id="7HnJnLuDvUU" role="jymVt">
          <property role="TrG5h" value="myFile" />
          <property role="3TUv4t" value="true" />
          <node concept="3Tm6S6" id="7HnJnLuDvsH" role="1B3o_S" />
          <node concept="3uibUv" id="7HnJnLuDvMr" role="1tU5fm">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
        <node concept="3clFbW" id="7HnJnLuDwor" role="jymVt">
          <node concept="3cqZAl" id="7HnJnLuDwot" role="3clF45" />
          <node concept="3Tm6S6" id="7HnJnLuDwou" role="1B3o_S" />
          <node concept="3clFbS" id="7HnJnLuDwov" role="3clF47">
            <node concept="XkiVB" id="7HnJnLuDxJq" role="3cqZAp">
              <ref role="37wK5l" to="pa15:~StreamDataSourceBase.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="StreamDataSourceBase" />
              <node concept="37vLTw" id="7HnJnLuDxUY" role="37wK5m">
                <ref role="3cqZAo" node="7HnJnLuDwIm" resolve="name" />
              </node>
              <node concept="37vLTw" id="7HnJnLuDyjR" role="37wK5m">
                <ref role="3cqZAo" node="7HnJnLuDwKo" resolve="location" />
              </node>
            </node>
            <node concept="3clFbF" id="7HnJnLuD$6$" role="3cqZAp">
              <node concept="37vLTI" id="7HnJnLuD_mV" role="3clFbG">
                <node concept="37vLTw" id="7HnJnLuD_KN" role="37vLTx">
                  <ref role="3cqZAo" node="7HnJnLuDwRN" resolve="project" />
                </node>
                <node concept="37vLTw" id="7HnJnLuD$6y" role="37vLTJ">
                  <ref role="3cqZAo" node="7HnJnLuDv0z" resolve="myProject" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7HnJnLuD_XH" role="3cqZAp">
              <node concept="37vLTI" id="7HnJnLuDAZ4" role="3clFbG">
                <node concept="37vLTw" id="7HnJnLuDBgM" role="37vLTx">
                  <ref role="3cqZAo" node="7HnJnLuDx8i" resolve="file" />
                </node>
                <node concept="37vLTw" id="7HnJnLuD_XF" role="37vLTJ">
                  <ref role="3cqZAo" node="7HnJnLuDvUU" resolve="myFile" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="7HnJnLuDwIm" role="3clF46">
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="7HnJnLuDwIl" role="1tU5fm" />
          </node>
          <node concept="37vLTG" id="7HnJnLuDwKo" role="3clF46">
            <property role="TrG5h" value="location" />
            <node concept="17QB3L" id="7HnJnLuDwPQ" role="1tU5fm" />
          </node>
          <node concept="37vLTG" id="7HnJnLuDwRN" role="3clF46">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="7HnJnLuDx1v" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
          </node>
          <node concept="37vLTG" id="7HnJnLuDx8i" role="3clF46">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="7HnJnLuDxeE" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="7HnJnLuDBi7" role="jymVt" />
        <node concept="3Tm6S6" id="7HnJnLuCqMn" role="1B3o_S" />
        <node concept="3uibUv" id="7HnJnLuDu7A" role="1zkMxy">
          <ref role="3uigEE" to="pa15:~StreamDataSourceBase" resolve="StreamDataSourceBase" />
        </node>
        <node concept="3clFb_" id="7HnJnLuDBwr" role="jymVt">
          <property role="TrG5h" value="openInputStream" />
          <node concept="3Tm1VV" id="7HnJnLuDBws" role="1B3o_S" />
          <node concept="2AHcQZ" id="7HnJnLuDBwu" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="7HnJnLuDBwv" role="3clF45">
            <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
          </node>
          <node concept="3uibUv" id="7HnJnLuDBww" role="Sfmx6">
            <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
          </node>
          <node concept="3clFbS" id="7HnJnLuDBw$" role="3clF47">
            <node concept="3cpWs8" id="Jpw4evI2V0" role="3cqZAp">
              <node concept="3cpWsn" id="Jpw4evI2V1" role="3cpWs9">
                <property role="TrG5h" value="clManager" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="Jpw4evI0O4" role="1tU5fm">
                  <ref role="3uigEE" to="1037:~ChangeListManager" resolve="ChangeListManager" />
                </node>
                <node concept="2YIFZM" id="Jpw4evI2V2" role="33vP2m">
                  <ref role="37wK5l" to="1037:~ChangeListManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                  <ref role="1Pybhc" to="1037:~ChangeListManager" resolve="ChangeListManager" />
                  <node concept="37vLTw" id="Jpw4evI2V3" role="37wK5m">
                    <ref role="3cqZAo" node="7HnJnLuDv0z" resolve="myProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7HnJnLuDNdX" role="3cqZAp">
              <node concept="3cpWsn" id="7HnJnLuDNdY" role="3cpWs9">
                <property role="TrG5h" value="data" />
                <node concept="10Q1$e" id="7HnJnLuDNdZ" role="1tU5fm">
                  <node concept="10PrrI" id="7HnJnLuDNe0" role="10Q1$1" />
                </node>
                <node concept="1rXfSq" id="7HnJnLuDNe1" role="33vP2m">
                  <ref role="37wK5l" node="Jpw4evHqMS" resolve="getBaseVersionContent" />
                  <node concept="37vLTw" id="7HnJnLuDNe2" role="37wK5m">
                    <ref role="3cqZAo" node="7HnJnLuDvUU" resolve="myFile" />
                  </node>
                  <node concept="37vLTw" id="7HnJnLuDNe3" role="37wK5m">
                    <ref role="3cqZAo" node="Jpw4evI2V1" resolve="clManager" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7HnJnLuDNe4" role="3cqZAp">
              <node concept="3clFbS" id="7HnJnLuDNe5" role="3clFbx">
                <node concept="YS8fn" id="7HnJnLuEznB" role="3cqZAp">
                  <node concept="2ShNRf" id="7HnJnLuE$YN" role="YScLw">
                    <node concept="1pGfFk" id="7HnJnLuEFof" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String)" resolve="IOException" />
                      <node concept="2OqwBi" id="7HnJnLuF3mn" role="37wK5m">
                        <node concept="Xl_RD" id="7HnJnLuEJ89" role="2Oq$k0">
                          <property role="Xl_RC" value="Couldn't retrieve content for stream %s from file %s" />
                        </node>
                        <node concept="2cAKMz" id="7HnJnLuF6EC" role="2OqNvi">
                          <node concept="1rXfSq" id="7HnJnLuF8HN" role="2cAKU6">
                            <ref role="37wK5l" to="pa15:~StreamDataSourceBase.getLocation()" resolve="getLocation" />
                          </node>
                          <node concept="37vLTw" id="7HnJnLuFbQD" role="2cAKU6">
                            <ref role="3cqZAo" node="7HnJnLuDvUU" resolve="myFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7HnJnLuDNe8" role="3clFbw">
                <node concept="10Nm6u" id="7HnJnLuDNe9" role="3uHU7w" />
                <node concept="37vLTw" id="7HnJnLuDNea" role="3uHU7B">
                  <ref role="3cqZAo" node="7HnJnLuDNdY" resolve="data" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7HnJnLuEjex" role="3cqZAp">
              <node concept="2ShNRf" id="7HnJnLuEl2B" role="3cqZAk">
                <node concept="1pGfFk" id="7HnJnLuEvwy" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="guwi:~ByteArrayInputStream.&lt;init&gt;(byte[])" resolve="ByteArrayInputStream" />
                  <node concept="37vLTw" id="7HnJnLuExDG" role="37wK5m">
                    <ref role="3cqZAo" node="7HnJnLuDNdY" resolve="data" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="7HnJnLuDBw_" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="7HnJnLuFggi" role="jymVt" />
        <node concept="3clFb_" id="7HnJnLuDBwC" role="jymVt">
          <property role="TrG5h" value="openOutputStream" />
          <node concept="3Tm1VV" id="7HnJnLuDBwD" role="1B3o_S" />
          <node concept="2AHcQZ" id="7HnJnLuDBwF" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="7HnJnLuDBwG" role="3clF45">
            <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
          </node>
          <node concept="3uibUv" id="7HnJnLuDBwH" role="Sfmx6">
            <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
          </node>
          <node concept="3clFbS" id="7HnJnLuDBwL" role="3clF47">
            <node concept="YS8fn" id="7HnJnLuDIzE" role="3cqZAp">
              <node concept="2ShNRf" id="7HnJnLuDJ2I" role="YScLw">
                <node concept="1pGfFk" id="7HnJnLuDMex" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="7HnJnLuDBwM" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="7HnJnLuDFG2" role="jymVt" />
        <node concept="3clFb_" id="7HnJnLuDBwP" role="jymVt">
          <property role="TrG5h" value="exists" />
          <node concept="3Tm1VV" id="7HnJnLuDBwQ" role="1B3o_S" />
          <node concept="10P_77" id="7HnJnLuDBwS" role="3clF45" />
          <node concept="3clFbS" id="7HnJnLuDBwW" role="3clF47">
            <node concept="3clFbF" id="7HnJnLuDBwZ" role="3cqZAp">
              <node concept="3clFbT" id="7HnJnLuDBwY" role="3clFbG">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="7HnJnLuDBwX" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="7HnJnLuDBx0" role="jymVt">
          <property role="TrG5h" value="isReadOnly" />
          <node concept="3Tm1VV" id="7HnJnLuDBx1" role="1B3o_S" />
          <node concept="10P_77" id="7HnJnLuDBx3" role="3clF45" />
          <node concept="3clFbS" id="7HnJnLuDBxa" role="3clF47">
            <node concept="3clFbF" id="7HnJnLuDBxd" role="3cqZAp">
              <node concept="3clFbT" id="7HnJnLuDBxc" role="3clFbG">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="7HnJnLuDBxb" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="FrvtFCe$1h" role="jymVt" />
      <node concept="2YIFZL" id="3o_pIpUcNpz" role="jymVt">
        <property role="TrG5h" value="isUnderVcsButNoBaseVersion" />
        <node concept="37vLTG" id="3o_pIpUcRTu" role="3clF46">
          <property role="TrG5h" value="file" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3o_pIpUcRTv" role="1tU5fm">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
          <node concept="2AHcQZ" id="3o_pIpUcRTw" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="3o_pIpUcRTx" role="3clF46">
          <property role="TrG5h" value="clManager" />
          <node concept="3uibUv" id="3o_pIpUcRTy" role="1tU5fm">
            <ref role="3uigEE" to="1037:~ChangeListManager" resolve="ChangeListManager" />
          </node>
        </node>
        <node concept="3clFbS" id="3o_pIpUcNpA" role="3clF47">
          <node concept="3cpWs8" id="3o_pIpUd68b" role="3cqZAp">
            <node concept="3cpWsn" id="3o_pIpUd68a" role="3cpWs9">
              <property role="TrG5h" value="change" />
              <node concept="3uibUv" id="3o_pIpUd68c" role="1tU5fm">
                <ref role="3uigEE" to="1037:~Change" resolve="Change" />
              </node>
              <node concept="2OqwBi" id="3o_pIpUd6Fb" role="33vP2m">
                <node concept="37vLTw" id="3o_pIpUd6p9" role="2Oq$k0">
                  <ref role="3cqZAo" node="3o_pIpUcRTx" resolve="clManager" />
                </node>
                <node concept="liA8E" id="3o_pIpUd6Fc" role="2OqNvi">
                  <ref role="37wK5l" to="1037:~ChangeListManager.getChange(com.intellij.openapi.vfs.VirtualFile)" resolve="getChange" />
                  <node concept="37vLTw" id="3o_pIpUd6Fd" role="37wK5m">
                    <ref role="3cqZAo" node="3o_pIpUcRTu" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3o_pIpUd68f" role="3cqZAp">
            <node concept="1Wc70l" id="3o_pIpUd68g" role="3cqZAk">
              <node concept="3y3z36" id="3o_pIpUd68h" role="3uHU7B">
                <node concept="37vLTw" id="3o_pIpUd68i" role="3uHU7B">
                  <ref role="3cqZAo" node="3o_pIpUd68a" resolve="change" />
                </node>
                <node concept="10Nm6u" id="3o_pIpUd68j" role="3uHU7w" />
              </node>
              <node concept="3clFbC" id="3o_pIpUd68k" role="3uHU7w">
                <node concept="2OqwBi" id="3o_pIpUd6El" role="3uHU7B">
                  <node concept="37vLTw" id="3o_pIpUd6ph" role="2Oq$k0">
                    <ref role="3cqZAo" node="3o_pIpUd68a" resolve="change" />
                  </node>
                  <node concept="liA8E" id="3o_pIpUd6Em" role="2OqNvi">
                    <ref role="37wK5l" to="1037:~Change.getBeforeRevision()" resolve="getBeforeRevision" />
                  </node>
                </node>
                <node concept="10Nm6u" id="3o_pIpUd68m" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="3o_pIpUcIFk" role="1B3o_S" />
        <node concept="10P_77" id="3o_pIpUcNaL" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="3o_pIpUcSku" role="jymVt" />
      <node concept="2YIFZL" id="Jpw4evHqMS" role="jymVt">
        <property role="TrG5h" value="getBaseVersionContent" />
        <node concept="2AHcQZ" id="f7MobKgkFp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="2F$QDg9Ev8X" role="3clF47">
          <node concept="3SKdUt" id="2bNoq9f5X$Q" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXom4Y" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXom4Z" role="1PaTwD">
                <property role="3oM_SC" value="returns" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom50" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom51" role="1PaTwD">
                <property role="3oM_SC" value="same" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom52" role="1PaTwD">
                <property role="3oM_SC" value="content" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom53" role="1PaTwD">
                <property role="3oM_SC" value="if" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom54" role="1PaTwD">
                <property role="3oM_SC" value="file" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom55" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom56" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom57" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom58" role="1PaTwD">
                <property role="3oM_SC" value="changelist" />
              </node>
            </node>
          </node>
          <node concept="3J1_TO" id="6E4VEGZQxD1" role="3cqZAp">
            <node concept="3uVAMA" id="6E4VEGZQxD4" role="1zxBo5">
              <node concept="XOnhg" id="6E4VEGZQxD5" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="ex" />
                <node concept="nSUau" id="xvs04dIfLU" role="1tU5fm">
                  <node concept="3uibUv" id="6E4VEGZQxD_" role="nSUat">
                    <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6E4VEGZQxD7" role="1zc67A">
                <node concept="RRSsy" id="3jYQuSB33Vk" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fksE/warn" />
                  <node concept="3cpWs3" id="2bNoq9f602j" role="RRSoy">
                    <node concept="2OqwBi" id="2bNoq9f62Se" role="3uHU7w">
                      <node concept="37vLTw" id="2bNoq9f603t" role="2Oq$k0">
                        <ref role="3cqZAo" node="2F$QDg9Evf9" resolve="file" />
                      </node>
                      <node concept="liA8E" id="2bNoq9f63_0" role="2OqNvi">
                        <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4DwLRp1qL_" role="3uHU7B">
                      <property role="Xl_RC" value="VcsException during getting base version content of file " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTzrb" role="RRSow">
                    <ref role="3cqZAo" node="6E4VEGZQxD5" resolve="ex" />
                  </node>
                </node>
                <node concept="3cpWs6" id="6E4VEGZQxDB" role="3cqZAp">
                  <node concept="1rXfSq" id="7nu2Tk19IRb" role="3cqZAk">
                    <ref role="37wK5l" node="Jpw4evHk61" resolve="loadCurrentFile" />
                    <node concept="37vLTw" id="7nu2Tk19IT9" role="37wK5m">
                      <ref role="3cqZAo" node="2F$QDg9Evf9" resolve="file" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6E4VEGZQxD2" role="1zxBo7">
              <node concept="3cpWs8" id="2bNoq9f5JjK" role="3cqZAp">
                <node concept="3cpWsn" id="2bNoq9f5JjL" role="3cpWs9">
                  <property role="TrG5h" value="change" />
                  <node concept="3uibUv" id="2bNoq9f5JjE" role="1tU5fm">
                    <ref role="3uigEE" to="1037:~Change" resolve="Change" />
                  </node>
                  <node concept="2OqwBi" id="2bNoq9f5JjM" role="33vP2m">
                    <node concept="37vLTw" id="Jpw4evHRYX" role="2Oq$k0">
                      <ref role="3cqZAo" node="Jpw4evH_ka" resolve="clManager" />
                    </node>
                    <node concept="liA8E" id="2bNoq9f5JjO" role="2OqNvi">
                      <ref role="37wK5l" to="1037:~ChangeListManager.getChange(com.intellij.openapi.vfs.VirtualFile)" resolve="getChange" />
                      <node concept="37vLTw" id="2bNoq9f5JjP" role="37wK5m">
                        <ref role="3cqZAo" node="2F$QDg9Evf9" resolve="file" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2bNoq9f89KU" role="3cqZAp" />
              <node concept="3clFbJ" id="2bNoq9f87cU" role="3cqZAp">
                <node concept="3clFbS" id="2bNoq9f87cV" role="3clFbx">
                  <node concept="3SKdUt" id="2bNoq9f87cW" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXom59" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXom5a" role="1PaTwD">
                        <property role="3oM_SC" value="no" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom5b" role="1PaTwD">
                        <property role="3oM_SC" value="changes," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom5c" role="1PaTwD">
                        <property role="3oM_SC" value="use" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom5d" role="1PaTwD">
                        <property role="3oM_SC" value="current" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom5e" role="1PaTwD">
                        <property role="3oM_SC" value="file" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom5f" role="1PaTwD">
                        <property role="3oM_SC" value="content" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="7nu2Tk19I_7" role="3cqZAp">
                    <node concept="1rXfSq" id="7nu2Tk19I_6" role="3cqZAk">
                      <ref role="37wK5l" node="Jpw4evHk61" resolve="loadCurrentFile" />
                      <node concept="37vLTw" id="7nu2Tk19I_5" role="37wK5m">
                        <ref role="3cqZAo" node="2F$QDg9Evf9" resolve="file" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2bNoq9f87da" role="3clFbw">
                  <node concept="10Nm6u" id="2bNoq9f87db" role="3uHU7w" />
                  <node concept="37vLTw" id="2bNoq9f87dc" role="3uHU7B">
                    <ref role="3cqZAo" node="2bNoq9f5JjL" resolve="change" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2bNoq9f86Sy" role="3cqZAp" />
              <node concept="3cpWs8" id="2bNoq9f5K4k" role="3cqZAp">
                <node concept="3cpWsn" id="2bNoq9f5K4l" role="3cpWs9">
                  <property role="TrG5h" value="beforeRevision" />
                  <node concept="3uibUv" id="2bNoq9f5K4g" role="1tU5fm">
                    <ref role="3uigEE" to="1037:~ContentRevision" resolve="ContentRevision" />
                  </node>
                  <node concept="2OqwBi" id="2bNoq9f5K4m" role="33vP2m">
                    <node concept="37vLTw" id="2bNoq9f5K4n" role="2Oq$k0">
                      <ref role="3cqZAo" node="2bNoq9f5JjL" resolve="change" />
                    </node>
                    <node concept="liA8E" id="2bNoq9f5K4o" role="2OqNvi">
                      <ref role="37wK5l" to="1037:~Change.getBeforeRevision()" resolve="getBeforeRevision" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3rL3gdm6miE" role="3cqZAp">
                <node concept="3clFbS" id="3rL3gdm6miF" role="3clFbx">
                  <node concept="RRSsy" id="1axhIagSMFz" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="3cpWs3" id="1axhIagSSgP" role="RRSoy">
                      <node concept="37vLTw" id="1axhIagSSiX" role="3uHU7w">
                        <ref role="3cqZAo" node="2F$QDg9Evf9" resolve="file" />
                      </node>
                      <node concept="Xl_RD" id="1axhIagSMF$" role="3uHU7B">
                        <property role="Xl_RC" value="before revision is null for " />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="7nu2Tk19ITm" role="3cqZAp">
                    <node concept="1rXfSq" id="7nu2Tk19ITn" role="3cqZAk">
                      <ref role="37wK5l" node="Jpw4evHk61" resolve="loadCurrentFile" />
                      <node concept="37vLTw" id="7nu2Tk19ITo" role="37wK5m">
                        <ref role="3cqZAo" node="2F$QDg9Evf9" resolve="file" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3rL3gdm6miL" role="3clFbw">
                  <node concept="10Nm6u" id="3rL3gdm6miP" role="3uHU7w" />
                  <node concept="37vLTw" id="2bNoq9f5L2o" role="3uHU7B">
                    <ref role="3cqZAo" node="2bNoq9f5K4l" resolve="beforeRevision" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="tOur21PBVT" role="3cqZAp">
                <node concept="2ZW3vV" id="tOur21PJK3" role="3clFbw">
                  <node concept="3uibUv" id="tOur21PLh7" role="2ZW6by">
                    <ref role="3uigEE" to="1037:~ByteBackedContentRevision" resolve="ByteBackedContentRevision" />
                  </node>
                  <node concept="37vLTw" id="2bNoq9f5L9y" role="2ZW6bz">
                    <ref role="3cqZAo" node="2bNoq9f5K4l" resolve="beforeRevision" />
                  </node>
                </node>
                <node concept="3clFbS" id="tOur21PBVV" role="3clFbx">
                  <node concept="3cpWs6" id="tOur21PMM3" role="3cqZAp">
                    <node concept="2OqwBi" id="tOur21PTAw" role="3cqZAk">
                      <node concept="liA8E" id="tOur21PWIe" role="2OqNvi">
                        <ref role="37wK5l" to="1037:~ByteBackedContentRevision.getContentAsBytes()" resolve="getContentAsBytes" />
                      </node>
                      <node concept="1eOMI4" id="tOur21PRH5" role="2Oq$k0">
                        <node concept="10QFUN" id="tOur21PRH2" role="1eOMHV">
                          <node concept="3uibUv" id="tOur21PRH7" role="10QFUM">
                            <ref role="3uigEE" to="1037:~ByteBackedContentRevision" resolve="ByteBackedContentRevision" />
                          </node>
                          <node concept="37vLTw" id="2bNoq9f5LgD" role="10QFUP">
                            <ref role="3cqZAo" node="2bNoq9f5K4l" resolve="beforeRevision" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="2bNoq9f5Z2g" role="9aQIa">
                  <node concept="3clFbS" id="2bNoq9f5Z2h" role="9aQI4">
                    <node concept="3cpWs8" id="6ww30Znl2tw" role="3cqZAp">
                      <node concept="3cpWsn" id="6ww30Znl2tx" role="3cpWs9">
                        <property role="TrG5h" value="content" />
                        <node concept="17QB3L" id="6ww30Znl4oB" role="1tU5fm" />
                        <node concept="2OqwBi" id="6ww30Znl2ty" role="33vP2m">
                          <node concept="37vLTw" id="6ww30Znl2tz" role="2Oq$k0">
                            <ref role="3cqZAo" node="2bNoq9f5K4l" resolve="beforeRevision" />
                          </node>
                          <node concept="liA8E" id="6ww30Znl2t$" role="2OqNvi">
                            <ref role="37wK5l" to="1037:~ContentRevision.getContent()" resolve="getContent" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6ww30Znl5Af" role="3cqZAp">
                      <node concept="3clFbS" id="6ww30Znl5Ah" role="3clFbx">
                        <node concept="RRSsy" id="1axhIagSSja" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fksE/warn" />
                          <node concept="Xl_RD" id="1axhIagSSjb" role="RRSoy">
                            <property role="Xl_RC" value="content for before revision is null" />
                          </node>
                        </node>
                        <node concept="3cpWs6" id="7nu2Tk19ITe" role="3cqZAp">
                          <node concept="1rXfSq" id="7nu2Tk19ITf" role="3cqZAk">
                            <ref role="37wK5l" node="Jpw4evHk61" resolve="loadCurrentFile" />
                            <node concept="37vLTw" id="7nu2Tk19ITg" role="37wK5m">
                              <ref role="3cqZAo" node="2F$QDg9Evf9" resolve="file" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="6ww30Znl6kI" role="3clFbw">
                        <node concept="10Nm6u" id="6ww30Znl6lW" role="3uHU7w" />
                        <node concept="37vLTw" id="6ww30Znl5BE" role="3uHU7B">
                          <ref role="3cqZAo" node="6ww30Znl2tx" resolve="content" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6E4VEGZQxDs" role="3cqZAp">
                      <node concept="2OqwBi" id="6ww30Znl2tJ" role="3cqZAk">
                        <node concept="37vLTw" id="6ww30Znl4oh" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ww30Znl2tx" resolve="content" />
                        </node>
                        <node concept="liA8E" id="6ww30Znl2tO" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.getBytes(java.nio.charset.Charset)" resolve="getBytes" />
                          <node concept="10M0yZ" id="6ww30Znl2tP" role="37wK5m">
                            <ref role="1PxDUh" to="18ew:~FileUtil" resolve="FileUtil" />
                            <ref role="3cqZAo" to="18ew:~FileUtil.DEFAULT_CHARSET" resolve="DEFAULT_CHARSET" />
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
        <node concept="37vLTG" id="2F$QDg9Evf9" role="3clF46">
          <property role="TrG5h" value="file" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="2F$QDg9Evfa" role="1tU5fm">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
          <node concept="2AHcQZ" id="f7MobKgkFn" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="Jpw4evH_ka" role="3clF46">
          <property role="TrG5h" value="clManager" />
          <node concept="3uibUv" id="Jpw4evHBoF" role="1tU5fm">
            <ref role="3uigEE" to="1037:~ChangeListManager" resolve="ChangeListManager" />
          </node>
        </node>
        <node concept="10Q1$e" id="6ww30Znl0P1" role="3clF45">
          <node concept="10PrrI" id="6ww30Znl0OE" role="10Q1$1" />
        </node>
        <node concept="3Tm6S6" id="6ww30Znl0Ok" role="1B3o_S" />
      </node>
      <node concept="3UR2Jj" id="6ww30ZnlBUw" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsDzg" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDzh" role="1PaTwD">
            <property role="3oM_SC" value="redirects" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzi" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzj" role="1PaTwD">
            <property role="3oM_SC" value="vcs" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzk" role="1PaTwD">
            <property role="3oM_SC" value="byte[]" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzl" role="1PaTwD">
            <property role="3oM_SC" value="file" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzm" role="1PaTwD">
            <property role="3oM_SC" value="contents" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzn" role="1PaTwD">
            <property role="3oM_SC" value="instead" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzo" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzp" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzq" role="1PaTwD">
            <property role="3oM_SC" value="actual" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzr" role="1PaTwD">
            <property role="3oM_SC" value="files" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzs" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzt" role="1PaTwD">
            <property role="3oM_SC" value="disk" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzu" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzv" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzw" role="1PaTwD">
            <property role="3oM_SC" value="model" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2KujyEVJmWj" role="EKbjA">
        <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
      </node>
      <node concept="2tJIrI" id="7nu2Tk19IGf" role="jymVt" />
      <node concept="2YIFZL" id="Jpw4evHk61" role="jymVt">
        <property role="TrG5h" value="loadCurrentFile" />
        <node concept="3clFbS" id="7nu2Tk19I$o" role="3clF47">
          <node concept="3J1_TO" id="7nu2Tk19I$p" role="3cqZAp">
            <node concept="3clFbS" id="7nu2Tk19I$q" role="1zxBo7">
              <node concept="3clFbJ" id="7nu2Tk19I$r" role="3cqZAp">
                <node concept="3clFbS" id="7nu2Tk19I$s" role="3clFbx">
                  <node concept="RRSsy" id="7nu2Tk19I$t" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="Xl_RD" id="7nu2Tk19I$u" role="RRSoy">
                      <property role="Xl_RC" value="file does not exist" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="7nu2Tk19I$v" role="3cqZAp">
                    <node concept="10Nm6u" id="7nu2Tk19I$w" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="7nu2Tk19I$x" role="3clFbw">
                  <node concept="2OqwBi" id="7nu2Tk19I$y" role="3fr31v">
                    <node concept="37vLTw" id="7nu2Tk19I$V" role="2Oq$k0">
                      <ref role="3cqZAo" node="7nu2Tk19I$R" resolve="file" />
                    </node>
                    <node concept="liA8E" id="7nu2Tk19I$$" role="2OqNvi">
                      <ref role="37wK5l" to="jlff:~VirtualFile.exists()" resolve="exists" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7nu2Tk19I$_" role="3cqZAp">
                <node concept="2OqwBi" id="7nu2Tk19I$A" role="3cqZAk">
                  <node concept="37vLTw" id="7nu2Tk19I$U" role="2Oq$k0">
                    <ref role="3cqZAo" node="7nu2Tk19I$R" resolve="file" />
                  </node>
                  <node concept="liA8E" id="7nu2Tk19I$C" role="2OqNvi">
                    <ref role="37wK5l" to="jlff:~VirtualFile.contentsToByteArray()" resolve="contentsToByteArray" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="7nu2Tk19I$D" role="1zxBo5">
              <node concept="XOnhg" id="7nu2Tk19I$E" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="ex" />
                <node concept="nSUau" id="7nu2Tk19I$F" role="1tU5fm">
                  <node concept="3uibUv" id="7nu2Tk19I$G" role="nSUat">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7nu2Tk19I$H" role="1zc67A">
                <node concept="RRSsy" id="7nu2Tk19I$I" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fksE/warn" />
                  <node concept="3cpWs3" id="7nu2Tk19I$J" role="RRSoy">
                    <node concept="2OqwBi" id="7nu2Tk19I$K" role="3uHU7w">
                      <node concept="37vLTw" id="7nu2Tk19I$T" role="2Oq$k0">
                        <ref role="3cqZAo" node="7nu2Tk19I$R" resolve="file" />
                      </node>
                      <node concept="liA8E" id="7nu2Tk19I$M" role="2OqNvi">
                        <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7nu2Tk19I$N" role="3uHU7B">
                      <property role="Xl_RC" value="IOException during getting base version content of file " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7nu2Tk19I$O" role="RRSow">
                    <ref role="3cqZAo" node="7nu2Tk19I$E" resolve="ex" />
                  </node>
                </node>
                <node concept="3cpWs6" id="7nu2Tk19I$P" role="3cqZAp">
                  <node concept="10Nm6u" id="7nu2Tk19I$Q" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7nu2Tk19I$R" role="3clF46">
          <property role="TrG5h" value="file" />
          <node concept="3uibUv" id="7nu2Tk19I$S" role="1tU5fm">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
        <node concept="10Q1$e" id="7nu2Tk19I_2" role="3clF45">
          <node concept="10PrrI" id="7nu2Tk19I_3" role="10Q1$1" />
        </node>
        <node concept="3Tm6S6" id="7nu2Tk19I_1" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="2KujyEVJpTH" role="jymVt" />
      <node concept="3clFb_" id="2KujyEVJi_t" role="jymVt">
        <property role="TrG5h" value="getStreamName" />
        <node concept="3Tm1VV" id="2KujyEVJi_u" role="1B3o_S" />
        <node concept="2AHcQZ" id="2KujyEVJi_w" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="17QB3L" id="2KujyEVJwgi" role="3clF45" />
        <node concept="3clFbS" id="2KujyEVJi_B" role="3clF47">
          <node concept="3clFbF" id="2KujyEVJqZg" role="3cqZAp">
            <node concept="2OqwBi" id="2KujyEVJrbc" role="3clFbG">
              <node concept="37vLTw" id="2KujyEVJqZd" role="2Oq$k0">
                <ref role="3cqZAo" node="7vnZ8Y09h_m" resolve="myOriginal" />
              </node>
              <node concept="liA8E" id="2KujyEVJrju" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2KujyEVJi_C" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2KujyEVJpTI" role="jymVt" />
      <node concept="3clFb_" id="2KujyEVJkPb" role="jymVt">
        <property role="TrG5h" value="openInputStream" />
        <node concept="3Tm1VV" id="2KujyEVJkPc" role="1B3o_S" />
        <node concept="2AHcQZ" id="2KujyEVJkPe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="2KujyEVJkPf" role="3clF45">
          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
        </node>
        <node concept="3uibUv" id="2KujyEVJkPg" role="Sfmx6">
          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
        </node>
        <node concept="3clFbS" id="2KujyEVJkPm" role="3clF47">
          <node concept="3cpWs8" id="2KujyEVJtez" role="3cqZAp">
            <node concept="3cpWsn" id="2KujyEVJte$" role="3cpWs9">
              <property role="TrG5h" value="subs" />
              <node concept="3uibUv" id="2KujyEVJter" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2KujyEVJtfy" role="11_B2D">
                  <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                </node>
              </node>
              <node concept="2OqwBi" id="2KujyEVJte_" role="33vP2m">
                <node concept="1rXfSq" id="6KS9fagR9YC" role="2Oq$k0">
                  <ref role="37wK5l" node="6ww30Znlylc" resolve="getSubStreams" />
                </node>
                <node concept="liA8E" id="2KujyEVJteD" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                  <node concept="2YIFZM" id="2KujyEVJteE" role="37wK5m">
                    <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                    <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                    <node concept="3uibUv" id="Jpw4evIRBc" role="3PaCim">
                      <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2KujyEVJrus" role="3cqZAp">
            <node concept="3clFbS" id="2KujyEVJruu" role="3clFbx">
              <node concept="YS8fn" id="2KujyEVJwim" role="3cqZAp">
                <node concept="2ShNRf" id="2KujyEVJwkv" role="YScLw">
                  <node concept="1pGfFk" id="2KujyEVJxvD" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String)" resolve="IOException" />
                    <node concept="3cpWs3" id="2KujyEVJAcm" role="37wK5m">
                      <node concept="Xl_RD" id="2KujyEVJAeq" role="3uHU7w">
                        <property role="Xl_RC" value=" substreams" />
                      </node>
                      <node concept="3cpWs3" id="2KujyEVJzHj" role="3uHU7B">
                        <node concept="3cpWs3" id="2KujyEVJzpv" role="3uHU7B">
                          <node concept="3cpWs3" id="2KujyEVJz5z" role="3uHU7B">
                            <node concept="Xl_RD" id="2KujyEVJxxH" role="3uHU7B">
                              <property role="Xl_RC" value="The redirecting ds from " />
                            </node>
                            <node concept="37vLTw" id="2KujyEVJz7F" role="3uHU7w">
                              <ref role="3cqZAo" node="7vnZ8Y09h_m" resolve="myOriginal" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2KujyEVJzrz" role="3uHU7w">
                            <property role="Xl_RC" value=" has multiple " />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2KujyEVJ$qJ" role="3uHU7w">
                          <node concept="37vLTw" id="2KujyEVJzJ$" role="2Oq$k0">
                            <ref role="3cqZAo" node="2KujyEVJte$" resolve="subs" />
                          </node>
                          <node concept="liA8E" id="2KujyEVJ_1S" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2KujyEVJYop" role="3clFbw">
              <node concept="2OqwBi" id="2KujyEVJu3T" role="3uHU7B">
                <node concept="37vLTw" id="2KujyEVJteF" role="2Oq$k0">
                  <ref role="3cqZAo" node="2KujyEVJte$" resolve="subs" />
                </node>
                <node concept="liA8E" id="2KujyEVJuFB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
              <node concept="3cmrfG" id="2KujyEVJwfE" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2KujyEVJAhm" role="3cqZAp">
            <node concept="2OqwBi" id="2KujyEVJVY$" role="3cqZAk">
              <node concept="2OqwBi" id="2KujyEVJTZO" role="2Oq$k0">
                <node concept="37vLTw" id="2KujyEVJSdo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2KujyEVJte$" resolve="subs" />
                </node>
                <node concept="liA8E" id="2KujyEVJVfn" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2KujyEVJVhr" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2KujyEVJX88" role="2OqNvi">
                <ref role="37wK5l" to="dush:~StreamDataSource.openInputStream()" resolve="openInputStream" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2KujyEVJkPn" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2KujyEVJpTJ" role="jymVt" />
      <node concept="3clFb_" id="2KujyEVJkPq" role="jymVt">
        <property role="TrG5h" value="openOutputStream" />
        <node concept="3Tm1VV" id="2KujyEVJkPr" role="1B3o_S" />
        <node concept="2AHcQZ" id="2KujyEVJkPt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="2KujyEVJkPu" role="3clF45">
          <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
        </node>
        <node concept="3uibUv" id="2KujyEVJkPv" role="Sfmx6">
          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
        </node>
        <node concept="3clFbS" id="2KujyEVJkP_" role="3clF47">
          <node concept="YS8fn" id="6KS9fagRaDE" role="3cqZAp">
            <node concept="2ShNRf" id="6KS9fagRaFJ" role="YScLw">
              <node concept="1pGfFk" id="6KS9fagRYxO" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2KujyEVJkPA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7sg$kIGEM28">
    <property role="TrG5h" value="CurrentDifferenceBroadcaster" />
    <node concept="3uibUv" id="7sg$kIGEM2e" role="EKbjA">
      <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
    </node>
    <node concept="312cEg" id="7sg$kIGEM2f" role="jymVt">
      <property role="TrG5h" value="myListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7sg$kIGEM2g" role="1B3o_S" />
      <node concept="3uibUv" id="1iU9OXuUMIl" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~CopyOnWriteArrayList" resolve="CopyOnWriteArrayList" />
        <node concept="3uibUv" id="1iU9OXuV7VW" role="11_B2D">
          <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
        </node>
      </node>
      <node concept="2ShNRf" id="7sg$kIGEM2j" role="33vP2m">
        <node concept="1pGfFk" id="1iU9OXuV3uJ" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~CopyOnWriteArrayList.&lt;init&gt;()" resolve="CopyOnWriteArrayList" />
          <node concept="3uibUv" id="1iU9OXuVc1Z" role="1pMfVU">
            <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7sg$kIGEM4D" role="jymVt">
      <property role="TrG5h" value="myCommandQueue" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7sg$kIGEM4E" role="1B3o_S" />
      <node concept="3uibUv" id="7sg$kIGEM4G" role="1tU5fm">
        <ref role="3uigEE" node="3eE6dTgTyYL" resolve="SimpleCommandQueue" />
      </node>
    </node>
    <node concept="312cEg" id="4henvQNw1EO" role="jymVt">
      <property role="TrG5h" value="myEnabled" />
      <node concept="3Tm6S6" id="4henvQNw1AE" role="1B3o_S" />
      <node concept="10P_77" id="4henvQNw1EM" role="1tU5fm" />
      <node concept="3clFbT" id="4henvQNw1Kj" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iU9OXuVU7t" role="jymVt" />
    <node concept="3clFbW" id="7sg$kIGEM4K" role="jymVt">
      <node concept="3cqZAl" id="7sg$kIGEM4L" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGEM4M" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGEM4O" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGEM4R" role="3cqZAp">
          <node concept="37vLTI" id="7sg$kIGEM4T" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyXj" role="37vLTJ">
              <ref role="3cqZAo" node="7sg$kIGEM4D" resolve="myCommandQueue" />
            </node>
            <node concept="37vLTw" id="2BHiRxglLni" role="37vLTx">
              <ref role="3cqZAo" node="7sg$kIGEM4P" resolve="commandQueue" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sg$kIGEM4P" role="3clF46">
        <property role="TrG5h" value="commandQueue" />
        <node concept="3uibUv" id="7sg$kIGEM4Q" role="1tU5fm">
          <ref role="3uigEE" node="3eE6dTgTyYL" resolve="SimpleCommandQueue" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zB_Y" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGEM2m" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="addDifferenceListener" />
      <node concept="3cqZAl" id="7sg$kIGEM2n" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGEM2o" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGEM2p" role="3clF47">
        <node concept="3clFbF" id="1iU9OXuVikM" role="3cqZAp">
          <node concept="2OqwBi" id="1iU9OXuVm$k" role="3clFbG">
            <node concept="37vLTw" id="1iU9OXuVikK" role="2Oq$k0">
              <ref role="3cqZAo" node="7sg$kIGEM2f" resolve="myListeners" />
            </node>
            <node concept="liA8E" id="1iU9OXuVpzY" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~CopyOnWriteArrayList.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="1iU9OXuVrTw" role="37wK5m">
                <ref role="3cqZAo" node="7sg$kIGEM2y" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sg$kIGEM2y" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="7sg$kIGEM2z" role="1tU5fm">
          <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
        </node>
        <node concept="2AHcQZ" id="7sg$kIGEM2$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zB_Z" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGEM2_" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="removeDifferenceListener" />
      <node concept="3cqZAl" id="7sg$kIGEM2A" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGEM2B" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGEM2C" role="3clF47">
        <node concept="3clFbF" id="1iU9OXuVy6p" role="3cqZAp">
          <node concept="2OqwBi" id="1iU9OXuV_8L" role="3clFbG">
            <node concept="37vLTw" id="1iU9OXuVy6n" role="2Oq$k0">
              <ref role="3cqZAo" node="7sg$kIGEM2f" resolve="myListeners" />
            </node>
            <node concept="liA8E" id="1iU9OXuVBYZ" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~CopyOnWriteArrayList.remove(java.lang.Object)" resolve="remove" />
              <node concept="37vLTw" id="1iU9OXuVE4t" role="37wK5m">
                <ref role="3cqZAo" node="7sg$kIGEM2L" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sg$kIGEM2L" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="7sg$kIGEM2M" role="1tU5fm">
          <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
        </node>
        <node concept="2AHcQZ" id="7sg$kIGEM2N" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iU9OXuVIxN" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGEM32" role="jymVt">
      <property role="TrG5h" value="fireEvent" />
      <node concept="3cqZAl" id="7sg$kIGEM33" role="3clF45" />
      <node concept="3Tm6S6" id="7sg$kIGEM34" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGEM35" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGEM36" role="3cqZAp">
          <node concept="2OqwBi" id="7sg$kIGEM37" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuh$H" role="2Oq$k0">
              <ref role="3cqZAo" node="7sg$kIGEM4D" resolve="myCommandQueue" />
            </node>
            <node concept="liA8E" id="7sg$kIGEM39" role="2OqNvi">
              <ref role="37wK5l" node="3eE6dTgTRnu" resolve="assertSoftlyIsCommandThread" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4henvQNw1MH" role="3cqZAp">
          <node concept="3clFbS" id="4henvQNw1MJ" role="3clFbx">
            <node concept="3cpWs6" id="4henvQNw1Zg" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="4henvQNw1Pb" role="3clFbw">
            <node concept="37vLTw" id="4henvQNw1Xl" role="3fr31v">
              <ref role="3cqZAo" node="4henvQNw1EO" resolve="myEnabled" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7sg$kIGEM3a" role="3cqZAp">
          <node concept="2GrKxI" id="7sg$kIGEM3b" role="2Gsz3X">
            <property role="TrG5h" value="listener" />
          </node>
          <node concept="3clFbS" id="7sg$kIGEM3c" role="2LFqv$">
            <node concept="3J1_TO" id="7sg$kIGEM3d" role="3cqZAp">
              <node concept="3clFbS" id="7sg$kIGEM3e" role="1zxBo7">
                <node concept="3clFbF" id="7sg$kIGEM3f" role="3cqZAp">
                  <node concept="2Sg_IR" id="7sg$kIGEM3g" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmqgW" role="2SgG2M">
                      <ref role="3cqZAo" node="7sg$kIGEM3x" resolve="task" />
                    </node>
                    <node concept="2GrUjf" id="7sg$kIGEM3i" role="2SgHGx">
                      <ref role="2Gs0qQ" node="7sg$kIGEM3b" resolve="listener" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="7sg$kIGEM3j" role="1zxBo5">
                <node concept="XOnhg" id="7sg$kIGEM3k" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="t" />
                  <node concept="nSUau" id="xvs04dIfLO" role="1tU5fm">
                    <node concept="3uibUv" id="7sg$kIGEM3l" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="7sg$kIGEM3m" role="1zc67A">
                  <node concept="3clFbF" id="38WJxXow9O1" role="3cqZAp">
                    <node concept="2OqwBi" id="38WJxXowbB$" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxeulw$" role="2Oq$k0">
                        <ref role="3cqZAo" node="7sg$kIGEM4D" resolve="myCommandQueue" />
                      </node>
                      <node concept="liA8E" id="38WJxXowbBC" role="2OqNvi">
                        <ref role="37wK5l" node="38WJxXowabv" resolve="setHadExceptions" />
                        <node concept="3clFbT" id="38WJxXowbBD" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="RRSsy" id="3jYQuSB35qd" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fh_4/error" />
                    <node concept="37vLTw" id="3GM_nagTwGR" role="RRSow">
                      <ref role="3cqZAo" node="7sg$kIGEM3k" resolve="t" />
                    </node>
                    <node concept="2YIFZM" id="1iU9OXuVM7U" role="RRSoy">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                      <node concept="Xl_RD" id="7sg$kIGEM3r" role="37wK5m">
                        <property role="Xl_RC" value="Exception on firing '%s' event" />
                      </node>
                      <node concept="37vLTw" id="1iU9OXuVTro" role="37wK5m">
                        <ref role="3cqZAo" node="7sg$kIGEM3v" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1iU9OXuVJIS" role="2GsD0m">
            <ref role="3cqZAo" node="7sg$kIGEM2f" resolve="myListeners" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sg$kIGEM3v" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7sg$kIGEM3w" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7sg$kIGEM3x" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="1ajhzC" id="7sg$kIGEM3y" role="1tU5fm">
          <node concept="3cqZAl" id="7sg$kIGEM3z" role="1ajl9A" />
          <node concept="3uibUv" id="7sg$kIGEM3$" role="1ajw0F">
            <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zBA0" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGEM3_" role="jymVt">
      <property role="TrG5h" value="changeAdded" />
      <node concept="3cqZAl" id="7sg$kIGEM3A" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGEM5o" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGEM3C" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGEM3D" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz5Gd" role="3clFbG">
            <ref role="37wK5l" node="7sg$kIGEM32" resolve="fireEvent" />
            <node concept="Xl_RD" id="7sg$kIGEM3F" role="37wK5m">
              <property role="Xl_RC" value="changeAdded" />
            </node>
            <node concept="1bVj0M" id="7sg$kIGEM3G" role="37wK5m">
              <node concept="37vLTG" id="7sg$kIGEM3H" role="1bW2Oz">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="7sg$kIGEM3I" role="1tU5fm">
                  <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
                </node>
              </node>
              <node concept="3clFbS" id="7sg$kIGEM3J" role="1bW5cS">
                <node concept="3clFbF" id="7sg$kIGEM3K" role="3cqZAp">
                  <node concept="2OqwBi" id="7sg$kIGEM3L" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmzt0" role="2Oq$k0">
                      <ref role="3cqZAo" node="7sg$kIGEM3H" resolve="listener" />
                    </node>
                    <node concept="liA8E" id="7sg$kIGEM3N" role="2OqNvi">
                      <ref role="37wK5l" node="5R2TaPUK2v2" resolve="changeAdded" />
                      <node concept="37vLTw" id="2BHiRxgm8r6" role="37wK5m">
                        <ref role="3cqZAo" node="7sg$kIGEM3P" resolve="change" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sg$kIGEM3P" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="7sg$kIGEM3Q" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="7sg$kIGEM3R" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UCZh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zBA1" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGEM3S" role="jymVt">
      <property role="TrG5h" value="changeRemoved" />
      <node concept="3cqZAl" id="7sg$kIGEM3T" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGEM5n" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGEM3V" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGEM3W" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyR5T" role="3clFbG">
            <ref role="37wK5l" node="7sg$kIGEM32" resolve="fireEvent" />
            <node concept="Xl_RD" id="7sg$kIGEM3Y" role="37wK5m">
              <property role="Xl_RC" value="changeRemoved" />
            </node>
            <node concept="1bVj0M" id="7sg$kIGEM3Z" role="37wK5m">
              <node concept="37vLTG" id="7sg$kIGEM40" role="1bW2Oz">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="7sg$kIGEM41" role="1tU5fm">
                  <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
                </node>
              </node>
              <node concept="3clFbS" id="7sg$kIGEM42" role="1bW5cS">
                <node concept="3clFbF" id="7sg$kIGEM43" role="3cqZAp">
                  <node concept="2OqwBi" id="7sg$kIGEM44" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglnUM" role="2Oq$k0">
                      <ref role="3cqZAo" node="7sg$kIGEM40" resolve="listener" />
                    </node>
                    <node concept="liA8E" id="7sg$kIGEM46" role="2OqNvi">
                      <ref role="37wK5l" node="5R2TaPUK2vc" resolve="changeRemoved" />
                      <node concept="37vLTw" id="2BHiRxgmhDG" role="37wK5m">
                        <ref role="3cqZAo" node="7sg$kIGEM48" resolve="change" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sg$kIGEM48" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="7sg$kIGEM49" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="7sg$kIGEM4a" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UCZg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zBA2" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGEM4b" role="jymVt">
      <property role="TrG5h" value="changeUpdateStarted" />
      <node concept="3cqZAl" id="7sg$kIGEM4c" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGEM5m" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGEM4e" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGEM4f" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyI5b" role="3clFbG">
            <ref role="37wK5l" node="7sg$kIGEM32" resolve="fireEvent" />
            <node concept="Xl_RD" id="7sg$kIGEM4h" role="37wK5m">
              <property role="Xl_RC" value="changeUpdateStarted" />
            </node>
            <node concept="1bVj0M" id="7sg$kIGEM4i" role="37wK5m">
              <node concept="37vLTG" id="7sg$kIGEM4j" role="1bW2Oz">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="7sg$kIGEM4k" role="1tU5fm">
                  <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
                </node>
              </node>
              <node concept="3clFbS" id="7sg$kIGEM4l" role="1bW5cS">
                <node concept="3clFbF" id="7sg$kIGEM4m" role="3cqZAp">
                  <node concept="2OqwBi" id="7sg$kIGEM4n" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmKdN" role="2Oq$k0">
                      <ref role="3cqZAo" node="7sg$kIGEM4j" resolve="listener" />
                    </node>
                    <node concept="liA8E" id="7sg$kIGEM4p" role="2OqNvi">
                      <ref role="37wK5l" node="5R2TaPUK2vw" resolve="changeUpdateStarted" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UCZj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zBA3" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGEM4q" role="jymVt">
      <property role="TrG5h" value="changeUpdateFinished" />
      <node concept="3cqZAl" id="7sg$kIGEM4r" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGEM5l" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGEM4t" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGEM4u" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyZuz" role="3clFbG">
            <ref role="37wK5l" node="7sg$kIGEM32" resolve="fireEvent" />
            <node concept="Xl_RD" id="7sg$kIGEM4w" role="37wK5m">
              <property role="Xl_RC" value="changeUpdateFinished" />
            </node>
            <node concept="1bVj0M" id="7sg$kIGEM4x" role="37wK5m">
              <node concept="37vLTG" id="7sg$kIGEM4y" role="1bW2Oz">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="7sg$kIGEM4z" role="1tU5fm">
                  <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
                </node>
              </node>
              <node concept="3clFbS" id="7sg$kIGEM4$" role="1bW5cS">
                <node concept="1X3_iC" id="4henvQNw3QX" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="RRSsy" id="4uLJMq1zC7a" role="8Wnug">
                    <property role="RRSoG" value="gZ5frni/trace" />
                    <node concept="3cpWs3" id="4uLJMq1zCqx" role="RRSoy">
                      <node concept="2OqwBi" id="4uLJMq1zDcI" role="3uHU7w">
                        <node concept="2OqwBi" id="4uLJMq1zCGL" role="2Oq$k0">
                          <node concept="37vLTw" id="4uLJMq1zCsA" role="2Oq$k0">
                            <ref role="3cqZAo" node="7sg$kIGEM4y" resolve="listener" />
                          </node>
                          <node concept="liA8E" id="4uLJMq1zCQi" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4uLJMq1zDAP" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4uLJMq1zC7c" role="3uHU7B">
                        <property role="Xl_RC" value="change update finished for " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7sg$kIGEM4_" role="3cqZAp">
                  <node concept="2OqwBi" id="7sg$kIGEM4A" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmaMN" role="2Oq$k0">
                      <ref role="3cqZAo" node="7sg$kIGEM4y" resolve="listener" />
                    </node>
                    <node concept="liA8E" id="7sg$kIGEM4C" role="2OqNvi">
                      <ref role="37wK5l" node="5R2TaPUK2v$" resolve="changeUpdateFinished" />
                    </node>
                  </node>
                </node>
                <node concept="1X3_iC" id="4henvQNw3Rr" role="lGtFl">
                  <property role="3V$3am" value="statement" />
                  <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                  <node concept="RRSsy" id="4uLJMq1zDHT" role="8Wnug">
                    <property role="RRSoG" value="gZ5frni/trace" />
                    <node concept="3cpWs3" id="4uLJMq1zDHU" role="RRSoy">
                      <node concept="2OqwBi" id="4uLJMq1zDHV" role="3uHU7w">
                        <node concept="2OqwBi" id="4uLJMq1zDHW" role="2Oq$k0">
                          <node concept="37vLTw" id="4uLJMq1zDHX" role="2Oq$k0">
                            <ref role="3cqZAo" node="7sg$kIGEM4y" resolve="listener" />
                          </node>
                          <node concept="liA8E" id="4uLJMq1zDHY" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4uLJMq1zDHZ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4uLJMq1zDI0" role="3uHU7B">
                        <property role="Xl_RC" value="done change update finished for " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UCZi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4henvQNw2Uk" role="jymVt" />
    <node concept="3clFb_" id="4henvQNw36x" role="jymVt">
      <property role="TrG5h" value="modelStatusChanged" />
      <node concept="3clFbS" id="4henvQNw36$" role="3clF47">
        <node concept="3clFbF" id="4henvQNw3dX" role="3cqZAp">
          <node concept="1rXfSq" id="4henvQNw3VV" role="3clFbG">
            <ref role="37wK5l" node="7sg$kIGEM32" resolve="fireEvent" />
            <node concept="Xl_RD" id="4henvQNw3VW" role="37wK5m">
              <property role="Xl_RC" value="modelStatusChange" />
            </node>
            <node concept="1bVj0M" id="4henvQNw3VX" role="37wK5m">
              <node concept="37vLTG" id="4henvQNw3VY" role="1bW2Oz">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="4henvQNw3VZ" role="1tU5fm">
                  <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
                </node>
              </node>
              <node concept="3clFbS" id="4henvQNw3W0" role="1bW5cS">
                <node concept="3clFbF" id="4henvQNw3W1" role="3cqZAp">
                  <node concept="2OqwBi" id="4henvQNw3W2" role="3clFbG">
                    <node concept="37vLTw" id="4henvQNw3W3" role="2Oq$k0">
                      <ref role="3cqZAo" node="4henvQNw3VY" resolve="listener" />
                    </node>
                    <node concept="liA8E" id="4henvQNw3W4" role="2OqNvi">
                      <ref role="37wK5l" node="4henvQNw22F" resolve="modelStatusChanged" />
                      <node concept="37vLTw" id="4henvQNw42Z" role="37wK5m">
                        <ref role="3cqZAo" node="4henvQNw3br" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4henvQNw32d" role="1B3o_S" />
      <node concept="3cqZAl" id="4henvQNw36v" role="3clF45" />
      <node concept="37vLTG" id="4henvQNw3br" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="4henvQNw3bq" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="2AHcQZ" id="4henvQNw3bE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4henvQNw3c2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zDXG" role="jymVt" />
    <node concept="3clFb_" id="4uLJMq1zDTD" role="jymVt">
      <property role="TrG5h" value="changesAdded" />
      <node concept="3Tm1VV" id="4uLJMq1zDTM" role="1B3o_S" />
      <node concept="3cqZAl" id="4uLJMq1zDTN" role="3clF45" />
      <node concept="37vLTG" id="4uLJMq1zDTO" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="3uibUv" id="4uLJMq1zDTP" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4uLJMq1zDTQ" role="11_B2D">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4uLJMq1zDTR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4uLJMq1zDTT" role="3clF47">
        <node concept="3clFbF" id="4uLJMq1zEb1" role="3cqZAp">
          <node concept="1rXfSq" id="4uLJMq1zEb2" role="3clFbG">
            <ref role="37wK5l" node="7sg$kIGEM32" resolve="fireEvent" />
            <node concept="Xl_RD" id="4uLJMq1zEb3" role="37wK5m">
              <property role="Xl_RC" value="changesAdded" />
            </node>
            <node concept="1bVj0M" id="4uLJMq1zEb4" role="37wK5m">
              <node concept="37vLTG" id="4uLJMq1zEb5" role="1bW2Oz">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="4uLJMq1zEb6" role="1tU5fm">
                  <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
                </node>
              </node>
              <node concept="3clFbS" id="4uLJMq1zEb7" role="1bW5cS">
                <node concept="3clFbF" id="4uLJMq1zEb8" role="3cqZAp">
                  <node concept="2OqwBi" id="4uLJMq1zEb9" role="3clFbG">
                    <node concept="37vLTw" id="4uLJMq1zEba" role="2Oq$k0">
                      <ref role="3cqZAo" node="4uLJMq1zEb5" resolve="listener" />
                    </node>
                    <node concept="liA8E" id="4uLJMq1zFFu" role="2OqNvi">
                      <ref role="37wK5l" node="4uLJMq1y7pv" resolve="changesAdded" />
                      <node concept="37vLTw" id="4uLJMq1Lek$" role="37wK5m">
                        <ref role="3cqZAo" node="4uLJMq1zDTO" resolve="changes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4uLJMq1zDTU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zE0T" role="jymVt" />
    <node concept="3clFb_" id="4uLJMq1zDU1" role="jymVt">
      <property role="TrG5h" value="changesRemoved" />
      <node concept="3Tm1VV" id="4uLJMq1zDUa" role="1B3o_S" />
      <node concept="3cqZAl" id="4uLJMq1zDUb" role="3clF45" />
      <node concept="37vLTG" id="4uLJMq1zDUc" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="3uibUv" id="4uLJMq1zDUd" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4uLJMq1zDUe" role="11_B2D">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4uLJMq1zDUf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4uLJMq1zDUh" role="3clF47">
        <node concept="3clFbF" id="4uLJMq1zEO2" role="3cqZAp">
          <node concept="1rXfSq" id="4uLJMq1zEO3" role="3clFbG">
            <ref role="37wK5l" node="7sg$kIGEM32" resolve="fireEvent" />
            <node concept="Xl_RD" id="4uLJMq1zEO4" role="37wK5m">
              <property role="Xl_RC" value="changesRemoved" />
            </node>
            <node concept="1bVj0M" id="4uLJMq1zEO5" role="37wK5m">
              <node concept="37vLTG" id="4uLJMq1zEO6" role="1bW2Oz">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="4uLJMq1zEO7" role="1tU5fm">
                  <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
                </node>
              </node>
              <node concept="3clFbS" id="4uLJMq1zEO8" role="1bW5cS">
                <node concept="3clFbF" id="4uLJMq1zEO9" role="3cqZAp">
                  <node concept="2OqwBi" id="4uLJMq1zEOa" role="3clFbG">
                    <node concept="37vLTw" id="4uLJMq1zEOb" role="2Oq$k0">
                      <ref role="3cqZAo" node="4uLJMq1zEO6" resolve="listener" />
                    </node>
                    <node concept="liA8E" id="4uLJMq1zFHn" role="2OqNvi">
                      <ref role="37wK5l" node="4uLJMq1y7qK" resolve="changesRemoved" />
                      <node concept="37vLTw" id="4uLJMq1LepB" role="37wK5m">
                        <ref role="3cqZAo" node="4uLJMq1zDUc" resolve="changes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4uLJMq1zDUi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4henvQNw4Gk" role="jymVt" />
    <node concept="3clFb_" id="4henvQNw4TA" role="jymVt">
      <property role="TrG5h" value="setEnabled" />
      <node concept="3clFbS" id="4henvQNw4TD" role="3clF47">
        <node concept="3clFbF" id="4henvQNw528" role="3cqZAp">
          <node concept="37vLTI" id="4henvQNw5QO" role="3clFbG">
            <node concept="37vLTw" id="4henvQNw5T0" role="37vLTx">
              <ref role="3cqZAo" node="4henvQNw4Yj" resolve="enabled" />
            </node>
            <node concept="37vLTw" id="4henvQNw527" role="37vLTJ">
              <ref role="3cqZAo" node="4henvQNw1EO" resolve="myEnabled" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4henvQNw4OV" role="1B3o_S" />
      <node concept="3cqZAl" id="4henvQNw4T$" role="3clF45" />
      <node concept="37vLTG" id="4henvQNw4Yj" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="10P_77" id="4henvQNw4Yi" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5R2TaPUK2uk">
    <property role="TrG5h" value="CurrentDifferenceListener" />
    <property role="3GE5qa" value="" />
    <node concept="3Tm1VV" id="5R2TaPUK2vC" role="1B3o_S" />
    <node concept="3uibUv" id="5R2TaPUK2vD" role="3HQHJm">
      <ref role="3uigEE" to="33ny:~EventListener" resolve="EventListener" />
    </node>
    <node concept="3clFb_" id="5R2TaPUK2v2" role="jymVt">
      <property role="TrG5h" value="changeAdded" />
      <node concept="3cqZAl" id="5R2TaPUK2v3" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUK2v4" role="1B3o_S" />
      <node concept="3clFbS" id="5R2TaPUK2v5" role="3clF47" />
      <node concept="37vLTG" id="5R2TaPUK2v6" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5R2TaPUK2I6" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5R2TaPUK2v8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5R2TaPUK2vc" role="jymVt">
      <property role="TrG5h" value="changeRemoved" />
      <node concept="3cqZAl" id="5R2TaPUK2vd" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUK2ve" role="1B3o_S" />
      <node concept="3clFbS" id="5R2TaPUK2vf" role="3clF47" />
      <node concept="37vLTG" id="5R2TaPUK2vg" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5R2TaPUK2I7" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5R2TaPUK2vi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5R2TaPUK2vw" role="jymVt">
      <property role="TrG5h" value="changeUpdateStarted" />
      <node concept="3cqZAl" id="5R2TaPUK2vx" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUK2vy" role="1B3o_S" />
      <node concept="3clFbS" id="5R2TaPUK2vz" role="3clF47" />
    </node>
    <node concept="3clFb_" id="5R2TaPUK2v$" role="jymVt">
      <property role="TrG5h" value="changeUpdateFinished" />
      <node concept="3cqZAl" id="5R2TaPUK2v_" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUK2vA" role="1B3o_S" />
      <node concept="3clFbS" id="5R2TaPUK2vB" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4henvQNw1Zj" role="jymVt" />
    <node concept="3clFb_" id="4henvQNw22F" role="jymVt">
      <property role="TrG5h" value="modelStatusChanged" />
      <node concept="3clFbS" id="4henvQNw22I" role="3clF47">
        <node concept="3SKdUt" id="4henvQNw25n" role="3cqZAp">
          <node concept="1PaTwC" id="4henvQNw25o" role="1aUNEU">
            <node concept="3oM_SD" id="4henvQNw25p" role="1PaTwD">
              <property role="3oM_SC" value="nop" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4henvQNw22J" role="1B3o_S" />
      <node concept="3cqZAl" id="4henvQNw22D" role="3clF45" />
      <node concept="2JFqV2" id="4henvQNw21r" role="2frcjj" />
      <node concept="37vLTG" id="4henvQNw24j" role="3clF46">
        <property role="TrG5h" value="mref" />
        <node concept="3uibUv" id="4henvQNw24i" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="2AHcQZ" id="4henvQNw24n" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="P$JXv" id="4henvQNw7a1" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsDzG" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDzH" role="1PaTwD">
            <property role="3oM_SC" value="sometimes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzI" role="1PaTwD">
            <property role="3oM_SC" value="model" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzJ" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzK" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzL" role="1PaTwD">
            <property role="3oM_SC" value="updated" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzM" role="1PaTwD">
            <property role="3oM_SC" value="without" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzN" role="1PaTwD">
            <property role="3oM_SC" value="any" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzO" role="1PaTwD">
            <property role="3oM_SC" value="changes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzP" role="1PaTwD">
            <property role="3oM_SC" value="(when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzQ" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzR" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzS" role="1PaTwD">
            <property role="3oM_SC" value="just" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzT" role="1PaTwD">
            <property role="3oM_SC" value="added)" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsDzU" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDzV" role="1PaTwD">
            <property role="3oM_SC" value="ofcourse" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzW" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzX" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzY" role="1PaTwD">
            <property role="3oM_SC" value="add" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzZ" role="1PaTwD">
            <property role="3oM_SC" value="new" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$0" role="1PaTwD">
            <property role="3oM_SC" value="changes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$1" role="1PaTwD">
            <property role="3oM_SC" value="instead," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$2" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$3" role="1PaTwD">
            <property role="3oM_SC" value="I" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$4" role="1PaTwD">
            <property role="3oM_SC" value="am" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$5" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$6" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$7" role="1PaTwD">
            <property role="3oM_SC" value="bugfix" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1y7rz" role="jymVt" />
    <node concept="3clFb_" id="4uLJMq1y7pv" role="jymVt">
      <property role="TrG5h" value="changesAdded" />
      <node concept="3clFbS" id="4uLJMq1y7py" role="3clF47">
        <node concept="2Gpval" id="4uLJMq1y7u$" role="3cqZAp">
          <node concept="2GrKxI" id="4uLJMq1y7u_" role="2Gsz3X">
            <property role="TrG5h" value="c" />
          </node>
          <node concept="37vLTw" id="4uLJMq1y7wd" role="2GsD0m">
            <ref role="3cqZAo" node="4uLJMq1y7qi" resolve="changes" />
          </node>
          <node concept="3clFbS" id="4uLJMq1y7uB" role="2LFqv$">
            <node concept="3clFbF" id="4uLJMq1y7yj" role="3cqZAp">
              <node concept="1rXfSq" id="4uLJMq1y7yi" role="3clFbG">
                <ref role="37wK5l" node="5R2TaPUK2v2" resolve="changeAdded" />
                <node concept="2GrUjf" id="4uLJMq1y7zo" role="37wK5m">
                  <ref role="2Gs0qQ" node="4uLJMq1y7u_" resolve="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4uLJMq1y7pz" role="1B3o_S" />
      <node concept="3cqZAl" id="4uLJMq1y7p4" role="3clF45" />
      <node concept="37vLTG" id="4uLJMq1y7qi" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="3uibUv" id="4uLJMq1y7qh" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4uLJMq1y7qH" role="11_B2D">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4uLJMq1y7rt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2JFqV2" id="4uLJMq1y7sw" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="4uLJMq1y7$3" role="jymVt" />
    <node concept="3clFb_" id="4uLJMq1y7qK" role="jymVt">
      <property role="TrG5h" value="changesRemoved" />
      <node concept="3clFbS" id="4uLJMq1y7qL" role="3clF47">
        <node concept="2Gpval" id="4uLJMq1y7zP" role="3cqZAp">
          <node concept="2GrKxI" id="4uLJMq1y7zQ" role="2Gsz3X">
            <property role="TrG5h" value="c" />
          </node>
          <node concept="37vLTw" id="4uLJMq1y7zR" role="2GsD0m">
            <ref role="3cqZAo" node="4uLJMq1y7qO" resolve="changes" />
          </node>
          <node concept="3clFbS" id="4uLJMq1y7zS" role="2LFqv$">
            <node concept="3clFbF" id="4uLJMq1y7zT" role="3cqZAp">
              <node concept="1rXfSq" id="4uLJMq1y7zU" role="3clFbG">
                <ref role="37wK5l" node="5R2TaPUK2vc" resolve="changeRemoved" />
                <node concept="2GrUjf" id="4uLJMq1y7zV" role="37wK5m">
                  <ref role="2Gs0qQ" node="4uLJMq1y7zQ" resolve="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4uLJMq1y7qM" role="1B3o_S" />
      <node concept="3cqZAl" id="4uLJMq1y7qN" role="3clF45" />
      <node concept="37vLTG" id="4uLJMq1y7qO" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="3uibUv" id="4uLJMq1y7qP" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4uLJMq1y7qQ" role="11_B2D">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4uLJMq1y7rx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2JFqV2" id="4uLJMq1y7zN" role="2frcjj" />
    </node>
  </node>
  <node concept="312cEu" id="5R2TaPUKrqT">
    <property role="TrG5h" value="CurrentDifferenceAdapter" />
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="5R2TaPUKrqU" role="1B3o_S" />
    <node concept="3uibUv" id="5R2TaPUKrqZ" role="EKbjA">
      <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
    </node>
    <node concept="3clFbW" id="5R2TaPUKrqV" role="jymVt">
      <node concept="3cqZAl" id="5R2TaPUKrqW" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUKrqX" role="1B3o_S" />
      <node concept="3clFbS" id="5R2TaPUKrqY" role="3clF47">
        <node concept="3clFbH" id="OKFM8z2FEb" role="3cqZAp" />
        <node concept="3clFbH" id="OKFM8z2FI9" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1$bBj" role="jymVt" />
    <node concept="2tJIrI" id="5G_0tNYOLC_" role="jymVt" />
    <node concept="3clFb_" id="5R2TaPUKrrp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="changeAdded" />
      <node concept="3cqZAl" id="5R2TaPUKrrq" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUKrrr" role="1B3o_S" />
      <node concept="37vLTG" id="5R2TaPUKrrs" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5R2TaPUKrrt" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5R2TaPUKrru" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5R2TaPUKrrv" role="3clF47">
        <node concept="3clFbH" id="5G_0tNYOL4Z" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RXs_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1$bBk" role="jymVt" />
    <node concept="3clFb_" id="5R2TaPUKrri" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="changeRemoved" />
      <node concept="3cqZAl" id="5R2TaPUKrrj" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUKrrk" role="1B3o_S" />
      <node concept="37vLTG" id="5R2TaPUKrrl" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5R2TaPUKrrm" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5R2TaPUKrrn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5R2TaPUKrro" role="3clF47" />
      <node concept="2AHcQZ" id="3tYsUK_RXs$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1$bBl" role="jymVt" />
    <node concept="3clFb_" id="5R2TaPUKrr4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="changeUpdateStarted" />
      <node concept="3cqZAl" id="5R2TaPUKrr5" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUKrr6" role="1B3o_S" />
      <node concept="3clFbS" id="5R2TaPUKrr7" role="3clF47" />
      <node concept="2AHcQZ" id="3tYsUK_RXsz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1$bBm" role="jymVt" />
    <node concept="3clFb_" id="5R2TaPUKrr0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="changeUpdateFinished" />
      <node concept="3cqZAl" id="5R2TaPUKrr1" role="3clF45" />
      <node concept="3Tm1VV" id="5R2TaPUKrr2" role="1B3o_S" />
      <node concept="3clFbS" id="5R2TaPUKrr3" role="3clF47" />
      <node concept="2AHcQZ" id="3tYsUK_RXsA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2JwSLRbyYN6">
    <property role="TrG5h" value="CurrentDifferenceRegistry" />
    <property role="3GE5qa" value="" />
    <node concept="3Tm1VV" id="2JwSLRbyYPI" role="1B3o_S" />
    <node concept="312cEg" id="2JwSLRbyYPl" role="jymVt">
      <property role="TrG5h" value="myCurrentDifferences" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbyYPm" role="1B3o_S" />
      <node concept="3rvAFt" id="2JwSLRbyYPn" role="1tU5fm">
        <node concept="3uibUv" id="2JwSLRbyYPo" role="3rvQeY">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="3uibUv" id="2JwSLRbyYX$" role="3rvSg0">
          <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
        </node>
      </node>
      <node concept="2ShNRf" id="2JwSLRbyYPq" role="33vP2m">
        <node concept="3rGOSV" id="2JwSLRbyYPr" role="2ShVmc">
          <node concept="3uibUv" id="2JwSLRbyYPs" role="3rHrn6">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
          <node concept="3uibUv" id="2JwSLRbyYX_" role="3rHtpV">
            <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbyYPz" role="jymVt">
      <property role="TrG5h" value="myModelRepositoryListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbyYP$" role="1B3o_S" />
      <node concept="3uibUv" id="1nctWZUYUcg" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepositoryContentAdapter" resolve="SRepositoryContentAdapter" />
      </node>
      <node concept="2ShNRf" id="2JwSLRbyYPA" role="33vP2m">
        <node concept="1pGfFk" id="2JwSLRbyYPB" role="2ShVmc">
          <ref role="37wK5l" node="2JwSLRbyYXa" resolve="CurrentDifferenceRegistry.MyRepositoryListener" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbyYPC" role="jymVt">
      <property role="TrG5h" value="myCommandQueue" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbyYPD" role="1B3o_S" />
      <node concept="3uibUv" id="2JwSLRbyYPE" role="1tU5fm">
        <ref role="3uigEE" node="3eE6dTgTyYL" resolve="SimpleCommandQueue" />
      </node>
    </node>
    <node concept="312cEg" id="7sg$kIGF7TC" role="jymVt">
      <property role="TrG5h" value="myGlobalBroadcaster" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7sg$kIGF7TD" role="1B3o_S" />
      <node concept="3uibUv" id="7sg$kIGF7TF" role="1tU5fm">
        <ref role="3uigEE" node="7sg$kIGEM28" resolve="CurrentDifferenceBroadcaster" />
      </node>
    </node>
    <node concept="312cEg" id="1D7R$zlPUG7" role="jymVt">
      <property role="TrG5h" value="myFileStatusListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1D7R$zlPUG8" role="1B3o_S" />
      <node concept="3uibUv" id="1D7R$zlPUG9" role="1tU5fm">
        <ref role="3uigEE" node="1D7R$zlPUFY" resolve="CurrentDifferenceRegistry.MyFileStatusListener" />
      </node>
      <node concept="2ShNRf" id="1D7R$zlPUGn" role="33vP2m">
        <node concept="1pGfFk" id="1D7R$zlPUGo" role="2ShVmc">
          <ref role="37wK5l" node="1D7R$zlPUG2" resolve="CurrentDifferenceRegistry.MyFileStatusListener" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6y_kxB1UvQg" role="jymVt">
      <property role="TrG5h" value="myMpsProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6y_kxB1UvQh" role="1B3o_S" />
      <node concept="3uibUv" id="6y_kxB1UvQj" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="6y_kxB1UqtT" role="jymVt" />
    <node concept="3clFbW" id="2JwSLRbyYWL" role="jymVt">
      <node concept="3cqZAl" id="2JwSLRbyYWM" role="3clF45" />
      <node concept="3Tm1VV" id="2JwSLRbyYWN" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbyYWO" role="3clF47">
        <node concept="3clFbF" id="6y_kxB1UvQk" role="3cqZAp">
          <node concept="37vLTI" id="6y_kxB1UvQm" role="3clFbG">
            <node concept="37vLTw" id="6y_kxB1U_6t" role="37vLTJ">
              <ref role="3cqZAo" node="6y_kxB1UvQg" resolve="myMpsProject" />
            </node>
            <node concept="2YIFZM" id="3lAtKYMRmpX" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="3lAtKYMRmsu" role="37wK5m">
                <ref role="3cqZAo" node="6y_kxB1UvNc" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58EREyZPo7R" role="3cqZAp">
          <node concept="37vLTI" id="58EREyZPopA" role="3clFbG">
            <node concept="37vLTw" id="58EREyZPo7P" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbyYPC" resolve="myCommandQueue" />
            </node>
            <node concept="2ShNRf" id="2JwSLRbyYPF" role="37vLTx">
              <node concept="1pGfFk" id="2JwSLRbyYPG" role="2ShVmc">
                <ref role="37wK5l" node="3eE6dTgTyYN" resolve="SimpleCommandQueue" />
                <node concept="Xl_RD" id="2JwSLRbyYPH" role="37wK5m">
                  <property role="Xl_RC" value="ChangesManager command queue" />
                </node>
                <node concept="37vLTw" id="58EREyZPoYT" role="37wK5m">
                  <ref role="3cqZAo" node="6y_kxB1UvNc" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58EREyZPsJW" role="3cqZAp">
          <node concept="37vLTI" id="58EREyZPtpH" role="3clFbG">
            <node concept="37vLTw" id="58EREyZPsJU" role="37vLTJ">
              <ref role="3cqZAo" node="7sg$kIGF7TC" resolve="myGlobalBroadcaster" />
            </node>
            <node concept="2ShNRf" id="58EREyZPtAc" role="37vLTx">
              <node concept="1pGfFk" id="58EREyZPtAd" role="2ShVmc">
                <ref role="37wK5l" node="7sg$kIGEM4K" resolve="CurrentDifferenceBroadcaster" />
                <node concept="37vLTw" id="58EREyZPtAe" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYPC" resolve="myCommandQueue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6y_kxB1UvNc" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3lAtKYMRltY" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="3lAtKYMRlB2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3ReTDvBuPRA" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYPJ" role="jymVt">
      <property role="TrG5h" value="projectOpened" />
      <node concept="3cqZAl" id="2JwSLRbyYPL" role="3clF45" />
      <node concept="3clFbS" id="2JwSLRbyYPM" role="3clF47">
        <node concept="3cpWs8" id="31IQ8dwRQI6" role="3cqZAp">
          <node concept="3cpWsn" id="31IQ8dwRQI7" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="31IQ8dwRQEZ" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="31IQ8dwRQI8" role="33vP2m">
              <node concept="37vLTw" id="31IQ8dwRQI9" role="2Oq$k0">
                <ref role="3cqZAo" node="6y_kxB1UvQg" resolve="myMpsProject" />
              </node>
              <node concept="liA8E" id="31IQ8dwRQIa" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6GHSGUzdIPH" role="3cqZAp">
          <node concept="2OqwBi" id="6GHSGUzdIPN" role="3clFbG">
            <node concept="liA8E" id="6GHSGUzdIUq" role="2OqNvi">
              <ref role="37wK5l" to="jlcu:~FileStatusManager.addFileStatusListener(com.intellij.openapi.vcs.FileStatusListener,com.intellij.openapi.Disposable)" resolve="addFileStatusListener" />
              <node concept="37vLTw" id="2BHiRxeuq6o" role="37wK5m">
                <ref role="3cqZAo" node="1D7R$zlPUG7" resolve="myFileStatusListener" />
              </node>
              <node concept="37vLTw" id="31IQ8dwRQIb" role="37wK5m">
                <ref role="3cqZAo" node="31IQ8dwRQI7" resolve="ideaProject" />
              </node>
            </node>
            <node concept="2YIFZM" id="31IQ8dwRQsO" role="2Oq$k0">
              <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
              <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <node concept="37vLTw" id="31IQ8dwRR9X" role="37wK5m">
                <ref role="3cqZAo" node="31IQ8dwRQI7" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1nctWZUYGBL" role="3cqZAp">
          <node concept="2OqwBi" id="1nctWZUYPM3" role="3clFbG">
            <node concept="2ShNRf" id="1nctWZUYGBH" role="2Oq$k0">
              <node concept="1pGfFk" id="1nctWZUYNti" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~RepoListenerRegistrar.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SRepositoryListener)" resolve="RepoListenerRegistrar" />
                <node concept="2OqwBi" id="1nctWZUYOgv" role="37wK5m">
                  <node concept="37vLTw" id="1nctWZUYNvk" role="2Oq$k0">
                    <ref role="3cqZAo" node="6y_kxB1UvQg" resolve="myMpsProject" />
                  </node>
                  <node concept="liA8E" id="1nctWZUYPoX" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="37vLTw" id="1nctWZUYP_8" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYPz" resolve="myModelRepositoryListener" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1nctWZUYQg2" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~RepoListenerRegistrar.attach()" resolve="attach" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="xzqq001Kpf" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom5s" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom5t" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5u" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5v" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5w" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5x" role="1PaTwD">
              <property role="3oM_SC" value="command" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5y" role="1PaTwD">
              <property role="3oM_SC" value="thread" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5z" role="1PaTwD">
              <property role="3oM_SC" value="immediately," />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5$" role="1PaTwD">
              <property role="3oM_SC" value="let" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5_" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5A" role="1PaTwD">
              <property role="3oM_SC" value="refresh" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5B" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5C" role="1PaTwD">
              <property role="3oM_SC" value="structures" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5D" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5E" role="1PaTwD">
              <property role="3oM_SC" value="components." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="xzqq002NaK" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom5F" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom5G" role="1PaTwD">
              <property role="3oM_SC" value="Not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5H" role="1PaTwD">
              <property role="3oM_SC" value="sure" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5I" role="1PaTwD">
              <property role="3oM_SC" value="whether" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5J" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5K" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5L" role="1PaTwD">
              <property role="3oM_SC" value="StartupManager.registerPostStartupActivity" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5M" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5N" role="1PaTwD">
              <property role="3oM_SC" value="runWhenSmart;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5O" role="1PaTwD">
              <property role="3oM_SC" value="chose" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5P" role="1PaTwD">
              <property role="3oM_SC" value="latter" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5Q" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5R" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5S" role="1PaTwD">
              <property role="3oM_SC" value="javadoc" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="xzqq003CrH" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom5T" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom5U" role="1PaTwD">
              <property role="3oM_SC" value="promises" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5V" role="1PaTwD">
              <property role="3oM_SC" value="initialized" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5W" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5X" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5Y" role="1PaTwD">
              <property role="3oM_SC" value="addition" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom5Z" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom60" role="1PaTwD">
              <property role="3oM_SC" value="indexing" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom61" role="1PaTwD">
              <property role="3oM_SC" value="done" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom62" role="1PaTwD">
              <property role="3oM_SC" value="(to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom63" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom64" role="1PaTwD">
              <property role="3oM_SC" value="extent)." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xzqq001WB3" role="3cqZAp">
          <node concept="2OqwBi" id="xzqq0024D5" role="3clFbG">
            <node concept="2YIFZM" id="xzqq001ZwD" role="2Oq$k0">
              <ref role="37wK5l" to="4nm9:~DumbService.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="4nm9:~DumbService" resolve="DumbService" />
              <node concept="1rXfSq" id="xzqq0021nV" role="37wK5m">
                <ref role="37wK5l" node="10zdeIyjETe" resolve="getProject" />
              </node>
            </node>
            <node concept="liA8E" id="xzqq0027YQ" role="2OqNvi">
              <ref role="37wK5l" to="4nm9:~DumbService.runWhenSmart(java.lang.Runnable)" resolve="runWhenSmart" />
              <node concept="1bVj0M" id="xzqq001s11" role="37wK5m">
                <node concept="3clFbS" id="xzqq001s12" role="1bW5cS">
                  <node concept="3clFbF" id="xzqq001v07" role="3cqZAp">
                    <node concept="2OqwBi" id="xzqq001wLg" role="3clFbG">
                      <node concept="37vLTw" id="xzqq001v06" role="2Oq$k0">
                        <ref role="3cqZAo" node="2JwSLRbyYPC" resolve="myCommandQueue" />
                      </node>
                      <node concept="liA8E" id="xzqq001zKh" role="2OqNvi">
                        <ref role="37wK5l" node="xzqpZZZRCQ" resolve="startThread" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3lAtKYMSI5_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4uLJMq1tXOc" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYQb" role="jymVt">
      <property role="TrG5h" value="projectClosed" />
      <node concept="3cqZAl" id="2JwSLRbyYQd" role="3clF45" />
      <node concept="3clFbS" id="2JwSLRbyYQe" role="3clF47">
        <node concept="3clFbF" id="1nctWZUYQxU" role="3cqZAp">
          <node concept="2OqwBi" id="1nctWZUYTAl" role="3clFbG">
            <node concept="2ShNRf" id="1nctWZUYQxQ" role="2Oq$k0">
              <node concept="1pGfFk" id="1nctWZUYRBe" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~RepoListenerRegistrar.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SRepositoryListener)" resolve="RepoListenerRegistrar" />
                <node concept="2OqwBi" id="1nctWZUYS4x" role="37wK5m">
                  <node concept="37vLTw" id="1nctWZUYRDp" role="2Oq$k0">
                    <ref role="3cqZAo" node="6y_kxB1UvQg" resolve="myMpsProject" />
                  </node>
                  <node concept="liA8E" id="1nctWZUYTd7" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="37vLTw" id="1nctWZUYTpq" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYPz" resolve="myModelRepositoryListener" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1nctWZUYU6N" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~RepoListenerRegistrar.detach()" resolve="detach" />
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="2JwSLRbyZ05" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeulg5" role="1HWFw0">
            <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
          </node>
          <node concept="3clFbS" id="2JwSLRbyZ07" role="1HWHxc">
            <node concept="2Gpval" id="2JwSLRbyYQ_" role="3cqZAp">
              <node concept="2GrKxI" id="2JwSLRbyYQA" role="2Gsz3X">
                <property role="TrG5h" value="modelChangesManager" />
              </node>
              <node concept="2OqwBi" id="2JwSLRbyYQB" role="2GsD0m">
                <node concept="37vLTw" id="2BHiRxeuAEC" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                </node>
                <node concept="T8wYR" id="2JwSLRbyYQD" role="2OqNvi" />
              </node>
              <node concept="3clFbS" id="2JwSLRbyYQE" role="2LFqv$">
                <node concept="3clFbF" id="2JwSLRbyYQF" role="3cqZAp">
                  <node concept="2OqwBi" id="2JwSLRbyYQG" role="3clFbG">
                    <node concept="2GrUjf" id="2JwSLRbyYQH" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2JwSLRbyYQA" resolve="modelChangesManager" />
                    </node>
                    <node concept="liA8E" id="2JwSLRbyYQI" role="2OqNvi">
                      <ref role="37wK5l" node="2JwSLRbyYXA" resolve="dispose" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2JwSLRbyYQK" role="3cqZAp">
              <node concept="2OqwBi" id="2JwSLRbyYQL" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeul$0" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                </node>
                <node concept="1yHZxX" id="2JwSLRbyYQN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JwSLRbyYQO" role="3cqZAp">
          <node concept="2OqwBi" id="2JwSLRbyYQP" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuykr" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbyYPC" resolve="myCommandQueue" />
            </node>
            <node concept="liA8E" id="2JwSLRbyYQR" role="2OqNvi">
              <ref role="37wK5l" node="5MeZjb01poS" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3lAtKYMSJFC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1nctWZUZp0w" role="jymVt" />
    <node concept="3clFb_" id="10zdeIyjETe" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3uibUv" id="10zdeIyjHu5" role="3clF45">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="10zdeIyjETg" role="1B3o_S" />
      <node concept="3clFbS" id="10zdeIyjETh" role="3clF47">
        <node concept="3clFbF" id="10zdeIyjHu6" role="3cqZAp">
          <node concept="2OqwBi" id="xzqq0017LD" role="3clFbG">
            <node concept="37vLTw" id="xzqq0013Pg" role="2Oq$k0">
              <ref role="3cqZAo" node="6y_kxB1UvQg" resolve="myMpsProject" />
            </node>
            <node concept="liA8E" id="xzqq001bHC" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iU9OXv4Drl" role="jymVt" />
    <node concept="3clFb_" id="1iU9OXv4MY9" role="jymVt">
      <property role="TrG5h" value="getMPSProject" />
      <node concept="3clFbS" id="1iU9OXv4MYc" role="3clF47">
        <node concept="3cpWs6" id="1iU9OXv4RFe" role="3cqZAp">
          <node concept="37vLTw" id="1iU9OXv4UU0" role="3cqZAk">
            <ref role="3cqZAo" node="6y_kxB1UvQg" resolve="myMpsProject" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1iU9OXv4GF0" role="1B3o_S" />
      <node concept="3uibUv" id="1iU9OXv4K1X" role="3clF45">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="1nctWZUZfFR" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYXJ" role="jymVt">
      <property role="TrG5h" value="updateModelIfTracked" />
      <node concept="3cqZAl" id="2JwSLRbyYXK" role="3clF45" />
      <node concept="3clFbS" id="2JwSLRbyYXM" role="3clF47">
        <node concept="1HWtB8" id="2JwSLRbyZ0a" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuu1F" role="1HWFw0">
            <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
          </node>
          <node concept="3clFbS" id="2JwSLRbyZ0c" role="1HWHxc">
            <node concept="3cpWs8" id="9jwuAJt1C$" role="3cqZAp">
              <node concept="3cpWsn" id="9jwuAJt1C_" role="3cpWs9">
                <property role="TrG5h" value="modelDiff" />
                <node concept="3uibUv" id="9jwuAJsVEE" role="1tU5fm">
                  <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
                </node>
                <node concept="3EllGN" id="9jwuAJt1CA" role="33vP2m">
                  <node concept="37vLTw" id="9jwuAJt1CB" role="3ElVtu">
                    <ref role="3cqZAo" node="2JwSLRbyYYx" resolve="modelRef" />
                  </node>
                  <node concept="37vLTw" id="9jwuAJt1CC" role="3ElQJh">
                    <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2JwSLRbyYY5" role="3cqZAp">
              <node concept="3y3z36" id="9jwuAJt2ia" role="3clFbw">
                <node concept="10Nm6u" id="9jwuAJt2mn" role="3uHU7w" />
                <node concept="37vLTw" id="9jwuAJt28a" role="3uHU7B">
                  <ref role="3cqZAo" node="9jwuAJt1C_" resolve="modelDiff" />
                </node>
              </node>
              <node concept="3clFbS" id="2JwSLRbyYYa" role="3clFbx">
                <node concept="3clFbF" id="2JwSLRbzlo$" role="3cqZAp">
                  <node concept="2OqwBi" id="2JwSLRbzloS" role="3clFbG">
                    <node concept="37vLTw" id="9jwuAJt1CD" role="2Oq$k0">
                      <ref role="3cqZAo" node="9jwuAJt1C_" resolve="modelDiff" />
                    </node>
                    <node concept="liA8E" id="2JwSLRbzloW" role="2OqNvi">
                      <ref role="37wK5l" node="9jwuAJrVh9" resolve="scheduleFullUpdate" />
                      <node concept="37vLTw" id="9jwuAJt6vO" role="37wK5m">
                        <ref role="3cqZAo" node="9jwuAJt4xH" resolve="forceFull" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbyYYx" role="3clF46">
        <property role="TrG5h" value="modelRef" />
        <node concept="3uibUv" id="9jwuAJsK6a" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbyYYz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="9jwuAJt4xH" role="3clF46">
        <property role="TrG5h" value="forceFull" />
        <node concept="10P_77" id="9jwuAJt68d" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="4uLJMq1zG5z" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1nctWZUZiKE" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYRK" role="jymVt">
      <property role="TrG5h" value="updateModel" />
      <node concept="3cqZAl" id="2JwSLRbyYRL" role="3clF45" />
      <node concept="3clFbS" id="2JwSLRbyYRN" role="3clF47">
        <node concept="3clFbJ" id="2JwSLRbyYRO" role="3cqZAp">
          <node concept="3clFbS" id="2JwSLRbyYRP" role="3clFbx">
            <node concept="3cpWs6" id="2JwSLRbyYRQ" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2JwSLRbyYRR" role="3clFbw">
            <node concept="10Nm6u" id="2JwSLRbyYRS" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxglMZ2" role="3uHU7B">
              <ref role="3cqZAo" node="2JwSLRbyYSs" resolve="file" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6PUZm6l8yUW" role="3cqZAp" />
        <node concept="3cpWs8" id="6PUZm6l8xAv" role="3cqZAp">
          <node concept="3cpWsn" id="6PUZm6l8xAw" role="3cpWs9">
            <property role="TrG5h" value="fs" />
            <node concept="3uibUv" id="6PUZm6l8o6O" role="1tU5fm">
              <ref role="3uigEE" to="4hrd:~IdeaFileSystem" resolve="IdeaFileSystem" />
            </node>
            <node concept="2OqwBi" id="6PUZm6l8xAx" role="33vP2m">
              <node concept="37vLTw" id="6PUZm6l8xAy" role="2Oq$k0">
                <ref role="3cqZAo" node="6y_kxB1UvQg" resolve="myMpsProject" />
              </node>
              <node concept="liA8E" id="6PUZm6l8xAz" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6PUZm6l8yw3" role="3cqZAp">
          <node concept="3fqX7Q" id="6PUZm6l8yw4" role="3clFbw">
            <node concept="2OqwBi" id="6PUZm6l8yIX" role="3fr31v">
              <node concept="37vLTw" id="6PUZm6l8yIW" role="2Oq$k0">
                <ref role="3cqZAo" node="6PUZm6l8xAw" resolve="fs" />
              </node>
              <node concept="liA8E" id="6PUZm6l8yIY" role="2OqNvi">
                <ref role="37wK5l" to="4hrd:~IdeaFileSystem.canConvert(com.intellij.openapi.vfs.VirtualFile)" resolve="canConvert" />
                <node concept="37vLTw" id="6PUZm6l8yIZ" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYSs" resolve="file" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6PUZm6l8yw9" role="3clFbx">
            <node concept="3cpWs6" id="6PUZm6l8ywa" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="6PUZm6l8xU0" role="3cqZAp" />
        <node concept="3cpWs8" id="2JwSLRbyYRU" role="3cqZAp">
          <node concept="3cpWsn" id="2JwSLRbyYRV" role="3cpWs9">
            <property role="TrG5h" value="iFile" />
            <node concept="3uibUv" id="2JwSLRbyYRW" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="1iU9OXv3SO2" role="33vP2m">
              <node concept="37vLTw" id="6PUZm6l8xA$" role="2Oq$k0">
                <ref role="3cqZAo" node="6PUZm6l8xAw" resolve="fs" />
              </node>
              <node concept="liA8E" id="1iU9OXv3VPa" role="2OqNvi">
                <ref role="37wK5l" to="4hrd:~IdeaFileSystem.fromVirtualFile(com.intellij.openapi.vfs.VirtualFile)" resolve="fromVirtualFile" />
                <node concept="37vLTw" id="1iU9OXv3YP3" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYSs" resolve="file" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2JwSLRbyYS5" role="3cqZAp">
          <node concept="3cpWsn" id="2JwSLRbyYS6" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="9jwuAJsTyi" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2OqwBi" id="2tkR5cH5drr" role="33vP2m">
              <node concept="2YIFZM" id="2tkR5cH5drs" role="2Oq$k0">
                <ref role="1Pybhc" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
                <ref role="37wK5l" to="w1kc:~SModelFileTracker.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <node concept="2OqwBi" id="6y_kxB1UE3X" role="37wK5m">
                  <node concept="37vLTw" id="6y_kxB1UDYH" role="2Oq$k0">
                    <ref role="3cqZAo" node="6y_kxB1UvQg" resolve="myMpsProject" />
                  </node>
                  <node concept="liA8E" id="6y_kxB1UEcI" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2tkR5cH5drt" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModelFileTracker.modelFor(jetbrains.mps.vfs.IFile)" resolve="modelFor" />
                <node concept="37vLTw" id="3GM_nagTvpM" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYRV" resolve="iFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2JwSLRbyYSc" role="3cqZAp">
          <node concept="3clFbS" id="2JwSLRbyYSd" role="3clFbx">
            <node concept="3clFbF" id="2JwSLRbyYSo" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyzkiV" role="3clFbG">
                <ref role="37wK5l" node="2JwSLRbyYXJ" resolve="updateModelIfTracked" />
                <node concept="37vLTw" id="3GM_nagTBdw" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYS6" resolve="model" />
                </node>
                <node concept="3clFbT" id="9jwuAJt6_V" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="9jwuAJsUid" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT_f_" role="3uHU7B">
              <ref role="3cqZAo" node="2JwSLRbyYS6" resolve="model" />
            </node>
            <node concept="10Nm6u" id="2JwSLRbyYSi" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbyYSs" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="2JwSLRbyYSt" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbyYSu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4uLJMq1zG5_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6y_kxB1UD1M" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYSy" role="jymVt">
      <property role="TrG5h" value="updateLoadedModels" />
      <node concept="3cqZAl" id="2JwSLRbyYSz" role="3clF45" />
      <node concept="3clFbS" id="2JwSLRbyYS_" role="3clF47">
        <node concept="1HWtB8" id="9jwuAJsBh0" role="3cqZAp">
          <node concept="37vLTw" id="9jwuAJsBh1" role="1HWFw0">
            <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
          </node>
          <node concept="3clFbS" id="9jwuAJsBh2" role="1HWHxc">
            <node concept="2Gpval" id="9jwuAJsP8n" role="3cqZAp">
              <node concept="2GrKxI" id="9jwuAJsP8p" role="2Gsz3X">
                <property role="TrG5h" value="modelDiff" />
              </node>
              <node concept="3clFbS" id="9jwuAJsP8t" role="2LFqv$">
                <node concept="3clFbF" id="9jwuAJsPpI" role="3cqZAp">
                  <node concept="2OqwBi" id="9jwuAJsG8L" role="3clFbG">
                    <node concept="2GrUjf" id="9jwuAJsPxQ" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="9jwuAJsP8p" resolve="modelDiff" />
                    </node>
                    <node concept="liA8E" id="9jwuAJsGjx" role="2OqNvi">
                      <ref role="37wK5l" node="9jwuAJrVh9" resolve="scheduleFullUpdate" />
                      <node concept="3clFbT" id="9jwuAJsGqo" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="9jwuAJsEFQ" role="2GsD0m">
                <node concept="37vLTw" id="9jwuAJsE54" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                </node>
                <node concept="T8wYR" id="9jwuAJsF3u" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9jwuAJsMMq" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYSU" role="jymVt">
      <property role="TrG5h" value="disposeModelChangesManager" />
      <node concept="3cqZAl" id="2JwSLRbyYSV" role="3clF45" />
      <node concept="3Tm6S6" id="2JwSLRbyYSW" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbyYSX" role="3clF47">
        <node concept="1HWtB8" id="2JwSLRbyZ0f" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeujSP" role="1HWFw0">
            <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
          </node>
          <node concept="3clFbS" id="2JwSLRbyZ0h" role="1HWHxc">
            <node concept="3clFbJ" id="2JwSLRbyYT4" role="3cqZAp">
              <node concept="3clFbS" id="2JwSLRbyYT5" role="3clFbx">
                <node concept="3clFbF" id="2JwSLRbyYT6" role="3cqZAp">
                  <node concept="2OqwBi" id="2JwSLRbyYT7" role="3clFbG">
                    <node concept="3EllGN" id="2JwSLRbyYT8" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxglKW2" role="3ElVtu">
                        <ref role="3cqZAo" node="2JwSLRbyYTm" resolve="modelReference" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxeuhfB" role="3ElQJh">
                        <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2JwSLRbyYTb" role="2OqNvi">
                      <ref role="37wK5l" node="2JwSLRbyYXA" resolve="dispose" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2JwSLRbyYTd" role="3cqZAp">
                  <node concept="2OqwBi" id="2JwSLRbyYTe" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeudF1" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                    </node>
                    <node concept="kI3uX" id="2JwSLRbyYTg" role="2OqNvi">
                      <node concept="37vLTw" id="2BHiRxglnW0" role="kIiFs">
                        <ref role="3cqZAo" node="2JwSLRbyYTm" resolve="modelReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2JwSLRbyYTi" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxeuUcg" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                </node>
                <node concept="2Nt0df" id="2JwSLRbyYTk" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxghisN" role="38cxEo">
                    <ref role="3cqZAo" node="2JwSLRbyYTm" resolve="modelReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbyYTm" role="3clF46">
        <property role="TrG5h" value="modelReference" />
        <node concept="3uibUv" id="2JwSLRbyYTn" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbyYTo" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1tXOd" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYTp" role="jymVt">
      <property role="TrG5h" value="getCurrentDifference" />
      <node concept="3uibUv" id="2JwSLRbyYXE" role="3clF45">
        <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
      </node>
      <node concept="3Tm1VV" id="2JwSLRbyYTr" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbyYTs" role="3clF47">
        <node concept="3cpWs8" id="LH9FcH0aBk" role="3cqZAp">
          <node concept="3cpWsn" id="LH9FcH0aBl" role="3cpWs9">
            <property role="TrG5h" value="modelRef" />
            <node concept="3uibUv" id="LH9FcH0aBd" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2OqwBi" id="LH9FcH0aBm" role="33vP2m">
              <node concept="37vLTw" id="LH9FcH0aBn" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbyYTV" resolve="modelDescriptor" />
              </node>
              <node concept="liA8E" id="LH9FcH0aBo" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="LH9FcH08vi" role="3cqZAp">
          <node concept="37vLTw" id="LH9FcH08yc" role="1HWFw0">
            <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
          </node>
          <node concept="3clFbS" id="LH9FcH08vm" role="1HWHxc">
            <node concept="3clFbJ" id="LH9FcH08_2" role="3cqZAp">
              <node concept="2OqwBi" id="LH9FcH098s" role="3clFbw">
                <node concept="37vLTw" id="LH9FcH08BT" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                </node>
                <node concept="2Nt0df" id="LH9FcH0aaO" role="2OqNvi">
                  <node concept="37vLTw" id="LH9FcH0aBp" role="38cxEo">
                    <ref role="3cqZAo" node="LH9FcH0aBl" resolve="modelRef" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="LH9FcH08_4" role="3clFbx">
                <node concept="3cpWs6" id="LH9FcH0aHY" role="3cqZAp">
                  <node concept="3EllGN" id="LH9FcH0bjk" role="3cqZAk">
                    <node concept="37vLTw" id="LH9FcH0bme" role="3ElVtu">
                      <ref role="3cqZAo" node="LH9FcH0aBl" resolve="modelRef" />
                    </node>
                    <node concept="37vLTw" id="LH9FcH0aKU" role="3ElQJh">
                      <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="LH9FcH02oq" role="3cqZAp">
          <node concept="3cpWsn" id="LH9FcH02or" role="3cpWs9">
            <property role="TrG5h" value="difference" />
            <node concept="3uibUv" id="LH9FcH02lt" role="1tU5fm">
              <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
            </node>
            <node concept="2ShNRf" id="LH9FcH0bxj" role="33vP2m">
              <node concept="1pGfFk" id="LH9FcH0bxk" role="2ShVmc">
                <ref role="37wK5l" node="2JwSLRbyYMl" resolve="CurrentDifference" />
                <node concept="Xjq3P" id="LH9FcH0bxl" role="37wK5m" />
                <node concept="37vLTw" id="LH9FcH0bxm" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYTV" resolve="modelDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="68Q93WzI4_0" role="3cqZAp">
          <node concept="37vLTw" id="68Q93WzI4_1" role="1HWFw0">
            <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
          </node>
          <node concept="3clFbS" id="68Q93WzI4_2" role="1HWHxc">
            <node concept="3clFbJ" id="68Q93WzI4_3" role="3cqZAp">
              <node concept="2OqwBi" id="68Q93WzI4_5" role="3clFbw">
                <node concept="37vLTw" id="68Q93WzI4_6" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                </node>
                <node concept="2Nt0df" id="68Q93WzI4_7" role="2OqNvi">
                  <node concept="37vLTw" id="68Q93WzI4_8" role="38cxEo">
                    <ref role="3cqZAo" node="LH9FcH0aBl" resolve="modelRef" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="68Q93WzI4_9" role="3clFbx">
                <node concept="3clFbF" id="68Q93WzIhBI" role="3cqZAp">
                  <node concept="2OqwBi" id="68Q93WzIhBJ" role="3clFbG">
                    <node concept="37vLTw" id="68Q93WzIhBK" role="2Oq$k0">
                      <ref role="3cqZAo" node="LH9FcH02or" resolve="difference" />
                    </node>
                    <node concept="liA8E" id="68Q93WzIhBL" role="2OqNvi">
                      <ref role="37wK5l" node="2JwSLRbyYXA" resolve="dispose" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="68Q93WzI9XC" role="9aQIa">
                <node concept="3clFbS" id="68Q93WzI9XD" role="9aQI4">
                  <node concept="3clFbF" id="68Q93WzI4_a" role="3cqZAp">
                    <node concept="37vLTI" id="68Q93WzI4_b" role="3clFbG">
                      <node concept="3EllGN" id="68Q93WzI4_c" role="37vLTJ">
                        <node concept="37vLTw" id="68Q93WzI4_d" role="3ElQJh">
                          <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                        </node>
                        <node concept="37vLTw" id="68Q93WzI4_e" role="3ElVtu">
                          <ref role="3cqZAo" node="LH9FcH0aBl" resolve="modelRef" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="68Q93WzI4_f" role="37vLTx">
                        <ref role="3cqZAo" node="LH9FcH02or" resolve="difference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="68Q93WzI4_k" role="3cqZAp">
              <node concept="3EllGN" id="68Q93WzI4_l" role="3cqZAk">
                <node concept="37vLTw" id="68Q93WzI4_m" role="3ElVtu">
                  <ref role="3cqZAo" node="LH9FcH0aBl" resolve="modelRef" />
                </node>
                <node concept="37vLTw" id="68Q93WzI4_n" role="3ElQJh">
                  <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbyYTV" role="3clF46">
        <property role="TrG5h" value="modelDescriptor" />
        <node concept="3uibUv" id="3rSv5iRFq1y" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbyYTX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2JwSLRbyYTY" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="P$JXv" id="4uLJMq1zG5F" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsD$8" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsD$9" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$a" role="1PaTwD">
            <property role="3oM_SC" value="existing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$b" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$c" role="1PaTwD">
            <property role="3oM_SC" value="create" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$d" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$e" role="1PaTwD">
            <property role="3oM_SC" value="new" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD$f" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1u3Sp" role="jymVt" />
    <node concept="3clFb_" id="4uLJMq1u4gu" role="jymVt">
      <property role="TrG5h" value="getExistingCurDifference" />
      <node concept="2AHcQZ" id="4uLJMq1u4gv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="4uLJMq1u4gw" role="3clF46">
        <property role="TrG5h" value="modelReference" />
        <node concept="2AHcQZ" id="4uLJMq1u4gx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4uLJMq1uatl" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="3clFbS" id="4uLJMq1u4gz" role="3clF47">
        <node concept="1HWtB8" id="4uLJMq1u4g$" role="3cqZAp">
          <node concept="37vLTw" id="4uLJMq1u4gE" role="1HWFw0">
            <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
          </node>
          <node concept="3clFbS" id="4uLJMq1u4gA" role="1HWHxc">
            <node concept="3cpWs6" id="4uLJMq1u4gB" role="3cqZAp">
              <node concept="3EllGN" id="1A9$eqsdGY5" role="3cqZAk">
                <node concept="37vLTw" id="1A9$eqsdH0a" role="3ElVtu">
                  <ref role="3cqZAo" node="4uLJMq1u4gw" resolve="modelReference" />
                </node>
                <node concept="37vLTw" id="4uLJMq1u8oc" role="3ElQJh">
                  <ref role="3cqZAo" node="2JwSLRbyYPl" resolve="myCurrentDifferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4uLJMq1u4gF" role="1B3o_S" />
      <node concept="3uibUv" id="4uLJMq1u4gG" role="3clF45">
        <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1u44r" role="jymVt" />
    <node concept="2tJIrI" id="4uLJMq1tXOe" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGF7Ug" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="addGlobalDifferenceListener" />
      <node concept="3cqZAl" id="7sg$kIGF7Uh" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGF7Ui" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGF7Uj" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGF7Uk" role="3cqZAp">
          <node concept="2OqwBi" id="7sg$kIGF7Ul" role="3clFbG">
            <node concept="liA8E" id="7sg$kIGF7Un" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGEM2m" resolve="addDifferenceListener" />
              <node concept="37vLTw" id="2BHiRxgmbzQ" role="37wK5m">
                <ref role="3cqZAo" node="7sg$kIGF7Up" resolve="listener" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeun3z" role="2Oq$k0">
              <ref role="3cqZAo" node="7sg$kIGF7TC" resolve="myGlobalBroadcaster" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sg$kIGF7Up" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="7sg$kIGF7Uq" role="1tU5fm">
          <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
        </node>
        <node concept="2AHcQZ" id="7sg$kIGF7Ur" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1tXOf" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGF7Us" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="removeGlobalDifferenceListener" />
      <node concept="3cqZAl" id="7sg$kIGF7Ut" role="3clF45" />
      <node concept="3Tm1VV" id="7sg$kIGF7Uu" role="1B3o_S" />
      <node concept="3clFbS" id="7sg$kIGF7Uv" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGF7Uw" role="3cqZAp">
          <node concept="2OqwBi" id="7sg$kIGF7Ux" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuOQ$" role="2Oq$k0">
              <ref role="3cqZAo" node="7sg$kIGF7TC" resolve="myGlobalBroadcaster" />
            </node>
            <node concept="liA8E" id="7sg$kIGF7Uz" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGEM2_" resolve="removeDifferenceListener" />
              <node concept="37vLTw" id="2BHiRxgmzqL" role="37wK5m">
                <ref role="3cqZAo" node="7sg$kIGF7U_" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sg$kIGF7U_" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="7sg$kIGF7UA" role="1tU5fm">
          <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
        </node>
        <node concept="2AHcQZ" id="7sg$kIGF7UB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1tXOg" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYWE" role="jymVt">
      <property role="TrG5h" value="getCommandQueue" />
      <node concept="3uibUv" id="2JwSLRbyYWF" role="3clF45">
        <ref role="3uigEE" node="3eE6dTgTyYL" resolve="SimpleCommandQueue" />
      </node>
      <node concept="3Tm1VV" id="2JwSLRbyYWG" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbyYWH" role="3clF47">
        <node concept="3cpWs6" id="2JwSLRbyYWI" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeukEp" role="3cqZAk">
            <ref role="3cqZAo" node="2JwSLRbyYPC" resolve="myCommandQueue" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2JwSLRbyYWK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1tXOh" role="jymVt" />
    <node concept="3clFb_" id="7sg$kIGF7TO" role="jymVt">
      <property role="TrG5h" value="getGlobalBroadcaster" />
      <node concept="3uibUv" id="7sg$kIGF7TP" role="3clF45">
        <ref role="3uigEE" node="7sg$kIGEM28" resolve="CurrentDifferenceBroadcaster" />
      </node>
      <node concept="3clFbS" id="7sg$kIGF7TR" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGF7TS" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuHsj" role="3clFbG">
            <ref role="3cqZAo" node="7sg$kIGF7TC" resolve="myGlobalBroadcaster" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1tXOi" role="jymVt" />
    <node concept="2YIFZL" id="2JwSLRbyYP0" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="2JwSLRbyYP1" role="3clF45">
        <ref role="3uigEE" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
      </node>
      <node concept="3Tm1VV" id="2JwSLRbyYP2" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbyYP3" role="3clF47">
        <node concept="3clFbF" id="2JwSLRbyYP4" role="3cqZAp">
          <node concept="2OqwBi" id="2JwSLRbyYP5" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm$NG" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbyYP9" resolve="project" />
            </node>
            <node concept="liA8E" id="2JwSLRbyYP7" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
              <node concept="3VsKOn" id="2JwSLRbyYP8" role="37wK5m">
                <ref role="3VsUkX" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbyYP9" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2JwSLRbyYPa" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6y_kxB1UARC" role="jymVt" />
    <node concept="312cEu" id="1D7R$zlPUFY" role="jymVt">
      <property role="TrG5h" value="MyFileStatusListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="1D7R$zlPUG0" role="1B3o_S" />
      <node concept="3uibUv" id="1D7R$zlPUG1" role="EKbjA">
        <ref role="3uigEE" to="jlcu:~FileStatusListener" resolve="FileStatusListener" />
      </node>
      <node concept="3clFbW" id="1D7R$zlPUG2" role="jymVt">
        <node concept="3clFbS" id="1D7R$zlPUG3" role="3clF47" />
        <node concept="3Tm1VV" id="1D7R$zlPUG4" role="1B3o_S" />
        <node concept="3cqZAl" id="1D7R$zlPUG5" role="3clF45" />
      </node>
      <node concept="3clFb_" id="6GHSGUzdIUw" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="fileStatusesChanged" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="6GHSGUzdIUx" role="1B3o_S" />
        <node concept="3cqZAl" id="6GHSGUzdIUy" role="3clF45" />
        <node concept="3clFbS" id="6GHSGUzdIUz" role="3clF47">
          <node concept="3clFbF" id="1D7R$zlPL4f" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzhoO" role="3clFbG">
              <ref role="37wK5l" node="2JwSLRbyYSy" resolve="updateLoadedModels" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UCJ6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6GHSGUzdIU$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="fileStatusChanged" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="6GHSGUzdIU_" role="1B3o_S" />
        <node concept="3cqZAl" id="6GHSGUzdIUA" role="3clF45" />
        <node concept="37vLTG" id="6GHSGUzdIUB" role="3clF46">
          <property role="TrG5h" value="vf" />
          <node concept="3uibUv" id="6GHSGUzdIUC" role="1tU5fm">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
          <node concept="2AHcQZ" id="6GHSGUzdIUD" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="6GHSGUzdIUE" role="3clF47">
          <node concept="3clFbF" id="6GHSGUzdIUF" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyZZY" role="3clFbG">
              <ref role="37wK5l" node="2JwSLRbyYRK" resolve="updateModel" />
              <node concept="37vLTw" id="2BHiRxgma9q" role="37wK5m">
                <ref role="3cqZAo" node="6GHSGUzdIUB" resolve="vf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UCJ2" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9jwuAJsPQ2" role="jymVt" />
    <node concept="312cEu" id="2JwSLRbyYX8" role="jymVt">
      <property role="TrG5h" value="MyRepositoryListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbyYX9" role="1B3o_S" />
      <node concept="3uibUv" id="1nctWZUYWVK" role="1zkMxy">
        <ref role="3uigEE" to="lui2:~SRepositoryContentAdapter" resolve="SRepositoryContentAdapter" />
      </node>
      <node concept="3clFbW" id="2JwSLRbyYXa" role="jymVt">
        <node concept="3cqZAl" id="2JwSLRbyYXb" role="3clF45" />
        <node concept="3Tm1VV" id="2JwSLRbyYXc" role="1B3o_S" />
        <node concept="3clFbS" id="2JwSLRbyYXd" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="1nctWZUYXjx" role="jymVt" />
      <node concept="3clFb_" id="1nctWZUYXCt" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isIncluded" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="1nctWZUYXCu" role="1B3o_S" />
        <node concept="10P_77" id="1nctWZUYXCw" role="3clF45" />
        <node concept="37vLTG" id="1nctWZUYXCx" role="3clF46">
          <property role="TrG5h" value="module" />
          <node concept="3uibUv" id="1nctWZUYXCy" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
        <node concept="3clFbS" id="1nctWZUYXCz" role="3clF47">
          <node concept="3clFbF" id="1nctWZUYYri" role="3cqZAp">
            <node concept="3fqX7Q" id="1nctWZUYZ3B" role="3clFbG">
              <node concept="2OqwBi" id="1nctWZUYZ3D" role="3fr31v">
                <node concept="37vLTw" id="1nctWZUYZ3E" role="2Oq$k0">
                  <ref role="3cqZAo" node="1nctWZUYXCx" resolve="module" />
                </node>
                <node concept="liA8E" id="1nctWZUYZ3F" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1nctWZUYXC$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="9jwuAJs6oy" role="jymVt" />
      <node concept="3clFb_" id="9jwuAJs7QS" role="jymVt">
        <property role="TrG5h" value="isIncluded" />
        <node concept="3clFbS" id="9jwuAJs7QV" role="3clF47">
          <node concept="3cpWs6" id="9jwuAJs9m_" role="3cqZAp">
            <node concept="2ZW3vV" id="9jwuAJsa4q" role="3cqZAk">
              <node concept="3uibUv" id="9jwuAJsuVO" role="2ZW6by">
                <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
              </node>
              <node concept="37vLTw" id="9jwuAJs9yz" role="2ZW6bz">
                <ref role="3cqZAo" node="9jwuAJs8_s" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="9jwuAJs75p" role="1B3o_S" />
        <node concept="10P_77" id="9jwuAJs7Kt" role="3clF45" />
        <node concept="37vLTG" id="9jwuAJs8_s" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="9jwuAJs8_r" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1nctWZUYZ5y" role="jymVt" />
      <node concept="3clFb_" id="1nctWZUYZs1" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="startListening" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="1nctWZUYZs2" role="1B3o_S" />
        <node concept="3cqZAl" id="1nctWZUYZs4" role="3clF45" />
        <node concept="37vLTG" id="1nctWZUYZs5" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="1nctWZUYZs6" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
          <node concept="2AHcQZ" id="4henvQNw8M7" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="1nctWZUYZs7" role="3clF47">
          <node concept="3clFbJ" id="1nctWZUZ2p4" role="3cqZAp">
            <node concept="3clFbS" id="1nctWZUZ2p6" role="3clFbx">
              <node concept="3SKdUt" id="1nctWZUZ5X2" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXom6e" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXom6f" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXom6g" role="1PaTwD">
                    <property role="3oM_SC" value="care" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXom6h" role="1PaTwD">
                    <property role="3oM_SC" value="about" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXom6i" role="1PaTwD">
                    <property role="3oM_SC" value="modelReplaced" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXom6j" role="1PaTwD">
                    <property role="3oM_SC" value="event" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="6KMC31WmBiM" role="3cqZAp">
                <node concept="1PaTwC" id="6KMC31WmBiN" role="1aUNEU">
                  <node concept="3oM_SD" id="6KMC31WmBiO" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmCzz" role="1PaTwD">
                    <property role="3oM_SC" value="now" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmCz_" role="1PaTwD">
                    <property role="3oM_SC" value="that" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmCzA" role="1PaTwD">
                    <property role="3oM_SC" value="each" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmCzR" role="1PaTwD">
                    <property role="3oM_SC" value="CurrentDifference/ChangeTracking" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKHH" role="1PaTwD">
                    <property role="3oM_SC" value="got" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKHY" role="1PaTwD">
                    <property role="3oM_SC" value="own" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKIv" role="1PaTwD">
                    <property role="3oM_SC" value="model" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKIw" role="1PaTwD">
                    <property role="3oM_SC" value="listener," />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKIL" role="1PaTwD">
                    <property role="3oM_SC" value="perhaps," />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKIM" role="1PaTwD">
                    <property role="3oM_SC" value="can" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKJ3" role="1PaTwD">
                    <property role="3oM_SC" value="utilize" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKKk" role="1PaTwD">
                    <property role="3oM_SC" value="them?" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKKl" role="1PaTwD">
                    <property role="3oM_SC" value="Just" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKKA" role="1PaTwD">
                    <property role="3oM_SC" value="need" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKKB" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmKKC" role="1PaTwD">
                    <property role="3oM_SC" value="address" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmL4N" role="1PaTwD">
                    <property role="3oM_SC" value="ChangesTracking#doTracking" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31WmL5O" role="1PaTwD">
                    <property role="3oM_SC" value="trick." />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1nctWZUZ3q4" role="3cqZAp">
                <node concept="2OqwBi" id="1nctWZUZ3EL" role="3clFbG">
                  <node concept="37vLTw" id="1nctWZUZ3q2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1nctWZUYZs5" resolve="model" />
                  </node>
                  <node concept="liA8E" id="1nctWZUZ3T3" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="addModelListener" />
                    <node concept="Xjq3P" id="1nctWZUZ45S" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="6KMC31Wm$zB" role="3cqZAp">
                <node concept="1PaTwC" id="6KMC31Wm$zC" role="1aUNEU">
                  <node concept="3oM_SD" id="6KMC31Wm$zD" role="1PaTwD">
                    <property role="3oM_SC" value="FWIW," />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_Ap" role="1PaTwD">
                    <property role="3oM_SC" value="it's" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_wo" role="1PaTwD">
                    <property role="3oM_SC" value="highly" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_xE" role="1PaTwD">
                    <property role="3oM_SC" value="unlikely" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_yr" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_ys" role="1PaTwD">
                    <property role="3oM_SC" value="could" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_zv" role="1PaTwD">
                    <property role="3oM_SC" value="track" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_$0" role="1PaTwD">
                    <property role="3oM_SC" value="model" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_$h" role="1PaTwD">
                    <property role="3oM_SC" value="which" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_$M" role="1PaTwD">
                    <property role="3oM_SC" value="hasn't" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm__j" role="1PaTwD">
                    <property role="3oM_SC" value="been" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm__k" role="1PaTwD">
                    <property role="3oM_SC" value="tracked" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm___" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm__A" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm__B" role="1PaTwD">
                    <property role="3oM_SC" value="repository" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm__C" role="1PaTwD">
                    <property role="3oM_SC" value="yet," />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_Bd" role="1PaTwD">
                    <property role="3oM_SC" value="therefore" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_Bu" role="1PaTwD">
                    <property role="3oM_SC" value="updateModelIfTracked" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_BZ" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_C0" role="1PaTwD">
                    <property role="3oM_SC" value="likely" />
                  </node>
                  <node concept="3oM_SD" id="6KMC31Wm_C1" role="1PaTwD">
                    <property role="3oM_SC" value="NO-OP" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1nctWZUZfdU" role="3cqZAp">
                <node concept="1rXfSq" id="1nctWZUZfdS" role="3clFbG">
                  <ref role="37wK5l" node="2JwSLRbyYXJ" resolve="updateModelIfTracked" />
                  <node concept="2OqwBi" id="9jwuAJsRW0" role="37wK5m">
                    <node concept="37vLTw" id="1nctWZUZfz8" role="2Oq$k0">
                      <ref role="3cqZAo" node="1nctWZUYZs5" resolve="model" />
                    </node>
                    <node concept="liA8E" id="9jwuAJsSbu" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="3clFbT" id="9jwuAJt6HX" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="9jwuAJsxB7" role="3clFbw">
              <ref role="37wK5l" node="9jwuAJs7QS" resolve="isIncluded" />
              <node concept="37vLTw" id="9jwuAJsy4N" role="37wK5m">
                <ref role="3cqZAo" node="1nctWZUYZs5" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1nctWZUYZs8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1nctWZUYZTJ" role="jymVt" />
      <node concept="3clFb_" id="1nctWZUZ0Dz" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="stopListening" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="1nctWZUZ0D$" role="1B3o_S" />
        <node concept="3cqZAl" id="1nctWZUZ0DA" role="3clF45" />
        <node concept="37vLTG" id="1nctWZUZ0DB" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="1nctWZUZ0DC" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="1nctWZUZ0DD" role="3clF47">
          <node concept="3clFbF" id="1nctWZUZ4v9" role="3cqZAp">
            <node concept="2OqwBi" id="1nctWZUZ4JO" role="3clFbG">
              <node concept="37vLTw" id="1nctWZUZ4v7" role="2Oq$k0">
                <ref role="3cqZAo" node="1nctWZUZ0DB" resolve="model" />
              </node>
              <node concept="liA8E" id="1nctWZUZ53P" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="removeModelListener" />
                <node concept="Xjq3P" id="1nctWZUZ5b1" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2JwSLRbyYXr" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyWwr" role="3clFbG">
              <ref role="37wK5l" node="2JwSLRbyYSU" resolve="disposeModelChangesManager" />
              <node concept="2OqwBi" id="791rit5f635" role="37wK5m">
                <node concept="liA8E" id="791rit5f636" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
                <node concept="37vLTw" id="1nctWZUZ9wV" role="2Oq$k0">
                  <ref role="3cqZAo" node="1nctWZUZ0DB" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1nctWZUZ0DE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1nctWZUZ197" role="jymVt" />
      <node concept="2tJIrI" id="1nctWZUZ1aN" role="jymVt" />
      <node concept="3clFb_" id="1nctWZUZ1_r" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="modelReplaced" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="1nctWZUZ1_s" role="1B3o_S" />
        <node concept="3cqZAl" id="1nctWZUZ1_u" role="3clF45" />
        <node concept="37vLTG" id="1nctWZUZ1_v" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="1nctWZUZ1_w" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="1nctWZUZ1_x" role="3clF47">
          <node concept="3clFbJ" id="6h1S4muBMrZ" role="3cqZAp">
            <node concept="3fqX7Q" id="4CruXksA3Zk" role="3clFbw">
              <node concept="1rXfSq" id="9jwuAJsAw5" role="3fr31v">
                <ref role="37wK5l" node="9jwuAJs7QS" resolve="isIncluded" />
                <node concept="37vLTw" id="9jwuAJsAVq" role="37wK5m">
                  <ref role="3cqZAo" node="1nctWZUZ1_v" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4CruXksA3Zq" role="3clFbx">
              <node concept="3cpWs6" id="1nctWZUZc15" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="9jwuAJt2Dl" role="3cqZAp">
            <node concept="1rXfSq" id="9jwuAJt2Dj" role="3clFbG">
              <ref role="37wK5l" node="2JwSLRbyYXJ" resolve="updateModelIfTracked" />
              <node concept="2OqwBi" id="9jwuAJt3PU" role="37wK5m">
                <node concept="37vLTw" id="9jwuAJt3yN" role="2Oq$k0">
                  <ref role="3cqZAo" node="1nctWZUZ1_v" resolve="model" />
                </node>
                <node concept="liA8E" id="9jwuAJt45n" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
              <node concept="3clFbT" id="9jwuAJt4ic" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1nctWZUZ1_y" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1nctWZUZ7Gn" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="6y_kxB1U_7F" role="jymVt" />
    <node concept="312cEu" id="3lAtKYMSONy" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="MyProjectListener" />
      <node concept="2tJIrI" id="3lAtKYMSQPA" role="jymVt" />
      <node concept="3Tm6S6" id="3lAtKYMSMWR" role="1B3o_S" />
      <node concept="3uibUv" id="3lAtKYMSQMG" role="EKbjA">
        <ref role="3uigEE" to="4nm9:~ProjectManagerListener" resolve="ProjectManagerListener" />
      </node>
      <node concept="3clFb_" id="3lAtKYMSQTz" role="jymVt">
        <property role="TrG5h" value="projectOpened" />
        <node concept="3Tm1VV" id="3lAtKYMSQT_" role="1B3o_S" />
        <node concept="3cqZAl" id="3lAtKYMSQTB" role="3clF45" />
        <node concept="37vLTG" id="3lAtKYMSQTC" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="3lAtKYMSQTD" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="2AHcQZ" id="3lAtKYMSQTE" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="3lAtKYMSQTF" role="3clF47">
          <node concept="3cpWs8" id="3lAtKYMSS1L" role="3cqZAp">
            <node concept="3cpWsn" id="3lAtKYMSS1K" role="3cpWs9">
              <property role="TrG5h" value="registry" />
              <node concept="3uibUv" id="3lAtKYMSS1M" role="1tU5fm">
                <ref role="3uigEE" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
              </node>
              <node concept="2OqwBi" id="3lAtKYMSSdD" role="33vP2m">
                <node concept="37vLTw" id="3lAtKYMSSdC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lAtKYMSQTC" resolve="project" />
                </node>
                <node concept="liA8E" id="3lAtKYMSSdE" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                  <node concept="3VsKOn" id="3lAtKYMSSdF" role="37wK5m">
                    <ref role="3VsUkX" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3lAtKYMSSFv" role="3cqZAp">
            <node concept="2OqwBi" id="3lAtKYMSSOU" role="3clFbG">
              <node concept="37vLTw" id="3lAtKYMSSFt" role="2Oq$k0">
                <ref role="3cqZAo" node="3lAtKYMSS1K" resolve="registry" />
              </node>
              <node concept="liA8E" id="3lAtKYMSSUS" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbyYPJ" resolve="projectOpened" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3lAtKYMSQTG" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3lAtKYMSQTN" role="jymVt">
        <property role="TrG5h" value="projectClosed" />
        <node concept="3Tm1VV" id="3lAtKYMSQTP" role="1B3o_S" />
        <node concept="3cqZAl" id="3lAtKYMSQTR" role="3clF45" />
        <node concept="37vLTG" id="3lAtKYMSQTS" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="3lAtKYMSQTT" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="2AHcQZ" id="3lAtKYMSQTU" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="3lAtKYMSQTV" role="3clF47">
          <node concept="3cpWs8" id="3lAtKYMST2v" role="3cqZAp">
            <node concept="3cpWsn" id="3lAtKYMST2w" role="3cpWs9">
              <property role="TrG5h" value="registry" />
              <node concept="3uibUv" id="3lAtKYMST2x" role="1tU5fm">
                <ref role="3uigEE" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
              </node>
              <node concept="2OqwBi" id="3lAtKYMST2y" role="33vP2m">
                <node concept="37vLTw" id="3lAtKYMST2z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3lAtKYMSQTS" resolve="project" />
                </node>
                <node concept="liA8E" id="3lAtKYMST2$" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.getServiceIfCreated(java.lang.Class)" resolve="getServiceIfCreated" />
                  <node concept="3VsKOn" id="3lAtKYMST2_" role="37wK5m">
                    <ref role="3VsUkX" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3lAtKYMSTpW" role="3cqZAp">
            <node concept="3clFbS" id="3lAtKYMSTpY" role="3clFbx">
              <node concept="3cpWs6" id="3lAtKYMSTX5" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="3lAtKYMSTKo" role="3clFbw">
              <node concept="10Nm6u" id="3lAtKYMSTQT" role="3uHU7w" />
              <node concept="37vLTw" id="3lAtKYMSTx$" role="3uHU7B">
                <ref role="3cqZAo" node="3lAtKYMST2w" resolve="registry" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3lAtKYMST2A" role="3cqZAp">
            <node concept="2OqwBi" id="3lAtKYMST2B" role="3clFbG">
              <node concept="37vLTw" id="3lAtKYMST2C" role="2Oq$k0">
                <ref role="3cqZAo" node="3lAtKYMST2w" resolve="registry" />
              </node>
              <node concept="liA8E" id="3lAtKYMSU1v" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbyYQb" resolve="projectClosed" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3lAtKYMSQTW" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3UR2Jj" id="4henvQNw8Mb" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsDzx" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsDzy" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDzz" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDz$" role="1PaTwD">
            <property role="3oM_SC" value="some" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsDz_" role="1PaTwD">
            <property role="3oM_SC" value="plugin.xml" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4henvQNw8Mm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~SuppressWarnings" resolve="SuppressWarnings" />
        <node concept="1SXeKx" id="4henvQNw8Pa" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~SuppressWarnings.value()" resolve="value" />
          <node concept="Xl_RD" id="4henvQNw8P9" role="2B70Vg">
            <property role="Xl_RC" value="unused" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2JwSLRbyUxe">
    <property role="TrG5h" value="CurrentDifference" />
    <node concept="3Tm1VV" id="2JwSLRbyUxf" role="1B3o_S" />
    <node concept="312cEg" id="2JwSLRbyYFQ" role="jymVt">
      <property role="TrG5h" value="myCommandQueue" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbyYFR" role="1B3o_S" />
      <node concept="3uibUv" id="2JwSLRbyYFT" role="1tU5fm">
        <ref role="3uigEE" node="3eE6dTgTyYL" resolve="SimpleCommandQueue" />
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbyYFU" role="jymVt">
      <property role="TrG5h" value="myModelDescriptor" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3rSv5iRzWGK" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
      </node>
      <node concept="3Tm6S6" id="2JwSLRbyYFV" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2JwSLRbzlmM" role="jymVt">
      <property role="TrG5h" value="myTracking" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbzlmN" role="1B3o_S" />
      <node concept="3uibUv" id="2JwSLRbzlmP" role="1tU5fm">
        <ref role="3uigEE" node="2JwSLRbzlkE" resolve="ChangesTracking" />
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbyYM7" role="jymVt">
      <property role="TrG5h" value="myChangeSet" />
      <node concept="3Tm6S6" id="2JwSLRbyYM8" role="1B3o_S" />
      <node concept="3uibUv" id="2JwSLRbzm_n" role="1tU5fm">
        <ref role="3uigEE" to="bfxj:69abr3Go1l7" resolve="ChangeSetImpl" />
      </node>
    </node>
    <node concept="312cEg" id="4henvQNvV8n" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4henvQNvSm_" role="1B3o_S" />
      <node concept="3uibUv" id="4henvQNvV8l" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbziM0" role="jymVt">
      <property role="TrG5h" value="myBroadcaster" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbziM1" role="1B3o_S" />
      <node concept="3uibUv" id="7sg$kIGF4sS" role="1tU5fm">
        <ref role="3uigEE" node="7sg$kIGEM28" resolve="CurrentDifferenceBroadcaster" />
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbyYMb" role="jymVt">
      <property role="TrG5h" value="myEnabled" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbyYMc" role="1B3o_S" />
      <node concept="2ShNRf" id="4uLJMq1xzzj" role="33vP2m">
        <node concept="1pGfFk" id="4uLJMq1x$Jx" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicBoolean.&lt;init&gt;()" resolve="AtomicBoolean" />
        </node>
      </node>
      <node concept="3uibUv" id="4uLJMq1xztr" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicBoolean" resolve="AtomicBoolean" />
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_q0" role="jymVt" />
    <node concept="3clFbW" id="2JwSLRbyYMl" role="jymVt">
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="2JwSLRbyYMm" role="3clF45" />
      <node concept="3Tm1VV" id="2JwSLRbyYMn" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbyYMo" role="3clF47">
        <node concept="3clFbF" id="2JwSLRbyYMt" role="3cqZAp">
          <node concept="37vLTI" id="2JwSLRbyYMu" role="3clFbG">
            <node concept="2OqwBi" id="2JwSLRbyZNh" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxgm6ez" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbyYMQ" resolve="registry" />
              </node>
              <node concept="liA8E" id="2JwSLRbyZRS" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbyYWE" resolve="getCommandQueue" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuWU8" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbyYFQ" resolve="myCommandQueue" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JwSLRbyYM$" role="3cqZAp">
          <node concept="37vLTI" id="2JwSLRbyYM_" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeut4k" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbyYFU" resolve="myModelDescriptor" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm8Cb" role="37vLTx">
              <ref role="3cqZAo" node="2JwSLRbyYMT" resolve="modelDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4henvQNvVeQ" role="3cqZAp">
          <node concept="37vLTI" id="4henvQNvW3I" role="3clFbG">
            <node concept="2OqwBi" id="4henvQNvWcg" role="37vLTx">
              <node concept="37vLTw" id="4henvQNvW5x" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbyYMQ" resolve="registry" />
              </node>
              <node concept="liA8E" id="4henvQNvWmu" role="2OqNvi">
                <ref role="37wK5l" node="10zdeIyjETe" resolve="getProject" />
              </node>
            </node>
            <node concept="37vLTw" id="4henvQNvVeO" role="37vLTJ">
              <ref role="3cqZAo" node="4henvQNvV8n" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JwSLRbzlmR" role="3cqZAp">
          <node concept="37vLTI" id="2JwSLRbzlmT" role="3clFbG">
            <node concept="2ShNRf" id="2JwSLRbzlmW" role="37vLTx">
              <node concept="1pGfFk" id="2JwSLRbzlmX" role="2ShVmc">
                <ref role="37wK5l" node="2JwSLRbzlkO" resolve="ChangesTracking" />
                <node concept="37vLTw" id="2BHiRxgm9KB" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYMQ" resolve="registry" />
                </node>
                <node concept="Xjq3P" id="2JwSLRbzlmY" role="37wK5m" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeulaT" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbzlmM" resolve="myTracking" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7sg$kIGF4sL" role="3cqZAp">
          <node concept="37vLTI" id="7sg$kIGF4sN" role="3clFbG">
            <node concept="2ShNRf" id="7sg$kIGF4sQ" role="37vLTx">
              <node concept="1pGfFk" id="7sg$kIGF4sT" role="2ShVmc">
                <ref role="37wK5l" node="7sg$kIGEM4K" resolve="CurrentDifferenceBroadcaster" />
                <node concept="37vLTw" id="2BHiRxeuwwb" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbyYFQ" resolve="myCommandQueue" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeupnR" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7sg$kIGF7TV" role="3cqZAp">
          <node concept="2OqwBi" id="7sg$kIGF7TX" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeudCm" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
            <node concept="liA8E" id="7sg$kIGF7U1" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGEM2m" resolve="addDifferenceListener" />
              <node concept="2OqwBi" id="7sg$kIGF7Ub" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxghfZX" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYMQ" resolve="registry" />
                </node>
                <node concept="liA8E" id="7sg$kIGF7Uf" role="2OqNvi">
                  <ref role="37wK5l" node="7sg$kIGF7TO" resolve="getGlobalBroadcaster" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbyYMQ" role="3clF46">
        <property role="TrG5h" value="registry" />
        <node concept="3uibUv" id="TEj4K5KHK5" role="1tU5fm">
          <ref role="3uigEE" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbyYMS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbyYMT" role="3clF46">
        <property role="TrG5h" value="modelDescriptor" />
        <node concept="3uibUv" id="3rSv5iRzVl8" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbyYMV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_ll" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbyYXA" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="2JwSLRbyYXB" role="3clF45" />
      <node concept="3Tm1VV" id="2JwSLRbyYXC" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbyYXD" role="3clF47">
        <node concept="3clFbF" id="2JwSLRbzlmZ" role="3cqZAp">
          <node concept="2OqwBi" id="2JwSLRbzln1" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuXzI" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzlmM" resolve="myTracking" />
            </node>
            <node concept="liA8E" id="2JwSLRbzln5" role="2OqNvi">
              <ref role="37wK5l" node="2JwSLRbzlm1" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_lm" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbziMZ" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="addDifferenceListener" />
      <node concept="3cqZAl" id="2JwSLRbziN0" role="3clF45" />
      <node concept="3Tm1VV" id="2JwSLRbziN1" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbziN2" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGF4sW" role="3cqZAp">
          <node concept="2OqwBi" id="7sg$kIGF4sY" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwCn" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
            <node concept="liA8E" id="7sg$kIGF4t2" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGEM2m" resolve="addDifferenceListener" />
              <node concept="37vLTw" id="2BHiRxgllh7" role="37wK5m">
                <ref role="3cqZAo" node="2JwSLRbziNb" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbziNb" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="2JwSLRbzj1Z" role="1tU5fm">
          <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbziNd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_ln" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbziNe" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="removeDifferenceListener" />
      <node concept="3cqZAl" id="2JwSLRbziNf" role="3clF45" />
      <node concept="3Tm1VV" id="2JwSLRbziNg" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbziNh" role="3clF47">
        <node concept="3clFbF" id="7sg$kIGF4t5" role="3cqZAp">
          <node concept="2OqwBi" id="7sg$kIGF4t6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuvKC" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
            <node concept="liA8E" id="7sg$kIGF4t8" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGEM2_" resolve="removeDifferenceListener" />
              <node concept="37vLTw" id="2BHiRxgm5Ib" role="37wK5m">
                <ref role="3cqZAo" node="2JwSLRbziNq" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbziNq" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="2JwSLRbzj22" role="1tU5fm">
          <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbziNs" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_lo" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbzm_i" role="jymVt">
      <property role="TrG5h" value="removeChangeSet" />
      <node concept="3cqZAl" id="2JwSLRbzm_j" role="3clF45" />
      <node concept="3clFbS" id="2JwSLRbzm_l" role="3clF47">
        <node concept="3clFbF" id="5zpsdFy4A1p" role="3cqZAp">
          <node concept="2OqwBi" id="5zpsdFy4A1r" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeufUj" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbyYFQ" resolve="myCommandQueue" />
            </node>
            <node concept="liA8E" id="5zpsdFy4A62" role="2OqNvi">
              <ref role="37wK5l" node="3eE6dTgTRnu" resolve="assertSoftlyIsCommandThread" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5zpsdFy4A67" role="3cqZAp">
          <node concept="3clFbS" id="5zpsdFy4A68" role="3clFbx">
            <node concept="3clFbF" id="7sg$kIGF4tI" role="3cqZAp">
              <node concept="2OqwBi" id="7sg$kIGF4tJ" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuymx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
                </node>
                <node concept="liA8E" id="7sg$kIGF4tL" role="2OqNvi">
                  <ref role="37wK5l" node="7sg$kIGEM4b" resolve="changeUpdateStarted" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4uLJMq1zvwP" role="3cqZAp">
              <node concept="2OqwBi" id="4uLJMq1zwgo" role="3clFbG">
                <node concept="37vLTw" id="4uLJMq1zvwN" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
                </node>
                <node concept="liA8E" id="4uLJMq1zwr0" role="2OqNvi">
                  <ref role="37wK5l" node="4uLJMq1zDU1" resolve="changesRemoved" />
                  <node concept="2OqwBi" id="4uLJMq1zwGE" role="37wK5m">
                    <node concept="37vLTw" id="4uLJMq1zwvr" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
                    </node>
                    <node concept="liA8E" id="4uLJMq1zwRN" role="2OqNvi">
                      <ref role="37wK5l" to="bfxj:69abr3Go1lF" resolve="getModelChanges" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5zpsdFy4A6h" role="3cqZAp">
              <node concept="37vLTI" id="5zpsdFy4A6j" role="3clFbG">
                <node concept="10Nm6u" id="5zpsdFy4A6m" role="37vLTx" />
                <node concept="37vLTw" id="2BHiRxeungB" role="37vLTJ">
                  <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7sg$kIGF4tQ" role="3cqZAp">
              <node concept="2OqwBi" id="7sg$kIGF4tR" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuPEv" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
                </node>
                <node concept="liA8E" id="7sg$kIGF4tT" role="2OqNvi">
                  <ref role="37wK5l" node="7sg$kIGEM4q" resolve="changeUpdateFinished" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5zpsdFy4A6c" role="3clFbw">
            <node concept="10Nm6u" id="5zpsdFy4A6f" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeusnm" role="3uHU7B">
              <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_lp" role="jymVt" />
    <node concept="3clFb_" id="5zpsdFy4A7m" role="jymVt">
      <property role="TrG5h" value="setChangeSet" />
      <node concept="3cqZAl" id="5zpsdFy4A7n" role="3clF45" />
      <node concept="3clFbS" id="5zpsdFy4A7o" role="3clF47">
        <node concept="3clFbF" id="5zpsdFy4A7p" role="3cqZAp">
          <node concept="2OqwBi" id="5zpsdFy4A7q" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTzx" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbyYFQ" resolve="myCommandQueue" />
            </node>
            <node concept="liA8E" id="5zpsdFy4A7s" role="2OqNvi">
              <ref role="37wK5l" node="3eE6dTgTRnu" resolve="assertSoftlyIsCommandThread" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5zpsdFy4A7Q" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8Wb" role="3clFbG">
            <ref role="37wK5l" node="2JwSLRbzm_i" resolve="removeChangeSet" />
          </node>
        </node>
        <node concept="3clFbF" id="7sg$kIGF4tM" role="3cqZAp">
          <node concept="2OqwBi" id="7sg$kIGF4tN" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeummh" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
            <node concept="liA8E" id="7sg$kIGF4tP" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGEM4b" resolve="changeUpdateStarted" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5zpsdFy4A7U" role="3cqZAp">
          <node concept="37vLTI" id="5zpsdFy4A7W" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm8hR" role="37vLTx">
              <ref role="3cqZAo" node="5zpsdFy4A7N" resolve="changeSetImpl" />
            </node>
            <node concept="37vLTw" id="2BHiRxeut3t" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4uLJMq1zy$4" role="3cqZAp">
          <node concept="2OqwBi" id="4uLJMq1zyUw" role="3clFbG">
            <node concept="37vLTw" id="4uLJMq1zy$2" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
            <node concept="liA8E" id="4uLJMq1zza7" role="2OqNvi">
              <ref role="37wK5l" node="4uLJMq1zDTD" resolve="changesAdded" />
              <node concept="2OqwBi" id="4uLJMq1zzvI" role="37wK5m">
                <node concept="37vLTw" id="4uLJMq1zzey" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
                </node>
                <node concept="liA8E" id="4uLJMq1zzFH" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:69abr3Go1lF" resolve="getModelChanges" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7sg$kIGF4tU" role="3cqZAp">
          <node concept="2OqwBi" id="7sg$kIGF4tV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeu_FJ" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
            <node concept="liA8E" id="7sg$kIGF4tX" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGEM4q" resolve="changeUpdateFinished" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5zpsdFy4A7N" role="3clF46">
        <property role="TrG5h" value="changeSetImpl" />
        <node concept="3uibUv" id="5zpsdFy4A7O" role="1tU5fm">
          <ref role="3uigEE" to="bfxj:69abr3Go1l7" resolve="ChangeSetImpl" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_lq" role="jymVt" />
    <node concept="3clFb_" id="1XuTulVDEGj" role="jymVt">
      <property role="TrG5h" value="getBroadcaster" />
      <node concept="3uibUv" id="1XuTulVDFfX" role="3clF45">
        <ref role="3uigEE" node="7sg$kIGEM28" resolve="CurrentDifferenceBroadcaster" />
      </node>
      <node concept="3clFbS" id="1XuTulVDEGm" role="3clF47">
        <node concept="3clFbF" id="1XuTulVDFfM" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuGCr" role="3clFbG">
            <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_lr" role="jymVt" />
    <node concept="3clFb_" id="5pmMiWv$OQH" role="jymVt">
      <property role="TrG5h" value="addChange" />
      <node concept="37vLTG" id="5pmMiWv$OQL" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5pmMiWv$OQO" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5pmMiWv$OQP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="5pmMiWv$OQI" role="3clF45" />
      <node concept="3clFbS" id="5pmMiWv$OQK" role="3clF47">
        <node concept="3clFbJ" id="5pmMiWv$OQQ" role="3cqZAp">
          <node concept="3y3z36" id="5pmMiWv$OQY" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeun35" role="3uHU7B">
              <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
            </node>
            <node concept="10Nm6u" id="5pmMiWv$OR0" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5pmMiWv$OQS" role="3clFbx">
            <node concept="3clFbF" id="5pmMiWv$OR1" role="3cqZAp">
              <node concept="2OqwBi" id="5pmMiWv$OR3" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuMDq" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
                </node>
                <node concept="liA8E" id="5pmMiWv$OR7" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:69abr3Go1nz" resolve="add" />
                  <node concept="37vLTw" id="2BHiRxgm9i0" role="37wK5m">
                    <ref role="3cqZAo" node="5pmMiWv$OQL" resolve="change" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5pmMiWv$ORa" role="3cqZAp">
              <node concept="2OqwBi" id="5pmMiWv$ORc" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeumZi" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
                </node>
                <node concept="liA8E" id="5pmMiWv$ORg" role="2OqNvi">
                  <ref role="37wK5l" node="7sg$kIGEM3_" resolve="changeAdded" />
                  <node concept="37vLTw" id="2BHiRxgm8EQ" role="37wK5m">
                    <ref role="3cqZAo" node="5pmMiWv$OQL" resolve="change" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_ls" role="jymVt" />
    <node concept="3clFb_" id="5pmMiWv$ORi" role="jymVt">
      <property role="TrG5h" value="removeChange" />
      <node concept="37vLTG" id="5pmMiWv$ORj" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5pmMiWv$ORk" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5pmMiWv$ORl" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="5pmMiWv$ORm" role="3clF45" />
      <node concept="3clFbS" id="5pmMiWv$ORn" role="3clF47">
        <node concept="3clFbJ" id="5pmMiWv$ORo" role="3cqZAp">
          <node concept="3y3z36" id="5pmMiWv$ORp" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuL8b" role="3uHU7B">
              <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
            </node>
            <node concept="10Nm6u" id="5pmMiWv$ORr" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5pmMiWv$ORs" role="3clFbx">
            <node concept="3clFbF" id="5pmMiWv$ORt" role="3cqZAp">
              <node concept="2OqwBi" id="5pmMiWv$ORu" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuvyi" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
                </node>
                <node concept="liA8E" id="5pmMiWv$ORw" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:6uGiN_44iLx" resolve="remove" />
                  <node concept="37vLTw" id="2BHiRxglRO8" role="37wK5m">
                    <ref role="3cqZAo" node="5pmMiWv$ORj" resolve="change" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5pmMiWv$ORy" role="3cqZAp">
              <node concept="2OqwBi" id="5pmMiWv$ORz" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeul57" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
                </node>
                <node concept="liA8E" id="5pmMiWv$OR_" role="2OqNvi">
                  <ref role="37wK5l" node="7sg$kIGEM3S" resolve="changeRemoved" />
                  <node concept="37vLTw" id="2BHiRxglkdl" role="37wK5m">
                    <ref role="3cqZAo" node="5pmMiWv$ORj" resolve="change" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1zxiC" role="jymVt" />
    <node concept="3clFb_" id="4uLJMq1zx6B" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="4uLJMq1zx6C" role="1B3o_S" />
      <node concept="3uibUv" id="4uLJMq1zx6E" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4uLJMq1zx6F" role="3clF47">
        <node concept="3cpWs6" id="4uLJMq1zxvz" role="3cqZAp">
          <node concept="3cpWs3" id="4uLJMq1zyeZ" role="3cqZAk">
            <node concept="37vLTw" id="4uLJMq1zyh8" role="3uHU7w">
              <ref role="3cqZAo" node="2JwSLRbyYFU" resolve="myModelDescriptor" />
            </node>
            <node concept="Xl_RD" id="4uLJMq1zxwF" role="3uHU7B">
              <property role="Xl_RC" value="curdif for " />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4uLJMq1zx6G" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_lt" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbzllq" role="jymVt">
      <property role="TrG5h" value="getModelDescriptor" />
      <node concept="3Tm1VV" id="2LRTLM2qhZm" role="1B3o_S" />
      <node concept="3uibUv" id="3rSv5iR$kb3" role="3clF45">
        <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
      </node>
      <node concept="3clFbS" id="2JwSLRbzllt" role="3clF47">
        <node concept="3clFbF" id="2JwSLRbzllu" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeugTk" role="3clFbG">
            <ref role="3cqZAo" node="2JwSLRbyYFU" resolve="myModelDescriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_lu" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbzm_p" role="jymVt">
      <property role="TrG5h" value="setEnabled" />
      <node concept="3Tm1VV" id="2JwSLRbzm_r" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbzm_s" role="3clF47">
        <node concept="3clFbJ" id="2JwSLRbzm_$" role="3cqZAp">
          <node concept="3clFbS" id="2JwSLRbzm__" role="3clFbx">
            <node concept="3clFbJ" id="2JwSLRbzm_P" role="3cqZAp">
              <node concept="37vLTw" id="2BHiRxgmyjs" role="3clFbw">
                <ref role="3cqZAo" node="2JwSLRbzm_x" resolve="enabled" />
              </node>
              <node concept="3clFbS" id="2JwSLRbzm_R" role="3clFbx">
                <node concept="3clFbF" id="9jwuAJt7br" role="3cqZAp">
                  <node concept="1rXfSq" id="9jwuAJt7bp" role="3clFbG">
                    <ref role="37wK5l" node="9jwuAJrVh9" resolve="scheduleFullUpdate" />
                    <node concept="3clFbT" id="9jwuAJt7is" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2JwSLRbzmA3" role="9aQIa">
                <node concept="3clFbS" id="2JwSLRbzmA4" role="9aQI4">
                  <node concept="3clFbF" id="2$8GqeEJnim" role="3cqZAp">
                    <node concept="2OqwBi" id="2$8GqeEJnio" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxeuC3z" role="2Oq$k0">
                        <ref role="3cqZAo" node="2JwSLRbyYFQ" resolve="myCommandQueue" />
                      </node>
                      <node concept="liA8E" id="2$8GqeEJnmZ" role="2OqNvi">
                        <ref role="37wK5l" node="3eE6dTgTRlP" resolve="addTask" />
                        <node concept="1bVj0M" id="2$8GqeEJnn0" role="37wK5m">
                          <node concept="3clFbS" id="2$8GqeEJnn1" role="1bW5cS">
                            <node concept="3clFbF" id="2$8GqeEJnij" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyyYvO" role="3clFbG">
                                <ref role="37wK5l" node="5zpsdFy4A7m" resolve="setChangeSet" />
                                <node concept="10Nm6u" id="2$8GqeEJnil" role="37wK5m" />
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
            <node concept="3cpWs6" id="4uLJMq1xAO_" role="3cqZAp">
              <node concept="3clFbT" id="4uLJMq1xAPX" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4uLJMq1x_RQ" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuqRL" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbyYMb" resolve="myEnabled" />
            </node>
            <node concept="liA8E" id="4uLJMq1xA1Y" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicBoolean.compareAndSet(boolean,boolean)" resolve="compareAndSet" />
              <node concept="3fqX7Q" id="4uLJMq1xA42" role="37wK5m">
                <node concept="37vLTw" id="4uLJMq1xA5D" role="3fr31v">
                  <ref role="3cqZAo" node="2JwSLRbzm_x" resolve="enabled" />
                </node>
              </node>
              <node concept="37vLTw" id="4uLJMq1xA82" role="37wK5m">
                <ref role="3cqZAo" node="2JwSLRbzm_x" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4uLJMq1xARt" role="3cqZAp">
          <node concept="3clFbT" id="4uLJMq1xASZ" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbzm_x" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="10P_77" id="2JwSLRbzm_y" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="4uLJMq1xzol" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="9jwuAJrLwK" role="jymVt" />
    <node concept="3clFb_" id="9jwuAJrVh9" role="jymVt">
      <property role="TrG5h" value="scheduleFullUpdate" />
      <node concept="3cqZAl" id="9jwuAJrVhb" role="3clF45" />
      <node concept="3clFbS" id="9jwuAJrVhd" role="3clF47">
        <node concept="3clFbJ" id="9jwuAJs50M" role="3cqZAp">
          <node concept="3clFbS" id="9jwuAJs50O" role="3clFbx">
            <node concept="3clFbF" id="2JwSLRbzlnJ" role="3cqZAp">
              <node concept="2OqwBi" id="2JwSLRbzlnL" role="3clFbG">
                <node concept="37vLTw" id="9jwuAJtvCq" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbyYFQ" resolve="myCommandQueue" />
                </node>
                <node concept="liA8E" id="2JwSLRbzlnP" role="2OqNvi">
                  <ref role="37wK5l" node="4DPIwUs8cj$" resolve="addTask" />
                  <node concept="1bVj0M" id="2JwSLRbzlnQ" role="37wK5m">
                    <node concept="3clFbS" id="2JwSLRbzlnR" role="1bW5cS">
                      <node concept="3clFbF" id="2JwSLRbzm$T" role="3cqZAp">
                        <node concept="2OqwBi" id="9jwuAJtw23" role="3clFbG">
                          <node concept="37vLTw" id="9jwuAJtvPO" role="2Oq$k0">
                            <ref role="3cqZAo" node="2JwSLRbzlmM" resolve="myTracking" />
                          </node>
                          <node concept="liA8E" id="9jwuAJtwdu" role="2OqNvi">
                            <ref role="37wK5l" node="2JwSLRbzmwM" resolve="update" />
                            <node concept="37vLTw" id="9jwuAJtwm1" role="37wK5m">
                              <ref role="3cqZAo" node="9jwuAJrWh7" resolve="force" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7az7i2AtzR2" role="37wK5m">
                    <node concept="37vLTw" id="4DPIwUsa7Jg" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JwSLRbyYFU" resolve="myModelDescriptor" />
                    </node>
                    <node concept="liA8E" id="7az7i2At$8y" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4uLJMq1xAkI" role="3clFbw">
            <node concept="37vLTw" id="9jwuAJs52W" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbyYMb" resolve="myEnabled" />
            </node>
            <node concept="liA8E" id="4uLJMq1xAxE" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicBoolean.get()" resolve="get" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9jwuAJrWh7" role="3clF46">
        <property role="TrG5h" value="force" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="9jwuAJrWh6" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1xAyH" role="jymVt" />
    <node concept="3clFb_" id="4uLJMq1uato" role="jymVt">
      <property role="TrG5h" value="isConflicted" />
      <node concept="3clFbS" id="4uLJMq1uatp" role="3clF47">
        <node concept="3cpWs6" id="4uLJMq1uatq" role="3cqZAp">
          <node concept="22lmx$" id="4uLJMq1uatr" role="3cqZAk">
            <node concept="3clFbC" id="4uLJMq1uats" role="3uHU7B">
              <node concept="2OqwBi" id="4uLJMq1ubqr" role="3uHU7B">
                <node concept="37vLTw" id="4uLJMq1ubqq" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbzlmM" resolve="myTracking" />
                </node>
                <node concept="liA8E" id="4uLJMq1ubqs" role="2OqNvi">
                  <ref role="37wK5l" node="4uLJMq1udhR" resolve="getStatus" />
                </node>
              </node>
              <node concept="10M0yZ" id="4uLJMq1ubtI" role="3uHU7w">
                <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_BOTH_CONFLICTS" resolve="MERGED_WITH_BOTH_CONFLICTS" />
              </node>
            </node>
            <node concept="3clFbC" id="4uLJMq1uatv" role="3uHU7w">
              <node concept="2OqwBi" id="4uLJMq1ubkj" role="3uHU7B">
                <node concept="37vLTw" id="4uLJMq1ubki" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbzlmM" resolve="myTracking" />
                </node>
                <node concept="liA8E" id="4uLJMq1ubkk" role="2OqNvi">
                  <ref role="37wK5l" node="4uLJMq1udhR" resolve="getStatus" />
                </node>
              </node>
              <node concept="10M0yZ" id="4uLJMq1ubnU" role="3uHU7w">
                <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4uLJMq1uaty" role="1B3o_S" />
      <node concept="10P_77" id="4uLJMq1uatz" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4henvQNvWqk" role="jymVt" />
    <node concept="3clFb_" id="4henvQNvWE8" role="jymVt">
      <property role="TrG5h" value="isTracked" />
      <node concept="3clFbS" id="4henvQNvWEb" role="3clF47">
        <node concept="3cpWs6" id="4henvQNvWKg" role="3cqZAp">
          <node concept="2OqwBi" id="4henvQNvXrK" role="3cqZAk">
            <node concept="37vLTw" id="4henvQNvWMi" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzlmM" resolve="myTracking" />
            </node>
            <node concept="liA8E" id="4henvQNvX_9" role="2OqNvi">
              <ref role="37wK5l" node="4henvQNvy4j" resolve="isTracked" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4henvQNvW$H" role="1B3o_S" />
      <node concept="10P_77" id="4henvQNvWE6" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4henvQNvX_m" role="jymVt" />
    <node concept="3clFb_" id="4henvQNvXQ7" role="jymVt">
      <property role="TrG5h" value="getStatus" />
      <node concept="3clFbS" id="4henvQNvXQa" role="3clF47">
        <node concept="3cpWs6" id="4henvQNvXWo" role="3cqZAp">
          <node concept="2OqwBi" id="4henvQNvY_V" role="3cqZAk">
            <node concept="37vLTw" id="4henvQNvXXr" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzlmM" resolve="myTracking" />
            </node>
            <node concept="liA8E" id="4henvQNvYI0" role="2OqNvi">
              <ref role="37wK5l" node="4uLJMq1udhR" resolve="getStatus" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4henvQNvXK1" role="1B3o_S" />
      <node concept="3uibUv" id="4henvQNvXQ5" role="3clF45">
        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
      </node>
    </node>
    <node concept="2tJIrI" id="4henvQNvZI1" role="jymVt" />
    <node concept="3clFb_" id="4henvQNw09n" role="jymVt">
      <property role="TrG5h" value="onModelStatusChanged" />
      <node concept="3clFbS" id="4henvQNw09q" role="3clF47">
        <node concept="3clFbF" id="4henvQNw0hX" role="3cqZAp">
          <node concept="2OqwBi" id="4henvQNw10g" role="3clFbG">
            <node concept="37vLTw" id="4henvQNw0hW" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
            <node concept="liA8E" id="4henvQNw6JZ" role="2OqNvi">
              <ref role="37wK5l" node="4henvQNw4TA" resolve="setEnabled" />
              <node concept="1rXfSq" id="4henvQNw6Nh" role="37wK5m">
                <ref role="37wK5l" node="4henvQNvWE8" resolve="isTracked" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4henvQNw1cb" role="3cqZAp">
          <node concept="2OqwBi" id="4henvQNw1qp" role="3clFbG">
            <node concept="37vLTw" id="4henvQNw1c9" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbziM0" resolve="myBroadcaster" />
            </node>
            <node concept="liA8E" id="4henvQNw71_" role="2OqNvi">
              <ref role="37wK5l" node="4henvQNw36x" resolve="modelStatusChanged" />
              <node concept="37vLTw" id="4henvQNw74R" role="37wK5m">
                <ref role="3cqZAo" node="4henvQNw0fo" resolve="mref" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4henvQNw03E" role="1B3o_S" />
      <node concept="3cqZAl" id="4henvQNw09l" role="3clF45" />
      <node concept="37vLTG" id="4henvQNw0fo" role="3clF46">
        <property role="TrG5h" value="mref" />
        <node concept="3uibUv" id="4henvQNw0fn" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="2AHcQZ" id="4henvQNw0fY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4_lx" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbzn5Q" role="jymVt">
      <property role="TrG5h" value="getChangeSet" />
      <node concept="3uibUv" id="2JwSLRbzn5W" role="3clF45">
        <ref role="3uigEE" to="bfxj:3kRMfhMv03j" resolve="ChangeSet" />
      </node>
      <node concept="3Tm1VV" id="2JwSLRbzn5S" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbzn5T" role="3clF47">
        <node concept="3clFbF" id="2JwSLRbzn5U" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeurn6" role="3clFbG">
            <ref role="3cqZAo" node="2JwSLRbyYM7" resolve="myChangeSet" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2JwSLRbzn5X" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3UR2Jj" id="4uLJMq1zvoF" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsDzA" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsDzB" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDzC" role="1PaTwD">
          <property role="3oM_SC" value="difference" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDzD" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDzE" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsDzF" role="1PaTwD">
          <property role="3oM_SC" value="model" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2JwSLRbzlkE">
    <property role="TrG5h" value="ChangesTracking" />
    <property role="1EXbeo" value="true" />
    <node concept="Wx3nA" id="6BB1EWX3JAh" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="LOCK" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6BB1EWX3J46" role="1B3o_S" />
      <node concept="3uibUv" id="6BB1EWX3JAf" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="6BB1EWX3K9f" role="33vP2m">
        <node concept="1pGfFk" id="6BB1EWX4pX_" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2JwSLRbzlkF" role="1B3o_S" />
    <node concept="2tJIrI" id="4uLJMq1uAQU" role="jymVt" />
    <node concept="312cEg" id="2JwSLRbzlnZ" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbzlo0" role="1B3o_S" />
      <node concept="3uibUv" id="2JwSLRbzlo2" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbzlkK" role="jymVt">
      <property role="TrG5h" value="myDifference" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbzlkL" role="1B3o_S" />
      <node concept="3uibUv" id="2JwSLRbzlkN" role="1tU5fm">
        <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbzlnl" role="jymVt">
      <property role="TrG5h" value="myQueue" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JwSLRbzlnm" role="1B3o_S" />
      <node concept="3uibUv" id="2JwSLRbzlno" role="1tU5fm">
        <ref role="3uigEE" node="3eE6dTgTyYL" resolve="SimpleCommandQueue" />
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbzll2" role="jymVt">
      <property role="TrG5h" value="myModelDescriptor" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3rSv5iRAElV" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
      </node>
      <node concept="3Tm6S6" id="2JwSLRbzll3" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7KIHI4A6ens" role="jymVt" />
    <node concept="312cEg" id="6h1S4muGYko" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myEventProcessor" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1CWvv8TieVE" role="1tU5fm">
        <ref role="3uigEE" node="2QnDi8Qvcci" resolve="ChangesTracking.MyEventProcessor" />
      </node>
      <node concept="3Tm6S6" id="6h1S4muGSdU" role="1B3o_S" />
      <node concept="2ShNRf" id="6h1S4muH4Sd" role="33vP2m">
        <node concept="HV5vD" id="6h1S4muH5Gn" role="2ShVmc">
          <ref role="HV5vE" node="2QnDi8Qvcci" resolve="ChangesTracking.MyEventProcessor" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7KIHI4_NbW2" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myEventCollector" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7KIHI4_NbW3" role="1tU5fm">
        <ref role="3uigEE" node="7KIHI4_OfdP" resolve="ChangesTracking.EventCollector" />
      </node>
      <node concept="3Tm6S6" id="7KIHI4_NbW4" role="1B3o_S" />
      <node concept="2ShNRf" id="7KIHI4_NbW5" role="33vP2m">
        <node concept="HV5vD" id="7KIHI4_NbW6" role="2ShVmc">
          <ref role="HV5vE" node="7KIHI4_OfdP" resolve="ChangesTracking.EventCollector" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2JwSLRbzlmj" role="jymVt">
      <property role="TrG5h" value="myDisposed" />
      <node concept="3Tm6S6" id="2JwSLRbzlmk" role="1B3o_S" />
      <node concept="10P_77" id="2JwSLRbzlmm" role="1tU5fm" />
      <node concept="3clFbT" id="2JwSLRbzlmG" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="4henvQNveHu" role="jymVt">
      <property role="TrG5h" value="myDoTracking" />
      <node concept="3Tm6S6" id="4henvQNve8D" role="1B3o_S" />
      <node concept="10P_77" id="4henvQNveHs" role="1tU5fm" />
      <node concept="3clFbT" id="4henvQNvfm5" role="33vP2m" />
    </node>
    <node concept="312cEg" id="1jHnZIL_C33" role="jymVt">
      <property role="TrG5h" value="myNodesToChanges" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1jHnZIL_C34" role="1B3o_S" />
      <node concept="3uibUv" id="7mo93oFtNno" role="1tU5fm">
        <ref role="3uigEE" to="e8no:~BidirectionalMultiMap" resolve="BidirectionalMultiMap" />
        <node concept="3uibUv" id="7mo93oFtNnq" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="3uibUv" id="7mo93oFtNns" role="11_B2D">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2ShNRf" id="7mo93oFtNnu" role="33vP2m">
        <node concept="1pGfFk" id="7mo93oFtNnv" role="2ShVmc">
          <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.&lt;init&gt;()" resolve="BidirectionalMultiMap" />
          <node concept="3uibUv" id="7mo93oFtNnw" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="3uibUv" id="7mo93oFtNnx" role="1pMfVU">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5xKkC$6h7xm" role="jymVt">
      <property role="TrG5h" value="myMetadataChanges" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5xKkC$6h7xn" role="1B3o_S" />
      <node concept="2hMVRd" id="5xKkC$6h7zN" role="1tU5fm">
        <node concept="3uibUv" id="5xKkC$6h7$n" role="2hN53Y">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2ShNRf" id="5xKkC$6h7zQ" role="33vP2m">
        <node concept="2i4dXS" id="5xKkC$6h7zR" role="2ShVmc">
          <node concept="3uibUv" id="cKywIt7Y5p" role="HW$YZ">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7mo93oFtLc7" role="jymVt">
      <property role="TrG5h" value="myAddedNodesToChanges" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7mo93oFtLc8" role="1B3o_S" />
      <node concept="3uibUv" id="7mo93oFtNq_" role="1tU5fm">
        <ref role="3uigEE" to="e8no:~BidirectionalMap" resolve="BidirectionalMap" />
        <node concept="3uibUv" id="7mo93oFtNqB" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="3uibUv" id="7mo93oFtNqD" role="11_B2D">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2ShNRf" id="7mo93oFtNqF" role="33vP2m">
        <node concept="1pGfFk" id="7mo93oFtNqG" role="2ShVmc">
          <ref role="37wK5l" to="e8no:~BidirectionalMap.&lt;init&gt;()" resolve="BidirectionalMap" />
          <node concept="3uibUv" id="7mo93oFtNqH" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="3uibUv" id="7mo93oFtNqI" role="1pMfVU">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="zRWNVrvAk4" role="jymVt">
      <property role="TrG5h" value="myLastParentAndNewChildrenIds" />
      <node concept="3Tm6S6" id="zRWNVrvAk5" role="1B3o_S" />
      <node concept="1LlUBW" id="1YgjV8LZHiV" role="1tU5fm">
        <node concept="3uibUv" id="1YgjV8LZHiX" role="1Lm7xW">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="_YKpA" id="zRWNVrvAk7" role="1Lm7xW">
          <node concept="3uibUv" id="zRWNVrvAk9" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5tlS4MXLsqY" role="jymVt">
      <property role="TrG5h" value="myStatusOnLastUpdate" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5tlS4MXLsqZ" role="1B3o_S" />
      <node concept="3uibUv" id="4uLJMq1ukbf" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
        <node concept="3uibUv" id="4uLJMq1ukhr" role="11_B2D">
          <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
        </node>
      </node>
      <node concept="2ShNRf" id="4uLJMq1ukpC" role="33vP2m">
        <node concept="1pGfFk" id="4uLJMq1uAOD" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;(java.lang.Object)" resolve="AtomicReference" />
          <node concept="3uibUv" id="4uLJMq1uAQJ" role="1pMfVU">
            <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
          </node>
          <node concept="10M0yZ" id="7L6OOe$O13F" role="37wK5m">
            <ref role="3cqZAo" to="jlcu:~FileStatus.NOT_CHANGED" resolve="NOT_CHANGED" />
            <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5yHL1hBu7$3" role="jymVt">
      <property role="TrG5h" value="myEventConsumingMapping" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5yHL1hBu7$4" role="1B3o_S" />
      <node concept="3uibUv" id="5yHL1hBu7$6" role="1tU5fm">
        <ref role="3uigEE" node="5yHL1hBtKL3" resolve="EventConsumingMapping" />
      </node>
      <node concept="2ShNRf" id="5yHL1hBu7$8" role="33vP2m">
        <node concept="1pGfFk" id="5yHL1hBu7$9" role="2ShVmc">
          <ref role="37wK5l" node="5yHL1hBtKL5" resolve="EventConsumingMapping" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX3lWD" role="jymVt" />
    <node concept="3clFbW" id="2JwSLRbzlkO" role="jymVt">
      <node concept="3cqZAl" id="2JwSLRbzlkP" role="3clF45" />
      <node concept="3Tm1VV" id="2JwSLRbzlkQ" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbzlkS" role="3clF47">
        <node concept="3clFbF" id="2JwSLRbzlkV" role="3cqZAp">
          <node concept="37vLTI" id="2JwSLRbzlkX" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuhz8" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmubH" role="37vLTx">
              <ref role="3cqZAo" node="2JwSLRbzlkT" resolve="difference" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JwSLRbzloZ" role="3cqZAp">
          <node concept="37vLTI" id="2JwSLRbzlp1" role="3clFbG">
            <node concept="2OqwBi" id="6h1S4muAfIV" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxglGdu" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbzlnW" resolve="registry" />
              </node>
              <node concept="liA8E" id="6h1S4muAgiG" role="2OqNvi">
                <ref role="37wK5l" node="10zdeIyjETe" resolve="getProject" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuE2a" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JwSLRbzll7" role="3cqZAp">
          <node concept="37vLTI" id="2JwSLRbzllm" role="3clFbG">
            <node concept="2OqwBi" id="2JwSLRbzllx" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxeudC8" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
              </node>
              <node concept="liA8E" id="2JwSLRbzll_" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbzllq" resolve="getModelDescriptor" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuku_" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JwSLRbzlod" role="3cqZAp">
          <node concept="37vLTI" id="2JwSLRbzloe" role="3clFbG">
            <node concept="2OqwBi" id="2JwSLRbzlof" role="37vLTx">
              <node concept="37vLTw" id="6h1S4muAfBc" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbzlnW" resolve="registry" />
              </node>
              <node concept="liA8E" id="2JwSLRbzloi" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbyYWE" resolve="getCommandQueue" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeug5h" role="37vLTJ">
              <ref role="3cqZAo" node="2JwSLRbzlnl" resolve="myQueue" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4henvQNCbc_" role="3cqZAp">
          <node concept="1rXfSq" id="4henvQNCbcz" role="3clFbG">
            <ref role="37wK5l" node="4henvQNvh4o" resolve="doTracking" />
            <node concept="1rXfSq" id="4henvQNCbqv" role="37wK5m">
              <ref role="37wK5l" node="4henvQNvy4j" resolve="isTracked" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbzlnW" role="3clF46">
        <property role="TrG5h" value="registry" />
        <node concept="3uibUv" id="6h1S4muA7hk" role="1tU5fm">
          <ref role="3uigEE" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbzloq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2JwSLRbzlkT" role="3clF46">
        <property role="TrG5h" value="difference" />
        <node concept="3uibUv" id="2JwSLRbzlkU" role="1tU5fm">
          <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
        </node>
        <node concept="2AHcQZ" id="2JwSLRbzlor" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4henvQNvfm7" role="jymVt" />
    <node concept="3clFb_" id="4henvQNvh4o" role="jymVt">
      <property role="TrG5h" value="doTracking" />
      <node concept="3clFbS" id="4henvQNvh4r" role="3clF47">
        <node concept="3clFbJ" id="4henvQNvhH7" role="3cqZAp">
          <node concept="3clFbS" id="4henvQNvhH9" role="3clFbx">
            <node concept="3clFbJ" id="4henvQNvoD2" role="3cqZAp">
              <node concept="37vLTw" id="4henvQNvoGR" role="3clFbw">
                <ref role="3cqZAo" node="4henvQNvhDk" resolve="flag" />
              </node>
              <node concept="3clFbS" id="4henvQNvoD4" role="3clFbx">
                <node concept="3clFbF" id="7KIHI4A4_t7" role="3cqZAp">
                  <node concept="1rXfSq" id="7KIHI4A4_t6" role="3clFbG">
                    <ref role="37wK5l" node="7KIHI4A2s3K" resolve="installEventCollector" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4henvQNvoLg" role="9aQIa">
                <node concept="3clFbS" id="4henvQNvoLh" role="9aQI4">
                  <node concept="3clFbF" id="7KIHI4A5bd1" role="3cqZAp">
                    <node concept="1rXfSq" id="7KIHI4A5bcZ" role="3clFbG">
                      <ref role="37wK5l" node="7KIHI4A3Bww" resolve="uninstallEventCollector" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4henvQNvoX7" role="3cqZAp">
              <node concept="37vLTI" id="4henvQNvpgL" role="3clFbG">
                <node concept="37vLTw" id="4henvQNvpkO" role="37vLTx">
                  <ref role="3cqZAo" node="4henvQNvhDk" resolve="flag" />
                </node>
                <node concept="37vLTw" id="4henvQNvoX5" role="37vLTJ">
                  <ref role="3cqZAo" node="4henvQNveHu" resolve="myDoTracking" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4henvQNvoxq" role="3clFbw">
            <node concept="37vLTw" id="4henvQNvo_g" role="3uHU7w">
              <ref role="3cqZAo" node="4henvQNvhDk" resolve="flag" />
            </node>
            <node concept="37vLTw" id="4henvQNvhSz" role="3uHU7B">
              <ref role="3cqZAo" node="4henvQNveHu" resolve="myDoTracking" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4henvQNvgvu" role="1B3o_S" />
      <node concept="3cqZAl" id="4henvQNvh4m" role="3clF45" />
      <node concept="37vLTG" id="4henvQNvhDk" role="3clF46">
        <property role="TrG5h" value="flag" />
        <node concept="10P_77" id="4henvQNvhDj" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7KIHI4A28G5" role="jymVt" />
    <node concept="3clFb_" id="7KIHI4A2s3K" role="jymVt">
      <property role="TrG5h" value="installEventCollector" />
      <node concept="3cqZAl" id="7KIHI4A2s3M" role="3clF45" />
      <node concept="3Tm6S6" id="7KIHI4A2LfI" role="1B3o_S" />
      <node concept="3clFbS" id="7KIHI4A2s3O" role="3clF47">
        <node concept="3clFbF" id="7KIHI4_U3Jx" role="3cqZAp">
          <node concept="2OqwBi" id="7KIHI4_UiMR" role="3clFbG">
            <node concept="37vLTw" id="7KIHI4_U3Jv" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
            </node>
            <node concept="liA8E" id="7KIHI4_UvyW" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="addModelListener" />
              <node concept="37vLTw" id="7KIHI4_UA04" role="37wK5m">
                <ref role="3cqZAo" node="7KIHI4_NbW2" resolve="myEventCollector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7KIHI4_ViF2" role="3cqZAp">
          <node concept="2OqwBi" id="7KIHI4_VoaR" role="3clFbG">
            <node concept="37vLTw" id="7KIHI4_ViF0" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
            </node>
            <node concept="liA8E" id="7KIHI4_VB6H" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
              <node concept="37vLTw" id="7KIHI4_VNBQ" role="37wK5m">
                <ref role="3cqZAo" node="7KIHI4_NbW2" resolve="myEventCollector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7KIHI4_WoaQ" role="3cqZAp">
          <node concept="2OqwBi" id="7KIHI4_XenP" role="3clFbG">
            <node concept="2OqwBi" id="7KIHI4_WU1p" role="2Oq$k0">
              <node concept="2OqwBi" id="7KIHI4_WBcW" role="2Oq$k0">
                <node concept="37vLTw" id="7KIHI4_WoaO" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                </node>
                <node concept="liA8E" id="7KIHI4_WOMa" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="7KIHI4_X91L" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="7KIHI4_Xr94" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.addCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="addCommandListener" />
              <node concept="37vLTw" id="7KIHI4_XD4u" role="37wK5m">
                <ref role="3cqZAo" node="7KIHI4_NbW2" resolve="myEventCollector" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7KIHI4A3Vu1" role="jymVt" />
    <node concept="3clFb_" id="7KIHI4A3Bww" role="jymVt">
      <property role="TrG5h" value="uninstallEventCollector" />
      <node concept="3cqZAl" id="7KIHI4A3Bwx" role="3clF45" />
      <node concept="3Tm6S6" id="7KIHI4A3Bwy" role="1B3o_S" />
      <node concept="3clFbS" id="7KIHI4A3Bwz" role="3clF47">
        <node concept="3clFbJ" id="7FCEjP1fcLR" role="3cqZAp">
          <node concept="3clFbS" id="7FCEjP1fcLT" role="3clFbx">
            <node concept="3SKdUt" id="7FCEjP1gx3I" role="3cqZAp">
              <node concept="1PaTwC" id="7FCEjP1gx3J" role="1aUNEU">
                <node concept="3oM_SD" id="7FCEjP1gET$" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1gx3P" role="1PaTwD">
                  <property role="3oM_SC" value="way" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1gIxj" role="1PaTwD">
                  <property role="3oM_SC" value="CurrentDifference" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1gIy4" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1gIyl" role="1PaTwD">
                  <property role="3oM_SC" value="obtained" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1gOW_" role="1PaTwD">
                  <property role="3oM_SC" value="(CurrentDifferenceRegistry.getCurrentDifference)" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1gOX6" role="1PaTwD">
                  <property role="3oM_SC" value="suggests" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1gOXB" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1gOXC" role="1PaTwD">
                  <property role="3oM_SC" value="can" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7FCEjP1gP5M" role="3cqZAp">
              <node concept="1PaTwC" id="7FCEjP1gP5N" role="1aUNEU">
                <node concept="3oM_SD" id="7FCEjP1h3mF" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3JY" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3K0" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3K1" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3K2" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3Kj" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3K$" role="1PaTwD">
                  <property role="3oM_SC" value="short-lived" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3L5" role="1PaTwD">
                  <property role="3oM_SC" value="repository" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3LC" role="1PaTwD">
                  <property role="3oM_SC" value="(e.g." />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3LD" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3LE" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1h3LV" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ha9h" role="1PaTwD">
                  <property role="3oM_SC" value="diff/merge)," />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ha9y" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ha9P" role="1PaTwD">
                  <property role="3oM_SC" value="may" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ha9Q" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1haa7" role="1PaTwD">
                  <property role="3oM_SC" value="disposed/unregistered" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hab8" role="1PaTwD">
                  <property role="3oM_SC" value="by" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1habp" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1habq" role="1PaTwD">
                  <property role="3oM_SC" value="time" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7FCEjP1hfDW" role="3cqZAp">
              <node concept="1PaTwC" id="7FCEjP1hfDX" role="1aUNEU">
                <node concept="3oM_SD" id="7FCEjP1hfDY" role="1PaTwD">
                  <property role="3oM_SC" value="there's" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsU5" role="1PaTwD">
                  <property role="3oM_SC" value="attempt" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsUn" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsUC" role="1PaTwD">
                  <property role="3oM_SC" value="dispose" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsUT" role="1PaTwD">
                  <property role="3oM_SC" value="its" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsWE" role="1PaTwD">
                  <property role="3oM_SC" value="CurrentDifference." />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsXF" role="1PaTwD">
                  <property role="3oM_SC" value="Indeed," />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsXW" role="1PaTwD">
                  <property role="3oM_SC" value="CDR" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsYt" role="1PaTwD">
                  <property role="3oM_SC" value="has" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsYu" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsYv" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsZi" role="1PaTwD">
                  <property role="3oM_SC" value="SRepository-sensitive" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsZz" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsZ$" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsZP" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsZQ" role="1PaTwD">
                  <property role="3oM_SC" value="assume" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hsZR" role="1PaTwD">
                  <property role="3oM_SC" value="every" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ht0o" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ht0p" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7FCEjP1ht2W" role="3cqZAp">
              <node concept="1PaTwC" id="7FCEjP1ht2y" role="1aUNEU">
                <node concept="3oM_SD" id="7FCEjP1ht2x" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ht1s" role="1PaTwD">
                  <property role="3oM_SC" value="receives" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ht1H" role="1PaTwD">
                  <property role="3oM_SC" value="comes" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ht1I" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ht1J" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1ht20" role="1PaTwD">
                  <property role="3oM_SC" value="Project's" />
                </node>
                <node concept="3oM_SD" id="7FCEjP1hFyL" role="1PaTwD">
                  <property role="3oM_SC" value="repository." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7KIHI4_Y6ky" role="3cqZAp">
              <node concept="2OqwBi" id="7KIHI4_ZcOP" role="3clFbG">
                <node concept="2OqwBi" id="7KIHI4_YUgM" role="2Oq$k0">
                  <node concept="2OqwBi" id="7KIHI4_YbU9" role="2Oq$k0">
                    <node concept="37vLTw" id="7KIHI4_Y6kw" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                    </node>
                    <node concept="liA8E" id="7KIHI4_YONH" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7KIHI4_Z7vv" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="7KIHI4_ZqnB" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.removeCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="removeCommandListener" />
                  <node concept="37vLTw" id="7KIHI4_Zvzb" role="37wK5m">
                    <ref role="3cqZAo" node="7KIHI4_NbW2" resolve="myEventCollector" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7FCEjP1fY_U" role="3clFbw">
            <node concept="10Nm6u" id="7FCEjP1g597" role="3uHU7w" />
            <node concept="2OqwBi" id="7FCEjP1fz_Q" role="3uHU7B">
              <node concept="37vLTw" id="7FCEjP1fqTp" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
              </node>
              <node concept="liA8E" id="7FCEjP1fMDh" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7KIHI4_ZW9F" role="3cqZAp">
          <node concept="2OqwBi" id="7KIHI4A01Kf" role="3clFbG">
            <node concept="37vLTw" id="7KIHI4_ZW9D" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
            </node>
            <node concept="liA8E" id="7KIHI4A0fMl" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="removeModelListener" />
              <node concept="37vLTw" id="7KIHI4A0l_0" role="37wK5m">
                <ref role="3cqZAo" node="7KIHI4_NbW2" resolve="myEventCollector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7KIHI4A0ERB" role="3cqZAp">
          <node concept="2OqwBi" id="7KIHI4A0TYi" role="3clFbG">
            <node concept="37vLTw" id="7KIHI4A0ER_" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
            </node>
            <node concept="liA8E" id="7KIHI4A17Pn" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
              <node concept="37vLTw" id="7KIHI4A1fSr" role="37wK5m">
                <ref role="3cqZAo" node="7KIHI4_NbW2" resolve="myEventCollector" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcA" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbzlm1" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="2JwSLRbzlm2" role="3clF45" />
      <node concept="3Tm1VV" id="2JwSLRbzlm3" role="1B3o_S" />
      <node concept="3clFbS" id="2JwSLRbzlm4" role="3clF47">
        <node concept="1HWtB8" id="2JwSLRbzlmw" role="3cqZAp">
          <node concept="37vLTw" id="6BB1EWX4q1e" role="1HWFw0">
            <ref role="3cqZAo" node="6BB1EWX3JAh" resolve="LOCK" />
          </node>
          <node concept="3clFbS" id="2JwSLRbzlmy" role="1HWHxc">
            <node concept="3clFbJ" id="2JwSLRbzlmo" role="3cqZAp">
              <node concept="3clFbS" id="2JwSLRbzlmp" role="3clFbx">
                <node concept="3clFbF" id="2JwSLRbzlm_" role="3cqZAp">
                  <node concept="37vLTI" id="2JwSLRbzlmB" role="3clFbG">
                    <node concept="3clFbT" id="2JwSLRbzlmE" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxeuhtM" role="37vLTJ">
                      <ref role="3cqZAo" node="2JwSLRbzlmj" resolve="myDisposed" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="385DPfiTYht" role="3cqZAp">
                  <node concept="3clFbS" id="385DPfiTYhv" role="3clFbx">
                    <node concept="3clFbF" id="7KIHI4A5ZY6" role="3cqZAp">
                      <node concept="1rXfSq" id="7KIHI4A5ZXZ" role="3clFbG">
                        <ref role="37wK5l" node="7KIHI4A3Bww" resolve="uninstallEventCollector" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="385DPfiV3di" role="3cqZAp">
                      <node concept="37vLTI" id="385DPfiVisr" role="3clFbG">
                        <node concept="3clFbT" id="385DPfiVnYm" role="37vLTx" />
                        <node concept="37vLTw" id="385DPfiV3dg" role="37vLTJ">
                          <ref role="3cqZAo" node="4henvQNveHu" resolve="myDoTracking" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="385DPfiUcGG" role="3clFbw">
                    <ref role="3cqZAo" node="4henvQNveHu" resolve="myDoTracking" />
                  </node>
                </node>
                <node concept="3clFbF" id="38WJxXow_BX" role="3cqZAp">
                  <node concept="2OqwBi" id="38WJxXow_BZ" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeuv05" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JwSLRbzlnl" resolve="myQueue" />
                    </node>
                    <node concept="liA8E" id="38WJxXow_C3" role="2OqNvi">
                      <ref role="37wK5l" node="3eE6dTgUd0h" resolve="runTask" />
                      <node concept="1bVj0M" id="38WJxXow_C4" role="37wK5m">
                        <node concept="3clFbS" id="38WJxXow_C5" role="1bW5cS">
                          <node concept="3clFbF" id="38WJxXow_C6" role="3cqZAp">
                            <node concept="2OqwBi" id="38WJxXow_C8" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxeuJJA" role="2Oq$k0">
                                <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                              </node>
                              <node concept="liA8E" id="38WJxXow_Cc" role="2OqNvi">
                                <ref role="37wK5l" node="2JwSLRbzm_i" resolve="removeChangeSet" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2JwSLRbzlmt" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxeuIwU" role="3fr31v">
                  <ref role="3cqZAo" node="2JwSLRbzlmj" resolve="myDisposed" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcB" role="jymVt" />
    <node concept="3clFb_" id="7mo93oFtNpm" role="jymVt">
      <property role="TrG5h" value="updateCacheForChange" />
      <node concept="37vLTG" id="7mo93oFtNpt" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="7mo93oFtNpv" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="7mo93oFtNpw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="7mo93oFtNpn" role="3clF45" />
      <node concept="3Tm6S6" id="7mo93oFtNpq" role="1B3o_S" />
      <node concept="3clFbS" id="7mo93oFtNpp" role="3clF47">
        <node concept="3cpWs8" id="7mo93oFtNpz" role="3cqZAp">
          <node concept="3cpWsn" id="7mo93oFtNp$" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="3uibUv" id="7mo93oFtNp_" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="1rXfSq" id="4hiugqysfqg" role="33vP2m">
              <ref role="37wK5l" node="5pmMiWv$CkL" resolve="getNodeIdForChange" />
              <node concept="37vLTw" id="2BHiRxgm9g7" role="37wK5m">
                <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7mo93oFtNpC" role="3cqZAp">
          <node concept="3clFbS" id="7mo93oFtNpD" role="3clFbx">
            <node concept="3clFbF" id="7mo93oFtNpE" role="3cqZAp">
              <node concept="2OqwBi" id="7mo93oFtNpF" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuyTC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jHnZIL_C33" resolve="myNodesToChanges" />
                </node>
                <node concept="liA8E" id="7mo93oFtNpH" role="2OqNvi">
                  <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="3GM_nagTywv" role="37wK5m">
                    <ref role="3cqZAo" node="7mo93oFtNp$" resolve="id" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxglvOr" role="37wK5m">
                    <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7mo93oFtNpK" role="3clFbw">
            <node concept="10Nm6u" id="7mo93oFtNpL" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTrPj" role="3uHU7B">
              <ref role="3cqZAo" node="7mo93oFtNp$" resolve="id" />
            </node>
          </node>
          <node concept="9aQIb" id="5xKkC$6h7zg" role="9aQIa">
            <node concept="3clFbS" id="5xKkC$6h7zh" role="9aQI4">
              <node concept="3clFbF" id="5xKkC$6h7zi" role="3cqZAp">
                <node concept="2OqwBi" id="5xKkC$6h7zk" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeumx5" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xKkC$6h7xm" resolve="myMetadataChanges" />
                  </node>
                  <node concept="TSZUe" id="5xKkC$6h7zo" role="2OqNvi">
                    <node concept="10QFUN" id="5xKkC$6h7zs" role="25WWJ7">
                      <node concept="37vLTw" id="2BHiRxgm6dp" role="10QFUP">
                        <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
                      </node>
                      <node concept="3uibUv" id="5xKkC$6h7zu" role="10QFUM">
                        <ref role="3uigEE" to="btf5:5Gi8bfMd_nh" resolve="MetadataChange" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7mo93oFtNpN" role="3cqZAp">
          <node concept="3clFbS" id="7mo93oFtNpO" role="3clFbx">
            <node concept="3clFbF" id="7mo93oFtNpP" role="3cqZAp">
              <node concept="37vLTI" id="7mo93oFtNpQ" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm9wg" role="37vLTx">
                  <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
                </node>
                <node concept="3EllGN" id="7mo93oFtNpS" role="37vLTJ">
                  <node concept="2OqwBi" id="7mo93oFtNpT" role="3ElVtu">
                    <node concept="37vLTw" id="2BHiRxglBAt" role="2Oq$k0">
                      <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
                    </node>
                    <node concept="liA8E" id="7mo93oFtNpV" role="2OqNvi">
                      <ref role="37wK5l" to="btf5:3RcDWS$m24_" resolve="getRootId" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuL45" role="3ElQJh">
                    <ref role="3cqZAo" node="7mo93oFtLc7" resolve="myAddedNodesToChanges" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="7mo93oFtNpX" role="3clFbw">
            <node concept="3uibUv" id="7mo93oFtNpY" role="2ZW6by">
              <ref role="3uigEE" to="btf5:5x0q8wkvS3B" resolve="AddRootChange" />
            </node>
            <node concept="37vLTw" id="2BHiRxglgvH" role="2ZW6bz">
              <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
            </node>
          </node>
          <node concept="3eNFk2" id="7mo93oFtNq0" role="3eNLev">
            <node concept="2ZW3vV" id="7mo93oFtNq1" role="3eO9$A">
              <node concept="3uibUv" id="7mo93oFtNq2" role="2ZW6by">
                <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm9e2" role="2ZW6bz">
                <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
              </node>
            </node>
            <node concept="3clFbS" id="7mo93oFtNq4" role="3eOfB_">
              <node concept="2Gpval" id="7mo93oFtNq5" role="3cqZAp">
                <node concept="2GrKxI" id="7mo93oFtNq6" role="2Gsz3X">
                  <property role="TrG5h" value="nodeId" />
                </node>
                <node concept="3clFbS" id="7mo93oFtNq7" role="2LFqv$">
                  <node concept="3clFbF" id="7mo93oFtNq8" role="3cqZAp">
                    <node concept="37vLTI" id="7mo93oFtNq9" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxglBAg" role="37vLTx">
                        <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
                      </node>
                      <node concept="3EllGN" id="7mo93oFtNqb" role="37vLTJ">
                        <node concept="2GrUjf" id="7mo93oFtNqc" role="3ElVtu">
                          <ref role="2Gs0qQ" node="7mo93oFtNq6" resolve="nodeId" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxeuof1" role="3ElQJh">
                          <ref role="3cqZAo" node="7mo93oFtLc7" resolve="myAddedNodesToChanges" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="4hiugqysn2E" role="2GsD0m">
                  <ref role="37wK5l" node="7mo93oFtNlE" resolve="getNodeIdsForNodeGroupChange" />
                  <node concept="10QFUN" id="7mo93oFtNqf" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxglf3$" role="10QFUP">
                      <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
                    </node>
                    <node concept="3uibUv" id="7mo93oFtNqh" role="10QFUM">
                      <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxeufPn" role="37wK5m">
                    <ref role="3cqZAo" node="zRWNVrvAk4" resolve="myLastParentAndNewChildrenIds" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4J1n7Jwbuiz" role="3eNLev">
            <node concept="2ZW3vV" id="4J1n7JwbA5j" role="3eO9$A">
              <node concept="3uibUv" id="4J1n7JwbBbR" role="2ZW6by">
                <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
              </node>
              <node concept="37vLTw" id="4J1n7Jwb$SL" role="2ZW6bz">
                <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
              </node>
            </node>
            <node concept="3clFbS" id="4J1n7Jwbui_" role="3eOfB_">
              <node concept="2Gpval" id="7v6p9iW9B1b" role="3cqZAp">
                <node concept="2GrKxI" id="7v6p9iW9B1c" role="2Gsz3X">
                  <property role="TrG5h" value="nodeId" />
                </node>
                <node concept="3clFbS" id="7v6p9iW9B1d" role="2LFqv$">
                  <node concept="3clFbF" id="7v6p9iW9B1e" role="3cqZAp">
                    <node concept="37vLTI" id="7v6p9iW9B1f" role="3clFbG">
                      <node concept="37vLTw" id="7v6p9iW9B1g" role="37vLTx">
                        <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
                      </node>
                      <node concept="3EllGN" id="7v6p9iW9B1h" role="37vLTJ">
                        <node concept="2GrUjf" id="7v6p9iW9B1i" role="3ElVtu">
                          <ref role="2Gs0qQ" node="7v6p9iW9B1c" resolve="nodeId" />
                        </node>
                        <node concept="37vLTw" id="7v6p9iW9B1j" role="3ElQJh">
                          <ref role="3cqZAo" node="7mo93oFtLc7" resolve="myAddedNodesToChanges" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="7v6p9iW9B1k" role="2GsD0m">
                  <ref role="37wK5l" node="4J1n7Jwc$i5" resolve="getNodeIdForNodeIdChange" />
                  <node concept="10QFUN" id="7v6p9iW9B1l" role="37wK5m">
                    <node concept="37vLTw" id="7v6p9iW9B1m" role="10QFUP">
                      <ref role="3cqZAo" node="7mo93oFtNpt" resolve="change" />
                    </node>
                    <node concept="3uibUv" id="7v6p9iW9F5r" role="10QFUM">
                      <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7v6p9iW9B1o" role="37wK5m">
                    <ref role="3cqZAo" node="zRWNVrvAk4" resolve="myLastParentAndNewChildrenIds" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcC" role="jymVt" />
    <node concept="3clFb_" id="5pmMiWv$A7_" role="jymVt">
      <property role="TrG5h" value="buildCaches" />
      <node concept="3cqZAl" id="5pmMiWv$A7A" role="3clF45" />
      <node concept="3Tm6S6" id="5pmMiWv$A7D" role="1B3o_S" />
      <node concept="3clFbS" id="5pmMiWv$A7C" role="3clF47">
        <node concept="3clFbF" id="5pmMiWv$Cce" role="3cqZAp">
          <node concept="2OqwBi" id="5pmMiWv$Ccg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunp4" role="2Oq$k0">
              <ref role="3cqZAo" node="1jHnZIL_C33" resolve="myNodesToChanges" />
            </node>
            <node concept="liA8E" id="5pmMiWv$CgR" role="2OqNvi">
              <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.clear()" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xKkC$6h7zw" role="3cqZAp">
          <node concept="2OqwBi" id="5xKkC$6h7zy" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeulaN" role="2Oq$k0">
              <ref role="3cqZAo" node="5xKkC$6h7xm" resolve="myMetadataChanges" />
            </node>
            <node concept="2EZike" id="5xKkC$6h7zU" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="7mo93oFtNh0" role="3cqZAp">
          <node concept="2OqwBi" id="7mo93oFtNh2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoWY" role="2Oq$k0">
              <ref role="3cqZAo" node="7mo93oFtLc7" resolve="myAddedNodesToChanges" />
            </node>
            <node concept="liA8E" id="53LGeYtZ29d" role="2OqNvi">
              <ref role="37wK5l" to="e8no:~BidirectionalMap.clear()" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zRWNVrvAS$" role="3cqZAp">
          <node concept="37vLTI" id="zRWNVrvASA" role="3clFbG">
            <node concept="10Nm6u" id="zRWNVrvASD" role="37vLTx" />
            <node concept="37vLTw" id="2BHiRxeuogV" role="37vLTJ">
              <ref role="3cqZAo" node="zRWNVrvAk4" resolve="myLastParentAndNewChildrenIds" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5pmMiWv$CgT" role="3cqZAp">
          <node concept="2GrKxI" id="5pmMiWv$CgU" role="2Gsz3X">
            <property role="TrG5h" value="ch" />
          </node>
          <node concept="3clFbS" id="5pmMiWv$CgW" role="2LFqv$">
            <node concept="3clFbF" id="7mo93oFtNqq" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyze6F" role="3clFbG">
                <ref role="37wK5l" node="7mo93oFtNpm" resolve="updateCacheForChange" />
                <node concept="2GrUjf" id="7mo93oFtNqs" role="37wK5m">
                  <ref role="2Gs0qQ" node="5pmMiWv$CgU" resolve="ch" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5pmMiWv$Ch8" role="2GsD0m">
            <node concept="2OqwBi" id="5pmMiWv$Ch3" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeuM_m" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
              </node>
              <node concept="liA8E" id="5pmMiWv$Ch7" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
              </node>
            </node>
            <node concept="liA8E" id="5pmMiWv$Chc" role="2OqNvi">
              <ref role="37wK5l" to="bfxj:3kRMfhMv9tJ" resolve="getModelChanges" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcD" role="jymVt" />
    <node concept="3clFb_" id="2JwSLRbzmwM" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="37vLTG" id="3wu1yURPy6C" role="3clF46">
        <property role="TrG5h" value="force" />
        <node concept="10P_77" id="3wu1yURP$be" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2JwSLRbzmwN" role="3clF45" />
      <node concept="3clFbS" id="2JwSLRbzmwP" role="3clF47">
        <node concept="3clFbF" id="2JwSLRbzmwR" role="3cqZAp">
          <node concept="2OqwBi" id="2JwSLRbzmwS" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuPhl" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzlnl" resolve="myQueue" />
            </node>
            <node concept="liA8E" id="2JwSLRbzmwU" role="2OqNvi">
              <ref role="37wK5l" node="3eE6dTgTRnu" resolve="assertSoftlyIsCommandThread" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="43LPOOeGBo7" role="3cqZAp" />
        <node concept="3clFbJ" id="6n1cCC6u4hc" role="3cqZAp">
          <node concept="3clFbS" id="6n1cCC6u4he" role="3clFbx">
            <node concept="3cpWs6" id="6n1cCC6uHxa" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6n1cCC6uomA" role="3clFbw">
            <node concept="37vLTw" id="6n1cCC6ubqM" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
            </node>
            <node concept="liA8E" id="6n1cCC6uw8v" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="43LPOOeGBSP" role="3cqZAp">
          <node concept="3cpWsn" id="43LPOOeGBSQ" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="43LPOOeGBSM" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="43LPOOeGBSR" role="33vP2m">
              <node concept="2YIFZM" id="43LPOOeGBSS" role="2Oq$k0">
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                <node concept="37vLTw" id="43LPOOeGBST" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
                </node>
              </node>
              <node concept="liA8E" id="43LPOOeGBSU" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7az7i2AvNZs" role="3cqZAp">
          <node concept="3cpWsn" id="7az7i2AvNZv" role="3cpWs9">
            <property role="TrG5h" value="doNotContinue" />
            <node concept="10P_77" id="7az7i2AvNZq" role="1tU5fm" />
            <node concept="3clFbT" id="7az7i2AvOKn" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="pU0Iv8GbOr" role="3cqZAp">
          <node concept="3cpWsn" id="pU0Iv8GbOu" role="3cpWs9">
            <property role="TrG5h" value="useEmptyBaseModel" />
            <node concept="10P_77" id="pU0Iv8GbOp" role="1tU5fm" />
            <node concept="3clFbT" id="pU0Iv8Gcsa" role="33vP2m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="4uLJMq1QqTK" role="3cqZAp">
          <property role="RRSoG" value="gZ5frni/trace" />
          <node concept="Xl_RD" id="4uLJMq1QqTL" role="RRSoy">
            <property role="Xl_RC" value="first read started" />
          </node>
        </node>
        <node concept="1QHqEK" id="2JwSLRbzmzk" role="3cqZAp">
          <node concept="1QHqEC" id="2JwSLRbzmzl" role="1QHqEI">
            <node concept="3clFbS" id="2JwSLRbzmzm" role="1bW5cS">
              <node concept="1HWtB8" id="7ZbzfE1erhM" role="3cqZAp">
                <node concept="37vLTw" id="6BB1EWX4u_q" role="1HWFw0">
                  <ref role="3cqZAo" node="6BB1EWX3JAh" resolve="LOCK" />
                </node>
                <node concept="3clFbS" id="7ZbzfE1erhO" role="1HWHxc">
                  <node concept="3clFbJ" id="7fUfLC9sP7y" role="3cqZAp">
                    <node concept="3clFbS" id="7fUfLC9sP7$" role="3clFbx">
                      <node concept="3cpWs6" id="7fUfLC9sQ9L" role="3cqZAp" />
                    </node>
                    <node concept="37vLTw" id="7fUfLC9sPDx" role="3clFbw">
                      <ref role="3cqZAo" node="2JwSLRbzlmj" resolve="myDisposed" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="2JwSLRbzmwZ" role="3cqZAp" />
                  <node concept="3cpWs8" id="2LgKyNJljrE" role="3cqZAp">
                    <node concept="3cpWsn" id="2LgKyNJljrH" role="3cpWs9">
                      <property role="TrG5h" value="isConflict" />
                      <node concept="10P_77" id="2LgKyNJljrC" role="1tU5fm" />
                      <node concept="2YIFZM" id="2LgKyNJlq9Q" role="33vP2m">
                        <ref role="1Pybhc" to="4rb9:60S3DtlPd_3" resolve="ConflictsUtil" />
                        <ref role="37wK5l" to="4rb9:60S3DtlPd_9" resolve="isModelOrModuleConflicting" />
                        <node concept="37vLTw" id="2LgKyNJlq9R" role="37wK5m">
                          <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                        </node>
                        <node concept="37vLTw" id="2LgKyNJlq9S" role="37wK5m">
                          <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2JwSLRbzmy0" role="3cqZAp">
                    <node concept="3cpWsn" id="2JwSLRbzmy1" role="3cpWs9">
                      <property role="TrG5h" value="status" />
                      <node concept="3uibUv" id="2JwSLRbzmy2" role="1tU5fm">
                        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                      </node>
                      <node concept="3K4zz7" id="2LgKyNJlMn0" role="33vP2m">
                        <node concept="37vLTw" id="2LgKyNJlLov" role="3K4Cdx">
                          <ref role="3cqZAo" node="2LgKyNJljrH" resolve="isConflict" />
                        </node>
                        <node concept="1rXfSq" id="2LgKyNJgjJo" role="3K4GZi">
                          <ref role="37wK5l" node="2LgKyNJ5I7R" resolve="calcStatus" />
                        </node>
                        <node concept="10M0yZ" id="2LgKyNJlNa6" role="3K4E3e">
                          <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                          <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5zpsdFy4Bll" role="3cqZAp" />
                  <node concept="3cpWs8" id="4henvQNvp_f" role="3cqZAp">
                    <node concept="3cpWsn" id="4henvQNvp_g" role="3cpWs9">
                      <property role="TrG5h" value="oldStatus" />
                      <node concept="3uibUv" id="4henvQNvp_h" role="1tU5fm">
                        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                      </node>
                      <node concept="2OqwBi" id="4henvQNvpEa" role="33vP2m">
                        <node concept="37vLTw" id="4henvQNvpEb" role="2Oq$k0">
                          <ref role="3cqZAo" node="5tlS4MXLsqY" resolve="myStatusOnLastUpdate" />
                        </node>
                        <node concept="liA8E" id="4henvQNvpEc" role="2OqNvi">
                          <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5tlS4MXLuvS" role="3cqZAp">
                    <node concept="3clFbS" id="5tlS4MXLuvT" role="3clFbx">
                      <node concept="3clFbF" id="5tlS4MXLuvB" role="3cqZAp">
                        <node concept="2OqwBi" id="4uLJMq1vavj" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxeuTrE" role="2Oq$k0">
                            <ref role="3cqZAo" node="5tlS4MXLsqY" resolve="myStatusOnLastUpdate" />
                          </node>
                          <node concept="liA8E" id="4uLJMq1vfHY" role="2OqNvi">
                            <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                            <node concept="37vLTw" id="4uLJMq1vkg9" role="37wK5m">
                              <ref role="3cqZAo" node="2JwSLRbzmy1" resolve="status" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4henvQNvqtI" role="3cqZAp">
                        <node concept="3clFbS" id="4henvQNvqtK" role="3clFbx">
                          <node concept="3clFbF" id="4henvQNvrIJ" role="3cqZAp">
                            <node concept="2OqwBi" id="4henvQNvs5i" role="3clFbG">
                              <node concept="37vLTw" id="4henvQNvrIH" role="2Oq$k0">
                                <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                              </node>
                              <node concept="liA8E" id="4henvQNvsfo" role="2OqNvi">
                                <ref role="37wK5l" node="2JwSLRbzm_i" resolve="removeChangeSet" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="22lmx$" id="4henvQNvrbr" role="3clFbw">
                          <node concept="3clFbC" id="4henvQNvrAW" role="3uHU7w">
                            <node concept="10M0yZ" id="4henvQNvrEW" role="3uHU7w">
                              <ref role="3cqZAo" to="jlcu:~FileStatus.IGNORED" resolve="IGNORED" />
                              <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                            </node>
                            <node concept="37vLTw" id="4henvQNvrfm" role="3uHU7B">
                              <ref role="3cqZAo" node="2JwSLRbzmy1" resolve="status" />
                            </node>
                          </node>
                          <node concept="3clFbC" id="4henvQNvqT0" role="3uHU7B">
                            <node concept="37vLTw" id="4henvQNvqxG" role="3uHU7B">
                              <ref role="3cqZAo" node="2JwSLRbzmy1" resolve="status" />
                            </node>
                            <node concept="10M0yZ" id="4henvQNvqX0" role="3uHU7w">
                              <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                              <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4henvQNvslM" role="3cqZAp">
                        <node concept="1rXfSq" id="4henvQNvslK" role="3clFbG">
                          <ref role="37wK5l" node="4henvQNvh4o" resolve="doTracking" />
                          <node concept="1rXfSq" id="4henvQNvRUK" role="37wK5m">
                            <ref role="37wK5l" node="4henvQNvy4j" resolve="isTracked" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4henvQNvsOV" role="3cqZAp">
                        <node concept="2OqwBi" id="4henvQNvtbn" role="3clFbG">
                          <node concept="37vLTw" id="4henvQNvsOT" role="2Oq$k0">
                            <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                          </node>
                          <node concept="liA8E" id="4henvQN$6J9" role="2OqNvi">
                            <ref role="37wK5l" node="4henvQNw09n" resolve="onModelStatusChanged" />
                            <node concept="2OqwBi" id="4henvQN$7il" role="37wK5m">
                              <node concept="37vLTw" id="4henvQN$71N" role="2Oq$k0">
                                <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                              </node>
                              <node concept="liA8E" id="4henvQN$7Az" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="4henvQNvpYV" role="3clFbw">
                      <node concept="37vLTw" id="4henvQNvq37" role="3uHU7B">
                        <ref role="3cqZAo" node="3wu1yURPy6C" resolve="force" />
                      </node>
                      <node concept="3y3z36" id="4henvQNvq7m" role="3uHU7w">
                        <node concept="37vLTw" id="4henvQNvq7h" role="3uHU7B">
                          <ref role="3cqZAo" node="4henvQNvp_g" resolve="oldStatus" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagT_I5" role="3uHU7w">
                          <ref role="3cqZAo" node="2JwSLRbzmy1" resolve="status" />
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="4henvQNCQii" role="3eNLev">
                      <node concept="1Wc70l" id="4henvQNCRCd" role="3eO9$A">
                        <node concept="3y3z36" id="4henvQNCS2Z" role="3uHU7w">
                          <node concept="10Nm6u" id="4henvQNCS6J" role="3uHU7w" />
                          <node concept="37vLTw" id="4henvQNCRGb" role="3uHU7B">
                            <ref role="3cqZAo" node="2JwSLRbzmy1" resolve="status" />
                          </node>
                        </node>
                        <node concept="1Wc70l" id="4henvQNCQZT" role="3uHU7B">
                          <node concept="3fqX7Q" id="4henvQNCQ_w" role="3uHU7B">
                            <node concept="37vLTw" id="4henvQNCQ_y" role="3fr31v">
                              <ref role="3cqZAo" node="3wu1yURPy6C" resolve="force" />
                            </node>
                          </node>
                          <node concept="3clFbC" id="4henvQNCRjc" role="3uHU7w">
                            <node concept="37vLTw" id="4henvQNCR3G" role="3uHU7B">
                              <ref role="3cqZAo" node="4henvQNvp_g" resolve="oldStatus" />
                            </node>
                            <node concept="37vLTw" id="4henvQNCRmW" role="3uHU7w">
                              <ref role="3cqZAo" node="2JwSLRbzmy1" resolve="status" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4henvQNCQik" role="3eOfB_">
                        <node concept="3cpWs6" id="4henvQNCSar" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7fUfLC9s3_0" role="3cqZAp" />
                  <node concept="3clFbJ" id="2JwSLRbzmyi" role="3cqZAp">
                    <node concept="3clFbS" id="2JwSLRbzmyj" role="3clFbx">
                      <node concept="3cpWs6" id="3EG3JIuiQP5" role="3cqZAp" />
                    </node>
                    <node concept="3fqX7Q" id="5jtU20hQtNi" role="3clFbw">
                      <node concept="1rXfSq" id="5jtU20hQu6G" role="3fr31v">
                        <ref role="37wK5l" node="4henvQNvy4j" resolve="isTracked" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="pU0Iv8GcYA" role="3cqZAp">
                    <node concept="37vLTI" id="pU0Iv8GdHR" role="3clFbG">
                      <node concept="37vLTw" id="pU0Iv8GcY$" role="37vLTJ">
                        <ref role="3cqZAo" node="pU0Iv8GbOu" resolve="useEmptyBaseModel" />
                      </node>
                      <node concept="22lmx$" id="pU0Iv8Ge7W" role="37vLTx">
                        <node concept="37vLTw" id="pU0Iv8Ge7X" role="3uHU7w">
                          <ref role="3cqZAo" node="2LgKyNJljrH" resolve="isConflict" />
                        </node>
                        <node concept="1rXfSq" id="pU0Iv8Ge7Y" role="3uHU7B">
                          <ref role="37wK5l" node="2LgKyNJiSR6" resolve="isAdded" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5qWTbMym1Qp" role="3cqZAp">
                    <node concept="37vLTI" id="5qWTbMym2ri" role="3clFbG">
                      <node concept="3clFbT" id="5qWTbMym2Fc" role="37vLTx">
                        <property role="3clFbU" value="false" />
                      </node>
                      <node concept="37vLTw" id="5qWTbMym1Qn" role="37vLTJ">
                        <ref role="3cqZAo" node="7az7i2AvNZv" resolve="doNotContinue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="43LPOOeGBSW" role="ukAjM">
            <ref role="3cqZAo" node="43LPOOeGBSQ" resolve="repo" />
          </node>
        </node>
        <node concept="RRSsy" id="4uLJMq1QsNR" role="3cqZAp">
          <property role="RRSoG" value="gZ5frni/trace" />
          <node concept="Xl_RD" id="4uLJMq1QsNS" role="RRSoy">
            <property role="Xl_RC" value="first read finished" />
          </node>
        </node>
        <node concept="3clFbJ" id="7az7i2AvPoi" role="3cqZAp">
          <node concept="3clFbS" id="7az7i2AvPok" role="3clFbx">
            <node concept="3cpWs6" id="7az7i2AvQl$" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="7az7i2AvPYS" role="3clFbw">
            <ref role="3cqZAo" node="7az7i2AvNZv" resolve="doNotContinue" />
          </node>
        </node>
        <node concept="3clFbH" id="7az7i2AuIzx" role="3cqZAp" />
        <node concept="3cpWs8" id="5zpsdFy4A8o" role="3cqZAp">
          <node concept="3cpWsn" id="5zpsdFy4A8p" role="3cpWs9">
            <property role="TrG5h" value="baseVersionModel" />
            <node concept="H_c77" id="5ikp7PJcP5J" role="1tU5fm" />
            <node concept="10Nm6u" id="5zpsdFy4Bln" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="2JwSLRbzmyr" role="3cqZAp">
          <node concept="37vLTw" id="pU0Iv8Gf7F" role="3clFbw">
            <ref role="3cqZAo" node="pU0Iv8GbOu" resolve="useEmptyBaseModel" />
          </node>
          <node concept="3clFbS" id="2JwSLRbzmys" role="3clFbx">
            <node concept="3clFbF" id="5zpsdFy4AMo" role="3cqZAp">
              <node concept="37vLTI" id="5zpsdFy4AMq" role="3clFbG">
                <node concept="2ShNRf" id="2yL_twwG89k" role="37vLTx">
                  <node concept="1pGfFk" id="2yL_twwGqqJ" role="2ShVmc">
                    <ref role="37wK5l" to="bmv6:1m2uLwrS0vs" resolve="MergeTemporaryModel" />
                    <node concept="2OqwBi" id="2yL_twwGDiM" role="37wK5m">
                      <node concept="37vLTw" id="2yL_twwGxRF" role="2Oq$k0">
                        <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                      </node>
                      <node concept="liA8E" id="2yL_twwGLxa" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                      </node>
                    </node>
                    <node concept="3clFbT" id="2yL_twwGZJj" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTB2n" role="37vLTJ">
                  <ref role="3cqZAo" node="5zpsdFy4A8p" resolve="baseVersionModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5zpsdFy4Blq" role="9aQIa">
            <node concept="3clFbS" id="5zpsdFy4Blr" role="9aQI4">
              <node concept="3clFbF" id="2KujyEVKv81" role="3cqZAp">
                <node concept="37vLTI" id="2KujyEVKv82" role="3clFbG">
                  <node concept="2OqwBi" id="2KujyEVKw_o" role="37vLTx">
                    <node concept="2ShNRf" id="2KujyEVKvgt" role="2Oq$k0">
                      <node concept="1pGfFk" id="2KujyEVKwoh" role="2ShVmc">
                        <ref role="37wK5l" node="6xD1Zl6F7rM" resolve="BaseVersionModelLoader" />
                        <node concept="37vLTw" id="2KujyEVKwqP" role="37wK5m">
                          <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2KujyEVKwG7" role="2OqNvi">
                      <ref role="37wK5l" node="6ww30ZnlIhe" resolve="getBaseVersionModel" />
                      <node concept="37vLTw" id="2KujyEVKwP6" role="37wK5m">
                        <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2KujyEVKv86" role="37vLTJ">
                    <ref role="3cqZAo" node="5zpsdFy4A8p" resolve="baseVersionModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="tOur220Ezo" role="3cqZAp">
          <node concept="3clFbC" id="tOur220MyM" role="3clFbw">
            <node concept="37vLTw" id="2yL_twwIKu_" role="3uHU7B">
              <ref role="3cqZAo" node="5zpsdFy4A8p" resolve="baseVersionModel" />
            </node>
            <node concept="10Nm6u" id="tOur220M$n" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="tOur220Ezq" role="3clFbx">
            <node concept="3cpWs6" id="tOur221$Au" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbJ" id="tOur21UoJV" role="3cqZAp">
          <node concept="2OqwBi" id="tOur21V1Ai" role="3clFbw">
            <node concept="2HwmR7" id="tOur21V78T" role="2OqNvi">
              <node concept="1bVj0M" id="tOur21V78V" role="23t8la">
                <node concept="3clFbS" id="tOur21V78W" role="1bW5cS">
                  <node concept="3clFbF" id="tOur21VaMH" role="3cqZAp">
                    <node concept="2OqwBi" id="tOur21Vb3f" role="3clFbG">
                      <node concept="liA8E" id="tOur21VfKx" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel$Problem.isError()" resolve="isError" />
                      </node>
                      <node concept="37vLTw" id="tOur21VaMG" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0XKq" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XKq" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0XKr" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="tOur21UKxN" role="2Oq$k0">
              <node concept="10QFUN" id="tOur21UKxK" role="1eOMHV">
                <node concept="A3Dl8" id="tOur21UO8P" role="10QFUM">
                  <node concept="3uibUv" id="tOur21UXb7" role="A3Ik2">
                    <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                  </node>
                </node>
                <node concept="2OqwBi" id="tOur21U$_Q" role="10QFUP">
                  <node concept="2JrnkZ" id="2yL_twwJaEf" role="2Oq$k0">
                    <node concept="37vLTw" id="2yL_twwIRyi" role="2JrQYb">
                      <ref role="3cqZAo" node="5zpsdFy4A8p" resolve="baseVersionModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="tOur21UCUk" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getProblems()" resolve="getProblems" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="tOur21UoJX" role="3clFbx">
            <node concept="3cpWs8" id="tOur21VBk1" role="3cqZAp">
              <node concept="3cpWsn" id="tOur21VBk2" role="3cpWs9">
                <property role="TrG5h" value="sb" />
                <node concept="2ShNRf" id="tOur21VIN_" role="33vP2m">
                  <node concept="1pGfFk" id="tOur21WqRX" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                  </node>
                </node>
                <node concept="3uibUv" id="tOur21VBk3" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="tOur21WPHy" role="3cqZAp">
              <node concept="2GrKxI" id="tOur21WPH$" role="2Gsz3X">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="3clFbS" id="tOur21WPHC" role="2LFqv$">
                <node concept="3clFbF" id="tOur21X5qE" role="3cqZAp">
                  <node concept="2OqwBi" id="tOur21YKDp" role="3clFbG">
                    <node concept="liA8E" id="tOur21YSzb" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="tOur21YWfM" role="37wK5m">
                        <property role="Xl_RC" value="\n" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="tOur21YmNA" role="2Oq$k0">
                      <node concept="liA8E" id="tOur21YuaR" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="2OqwBi" id="tOur21YyHy" role="37wK5m">
                          <node concept="liA8E" id="tOur21YBWZ" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel$Problem.getText()" resolve="getText" />
                          </node>
                          <node concept="2GrUjf" id="tOur21YypV" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="tOur21WPH$" resolve="p" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="tOur21X5EU" role="2Oq$k0">
                        <node concept="liA8E" id="tOur21XaI9" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="3K4zz7" id="tOur21Xo5i" role="37wK5m">
                            <node concept="Xl_RD" id="tOur21Y6Vc" role="3K4GZi">
                              <property role="Xl_RC" value="warn: " />
                            </node>
                            <node concept="Xl_RD" id="tOur21XrRC" role="3K4E3e">
                              <property role="Xl_RC" value="error: " />
                            </node>
                            <node concept="2OqwBi" id="tOur21Xf5O" role="3K4Cdx">
                              <node concept="liA8E" id="tOur21XjsF" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel$Problem.isError()" resolve="isError" />
                              </node>
                              <node concept="2GrUjf" id="tOur21XeN9" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="tOur21WPH$" resolve="p" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="tOur21X5qD" role="2Oq$k0">
                          <ref role="3cqZAo" node="tOur21VBk2" resolve="sb" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10QFUN" id="tOur21WTsG" role="2GsD0m">
                <node concept="A3Dl8" id="tOur21WTsH" role="10QFUM">
                  <node concept="3uibUv" id="tOur21WTsI" role="A3Ik2">
                    <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                  </node>
                </node>
                <node concept="2OqwBi" id="tOur21WTsJ" role="10QFUP">
                  <node concept="2JrnkZ" id="2yL_twwJpAW" role="2Oq$k0">
                    <node concept="37vLTw" id="2yL_twwIZ2I" role="2JrQYb">
                      <ref role="3cqZAo" node="5zpsdFy4A8p" resolve="baseVersionModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="tOur21WTsK" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getProblems()" resolve="getProblems" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="RRSsy" id="3jYQuSB34kx" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="2OqwBi" id="tOur21W$42" role="RRSoy">
                <node concept="liA8E" id="tOur21WDfk" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
                <node concept="37vLTw" id="tOur21WzHC" role="2Oq$k0">
                  <ref role="3cqZAo" node="tOur21VBk2" resolve="sb" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5zpsdFy4Blp" role="3cqZAp" />
          </node>
        </node>
        <node concept="RRSsy" id="4uLJMq1Qq_u" role="3cqZAp">
          <property role="RRSoG" value="gZ5frni/trace" />
          <node concept="Xl_RD" id="4uLJMq1Qq_w" role="RRSoy">
            <property role="Xl_RC" value="second read started" />
          </node>
        </node>
        <node concept="1QHqEK" id="6arEVVuIbu$" role="3cqZAp">
          <node concept="1QHqEC" id="6arEVVuIbu_" role="1QHqEI">
            <node concept="3clFbS" id="6arEVVuIbuA" role="1bW5cS">
              <node concept="1HWtB8" id="6arEVVuIbuB" role="3cqZAp">
                <node concept="37vLTw" id="6arEVVuIbuC" role="1HWFw0">
                  <ref role="3cqZAo" node="6BB1EWX3JAh" resolve="LOCK" />
                </node>
                <node concept="3clFbS" id="6arEVVuIbuD" role="1HWHxc">
                  <node concept="3clFbJ" id="7ZbzfE1erhR" role="3cqZAp">
                    <node concept="3clFbS" id="7ZbzfE1erhS" role="3clFbx">
                      <node concept="3clFbF" id="5bXIouspInn" role="3cqZAp">
                        <node concept="2YIFZM" id="5bXIouspSZ9" role="3clFbG">
                          <ref role="37wK5l" to="hdhb:2VVi9_kc0zu" resolve="renameModel" />
                          <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                          <node concept="37vLTw" id="5bXIouspT0H" role="37wK5m">
                            <ref role="3cqZAo" node="5zpsdFy4A8p" resolve="baseVersionModel" />
                          </node>
                          <node concept="Xl_RD" id="5bXIouspT2h" role="37wK5m">
                            <property role="Xl_RC" value="repository" />
                          </node>
                        </node>
                      </node>
                      <node concept="RRSsy" id="4uLJMq1Qt21" role="3cqZAp">
                        <property role="RRSoG" value="gZ5frni/trace" />
                        <node concept="Xl_RD" id="4uLJMq1Qt23" role="RRSoy">
                          <property role="Xl_RC" value="change set is building" />
                        </node>
                      </node>
                      <node concept="3cpWs8" id="129U0luzqfC" role="3cqZAp">
                        <node concept="3cpWsn" id="129U0luzqfD" role="3cpWs9">
                          <property role="TrG5h" value="changeSet" />
                          <node concept="3uibUv" id="129U0luzqfE" role="1tU5fm">
                            <ref role="3uigEE" to="bfxj:3kRMfhMv03j" resolve="ChangeSet" />
                          </node>
                          <node concept="2YIFZM" id="129U0luzqfF" role="33vP2m">
                            <ref role="1Pybhc" to="bfxj:42hl10VHbfH" resolve="ChangeSetBuilder" />
                            <ref role="37wK5l" to="bfxj:42hl10VHbuO" resolve="buildChangeSet" />
                            <node concept="37vLTw" id="3GM_nagTwoJ" role="37wK5m">
                              <ref role="3cqZAo" node="5zpsdFy4A8p" resolve="baseVersionModel" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxeukq4" role="37wK5m">
                              <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                            </node>
                            <node concept="3clFbT" id="129U0luzqfI" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="RRSsy" id="4uLJMq1Qt2r" role="3cqZAp">
                        <property role="RRSoG" value="gZ5frni/trace" />
                        <node concept="Xl_RD" id="4uLJMq1Qt2s" role="RRSoy">
                          <property role="Xl_RC" value="done building change set" />
                        </node>
                      </node>
                      <node concept="RRSsy" id="4uLJMq1Qtxi" role="3cqZAp">
                        <property role="RRSoG" value="gZ5frni/trace" />
                        <node concept="Xl_RD" id="4uLJMq1Qtxj" role="RRSoy">
                          <property role="Xl_RC" value="setting change set" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="5zpsdFy4ALU" role="3cqZAp">
                        <node concept="2OqwBi" id="5zpsdFy4ALX" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxeuTzp" role="2Oq$k0">
                            <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                          </node>
                          <node concept="liA8E" id="5zpsdFy4AM1" role="2OqNvi">
                            <ref role="37wK5l" node="5zpsdFy4A7m" resolve="setChangeSet" />
                            <node concept="10QFUN" id="129U0luzqfy" role="37wK5m">
                              <node concept="37vLTw" id="3GM_nagT_Aq" role="10QFUP">
                                <ref role="3cqZAo" node="129U0luzqfD" resolve="changeSet" />
                              </node>
                              <node concept="3uibUv" id="129U0luzqfB" role="10QFUM">
                                <ref role="3uigEE" to="bfxj:69abr3Go1l7" resolve="ChangeSetImpl" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="RRSsy" id="4uLJMq1QtxI" role="3cqZAp">
                        <property role="RRSoG" value="gZ5frni/trace" />
                        <node concept="Xl_RD" id="4uLJMq1QtxJ" role="RRSoy">
                          <property role="Xl_RC" value="done setting change set" />
                        </node>
                      </node>
                      <node concept="RRSsy" id="4uLJMq1Qtz$" role="3cqZAp">
                        <property role="RRSoG" value="gZ5frni/trace" />
                        <node concept="Xl_RD" id="4uLJMq1Qtz_" role="RRSoy">
                          <property role="Xl_RC" value="building caches" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="5pmMiWv$Cl5" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyyYdc" role="3clFbG">
                          <ref role="37wK5l" node="5pmMiWv$A7_" resolve="buildCaches" />
                        </node>
                      </node>
                      <node concept="RRSsy" id="4uLJMq1Qt_0" role="3cqZAp">
                        <property role="RRSoG" value="gZ5frni/trace" />
                        <node concept="Xl_RD" id="4uLJMq1Qt_1" role="RRSoy">
                          <property role="Xl_RC" value="done building caches" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="7ZbzfE1erhV" role="3clFbw">
                      <node concept="37vLTw" id="2BHiRxeuwNG" role="3fr31v">
                        <ref role="3cqZAo" node="2JwSLRbzlmj" resolve="myDisposed" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6arEVVuIbxz" role="ukAjM">
            <ref role="3cqZAo" node="43LPOOeGBSQ" resolve="repo" />
          </node>
        </node>
        <node concept="RRSsy" id="4uLJMq1QqDd" role="3cqZAp">
          <property role="RRSoG" value="gZ5frni/trace" />
          <node concept="Xl_RD" id="4uLJMq1QqDe" role="RRSoy">
            <property role="Xl_RC" value="second read finished" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcG" role="jymVt" />
    <node concept="3clFb_" id="2LgKyNJiSR6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isAdded" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2LgKyNJiSR9" role="3clF47">
        <node concept="3cpWs8" id="24v$wrlA8G1" role="3cqZAp">
          <node concept="3cpWsn" id="24v$wrlA8G2" role="3cpWs9">
            <property role="TrG5h" value="status" />
            <node concept="3uibUv" id="24v$wrlA8G3" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
            </node>
            <node concept="1rXfSq" id="24v$wrlA8G4" role="33vP2m">
              <ref role="37wK5l" node="4henvQNvFoe" resolve="getStatusOfMetaDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6Z84KGeXdNi" role="3cqZAp">
          <node concept="3clFbC" id="6vl5hER$Ldr" role="3cqZAk">
            <node concept="10M0yZ" id="6vl5hER$QzK" role="3uHU7w">
              <ref role="3cqZAo" to="jlcu:~FileStatus.ADDED" resolve="ADDED" />
              <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
            </node>
            <node concept="37vLTw" id="24v$wrlAYjz" role="3uHU7B">
              <ref role="3cqZAo" node="24v$wrlA8G2" resolve="status" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2LgKyNJiARl" role="1B3o_S" />
      <node concept="10P_77" id="2LgKyNJiJTC" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4henvQNvwkC" role="jymVt" />
    <node concept="3clFb_" id="4henvQNvy4j" role="jymVt">
      <property role="TrG5h" value="isTracked" />
      <node concept="3clFbS" id="4henvQNvy4m" role="3clF47">
        <node concept="3clFbJ" id="4henvQNvyH3" role="3cqZAp">
          <node concept="2ZW3vV" id="4henvQNvC4E" role="3clFbw">
            <node concept="3uibUv" id="4henvQNvC53" role="2ZW6by">
              <ref role="3uigEE" to="bmv6:1m2uLwrRQWq" resolve="MergeTemporaryModel" />
            </node>
            <node concept="37vLTw" id="4henvQNvyKM" role="2ZW6bz">
              <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
            </node>
          </node>
          <node concept="3clFbS" id="4henvQNvyH5" role="3clFbx">
            <node concept="3SKdUt" id="4henvQNvCgc" role="3cqZAp">
              <node concept="1PaTwC" id="4henvQNvCgd" role="1aUNEU">
                <node concept="3oM_SD" id="4henvQNvCge" role="1PaTwD">
                  <property role="3oM_SC" value="RootDiffPane" />
                </node>
                <node concept="3oM_SD" id="4henvQNvCgm" role="1PaTwD">
                  <property role="3oM_SC" value="brings" />
                </node>
                <node concept="3oM_SD" id="4henvQNvCgp" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="4henvQNvCgt" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="4henvQNvCgy" role="1PaTwD">
                  <property role="3oM_SC" value="us," />
                </node>
                <node concept="3oM_SD" id="4henvQNvCgC" role="1PaTwD">
                  <property role="3oM_SC" value="fixme" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4henvQNvC8J" role="3cqZAp">
              <node concept="3fqX7Q" id="13t7RZlu$Ka" role="3cqZAk">
                <node concept="2OqwBi" id="13t7RZlu$Kc" role="3fr31v">
                  <node concept="37vLTw" id="13t7RZlu$Kd" role="2Oq$k0">
                    <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                  </node>
                  <node concept="liA8E" id="13t7RZlu$Ke" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4henvQNvCkY" role="3cqZAp">
          <node concept="3cpWsn" id="4henvQNvCkZ" role="3cpWs9">
            <property role="TrG5h" value="status" />
            <node concept="3uibUv" id="4henvQNvCl0" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
            </node>
            <node concept="1rXfSq" id="4henvQNvQ0g" role="33vP2m">
              <ref role="37wK5l" node="4henvQNvFoe" resolve="getStatusOfMetaDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4henvQNvQ4h" role="3cqZAp">
          <node concept="1Wc70l" id="58EREyZOiWa" role="3cqZAk">
            <node concept="1Wc70l" id="58EREyZO0D1" role="3uHU7B">
              <node concept="1Wc70l" id="4henvQNvQs0" role="3uHU7B">
                <node concept="3y3z36" id="4henvQNvQgG" role="3uHU7B">
                  <node concept="37vLTw" id="4henvQNvQ8j" role="3uHU7B">
                    <ref role="3cqZAo" node="4henvQNvCkZ" resolve="status" />
                  </node>
                  <node concept="10M0yZ" id="4henvQNvQon" role="3uHU7w">
                    <ref role="3cqZAo" to="jlcu:~FileStatus.IGNORED" resolve="IGNORED" />
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                  </node>
                </node>
                <node concept="3y3z36" id="4henvQNvQ_Q" role="3uHU7w">
                  <node concept="37vLTw" id="4henvQNvQvP" role="3uHU7B">
                    <ref role="3cqZAo" node="4henvQNvCkZ" resolve="status" />
                  </node>
                  <node concept="10M0yZ" id="4henvQNvQDK" role="3uHU7w">
                    <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="58EREyZO7i6" role="3uHU7w">
                <node concept="37vLTw" id="58EREyZO7i8" role="3uHU7B">
                  <ref role="3cqZAo" node="4henvQNvCkZ" resolve="status" />
                </node>
                <node concept="10M0yZ" id="58EREyZOJuv" role="3uHU7w">
                  <ref role="3cqZAo" to="jlcu:~FileStatus.DELETED" resolve="DELETED" />
                  <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="58EREyZOpvq" role="3uHU7w">
              <node concept="10M0yZ" id="58EREyZO$px" role="3uHU7w">
                <ref role="3cqZAo" to="jlcu:~FileStatus.DELETED_FROM_FS" resolve="DELETED_FROM_FS" />
                <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
              </node>
              <node concept="37vLTw" id="58EREyZOpvs" role="3uHU7B">
                <ref role="3cqZAo" node="4henvQNvCkZ" resolve="status" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4henvQNvxuV" role="1B3o_S" />
      <node concept="10P_77" id="4henvQNvy4h" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4henvQNvCsp" role="jymVt" />
    <node concept="3clFb_" id="4henvQNvFoe" role="jymVt">
      <property role="TrG5h" value="getStatusOfMetaDescriptor" />
      <node concept="3clFbS" id="4henvQNvFoh" role="3clF47">
        <node concept="3cpWs8" id="4henvQNvFXH" role="3cqZAp">
          <node concept="3cpWsn" id="4henvQNvFXI" role="3cpWs9">
            <property role="TrG5h" value="ds" />
            <node concept="3uibUv" id="4henvQNvFXJ" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
            <node concept="2YIFZM" id="4henvQNvFXK" role="33vP2m">
              <ref role="1Pybhc" to="pa15:~DataLocationAwareModelFactory" resolve="DataLocationAwareModelFactory" />
              <ref role="37wK5l" to="pa15:~DataLocationAwareModelFactory.metaInfoLocation(org.jetbrains.mps.openapi.model.SModel)" resolve="metaInfoLocation" />
              <node concept="37vLTw" id="4henvQNvFXL" role="37wK5m">
                <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4henvQNvFXM" role="3cqZAp">
          <node concept="3clFbS" id="4henvQNvFXN" role="3clFbx">
            <node concept="3cpWs6" id="4henvQNvFXO" role="3cqZAp">
              <node concept="10M0yZ" id="4henvQNvLbc" role="3cqZAk">
                <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4henvQNvFXQ" role="3clFbw">
            <node concept="1eOMI4" id="4henvQNvFXR" role="3fr31v">
              <node concept="2ZW3vV" id="4henvQNvFXS" role="1eOMHV">
                <node concept="3uibUv" id="4henvQNvFXT" role="2ZW6by">
                  <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                </node>
                <node concept="37vLTw" id="4henvQNvFXU" role="2ZW6bz">
                  <ref role="3cqZAo" node="4henvQNvFXI" resolve="ds" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4henvQNvFXV" role="3cqZAp">
          <node concept="2OqwBi" id="4henvQNvOut" role="3clFbG">
            <node concept="2OqwBi" id="4henvQNvNkO" role="2Oq$k0">
              <node concept="2OqwBi" id="4henvQNvFXW" role="2Oq$k0">
                <node concept="2OqwBi" id="4henvQNvFXX" role="2Oq$k0">
                  <node concept="1eOMI4" id="4henvQNvFXY" role="2Oq$k0">
                    <node concept="10QFUN" id="4henvQNvFXZ" role="1eOMHV">
                      <node concept="37vLTw" id="4henvQNvFY0" role="10QFUP">
                        <ref role="3cqZAo" node="4henvQNvFXI" resolve="ds" />
                      </node>
                      <node concept="3uibUv" id="4henvQNvFY1" role="10QFUM">
                        <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4henvQNvFY2" role="2OqNvi">
                    <ref role="37wK5l" to="ends:~FileSystemBasedDataSource.getAffectedFilesWithDirsExtracted()" resolve="getAffectedFilesWithDirsExtracted" />
                  </node>
                </node>
                <node concept="liA8E" id="4henvQNvFY3" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                  <node concept="2ShNRf" id="4henvQNvFY4" role="37wK5m">
                    <node concept="YeOm9" id="4henvQNvFY5" role="2ShVmc">
                      <node concept="1Y3b0j" id="4henvQNvFY6" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="82uw:~Function" resolve="Function" />
                        <node concept="3Tm1VV" id="4henvQNvFY7" role="1B3o_S" />
                        <node concept="3clFb_" id="4henvQNvFY8" role="jymVt">
                          <property role="TrG5h" value="apply" />
                          <node concept="3Tm1VV" id="4henvQNvFY9" role="1B3o_S" />
                          <node concept="3uibUv" id="4henvQNvLC9" role="3clF45">
                            <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                          </node>
                          <node concept="37vLTG" id="4henvQNvFYb" role="3clF46">
                            <property role="TrG5h" value="f" />
                            <node concept="3uibUv" id="4henvQNvFYc" role="1tU5fm">
                              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4henvQNvFYd" role="3clF47">
                            <node concept="3cpWs8" id="4henvQNvFYe" role="3cqZAp">
                              <node concept="3cpWsn" id="4henvQNvFYf" role="3cpWs9">
                                <property role="TrG5h" value="file" />
                                <node concept="3uibUv" id="4henvQNvFYg" role="1tU5fm">
                                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                                </node>
                                <node concept="1rXfSq" id="Jpw4evBAAX" role="33vP2m">
                                  <ref role="37wK5l" node="Jpw4evwYVF" resolve="asVirtualFile" />
                                  <node concept="37vLTw" id="Jpw4evBLMQ" role="37wK5m">
                                    <ref role="3cqZAo" node="4henvQNvFYb" resolve="f" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="4henvQNvLJu" role="3cqZAp">
                              <node concept="3clFbS" id="4henvQNvLJw" role="3clFbx">
                                <node concept="3cpWs6" id="4henvQNvMQg" role="3cqZAp">
                                  <node concept="10M0yZ" id="4henvQNvMXu" role="3cqZAk">
                                    <ref role="3cqZAo" to="jlcu:~FileStatus.DELETED" resolve="DELETED" />
                                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="4henvQNvMvD" role="3clFbw">
                                <node concept="10Nm6u" id="4henvQNvMAI" role="3uHU7w" />
                                <node concept="37vLTw" id="4henvQNvLQQ" role="3uHU7B">
                                  <ref role="3cqZAo" node="4henvQNvFYf" resolve="file" />
                                </node>
                              </node>
                            </node>
                            <node concept="3J1_TO" id="4bwsEYIUr8G" role="3cqZAp">
                              <node concept="3clFbS" id="4bwsEYIUr8I" role="1zxBo7">
                                <node concept="3cpWs6" id="4henvQNvFYj" role="3cqZAp">
                                  <node concept="2OqwBi" id="4henvQNvFYq" role="3cqZAk">
                                    <node concept="2YIFZM" id="4henvQNvFYr" role="2Oq$k0">
                                      <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
                                      <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                      <node concept="37vLTw" id="4henvQNvFYs" role="37wK5m">
                                        <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4henvQNvFYt" role="2OqNvi">
                                      <ref role="37wK5l" to="jlcu:~FileStatusManager.getStatus(com.intellij.openapi.vfs.VirtualFile)" resolve="getStatus" />
                                      <node concept="37vLTw" id="4henvQNvFYu" role="37wK5m">
                                        <ref role="3cqZAo" node="4henvQNvFYf" resolve="file" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3J1hQo" id="4bwsEYIUr8J" role="3J1_TS">
                                <property role="3TUv4t" value="true" />
                                <property role="TrG5h" value="ignored" />
                                <node concept="3uibUv" id="4bwsEYIUIdn" role="1tU5fm">
                                  <ref role="3uigEE" to="bd8o:~AccessToken" resolve="AccessToken" />
                                </node>
                                <node concept="2YIFZM" id="4bwsEYIVKh0" role="33vP2m">
                                  <ref role="37wK5l" to="9w4s:~SlowOperations.allowSlowOperations(java.lang.String)" resolve="allowSlowOperations" />
                                  <ref role="1Pybhc" to="9w4s:~SlowOperations" resolve="SlowOperations" />
                                  <node concept="Xl_RD" id="4bwsEYIVZsK" role="37wK5m">
                                    <property role="Xl_RC" value="known-issues" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="4henvQNvFYv" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="4henvQNvFYw" role="2Ghqu4">
                          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                        </node>
                        <node concept="3uibUv" id="4henvQNvL_h" role="2Ghqu4">
                          <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4henvQNvObu" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
              </node>
            </node>
            <node concept="liA8E" id="4henvQNvPgM" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Optional.orElse(java.lang.Object)" resolve="orElse" />
              <node concept="10M0yZ" id="4henvQNvPG$" role="37wK5m">
                <ref role="3cqZAo" to="jlcu:~FileStatus.DELETED" resolve="DELETED" />
                <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4henvQNvEMe" role="1B3o_S" />
      <node concept="3uibUv" id="4henvQNvFoc" role="3clF45">
        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
      </node>
    </node>
    <node concept="2tJIrI" id="4uLJMq1uewI" role="jymVt" />
    <node concept="3clFb_" id="4uLJMq1udhR" role="jymVt">
      <property role="TrG5h" value="getStatus" />
      <node concept="2AHcQZ" id="4uLJMq1udhS" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4uLJMq1udhT" role="3clF47">
        <node concept="3cpWs6" id="4uLJMq1udhU" role="3cqZAp">
          <node concept="2OqwBi" id="4uLJMq1uNjM" role="3cqZAk">
            <node concept="37vLTw" id="4uLJMq1uNjL" role="2Oq$k0">
              <ref role="3cqZAo" node="5tlS4MXLsqY" resolve="myStatusOnLastUpdate" />
            </node>
            <node concept="liA8E" id="4uLJMq1uNjN" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4uLJMq1udhW" role="1B3o_S" />
      <node concept="3uibUv" id="4uLJMq1udhX" role="3clF45">
        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcH" role="jymVt" />
    <node concept="3clFb_" id="2LgKyNJ5I7R" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calcStatus" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2LgKyNJ5I7U" role="3clF47">
        <node concept="3cpWs8" id="4uLJMq1ufVP" role="3cqZAp">
          <node concept="3cpWsn" id="4uLJMq1ufVO" role="3cpWs9">
            <property role="TrG5h" value="ds" />
            <node concept="3uibUv" id="4uLJMq1ufVQ" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
            <node concept="2OqwBi" id="4uLJMq1uP3v" role="33vP2m">
              <node concept="37vLTw" id="4uLJMq1uP3u" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
              </node>
              <node concept="liA8E" id="4uLJMq1uP3w" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4uLJMq1ufVT" role="3cqZAp">
          <node concept="3cpWsn" id="4uLJMq1ufVS" role="3cpWs9">
            <property role="TrG5h" value="fsm" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4uLJMq1ufVU" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
            </node>
            <node concept="2YIFZM" id="4uLJMq1uP2N" role="33vP2m">
              <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
              <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <node concept="37vLTw" id="4uLJMq1uP2O" role="37wK5m">
                <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4uLJMq1ufVX" role="3cqZAp">
          <node concept="2ZW3vV" id="4uLJMq1ufW0" role="3clFbw">
            <node concept="37vLTw" id="4uLJMq1ufVY" role="2ZW6bz">
              <ref role="3cqZAo" node="4uLJMq1ufVO" resolve="ds" />
            </node>
            <node concept="3uibUv" id="4uLJMq1ufVZ" role="2ZW6by">
              <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
            </node>
          </node>
          <node concept="3clFbS" id="4uLJMq1ufW2" role="3clFbx">
            <node concept="3clFbJ" id="4henvQNvQKc" role="3cqZAp">
              <node concept="3clFbS" id="4henvQNvQKe" role="3clFbx">
                <node concept="3cpWs6" id="4henvQNvRNc" role="3cqZAp">
                  <node concept="10M0yZ" id="4henvQNvRR5" role="3cqZAk">
                    <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="4henvQNvRJu" role="3clFbw">
                <node concept="1rXfSq" id="4henvQNvRJw" role="3fr31v">
                  <ref role="37wK5l" node="4henvQNvy4j" resolve="isTracked" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4uLJMq1ufW4" role="3cqZAp">
              <node concept="3cpWsn" id="4uLJMq1ufW3" role="3cpWs9">
                <property role="TrG5h" value="statuses" />
                <node concept="3uibUv" id="4uLJMq1ufW5" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="4uLJMq1ufW6" role="11_B2D">
                    <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                  </node>
                </node>
                <node concept="10QFUN" id="1A9$eqsdrps" role="33vP2m">
                  <node concept="3uibUv" id="1A9$eqsdrso" role="10QFUM">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="1A9$eqsdrsM" role="11_B2D">
                      <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4uLJMq1ufW7" role="10QFUP">
                    <node concept="2OqwBi" id="4uLJMq1ufW8" role="2Oq$k0">
                      <node concept="2OqwBi" id="4uLJMq1ufW9" role="2Oq$k0">
                        <node concept="2OqwBi" id="4uLJMq1ufWa" role="2Oq$k0">
                          <node concept="2OqwBi" id="Jpw4evCsij" role="2Oq$k0">
                            <node concept="2OqwBi" id="4uLJMq1ufWe" role="2Oq$k0">
                              <node concept="1eOMI4" id="4uLJMq1ufWi" role="2Oq$k0">
                                <node concept="10QFUN" id="4uLJMq1ufWf" role="1eOMHV">
                                  <node concept="37vLTw" id="4uLJMq1ufWg" role="10QFUP">
                                    <ref role="3cqZAo" node="4uLJMq1ufVO" resolve="ds" />
                                  </node>
                                  <node concept="3uibUv" id="4uLJMq1ufWh" role="10QFUM">
                                    <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="6vl5hER_l9Y" role="2OqNvi">
                                <ref role="37wK5l" to="ends:~FileSystemBasedDataSource.getAffectedFilesWithDirsExtracted()" resolve="getAffectedFilesWithDirsExtracted" />
                              </node>
                            </node>
                            <node concept="liA8E" id="Jpw4evCByi" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                              <node concept="37Ijox" id="Jpw4evDZlH" role="37wK5m">
                                <ref role="37Ijqf" node="Jpw4evwYVF" resolve="asVirtualFile" />
                                <node concept="Xjq3P" id="Jpw4evDNjW" role="wWaWy" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4uLJMq1ufWO" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="37Ijox" id="Jpw4evERjX" role="37wK5m">
                              <ref role="37Ijqf" to="33ny:~Objects.nonNull(java.lang.Object)" resolve="nonNull" />
                              <node concept="2FaPjH" id="Jpw4evERjZ" role="wWaWy">
                                <node concept="3uibUv" id="Jpw4evERk0" role="2FaQuo">
                                  <ref role="3uigEE" to="33ny:~Objects" resolve="Objects" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4uLJMq1ufX3" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                          <node concept="37Ijox" id="Jpw4evGav7" role="37wK5m">
                            <ref role="37Ijqf" to="jlcu:~FileStatusManager.getStatus(com.intellij.openapi.vfs.VirtualFile)" resolve="getStatus" />
                            <node concept="37vLTw" id="Jpw4evG3sv" role="wWaWy">
                              <ref role="3cqZAo" node="4uLJMq1ufVS" resolve="fsm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7L6OOe$VDKj" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.distinct()" resolve="distinct" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4uLJMq1ufX5" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                      <node concept="2YIFZM" id="4uLJMq1uMXD" role="37wK5m">
                        <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                        <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4uLJMq1ufX7" role="3cqZAp">
              <node concept="2OqwBi" id="4uLJMq1ufX8" role="3clFbw">
                <node concept="2OqwBi" id="4uLJMq1uNCk" role="2Oq$k0">
                  <node concept="37vLTw" id="4uLJMq1uNCj" role="2Oq$k0">
                    <ref role="3cqZAo" node="4uLJMq1ufW3" resolve="statuses" />
                  </node>
                  <node concept="liA8E" id="4uLJMq1uNCl" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                  </node>
                </node>
                <node concept="liA8E" id="4uLJMq1ufXa" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.anyMatch(java.util.function.Predicate)" resolve="anyMatch" />
                  <node concept="2ShNRf" id="4uLJMq1ufXb" role="37wK5m">
                    <node concept="YeOm9" id="4uLJMq1ufXc" role="2ShVmc">
                      <node concept="1Y3b0j" id="4uLJMq1ufXd" role="YeSDq">
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="82uw:~Predicate" resolve="Predicate" />
                        <node concept="3clFb_" id="4uLJMq1ufXe" role="jymVt">
                          <property role="TrG5h" value="test" />
                          <node concept="2AHcQZ" id="4uLJMq1ufXf" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                          <node concept="37vLTG" id="4uLJMq1ufXg" role="3clF46">
                            <property role="TrG5h" value="st" />
                            <node concept="3uibUv" id="4uLJMq1ufXh" role="1tU5fm">
                              <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4uLJMq1ufXi" role="3clF47">
                            <node concept="3cpWs6" id="4uLJMq1ufXj" role="3cqZAp">
                              <node concept="22lmx$" id="4uLJMq1ufXk" role="3cqZAk">
                                <node concept="3clFbC" id="4uLJMq1ufXl" role="3uHU7B">
                                  <node concept="37vLTw" id="4uLJMq1ufXm" role="3uHU7B">
                                    <ref role="3cqZAo" node="4uLJMq1ufXg" resolve="st" />
                                  </node>
                                  <node concept="10M0yZ" id="4uLJMq1uN5a" role="3uHU7w">
                                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                                    <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                                  </node>
                                </node>
                                <node concept="3clFbC" id="4uLJMq1ufXo" role="3uHU7w">
                                  <node concept="37vLTw" id="4uLJMq1ufXp" role="3uHU7B">
                                    <ref role="3cqZAo" node="4uLJMq1ufXg" resolve="st" />
                                  </node>
                                  <node concept="10M0yZ" id="4uLJMq1uN80" role="3uHU7w">
                                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                                    <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_BOTH_CONFLICTS" resolve="MERGED_WITH_BOTH_CONFLICTS" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="4uLJMq1ufXr" role="1B3o_S" />
                          <node concept="10P_77" id="4uLJMq1ufXs" role="3clF45" />
                        </node>
                        <node concept="3uibUv" id="4uLJMq1ufXt" role="2Ghqu4">
                          <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4uLJMq1ufXv" role="3clFbx">
                <node concept="3cpWs6" id="4uLJMq1ufXw" role="3cqZAp">
                  <node concept="10M0yZ" id="4uLJMq1uN90" role="3cqZAk">
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                    <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4uLJMq1ufXy" role="3cqZAp">
              <node concept="2OqwBi" id="4uLJMq1uPuw" role="3clFbw">
                <node concept="37vLTw" id="4uLJMq1uPuv" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uLJMq1ufW3" resolve="statuses" />
                </node>
                <node concept="liA8E" id="4uLJMq1uPux" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3clFbS" id="4uLJMq1ufX_" role="3clFbx">
                <node concept="3cpWs6" id="4uLJMq1ufXA" role="3cqZAp">
                  <node concept="10M0yZ" id="2KujyEVNVK2" role="3cqZAk">
                    <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4uLJMq1ufXC" role="3cqZAp">
              <node concept="3clFbC" id="4uLJMq1ufXD" role="3clFbw">
                <node concept="2OqwBi" id="4uLJMq1uOQC" role="3uHU7B">
                  <node concept="37vLTw" id="4uLJMq1uOQB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4uLJMq1ufW3" resolve="statuses" />
                  </node>
                  <node concept="liA8E" id="4uLJMq1uOQD" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
                <node concept="3cmrfG" id="4uLJMq1ufXF" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3clFbS" id="4uLJMq1ufXH" role="3clFbx">
                <node concept="3cpWs6" id="4uLJMq1ufXI" role="3cqZAp">
                  <node concept="2OqwBi" id="4uLJMq1uMLs" role="3cqZAk">
                    <node concept="37vLTw" id="4uLJMq1uMLr" role="2Oq$k0">
                      <ref role="3cqZAo" node="4uLJMq1ufW3" resolve="statuses" />
                    </node>
                    <node concept="liA8E" id="4uLJMq1uMLt" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="4uLJMq1uMLu" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="2KujyEVNVK6" role="3eNLev">
                <node concept="1Wc70l" id="2KujyEVO0yr" role="3eO9$A">
                  <node concept="2OqwBi" id="2KujyEVO1iq" role="3uHU7w">
                    <node concept="37vLTw" id="2KujyEVO0_c" role="2Oq$k0">
                      <ref role="3cqZAo" node="4uLJMq1ufW3" resolve="statuses" />
                    </node>
                    <node concept="liA8E" id="2KujyEVO2pj" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                      <node concept="10M0yZ" id="2KujyEVO2x8" role="37wK5m">
                        <ref role="3cqZAo" to="jlcu:~FileStatus.NOT_CHANGED" resolve="NOT_CHANGED" />
                        <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="2KujyEVNZq5" role="3uHU7B">
                    <node concept="2OqwBi" id="2KujyEVNX7Y" role="3uHU7B">
                      <node concept="37vLTw" id="2KujyEVNVMH" role="2Oq$k0">
                        <ref role="3cqZAo" node="4uLJMq1ufW3" resolve="statuses" />
                      </node>
                      <node concept="liA8E" id="2KujyEVNXIB" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="2KujyEVNZsL" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2KujyEVNVK8" role="3eOfB_">
                  <node concept="3cpWs6" id="2KujyEVO2zF" role="3cqZAp">
                    <node concept="2OqwBi" id="2KujyEVOc60" role="3cqZAk">
                      <node concept="2OqwBi" id="2KujyEVO9Pr" role="2Oq$k0">
                        <node concept="2OqwBi" id="2KujyEVO5pD" role="2Oq$k0">
                          <node concept="2OqwBi" id="2KujyEVO3cF" role="2Oq$k0">
                            <node concept="37vLTw" id="2KujyEVO2Ah" role="2Oq$k0">
                              <ref role="3cqZAo" node="4uLJMq1ufW3" resolve="statuses" />
                            </node>
                            <node concept="liA8E" id="2KujyEVO4sd" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2KujyEVO6pF" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="2ShNRf" id="2KujyEVO7aI" role="37wK5m">
                              <node concept="YeOm9" id="2KujyEVO90G" role="2ShVmc">
                                <node concept="1Y3b0j" id="2KujyEVO90J" role="YeSDq">
                                  <property role="2bfB8j" value="true" />
                                  <ref role="1Y3XeK" to="82uw:~Predicate" resolve="Predicate" />
                                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                  <node concept="3Tm1VV" id="2KujyEVO90K" role="1B3o_S" />
                                  <node concept="3clFb_" id="2KujyEVO90Q" role="jymVt">
                                    <property role="TrG5h" value="test" />
                                    <node concept="3Tm1VV" id="2KujyEVO90R" role="1B3o_S" />
                                    <node concept="10P_77" id="2KujyEVO90T" role="3clF45" />
                                    <node concept="37vLTG" id="2KujyEVO90U" role="3clF46">
                                      <property role="TrG5h" value="p1" />
                                      <node concept="3uibUv" id="2KujyEVO917" role="1tU5fm">
                                        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="2KujyEVO90W" role="3clF47">
                                      <node concept="3cpWs6" id="2KujyEVO97B" role="3cqZAp">
                                        <node concept="3y3z36" id="2KujyEVO9sS" role="3cqZAk">
                                          <node concept="10M0yZ" id="2KujyEVO9yJ" role="3uHU7w">
                                            <ref role="3cqZAo" to="jlcu:~FileStatus.NOT_CHANGED" resolve="NOT_CHANGED" />
                                            <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                                          </node>
                                          <node concept="37vLTw" id="2KujyEVO9da" role="3uHU7B">
                                            <ref role="3cqZAo" node="2KujyEVO90U" resolve="p1" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="2KujyEVO90Y" role="2AJF6D">
                                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                    </node>
                                  </node>
                                  <node concept="3uibUv" id="2KujyEVO916" role="2Ghqu4">
                                    <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="2KujyEVObf2" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findAny()" resolve="findAny" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2KujyEVOcZT" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.orElseThrow()" resolve="orElseThrow" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4uLJMq1ufXL" role="3cqZAp">
              <node concept="10M0yZ" id="4uLJMq1uN6a" role="3cqZAk">
                <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                <ref role="3cqZAo" to="jlcu:~FileStatus.MODIFIED" resolve="MODIFIED" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4uLJMq1ufXN" role="3cqZAp">
          <node concept="10M0yZ" id="2KujyEVOdJh" role="3cqZAk">
            <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
            <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2LgKyNJ5s$3" role="1B3o_S" />
      <node concept="3uibUv" id="2LgKyNJ5_lY" role="3clF45">
        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
      </node>
    </node>
    <node concept="2tJIrI" id="2LgKyNJ6hf3" role="jymVt" />
    <node concept="3clFb_" id="5pmMiWv$OQ7" role="jymVt">
      <property role="TrG5h" value="addChange" />
      <node concept="3cqZAl" id="5pmMiWv$OQ8" role="3clF45" />
      <node concept="3Tm6S6" id="5pmMiWv$OQb" role="1B3o_S" />
      <node concept="3clFbS" id="5pmMiWv$OQa" role="3clF47">
        <node concept="3clFbF" id="7mo93oFtNqu" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8kZ" role="3clFbG">
            <ref role="37wK5l" node="7mo93oFtNpm" resolve="updateCacheForChange" />
            <node concept="37vLTw" id="2BHiRxgm9a1" role="37wK5m">
              <ref role="3cqZAo" node="5pmMiWv$OQc" resolve="change" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5pmMiWv$OQB" role="3cqZAp">
          <node concept="2OqwBi" id="5pmMiWv$OQD" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuvJq" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
            </node>
            <node concept="liA8E" id="5pmMiWv$ORB" role="2OqNvi">
              <ref role="37wK5l" node="5pmMiWv$OQH" resolve="addChange" />
              <node concept="37vLTw" id="2BHiRxglJT9" role="37wK5m">
                <ref role="3cqZAo" node="5pmMiWv$OQc" resolve="change" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5pmMiWv$OQc" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5pmMiWv$OQd" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5pmMiWv$OQe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcI" role="jymVt" />
    <node concept="3clFb_" id="5pmMiWv$ORD" role="jymVt">
      <property role="TrG5h" value="removeChange" />
      <node concept="3cqZAl" id="5pmMiWv$ORE" role="3clF45" />
      <node concept="3Tm6S6" id="5pmMiWv$ORF" role="1B3o_S" />
      <node concept="3clFbS" id="5pmMiWv$ORG" role="3clF47">
        <node concept="3clFbJ" id="5xKkC$6h7$1" role="3cqZAp">
          <node concept="3clFbS" id="5xKkC$6h7$2" role="3clFbx">
            <node concept="3clFbF" id="5xKkC$6h7zC" role="3cqZAp">
              <node concept="2OqwBi" id="5xKkC$6h7zF" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeunfX" role="2Oq$k0">
                  <ref role="3cqZAo" node="5xKkC$6h7xm" resolve="myMetadataChanges" />
                </node>
                <node concept="3dhRuq" id="5xKkC$6h7zJ" role="2OqNvi">
                  <node concept="10QFUN" id="5xKkC$6h7zX" role="25WWJ7">
                    <node concept="37vLTw" id="2BHiRxgmyZV" role="10QFUP">
                      <ref role="3cqZAo" node="5pmMiWv$ORX" resolve="change" />
                    </node>
                    <node concept="3uibUv" id="5xKkC$6h7zZ" role="10QFUM">
                      <ref role="3uigEE" to="btf5:5Gi8bfMd_nh" resolve="MetadataChange" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5xKkC$6h7$6" role="3clFbw">
            <node concept="3uibUv" id="5xKkC$6h7$9" role="2ZW6by">
              <ref role="3uigEE" to="btf5:5Gi8bfMd_nh" resolve="MetadataChange" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmad$" role="2ZW6bz">
              <ref role="3cqZAo" node="5pmMiWv$ORX" resolve="change" />
            </node>
          </node>
          <node concept="9aQIb" id="5xKkC$6h7$a" role="9aQIa">
            <node concept="3clFbS" id="5xKkC$6h7$b" role="9aQI4">
              <node concept="3clFbF" id="7mo93oFtNra" role="3cqZAp">
                <node concept="2OqwBi" id="7mo93oFtNrc" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeunal" role="2Oq$k0">
                    <ref role="3cqZAo" node="1jHnZIL_C33" resolve="myNodesToChanges" />
                  </node>
                  <node concept="liA8E" id="7mo93oFtNrg" role="2OqNvi">
                    <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.removeValue(java.lang.Object)" resolve="removeValue" />
                    <node concept="37vLTw" id="2BHiRxgm6Uv" role="37wK5m">
                      <ref role="3cqZAo" node="5pmMiWv$ORX" resolve="change" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7mo93oFtNr1" role="3cqZAp">
          <node concept="2OqwBi" id="7mo93oFtNr3" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuW2d" role="2Oq$k0">
              <ref role="3cqZAo" node="7mo93oFtLc7" resolve="myAddedNodesToChanges" />
            </node>
            <node concept="liA8E" id="7mo93oFtNr7" role="2OqNvi">
              <ref role="37wK5l" to="e8no:~BidirectionalMap.removeValue(java.lang.Object)" resolve="removeValue" />
              <node concept="37vLTw" id="2BHiRxgmFk2" role="37wK5m">
                <ref role="3cqZAo" node="5pmMiWv$ORX" resolve="change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5pmMiWv$ORS" role="3cqZAp">
          <node concept="2OqwBi" id="5pmMiWv$ORT" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunbC" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
            </node>
            <node concept="liA8E" id="5pmMiWv$ORV" role="2OqNvi">
              <ref role="37wK5l" node="5pmMiWv$ORi" resolve="removeChange" />
              <node concept="37vLTw" id="2BHiRxgh9Y0" role="37wK5m">
                <ref role="3cqZAo" node="5pmMiWv$ORX" resolve="change" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5pmMiWv$ORX" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5pmMiWv$ORY" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5pmMiWv$ORZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcJ" role="jymVt" />
    <node concept="3clFb_" id="35ve9_LJept" role="jymVt">
      <property role="TrG5h" value="removeChanges" />
      <node concept="37vLTG" id="35ve9_LJgu6" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3uibUv" id="35ve9_LJgub" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="35ve9_LJguc" role="3clF46">
        <property role="TrG5h" value="changeClass" />
        <node concept="3uibUv" id="35ve9_LJgue" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="35ve9_LJgug" role="11_B2D">
            <ref role="16sUi3" node="35ve9_LJgu8" resolve="C" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="35ve9_LJguh" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="1ajhzC" id="35ve9_LJguj" role="1tU5fm">
          <node concept="10P_77" id="35ve9_LJgum" role="1ajl9A" />
          <node concept="16syzq" id="35ve9_LJgul" role="1ajw0F">
            <ref role="16sUi3" node="35ve9_LJgu8" resolve="C" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="53LGeYtZbFt" role="3clF45" />
      <node concept="3Tm6S6" id="35ve9_LJepx" role="1B3o_S" />
      <node concept="3clFbS" id="35ve9_LJepw" role="3clF47">
        <node concept="3cpWs8" id="35ve9_LJgun" role="3cqZAp">
          <node concept="3cpWsn" id="35ve9_LJguo" role="3cpWs9">
            <property role="TrG5h" value="changes" />
            <node concept="2hMVRd" id="35ve9_LJgup" role="1tU5fm">
              <node concept="3uibUv" id="35ve9_LJguq" role="2hN53Y">
                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
              </node>
            </node>
            <node concept="3K4zz7" id="5xKkC$6h7$i" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuL9z" role="3K4E3e">
                <ref role="3cqZAo" node="5xKkC$6h7xm" resolve="myMetadataChanges" />
              </node>
              <node concept="3clFbC" id="5xKkC$6h7$e" role="3K4Cdx">
                <node concept="10Nm6u" id="5xKkC$6h7$h" role="3uHU7w" />
                <node concept="37vLTw" id="2BHiRxgm93p" role="3uHU7B">
                  <ref role="3cqZAo" node="35ve9_LJgu6" resolve="nodeId" />
                </node>
              </node>
              <node concept="2OqwBi" id="35ve9_LJgur" role="3K4GZi">
                <node concept="37vLTw" id="2BHiRxeudDt" role="2Oq$k0">
                  <ref role="3cqZAo" node="1jHnZIL_C33" resolve="myNodesToChanges" />
                </node>
                <node concept="liA8E" id="35ve9_LJgut" role="2OqNvi">
                  <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.getValues(java.lang.Object)" resolve="getValues" />
                  <node concept="37vLTw" id="2BHiRxgm_fD" role="37wK5m">
                    <ref role="3cqZAo" node="35ve9_LJgu6" resolve="nodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="35ve9_LJjn_" role="3cqZAp">
          <node concept="3cpWsn" id="35ve9_LJjnA" role="3cpWs9">
            <property role="TrG5h" value="toRemove" />
            <node concept="_YKpA" id="35ve9_LJjnB" role="1tU5fm">
              <node concept="3uibUv" id="35ve9_LJjnC" role="_ZDj9">
                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
              </node>
            </node>
            <node concept="2OqwBi" id="35ve9_LJjnD" role="33vP2m">
              <node concept="2OqwBi" id="35ve9_LJjnE" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagTsvA" role="2Oq$k0">
                  <ref role="3cqZAo" node="35ve9_LJguo" resolve="changes" />
                </node>
                <node concept="3zZkjj" id="35ve9_LJjnG" role="2OqNvi">
                  <node concept="1bVj0M" id="35ve9_LJjnH" role="23t8la">
                    <node concept="3clFbS" id="35ve9_LJjnI" role="1bW5cS">
                      <node concept="3clFbF" id="35ve9_LJjnJ" role="3cqZAp">
                        <node concept="1Wc70l" id="35ve9_LJjnK" role="3clFbG">
                          <node concept="2OqwBi" id="35ve9_LJjnL" role="3uHU7B">
                            <node concept="37vLTw" id="2BHiRxgmad3" role="2Oq$k0">
                              <ref role="3cqZAo" node="35ve9_LJguc" resolve="changeClass" />
                            </node>
                            <node concept="liA8E" id="35ve9_LJjnN" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Class.isInstance(java.lang.Object)" resolve="isInstance" />
                              <node concept="37vLTw" id="2BHiRxgmaw9" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XKs" resolve="ch" />
                              </node>
                            </node>
                          </node>
                          <node concept="2Sg_IR" id="35ve9_LJjnP" role="3uHU7w">
                            <node concept="37vLTw" id="2BHiRxghfup" role="2SgG2M">
                              <ref role="3cqZAo" node="35ve9_LJguh" resolve="condition" />
                            </node>
                            <node concept="10QFUN" id="35ve9_LJjod" role="2SgHGx">
                              <node concept="37vLTw" id="2BHiRxgm9Pm" role="10QFUP">
                                <ref role="3cqZAo" node="5W7E4fV0XKs" resolve="ch" />
                              </node>
                              <node concept="16syzq" id="35ve9_LJjof" role="10QFUM">
                                <ref role="16sUi3" node="35ve9_LJgu8" resolve="C" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XKs" role="1bW2Oz">
                      <property role="TrG5h" value="ch" />
                      <node concept="2jxLKc" id="5W7E4fV0XKt" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="35ve9_LJjnU" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35ve9_LJjnX" role="3cqZAp">
          <node concept="2OqwBi" id="35ve9_LJjnZ" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTyAj" role="2Oq$k0">
              <ref role="3cqZAo" node="35ve9_LJjnA" resolve="toRemove" />
            </node>
            <node concept="2es0OD" id="35ve9_LJjo3" role="2OqNvi">
              <node concept="1bVj0M" id="35ve9_LJjo4" role="23t8la">
                <node concept="3clFbS" id="35ve9_LJjo5" role="1bW5cS">
                  <node concept="3clFbF" id="35ve9_LJjo8" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyzeSz" role="3clFbG">
                      <ref role="37wK5l" node="5pmMiWv$ORD" resolve="removeChange" />
                      <node concept="37vLTw" id="2BHiRxgm6G1" role="37wK5m">
                        <ref role="3cqZAo" node="5W7E4fV0XKu" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XKu" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0XKv" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="53LGeYtZbFv" role="3cqZAp">
          <node concept="2OqwBi" id="53LGeYtZbFy" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagTz8c" role="2Oq$k0">
              <ref role="3cqZAo" node="35ve9_LJjnA" resolve="toRemove" />
            </node>
            <node concept="34oBXx" id="53LGeYtZbFA" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="35ve9_LJgu8" role="16eVyc">
        <property role="TrG5h" value="C" />
        <node concept="3uibUv" id="35ve9_LJgua" role="3ztrMU">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcK" role="jymVt" />
    <node concept="3clFb_" id="53LGeYtZbBx" role="jymVt">
      <property role="TrG5h" value="removeDescendantChanges" />
      <node concept="3Tm6S6" id="53LGeYtZbBy" role="1B3o_S" />
      <node concept="3cqZAl" id="53LGeYtZbBz" role="3clF45" />
      <node concept="3clFbS" id="53LGeYtZbB$" role="3clF47">
        <node concept="3cpWs8" id="53LGeYtZbBF" role="3cqZAp">
          <node concept="3cpWsn" id="53LGeYtZbBt" role="3cpWs9">
            <property role="TrG5h" value="oldNode" />
            <node concept="3Tqbb2" id="jXG_1keWxp" role="1tU5fm" />
            <node concept="1rXfSq" id="4hiugqyzkry" role="33vP2m">
              <ref role="37wK5l" node="35ve9_LJsRM" resolve="getOldNode" />
              <node concept="37vLTw" id="2BHiRxgmvJ0" role="37wK5m">
                <ref role="3cqZAo" node="53LGeYtZbCn" resolve="parentId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43LPOOeIimW" role="3cqZAp">
          <node concept="3clFbS" id="43LPOOeIimY" role="3clFbx">
            <node concept="3cpWs6" id="43LPOOeIiQt" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="43LPOOeIiQH" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTz0a" role="3uHU7B">
              <ref role="3cqZAo" node="53LGeYtZbBt" resolve="oldNode" />
            </node>
            <node concept="10Nm6u" id="53LGeYtZbBL" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs8" id="jXG_1kf8OV" role="3cqZAp">
          <node concept="3cpWsn" id="jXG_1kf8OW" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="jXG_1kf8OH" role="1tU5fm">
              <node concept="3Tqbb2" id="jXG_1kf8OK" role="A3Ik2" />
            </node>
            <node concept="2OqwBi" id="jXG_1kf8OX" role="33vP2m">
              <node concept="37vLTw" id="jXG_1kf8OY" role="2Oq$k0">
                <ref role="3cqZAo" node="53LGeYtZbBt" resolve="oldNode" />
              </node>
              <node concept="Bykcj" id="jXG_1kf8OZ" role="2OqNvi">
                <node concept="1aIX9F" id="jXG_1kf8P0" role="1xVPHs">
                  <node concept="25Kdxt" id="jXG_1kf8P1" role="1aIX9E">
                    <node concept="37vLTw" id="jXG_1kf8P2" role="25KhWn">
                      <ref role="3cqZAo" node="53LGeYtZbCq" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="53LGeYtZbDF" role="3cqZAp">
          <node concept="2OqwBi" id="53LGeYtZbDH" role="3clFbG">
            <node concept="37vLTw" id="jXG_1kf9Or" role="2Oq$k0">
              <ref role="3cqZAo" node="jXG_1kf8OW" resolve="children" />
            </node>
            <node concept="2es0OD" id="53LGeYtZbE4" role="2OqNvi">
              <node concept="1bVj0M" id="53LGeYtZbE5" role="23t8la">
                <node concept="3clFbS" id="53LGeYtZbE6" role="1bW5cS">
                  <node concept="3clFbF" id="53LGeYtZbE7" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyz9ZP" role="3clFbG">
                      <ref role="37wK5l" node="53LGeYtZbC$" resolve="removeDescendantChanges" />
                      <node concept="2OqwBi" id="53LGeYtZbDY" role="37wK5m">
                        <node concept="liA8E" id="24cAaiUz$k1" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="53LGeYtZbDW" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxgkWAC" role="2JrQYb">
                            <ref role="3cqZAo" node="5W7E4fV0XKw" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XKw" role="1bW2Oz">
                  <property role="TrG5h" value="c" />
                  <node concept="2jxLKc" id="5W7E4fV0XKx" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="53LGeYtZbCn" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3uibUv" id="53LGeYtZbCo" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="53LGeYtZbCq" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="2yGnTitAvfv" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcL" role="jymVt" />
    <node concept="3clFb_" id="53LGeYtZbC$" role="jymVt">
      <property role="TrG5h" value="removeDescendantChanges" />
      <node concept="3Tm6S6" id="53LGeYtZbC_" role="1B3o_S" />
      <node concept="3cqZAl" id="53LGeYtZbCA" role="3clF45" />
      <node concept="3clFbS" id="53LGeYtZbCB" role="3clF47">
        <node concept="3cpWs8" id="53LGeYtZbCC" role="3cqZAp">
          <node concept="3cpWsn" id="53LGeYtZbCD" role="3cpWs9">
            <property role="TrG5h" value="oldNode" />
            <node concept="3Tqbb2" id="53LGeYtZbDv" role="1tU5fm" />
            <node concept="1rXfSq" id="4hiugqyzbWs" role="33vP2m">
              <ref role="37wK5l" node="35ve9_LJsRM" resolve="getOldNode" />
              <node concept="37vLTw" id="2BHiRxgmady" role="37wK5m">
                <ref role="3cqZAo" node="53LGeYtZbDk" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="53LGeYtZbCH" role="3cqZAp">
          <node concept="3y3z36" id="53LGeYtZbCI" role="1gVkn0">
            <node concept="10Nm6u" id="53LGeYtZbCJ" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTAg$" role="3uHU7B">
              <ref role="3cqZAo" node="53LGeYtZbCD" resolve="oldNode" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="53LGeYtZbCS" role="3cqZAp">
          <node concept="2GrKxI" id="53LGeYtZbCT" role="2Gsz3X">
            <property role="TrG5h" value="d" />
          </node>
          <node concept="2OqwBi" id="53LGeYtZbDw" role="2GsD0m">
            <node concept="37vLTw" id="3GM_nagTv6d" role="2Oq$k0">
              <ref role="3cqZAo" node="53LGeYtZbCD" resolve="oldNode" />
            </node>
            <node concept="2Rf3mk" id="53LGeYtZbD$" role="2OqNvi">
              <node concept="1xIGOp" id="53LGeYtZbDD" role="1xVPHs" />
            </node>
          </node>
          <node concept="3clFbS" id="53LGeYtZbD6" role="2LFqv$">
            <node concept="3clFbF" id="53LGeYtZbD7" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyYoP" role="3clFbG">
                <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                <node concept="2OqwBi" id="53LGeYtZbD9" role="37wK5m">
                  <node concept="liA8E" id="24cAaiUz$kT" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                  </node>
                  <node concept="2JrnkZ" id="53LGeYtZbDa" role="2Oq$k0">
                    <node concept="2GrUjf" id="53LGeYtZbDb" role="2JrQYb">
                      <ref role="2Gs0qQ" node="53LGeYtZbCT" resolve="d" />
                    </node>
                  </node>
                </node>
                <node concept="3VsKOn" id="53LGeYtZbDd" role="37wK5m">
                  <ref role="3VsUkX" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                </node>
                <node concept="1bVj0M" id="53LGeYtZbDe" role="37wK5m">
                  <node concept="37vLTG" id="53LGeYtZbDf" role="1bW2Oz">
                    <property role="TrG5h" value="ch" />
                    <node concept="3uibUv" id="53LGeYtZbDg" role="1tU5fm">
                      <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="53LGeYtZbDh" role="1bW5cS">
                    <node concept="3clFbF" id="53LGeYtZbDi" role="3cqZAp">
                      <node concept="3clFbT" id="53LGeYtZbDj" role="3clFbG">
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
      <node concept="37vLTG" id="53LGeYtZbDk" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3uibUv" id="53LGeYtZbDl" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcM" role="jymVt" />
    <node concept="3clFb_" id="35ve9_LJsQC" role="jymVt">
      <property role="TrG5h" value="buildAndAddChanges" />
      <node concept="3cqZAl" id="35ve9_LJsQD" role="3clF45" />
      <node concept="3Tm6S6" id="35ve9_LJsQG" role="1B3o_S" />
      <node concept="3clFbS" id="35ve9_LJsQF" role="3clF47">
        <node concept="3cpWs8" id="35ve9_LJsQH" role="3cqZAp">
          <node concept="3cpWsn" id="35ve9_LJsQI" role="3cpWs9">
            <property role="TrG5h" value="cs" />
            <node concept="3uibUv" id="35ve9_LJsQJ" role="1tU5fm">
              <ref role="3uigEE" to="bfxj:3kRMfhMv03j" resolve="ChangeSet" />
            </node>
            <node concept="2OqwBi" id="35ve9_LJsQK" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeuqNx" role="2Oq$k0">
                <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
              </node>
              <node concept="liA8E" id="35ve9_LJsQM" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="735o_gm15de" role="3cqZAp">
          <node concept="1PaTwC" id="735o_gm15df" role="1aUNEU">
            <node concept="3oM_SD" id="735o_gm15dg" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="735o_gm1jPX" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="735o_gm1jPZ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="735o_gm1jQ0" role="1PaTwD">
              <property role="3oM_SC" value="UI," />
            </node>
            <node concept="3oM_SD" id="735o_gm1jQh" role="1PaTwD">
              <property role="3oM_SC" value="hence" />
            </node>
            <node concept="3oM_SD" id="735o_gm1jQi" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qrE" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qrV" role="1PaTwD">
              <property role="3oM_SC" value="respect" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qse" role="1PaTwD">
              <property role="3oM_SC" value="commented-out" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qsJ" role="1PaTwD">
              <property role="3oM_SC" value="nodes;" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qt0" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qth" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qu2" role="1PaTwD">
              <property role="3oM_SC" value="builder" />
            </node>
            <node concept="3oM_SD" id="735o_gm1quj" role="1PaTwD">
              <property role="3oM_SC" value="unaware" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qu$" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="735o_gm1qu_" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="735o_gm1quA" role="1PaTwD">
              <property role="3oM_SC" value="moves" />
            </node>
            <node concept="3oM_SD" id="735o_gm1quB" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="735o_gm1s3r" role="1PaTwD">
              <property role="3oM_SC" value="ChangeSetBuilder.createBuilder(ChangeSet)" />
            </node>
            <node concept="3oM_SD" id="735o_gm1sCj" role="1PaTwD">
              <property role="3oM_SC" value="didn" />
            </node>
            <node concept="3oM_SD" id="735o_gm1sCk" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="35ve9_LJsQN" role="3cqZAp">
          <node concept="3cpWsn" id="35ve9_LJsQO" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="35ve9_LJsQP" role="1tU5fm">
              <ref role="3uigEE" to="bfxj:735o_gl1UsO" resolve="BasicNodeChangesBuilder" />
            </node>
            <node concept="2ShNRf" id="735o_glZfXh" role="33vP2m">
              <node concept="1pGfFk" id="735o_glZYob" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="bfxj:735o_glOFdd" resolve="BasicNodeChangesBuilder" />
                <node concept="37vLTw" id="735o_gm0dim" role="37wK5m">
                  <ref role="3cqZAo" node="35ve9_LJsQI" resolve="cs" />
                </node>
                <node concept="3clFbT" id="735o_gm0Ny7" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35ve9_LJsRu" role="3cqZAp">
          <node concept="2OqwBi" id="35ve9_LJsRy" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglBuo" role="2Oq$k0">
              <ref role="3cqZAo" node="35ve9_LJsRn" resolve="buildAction" />
            </node>
            <node concept="1Bd96e" id="35ve9_LJsRA" role="2OqNvi">
              <node concept="37vLTw" id="3GM_nagT_J_" role="1BdPVh">
                <ref role="3cqZAo" node="35ve9_LJsQO" resolve="builder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35ve9_LJsR7" role="3cqZAp">
          <node concept="2OqwBi" id="35ve9_LJsR8" role="3clFbG">
            <node concept="2OqwBi" id="35ve9_LJsR9" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagT_JQ" role="2Oq$k0">
                <ref role="3cqZAo" node="35ve9_LJsQO" resolve="builder" />
              </node>
              <node concept="liA8E" id="35ve9_LJsRb" role="2OqNvi">
                <ref role="37wK5l" to="bfxj:25TBtyry4zQ" resolve="buildChanges" />
              </node>
            </node>
            <node concept="2es0OD" id="35ve9_LJsRc" role="2OqNvi">
              <node concept="1bVj0M" id="35ve9_LJsRd" role="23t8la">
                <node concept="3clFbS" id="35ve9_LJsRe" role="1bW5cS">
                  <node concept="3clFbF" id="35ve9_LJsRf" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyzfd5" role="3clFbG">
                      <ref role="37wK5l" node="5pmMiWv$OQ7" resolve="addChange" />
                      <node concept="37vLTw" id="2BHiRxglwaE" role="37wK5m">
                        <ref role="3cqZAo" node="5W7E4fV0XKy" resolve="ch" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XKy" role="1bW2Oz">
                  <property role="TrG5h" value="ch" />
                  <node concept="2jxLKc" id="5W7E4fV0XKz" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="35ve9_LJsRn" role="3clF46">
        <property role="TrG5h" value="buildAction" />
        <node concept="1ajhzC" id="35ve9_LJsRo" role="1tU5fm">
          <node concept="3cqZAl" id="35ve9_LJsRs" role="1ajl9A" />
          <node concept="3uibUv" id="35ve9_LJsRr" role="1ajw0F">
            <ref role="3uigEE" to="bfxj:735o_gl1UsO" resolve="BasicNodeChangesBuilder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcN" role="jymVt" />
    <node concept="3clFb_" id="35ve9_LJsRM" role="jymVt">
      <property role="TrG5h" value="getOldNode" />
      <node concept="3uibUv" id="35ve9_LJsRT" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm6S6" id="35ve9_LJsRQ" role="1B3o_S" />
      <node concept="3clFbS" id="35ve9_LJsRP" role="3clF47">
        <node concept="3clFbF" id="35ve9_LJsRW" role="3cqZAp">
          <node concept="2EnYce" id="1G0fvsoX3yb" role="3clFbG">
            <node concept="2JrnkZ" id="2n9zn0CqMBR" role="2Oq$k0">
              <node concept="2EnYce" id="2n9zn0CqMBS" role="2JrQYb">
                <node concept="2OqwBi" id="2n9zn0CqMBT" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeusuj" role="2Oq$k0">
                    <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                  </node>
                  <node concept="liA8E" id="2n9zn0CqMBV" role="2OqNvi">
                    <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
                  </node>
                </node>
                <node concept="liA8E" id="2n9zn0CqMBW" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2n9zn0CqMBP" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
              <node concept="37vLTw" id="2BHiRxgmgpc" role="37wK5m">
                <ref role="3cqZAo" node="35ve9_LJsRU" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="35ve9_LJsRU" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="35ve9_LJsRV" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="35ve9_LJsS6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="35ve9_LJsS7" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcO" role="jymVt" />
    <node concept="3clFb_" id="1XuTulVDIKV" role="jymVt">
      <property role="TrG5h" value="runUpdateTask" />
      <node concept="3cqZAl" id="1XuTulVDIKW" role="3clF45" />
      <node concept="3Tm6S6" id="1XuTulVDIKZ" role="1B3o_S" />
      <node concept="3clFbS" id="1XuTulVDIKY" role="3clF47">
        <node concept="3clFbF" id="5yHL1hBu7$e" role="3cqZAp">
          <node concept="2OqwBi" id="5yHL1hBu7$g" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuj2_" role="2Oq$k0">
              <ref role="3cqZAo" node="5yHL1hBu7$3" resolve="myEventConsumingMapping" />
            </node>
            <node concept="liA8E" id="5yHL1hBu7$k" role="2OqNvi">
              <ref role="37wK5l" node="5yHL1hBtKLe" resolve="addEvent" />
              <node concept="37vLTw" id="2BHiRxghgCD" role="37wK5m">
                <ref role="3cqZAo" node="5yHL1hBu7$a" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XuTulVDIWU" role="3cqZAp">
          <node concept="3cpWsn" id="1XuTulVDIWV" role="3cpWs9">
            <property role="TrG5h" value="ancestors" />
            <node concept="_YKpA" id="1XuTulVDIWW" role="1tU5fm">
              <node concept="3uibUv" id="1XuTulVDIWX" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2OqwBi" id="1XuTulVDIWY" role="33vP2m">
              <node concept="2OqwBi" id="1XuTulVDIWZ" role="2Oq$k0">
                <node concept="2OqwBi" id="1XuTulVDIX0" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgloij" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XuTulVDIVW" resolve="currentNode" />
                  </node>
                  <node concept="z$bX8" id="1XuTulVDIX2" role="2OqNvi">
                    <node concept="1xIGOp" id="1XuTulVDIX3" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3$u5V9" id="1XuTulVDIX4" role="2OqNvi">
                  <node concept="1bVj0M" id="1XuTulVDIX5" role="23t8la">
                    <node concept="3clFbS" id="1XuTulVDIX6" role="1bW5cS">
                      <node concept="3clFbF" id="1XuTulVDIX7" role="3cqZAp">
                        <node concept="2OqwBi" id="1XuTulVDIX8" role="3clFbG">
                          <node concept="liA8E" id="24cAaiUz$lX" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="1XuTulVDIX9" role="2Oq$k0">
                            <node concept="37vLTw" id="2BHiRxgll39" role="2JrQYb">
                              <ref role="3cqZAo" node="5W7E4fV0XK$" resolve="a" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XK$" role="1bW2Oz">
                      <property role="TrG5h" value="a" />
                      <node concept="2jxLKc" id="5W7E4fV0XK_" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1XuTulVDIXe" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XuTulVDIL4" role="3cqZAp">
          <node concept="2OqwBi" id="1XuTulVDIL6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeukut" role="2Oq$k0">
              <ref role="3cqZAo" node="2JwSLRbzlnl" resolve="myQueue" />
            </node>
            <node concept="liA8E" id="1XuTulVDILa" role="2OqNvi">
              <ref role="37wK5l" node="3eE6dTgUd0h" resolve="runTask" />
              <node concept="1bVj0M" id="1XuTulVDILb" role="37wK5m">
                <node concept="3clFbS" id="1XuTulVDILc" role="1bW5cS">
                  <node concept="3clFbJ" id="3aEZ8Gp_DBR" role="3cqZAp">
                    <node concept="3clFbS" id="3aEZ8Gp_DBS" role="3clFbx">
                      <node concept="3clFbF" id="DYIxX_Rqtk" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyyNFu" role="3clFbG">
                          <ref role="37wK5l" node="2JwSLRbzmwM" resolve="update" />
                          <node concept="3clFbT" id="DYIxX_Rqtm" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="3aEZ8Gp_DG$" role="3clFbw">
                      <node concept="10Nm6u" id="3aEZ8Gp_DGB" role="3uHU7w" />
                      <node concept="2OqwBi" id="3aEZ8Gp_DBW" role="3uHU7B">
                        <node concept="37vLTw" id="2BHiRxeuyN8" role="2Oq$k0">
                          <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                        </node>
                        <node concept="liA8E" id="3aEZ8Gp_DGz" role="2OqNvi">
                          <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="DYIxX_Rqtn" role="9aQIa">
                      <node concept="3clFbS" id="DYIxX_Rqto" role="9aQI4">
                        <node concept="3clFbJ" id="1XuTulVDIX$" role="3cqZAp">
                          <node concept="3clFbS" id="1XuTulVDIX_" role="3clFbx">
                            <node concept="3SKdUt" id="1XuTulVDIYN" role="3cqZAp">
                              <node concept="1PaTwC" id="ATZLwXom6X" role="1aUNEU">
                                <node concept="3oM_SD" id="ATZLwXom6Y" role="1PaTwD">
                                  <property role="3oM_SC" value="ignore" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1OMXr7IOWGm" role="3cqZAp">
                              <node concept="2OqwBi" id="1OMXr7IOWGn" role="3clFbG">
                                <node concept="2OqwBi" id="1OMXr7IOWGo" role="2Oq$k0">
                                  <node concept="37vLTw" id="1OMXr7IOWGp" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                                  </node>
                                  <node concept="liA8E" id="1OMXr7IOWGq" role="2OqNvi">
                                    <ref role="37wK5l" node="1XuTulVDEGj" resolve="getBroadcaster" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1OMXr7IOWGr" role="2OqNvi">
                                  <ref role="37wK5l" node="7sg$kIGEM4q" resolve="changeUpdateFinished" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1XuTulVDIXD" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTC04" role="2Oq$k0">
                              <ref role="3cqZAo" node="1XuTulVDIWV" resolve="ancestors" />
                            </node>
                            <node concept="2HwmR7" id="7mo93oFtNrr" role="2OqNvi">
                              <node concept="1bVj0M" id="7mo93oFtNrs" role="23t8la">
                                <node concept="3clFbS" id="7mo93oFtNrt" role="1bW5cS">
                                  <node concept="3clFbF" id="7mo93oFtNru" role="3cqZAp">
                                    <node concept="2OqwBi" id="7mo93oFtNrv" role="3clFbG">
                                      <node concept="37vLTw" id="2BHiRxeufSI" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7mo93oFtLc7" resolve="myAddedNodesToChanges" />
                                      </node>
                                      <node concept="liA8E" id="7mo93oFtNrx" role="2OqNvi">
                                        <ref role="37wK5l" to="e8no:~BidirectionalMap.containsKey(java.lang.Object)" resolve="containsKey" />
                                        <node concept="37vLTw" id="2BHiRxgmNAX" role="37wK5m">
                                          <ref role="3cqZAo" node="5W7E4fV0XKA" resolve="a" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XKA" role="1bW2Oz">
                                  <property role="TrG5h" value="a" />
                                  <node concept="2jxLKc" id="5W7E4fV0XKB" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="1XuTulVDIYP" role="9aQIa">
                            <node concept="3clFbS" id="1XuTulVDIYQ" role="9aQI4">
                              <node concept="3clFbJ" id="5yHL1hBu7$D" role="3cqZAp">
                                <node concept="3clFbS" id="5yHL1hBu7$E" role="3clFbx">
                                  <node concept="3clFbF" id="1XuTulVDILq" role="3cqZAp">
                                    <node concept="2OqwBi" id="1XuTulVDILx" role="3clFbG">
                                      <node concept="2OqwBi" id="1XuTulVDILs" role="2Oq$k0">
                                        <node concept="37vLTw" id="2BHiRxeusat" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                                        </node>
                                        <node concept="liA8E" id="1XuTulVDILw" role="2OqNvi">
                                          <ref role="37wK5l" node="1XuTulVDEGj" resolve="getBroadcaster" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="1XuTulVDIL_" role="2OqNvi">
                                        <ref role="37wK5l" node="7sg$kIGEM4b" resolve="changeUpdateStarted" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="6BB1EWX3GxL" role="3cqZAp">
                                    <node concept="3cpWsn" id="6BB1EWX3GxM" role="3cpWs9">
                                      <property role="TrG5h" value="mpsProject" />
                                      <node concept="3uibUv" id="6BB1EWX3GxJ" role="1tU5fm">
                                        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                                      </node>
                                      <node concept="2YIFZM" id="6BB1EWX3GxN" role="33vP2m">
                                        <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                                        <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                                        <node concept="37vLTw" id="6BB1EWX3GxO" role="37wK5m">
                                          <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="1KUoCipvDY7" role="3cqZAp">
                                    <node concept="2OqwBi" id="1KUoCipvDY8" role="3clFbG">
                                      <node concept="liA8E" id="1KUoCipvDYb" role="2OqNvi">
                                        <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                                        <node concept="1bVj0M" id="1KUoCipvDYc" role="37wK5m">
                                          <node concept="3clFbS" id="1KUoCipvDYd" role="1bW5cS">
                                            <node concept="1HWtB8" id="1KUoCipvDYf" role="3cqZAp">
                                              <node concept="37vLTw" id="6BB1EWX4uMx" role="1HWFw0">
                                                <ref role="3cqZAo" node="6BB1EWX3JAh" resolve="LOCK" />
                                              </node>
                                              <node concept="3clFbS" id="1KUoCipvDYh" role="1HWHxc">
                                                <node concept="3clFbJ" id="1KUoCipvDYi" role="3cqZAp">
                                                  <node concept="3fqX7Q" id="1KUoCipvDYj" role="3clFbw">
                                                    <node concept="37vLTw" id="2BHiRxeurxx" role="3fr31v">
                                                      <ref role="3cqZAo" node="2JwSLRbzlmj" resolve="myDisposed" />
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbS" id="1KUoCipvDYm" role="3clFbx">
                                                    <node concept="3clFbF" id="1KUoCipvDYn" role="3cqZAp">
                                                      <node concept="2OqwBi" id="1KUoCipvDYo" role="3clFbG">
                                                        <node concept="37vLTw" id="2BHiRxgm7bv" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="1XuTulVDIL0" resolve="task" />
                                                        </node>
                                                        <node concept="1Bd96e" id="1KUoCipvDYq" role="2OqNvi" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="6BB1EWX3FaH" role="2Oq$k0">
                                        <node concept="37vLTw" id="6BB1EWX3GxP" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6BB1EWX3GxM" resolve="mpsProject" />
                                        </node>
                                        <node concept="liA8E" id="6BB1EWX3Geo" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="1XuTulVDILF" role="3cqZAp">
                                    <node concept="2OqwBi" id="1XuTulVDILG" role="3clFbG">
                                      <node concept="2OqwBi" id="1XuTulVDILH" role="2Oq$k0">
                                        <node concept="37vLTw" id="2BHiRxeuWOs" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                                        </node>
                                        <node concept="liA8E" id="1XuTulVDILJ" role="2OqNvi">
                                          <ref role="37wK5l" node="1XuTulVDEGj" resolve="getBroadcaster" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="1XuTulVDILK" role="2OqNvi">
                                        <ref role="37wK5l" node="7sg$kIGEM4q" resolve="changeUpdateFinished" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5yHL1hBu7$I" role="3clFbw">
                                  <node concept="37vLTw" id="2BHiRxeuqQK" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5yHL1hBu7$3" resolve="myEventConsumingMapping" />
                                  </node>
                                  <node concept="liA8E" id="5yHL1hBu7$M" role="2OqNvi">
                                    <ref role="37wK5l" node="5yHL1hBtKLC" resolve="removeEvent" />
                                    <node concept="37vLTw" id="2BHiRxgmkGm" role="37wK5m">
                                      <ref role="3cqZAo" node="5yHL1hBu7$a" resolve="event" />
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
        </node>
      </node>
      <node concept="37vLTG" id="1XuTulVDIL0" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="1ajhzC" id="1XuTulVDIL1" role="1tU5fm">
          <node concept="3cqZAl" id="1XuTulVDIL3" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="1XuTulVDIVW" role="3clF46">
        <property role="TrG5h" value="currentNode" />
        <node concept="3Tqbb2" id="1XuTulVDIVY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5yHL1hBu7$a" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="5yHL1hBu7$c" role="1tU5fm">
          <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4J1n7JwcfEL" role="jymVt" />
    <node concept="2YIFZL" id="4J1n7Jwc$i5" role="jymVt">
      <property role="TrG5h" value="getNodeIdForNodeIdChange" />
      <node concept="37vLTG" id="4J1n7JwcG0G" role="3clF46">
        <property role="TrG5h" value="nic" />
        <node concept="3uibUv" id="4J1n7JwcH75" role="1tU5fm">
          <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
        </node>
        <node concept="2AHcQZ" id="4J1n7JwcO_i" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4J1n7JwcKpt" role="3clF46">
        <property role="TrG5h" value="lastParentAndNewChildrenIds" />
        <node concept="2AHcQZ" id="4J1n7JwcKpu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="1LlUBW" id="4J1n7JwcKpv" role="1tU5fm">
          <node concept="3uibUv" id="4J1n7JwcKpw" role="1Lm7xW">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="_YKpA" id="4J1n7JwcKpx" role="1Lm7xW">
            <node concept="3uibUv" id="4J1n7JwcKpy" role="_ZDj9">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4J1n7Jwc$i8" role="3clF47">
        <node concept="3clFbJ" id="4J1n7Jwdn$c" role="3cqZAp">
          <node concept="3clFbS" id="4J1n7Jwdn$d" role="3clFbx">
            <node concept="3cpWs6" id="7v6p9iW8wFe" role="3cqZAp">
              <node concept="2ShNRf" id="7v6p9iW8yKR" role="3cqZAk">
                <node concept="2Jqq0_" id="7v6p9iW9gWR" role="2ShVmc">
                  <node concept="3uibUv" id="7v6p9iW9jcO" role="HW$YZ">
                    <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                  </node>
                  <node concept="2OqwBi" id="7v6p9iW9q7O" role="HW$Y0">
                    <node concept="37vLTw" id="7v6p9iW9nZk" role="2Oq$k0">
                      <ref role="3cqZAo" node="4J1n7JwcG0G" resolve="nic" />
                    </node>
                    <node concept="liA8E" id="7v6p9iW9set" role="2OqNvi">
                      <ref role="37wK5l" to="btf5:7v6p9iW3p60" resolve="getNodeId" />
                      <node concept="3clFbT" id="7v6p9iW9wCB" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4J1n7Jwdn$A" role="3clFbw">
            <node concept="17QLQc" id="4J1n7Jwdn$B" role="3uHU7w">
              <node concept="2OqwBi" id="4J1n7Jwdn$C" role="3uHU7w">
                <node concept="37vLTw" id="4J1n7Jwdsai" role="2Oq$k0">
                  <ref role="3cqZAo" node="4J1n7JwcG0G" resolve="nic" />
                </node>
                <node concept="liA8E" id="4J1n7Jwdn$E" role="2OqNvi">
                  <ref role="37wK5l" to="btf5:2prfDaQ83y9" resolve="getParentNodeId" />
                </node>
              </node>
              <node concept="1LFfDK" id="4J1n7Jwdn$F" role="3uHU7B">
                <node concept="3cmrfG" id="4J1n7Jwdn$G" role="1LF_Uc">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="4J1n7Jwdn$H" role="1LFl5Q">
                  <ref role="3cqZAo" node="4J1n7JwcKpt" resolve="lastParentAndNewChildrenIds" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="4J1n7Jwdn$I" role="3uHU7B">
              <node concept="37vLTw" id="4J1n7Jwdn$J" role="3uHU7B">
                <ref role="3cqZAo" node="4J1n7JwcKpt" resolve="lastParentAndNewChildrenIds" />
              </node>
              <node concept="10Nm6u" id="4J1n7Jwdn$K" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="4J1n7Jwdn$L" role="9aQIa">
            <node concept="3clFbS" id="4J1n7Jwdn$M" role="9aQI4">
              <node concept="3cpWs6" id="7v6p9iW7jQh" role="3cqZAp">
                <node concept="1LFfDK" id="7v6p9iW7jT6" role="3cqZAk">
                  <node concept="3cmrfG" id="7v6p9iW7jT7" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="7v6p9iW7jT8" role="1LFl5Q">
                    <ref role="3cqZAo" node="4J1n7JwcKpt" resolve="lastParentAndNewChildrenIds" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4J1n7Jwcr1O" role="1B3o_S" />
      <node concept="A3Dl8" id="7v6p9iW7m25" role="3clF45">
        <node concept="3uibUv" id="7v6p9iW7m26" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcP" role="jymVt" />
    <node concept="2YIFZL" id="7mo93oFtNlE" role="jymVt">
      <property role="TrG5h" value="getNodeIdsForNodeGroupChange" />
      <node concept="37vLTG" id="7mo93oFtNlM" role="3clF46">
        <property role="TrG5h" value="ngc" />
        <node concept="3uibUv" id="7mo93oFtNlO" role="1tU5fm">
          <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
        </node>
        <node concept="2AHcQZ" id="7mo93oFtNlP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="zRWNVrvAk2" role="3clF46">
        <property role="TrG5h" value="lastParentAndNewChildrenIds" />
        <node concept="2AHcQZ" id="zRWNVrvASE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="1LlUBW" id="1YgjV8LZM9o" role="1tU5fm">
          <node concept="3uibUv" id="1YgjV8LZM9p" role="1Lm7xW">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="_YKpA" id="1YgjV8LZM9q" role="1Lm7xW">
            <node concept="3uibUv" id="1YgjV8LZM9r" role="_ZDj9">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="7mo93oFtNlJ" role="3clF45">
        <node concept="3uibUv" id="7mo93oFtNlL" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7mo93oFtNlI" role="1B3o_S" />
      <node concept="3clFbS" id="7mo93oFtNlH" role="3clF47">
        <node concept="3cpWs8" id="1YgjV8LZHnV" role="3cqZAp">
          <node concept="3cpWsn" id="1YgjV8LZHnW" role="3cpWs9">
            <property role="TrG5h" value="childrenIds" />
            <node concept="_YKpA" id="1YgjV8LZHnX" role="1tU5fm">
              <node concept="3uibUv" id="1YgjV8LZHnY" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="zRWNVrvAXj" role="3cqZAp">
          <node concept="3clFbS" id="zRWNVrvAXk" role="3clFbx">
            <node concept="3cpWs8" id="7mo93oFtNlQ" role="3cqZAp">
              <node concept="3cpWsn" id="7mo93oFtNlR" role="3cpWs9">
                <property role="TrG5h" value="children" />
                <node concept="2I9FWS" id="63cAeS_w5ci" role="1tU5fm" />
                <node concept="2OqwBi" id="63cAeS_w3aK" role="33vP2m">
                  <node concept="37vLTw" id="63cAeS_w2Rc" role="2Oq$k0">
                    <ref role="3cqZAo" node="7mo93oFtNlM" resolve="ngc" />
                  </node>
                  <node concept="liA8E" id="63cAeS_w3pH" role="2OqNvi">
                    <ref role="37wK5l" to="btf5:63cAeS_l3ht" resolve="getChangedCollection" />
                    <node concept="3clFbT" id="63cAeS_w4MC" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="zRWNVrvAXt" role="3cqZAp">
              <node concept="37vLTI" id="zRWNVrvAXv" role="3clFbG">
                <node concept="2OqwBi" id="zRWNVrvAXP" role="37vLTx">
                  <node concept="2OqwBi" id="zRWNVrvAX$" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagTvad" role="2Oq$k0">
                      <ref role="3cqZAo" node="7mo93oFtNlR" resolve="children" />
                    </node>
                    <node concept="3$u5V9" id="zRWNVrvAXC" role="2OqNvi">
                      <node concept="1bVj0M" id="zRWNVrvAXD" role="23t8la">
                        <node concept="3clFbS" id="zRWNVrvAXE" role="1bW5cS">
                          <node concept="3clFbF" id="zRWNVrvAXH" role="3cqZAp">
                            <node concept="2OqwBi" id="zRWNVrvAXJ" role="3clFbG">
                              <node concept="2JrnkZ" id="63cAeS_w5M6" role="2Oq$k0">
                                <node concept="37vLTw" id="2BHiRxgm6Zs" role="2JrQYb">
                                  <ref role="3cqZAo" node="5W7E4fV0XKC" resolve="n" />
                                </node>
                              </node>
                              <node concept="liA8E" id="24cAaiUz$m5" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XKC" role="1bW2Oz">
                          <property role="TrG5h" value="n" />
                          <node concept="2jxLKc" id="5W7E4fV0XKD" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="zRWNVrvAXT" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="3GM_nagTBHg" role="37vLTJ">
                  <ref role="3cqZAo" node="1YgjV8LZHnW" resolve="childrenIds" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1YgjV8LZHj3" role="3clFbw">
            <node concept="17QLQc" id="1YgjV8LZHjf" role="3uHU7w">
              <node concept="2OqwBi" id="1YgjV8LZHjj" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxghdut" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mo93oFtNlM" resolve="ngc" />
                </node>
                <node concept="liA8E" id="1YgjV8LZHnU" role="2OqNvi">
                  <ref role="37wK5l" to="btf5:4k3fuHGtdr_" resolve="getNewParentNodeId" />
                </node>
              </node>
              <node concept="1LFfDK" id="1YgjV8LZM9s" role="3uHU7B">
                <node concept="3cmrfG" id="1YgjV8LZM9v" role="1LF_Uc">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm7dV" role="1LFl5Q">
                  <ref role="3cqZAo" node="zRWNVrvAk2" resolve="lastParentAndNewChildrenIds" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="zRWNVrvAXo" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmvM9" role="3uHU7B">
                <ref role="3cqZAo" node="zRWNVrvAk2" resolve="lastParentAndNewChildrenIds" />
              </node>
              <node concept="10Nm6u" id="zRWNVrvAXr" role="3uHU7w" />
            </node>
          </node>
          <node concept="9aQIb" id="1YgjV8LZHo4" role="9aQIa">
            <node concept="3clFbS" id="1YgjV8LZHo5" role="9aQI4">
              <node concept="3clFbF" id="1YgjV8LZHo6" role="3cqZAp">
                <node concept="37vLTI" id="1YgjV8LZHo8" role="3clFbG">
                  <node concept="1LFfDK" id="1YgjV8LZM9w" role="37vLTx">
                    <node concept="3cmrfG" id="1YgjV8LZM9z" role="1LF_Uc">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm6bA" role="1LFl5Q">
                      <ref role="3cqZAo" node="zRWNVrvAk2" resolve="lastParentAndNewChildrenIds" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTzMK" role="37vLTJ">
                    <ref role="3cqZAo" node="1YgjV8LZHnW" resolve="childrenIds" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7mo93oFtNma" role="3cqZAp">
          <node concept="2OqwBi" id="7mo93oFtNmc" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagTxgD" role="2Oq$k0">
              <ref role="3cqZAo" node="1YgjV8LZHnW" resolve="childrenIds" />
            </node>
            <node concept="8snch" id="7mo93oFtNme" role="2OqNvi">
              <node concept="2OqwBi" id="7mo93oFtNmf" role="8sqot">
                <node concept="37vLTw" id="2BHiRxgmjl3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mo93oFtNlM" resolve="ngc" />
                </node>
                <node concept="liA8E" id="7mo93oFtNmh" role="2OqNvi">
                  <ref role="37wK5l" to="btf5:PhFjFi6YF7" resolve="getResultBegin" />
                </node>
              </node>
              <node concept="2OqwBi" id="7mo93oFtNmi" role="8st4g">
                <node concept="37vLTw" id="2BHiRxghiH2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mo93oFtNlM" resolve="ngc" />
                </node>
                <node concept="liA8E" id="7mo93oFtNmk" role="2OqNvi">
                  <ref role="37wK5l" to="btf5:PhFjFi6YF1" resolve="getResultEnd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15yHJj8jTcQ" role="jymVt" />
    <node concept="2YIFZL" id="5pmMiWv$CkL" role="jymVt">
      <property role="TrG5h" value="getNodeIdForChange" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="7mo93oFtNmZ" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="37vLTG" id="5pmMiWv$Chm" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5pmMiWv$Chn" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="2AHcQZ" id="5pmMiWv$Cho" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5pmMiWv$Chg" role="3clF47">
        <node concept="3clFbJ" id="5pmMiWv$Chp" role="3cqZAp">
          <node concept="2ZW3vV" id="5pmMiWv$Cht" role="3clFbw">
            <node concept="3uibUv" id="5pmMiWv$Chw" role="2ZW6by">
              <ref role="3uigEE" to="btf5:4W7A6jbeACg" resolve="NodeChange" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmiYG" role="2ZW6bz">
              <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
            </node>
          </node>
          <node concept="3clFbS" id="5pmMiWv$Chr" role="3clFbx">
            <node concept="3cpWs6" id="5pmMiWv$Chx" role="3cqZAp">
              <node concept="2OqwBi" id="5pmMiWv$ChD" role="3cqZAk">
                <node concept="1eOMI4" id="5pmMiWv$ChH" role="2Oq$k0">
                  <node concept="10QFUN" id="5pmMiWv$ChI" role="1eOMHV">
                    <node concept="37vLTw" id="2BHiRxghcx5" role="10QFUP">
                      <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
                    </node>
                    <node concept="3uibUv" id="5pmMiWv$ChK" role="10QFUM">
                      <ref role="3uigEE" to="btf5:4W7A6jbeACg" resolve="NodeChange" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5pmMiWv$ChP" role="2OqNvi">
                  <ref role="37wK5l" to="btf5:4W7A6jbeACU" resolve="getAffectedNodeId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5pmMiWv$Ci7" role="3eNLev">
            <node concept="22lmx$" id="5pmMiWv$Cif" role="3eO9$A">
              <node concept="2ZW3vV" id="5pmMiWv$Cij" role="3uHU7w">
                <node concept="3uibUv" id="5pmMiWv$Cim" role="2ZW6by">
                  <ref role="3uigEE" to="btf5:5x0q8wkvVi1" resolve="DeleteRootChange" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmaMk" role="2ZW6bz">
                  <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
                </node>
              </node>
              <node concept="2ZW3vV" id="5pmMiWv$Cib" role="3uHU7B">
                <node concept="3uibUv" id="5pmMiWv$Cie" role="2ZW6by">
                  <ref role="3uigEE" to="btf5:5x0q8wkvS3B" resolve="AddRootChange" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm6h1" role="2ZW6bz">
                  <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5pmMiWv$Ci9" role="3eOfB_">
              <node concept="3cpWs6" id="5pmMiWv$Cin" role="3cqZAp">
                <node concept="2OqwBi" id="5pmMiWv$CiD" role="3cqZAk">
                  <node concept="37vLTw" id="2BHiRxghfHT" role="2Oq$k0">
                    <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
                  </node>
                  <node concept="liA8E" id="5pmMiWv$CiI" role="2OqNvi">
                    <ref role="37wK5l" to="btf5:3RcDWS$m24_" resolve="getRootId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5pmMiWv$CiL" role="3eNLev">
            <node concept="2ZW3vV" id="5pmMiWv$CiP" role="3eO9$A">
              <node concept="3uibUv" id="5pmMiWv$CiS" role="2ZW6by">
                <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
              </node>
              <node concept="37vLTw" id="2BHiRxgkWt$" role="2ZW6bz">
                <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
              </node>
            </node>
            <node concept="3clFbS" id="5pmMiWv$CiN" role="3eOfB_">
              <node concept="3cpWs6" id="7mo93oFtNmR" role="3cqZAp">
                <node concept="2OqwBi" id="7mo93oFtNmS" role="3cqZAk">
                  <node concept="1eOMI4" id="7mo93oFtNmT" role="2Oq$k0">
                    <node concept="10QFUN" id="7mo93oFtNmU" role="1eOMHV">
                      <node concept="37vLTw" id="2BHiRxgl6tn" role="10QFUP">
                        <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
                      </node>
                      <node concept="3uibUv" id="7mo93oFtNmW" role="10QFUM">
                        <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4SUc_GEkc5f" role="2OqNvi">
                    <ref role="37wK5l" to="btf5:2RpBf9g$wea" resolve="getOldParentNodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3oxl_1AVY6E" role="3eNLev">
            <node concept="2ZW3vV" id="3oxl_1AW46K" role="3eO9$A">
              <node concept="3uibUv" id="3oxl_1AW5bk" role="2ZW6by">
                <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
              </node>
              <node concept="37vLTw" id="3oxl_1AW2QN" role="2ZW6bz">
                <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
              </node>
            </node>
            <node concept="3clFbS" id="3oxl_1AVY6G" role="3eOfB_">
              <node concept="3cpWs6" id="3oxl_1AW5eN" role="3cqZAp">
                <node concept="2OqwBi" id="3oxl_1AWb1p" role="3cqZAk">
                  <node concept="1eOMI4" id="3oxl_1AW6o0" role="2Oq$k0">
                    <node concept="10QFUN" id="3oxl_1AW8Dc" role="1eOMHV">
                      <node concept="3uibUv" id="3oxl_1AW9Lg" role="10QFUM">
                        <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                      </node>
                      <node concept="37vLTw" id="3oxl_1AW7wx" role="10QFUP">
                        <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3oxl_1AWchf" role="2OqNvi">
                    <ref role="37wK5l" to="btf5:2prfDaQ83yg" resolve="getParentNodeId" />
                    <node concept="3clFbT" id="4SUc_GEkpWz" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="JUETeacDRR" role="3eNLev">
            <node concept="2ZW3vV" id="JUETeacSXX" role="3eO9$A">
              <node concept="3uibUv" id="2vdc4wJGMr9" role="2ZW6by">
                <ref role="3uigEE" to="btf5:7NxC9prLitz" resolve="HierarchicalNodeGroupChange" />
              </node>
              <node concept="37vLTw" id="JUETeacR8r" role="2ZW6bz">
                <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
              </node>
            </node>
            <node concept="3clFbS" id="JUETeacDRT" role="3eOfB_">
              <node concept="3cpWs6" id="JUETeacUFt" role="3cqZAp">
                <node concept="2OqwBi" id="JUETeacUFu" role="3cqZAk">
                  <node concept="1eOMI4" id="JUETeacUFv" role="2Oq$k0">
                    <node concept="10QFUN" id="JUETeacUFw" role="1eOMHV">
                      <node concept="37vLTw" id="JUETeacUFx" role="10QFUP">
                        <ref role="3cqZAo" node="5pmMiWv$Chm" resolve="change" />
                      </node>
                      <node concept="3uibUv" id="2vdc4wJGMsn" role="10QFUM">
                        <ref role="3uigEE" to="btf5:7NxC9prLitz" resolve="HierarchicalNodeGroupChange" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="JUETeacYoc" role="2OqNvi">
                    <ref role="37wK5l" to="btf5:45s9LlRYpeg" resolve="getParentId" />
                    <node concept="3clFbT" id="3roM5yBrV$2" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5pmMiWv$CkA" role="3cqZAp">
          <node concept="10Nm6u" id="7mo93oFtNn5" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5pmMiWv$Chh" role="1B3o_S" />
      <node concept="2AHcQZ" id="7mo93oFtNn2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="Jpw4evwGOl" role="jymVt" />
    <node concept="3clFb_" id="Jpw4evwYVF" role="jymVt">
      <property role="TrG5h" value="asVirtualFile" />
      <node concept="3uibUv" id="Jpw4evxmot" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="3clFbS" id="Jpw4evwYVJ" role="3clF47">
        <node concept="3clFbJ" id="Jpw4ev$$0o" role="3cqZAp">
          <node concept="3clFbC" id="Jpw4ev$LtG" role="3clFbw">
            <node concept="10Nm6u" id="Jpw4ev$R5l" role="3uHU7w" />
            <node concept="37vLTw" id="Jpw4ev$ELR" role="3uHU7B">
              <ref role="3cqZAo" node="Jpw4evxYIJ" resolve="f" />
            </node>
          </node>
          <node concept="3clFbS" id="Jpw4ev$$0q" role="3clFbx">
            <node concept="3cpWs6" id="Jpw4ev$XMH" role="3cqZAp">
              <node concept="10Nm6u" id="Jpw4ev$XYd" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Jpw4evA6P2" role="3cqZAp">
          <node concept="3cpWsn" id="Jpw4evA6P3" role="3cpWs9">
            <property role="TrG5h" value="fileSystem" />
            <node concept="3uibUv" id="Jpw4evA16W" role="1tU5fm">
              <ref role="3uigEE" to="4hrd:~FileSystemBridge" resolve="FileSystemBridge" />
            </node>
            <node concept="2OqwBi" id="Jpw4evA6P4" role="33vP2m">
              <node concept="2YIFZM" id="Jpw4evA6P5" role="2Oq$k0">
                <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="37vLTw" id="Jpw4evA6P6" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
                </node>
              </node>
              <node concept="liA8E" id="Jpw4evA6P7" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getFileSystem()" resolve="getFileSystem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Jpw4evB6EO" role="3cqZAp">
          <node concept="2OqwBi" id="Jpw4evAu1X" role="3cqZAk">
            <node concept="37vLTw" id="Jpw4evA6P8" role="2Oq$k0">
              <ref role="3cqZAo" node="Jpw4evA6P3" resolve="fileSystem" />
            </node>
            <node concept="liA8E" id="Jpw4evADGH" role="2OqNvi">
              <ref role="37wK5l" to="4hrd:~FileSystemBridge.asVirtualFile(jetbrains.mps.vfs.IFile)" resolve="asVirtualFile" />
              <node concept="37vLTw" id="Jpw4evAOu_" role="37wK5m">
                <ref role="3cqZAo" node="Jpw4evxYIJ" resolve="f" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Jpw4evxYIJ" role="3clF46">
        <property role="TrG5h" value="f" />
        <node concept="3uibUv" id="Jpw4evxYII" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="2AHcQZ" id="Jpw4ev$iwD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7KIHI4_NHxo" role="jymVt" />
    <node concept="312cEu" id="7KIHI4_OfdP" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="EventCollector" />
      <node concept="2tJIrI" id="7KIHI4_ORUh" role="jymVt" />
      <node concept="3Tm6S6" id="7KIHI4_O3RO" role="1B3o_S" />
      <node concept="3uibUv" id="7KIHI4_OFen" role="1zkMxy">
        <ref role="3uigEE" to="j9co:~NodeChangeBridge" resolve="NodeChangeBridge" />
      </node>
      <node concept="3uibUv" id="6KMC31WlMar" role="EKbjA">
        <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
      </node>
      <node concept="3uibUv" id="7KIHI4_ONGa" role="EKbjA">
        <ref role="3uigEE" to="nvd4:~CommandListener" resolve="CommandListener" />
      </node>
      <node concept="3uibUv" id="7KIHI4_RvHE" role="EKbjA">
        <ref role="3uigEE" to="mhbf:~SModelListener" resolve="SModelListener" />
      </node>
      <node concept="3clFb_" id="7KIHI4_OW8w" role="jymVt">
        <property role="TrG5h" value="commandStarted" />
        <node concept="3Tm1VV" id="7KIHI4_OW8y" role="1B3o_S" />
        <node concept="3cqZAl" id="7KIHI4_OW8$" role="3clF45" />
        <node concept="3clFbS" id="7KIHI4_OW8B" role="3clF47">
          <node concept="3clFbF" id="7KIHI4_PfFY" role="3cqZAp">
            <node concept="1rXfSq" id="7KIHI4_PfFX" role="3clFbG">
              <ref role="37wK5l" to="j9co:~NodeChangeBridge.active(boolean)" resolve="active" />
              <node concept="3clFbT" id="7KIHI4_PgIn" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7KIHI4_OW8C" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7KIHI4_OW8H" role="jymVt">
        <property role="TrG5h" value="commandFinished" />
        <node concept="3Tm1VV" id="7KIHI4_OW8J" role="1B3o_S" />
        <node concept="3cqZAl" id="7KIHI4_OW8L" role="3clF45" />
        <node concept="3clFbS" id="7KIHI4_OW8O" role="3clF47">
          <node concept="3clFbF" id="7KIHI4_Plrl" role="3cqZAp">
            <node concept="1rXfSq" id="7KIHI4_Plri" role="3clFbG">
              <ref role="37wK5l" to="j9co:~NodeChangeBridge.active(boolean)" resolve="active" />
              <node concept="3clFbT" id="7KIHI4_Pq3B" role="37wK5m" />
            </node>
          </node>
          <node concept="3SKdUt" id="6KMC31Wmhh0" role="3cqZAp">
            <node concept="1PaTwC" id="6KMC31Wmhh1" role="1aUNEU">
              <node concept="3oM_SD" id="6KMC31Wmmyf" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmmyg" role="1PaTwD">
                <property role="3oM_SC" value="consider" />
              </node>
              <node concept="3oM_SD" id="6KMC31WmqOv" role="1PaTwD">
                <property role="3oM_SC" value="refactoring" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx28" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx2D" role="1PaTwD">
                <property role="3oM_SC" value="MyEventProcessor" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx2U" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx3b" role="1PaTwD">
                <property role="3oM_SC" value="use" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx3s" role="1PaTwD">
                <property role="3oM_SC" value="SNodeChangeListener" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx3X" role="1PaTwD">
                <property role="3oM_SC" value="notifications" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx3Y" role="1PaTwD">
                <property role="3oM_SC" value="instead" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx3Z" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="6KMC31Wmx40" role="1PaTwD">
                <property role="3oM_SC" value="SModelEvent" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7KIHI4_PNTM" role="3cqZAp">
            <node concept="3cpWsn" id="7KIHI4_PNTS" role="3cpWs9">
              <property role="TrG5h" value="events" />
              <node concept="3uibUv" id="7KIHI4_PNTU" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="7KIHI4_PON8" role="11_B2D">
                  <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
                </node>
              </node>
              <node concept="1rXfSq" id="6KMC31Wlb1H" role="33vP2m">
                <ref role="37wK5l" to="j9co:~NodeChangeBridge.drainToList()" resolve="drainToList" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7KIHI4_QV45" role="3cqZAp">
            <node concept="3clFbS" id="7KIHI4_QV47" role="3clFbx">
              <node concept="3clFbF" id="7KIHI4_PyTu" role="3cqZAp">
                <node concept="2OqwBi" id="7KIHI4_P_OJ" role="3clFbG">
                  <node concept="37vLTw" id="7KIHI4_PyTs" role="2Oq$k0">
                    <ref role="3cqZAo" node="6h1S4muGYko" resolve="myEventProcessor" />
                  </node>
                  <node concept="liA8E" id="7KIHI4_PEkA" role="2OqNvi">
                    <ref role="37wK5l" node="2QnDi8QvccC" resolve="eventsHappenedInCommand" />
                    <node concept="37vLTw" id="7KIHI4_RqHA" role="37wK5m">
                      <ref role="3cqZAo" node="7KIHI4_PNTS" resolve="events" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7KIHI4_RczO" role="3clFbw">
              <node concept="2OqwBi" id="7KIHI4_RczQ" role="3fr31v">
                <node concept="37vLTw" id="7KIHI4_RczR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7KIHI4_PNTS" resolve="events" />
                </node>
                <node concept="liA8E" id="7KIHI4_RczS" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7KIHI4_OW8P" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7KIHI4_RD0L" role="jymVt" />
      <node concept="3clFb_" id="7KIHI4_RHDI" role="jymVt">
        <property role="TrG5h" value="dependenciesChanged" />
        <node concept="3Tm1VV" id="7KIHI4_RHDK" role="1B3o_S" />
        <node concept="3cqZAl" id="7KIHI4_RHDM" role="3clF45" />
        <node concept="37vLTG" id="7KIHI4_RHDN" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="7KIHI4_RHDO" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="37vLTG" id="7KIHI4_RHDP" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="7KIHI4_RHDQ" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModelListener$DependencyChange" resolve="SModelListener.DependencyChange" />
          </node>
        </node>
        <node concept="3clFbS" id="7KIHI4_RHDT" role="3clF47">
          <node concept="3clFbJ" id="6KMC31WhIU5" role="3cqZAp">
            <node concept="3clFbS" id="6KMC31WhIU7" role="3clFbx">
              <node concept="3cpWs6" id="6KMC31WijX1" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="6KMC31WhYq1" role="3clFbw">
              <node concept="1rXfSq" id="6KMC31Wi4rR" role="3fr31v">
                <ref role="37wK5l" to="j9co:~NodeChangeBridge.isActive()" resolve="isActive" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7KIHI4_SUUF" role="3cqZAp">
            <node concept="3clFbS" id="7KIHI4_SUUH" role="3clFbx">
              <node concept="3clFbF" id="6KMC31WjS0r" role="3cqZAp">
                <node concept="1rXfSq" id="6KMC31WjS0p" role="3clFbG">
                  <ref role="37wK5l" to="j9co:~NodeChangeBridge.recordEvents(java.util.stream.Stream)" resolve="recordEvents" />
                  <node concept="2OqwBi" id="6KMC31WjevS" role="37wK5m">
                    <node concept="1eOMI4" id="6KMC31WiLsY" role="2Oq$k0">
                      <node concept="10QFUN" id="6KMC31WiLsV" role="1eOMHV">
                        <node concept="3uibUv" id="6KMC31WiZpj" role="10QFUM">
                          <ref role="3uigEE" to="j9co:~DependencyChangeBridge" resolve="DependencyChangeBridge" />
                        </node>
                        <node concept="37vLTw" id="6KMC31WiyiU" role="10QFUP">
                          <ref role="3cqZAo" node="7KIHI4_RHDP" resolve="change" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6KMC31WjrSW" role="2OqNvi">
                      <ref role="37wK5l" to="j9co:~DependencyChangeBridge.originalEvents()" resolve="originalEvents" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="7KIHI4_T4Qq" role="3clFbw">
              <node concept="3uibUv" id="7KIHI4_T9Ht" role="2ZW6by">
                <ref role="3uigEE" to="j9co:~DependencyChangeBridge" resolve="DependencyChangeBridge" />
              </node>
              <node concept="37vLTw" id="7KIHI4_SZWS" role="2ZW6bz">
                <ref role="3cqZAo" node="7KIHI4_RHDP" resolve="change" />
              </node>
            </node>
            <node concept="9aQIb" id="7KIHI4_TeoZ" role="9aQIa">
              <node concept="3clFbS" id="7KIHI4_Tep0" role="9aQI4">
                <node concept="1gVbGN" id="7KIHI4_TjwV" role="3cqZAp">
                  <node concept="3clFbT" id="7KIHI4_To_j" role="1gVkn0" />
                  <node concept="Xl_RD" id="7KIHI4_TyoO" role="1gVpfI">
                    <property role="Xl_RC" value="FIXME implement visitor for DependencyChange" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7KIHI4_RHDU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6BB1EWX4vls" role="jymVt" />
    <node concept="312cEu" id="2QnDi8Qvcci" role="jymVt">
      <property role="TrG5h" value="MyEventProcessor" />
      <property role="2bfB8j" value="true" />
      <node concept="312cEg" id="4W4PrCD3vBo" role="jymVt">
        <property role="TrG5h" value="childChanged" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="4W4PrCD3vBp" role="1B3o_S" />
        <node concept="3rvAFt" id="2QnDi8QvARJ" role="1tU5fm">
          <node concept="2hMVRd" id="2QnDi8QvARN" role="3rvSg0">
            <node concept="3uibUv" id="33pw6PrBzK$" role="2hN53Y">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
          </node>
          <node concept="3uibUv" id="2QnDi8QvARM" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="12Ilyp_UHSg" role="jymVt">
        <property role="TrG5h" value="rootsDeleted" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="12Ilyp_UHSh" role="1B3o_S" />
        <node concept="3uibUv" id="12Ilyp_W587" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="12Ilyp_W7kQ" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4W4PrCD3taW" role="jymVt" />
      <node concept="3Tm6S6" id="7KIHI4_M9sf" role="1B3o_S" />
      <node concept="3clFb_" id="2QnDi8QvccC" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="eventsHappenedInCommand" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="6h1S4muGgsL" role="1B3o_S" />
        <node concept="3cqZAl" id="2QnDi8QvccE" role="3clF45" />
        <node concept="37vLTG" id="2QnDi8QvccF" role="3clF46">
          <property role="TrG5h" value="events" />
          <node concept="3uibUv" id="2QnDi8QvccG" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="2QnDi8QvccH" role="11_B2D">
              <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2QnDi8QvccI" role="3clF47">
          <node concept="3clFbF" id="4W4PrCD3o4O" role="3cqZAp">
            <node concept="37vLTI" id="4W4PrCD3o4Q" role="3clFbG">
              <node concept="2ShNRf" id="2QnDi8QvARR" role="37vLTx">
                <node concept="3rGOSV" id="2QnDi8QvARS" role="2ShVmc">
                  <node concept="3uibUv" id="2QnDi8QvART" role="3rHrn6">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="2hMVRd" id="2QnDi8QvARU" role="3rHtpV">
                    <node concept="3uibUv" id="33pw6PrB$sL" role="2hN53Y">
                      <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4W4PrCD3o4U" role="37vLTJ">
                <ref role="3cqZAo" node="4W4PrCD3vBo" resolve="childChanged" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="12Ilyp_V3ck" role="3cqZAp">
            <node concept="37vLTI" id="12Ilyp_V5M2" role="3clFbG">
              <node concept="2ShNRf" id="12Ilyp_V7_V" role="37vLTx">
                <node concept="1pGfFk" id="12Ilyp_WaaK" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                  <node concept="3uibUv" id="12Ilyp_WbJY" role="1pMfVU">
                    <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="12Ilyp_V3ci" role="37vLTJ">
                <ref role="3cqZAo" node="12Ilyp_UHSg" resolve="rootsDeleted" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="2QnDi8QvccU" role="3cqZAp">
            <node concept="2GrKxI" id="2QnDi8QvccV" role="2Gsz3X">
              <property role="TrG5h" value="event" />
            </node>
            <node concept="37vLTw" id="2BHiRxglRMp" role="2GsD0m">
              <ref role="3cqZAo" node="2QnDi8QvccF" resolve="events" />
            </node>
            <node concept="3clFbS" id="2QnDi8QvccX" role="2LFqv$">
              <node concept="3clFbF" id="4W4PrCD3TjD" role="3cqZAp">
                <node concept="2OqwBi" id="4W4PrCD3Tqp" role="3clFbG">
                  <node concept="2GrUjf" id="4W4PrCD3TjC" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2QnDi8QvccV" resolve="event" />
                  </node>
                  <node concept="liA8E" id="4W4PrCD3UiM" role="2OqNvi">
                    <ref role="37wK5l" to="j9co:~SModelEvent.accept(jetbrains.mps.smodel.event.SModelEventVisitor)" resolve="accept" />
                    <node concept="Xjq3P" id="4W4PrCD3Uml" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4W4PrCD3BWL" role="3cqZAp">
            <node concept="37vLTI" id="4W4PrCD3ClD" role="3clFbG">
              <node concept="10Nm6u" id="4W4PrCD3COP" role="37vLTx" />
              <node concept="37vLTw" id="4W4PrCD3BWK" role="37vLTJ">
                <ref role="3cqZAo" node="4W4PrCD3vBo" resolve="childChanged" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="12Ilyp_VS5Z" role="3cqZAp">
            <node concept="37vLTI" id="12Ilyp_VUbG" role="3clFbG">
              <node concept="10Nm6u" id="12Ilyp_VV6C" role="37vLTx" />
              <node concept="37vLTw" id="12Ilyp_VS5X" role="37vLTJ">
                <ref role="3cqZAo" node="12Ilyp_UHSg" resolve="rootsDeleted" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="55Bdl$88gj$" role="3cqZAp" />
          <node concept="3SKdUt" id="1JEtvnKIiqu" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXom6Z" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXom70" role="1PaTwD">
                <property role="3oM_SC" value="make" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom71" role="1PaTwD">
                <property role="3oM_SC" value="model" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom72" role="1PaTwD">
                <property role="3oM_SC" value="file[s]" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom73" role="1PaTwD">
                <property role="3oM_SC" value="dirty" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1JEtvnKIQrl" role="3cqZAp">
            <node concept="3cpWsn" id="1JEtvnKIQro" role="3cpWs9">
              <property role="TrG5h" value="affectedFiles" />
              <node concept="2hMVRd" id="1JEtvnKIQrh" role="1tU5fm">
                <node concept="3uibUv" id="1JEtvnKIQPd" role="2hN53Y">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
              </node>
              <node concept="2ShNRf" id="1JEtvnKJjam" role="33vP2m">
                <node concept="2i4dXS" id="1JEtvnKJja0" role="2ShVmc">
                  <node concept="3uibUv" id="1JEtvnKJja1" role="HW$YZ">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4RF_pvqAhAr" role="3cqZAp">
            <node concept="3cpWsn" id="4RF_pvqAhAs" role="3cpWs9">
              <property role="TrG5h" value="dataSource" />
              <node concept="3uibUv" id="4RF_pvqAhAt" role="1tU5fm">
                <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
              </node>
              <node concept="2OqwBi" id="4RF_pvqAhWb" role="33vP2m">
                <node concept="37vLTw" id="4RF_pvqAhQO" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JwSLRbzll2" resolve="myModelDescriptor" />
                </node>
                <node concept="liA8E" id="4RF_pvqAi1Q" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4RF_pvqAif8" role="3cqZAp">
            <node concept="3clFbS" id="4RF_pvqAifa" role="3clFbx">
              <node concept="3cpWs8" id="2KujyEVKE0_" role="3cqZAp">
                <node concept="3cpWsn" id="2KujyEVKE0A" role="3cpWs9">
                  <property role="TrG5h" value="collected" />
                  <node concept="3uibUv" id="2KujyEVKj_P" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="2KujyEVKE1X" role="11_B2D">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="2KujyEVKGej" role="33vP2m">
                    <node concept="3uibUv" id="2KujyEVKUa6" role="10QFUM">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="2KujyEVKUb6" role="11_B2D">
                        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                      </node>
                    </node>
                    <node concept="1eOMI4" id="2KujyEVKEWn" role="10QFUP">
                      <node concept="2OqwBi" id="2KujyEVKE0B" role="1eOMHV">
                        <node concept="2OqwBi" id="2KujyEVKE0C" role="2Oq$k0">
                          <node concept="1eOMI4" id="2KujyEVKE0D" role="2Oq$k0">
                            <node concept="10QFUN" id="2KujyEVKE0E" role="1eOMHV">
                              <node concept="3uibUv" id="2KujyEVKE0F" role="10QFUM">
                                <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                              </node>
                              <node concept="37vLTw" id="2KujyEVKE0G" role="10QFUP">
                                <ref role="3cqZAo" node="4RF_pvqAhAs" resolve="dataSource" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2KujyEVKE0H" role="2OqNvi">
                            <ref role="37wK5l" to="ends:~FileSystemBasedDataSource.getAffectedFilesWithDirsExtracted()" resolve="getAffectedFilesWithDirsExtracted" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2KujyEVKE0I" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="2KujyEVKE0J" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1JEtvnKJjqX" role="3cqZAp">
                <node concept="2OqwBi" id="1JEtvnKJjDr" role="3clFbG">
                  <node concept="37vLTw" id="1JEtvnKJjqV" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JEtvnKIQro" resolve="affectedFiles" />
                  </node>
                  <node concept="X8dFx" id="5aCcidKX4z0" role="2OqNvi">
                    <node concept="37vLTw" id="2KujyEVKE0K" role="25WWJ7">
                      <ref role="3cqZAo" node="2KujyEVKE0A" resolve="collected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="4RF_pvqAivg" role="3clFbw">
              <node concept="37vLTw" id="4RF_pvqAit0" role="2ZW6bz">
                <ref role="3cqZAo" node="4RF_pvqAhAs" resolve="dataSource" />
              </node>
              <node concept="3uibUv" id="5aCcidKW8wP" role="2ZW6by">
                <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="19wAVa0k_qi" role="3cqZAp">
            <node concept="3cpWsn" id="19wAVa0k_qj" role="3cpWs9">
              <property role="TrG5h" value="provider" />
              <node concept="3uibUv" id="19wAVa0k_qg" role="1tU5fm">
                <ref role="3uigEE" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
              </node>
              <node concept="2YIFZM" id="1M$6WUeGEXj" role="33vP2m">
                <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
                <node concept="37vLTw" id="1M$6WUeGEXk" role="37wK5m">
                  <ref role="3cqZAo" node="2JwSLRbzlnZ" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1M$6WUeIlZT" role="3cqZAp">
            <node concept="3y3z36" id="1M$6WUeIM7T" role="3clFbw">
              <node concept="10Nm6u" id="1M$6WUeJ01M" role="3uHU7w" />
              <node concept="37vLTw" id="1M$6WUeI$9n" role="3uHU7B">
                <ref role="3cqZAo" node="19wAVa0k_qj" resolve="provider" />
              </node>
            </node>
            <node concept="3clFbS" id="1M$6WUeIlZV" role="3clFbx">
              <node concept="2Gpval" id="1JEtvnKJnua" role="3cqZAp">
                <node concept="2GrKxI" id="1JEtvnKJnuc" role="2Gsz3X">
                  <property role="TrG5h" value="iFile" />
                </node>
                <node concept="3clFbS" id="1JEtvnKJnue" role="2LFqv$">
                  <node concept="3cpWs8" id="1J$jPsZCP5T" role="3cqZAp">
                    <node concept="3cpWsn" id="1J$jPsZCP5U" role="3cpWs9">
                      <property role="TrG5h" value="vFile" />
                      <node concept="3uibUv" id="1J$jPsZCP5N" role="1tU5fm">
                        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                      </node>
                      <node concept="1rXfSq" id="Jpw4evy$Sh" role="33vP2m">
                        <ref role="37wK5l" node="Jpw4evwYVF" resolve="asVirtualFile" />
                        <node concept="2GrUjf" id="Jpw4evyL6_" role="37wK5m">
                          <ref role="2Gs0qQ" node="1JEtvnKJnuc" resolve="iFile" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1J$jPsZCOZr" role="3cqZAp">
                    <node concept="3clFbS" id="1J$jPsZCOZt" role="3clFbx">
                      <node concept="3clFbF" id="1M$6WUeHIVF" role="3cqZAp">
                        <node concept="2OqwBi" id="1M$6WUeHIVG" role="3clFbG">
                          <node concept="37vLTw" id="1M$6WUeHIVH" role="2Oq$k0">
                            <ref role="3cqZAo" node="19wAVa0k_qj" resolve="provider" />
                          </node>
                          <node concept="liA8E" id="1M$6WUeHIVI" role="2OqNvi">
                            <ref role="37wK5l" to="jlcu:~FileStatusManager.fileStatusChanged(com.intellij.openapi.vfs.VirtualFile)" resolve="fileStatusChanged" />
                            <node concept="37vLTw" id="1M$6WUeHIVJ" role="37wK5m">
                              <ref role="3cqZAo" node="1J$jPsZCP5U" resolve="vFile" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="1J$jPsZCPni" role="3clFbw">
                      <node concept="10Nm6u" id="1J$jPsZCPr8" role="3uHU7w" />
                      <node concept="37vLTw" id="1J$jPsZCPgZ" role="3uHU7B">
                        <ref role="3cqZAo" node="1J$jPsZCP5U" resolve="vFile" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1JEtvnKJp8I" role="2GsD0m">
                  <ref role="3cqZAo" node="1JEtvnKIQro" resolve="affectedFiles" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6BB1EWX3mrG" role="jymVt" />
      <node concept="3clFb_" id="2QnDi8Qvcfb" role="jymVt">
        <property role="TrG5h" value="visitPropertyEvent" />
        <node concept="3Tm1VV" id="4W4PrCD2qnT" role="1B3o_S" />
        <node concept="3clFbS" id="2QnDi8Qvcfe" role="3clF47">
          <node concept="3cpWs8" id="2QnDi8QvAKq" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAKr" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3uibUv" id="2QnDi8QvAKs" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAKt" role="33vP2m">
                <node concept="37vLTw" id="2BHiRxglKZB" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8Qvcfn" resolve="event" />
                </node>
                <node concept="liA8E" id="2QnDi8QvAKv" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelPropertyEvent.getNode()" resolve="getNode" />
                </node>
              </node>
              <node concept="2AHcQZ" id="59kaQYRfcOO" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2QnDi8QvAKy" role="3cqZAp">
            <node concept="3clFbC" id="7kqGFYELY2H" role="3clFbw">
              <node concept="10Nm6u" id="7kqGFYEM0AM" role="3uHU7w" />
              <node concept="2OqwBi" id="2QnDi8QvAKX" role="3uHU7B">
                <node concept="liA8E" id="7kqGFYELVqW" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
                <node concept="37vLTw" id="3GM_nagTsE3" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvAKr" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2QnDi8QvAKz" role="3clFbx">
              <node concept="3cpWs6" id="2QnDi8QvAL4" role="3cqZAp" />
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvAJm" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAJn" role="3cpWs9">
              <property role="TrG5h" value="nodeId" />
              <node concept="3uibUv" id="2QnDi8QvAJo" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAJp" role="33vP2m">
                <node concept="liA8E" id="24cAaiUz$jh" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
                <node concept="37vLTw" id="3GM_nagTxEw" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvAKr" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5IRXTJLNEBo" role="3cqZAp">
            <node concept="3cpWsn" id="5IRXTJLNEBp" role="3cpWs9">
              <property role="TrG5h" value="property" />
              <node concept="3uibUv" id="5IRXTJLNEBq" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
              <node concept="2OqwBi" id="5IRXTJLNFdb" role="33vP2m">
                <node concept="37vLTw" id="2yGnTit_pRP" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8Qvcfn" resolve="event" />
                </node>
                <node concept="liA8E" id="2yGnTit_qfr" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelPropertyEvent.getProperty()" resolve="getProperty" />
                </node>
              </node>
              <node concept="2AHcQZ" id="59kaQYRfGoW" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1G0fvsp5O1o" role="3cqZAp" />
          <node concept="3SKdUt" id="1G0fvsp5NhB" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXom7b" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXom7c" role="1PaTwD">
                <property role="3oM_SC" value="get" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7d" role="1PaTwD">
                <property role="3oM_SC" value="more" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7e" role="1PaTwD">
                <property role="3oM_SC" value="info" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7f" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7g" role="1PaTwD">
                <property role="3oM_SC" value="debugging" />
              </node>
            </node>
          </node>
          <node concept="1gVbGN" id="1G0fvsoXCDo" role="3cqZAp">
            <node concept="3y3z36" id="1G0fvsp5FUz" role="1gVkn0">
              <node concept="10Nm6u" id="1G0fvsp5GhS" role="3uHU7w" />
              <node concept="2OqwBi" id="1G0fvsoXE4V" role="3uHU7B">
                <node concept="2OqwBi" id="1G0fvsoXDUe" role="2Oq$k0">
                  <node concept="37vLTw" id="1G0fvsoXDTs" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QnDi8QvAKr" resolve="node" />
                  </node>
                  <node concept="liA8E" id="1G0fvsoXE1P" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
                <node concept="liA8E" id="1G0fvsoXEmx" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                  <node concept="37vLTw" id="1G0fvsoXErc" role="37wK5m">
                    <ref role="3cqZAo" node="2QnDi8QvAJn" resolve="nodeId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs3" id="1G0fvsoXGAP" role="1gVpfI">
              <node concept="2OqwBi" id="1G0fvsoXGZx" role="3uHU7w">
                <node concept="37vLTw" id="1G0fvsoXGVP" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvAKr" resolve="node" />
                </node>
                <node concept="liA8E" id="1G0fvsoXHbw" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
              </node>
              <node concept="3cpWs3" id="1G0fvsoXFGC" role="3uHU7B">
                <node concept="3cpWs3" id="1G0fvsoXFed" role="3uHU7B">
                  <node concept="Xl_RD" id="1G0fvsoXERu" role="3uHU7B">
                    <property role="Xl_RC" value="cannot find node " />
                  </node>
                  <node concept="37vLTw" id="1G0fvsoXFv4" role="3uHU7w">
                    <ref role="3cqZAo" node="2QnDi8QvAJn" resolve="nodeId" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1G0fvsoXFId" role="3uHU7w">
                  <property role="Xl_RC" value=" in model " />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1G0fvsp5OsR" role="3cqZAp" />
          <node concept="3clFbF" id="2QnDi8QvAJi" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyKZn" role="3clFbG">
              <ref role="37wK5l" node="1XuTulVDIKV" resolve="runUpdateTask" />
              <node concept="1bVj0M" id="2QnDi8QvAJk" role="37wK5m">
                <node concept="3clFbS" id="2QnDi8QvAJl" role="1bW5cS">
                  <node concept="3clFbF" id="2QnDi8QvAJ_" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyARTD" role="3clFbG">
                      <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                      <node concept="37vLTw" id="3GM_nagTAWj" role="37wK5m">
                        <ref role="3cqZAo" node="2QnDi8QvAJn" resolve="nodeId" />
                      </node>
                      <node concept="3VsKOn" id="2QnDi8QvAJC" role="37wK5m">
                        <ref role="3VsUkX" to="btf5:2nwhOFr8I08" resolve="SetPropertyChange" />
                      </node>
                      <node concept="1bVj0M" id="2QnDi8QvAJD" role="37wK5m">
                        <node concept="3clFbS" id="2QnDi8QvAJE" role="1bW5cS">
                          <node concept="3clFbF" id="2QnDi8QvAJF" role="3cqZAp">
                            <node concept="2OqwBi" id="5IRXTJLO6B0" role="3clFbG">
                              <node concept="37vLTw" id="5IRXTJLO6qZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="2QnDi8QvAJM" resolve="ch" />
                              </node>
                              <node concept="liA8E" id="5IRXTJLO6Z7" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:5IRXTJLNS6t" resolve="isAbout" />
                                <node concept="37vLTw" id="5IRXTJLO7z6" role="37wK5m">
                                  <ref role="3cqZAo" node="5IRXTJLNEBp" resolve="property" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="2QnDi8QvAJM" role="1bW2Oz">
                          <property role="TrG5h" value="ch" />
                          <node concept="3uibUv" id="2QnDi8QvAJN" role="1tU5fm">
                            <ref role="3uigEE" to="btf5:2nwhOFr8I08" resolve="SetPropertyChange" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="59kaQYRgjKa" role="3cqZAp">
                    <node concept="3cpWsn" id="59kaQYRgjKb" role="3cpWs9">
                      <property role="TrG5h" value="oldNode" />
                      <node concept="3uibUv" id="59kaQYRgjKc" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="1rXfSq" id="59kaQYRg_Oe" role="33vP2m">
                        <ref role="37wK5l" node="35ve9_LJsRM" resolve="getOldNode" />
                        <node concept="37vLTw" id="59kaQYRg_Of" role="37wK5m">
                          <ref role="3cqZAo" node="2QnDi8QvAJn" resolve="nodeId" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="59kaQYRhbPc" role="3cqZAp">
                    <node concept="3clFbS" id="59kaQYRhbPe" role="3clFbx">
                      <node concept="3SKdUt" id="59kaQYRuojL" role="3cqZAp">
                        <node concept="1PaTwC" id="59kaQYRuojM" role="1aUNEU">
                          <node concept="3oM_SD" id="59kaQYRuK1n" role="1PaTwD">
                            <property role="3oM_SC" value="something" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRuNOx" role="1PaTwD">
                            <property role="3oM_SC" value="unpredictable" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRxgFn" role="1PaTwD">
                            <property role="3oM_SC" value="happened" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="59kaQYRxqEC" role="3cqZAp">
                        <node concept="1PaTwC" id="59kaQYRxqED" role="1aUNEU">
                          <node concept="3oM_SD" id="59kaQYRxziN" role="1PaTwD">
                            <property role="3oM_SC" value="we" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRxziP" role="1PaTwD">
                            <property role="3oM_SC" value="can" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRxDi2" role="1PaTwD">
                            <property role="3oM_SC" value="not" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRxS3v" role="1PaTwD">
                            <property role="3oM_SC" value="compare" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRxWUT" role="1PaTwD">
                            <property role="3oM_SC" value="properties" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRyT$v" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRyT$A" role="1PaTwD">
                            <property role="3oM_SC" value="non-existing" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYRzaTu" role="1PaTwD">
                            <property role="3oM_SC" value="node." />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="1L_Jyzl1XgS" role="3cqZAp">
                        <node concept="3cpWsn" id="1L_Jyzl1XgT" role="3cpWs9">
                          <property role="TrG5h" value="warning" />
                          <node concept="17QB3L" id="1L_Jyzl1XgU" role="1tU5fm" />
                          <node concept="3cpWs3" id="1L_Jyzl1XgV" role="33vP2m">
                            <node concept="Xl_RD" id="1L_Jyzl1XgW" role="3uHU7B">
                              <property role="Xl_RC" value="Property change event cannot be processed for the deleted node: " />
                            </node>
                            <node concept="2OqwBi" id="1L_Jyzl1XgX" role="3uHU7w">
                              <node concept="37vLTw" id="1L_Jyzl1XgY" role="2Oq$k0">
                                <ref role="3cqZAo" node="2QnDi8QvAKr" resolve="node" />
                              </node>
                              <node concept="liA8E" id="1L_Jyzl1XgZ" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getPresentation()" resolve="getPresentation" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="RRSsy" id="1L_Jyzl1Xh0" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fksE/warn" />
                        <node concept="37vLTw" id="1L_Jyzl1Xh1" role="RRSoy">
                          <ref role="3cqZAo" node="1L_Jyzl1XgT" resolve="warning" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="59kaQYRu1wR" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="59kaQYRtGdE" role="3clFbw">
                      <node concept="37vLTw" id="59kaQYRhiDL" role="3uHU7B">
                        <ref role="3cqZAo" node="59kaQYRgjKb" resolve="oldNode" />
                      </node>
                      <node concept="10Nm6u" id="59kaQYRhAoP" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="2QnDi8QvAJO" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyAR3l" role="3clFbG">
                      <ref role="37wK5l" node="35ve9_LJsQC" resolve="buildAndAddChanges" />
                      <node concept="1bVj0M" id="2QnDi8QvAJQ" role="37wK5m">
                        <node concept="37vLTG" id="2QnDi8QvAJR" role="1bW2Oz">
                          <property role="TrG5h" value="b" />
                          <node concept="3uibUv" id="2QnDi8QvAJS" role="1tU5fm">
                            <ref role="3uigEE" to="bfxj:735o_gl1UsO" resolve="BasicNodeChangesBuilder" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2QnDi8QvAJT" role="1bW5cS">
                          <node concept="3clFbF" id="2QnDi8QvAJU" role="3cqZAp">
                            <node concept="2OqwBi" id="2QnDi8QvAJV" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxgmHNB" role="2Oq$k0">
                                <ref role="3cqZAo" node="2QnDi8QvAJR" resolve="b" />
                              </node>
                              <node concept="liA8E" id="2QnDi8QvAJX" role="2OqNvi">
                                <ref role="37wK5l" to="bfxj:5IRXTJLL4Qe" resolve="buildForProperty" />
                                <node concept="37vLTw" id="59kaQYRgVCC" role="37wK5m">
                                  <ref role="3cqZAo" node="59kaQYRgjKb" resolve="oldNode" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTw9q" role="37wK5m">
                                  <ref role="3cqZAo" node="2QnDi8QvAKr" resolve="node" />
                                </node>
                                <node concept="37vLTw" id="5IRXTJLNNP1" role="37wK5m">
                                  <ref role="3cqZAo" node="5IRXTJLNEBp" resolve="property" />
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
              <node concept="37vLTw" id="3GM_nagTs2C" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8QvAKr" resolve="node" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm7nB" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8Qvcfn" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8Qvcfn" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2QnDi8Qvcfo" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
          </node>
        </node>
        <node concept="3cqZAl" id="2QnDi8QvALv" role="3clF45" />
        <node concept="2AHcQZ" id="4W4PrCD2Cy5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6BB1EWX3mrH" role="jymVt" />
      <node concept="3clFb_" id="2QnDi8Qvcfw" role="jymVt">
        <property role="TrG5h" value="visitReferenceEvent" />
        <node concept="3cqZAl" id="2QnDi8QvANf" role="3clF45" />
        <node concept="3Tm1VV" id="4W4PrCD2LkK" role="1B3o_S" />
        <node concept="3clFbS" id="2QnDi8Qvcfz" role="3clF47">
          <node concept="3cpWs8" id="2QnDi8QvAMk" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAMl" role="3cpWs9">
              <property role="TrG5h" value="ref" />
              <node concept="3uibUv" id="2QnDi8QvAMm" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAMn" role="33vP2m">
                <node concept="37vLTw" id="2BHiRxgheZd" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8Qvcf$" resolve="event" />
                </node>
                <node concept="liA8E" id="2QnDi8QvAMp" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelReferenceEvent.getReference()" resolve="getReference" />
                </node>
              </node>
              <node concept="2AHcQZ" id="59kaQYRlnsO" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvANo" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvANp" role="3cpWs9">
              <property role="TrG5h" value="sourceNode" />
              <node concept="3uibUv" id="2QnDi8QvANq" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvANr" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagT_bx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvAMl" resolve="ref" />
                </node>
                <node concept="liA8E" id="2QnDi8QvANt" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SReference.getSourceNode()" resolve="getSourceNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="59kaQYRmE1R" role="3cqZAp" />
          <node concept="3SKdUt" id="59kaQYRmwkh" role="3cqZAp">
            <node concept="1PaTwC" id="59kaQYRmwki" role="1aUNEU">
              <node concept="3oM_SD" id="59kaQYRmE1z" role="1PaTwD">
                <property role="3oM_SC" value="It" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmE1_" role="1PaTwD">
                <property role="3oM_SC" value="seems" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmE1C" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmE1G" role="1PaTwD">
                <property role="3oM_SC" value="SReference#getSourceNode" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmE1L" role="1PaTwD">
                <property role="3oM_SC" value="can" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXDG" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXDN" role="1PaTwD">
                <property role="3oM_SC" value="return" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXE6" role="1PaTwD">
                <property role="3oM_SC" value="null," />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXEf" role="1PaTwD">
                <property role="3oM_SC" value="but" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXE$" role="1PaTwD">
                <property role="3oM_SC" value="it's" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXF5" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXFh" role="1PaTwD">
                <property role="3oM_SC" value="marked" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXFD" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="59kaQYRmXG2" role="1PaTwD">
                <property role="3oM_SC" value="@NotNull." />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="59kaQYRn3N0" role="3cqZAp">
            <node concept="1PaTwC" id="59kaQYRn3N1" role="1aUNEU">
              <node concept="3oM_SD" id="59kaQYRnenQ" role="1PaTwD">
                <property role="3oM_SC" value="Therefore," />
              </node>
              <node concept="3oM_SD" id="59kaQYRnfhs" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="59kaQYRnfhz" role="1PaTwD">
                <property role="3oM_SC" value="check" />
              </node>
              <node concept="3oM_SD" id="59kaQYRnfhB" role="1PaTwD">
                <property role="3oM_SC" value="here:" />
              </node>
            </node>
          </node>
          <node concept="1gVbGN" id="59kaQYRlN3_" role="3cqZAp">
            <node concept="3y3z36" id="59kaQYRm7Ye" role="1gVkn0">
              <node concept="10Nm6u" id="59kaQYRmefm" role="3uHU7w" />
              <node concept="37vLTw" id="59kaQYRlWdN" role="3uHU7B">
                <ref role="3cqZAo" node="2QnDi8QvANp" resolve="sourceNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="59kaQYRmOB1" role="3cqZAp" />
          <node concept="3clFbJ" id="2QnDi8QvANx" role="3cqZAp">
            <node concept="3clFbC" id="7kqGFYEMasi" role="3clFbw">
              <node concept="10Nm6u" id="7kqGFYEMatK" role="3uHU7w" />
              <node concept="2OqwBi" id="2QnDi8QvANW" role="3uHU7B">
                <node concept="liA8E" id="7kqGFYEM5Fv" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
                <node concept="37vLTw" id="3GM_nagTyLU" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvANp" resolve="sourceNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2QnDi8QvANy" role="3clFbx">
              <node concept="3cpWs6" id="2QnDi8QvAO3" role="3cqZAp" />
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvAMq" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAMr" role="3cpWs9">
              <property role="TrG5h" value="nodeId" />
              <node concept="3uibUv" id="2QnDi8QvAMs" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAMt" role="33vP2m">
                <node concept="liA8E" id="24cAaiUz$fL" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
                <node concept="37vLTw" id="3GM_nagTvNx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvANp" resolve="sourceNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvAMy" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAMz" role="3cpWs9">
              <property role="TrG5h" value="role" />
              <node concept="3uibUv" id="5IRXTJLPZ_P" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAM_" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTAqt" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvAMl" resolve="ref" />
                </node>
                <node concept="liA8E" id="2QnDi8QvAMB" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2QnDi8QvAMg" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz9VS" role="3clFbG">
              <ref role="37wK5l" node="1XuTulVDIKV" resolve="runUpdateTask" />
              <node concept="1bVj0M" id="2QnDi8QvAMi" role="37wK5m">
                <node concept="3clFbS" id="2QnDi8QvAMj" role="1bW5cS">
                  <node concept="3clFbF" id="2QnDi8QvAMD" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyyYri" role="3clFbG">
                      <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                      <node concept="37vLTw" id="3GM_nagTwzh" role="37wK5m">
                        <ref role="3cqZAo" node="2QnDi8QvAMr" resolve="nodeId" />
                      </node>
                      <node concept="3VsKOn" id="2QnDi8QvAMG" role="37wK5m">
                        <ref role="3VsUkX" to="btf5:2nH2HpRnsob" resolve="SetReferenceChange" />
                      </node>
                      <node concept="1bVj0M" id="2QnDi8QvAMH" role="37wK5m">
                        <node concept="37vLTG" id="2QnDi8QvAMI" role="1bW2Oz">
                          <property role="TrG5h" value="ch" />
                          <node concept="3uibUv" id="2QnDi8QvAMJ" role="1tU5fm">
                            <ref role="3uigEE" to="btf5:2nH2HpRnsob" resolve="SetReferenceChange" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2QnDi8QvAMK" role="1bW5cS">
                          <node concept="3clFbF" id="2QnDi8QvAML" role="3cqZAp">
                            <node concept="2OqwBi" id="5IRXTJLQ0QP" role="3clFbG">
                              <node concept="37vLTw" id="5IRXTJLQ0CE" role="2Oq$k0">
                                <ref role="3cqZAo" node="2QnDi8QvAMI" resolve="ch" />
                              </node>
                              <node concept="liA8E" id="5IRXTJLQmqb" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:5IRXTJLQ5Bw" resolve="isAbout" />
                                <node concept="37vLTw" id="5IRXTJLQnrx" role="37wK5m">
                                  <ref role="3cqZAo" node="2QnDi8QvAMz" resolve="role" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="59kaQYRnjxG" role="3cqZAp">
                    <node concept="3cpWsn" id="59kaQYRnjxH" role="3cpWs9">
                      <property role="TrG5h" value="oldNode" />
                      <node concept="3uibUv" id="59kaQYRnjxI" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="1rXfSq" id="59kaQYRnjxJ" role="33vP2m">
                        <ref role="37wK5l" node="35ve9_LJsRM" resolve="getOldNode" />
                        <node concept="37vLTw" id="59kaQYRnjxK" role="37wK5m">
                          <ref role="3cqZAo" node="2QnDi8QvAMr" resolve="nodeId" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="59kaQYRnKYZ" role="3cqZAp">
                    <node concept="3clFbS" id="59kaQYRnKZ1" role="3clFbx">
                      <node concept="3SKdUt" id="59kaQYR$nPz" role="3cqZAp">
                        <node concept="1PaTwC" id="59kaQYR$nP$" role="1aUNEU">
                          <node concept="3oM_SD" id="59kaQYR$nP_" role="1PaTwD">
                            <property role="3oM_SC" value="something" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPA" role="1PaTwD">
                            <property role="3oM_SC" value="unpredictable" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPB" role="1PaTwD">
                            <property role="3oM_SC" value="happened" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="59kaQYR$nPC" role="3cqZAp">
                        <node concept="1PaTwC" id="59kaQYR$nPD" role="1aUNEU">
                          <node concept="3oM_SD" id="59kaQYR$nPE" role="1PaTwD">
                            <property role="3oM_SC" value="we" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPF" role="1PaTwD">
                            <property role="3oM_SC" value="can" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPG" role="1PaTwD">
                            <property role="3oM_SC" value="not" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPH" role="1PaTwD">
                            <property role="3oM_SC" value="compare" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPI" role="1PaTwD">
                            <property role="3oM_SC" value="references" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPJ" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPK" role="1PaTwD">
                            <property role="3oM_SC" value="non-existing" />
                          </node>
                          <node concept="3oM_SD" id="59kaQYR$nPL" role="1PaTwD">
                            <property role="3oM_SC" value="node." />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="1L_JyzkWGmh" role="3cqZAp">
                        <node concept="3cpWsn" id="1L_JyzkWGmk" role="3cpWs9">
                          <property role="TrG5h" value="warning" />
                          <node concept="17QB3L" id="1L_JyzkWGmf" role="1tU5fm" />
                          <node concept="3cpWs3" id="1L_JyzkZfEJ" role="33vP2m">
                            <node concept="Xl_RD" id="1L_JyzkZra5" role="3uHU7B">
                              <property role="Xl_RC" value="Reference change event cannot be processed for the deleted node: " />
                            </node>
                            <node concept="2OqwBi" id="1L_JyzkXYnB" role="3uHU7w">
                              <node concept="37vLTw" id="1L_JyzkXN2_" role="2Oq$k0">
                                <ref role="3cqZAo" node="2QnDi8QvANp" resolve="sourceNode" />
                              </node>
                              <node concept="liA8E" id="1L_JyzkY8hc" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getPresentation()" resolve="getPresentation" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="RRSsy" id="1L_JyzkWnEl" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fksE/warn" />
                        <node concept="37vLTw" id="1L_JyzkXBog" role="RRSoy">
                          <ref role="3cqZAo" node="1L_JyzkWGmk" resolve="warning" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="59kaQYRzMdJ" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="59kaQYRztcH" role="3clFbw">
                      <node concept="37vLTw" id="59kaQYRnSHQ" role="3uHU7B">
                        <ref role="3cqZAo" node="59kaQYRnjxH" resolve="oldNode" />
                      </node>
                      <node concept="10Nm6u" id="59kaQYRo8SB" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="2QnDi8QvAMS" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyyZSS" role="3clFbG">
                      <ref role="37wK5l" node="35ve9_LJsQC" resolve="buildAndAddChanges" />
                      <node concept="1bVj0M" id="2QnDi8QvAMU" role="37wK5m">
                        <node concept="37vLTG" id="2QnDi8QvAMV" role="1bW2Oz">
                          <property role="TrG5h" value="b" />
                          <node concept="3uibUv" id="2QnDi8QvAMW" role="1tU5fm">
                            <ref role="3uigEE" to="bfxj:735o_gl1UsO" resolve="BasicNodeChangesBuilder" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2QnDi8QvAMX" role="1bW5cS">
                          <node concept="3clFbF" id="2QnDi8QvAMY" role="3cqZAp">
                            <node concept="2OqwBi" id="2QnDi8QvAMZ" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxglB50" role="2Oq$k0">
                                <ref role="3cqZAo" node="2QnDi8QvAMV" resolve="b" />
                              </node>
                              <node concept="liA8E" id="2QnDi8QvAN1" role="2OqNvi">
                                <ref role="37wK5l" to="bfxj:1XuTulVDMjT" resolve="buildForReference" />
                                <node concept="37vLTw" id="59kaQYRoJwo" role="37wK5m">
                                  <ref role="3cqZAo" node="59kaQYRnjxH" resolve="oldNode" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTuZK" role="37wK5m">
                                  <ref role="3cqZAo" node="2QnDi8QvANp" resolve="sourceNode" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTvYx" role="37wK5m">
                                  <ref role="3cqZAo" node="2QnDi8QvAMz" resolve="role" />
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
              <node concept="2OqwBi" id="2QnDi8QvAN8" role="37wK5m">
                <node concept="2OqwBi" id="2QnDi8QvAN9" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgm9o7" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QnDi8Qvcf$" resolve="event" />
                  </node>
                  <node concept="liA8E" id="2QnDi8QvANb" role="2OqNvi">
                    <ref role="37wK5l" to="j9co:~SModelReferenceEvent.getReference()" resolve="getReference" />
                  </node>
                </node>
                <node concept="liA8E" id="2QnDi8QvANc" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SReference.getSourceNode()" resolve="getSourceNode" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgm8GN" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8Qvcf$" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8Qvcf$" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2QnDi8Qvcg4" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelReferenceEvent" resolve="SModelReferenceEvent" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4W4PrCD2NXZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6BB1EWX3mrI" role="jymVt" />
      <node concept="3clFb_" id="2QnDi8QvcfA" role="jymVt">
        <property role="TrG5h" value="visitChildEvent" />
        <node concept="3cqZAl" id="2QnDi8QvcfB" role="3clF45" />
        <node concept="3Tm1VV" id="4W4PrCD3HzS" role="1B3o_S" />
        <node concept="3clFbS" id="2QnDi8QvcfD" role="3clF47">
          <node concept="3cpWs8" id="2QnDi8QvAPW" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAPX" role="3cpWs9">
              <property role="TrG5h" value="parent" />
              <node concept="3uibUv" id="2QnDi8QvAPY" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAPZ" role="33vP2m">
                <node concept="37vLTw" id="2BHiRxghiro" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvcfE" resolve="event" />
                </node>
                <node concept="liA8E" id="2QnDi8QvAQ1" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelChildEvent.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2QnDi8QvAQw" role="3cqZAp">
            <node concept="3clFbC" id="5SEmkcFrjim" role="3clFbw">
              <node concept="10Nm6u" id="5SEmkcFrj$v" role="3uHU7w" />
              <node concept="2OqwBi" id="5SEmkcFriET" role="3uHU7B">
                <node concept="liA8E" id="5SEmkcFriZL" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
                <node concept="37vLTw" id="3GM_nagTxBb" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvAPX" resolve="parent" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2QnDi8QvAQx" role="3clFbx">
              <node concept="3cpWs6" id="2QnDi8QvARp" role="3cqZAp" />
            </node>
          </node>
          <node concept="3cpWs8" id="1CKixUkiemT" role="3cqZAp">
            <node concept="3cpWsn" id="1CKixUkiemU" role="3cpWs9">
              <property role="TrG5h" value="child" />
              <node concept="3Tqbb2" id="1CKixUkii5L" role="1tU5fm" />
              <node concept="2OqwBi" id="1CKixUkiemV" role="33vP2m">
                <node concept="37vLTw" id="1CKixUkiemW" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvcfE" resolve="event" />
                </node>
                <node concept="liA8E" id="1CKixUkiemX" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelChildEvent.getChild()" resolve="getChild" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvAQe" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAQf" role="3cpWs9">
              <property role="TrG5h" value="childRole" />
              <node concept="3K4zz7" id="1CKixUkin6e" role="33vP2m">
                <node concept="2OqwBi" id="1CKixUkisrt" role="3K4E3e">
                  <node concept="1PxgMI" id="1CKixUkirf4" role="2Oq$k0">
                    <node concept="chp4Y" id="1CKixUkirQN" role="3oSUPX">
                      <ref role="cht4Q" to="tpck:BpxLfMhSxq" resolve="ChildAttribute" />
                    </node>
                    <node concept="37vLTw" id="1CKixUkinSK" role="1m5AlR">
                      <ref role="3cqZAo" node="1CKixUkiemU" resolve="child" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfk1" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:BpxLfMirzf" resolve="getLink" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1CKixUki$fJ" role="3K4GZi">
                  <node concept="37vLTw" id="1CKixUkizkU" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QnDi8QvcfE" resolve="event" />
                  </node>
                  <node concept="liA8E" id="1CKixUki_N_" role="2OqNvi">
                    <ref role="37wK5l" to="j9co:~SModelChildEvent.getAggregationLink()" resolve="getAggregationLink" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1CKixUkig7P" role="3K4Cdx">
                  <node concept="37vLTw" id="1CKixUkiemY" role="2Oq$k0">
                    <ref role="3cqZAo" node="1CKixUkiemU" resolve="child" />
                  </node>
                  <node concept="1mIQ4w" id="1CKixUkil1Q" role="2OqNvi">
                    <node concept="chp4Y" id="1CKixUkiluS" role="cj9EA">
                      <ref role="cht4Q" to="tpck:BpxLfMhSxq" resolve="ChildAttribute" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="33pw6PrB$Qw" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2QnDi8QvAVN" role="3cqZAp" />
          <node concept="3SKdUt" id="2QnDi8QvAVR" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXom7h" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXom7i" role="1PaTwD">
                <property role="3oM_SC" value="trying" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7j" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7k" role="1PaTwD">
                <property role="3oM_SC" value="avoid" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7l" role="1PaTwD">
                <property role="3oM_SC" value="update" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7m" role="1PaTwD">
                <property role="3oM_SC" value="task" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7n" role="1PaTwD">
                <property role="3oM_SC" value="execution" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7o" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7p" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7q" role="1PaTwD">
                <property role="3oM_SC" value="same" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7r" role="1PaTwD">
                <property role="3oM_SC" value="child" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7s" role="1PaTwD">
                <property role="3oM_SC" value="role" />
              </node>
              <node concept="3oM_SD" id="ATZLwXom7t" role="1PaTwD">
                <property role="3oM_SC" value="twice" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvASK" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvASL" role="3cpWs9">
              <property role="TrG5h" value="changedChildRoles" />
              <node concept="2hMVRd" id="2QnDi8QvASM" role="1tU5fm">
                <node concept="3uibUv" id="33pw6PrB$$2" role="2hN53Y">
                  <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                </node>
              </node>
              <node concept="3EllGN" id="2QnDi8QvASO" role="33vP2m">
                <node concept="37vLTw" id="3GM_nagTtBD" role="3ElVtu">
                  <ref role="3cqZAo" node="2QnDi8QvAPX" resolve="parent" />
                </node>
                <node concept="37vLTw" id="2BHiRxghfBH" role="3ElQJh">
                  <ref role="3cqZAo" node="4W4PrCD3vBo" resolve="childChanged" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2QnDi8QvASV" role="3cqZAp">
            <node concept="3clFbS" id="2QnDi8QvASW" role="3clFbx">
              <node concept="3clFbF" id="2QnDi8QvATr" role="3cqZAp">
                <node concept="37vLTI" id="2QnDi8QvATN" role="3clFbG">
                  <node concept="2ShNRf" id="2QnDi8QvATQ" role="37vLTx">
                    <node concept="2i4dXS" id="2QnDi8QvATR" role="2ShVmc">
                      <node concept="3uibUv" id="33pw6PrBCTL" role="HW$YZ">
                        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTBdq" role="37vLTJ">
                    <ref role="3cqZAo" node="2QnDi8QvASL" resolve="changedChildRoles" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2QnDi8QvATV" role="3cqZAp">
                <node concept="37vLTI" id="2QnDi8QvAU$" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTBWg" role="37vLTx">
                    <ref role="3cqZAo" node="2QnDi8QvASL" resolve="changedChildRoles" />
                  </node>
                  <node concept="3EllGN" id="2QnDi8QvAUl" role="37vLTJ">
                    <node concept="37vLTw" id="2BHiRxgmFqr" role="3ElQJh">
                      <ref role="3cqZAo" node="4W4PrCD3vBo" resolve="childChanged" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTvPp" role="3ElVtu">
                      <ref role="3cqZAo" node="2QnDi8QvAPX" resolve="parent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="2QnDi8QvATn" role="3clFbw">
              <node concept="10Nm6u" id="2QnDi8QvATq" role="3uHU7w" />
              <node concept="37vLTw" id="3GM_nagTBR5" role="3uHU7B">
                <ref role="3cqZAo" node="2QnDi8QvASL" resolve="changedChildRoles" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2QnDi8QvAUE" role="3cqZAp">
            <node concept="3clFbS" id="2QnDi8QvAUF" role="3clFbx">
              <node concept="3cpWs6" id="2QnDi8QvAVf" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="2QnDi8QvAV6" role="3clFbw">
              <node concept="37vLTw" id="3GM_nagTxGN" role="2Oq$k0">
                <ref role="3cqZAo" node="2QnDi8QvASL" resolve="changedChildRoles" />
              </node>
              <node concept="3JPx81" id="2QnDi8QvAVc" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTym3" role="25WWJ7">
                  <ref role="3cqZAo" node="2QnDi8QvAQf" resolve="childRole" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="2QnDi8QvAVg" role="9aQIa">
              <node concept="3clFbS" id="2QnDi8QvAVh" role="9aQI4">
                <node concept="3clFbF" id="2QnDi8QvAVi" role="3cqZAp">
                  <node concept="2OqwBi" id="2QnDi8QvAVE" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTwD9" role="2Oq$k0">
                      <ref role="3cqZAo" node="2QnDi8QvASL" resolve="changedChildRoles" />
                    </node>
                    <node concept="TSZUe" id="2QnDi8QvAVK" role="2OqNvi">
                      <node concept="37vLTw" id="3GM_nagTsSg" role="25WWJ7">
                        <ref role="3cqZAo" node="2QnDi8QvAQf" resolve="childRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvAOJ" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAOK" role="3cpWs9">
              <property role="TrG5h" value="parentId" />
              <node concept="3uibUv" id="2QnDi8QvAOL" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAOM" role="33vP2m">
                <node concept="liA8E" id="24cAaiUz$g9" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
                <node concept="37vLTw" id="3GM_nagTB$k" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvAPX" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2QnDi8QvARE" role="3cqZAp" />
          <node concept="3SKdUt" id="2_s9gYoK8WY" role="3cqZAp">
            <node concept="1PaTwC" id="2_s9gYoK8WZ" role="1aUNEU">
              <node concept="3oM_SD" id="2_s9gYoKgUE" role="1PaTwD">
                <property role="3oM_SC" value="XXX" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKgUG" role="1PaTwD">
                <property role="3oM_SC" value="there" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKi2C" role="1PaTwD">
                <property role="3oM_SC" value="could" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKi2G" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjxs" role="1PaTwD">
                <property role="3oM_SC" value="more" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjxy" role="1PaTwD">
                <property role="3oM_SC" value="than" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjxD" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjyj" role="1PaTwD">
                <property role="3oM_SC" value="child" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjyv" role="1PaTwD">
                <property role="3oM_SC" value="event" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjyG" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjyR" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjz3" role="1PaTwD">
                <property role="3oM_SC" value="command," />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjzj" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjz$" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjzQ" role="1PaTwD">
                <property role="3oM_SC" value="state" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKj$6" role="1PaTwD">
                <property role="3oM_SC" value="here" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKj$q" role="1PaTwD">
                <property role="3oM_SC" value="doesn't" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKj$G" role="1PaTwD">
                <property role="3oM_SC" value="reflect" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKj_5" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKj_s" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKj_L" role="1PaTwD">
                <property role="3oM_SC" value="after" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjA7" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjAu" role="1PaTwD">
                <property role="3oM_SC" value="particular" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKjAT" role="1PaTwD">
                <property role="3oM_SC" value="SModelChildEvent," />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2_s9gYoKwwy" role="3cqZAp">
            <node concept="1PaTwC" id="2_s9gYoKwwz" role="1aUNEU">
              <node concept="3oM_SD" id="2_s9gYoKw$U" role="1PaTwD">
                <property role="3oM_SC" value=" " />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKw$W" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKEBq" role="1PaTwD">
                <property role="3oM_SC" value="rather" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKG9V" role="1PaTwD">
                <property role="3oM_SC" value="state" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGaj" role="1PaTwD">
                <property role="3oM_SC" value="after" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGaZ" role="1PaTwD">
                <property role="3oM_SC" value="complete" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGb6" role="1PaTwD">
                <property role="3oM_SC" value="command." />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGbx" role="1PaTwD">
                <property role="3oM_SC" value="Perhaps," />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGbE" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGc7" role="1PaTwD">
                <property role="3oM_SC" value="way" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGci" role="1PaTwD">
                <property role="3oM_SC" value="individual" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGd4" role="1PaTwD">
                <property role="3oM_SC" value="events" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGd$" role="1PaTwD">
                <property role="3oM_SC" value="get" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGe5" role="1PaTwD">
                <property role="3oM_SC" value="handled" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGeU" role="1PaTwD">
                <property role="3oM_SC" value="needs" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGft" role="1PaTwD">
                <property role="3oM_SC" value="an" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGg1" role="1PaTwD">
                <property role="3oM_SC" value="update." />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGgj" role="1PaTwD">
                <property role="3oM_SC" value="Either" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGi8" role="1PaTwD">
                <property role="3oM_SC" value="record" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGis" role="1PaTwD">
                <property role="3oM_SC" value="individual" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGjk" role="1PaTwD">
                <property role="3oM_SC" value="change" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGjE" role="1PaTwD">
                <property role="3oM_SC" value="here" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKGkk" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2_s9gYoKO58" role="3cqZAp">
            <node concept="1PaTwC" id="2_s9gYoKO59" role="1aUNEU">
              <node concept="3oM_SD" id="2_s9gYoKO9T" role="1PaTwD">
                <property role="3oM_SC" value=" " />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKO9V" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoKO9Y" role="1PaTwD">
                <property role="3oM_SC" value="(i.e." />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1Ex" role="1PaTwD">
                <property role="3oM_SC" value="do" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1ET" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1EZ" role="1PaTwD">
                <property role="3oM_SC" value="clear" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1Fp" role="1PaTwD">
                <property role="3oM_SC" value="changes" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1G7" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1Gg" role="1PaTwD">
                <property role="3oM_SC" value="whole" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1H0" role="1PaTwD">
                <property role="3oM_SC" value="role)" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1HL" role="1PaTwD">
                <property role="3oM_SC" value="or" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1HX" role="1PaTwD">
                <property role="3oM_SC" value="process" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1It" role="1PaTwD">
                <property role="3oM_SC" value="all" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1IF" role="1PaTwD">
                <property role="3oM_SC" value="command" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1P_" role="1PaTwD">
                <property role="3oM_SC" value="events" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1Qg" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1K0" role="1PaTwD">
                <property role="3oM_SC" value="figure" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1KA" role="1PaTwD">
                <property role="3oM_SC" value="out" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1KU" role="1PaTwD">
                <property role="3oM_SC" value="affected" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1Lf" role="1PaTwD">
                <property role="3oM_SC" value="roles" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1L_" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1LW" role="1PaTwD">
                <property role="3oM_SC" value="then" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1MB" role="1PaTwD">
                <property role="3oM_SC" value="runUpdateTask" />
              </node>
              <node concept="3oM_SD" id="2_s9gYoL1Ov" role="1PaTwD">
                <property role="3oM_SC" value="once." />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="jXG_1kfbBx" role="3cqZAp">
            <node concept="3cpWsn" id="jXG_1kfbBy" role="3cpWs9">
              <property role="TrG5h" value="childrenRightAfterEvent" />
              <node concept="2OqwBi" id="2_s9gYoJft_" role="33vP2m">
                <node concept="2OqwBi" id="2_s9gYoIjxe" role="2Oq$k0">
                  <node concept="2OqwBi" id="jXG_1kfbBz" role="2Oq$k0">
                    <node concept="1eOMI4" id="jXG_1kfbB$" role="2Oq$k0">
                      <node concept="10QFUN" id="jXG_1kfbB_" role="1eOMHV">
                        <node concept="37vLTw" id="jXG_1kfbBA" role="10QFUP">
                          <ref role="3cqZAo" node="2QnDi8QvAPX" resolve="parent" />
                        </node>
                        <node concept="3Tqbb2" id="jXG_1kfbBB" role="10QFUM" />
                      </node>
                    </node>
                    <node concept="Bykcj" id="jXG_1kfbBC" role="2OqNvi">
                      <node concept="1aIX9F" id="jXG_1kfbBD" role="1xVPHs">
                        <node concept="25Kdxt" id="jXG_1kfbBE" role="1aIX9E">
                          <node concept="37vLTw" id="jXG_1kfbBF" role="25KhWn">
                            <ref role="3cqZAo" node="2QnDi8QvAQf" resolve="childRole" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="2_s9gYoIskw" role="2OqNvi">
                    <node concept="1bVj0M" id="2_s9gYoIsky" role="23t8la">
                      <node concept="3clFbS" id="2_s9gYoIskz" role="1bW5cS">
                        <node concept="3clFbF" id="2_s9gYoIBph" role="3cqZAp">
                          <node concept="2OqwBi" id="2_s9gYoIUsD" role="3clFbG">
                            <node concept="2JrnkZ" id="2_s9gYoINFD" role="2Oq$k0">
                              <node concept="37vLTw" id="2_s9gYoIBpg" role="2JrQYb">
                                <ref role="3cqZAo" node="7XBu3oV1ugd" resolve="it" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2_s9gYoJ4qJ" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="7XBu3oV1ugd" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7XBu3oV1uge" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="2_s9gYoJrKD" role="2OqNvi" />
              </node>
              <node concept="_YKpA" id="2_s9gYoJ$BQ" role="1tU5fm">
                <node concept="3uibUv" id="2_s9gYoJ$BR" role="_ZDj9">
                  <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2QnDi8QvAOF" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyNkb" role="3clFbG">
              <ref role="37wK5l" node="1XuTulVDIKV" resolve="runUpdateTask" />
              <node concept="1bVj0M" id="2QnDi8QvAOH" role="37wK5m">
                <node concept="3clFbS" id="2QnDi8QvAOI" role="1bW5cS">
                  <node concept="3clFbF" id="2QnDi8QvAOY" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyAR3V" role="3clFbG">
                      <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                      <node concept="37vLTw" id="3GM_nagTwP8" role="37wK5m">
                        <ref role="3cqZAo" node="2QnDi8QvAOK" resolve="parentId" />
                      </node>
                      <node concept="3VsKOn" id="2QnDi8QvAP1" role="37wK5m">
                        <ref role="3VsUkX" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                      </node>
                      <node concept="1bVj0M" id="2QnDi8QvAP2" role="37wK5m">
                        <node concept="37vLTG" id="2QnDi8QvAP3" role="1bW2Oz">
                          <property role="TrG5h" value="ch" />
                          <node concept="3uibUv" id="2QnDi8QvAP4" role="1tU5fm">
                            <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2QnDi8QvAP5" role="1bW5cS">
                          <node concept="3clFbF" id="2QnDi8QvAP6" role="3cqZAp">
                            <node concept="2OqwBi" id="58$PzbkcDCG" role="3clFbG">
                              <node concept="37vLTw" id="58$PzbkcCTt" role="2Oq$k0">
                                <ref role="3cqZAo" node="2QnDi8QvAP3" resolve="ch" />
                              </node>
                              <node concept="liA8E" id="58$PzbkcF5t" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:58$PzbkbSxg" resolve="isAbout" />
                                <node concept="37vLTw" id="58$PzbkcH4P" role="37wK5m">
                                  <ref role="3cqZAo" node="2QnDi8QvAQf" resolve="childRole" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4J1n7Jwc1hL" role="3cqZAp">
                    <node concept="1rXfSq" id="4J1n7Jwc1hJ" role="3clFbG">
                      <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                      <node concept="37vLTw" id="4J1n7Jwc33d" role="37wK5m">
                        <ref role="3cqZAo" node="2QnDi8QvAOK" resolve="parentId" />
                      </node>
                      <node concept="3VsKOn" id="4J1n7Jwc5lR" role="37wK5m">
                        <ref role="3VsUkX" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                      </node>
                      <node concept="1bVj0M" id="4J1n7Jwcaoi" role="37wK5m">
                        <node concept="3clFbS" id="4J1n7Jwcaok" role="1bW5cS">
                          <node concept="3clFbF" id="4J1n7Jwccuj" role="3cqZAp">
                            <node concept="2OqwBi" id="4J1n7JwccX2" role="3clFbG">
                              <node concept="37vLTw" id="4J1n7Jwccui" role="2Oq$k0">
                                <ref role="3cqZAo" node="4J1n7Jwcb4C" resolve="ch" />
                              </node>
                              <node concept="liA8E" id="4J1n7JwcdmT" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:2prfDaQ83yI" resolve="isAbout" />
                                <node concept="37vLTw" id="4J1n7JwceIL" role="37wK5m">
                                  <ref role="3cqZAo" node="2QnDi8QvAQf" resolve="childRole" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="4J1n7Jwcb4C" role="1bW2Oz">
                          <property role="TrG5h" value="ch" />
                          <node concept="3uibUv" id="4J1n7Jwcb_m" role="1tU5fm">
                            <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2QnDi8QvAPd" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyAR0l" role="3clFbG">
                      <ref role="37wK5l" node="53LGeYtZbBx" resolve="removeDescendantChanges" />
                      <node concept="37vLTw" id="3GM_nagTybv" role="37wK5m">
                        <ref role="3cqZAo" node="2QnDi8QvAOK" resolve="parentId" />
                      </node>
                      <node concept="37vLTw" id="2yGnTitAwcy" role="37wK5m">
                        <ref role="3cqZAo" node="2QnDi8QvAQf" resolve="childRole" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2QnDi8QvAPh" role="3cqZAp">
                    <node concept="37vLTI" id="2QnDi8QvAPi" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxeungV" role="37vLTJ">
                        <ref role="3cqZAo" node="zRWNVrvAk4" resolve="myLastParentAndNewChildrenIds" />
                      </node>
                      <node concept="1Ls8ON" id="2QnDi8QvAPk" role="37vLTx">
                        <node concept="37vLTw" id="3GM_nagTyN0" role="1Lso8e">
                          <ref role="3cqZAo" node="2QnDi8QvAOK" resolve="parentId" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTsxw" role="1Lso8e">
                          <ref role="3cqZAo" node="jXG_1kfbBy" resolve="childrenRightAfterEvent" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2QnDi8QvAPz" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyAR0r" role="3clFbG">
                      <ref role="37wK5l" node="35ve9_LJsQC" resolve="buildAndAddChanges" />
                      <node concept="1bVj0M" id="2QnDi8QvAP_" role="37wK5m">
                        <node concept="37vLTG" id="2QnDi8QvAPA" role="1bW2Oz">
                          <property role="TrG5h" value="b" />
                          <node concept="3uibUv" id="2QnDi8QvAPB" role="1tU5fm">
                            <ref role="3uigEE" to="bfxj:735o_gl1UsO" resolve="BasicNodeChangesBuilder" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2QnDi8QvAPC" role="1bW5cS">
                          <node concept="3cpWs8" id="6BB1EWX4$9r" role="3cqZAp">
                            <node concept="3cpWsn" id="6BB1EWX4$9s" role="3cpWs9">
                              <property role="TrG5h" value="oldParentNode" />
                              <node concept="3Tqbb2" id="23A7tqjJPl7" role="1tU5fm" />
                              <node concept="1rXfSq" id="6BB1EWX4$9t" role="33vP2m">
                                <ref role="37wK5l" node="35ve9_LJsRM" resolve="getOldNode" />
                                <node concept="37vLTw" id="6BB1EWX4$9u" role="37wK5m">
                                  <ref role="3cqZAo" node="2QnDi8QvAOK" resolve="parentId" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="6BB1EWX4$IE" role="3cqZAp">
                            <node concept="3clFbS" id="6BB1EWX4$IG" role="3clFbx">
                              <node concept="3cpWs8" id="2_s9gYoHe5k" role="3cqZAp">
                                <node concept="3cpWsn" id="2_s9gYoHe5l" role="3cpWs9">
                                  <property role="TrG5h" value="oldChildrenIds" />
                                  <node concept="_YKpA" id="2_s9gYoH87Q" role="1tU5fm">
                                    <node concept="3uibUv" id="2_s9gYoH87T" role="_ZDj9">
                                      <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="2_s9gYoHe5m" role="33vP2m">
                                    <node concept="2OqwBi" id="2_s9gYoHe5n" role="2Oq$k0">
                                      <node concept="2OqwBi" id="2_s9gYoHe5o" role="2Oq$k0">
                                        <node concept="37vLTw" id="2_s9gYoHe5p" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6BB1EWX4$9s" resolve="oldParentNode" />
                                        </node>
                                        <node concept="Bykcj" id="2_s9gYoHe5q" role="2OqNvi">
                                          <node concept="1aIX9F" id="2_s9gYoHe5r" role="1xVPHs">
                                            <node concept="25Kdxt" id="2_s9gYoHe5s" role="1aIX9E">
                                              <node concept="37vLTw" id="2_s9gYoHe5t" role="25KhWn">
                                                <ref role="3cqZAo" node="2QnDi8QvAQf" resolve="childRole" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3$u5V9" id="2_s9gYoHe5u" role="2OqNvi">
                                        <node concept="1bVj0M" id="2_s9gYoHe5v" role="23t8la">
                                          <node concept="3clFbS" id="2_s9gYoHe5w" role="1bW5cS">
                                            <node concept="3clFbF" id="2_s9gYoHe5x" role="3cqZAp">
                                              <node concept="2OqwBi" id="2_s9gYoHe5y" role="3clFbG">
                                                <node concept="2JrnkZ" id="2_s9gYoHe5z" role="2Oq$k0">
                                                  <node concept="37vLTw" id="2_s9gYoHe5$" role="2JrQYb">
                                                    <ref role="3cqZAo" node="7XBu3oV1ugf" resolve="it" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="2_s9gYoHe5_" role="2OqNvi">
                                                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="7XBu3oV1ugf" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="7XBu3oV1ugg" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="ANE8D" id="2_s9gYoHe5C" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2QnDi8QvAPD" role="3cqZAp">
                                <node concept="2OqwBi" id="2QnDi8QvAPE" role="3clFbG">
                                  <node concept="37vLTw" id="2BHiRxgmpMR" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QnDi8QvAPA" resolve="b" />
                                  </node>
                                  <node concept="liA8E" id="2QnDi8QvAPG" role="2OqNvi">
                                    <ref role="37wK5l" to="bfxj:735o_glLVG7" resolve="buildForNodeRole" />
                                    <node concept="37vLTw" id="58$PzbkcMUG" role="37wK5m">
                                      <ref role="3cqZAo" node="2QnDi8QvAQf" resolve="childRole" />
                                    </node>
                                    <node concept="37vLTw" id="2_s9gYoHN6Z" role="37wK5m">
                                      <ref role="3cqZAo" node="2_s9gYoHe5l" resolve="oldChildrenIds" />
                                    </node>
                                    <node concept="37vLTw" id="2_s9gYoI6Jx" role="37wK5m">
                                      <ref role="3cqZAo" node="jXG_1kfbBy" resolve="childrenRightAfterEvent" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTwt_" role="37wK5m">
                                      <ref role="3cqZAo" node="2QnDi8QvAOK" resolve="parentId" />
                                    </node>
                                    <node concept="37vLTw" id="2RpBf9gzhvz" role="37wK5m">
                                      <ref role="3cqZAo" node="2QnDi8QvAOK" resolve="parentId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="5qdFoSj_3sE" role="3clFbw">
                              <node concept="2OqwBi" id="5qdFoSj_nNB" role="3uHU7w">
                                <node concept="37vLTw" id="5qdFoSj_gia" role="2Oq$k0">
                                  <ref role="3cqZAo" node="jXG_1kfbBy" resolve="childrenRightAfterEvent" />
                                </node>
                                <node concept="2HxqBE" id="5qdFoSj__FK" role="2OqNvi">
                                  <node concept="1bVj0M" id="5qdFoSj__FM" role="23t8la">
                                    <node concept="3clFbS" id="5qdFoSj__FN" role="1bW5cS">
                                      <node concept="3clFbF" id="5qdFoSj_Kn5" role="3cqZAp">
                                        <node concept="3y3z36" id="5qdFoSjCghj" role="3clFbG">
                                          <node concept="10Nm6u" id="5qdFoSjCnz6" role="3uHU7w" />
                                          <node concept="2EnYce" id="5qdFoSjIfF2" role="3uHU7B">
                                            <node concept="2JrnkZ" id="5qdFoSjAWed" role="2Oq$k0">
                                              <node concept="2EnYce" id="5qdFoSjIe0H" role="2JrQYb">
                                                <node concept="2OqwBi" id="5qdFoSj_Rx6" role="2Oq$k0">
                                                  <node concept="37vLTw" id="5qdFoSj_Kn4" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                                                  </node>
                                                  <node concept="liA8E" id="5qdFoSjA3Bb" role="2OqNvi">
                                                    <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="5qdFoSjAr4h" role="2OqNvi">
                                                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="5qdFoSjB8Tg" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                                              <node concept="37vLTw" id="5qdFoSjBjXR" role="37wK5m">
                                                <ref role="3cqZAo" node="7XBu3oV1ugh" resolve="it" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="gl6BB" id="7XBu3oV1ugh" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="7XBu3oV1ugi" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3y3z36" id="6BB1EWX4Gfh" role="3uHU7B">
                                <node concept="37vLTw" id="6BB1EWX4$N7" role="3uHU7B">
                                  <ref role="3cqZAo" node="6BB1EWX4$9s" resolve="oldParentNode" />
                                </node>
                                <node concept="10Nm6u" id="6BB1EWX4FG1" role="3uHU7w" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTBp4" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8QvAPX" resolve="parent" />
              </node>
              <node concept="37vLTw" id="2BHiRxghffn" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8QvcfE" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8QvcfE" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2QnDi8Qvcg5" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4W4PrCD3Pkc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6BB1EWX3mrJ" role="jymVt" />
      <node concept="3clFb_" id="2QnDi8QvcfG" role="jymVt">
        <property role="TrG5h" value="visitRootEvent" />
        <node concept="3cqZAl" id="2QnDi8QvcfH" role="3clF45" />
        <node concept="3Tm1VV" id="4W4PrCD2U23" role="1B3o_S" />
        <node concept="3clFbS" id="2QnDi8QvcfJ" role="3clF47">
          <node concept="3cpWs8" id="2QnDi8QvAXr" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAXs" role="3cpWs9">
              <property role="TrG5h" value="root" />
              <node concept="3uibUv" id="2QnDi8QvAXt" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAXu" role="33vP2m">
                <node concept="37vLTw" id="2BHiRxglCvY" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvcfK" resolve="event" />
                </node>
                <node concept="liA8E" id="2QnDi8QvAXw" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelRootEvent.getRoot()" resolve="getRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvAZz" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAZ$" role="3cpWs9">
              <property role="TrG5h" value="added" />
              <property role="3TUv4t" value="true" />
              <node concept="10P_77" id="2QnDi8QvAZ_" role="1tU5fm" />
              <node concept="2OqwBi" id="2QnDi8QvAZA" role="33vP2m">
                <node concept="37vLTw" id="2BHiRxgm7De" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvcfK" resolve="event" />
                </node>
                <node concept="liA8E" id="2QnDi8QvAZC" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelRootEvent.isAdded()" resolve="isAdded" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2QnDi8QvAZq" role="3cqZAp">
            <node concept="3cpWsn" id="2QnDi8QvAZr" role="3cpWs9">
              <property role="TrG5h" value="rootId" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="2QnDi8QvAZs" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
              </node>
              <node concept="2OqwBi" id="2QnDi8QvAZt" role="33vP2m">
                <node concept="liA8E" id="24cAaiUz$nh" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
                <node concept="37vLTw" id="3GM_nagTzRq" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvAXs" resolve="root" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="62puQn38WhI" role="3cqZAp">
            <node concept="3clFbS" id="62puQn38WhK" role="3clFbx">
              <node concept="3clFbJ" id="62puQn38WM9" role="3cqZAp">
                <node concept="3clFbS" id="62puQn38WMb" role="3clFbx">
                  <node concept="3cpWs6" id="62puQn38X8P" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="62puQn38WYi" role="3clFbw">
                  <node concept="10Nm6u" id="62puQn38X2r" role="3uHU7w" />
                  <node concept="2OqwBi" id="62puQn38WUk" role="3uHU7B">
                    <node concept="37vLTw" id="62puQn38WPT" role="2Oq$k0">
                      <ref role="3cqZAo" node="2QnDi8QvAXs" resolve="root" />
                    </node>
                    <node concept="liA8E" id="62puQn38WWl" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="62puQn38Wzc" role="3clFbw">
              <ref role="3cqZAo" node="2QnDi8QvAZ$" resolve="added" />
            </node>
            <node concept="9aQIb" id="62puQn38XAn" role="9aQIa">
              <node concept="3clFbS" id="62puQn38XAo" role="9aQI4">
                <node concept="3SKdUt" id="62puQn38Yut" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXom7u" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXom7v" role="1PaTwD">
                      <property role="3oM_SC" value="there" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7w" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7x" role="1PaTwD">
                      <property role="3oM_SC" value="two" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7y" role="1PaTwD">
                      <property role="3oM_SC" value="almost" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7z" role="1PaTwD">
                      <property role="3oM_SC" value="identical" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7$" role="1PaTwD">
                      <property role="3oM_SC" value="SModelRootEvent" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7_" role="1PaTwD">
                      <property role="3oM_SC" value="generated:" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7A" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7B" role="1PaTwD">
                      <property role="3oM_SC" value="beforeRootRemoved" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7C" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7D" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7E" role="1PaTwD">
                      <property role="3oM_SC" value="rootRemoved" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="62puQn38YFL" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXom7P" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXom7Q" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7R" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg3k" role="1PaTwD">
                      <property role="3oM_SC" value="skip" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXom7V" role="1PaTwD">
                      <property role="3oM_SC" value="one" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg3z" role="1PaTwD">
                      <property role="3oM_SC" value="if" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg3N" role="1PaTwD">
                      <property role="3oM_SC" value="already" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg44" role="1PaTwD">
                      <property role="3oM_SC" value="seen" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg5A" role="1PaTwD">
                      <property role="3oM_SC" value="delete" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg5J" role="1PaTwD">
                      <property role="3oM_SC" value="root" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg63" role="1PaTwD">
                      <property role="3oM_SC" value="event" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg6o" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg6$" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg6L" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="12Ilyp_Wg6Z" role="1PaTwD">
                      <property role="3oM_SC" value="root" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="62puQn38XPC" role="3cqZAp">
                  <node concept="3clFbS" id="62puQn38XPD" role="3clFbx">
                    <node concept="3cpWs6" id="62puQn38YoC" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="12Ilyp_We5I" role="3clFbw">
                    <node concept="2OqwBi" id="12Ilyp_We5K" role="3fr31v">
                      <node concept="37vLTw" id="12Ilyp_We5L" role="2Oq$k0">
                        <ref role="3cqZAo" node="12Ilyp_UHSg" resolve="rootsDeleted" />
                      </node>
                      <node concept="liA8E" id="12Ilyp_We5M" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                        <node concept="37vLTw" id="12Ilyp_We5N" role="37wK5m">
                          <ref role="3cqZAo" node="2QnDi8QvAZr" resolve="rootId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2QnDi8QvB14" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzhlo" role="3clFbG">
              <ref role="37wK5l" node="1XuTulVDIKV" resolve="runUpdateTask" />
              <node concept="1bVj0M" id="2QnDi8QvB16" role="37wK5m">
                <node concept="3clFbS" id="2QnDi8QvB17" role="1bW5cS">
                  <node concept="3clFbJ" id="2QnDi8QvB1c" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagT$Gw" role="3clFbw">
                      <ref role="3cqZAo" node="2QnDi8QvAZ$" resolve="added" />
                    </node>
                    <node concept="3clFbS" id="2QnDi8QvB1e" role="3clFbx">
                      <node concept="3clFbF" id="2QnDi8QvB1i" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyz8HU" role="3clFbG">
                          <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                          <node concept="37vLTw" id="3GM_nagTrS3" role="37wK5m">
                            <ref role="3cqZAo" node="2QnDi8QvAZr" resolve="rootId" />
                          </node>
                          <node concept="3VsKOn" id="2QnDi8QvB1l" role="37wK5m">
                            <ref role="3VsUkX" to="btf5:5x0q8wkvVi1" resolve="DeleteRootChange" />
                          </node>
                          <node concept="1bVj0M" id="2QnDi8QvB1m" role="37wK5m">
                            <node concept="37vLTG" id="2QnDi8QvB1n" role="1bW2Oz">
                              <property role="TrG5h" value="ch" />
                              <node concept="3uibUv" id="2QnDi8QvB1o" role="1tU5fm">
                                <ref role="3uigEE" to="btf5:5x0q8wkvVi1" resolve="DeleteRootChange" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="2QnDi8QvB1p" role="1bW5cS">
                              <node concept="3clFbF" id="2QnDi8QvB1q" role="3cqZAp">
                                <node concept="3clFbT" id="2QnDi8QvB1r" role="3clFbG">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2QnDi8QvB1s" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyAQZT" role="3clFbG">
                          <ref role="37wK5l" node="35ve9_LJsQC" resolve="buildAndAddChanges" />
                          <node concept="1bVj0M" id="2QnDi8QvB1u" role="37wK5m">
                            <node concept="37vLTG" id="2QnDi8QvB1v" role="1bW2Oz">
                              <property role="TrG5h" value="b" />
                              <node concept="3uibUv" id="2QnDi8QvB1w" role="1tU5fm">
                                <ref role="3uigEE" to="bfxj:735o_gl1UsO" resolve="BasicNodeChangesBuilder" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="2QnDi8QvB1x" role="1bW5cS">
                              <node concept="3clFbF" id="2QnDi8QvB1y" role="3cqZAp">
                                <node concept="2OqwBi" id="2QnDi8QvB1z" role="3clFbG">
                                  <node concept="37vLTw" id="2BHiRxghiEu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QnDi8QvB1v" resolve="b" />
                                  </node>
                                  <node concept="liA8E" id="2QnDi8QvB1_" role="2OqNvi">
                                    <ref role="37wK5l" to="bfxj:25TBtyrya2x" resolve="buildForRoot" />
                                    <node concept="1rXfSq" id="4hiugqyyU9S" role="37wK5m">
                                      <ref role="37wK5l" node="35ve9_LJsRM" resolve="getOldNode" />
                                      <node concept="37vLTw" id="3GM_nagTAx9" role="37wK5m">
                                        <ref role="3cqZAo" node="2QnDi8QvAZr" resolve="rootId" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2QnDi8QvB1C" role="37wK5m">
                                      <node concept="37vLTw" id="2BHiRxgllc4" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2QnDi8QvcfK" resolve="event" />
                                      </node>
                                      <node concept="liA8E" id="2QnDi8QvB1E" role="2OqNvi">
                                        <ref role="37wK5l" to="j9co:~SModelRootEvent.getRoot()" resolve="getRoot" />
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
                    <node concept="9aQIb" id="2QnDi8QvB1g" role="9aQIa">
                      <node concept="3clFbS" id="2QnDi8QvB1h" role="9aQI4">
                        <node concept="3clFbJ" id="2QnDi8QvB1H" role="3cqZAp">
                          <node concept="3clFbS" id="2QnDi8QvB1I" role="3clFbx">
                            <node concept="3SKdUt" id="2QnDi8QvB1J" role="3cqZAp">
                              <node concept="1PaTwC" id="ATZLwXom7W" role="1aUNEU">
                                <node concept="3oM_SD" id="ATZLwXom7X" role="1PaTwD">
                                  <property role="3oM_SC" value="root" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXom7Y" role="1PaTwD">
                                  <property role="3oM_SC" value="was" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXom7Z" role="1PaTwD">
                                  <property role="3oM_SC" value="not" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXom80" role="1PaTwD">
                                  <property role="3oM_SC" value="added" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2QnDi8QvB1L" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyARTg" role="3clFbG">
                                <ref role="37wK5l" node="53LGeYtZbC$" resolve="removeDescendantChanges" />
                                <node concept="37vLTw" id="3GM_nagTAxT" role="37wK5m">
                                  <ref role="3cqZAo" node="2QnDi8QvAZr" resolve="rootId" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2QnDi8QvB1O" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyAR1o" role="3clFbG">
                                <ref role="37wK5l" node="35ve9_LJsQC" resolve="buildAndAddChanges" />
                                <node concept="1bVj0M" id="2QnDi8QvB1Q" role="37wK5m">
                                  <node concept="37vLTG" id="2QnDi8QvB1R" role="1bW2Oz">
                                    <property role="TrG5h" value="b" />
                                    <node concept="3uibUv" id="2QnDi8QvB1S" role="1tU5fm">
                                      <ref role="3uigEE" to="bfxj:735o_gl1UsO" resolve="BasicNodeChangesBuilder" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="2QnDi8QvB1T" role="1bW5cS">
                                    <node concept="3clFbF" id="2QnDi8QvB1U" role="3cqZAp">
                                      <node concept="2OqwBi" id="2QnDi8QvB1V" role="3clFbG">
                                        <node concept="37vLTw" id="2BHiRxgm6bE" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2QnDi8QvB1R" resolve="b" />
                                        </node>
                                        <node concept="liA8E" id="2QnDi8QvB1X" role="2OqNvi">
                                          <ref role="37wK5l" to="bfxj:25TBtyrya2x" resolve="buildForRoot" />
                                          <node concept="1rXfSq" id="4hiugqyzePs" role="37wK5m">
                                            <ref role="37wK5l" node="35ve9_LJsRM" resolve="getOldNode" />
                                            <node concept="37vLTw" id="3GM_nagTAcD" role="37wK5m">
                                              <ref role="3cqZAo" node="2QnDi8QvAZr" resolve="rootId" />
                                            </node>
                                          </node>
                                          <node concept="10Nm6u" id="2QnDi8QvB20" role="37wK5m" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="2QnDi8QvB21" role="3clFbw">
                            <node concept="1rXfSq" id="4hiugqyyZ0f" role="3uHU7B">
                              <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                              <node concept="37vLTw" id="3GM_nagTucx" role="37wK5m">
                                <ref role="3cqZAo" node="2QnDi8QvAZr" resolve="rootId" />
                              </node>
                              <node concept="3VsKOn" id="2QnDi8QvB24" role="37wK5m">
                                <ref role="3VsUkX" to="btf5:5x0q8wkvS3B" resolve="AddRootChange" />
                              </node>
                              <node concept="1bVj0M" id="2QnDi8QvB25" role="37wK5m">
                                <node concept="37vLTG" id="2QnDi8QvB26" role="1bW2Oz">
                                  <property role="TrG5h" value="ch" />
                                  <node concept="3uibUv" id="2QnDi8QvB27" role="1tU5fm">
                                    <ref role="3uigEE" to="btf5:5x0q8wkvS3B" resolve="AddRootChange" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="2QnDi8QvB28" role="1bW5cS">
                                  <node concept="3clFbF" id="2QnDi8QvB29" role="3cqZAp">
                                    <node concept="3clFbT" id="2QnDi8QvB2a" role="3clFbG">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cmrfG" id="2QnDi8QvB2b" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="2QnDi8QvB19" role="37wK5m" />
              <node concept="37vLTw" id="2BHiRxgm6qf" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8QvcfK" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8QvcfK" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2QnDi8Qvcg6" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4W4PrCD2WF_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6BB1EWX3mrK" role="jymVt" />
      <node concept="3clFb_" id="2QnDi8QvcfM" role="jymVt">
        <property role="TrG5h" value="visitLanguageEvent" />
        <node concept="3cqZAl" id="2QnDi8QvcfN" role="3clF45" />
        <node concept="3Tm1VV" id="4W4PrCD32F9" role="1B3o_S" />
        <node concept="3clFbS" id="2QnDi8QvcfP" role="3clF47">
          <node concept="3cpWs8" id="4TP40u00Dz2" role="3cqZAp">
            <node concept="3cpWsn" id="4TP40u00Dz3" role="3cpWs9">
              <property role="TrG5h" value="eventLang" />
              <property role="3TUv4t" value="true" />
              <node concept="2OqwBi" id="5NdtkQ0kCv6" role="33vP2m">
                <node concept="37vLTw" id="5NdtkQ0kCeb" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvcfQ" resolve="event" />
                </node>
                <node concept="liA8E" id="5NdtkQ0kO5j" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelLanguageEvent.getEventLanguage()" resolve="getEventLanguage" />
                </node>
              </node>
              <node concept="3uibUv" id="4TP40u00Dz4" role="1tU5fm">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3C60WuajduI" role="3cqZAp">
            <node concept="3cpWsn" id="3C60WuajduJ" role="3cpWs9">
              <property role="TrG5h" value="model" />
              <node concept="3uibUv" id="3C60Wuajj2j" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
              </node>
              <node concept="0kSF2" id="3C60WuajfcE" role="33vP2m">
                <node concept="3uibUv" id="3C60WuajgF5" role="0kSFW">
                  <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                </node>
                <node concept="2OqwBi" id="3C60WuajduK" role="0kSFX">
                  <node concept="37vLTw" id="3C60WuajduL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QnDi8QvcfQ" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3C60WuajduM" role="2OqNvi">
                    <ref role="37wK5l" to="j9co:~SModelEvent.getModel()" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4TP40u00TwR" role="3cqZAp">
            <node concept="3cpWsn" id="4TP40u00TwP" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="deleted" />
              <node concept="10P_77" id="4TP40u00TEk" role="1tU5fm" />
              <node concept="3fqX7Q" id="4TP40u00UtS" role="33vP2m">
                <node concept="2OqwBi" id="4TP40u00UtU" role="3fr31v">
                  <node concept="37vLTw" id="4TP40u00UtV" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QnDi8QvcfQ" resolve="event" />
                  </node>
                  <node concept="liA8E" id="4TP40u00UtW" role="2OqNvi">
                    <ref role="37wK5l" to="j9co:~SModelLanguageEvent.isAdded()" resolve="isAdded" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4TP40u00zTQ" role="3cqZAp">
            <node concept="1rXfSq" id="4TP40u00zTR" role="3clFbG">
              <ref role="37wK5l" node="1XuTulVDIKV" resolve="runUpdateTask" />
              <node concept="1bVj0M" id="4TP40u00zTS" role="37wK5m">
                <node concept="3clFbS" id="4TP40u00zTT" role="1bW5cS">
                  <node concept="3SKdUt" id="4TP40u00EML" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXom81" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXom82" role="1PaTwD">
                        <property role="3oM_SC" value="XXX" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom83" role="1PaTwD">
                        <property role="3oM_SC" value="I" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom84" role="1PaTwD">
                        <property role="3oM_SC" value="have" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom85" role="1PaTwD">
                        <property role="3oM_SC" value="no" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom86" role="1PaTwD">
                        <property role="3oM_SC" value="idea" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom87" role="1PaTwD">
                        <property role="3oM_SC" value="why" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom88" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom89" role="1PaTwD">
                        <property role="3oM_SC" value="skip" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8a" role="1PaTwD">
                        <property role="3oM_SC" value="adding" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8b" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8c" role="1PaTwD">
                        <property role="3oM_SC" value="change" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8d" role="1PaTwD">
                        <property role="3oM_SC" value="object" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8e" role="1PaTwD">
                        <property role="3oM_SC" value="if" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8f" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8g" role="1PaTwD">
                        <property role="3oM_SC" value="successfully" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8h" role="1PaTwD">
                        <property role="3oM_SC" value="removed" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8i" role="1PaTwD">
                        <property role="3oM_SC" value="one" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8j" role="1PaTwD">
                        <property role="3oM_SC" value="or" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8k" role="1PaTwD">
                        <property role="3oM_SC" value="more" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8l" role="1PaTwD">
                        <property role="3oM_SC" value="queued" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8m" role="1PaTwD">
                        <property role="3oM_SC" value="earlier." />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4TP40u00KZi" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXom8n" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXom8o" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8p" role="1PaTwD">
                        <property role="3oM_SC" value="just" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8q" role="1PaTwD">
                        <property role="3oM_SC" value="kept" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8r" role="1PaTwD">
                        <property role="3oM_SC" value="it" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8s" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8t" role="1PaTwD">
                        <property role="3oM_SC" value="way" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8u" role="1PaTwD">
                        <property role="3oM_SC" value="it" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8v" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8w" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXom8x" role="1PaTwD">
                        <property role="3oM_SC" value="#moduleDependencyEvent" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4TP40u00zTU" role="3cqZAp">
                    <node concept="3clFbS" id="4TP40u00zTV" role="3clFbx">
                      <node concept="3cpWs8" id="3C60Wuaecjw" role="3cqZAp">
                        <node concept="3cpWsn" id="3C60Wuaecjx" role="3cpWs9">
                          <property role="TrG5h" value="version" />
                          <node concept="10Oyi0" id="3C60Wuaecjy" role="1tU5fm" />
                          <node concept="2OqwBi" id="3C60Wuaj9EL" role="33vP2m">
                            <node concept="37vLTw" id="3C60Wuaj8lP" role="2Oq$k0">
                              <ref role="3cqZAo" node="3C60WuajduJ" resolve="model" />
                            </node>
                            <node concept="liA8E" id="3C60WuajaA$" role="2OqNvi">
                              <ref role="37wK5l" to="w1kc:~SModelInternal.getLanguageImportVersion(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguageImportVersion" />
                              <node concept="37vLTw" id="3C60Wuajb46" role="37wK5m">
                                <ref role="3cqZAo" node="4TP40u00Dz3" resolve="eventLang" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4TP40u00zTW" role="3cqZAp">
                        <node concept="1rXfSq" id="4TP40u00zTX" role="3clFbG">
                          <ref role="37wK5l" node="5pmMiWv$OQ7" resolve="addChange" />
                          <node concept="2ShNRf" id="4TP40u00zTY" role="37wK5m">
                            <node concept="1pGfFk" id="4TP40u00zTZ" role="2ShVmc">
                              <ref role="37wK5l" to="btf5:4TP40tZZlb4" resolve="UsedLanguageChange" />
                              <node concept="2OqwBi" id="4TP40u00zU0" role="37wK5m">
                                <node concept="37vLTw" id="4TP40u00zU1" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                                </node>
                                <node concept="liA8E" id="4TP40u00zU2" role="2OqNvi">
                                  <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="4TP40u00Vhz" role="37wK5m">
                                <ref role="3cqZAo" node="4TP40u00Dz3" resolve="eventLang" />
                              </node>
                              <node concept="37vLTw" id="3C60WuairYG" role="37wK5m">
                                <ref role="3cqZAo" node="3C60Wuaecjx" resolve="version" />
                              </node>
                              <node concept="3K4zz7" id="3C60Wuajso7" role="37wK5m">
                                <node concept="37vLTw" id="3C60Wuajrbf" role="3K4Cdx">
                                  <ref role="3cqZAo" node="4TP40u00TwP" resolve="deleted" />
                                </node>
                                <node concept="Rm8GO" id="3C60Wuai79k" role="3K4E3e">
                                  <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
                                  <ref role="Rm8GQ" to="btf5:7inhnIFBpHU" resolve="DELETE" />
                                </node>
                                <node concept="Rm8GO" id="3C60WuajsPS" role="3K4GZi">
                                  <ref role="Rm8GQ" to="btf5:7inhnIFBpHO" resolve="ADD" />
                                  <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4TP40u00zU7" role="3clFbw">
                      <node concept="3cmrfG" id="4TP40u00zU8" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1rXfSq" id="4TP40u00zU9" role="3uHU7B">
                        <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                        <node concept="10Nm6u" id="4TP40u00zUa" role="37wK5m" />
                        <node concept="3VsKOn" id="4TP40u00zUb" role="37wK5m">
                          <ref role="3VsUkX" to="btf5:4TP40tZZeAv" resolve="UsedLanguageChange" />
                        </node>
                        <node concept="1bVj0M" id="4TP40u00zUc" role="37wK5m">
                          <node concept="37vLTG" id="4TP40u00zUd" role="1bW2Oz">
                            <property role="TrG5h" value="ulc" />
                            <node concept="3uibUv" id="4TP40u00CAs" role="1tU5fm">
                              <ref role="3uigEE" to="btf5:4TP40tZZeAv" resolve="UsedLanguageChange" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4TP40u00zUf" role="1bW5cS">
                            <node concept="3clFbF" id="4TP40u00zUg" role="3cqZAp">
                              <node concept="2OqwBi" id="4TP40u00zUn" role="3clFbG">
                                <node concept="37vLTw" id="4TP40u00Epx" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TP40u00Dz3" resolve="eventLang" />
                                </node>
                                <node concept="liA8E" id="4TP40u00zUp" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="2OqwBi" id="4TP40u00zUq" role="37wK5m">
                                    <node concept="37vLTw" id="4TP40u00zUr" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TP40u00zUd" resolve="ulc" />
                                    </node>
                                    <node concept="liA8E" id="4TP40u00zUs" role="2OqNvi">
                                      <ref role="37wK5l" to="btf5:4TP40tZZAXd" resolve="getLanguage" />
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
              <node concept="10Nm6u" id="4TP40u00zUt" role="37wK5m" />
              <node concept="37vLTw" id="4TP40u00zUu" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8QvcfQ" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8QvcfQ" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2QnDi8Qvcg7" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelLanguageEvent" resolve="SModelLanguageEvent" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4W4PrCD34XS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6BB1EWX3mrL" role="jymVt" />
      <node concept="3clFb_" id="2QnDi8QvcfS" role="jymVt">
        <property role="TrG5h" value="visitDevKitEvent" />
        <node concept="3cqZAl" id="2QnDi8QvcfT" role="3clF45" />
        <node concept="3Tm1VV" id="4W4PrCD3aSc" role="1B3o_S" />
        <node concept="3clFbS" id="2QnDi8QvcfV" role="3clF47">
          <node concept="3clFbF" id="7lBk6gHthi3" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyYw0" role="3clFbG">
              <ref role="37wK5l" node="2QnDi8QvB2h" resolve="moduleDependencyEvent" />
              <node concept="37vLTw" id="2BHiRxglKzL" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8QvcfW" resolve="event" />
              </node>
              <node concept="2OqwBi" id="7lBk6gHthi6" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxglK$B" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvcfW" resolve="event" />
                </node>
                <node concept="liA8E" id="7lBk6gHthi8" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelDevKitEvent.getDevkitNamespace()" resolve="getDevkitNamespace" />
                </node>
              </node>
              <node concept="Rm8GO" id="7lBk6gHthi9" role="37wK5m">
                <ref role="1Px2BO" to="btf5:4LCuQ2Vx_l7" resolve="ModuleDependencyChange.DependencyType" />
                <ref role="Rm8GQ" to="btf5:4LCuQ2Vx_lg" resolve="USED_DEVKIT" />
              </node>
              <node concept="2OqwBi" id="7lBk6gHthiz" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgmP8Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QnDi8QvcfW" resolve="event" />
                </node>
                <node concept="liA8E" id="7lBk6gHthiD" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelDevKitEvent.isAdded()" resolve="isAdded" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8QvcfW" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2QnDi8Qvcg8" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelDevKitEvent" resolve="SModelDevKitEvent" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4W4PrCD3daE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6BB1EWX3mrM" role="jymVt" />
      <node concept="3clFb_" id="2QnDi8QvB2h" role="jymVt">
        <property role="TrG5h" value="moduleDependencyEvent" />
        <node concept="3cqZAl" id="2QnDi8QvB2i" role="3clF45" />
        <node concept="3Tm6S6" id="2QnDi8QvB2j" role="1B3o_S" />
        <node concept="3clFbS" id="2QnDi8QvB2k" role="3clF47">
          <node concept="3clFbF" id="2QnDi8QvB2l" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz9b$" role="3clFbG">
              <ref role="37wK5l" node="1XuTulVDIKV" resolve="runUpdateTask" />
              <node concept="1bVj0M" id="2QnDi8QvB2n" role="37wK5m">
                <node concept="3clFbS" id="2QnDi8QvB2o" role="1bW5cS">
                  <node concept="3clFbJ" id="2QnDi8QvB2p" role="3cqZAp">
                    <node concept="3clFbS" id="2QnDi8QvB2q" role="3clFbx">
                      <node concept="3clFbF" id="2QnDi8QvB2r" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyyZ0B" role="3clFbG">
                          <ref role="37wK5l" node="5pmMiWv$OQ7" resolve="addChange" />
                          <node concept="2ShNRf" id="2QnDi8QvB2t" role="37wK5m">
                            <node concept="1pGfFk" id="2QnDi8QvB2u" role="2ShVmc">
                              <ref role="37wK5l" to="btf5:4LCuQ2Vx_P1" resolve="ModuleDependencyChange" />
                              <node concept="2OqwBi" id="2QnDi8QvB2v" role="37wK5m">
                                <node concept="37vLTw" id="2BHiRxeugcy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                                </node>
                                <node concept="liA8E" id="2QnDi8QvB2x" role="2OqNvi">
                                  <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2BHiRxglPke" role="37wK5m">
                                <ref role="3cqZAo" node="2QnDi8QvB30" resolve="moduleRef" />
                              </node>
                              <node concept="37vLTw" id="2BHiRxgkWrl" role="37wK5m">
                                <ref role="3cqZAo" node="2QnDi8QvB32" resolve="type" />
                              </node>
                              <node concept="3fqX7Q" id="2QnDi8QvB2$" role="37wK5m">
                                <node concept="37vLTw" id="2BHiRxghg4h" role="3fr31v">
                                  <ref role="3cqZAo" node="2QnDi8QvB34" resolve="added" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="2QnDi8QvB2A" role="3clFbw">
                      <node concept="3cmrfG" id="2QnDi8QvB2B" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1rXfSq" id="4hiugqyyZE1" role="3uHU7B">
                        <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                        <node concept="10Nm6u" id="2QnDi8QvB2D" role="37wK5m" />
                        <node concept="3VsKOn" id="2QnDi8QvB2E" role="37wK5m">
                          <ref role="3VsUkX" to="btf5:1WsO37X4pbS" resolve="ModuleDependencyChange" />
                        </node>
                        <node concept="1bVj0M" id="2QnDi8QvB2F" role="37wK5m">
                          <node concept="37vLTG" id="2QnDi8QvB2G" role="1bW2Oz">
                            <property role="TrG5h" value="mdc" />
                            <node concept="3uibUv" id="2QnDi8QvB2H" role="1tU5fm">
                              <ref role="3uigEE" to="btf5:1WsO37X4pbS" resolve="ModuleDependencyChange" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="2QnDi8QvB2I" role="1bW5cS">
                            <node concept="3clFbF" id="2QnDi8QvB2J" role="3cqZAp">
                              <node concept="1Wc70l" id="2QnDi8QvB2K" role="3clFbG">
                                <node concept="3clFbC" id="2QnDi8QvB2L" role="3uHU7B">
                                  <node concept="37vLTw" id="2BHiRxgm850" role="3uHU7B">
                                    <ref role="3cqZAo" node="2QnDi8QvB32" resolve="type" />
                                  </node>
                                  <node concept="2OqwBi" id="2QnDi8QvB2N" role="3uHU7w">
                                    <node concept="37vLTw" id="2BHiRxghfJS" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2QnDi8QvB2G" resolve="mdc" />
                                    </node>
                                    <node concept="liA8E" id="2QnDi8QvB2P" role="2OqNvi">
                                      <ref role="37wK5l" to="btf5:4LCuQ2VyldV" resolve="getDependencyType" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="2QnDi8QvB2Q" role="3uHU7w">
                                  <node concept="37vLTw" id="2BHiRxgmzsh" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QnDi8QvB30" resolve="moduleRef" />
                                  </node>
                                  <node concept="liA8E" id="2QnDi8QvB2S" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="2QnDi8QvB2T" role="37wK5m">
                                      <node concept="37vLTw" id="2BHiRxghfxi" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2QnDi8QvB2G" resolve="mdc" />
                                      </node>
                                      <node concept="liA8E" id="2QnDi8QvB2V" role="2OqNvi">
                                        <ref role="37wK5l" to="btf5:4LCuQ2VyldP" resolve="getModuleReference" />
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
              <node concept="10Nm6u" id="2QnDi8QvB2W" role="37wK5m" />
              <node concept="37vLTw" id="2BHiRxglG9z" role="37wK5m">
                <ref role="3cqZAo" node="2QnDi8QvB2Y" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8QvB2Y" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2QnDi8QvB2Z" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8QvB30" role="3clF46">
          <property role="TrG5h" value="moduleRef" />
          <node concept="3uibUv" id="2QnDi8QvB31" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8QvB32" role="3clF46">
          <property role="TrG5h" value="type" />
          <node concept="3uibUv" id="2QnDi8QvB33" role="1tU5fm">
            <ref role="3uigEE" to="btf5:4LCuQ2Vx_l7" resolve="ModuleDependencyChange.DependencyType" />
          </node>
        </node>
        <node concept="37vLTG" id="2QnDi8QvB34" role="3clF46">
          <property role="TrG5h" value="added" />
          <node concept="10P_77" id="2QnDi8QvB35" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="6BB1EWX3mrN" role="jymVt" />
      <node concept="3clFb_" id="7lBk6gHthj8" role="jymVt">
        <property role="TrG5h" value="visitImportEvent" />
        <node concept="37vLTG" id="7lBk6gHthjm" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="7lBk6gHthjw" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelImportEvent" resolve="SModelImportEvent" />
          </node>
        </node>
        <node concept="3cqZAl" id="7lBk6gHthj9" role="3clF45" />
        <node concept="3Tm1VV" id="4W4PrCD3j99" role="1B3o_S" />
        <node concept="3clFbS" id="7lBk6gHthjb" role="3clF47">
          <node concept="3cpWs8" id="4Q5UXnQSu3E" role="3cqZAp">
            <node concept="3cpWsn" id="4Q5UXnQSu3F" role="3cpWs9">
              <property role="TrG5h" value="modelRef" />
              <node concept="3uibUv" id="4Q5UXnQSu3G" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
              </node>
              <node concept="2OqwBi" id="4Q5UXnQSu3H" role="33vP2m">
                <node concept="37vLTw" id="2BHiRxgm7Hq" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lBk6gHthjm" resolve="event" />
                </node>
                <node concept="liA8E" id="4Q5UXnQSu3J" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelImportEvent.getModelUID()" resolve="getModelUID" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Q5UXnQSu3K" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz1tT" role="3clFbG">
              <ref role="37wK5l" node="1XuTulVDIKV" resolve="runUpdateTask" />
              <node concept="1bVj0M" id="4Q5UXnQSu3M" role="37wK5m">
                <node concept="3clFbS" id="4Q5UXnQSu3N" role="1bW5cS">
                  <node concept="3clFbJ" id="4Q5UXnQSu3O" role="3cqZAp">
                    <node concept="3clFbS" id="4Q5UXnQSu3P" role="3clFbx">
                      <node concept="3clFbF" id="4Q5UXnQSu3Q" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyAR4I" role="3clFbG">
                          <ref role="37wK5l" node="5pmMiWv$OQ7" resolve="addChange" />
                          <node concept="2ShNRf" id="4Q5UXnQSu3S" role="37wK5m">
                            <node concept="1pGfFk" id="4Q5UXnQSu3T" role="2ShVmc">
                              <ref role="37wK5l" to="btf5:5Gi8bfMdBoh" resolve="ImportedModelChange" />
                              <node concept="2OqwBi" id="4Q5UXnQSu3U" role="37wK5m">
                                <node concept="37vLTw" id="2BHiRxeufSZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2JwSLRbzlkK" resolve="myDifference" />
                                </node>
                                <node concept="liA8E" id="4Q5UXnQSu3W" role="2OqNvi">
                                  <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3GM_nagTuFZ" role="37wK5m">
                                <ref role="3cqZAo" node="4Q5UXnQSu3F" resolve="modelRef" />
                              </node>
                              <node concept="3fqX7Q" id="4Q5UXnQSu3Y" role="37wK5m">
                                <node concept="2OqwBi" id="4Q5UXnQSu4D" role="3fr31v">
                                  <node concept="37vLTw" id="2BHiRxghiq9" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7lBk6gHthjm" resolve="event" />
                                  </node>
                                  <node concept="liA8E" id="4Q5UXnQSu4J" role="2OqNvi">
                                    <ref role="37wK5l" to="j9co:~SModelImportEvent.isAdded()" resolve="isAdded" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="4Q5UXnQSu40" role="3clFbw">
                      <node concept="3cmrfG" id="4Q5UXnQSu41" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1rXfSq" id="4hiugqyyYde" role="3uHU7B">
                        <ref role="37wK5l" node="35ve9_LJept" resolve="removeChanges" />
                        <node concept="10Nm6u" id="4Q5UXnQSu43" role="37wK5m" />
                        <node concept="3VsKOn" id="4Q5UXnQSu44" role="37wK5m">
                          <ref role="3VsUkX" to="btf5:5Gi8bfMdBo6" resolve="ImportedModelChange" />
                        </node>
                        <node concept="1bVj0M" id="4Q5UXnQSu45" role="37wK5m">
                          <node concept="37vLTG" id="4Q5UXnQSu46" role="1bW2Oz">
                            <property role="TrG5h" value="imc" />
                            <node concept="3uibUv" id="4Q5UXnQSu47" role="1tU5fm">
                              <ref role="3uigEE" to="btf5:5Gi8bfMdBo6" resolve="ImportedModelChange" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4Q5UXnQSu48" role="1bW5cS">
                            <node concept="3clFbF" id="4Q5UXnQSu49" role="3cqZAp">
                              <node concept="2OqwBi" id="4Q5UXnQSu4a" role="3clFbG">
                                <node concept="37vLTw" id="3GM_nagTuwQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4Q5UXnQSu3F" resolve="modelRef" />
                                </node>
                                <node concept="liA8E" id="4Q5UXnQSu4c" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="2OqwBi" id="4Q5UXnQSu4d" role="37wK5m">
                                    <node concept="37vLTw" id="2BHiRxgmE7P" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4Q5UXnQSu46" resolve="imc" />
                                    </node>
                                    <node concept="liA8E" id="4Q5UXnQSu4f" role="2OqNvi">
                                      <ref role="37wK5l" to="btf5:5Gi8bfMdBoM" resolve="getModelReference" />
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
              <node concept="10Nm6u" id="4Q5UXnQSu4g" role="37wK5m" />
              <node concept="37vLTw" id="2BHiRxgmx1q" role="37wK5m">
                <ref role="3cqZAo" node="7lBk6gHthjm" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4W4PrCD3ltA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="4W4PrCD2mGG" role="1zkMxy">
        <ref role="3uigEE" to="j9co:~SModelEventVisitorAdapter" resolve="SModelEventVisitorAdapter" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5yHL1hBtKL3">
    <property role="TrG5h" value="EventConsumingMapping" />
    <node concept="3Tm1VV" id="5yHL1hBtKL4" role="1B3o_S" />
    <node concept="312cEg" id="5yHL1hBtKAT" role="jymVt">
      <property role="TrG5h" value="myNodesToUnconsumedEvents" />
      <node concept="3Tm6S6" id="5yHL1hBtKAU" role="1B3o_S" />
      <node concept="3uibUv" id="5yHL1hBtKB2" role="1tU5fm">
        <ref role="3uigEE" to="e8no:~BidirectionalMultiMap" resolve="BidirectionalMultiMap" />
        <node concept="3uibUv" id="5yHL1hBtKB6" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="3uibUv" id="5yHL1hBtKB7" role="11_B2D">
          <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
        </node>
      </node>
      <node concept="2ShNRf" id="5yHL1hBtKLa" role="33vP2m">
        <node concept="1pGfFk" id="5yHL1hBtKLb" role="2ShVmc">
          <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.&lt;init&gt;()" resolve="BidirectionalMultiMap" />
          <node concept="3uibUv" id="5yHL1hBtKLc" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="3uibUv" id="5yHL1hBtKLd" role="1pMfVU">
            <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4xDM31OBeAr" role="jymVt">
      <property role="TrG5h" value="myAddedNodesToEvents" />
      <node concept="3Tm6S6" id="4xDM31OBeAs" role="1B3o_S" />
      <node concept="3uibUv" id="4xDM31OBhFr" role="1tU5fm">
        <ref role="3uigEE" to="e8no:~BidirectionalMap" resolve="BidirectionalMap" />
        <node concept="3uibUv" id="4xDM31OBhFt" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="3uibUv" id="4xDM31OBhFv" role="11_B2D">
          <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
        </node>
      </node>
      <node concept="2ShNRf" id="4xDM31OBf9s" role="33vP2m">
        <node concept="1pGfFk" id="4xDM31OBhFx" role="2ShVmc">
          <ref role="37wK5l" to="e8no:~BidirectionalMap.&lt;init&gt;()" resolve="BidirectionalMap" />
          <node concept="3uibUv" id="4xDM31OBhFz" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="3uibUv" id="4xDM31OBhF_" role="1pMfVU">
            <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="5yHL1hBtKL5" role="jymVt">
      <node concept="3cqZAl" id="5yHL1hBtKL6" role="3clF45" />
      <node concept="3Tm1VV" id="5yHL1hBtKL7" role="1B3o_S" />
      <node concept="3clFbS" id="5yHL1hBtKL8" role="3clF47" />
    </node>
    <node concept="3clFb_" id="5yHL1hBu7qV" role="jymVt">
      <property role="TrG5h" value="consumeAllForNode" />
      <node concept="3cqZAl" id="5yHL1hBu7st" role="3clF45" />
      <node concept="3Tm6S6" id="5yHL1hBu7qX" role="1B3o_S" />
      <node concept="3clFbS" id="5yHL1hBu7qY" role="3clF47">
        <node concept="3cpWs8" id="5yHL1hBu7sm" role="3cqZAp">
          <node concept="3cpWsn" id="5yHL1hBu7sn" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="3uibUv" id="5yHL1hBu7so" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="2OqwBi" id="5yHL1hBu7sp" role="33vP2m">
              <node concept="liA8E" id="24cAaiUz$l_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm73l" role="2Oq$k0">
                <ref role="3cqZAo" node="5yHL1hBu7rB" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5yHL1hBu7rD" role="3cqZAp">
          <node concept="2OqwBi" id="5yHL1hBu7rE" role="3clFbG">
            <node concept="2OqwBi" id="5yHL1hBu7rF" role="2Oq$k0">
              <node concept="2OqwBi" id="5yHL1hBu7rG" role="2Oq$k0">
                <node concept="1eOMI4" id="5yHL1hBu7rH" role="2Oq$k0">
                  <node concept="10QFUN" id="5yHL1hBu7rI" role="1eOMHV">
                    <node concept="2OqwBi" id="5yHL1hBu7rJ" role="10QFUP">
                      <node concept="37vLTw" id="2BHiRxeufRE" role="2Oq$k0">
                        <ref role="3cqZAo" node="5yHL1hBtKAT" resolve="myNodesToUnconsumedEvents" />
                      </node>
                      <node concept="liA8E" id="5yHL1hBu7rL" role="2OqNvi">
                        <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.getValues(java.lang.Object)" resolve="getValues" />
                        <node concept="37vLTw" id="3GM_nagTtpo" role="37wK5m">
                          <ref role="3cqZAo" node="5yHL1hBu7sn" resolve="id" />
                        </node>
                      </node>
                    </node>
                    <node concept="A3Dl8" id="5yHL1hBu7rN" role="10QFUM">
                      <node concept="3uibUv" id="5yHL1hBu7rO" role="A3Ik2">
                        <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="5yHL1hBu7rP" role="2OqNvi">
                  <node concept="1bVj0M" id="5yHL1hBu7rQ" role="23t8la">
                    <node concept="3clFbS" id="5yHL1hBu7rR" role="1bW5cS">
                      <node concept="3clFbF" id="5yHL1hBu7rS" role="3cqZAp">
                        <node concept="3fqX7Q" id="5yHL1hBu7rT" role="3clFbG">
                          <node concept="2ZW3vV" id="5yHL1hBu7rU" role="3fr31v">
                            <node concept="3uibUv" id="5yHL1hBu7rV" role="2ZW6by">
                              <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxgm$Qt" role="2ZW6bz">
                              <ref role="3cqZAo" node="5W7E4fV0XKK" resolve="e" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XKK" role="1bW2Oz">
                      <property role="TrG5h" value="e" />
                      <node concept="2jxLKc" id="5W7E4fV0XKL" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="5yHL1hBu7rZ" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="5yHL1hBu7s0" role="2OqNvi">
              <node concept="1bVj0M" id="5yHL1hBu7s1" role="23t8la">
                <node concept="3clFbS" id="5yHL1hBu7s2" role="1bW5cS">
                  <node concept="3clFbF" id="5yHL1hBu7s3" role="3cqZAp">
                    <node concept="2OqwBi" id="5yHL1hBu7s4" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxeutG5" role="2Oq$k0">
                        <ref role="3cqZAo" node="5yHL1hBtKAT" resolve="myNodesToUnconsumedEvents" />
                      </node>
                      <node concept="liA8E" id="5yHL1hBu7s6" role="2OqNvi">
                        <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.remove(java.lang.Object,java.lang.Object)" resolve="remove" />
                        <node concept="37vLTw" id="3GM_nagTueM" role="37wK5m">
                          <ref role="3cqZAo" node="5yHL1hBu7sn" resolve="id" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxghfDm" role="37wK5m">
                          <ref role="3cqZAo" node="5W7E4fV0XKM" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XKM" role="1bW2Oz">
                  <property role="TrG5h" value="e" />
                  <node concept="2jxLKc" id="5W7E4fV0XKN" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5yHL1hBu7rB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5yHL1hBu7rC" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5yHL1hBtKLe" role="jymVt">
      <property role="od$2w" value="true" />
      <property role="TrG5h" value="addEvent" />
      <node concept="37vLTG" id="5yHL1hBtKLi" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="5yHL1hBtKLk" role="1tU5fm">
          <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
        </node>
      </node>
      <node concept="3cqZAl" id="5yHL1hBtKLf" role="3clF45" />
      <node concept="3Tm1VV" id="5yHL1hBtKLg" role="1B3o_S" />
      <node concept="3clFbS" id="5yHL1hBtKLh" role="3clF47">
        <node concept="3cpWs8" id="5yHL1hBu7x3" role="3cqZAp">
          <node concept="3cpWsn" id="5yHL1hBu7x4" role="3cpWs9">
            <property role="TrG5h" value="affectedNode" />
            <node concept="3uibUv" id="5yHL1hBu7x5" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="10Nm6u" id="5yHL1hBu7x7" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2EYHmBticXH" role="3cqZAp">
          <node concept="3cpWsn" id="2EYHmBticXI" role="3cpWs9">
            <property role="TrG5h" value="addedNode" />
            <node concept="3uibUv" id="2EYHmBticXJ" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="10Nm6u" id="2EYHmBticXL" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="5yHL1hBtKLl" role="3cqZAp">
          <node concept="2ZW3vV" id="5yHL1hBtKLp" role="3clFbw">
            <node concept="3uibUv" id="5yHL1hBtKLs" role="2ZW6by">
              <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmI8P" role="2ZW6bz">
              <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
            </node>
          </node>
          <node concept="3clFbS" id="5yHL1hBtKLn" role="3clFbx">
            <node concept="3cpWs8" id="2EYHmBticYi" role="3cqZAp">
              <node concept="3cpWsn" id="2EYHmBticYj" role="3cpWs9">
                <property role="TrG5h" value="re" />
                <node concept="3uibUv" id="2EYHmBticYk" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                </node>
                <node concept="10QFUN" id="2EYHmBticYl" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgmySJ" role="10QFUP">
                    <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                  </node>
                  <node concept="3uibUv" id="2EYHmBticYn" role="10QFUM">
                    <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5yHL1hBu7x9" role="3cqZAp">
              <node concept="37vLTI" id="5yHL1hBu7xb" role="3clFbG">
                <node concept="2OqwBi" id="5yHL1hBu7yI" role="37vLTx">
                  <node concept="37vLTw" id="3GM_nagTt7v" role="2Oq$k0">
                    <ref role="3cqZAo" node="2EYHmBticYj" resolve="re" />
                  </node>
                  <node concept="liA8E" id="5yHL1hBu7yN" role="2OqNvi">
                    <ref role="37wK5l" to="j9co:~SModelRootEvent.getRoot()" resolve="getRoot" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTroh" role="37vLTJ">
                  <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2EYHmBticY6" role="3cqZAp">
              <node concept="3clFbS" id="2EYHmBticY7" role="3clFbx">
                <node concept="3clFbF" id="2EYHmBticXN" role="3cqZAp">
                  <node concept="37vLTI" id="2EYHmBticXP" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT$xG" role="37vLTx">
                      <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTuHW" role="37vLTJ">
                      <ref role="3cqZAo" node="2EYHmBticXI" resolve="addedNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2EYHmBticYs" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTuzZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2EYHmBticYj" resolve="re" />
                </node>
                <node concept="liA8E" id="2EYHmBticYw" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelRootEvent.isAdded()" resolve="isAdded" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5yHL1hBtKNK" role="3eNLev">
            <node concept="2ZW3vV" id="5yHL1hBtKNO" role="3eO9$A">
              <node concept="3uibUv" id="5yHL1hBtKNR" role="2ZW6by">
                <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
              </node>
              <node concept="37vLTw" id="2BHiRxghfiQ" role="2ZW6bz">
                <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
              </node>
            </node>
            <node concept="3clFbS" id="5yHL1hBtKNM" role="3eOfB_">
              <node concept="3cpWs8" id="2EYHmBthYFT" role="3cqZAp">
                <node concept="3cpWsn" id="2EYHmBthYFU" role="3cpWs9">
                  <property role="TrG5h" value="ce" />
                  <node concept="3uibUv" id="2EYHmBthYFV" role="1tU5fm">
                    <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
                  </node>
                  <node concept="10QFUN" id="2EYHmBthYFW" role="33vP2m">
                    <node concept="3uibUv" id="2EYHmBthYFX" role="10QFUM">
                      <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm8s3" role="10QFUP">
                      <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5yHL1hBu7xg" role="3cqZAp">
                <node concept="37vLTI" id="5yHL1hBu7xi" role="3clFbG">
                  <node concept="2OqwBi" id="5yHL1hBu7xO" role="37vLTx">
                    <node concept="37vLTw" id="3GM_nagTAlH" role="2Oq$k0">
                      <ref role="3cqZAo" node="2EYHmBthYFU" resolve="ce" />
                    </node>
                    <node concept="liA8E" id="5yHL1hBu7xQ" role="2OqNvi">
                      <ref role="37wK5l" to="j9co:~SModelChildEvent.getParent()" resolve="getParent" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTuhy" role="37vLTJ">
                    <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2EYHmBticYO" role="3cqZAp">
                <node concept="3clFbS" id="2EYHmBticYP" role="3clFbx">
                  <node concept="3clFbF" id="2EYHmBticYY" role="3cqZAp">
                    <node concept="37vLTI" id="2EYHmBticZ0" role="3clFbG">
                      <node concept="2OqwBi" id="2EYHmBticZ4" role="37vLTx">
                        <node concept="37vLTw" id="3GM_nagTAgB" role="2Oq$k0">
                          <ref role="3cqZAo" node="2EYHmBthYFU" resolve="ce" />
                        </node>
                        <node concept="liA8E" id="2EYHmBticZ8" role="2OqNvi">
                          <ref role="37wK5l" to="j9co:~SModelChildEvent.getChild()" resolve="getChild" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTvh9" role="37vLTJ">
                        <ref role="3cqZAo" node="2EYHmBticXI" resolve="addedNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2EYHmBticYT" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTyYv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2EYHmBthYFU" resolve="ce" />
                  </node>
                  <node concept="liA8E" id="2EYHmBticYX" role="2OqNvi">
                    <ref role="37wK5l" to="j9co:~SModelChildEvent.isAdded()" resolve="isAdded" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5yHL1hBu7oj" role="3eNLev">
            <node concept="2ZW3vV" id="5yHL1hBu7on" role="3eO9$A">
              <node concept="3uibUv" id="5yHL1hBu7oq" role="2ZW6by">
                <ref role="3uigEE" to="j9co:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
              </node>
              <node concept="37vLTw" id="2BHiRxgheRL" role="2ZW6bz">
                <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
              </node>
            </node>
            <node concept="3clFbS" id="5yHL1hBu7ol" role="3eOfB_">
              <node concept="3clFbF" id="5yHL1hBu7xn" role="3cqZAp">
                <node concept="37vLTI" id="5yHL1hBu7xp" role="3clFbG">
                  <node concept="2OqwBi" id="5yHL1hBu7xv" role="37vLTx">
                    <node concept="1eOMI4" id="5yHL1hBu7xw" role="2Oq$k0">
                      <node concept="10QFUN" id="5yHL1hBu7xx" role="1eOMHV">
                        <node concept="3uibUv" id="5yHL1hBu7xy" role="10QFUM">
                          <ref role="3uigEE" to="j9co:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxgh9YK" role="10QFUP">
                          <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5yHL1hBu7x$" role="2OqNvi">
                      <ref role="37wK5l" to="j9co:~SModelPropertyEvent.getNode()" resolve="getNode" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTy1I" role="37vLTJ">
                    <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5yHL1hBu7tJ" role="3eNLev">
            <node concept="3clFbS" id="5yHL1hBu7tK" role="3eOfB_">
              <node concept="3clFbF" id="5yHL1hBu7xA" role="3cqZAp">
                <node concept="37vLTI" id="5yHL1hBu7xC" role="3clFbG">
                  <node concept="2OqwBi" id="5yHL1hBu7xG" role="37vLTx">
                    <node concept="2OqwBi" id="5yHL1hBu7xH" role="2Oq$k0">
                      <node concept="1eOMI4" id="5yHL1hBu7xI" role="2Oq$k0">
                        <node concept="10QFUN" id="5yHL1hBu7xJ" role="1eOMHV">
                          <node concept="3uibUv" id="5yHL1hBu7xK" role="10QFUM">
                            <ref role="3uigEE" to="j9co:~SModelReferenceEvent" resolve="SModelReferenceEvent" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxgm89f" role="10QFUP">
                            <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5yHL1hBu7xM" role="2OqNvi">
                        <ref role="37wK5l" to="j9co:~SModelReferenceEvent.getReference()" resolve="getReference" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5yHL1hBu7xN" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getSourceNode()" resolve="getSourceNode" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTAEe" role="37vLTJ">
                    <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5yHL1hBu7tM" role="3eO9$A">
              <node concept="3uibUv" id="5yHL1hBu7tP" role="2ZW6by">
                <ref role="3uigEE" to="j9co:~SModelReferenceEvent" resolve="SModelReferenceEvent" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmaXI" role="2ZW6bz">
                <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2EYHmBthYGt" role="3cqZAp">
          <node concept="3clFbS" id="2EYHmBthYGu" role="3clFbx">
            <node concept="3clFbF" id="cKywIt7ZnE" role="3cqZAp">
              <node concept="2OqwBi" id="cKywIt7ZnG" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuyRR" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yHL1hBtKAT" resolve="myNodesToUnconsumedEvents" />
                </node>
                <node concept="liA8E" id="cKywIt7ZnK" role="2OqNvi">
                  <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="10Nm6u" id="cKywIt7ZnL" role="37wK5m" />
                  <node concept="37vLTw" id="2BHiRxgmDvc" role="37wK5m">
                    <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="cKywIt7ZnP" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2EYHmBthYGy" role="3clFbw">
            <node concept="10Nm6u" id="2EYHmBthYG_" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTuBP" role="3uHU7B">
              <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2EYHmBthYGo" role="3cqZAp" />
        <node concept="3clFbJ" id="2EYHmBthYFp" role="3cqZAp">
          <node concept="3clFbS" id="2EYHmBthYFq" role="3clFbx">
            <node concept="3clFbJ" id="5yHL1hBu7uP" role="3cqZAp">
              <node concept="2ZW3vV" id="5yHL1hBu7uQ" role="3clFbw">
                <node concept="3uibUv" id="5yHL1hBu7uR" role="2ZW6by">
                  <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm$Ev" role="2ZW6bz">
                  <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                </node>
              </node>
              <node concept="3clFbS" id="5yHL1hBu7uT" role="3clFbx">
                <node concept="3cpWs8" id="5yHL1hBu7uU" role="3cqZAp">
                  <node concept="3cpWsn" id="5yHL1hBu7uV" role="3cpWs9">
                    <property role="TrG5h" value="rootEvent" />
                    <node concept="3uibUv" id="5yHL1hBu7uW" role="1tU5fm">
                      <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                    </node>
                    <node concept="10QFUN" id="5yHL1hBu7uX" role="33vP2m">
                      <node concept="37vLTw" id="2BHiRxgmeKx" role="10QFUP">
                        <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                      </node>
                      <node concept="3uibUv" id="5yHL1hBu7uZ" role="10QFUM">
                        <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5yHL1hBu7vb" role="3cqZAp">
                  <node concept="3clFbS" id="5yHL1hBu7vc" role="3clFbx">
                    <node concept="3clFbF" id="5yHL1hBu7vd" role="3cqZAp">
                      <node concept="1rXfSq" id="4hiugqyz8qn" role="3clFbG">
                        <ref role="37wK5l" node="5yHL1hBu7qV" resolve="consumeAllForNode" />
                        <node concept="37vLTw" id="3GM_nagTBKn" role="37wK5m">
                          <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5yHL1hBu7vg" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTA4N" role="2Oq$k0">
                      <ref role="3cqZAo" node="5yHL1hBu7uV" resolve="rootEvent" />
                    </node>
                    <node concept="liA8E" id="5yHL1hBu7vi" role="2OqNvi">
                      <ref role="37wK5l" to="j9co:~SModelRootEvent.isRemoved()" resolve="isRemoved" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="5yHL1hBu7vr" role="3eNLev">
                <node concept="2ZW3vV" id="5yHL1hBu7vs" role="3eO9$A">
                  <node concept="3uibUv" id="5yHL1hBu7vt" role="2ZW6by">
                    <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm8IN" role="2ZW6bz">
                    <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                  </node>
                </node>
                <node concept="3clFbS" id="5yHL1hBu7vv" role="3eOfB_">
                  <node concept="3cpWs8" id="5yHL1hBu7vw" role="3cqZAp">
                    <node concept="3cpWsn" id="5yHL1hBu7vx" role="3cpWs9">
                      <property role="TrG5h" value="childEvent" />
                      <node concept="3uibUv" id="5yHL1hBu7vy" role="1tU5fm">
                        <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
                      </node>
                      <node concept="10QFUN" id="5yHL1hBu7vz" role="33vP2m">
                        <node concept="3uibUv" id="5yHL1hBu7v$" role="10QFUM">
                          <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxghfK0" role="10QFUP">
                          <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4xDM31OBhFV" role="3cqZAp">
                    <node concept="3cpWsn" id="4xDM31OBhFW" role="3cpWs9">
                      <property role="TrG5h" value="child" />
                      <node concept="3uibUv" id="4xDM31OBhFX" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="4xDM31OBhFY" role="33vP2m">
                        <node concept="37vLTw" id="3GM_nagTuxI" role="2Oq$k0">
                          <ref role="3cqZAo" node="5yHL1hBu7vx" resolve="childEvent" />
                        </node>
                        <node concept="liA8E" id="4xDM31OBhG0" role="2OqNvi">
                          <ref role="37wK5l" to="j9co:~SModelChildEvent.getChild()" resolve="getChild" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5yHL1hBu7vI" role="3cqZAp">
                    <node concept="3clFbS" id="5yHL1hBu7vJ" role="3clFbx">
                      <node concept="3clFbF" id="5yHL1hBu7vK" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyz9m7" role="3clFbG">
                          <ref role="37wK5l" node="5yHL1hBu7qV" resolve="consumeAllForNode" />
                          <node concept="37vLTw" id="3GM_nagTybV" role="37wK5m">
                            <ref role="3cqZAo" node="4xDM31OBhFW" resolve="child" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5yHL1hBu7vP" role="3clFbw">
                      <node concept="37vLTw" id="3GM_nagTA_8" role="2Oq$k0">
                        <ref role="3cqZAo" node="5yHL1hBu7vx" resolve="childEvent" />
                      </node>
                      <node concept="liA8E" id="5yHL1hBu7vR" role="2OqNvi">
                        <ref role="37wK5l" to="j9co:~SModelChildEvent.isRemoved()" resolve="isRemoved" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5yHL1hBu7wJ" role="3cqZAp">
              <node concept="2OqwBi" id="5yHL1hBu7wK" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeulxJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yHL1hBtKAT" resolve="myNodesToUnconsumedEvents" />
                </node>
                <node concept="liA8E" id="5yHL1hBu7wM" role="2OqNvi">
                  <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="5yHL1hBu7wN" role="37wK5m">
                    <node concept="liA8E" id="24cAaiUz$gx" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTrAG" role="2Oq$k0">
                      <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxglgrA" role="37wK5m">
                    <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2EYHmBthYGB" role="3clFbw">
            <node concept="2OqwBi" id="2EYHmBthYGD" role="3fr31v">
              <node concept="37vLTw" id="2BHiRxeuPhb" role="2Oq$k0">
                <ref role="3cqZAo" node="4xDM31OBeAr" resolve="myAddedNodesToEvents" />
              </node>
              <node concept="liA8E" id="2EYHmBthYGF" role="2OqNvi">
                <ref role="37wK5l" to="e8no:~BidirectionalMap.containsKey(java.lang.Object)" resolve="containsKey" />
                <node concept="2OqwBi" id="2EYHmBthYGG" role="37wK5m">
                  <node concept="liA8E" id="24cAaiUz$lH" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagT$u5" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yHL1hBu7x4" resolve="affectedNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2EYHmBticYy" role="3cqZAp">
          <node concept="3clFbS" id="2EYHmBticYz" role="3clFbx">
            <node concept="3clFbF" id="4xDM31OBfag" role="3cqZAp">
              <node concept="2OqwBi" id="4xDM31OBhFO" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeunkx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xDM31OBeAr" resolve="myAddedNodesToEvents" />
                </node>
                <node concept="liA8E" id="4xDM31OBhFS" role="2OqNvi">
                  <ref role="37wK5l" to="e8no:~BidirectionalMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="2EYHmBthYG4" role="37wK5m">
                    <node concept="liA8E" id="24cAaiUz$kx" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTB2e" role="2Oq$k0">
                      <ref role="3cqZAo" node="2EYHmBticXI" resolve="addedNode" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxglO7O" role="37wK5m">
                    <ref role="3cqZAo" node="5yHL1hBtKLi" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2EYHmBticYH" role="3clFbw">
            <node concept="10Nm6u" id="2EYHmBticYK" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTtqE" role="3uHU7B">
              <ref role="3cqZAo" node="2EYHmBticXI" resolve="addedNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5yHL1hBtKLC" role="jymVt">
      <property role="od$2w" value="true" />
      <property role="TrG5h" value="removeEvent" />
      <node concept="37vLTG" id="5yHL1hBtKLD" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="5yHL1hBtKLE" role="1tU5fm">
          <ref role="3uigEE" to="j9co:~SModelEvent" resolve="SModelEvent" />
        </node>
      </node>
      <node concept="10P_77" id="5yHL1hBtKLN" role="3clF45" />
      <node concept="3Tm1VV" id="5yHL1hBtKLG" role="1B3o_S" />
      <node concept="3clFbS" id="5yHL1hBtKLH" role="3clF47">
        <node concept="3SKdUt" id="5yHL1hBtKLV" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom8y" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom8z" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom8$" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom8_" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom8A" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom8B" role="1PaTwD">
              <property role="3oM_SC" value="event" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom8C" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom8D" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom8E" role="1PaTwD">
              <property role="3oM_SC" value="processed" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xDM31OBhFF" role="3cqZAp">
          <node concept="2OqwBi" id="4xDM31OBhFH" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuSw0" role="2Oq$k0">
              <ref role="3cqZAo" node="4xDM31OBeAr" resolve="myAddedNodesToEvents" />
            </node>
            <node concept="liA8E" id="4xDM31OBhFL" role="2OqNvi">
              <ref role="37wK5l" to="e8no:~BidirectionalMap.removeValue(java.lang.Object)" resolve="removeValue" />
              <node concept="37vLTw" id="2BHiRxglWn8" role="37wK5m">
                <ref role="3cqZAo" node="5yHL1hBtKLD" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1G0fvsp5Xpv" role="3cqZAp">
          <node concept="2OqwBi" id="1G0fvsp5Xpx" role="3cqZAk">
            <node concept="37vLTw" id="1G0fvsp5Xpy" role="2Oq$k0">
              <ref role="3cqZAo" node="5yHL1hBtKAT" resolve="myNodesToUnconsumedEvents" />
            </node>
            <node concept="liA8E" id="1G0fvsp5Xpz" role="2OqNvi">
              <ref role="37wK5l" to="e8no:~BidirectionalMultiMap.removeValue(java.lang.Object)" resolve="removeValue" />
              <node concept="37vLTw" id="1G0fvsp5Xp$" role="37wK5m">
                <ref role="3cqZAo" node="5yHL1hBtKLD" resolve="event" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2n7wcdLaAPM">
    <property role="TrG5h" value="NodeFileStatusMapping" />
    <node concept="3Tm1VV" id="2n7wcdLaAWM" role="1B3o_S" />
    <node concept="312cEg" id="2n7wcdLaAW$" role="jymVt">
      <property role="TrG5h" value="myFileStatusMap" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2n7wcdLaAW_" role="1B3o_S" />
      <node concept="2ShNRf" id="2n7wcdLaAWD" role="33vP2m">
        <node concept="1pGfFk" id="4uLJMq1zIKF" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="4uLJMq1zIOj" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3uibUv" id="4uLJMq1zIRT" role="1pMfVU">
            <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4uLJMq1zHzs" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="4uLJMq1zH$L" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3uibUv" id="4uLJMq1zH_t" role="11_B2D">
          <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2n7wcdLaAWH" role="jymVt">
      <property role="TrG5h" value="myGlobalListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2n7wcdLaAWI" role="1B3o_S" />
      <node concept="3uibUv" id="2n7wcdLaAWJ" role="1tU5fm">
        <ref role="3uigEE" node="5R2TaPUK2uk" resolve="CurrentDifferenceListener" />
      </node>
      <node concept="2ShNRf" id="2n7wcdLaAWK" role="33vP2m">
        <node concept="1pGfFk" id="2n7wcdLaAWL" role="2ShVmc">
          <ref role="37wK5l" node="2n7wcdLaAPW" resolve="NodeFileStatusMapping.MyGlobalListener" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5A04Co8KyHu" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="2OoyE6VTvzy" role="1B3o_S" />
      <node concept="3uibUv" id="5A04Co8K$o1" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="2n7wcdLaAWx" role="jymVt">
      <property role="TrG5h" value="myRegistry" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2n7wcdLaAWy" role="1B3o_S" />
      <node concept="3uibUv" id="2n7wcdLaAWz" role="1tU5fm">
        <ref role="3uigEE" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
      </node>
    </node>
    <node concept="2tJIrI" id="3bmhQqpINzN" role="jymVt" />
    <node concept="2YIFZL" id="3bmhQqpITOL" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="37vLTG" id="3bmhQqpIWL9" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="3bmhQqpIWLa" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="3bmhQqpITOO" role="3clF47">
        <node concept="3clFbF" id="3bmhQqpIXh5" role="3cqZAp">
          <node concept="2OqwBi" id="3bmhQqpIXAX" role="3clFbG">
            <node concept="37vLTw" id="3bmhQqpIXh4" role="2Oq$k0">
              <ref role="3cqZAo" node="3bmhQqpIWL9" resolve="ideaProject" />
            </node>
            <node concept="liA8E" id="3bmhQqpIY0f" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
              <node concept="3VsKOn" id="3bmhQqpIYrr" role="37wK5m">
                <ref role="3VsUkX" node="2n7wcdLaAPM" resolve="NodeFileStatusMapping" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3bmhQqpIQBz" role="1B3o_S" />
      <node concept="3uibUv" id="3bmhQqpITu8" role="3clF45">
        <ref role="3uigEE" node="2n7wcdLaAPM" resolve="NodeFileStatusMapping" />
      </node>
    </node>
    <node concept="2tJIrI" id="5IHtz9v0k5E" role="jymVt" />
    <node concept="3clFbW" id="2n7wcdLaAWO" role="jymVt">
      <node concept="3cqZAl" id="2n7wcdLaAWP" role="3clF45" />
      <node concept="3Tm1VV" id="2n7wcdLaAWQ" role="1B3o_S" />
      <node concept="3clFbS" id="2n7wcdLaAWR" role="3clF47">
        <node concept="3clFbF" id="5A04Co8KAb4" role="3cqZAp">
          <node concept="37vLTI" id="5A04Co8KAnx" role="3clFbG">
            <node concept="37vLTw" id="5A04Co8KAb2" role="37vLTJ">
              <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
            </node>
            <node concept="2YIFZM" id="3bmhQqpHZ_5" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="3bmhQqpHZTj" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAWY" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n7wcdLaAWU" role="3cqZAp">
          <node concept="37vLTI" id="2n7wcdLaAWV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuna$" role="37vLTJ">
              <ref role="3cqZAo" node="2n7wcdLaAWx" resolve="myRegistry" />
            </node>
            <node concept="2YIFZM" id="6C9ueeinKZb" role="37vLTx">
              <ref role="37wK5l" node="2JwSLRbyYP0" resolve="getInstance" />
              <ref role="1Pybhc" node="2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
              <node concept="37vLTw" id="3bmhQqpItQ4" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAWY" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n7wcdLaARe" role="3cqZAp">
          <node concept="2OqwBi" id="2n7wcdLaARf" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuw$V" role="2Oq$k0">
              <ref role="3cqZAo" node="2n7wcdLaAWx" resolve="myRegistry" />
            </node>
            <node concept="liA8E" id="2n7wcdLaARh" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGF7Ug" resolve="addGlobalDifferenceListener" />
              <node concept="37vLTw" id="2BHiRxeuvMp" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAWH" resolve="myGlobalListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2n7wcdLaAWY" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="5A04Co8KohS" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Ty7LDC$C5n" role="jymVt" />
    <node concept="3clFb_" id="3bmhQqpIgOu" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3Tm1VV" id="3bmhQqpIgOv" role="1B3o_S" />
      <node concept="3cqZAl" id="3bmhQqpIgOx" role="3clF45" />
      <node concept="3clFbS" id="3bmhQqpIgOy" role="3clF47">
        <node concept="3clFbF" id="2n7wcdLaARo" role="3cqZAp">
          <node concept="2OqwBi" id="2n7wcdLaARp" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuSvs" role="2Oq$k0">
              <ref role="3cqZAo" node="2n7wcdLaAWx" resolve="myRegistry" />
            </node>
            <node concept="liA8E" id="2n7wcdLaARr" role="2OqNvi">
              <ref role="37wK5l" node="7sg$kIGF7Us" resolve="removeGlobalDifferenceListener" />
              <node concept="37vLTw" id="2BHiRxeuHrb" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAWH" resolve="myGlobalListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3bmhQqpIgOz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Ty7LDC$E1E" role="jymVt" />
    <node concept="3clFb_" id="2n7wcdLaARu" role="jymVt">
      <property role="TrG5h" value="statusChanged" />
      <node concept="3Tm6S6" id="2n7wcdLaARv" role="1B3o_S" />
      <node concept="37vLTG" id="2n7wcdLaARw" role="3clF46">
        <property role="TrG5h" value="nodePointer" />
        <node concept="3uibUv" id="2n7wcdLaARx" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="2AHcQZ" id="2n7wcdLaARy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="2n7wcdLaARz" role="3clF45" />
      <node concept="3clFbS" id="2n7wcdLaAR$" role="3clF47">
        <node concept="3clFbF" id="1KUoCipvCol" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCipvCom" role="3clFbG">
            <node concept="2OqwBi" id="5A04Co8KEdb" role="2Oq$k0">
              <node concept="37vLTw" id="5A04Co8KDRU" role="2Oq$k0">
                <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
              </node>
              <node concept="liA8E" id="5A04Co8KEYO" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1KUoCipvCoo" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1KUoCipvCop" role="37wK5m">
                <node concept="3clFbS" id="1KUoCipvCoq" role="1bW5cS">
                  <node concept="3cpWs8" id="1KUoCipvCo$" role="3cqZAp">
                    <node concept="3cpWsn" id="1KUoCipvCo_" role="3cpWs9">
                      <property role="TrG5h" value="currentNode" />
                      <node concept="3uibUv" id="1KUoCipvCoA" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="1KUoCipvCoB" role="33vP2m">
                        <node concept="liA8E" id="1KUoCipvCoC" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="2OqwBi" id="5_gUK3iEY32" role="37wK5m">
                            <node concept="37vLTw" id="5_gUK3iEXVx" role="2Oq$k0">
                              <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
                            </node>
                            <node concept="liA8E" id="5_gUK3iEYzJ" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2BHiRxghggW" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n7wcdLaARw" resolve="nodePointer" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1KUoCipvCoI" role="3cqZAp">
                    <node concept="3clFbS" id="1KUoCipvCoJ" role="3clFbx">
                      <node concept="3cpWs6" id="1KUoCipvCoK" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="1KUoCipvCoL" role="3clFbw">
                      <node concept="10Nm6u" id="1KUoCipvCoM" role="3uHU7w" />
                      <node concept="37vLTw" id="3GM_nagT$9d" role="3uHU7B">
                        <ref role="3cqZAo" node="1KUoCipvCo_" resolve="currentNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1KUoCipvCor" role="3cqZAp">
                    <node concept="3cpWsn" id="1KUoCipvCos" role="3cpWs9">
                      <property role="TrG5h" value="fsm" />
                      <node concept="3uibUv" id="1KUoCipvCot" role="1tU5fm">
                        <ref role="3uigEE" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
                      </node>
                      <node concept="2YIFZM" id="1KUoCipvCou" role="33vP2m">
                        <ref role="37wK5l" to="jlcu:~FileStatusManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                        <ref role="1Pybhc" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
                        <node concept="2OqwBi" id="qh1hBLbh$L" role="37wK5m">
                          <node concept="37vLTw" id="qh1hBLbgV8" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
                          </node>
                          <node concept="liA8E" id="qh1hBLbiNg" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1KUoCipvCoO" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyyYm8" role="3clFbG">
                      <ref role="37wK5l" node="2n7wcdLaAS2" resolve="statusChanged" />
                      <node concept="37vLTw" id="3GM_nagTB3v" role="37wK5m">
                        <ref role="3cqZAo" node="1KUoCipvCos" resolve="fsm" />
                      </node>
                      <node concept="37vLTw" id="5IHtz9v0y4R" role="37wK5m">
                        <ref role="3cqZAo" node="1KUoCipvCo_" resolve="currentNode" />
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
    <node concept="2tJIrI" id="5IHtz9v0suF" role="jymVt" />
    <node concept="3clFb_" id="2n7wcdLaAS2" role="jymVt">
      <property role="TrG5h" value="statusChanged" />
      <node concept="3Tmbuc" id="2n7wcdLaAS3" role="1B3o_S" />
      <node concept="3cqZAl" id="2n7wcdLaAS4" role="3clF45" />
      <node concept="37vLTG" id="2n7wcdLaAS5" role="3clF46">
        <property role="TrG5h" value="fsm" />
        <node concept="3uibUv" id="2n7wcdLaAS6" role="1tU5fm">
          <ref role="3uigEE" to="jlcu:~FileStatusManager" resolve="FileStatusManager" />
        </node>
      </node>
      <node concept="37vLTG" id="2n7wcdLaAS9" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5IHtz9v0s9Y" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5IHtz9v0yqO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2n7wcdLaASb" role="3clF47">
        <node concept="3clFbF" id="2n7wcdLaASc" role="3cqZAp">
          <node concept="2OqwBi" id="2n7wcdLaASd" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglB_T" role="2Oq$k0">
              <ref role="3cqZAo" node="2n7wcdLaAS5" resolve="fsm" />
            </node>
            <node concept="liA8E" id="2n7wcdLaASf" role="2OqNvi">
              <ref role="37wK5l" to="jlcu:~FileStatusManager.fileStatusChanged(com.intellij.openapi.vfs.VirtualFile)" resolve="fileStatusChanged" />
              <node concept="2OqwBi" id="2n7wcdLaASg" role="37wK5m">
                <node concept="liA8E" id="2n7wcdLaASi" role="2OqNvi">
                  <ref role="37wK5l" to="kip1:~NodeVirtualFileSystem.getFileFor(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.model.SNode)" resolve="getFileFor" />
                  <node concept="2OqwBi" id="5IHtz9v0uwu" role="37wK5m">
                    <node concept="37vLTw" id="5IHtz9v0vBO" role="2Oq$k0">
                      <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="5IHtz9v0wiH" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxgmysB" role="37wK5m">
                    <ref role="3cqZAo" node="2n7wcdLaAS9" resolve="node" />
                  </node>
                </node>
                <node concept="1rXfSq" id="qh1hBLaQBy" role="2Oq$k0">
                  <ref role="37wK5l" node="qh1hBLaspL" resolve="getNodeFileSystem" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Ty7LDC$Fg1" role="jymVt" />
    <node concept="3clFb_" id="2n7wcdLaASk" role="jymVt">
      <property role="TrG5h" value="updateNodeStatus" />
      <node concept="37vLTG" id="2n7wcdLaASl" role="3clF46">
        <property role="TrG5h" value="nodePointer" />
        <node concept="3uibUv" id="2n7wcdLaASm" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="2AHcQZ" id="2n7wcdLaASn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="2n7wcdLaASo" role="3clF45" />
      <node concept="3Tm6S6" id="2n7wcdLaASp" role="1B3o_S" />
      <node concept="3clFbS" id="2n7wcdLaASq" role="3clF47">
        <node concept="3clFbF" id="2n7wcdLaASr" role="3cqZAp">
          <node concept="2OqwBi" id="2n7wcdLaASs" role="3clFbG">
            <node concept="2OqwBi" id="2n7wcdLaASt" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeug5n" role="2Oq$k0">
                <ref role="3cqZAo" node="2n7wcdLaAWx" resolve="myRegistry" />
              </node>
              <node concept="liA8E" id="2n7wcdLaASv" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbyYWE" resolve="getCommandQueue" />
              </node>
            </node>
            <node concept="liA8E" id="2n7wcdLaASw" role="2OqNvi">
              <ref role="37wK5l" node="3eE6dTgUd0h" resolve="runTask" />
              <node concept="1bVj0M" id="2n7wcdLaASx" role="37wK5m">
                <node concept="3clFbS" id="2n7wcdLaASy" role="1bW5cS">
                  <node concept="3clFbJ" id="2n7wcdLaASz" role="3cqZAp">
                    <node concept="3clFbS" id="2n7wcdLaAS$" role="3clFbx">
                      <node concept="3clFbF" id="2n7wcdLaAS_" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyz9a0" role="3clFbG">
                          <ref role="37wK5l" node="2n7wcdLaARu" resolve="statusChanged" />
                          <node concept="37vLTw" id="2BHiRxgmwSn" role="37wK5m">
                            <ref role="3cqZAo" node="2n7wcdLaASl" resolve="nodePointer" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1rXfSq" id="4hiugqyz82l" role="3clFbw">
                      <ref role="37wK5l" node="2n7wcdLaASE" resolve="calcStatus" />
                      <node concept="37vLTw" id="2BHiRxghfVv" role="37wK5m">
                        <ref role="3cqZAo" node="2n7wcdLaASl" resolve="nodePointer" />
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
    <node concept="2tJIrI" id="qh1hBLa7X_" role="jymVt" />
    <node concept="3clFb_" id="2n7wcdLaASE" role="jymVt">
      <property role="TrG5h" value="calcStatus" />
      <node concept="37vLTG" id="2n7wcdLaASF" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="2n7wcdLaASG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="2AHcQZ" id="2n7wcdLaASH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="10P_77" id="2n7wcdLaASI" role="3clF45" />
      <node concept="3Tm6S6" id="2n7wcdLaASJ" role="1B3o_S" />
      <node concept="3clFbS" id="2n7wcdLaASK" role="3clF47">
        <node concept="3cpWs8" id="5A04Co8Lf95" role="3cqZAp">
          <node concept="3cpWsn" id="5A04Co8Lf96" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="5A04Co8Lf6V" role="1tU5fm">
              <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
              <node concept="3uibUv" id="5A04Co8Lf6Y" role="11_B2D">
                <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
              </node>
            </node>
            <node concept="1bVj0M" id="5A04Co8Lf99" role="33vP2m">
              <node concept="3clFbS" id="5A04Co8Lf9a" role="1bW5cS">
                <node concept="3cpWs8" id="5A04Co8Lf9b" role="3cqZAp">
                  <node concept="3cpWsn" id="5A04Co8Lf9c" role="3cpWs9">
                    <property role="TrG5h" value="m" />
                    <node concept="3uibUv" id="5A04Co8Lf9d" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="5_gUK3iEZ$1" role="33vP2m">
                      <node concept="2OqwBi" id="5_gUK3iEYXP" role="2Oq$k0">
                        <node concept="37vLTw" id="5_gUK3iEYIp" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n7wcdLaASF" resolve="root" />
                        </node>
                        <node concept="liA8E" id="5_gUK3iEZk4" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5_gUK3iEZUB" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                        <node concept="2OqwBi" id="5_gUK3iF0v8" role="37wK5m">
                          <node concept="37vLTw" id="5_gUK3iF0b1" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
                          </node>
                          <node concept="liA8E" id="5_gUK3iF1ef" role="2OqNvi">
                            <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5A04Co8Lf9k" role="3cqZAp">
                  <node concept="1Wc70l" id="5A04Co8Lf9l" role="3clFbw">
                    <node concept="3fqX7Q" id="5A04Co8Lf9m" role="3uHU7w">
                      <node concept="2OqwBi" id="5A04Co8Lf9n" role="3fr31v">
                        <node concept="37vLTw" id="5A04Co8Lf9o" role="2Oq$k0">
                          <ref role="3cqZAo" node="5A04Co8Lf9c" resolve="m" />
                        </node>
                        <node concept="liA8E" id="5A04Co8Lf9p" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="5A04Co8Lf9q" role="3uHU7B">
                      <node concept="2ZW3vV" id="5A04Co8Lf9r" role="3uHU7B">
                        <node concept="3uibUv" id="5A04Co8Lf9s" role="2ZW6by">
                          <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                        </node>
                        <node concept="37vLTw" id="5A04Co8Lf9t" role="2ZW6bz">
                          <ref role="3cqZAo" node="5A04Co8Lf9c" resolve="m" />
                        </node>
                      </node>
                      <node concept="2ZW3vV" id="5A04Co8Lf9u" role="3uHU7w">
                        <node concept="2OqwBi" id="5A04Co8Lf9w" role="2ZW6bz">
                          <node concept="liA8E" id="5A04Co8Lf9x" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
                          </node>
                          <node concept="37vLTw" id="5A04Co8Lf9y" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A04Co8Lf9c" resolve="m" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="2cziDBRxwoc" role="2ZW6by">
                          <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5A04Co8Lf9z" role="3clFbx">
                    <node concept="3cpWs8" id="5A04Co8Lf9$" role="3cqZAp">
                      <node concept="3cpWsn" id="5A04Co8Lf9_" role="3cpWs9">
                        <property role="TrG5h" value="model" />
                        <node concept="3uibUv" id="5A04Co8Lf9A" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                        </node>
                        <node concept="10QFUN" id="5A04Co8Lf9B" role="33vP2m">
                          <node concept="3uibUv" id="5A04Co8Lf9C" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                          </node>
                          <node concept="37vLTw" id="5A04Co8Lf9D" role="10QFUP">
                            <ref role="3cqZAo" node="5A04Co8Lf9c" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5A04Co8Lf9L" role="3cqZAp">
                      <node concept="3cpWsn" id="5A04Co8Lf9M" role="3cpWs9">
                        <property role="TrG5h" value="diff" />
                        <node concept="3uibUv" id="5A04Co8Lf9N" role="1tU5fm">
                          <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
                        </node>
                        <node concept="2OqwBi" id="5A04Co8Lf9O" role="33vP2m">
                          <node concept="37vLTw" id="5A04Co8Lf9P" role="2Oq$k0">
                            <ref role="3cqZAo" node="2n7wcdLaAWx" resolve="myRegistry" />
                          </node>
                          <node concept="liA8E" id="5A04Co8Lf9Q" role="2OqNvi">
                            <ref role="37wK5l" node="2JwSLRbyYTp" resolve="getCurrentDifference" />
                            <node concept="37vLTw" id="5A04Co8Lf9R" role="37wK5m">
                              <ref role="3cqZAo" node="5A04Co8Lf9_" resolve="model" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4henvQNw8SH" role="3cqZAp">
                      <node concept="3clFbS" id="4henvQNw8SJ" role="3clFbx">
                        <node concept="3cpWs6" id="4henvQNwb15" role="3cqZAp">
                          <node concept="10M0yZ" id="4henvQNwb3f" role="3cqZAk">
                            <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                            <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="4henvQNw8Wi" role="3clFbw">
                        <node concept="2OqwBi" id="4henvQNwaDg" role="3fr31v">
                          <node concept="37vLTw" id="4henvQNw8Ye" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A04Co8Lf9M" resolve="diff" />
                          </node>
                          <node concept="liA8E" id="4henvQNwaZa" role="2OqNvi">
                            <ref role="37wK5l" node="4henvQNvWE8" resolve="isTracked" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5A04Co8Lf9E" role="3cqZAp">
                      <node concept="3clFbS" id="5A04Co8Lf9F" role="3clFbx">
                        <node concept="3cpWs6" id="5A04Co8Lf9G" role="3cqZAp">
                          <node concept="10M0yZ" id="5A04Co8Lf9H" role="3cqZAk">
                            <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                            <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4uLJMq1zK4_" role="3clFbw">
                        <node concept="37vLTw" id="4uLJMq1zJuC" role="2Oq$k0">
                          <ref role="3cqZAo" node="5A04Co8Lf9M" resolve="diff" />
                        </node>
                        <node concept="liA8E" id="4uLJMq1zKtc" role="2OqNvi">
                          <ref role="37wK5l" node="4uLJMq1uato" resolve="isConflicted" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4uLJMq1zKY_" role="3cqZAp">
                      <node concept="3clFbS" id="4uLJMq1zKYB" role="3clFbx">
                        <node concept="3cpWs6" id="4uLJMq1zMvI" role="3cqZAp">
                          <node concept="10M0yZ" id="4uLJMq1zMy6" role="3cqZAk">
                            <ref role="3cqZAo" to="jlcu:~FileStatus.NOT_CHANGED" resolve="NOT_CHANGED" />
                            <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="4uLJMq1zMr$" role="3clFbw">
                        <node concept="10Nm6u" id="4uLJMq1zMtH" role="3uHU7w" />
                        <node concept="2OqwBi" id="4uLJMq1zLCQ" role="3uHU7B">
                          <node concept="37vLTw" id="4uLJMq1zL2m" role="2Oq$k0">
                            <ref role="3cqZAo" node="5A04Co8Lf9M" resolve="diff" />
                          </node>
                          <node concept="liA8E" id="4uLJMq1zM1I" role="2OqNvi">
                            <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5A04Co8Lf9S" role="3cqZAp">
                      <node concept="3cpWsn" id="5A04Co8Lf9T" role="3cpWs9">
                        <property role="TrG5h" value="modelChanges" />
                        <node concept="_YKpA" id="5A04Co8Lf9U" role="1tU5fm">
                          <node concept="3uibUv" id="5A04Co8Lf9V" role="_ZDj9">
                            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                          </node>
                        </node>
                        <node concept="2EnYce" id="5A04Co8Lf9W" role="33vP2m">
                          <node concept="2OqwBi" id="5A04Co8Lf9X" role="2Oq$k0">
                            <node concept="37vLTw" id="5A04Co8Lf9Y" role="2Oq$k0">
                              <ref role="3cqZAo" node="5A04Co8Lf9M" resolve="diff" />
                            </node>
                            <node concept="liA8E" id="5A04Co8Lf9Z" role="2OqNvi">
                              <ref role="37wK5l" node="2JwSLRbzn5Q" resolve="getChangeSet" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5A04Co8Lfa0" role="2OqNvi">
                            <ref role="37wK5l" to="bfxj:3kRMfhMv9tJ" resolve="getModelChanges" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5A04Co8Lfa1" role="3cqZAp">
                      <node concept="3cpWsn" id="5A04Co8Lfa2" role="3cpWs9">
                        <property role="TrG5h" value="rootChanges" />
                        <node concept="_YKpA" id="5A04Co8Lfa3" role="1tU5fm">
                          <node concept="3uibUv" id="5A04Co8Lfa4" role="_ZDj9">
                            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5A04Co8Lfa5" role="33vP2m">
                          <node concept="ANE8D" id="5A04Co8Lfam" role="2OqNvi" />
                          <node concept="2OqwBi" id="4uLJMq1zNhq" role="2Oq$k0">
                            <node concept="2OqwBi" id="5A04Co8Lfa6" role="2Oq$k0">
                              <node concept="37vLTw" id="5A04Co8Lfa7" role="2Oq$k0">
                                <ref role="3cqZAo" node="5A04Co8Lf9T" resolve="modelChanges" />
                              </node>
                              <node concept="3zZkjj" id="5A04Co8Lfa8" role="2OqNvi">
                                <node concept="1bVj0M" id="5A04Co8Lfa9" role="23t8la">
                                  <node concept="3clFbS" id="5A04Co8Lfaa" role="1bW5cS">
                                    <node concept="3clFbF" id="5A04Co8Lfab" role="3cqZAp">
                                      <node concept="2OqwBi" id="5A04Co8Lfac" role="3clFbG">
                                        <node concept="2OqwBi" id="5A04Co8Lfad" role="2Oq$k0">
                                          <node concept="37vLTw" id="5A04Co8Lfae" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2n7wcdLaASF" resolve="root" />
                                          </node>
                                          <node concept="liA8E" id="5A04Co8Lfaf" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="5A04Co8Lfag" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                          <node concept="2OqwBi" id="5A04Co8Lfah" role="37wK5m">
                                            <node concept="37vLTw" id="5A04Co8Lfai" role="2Oq$k0">
                                              <ref role="3cqZAo" node="5W7E4fV0XKO" resolve="ch" />
                                            </node>
                                            <node concept="liA8E" id="5A04Co8Lfaj" role="2OqNvi">
                                              <ref role="37wK5l" to="btf5:3RcDWS$m24_" resolve="getRootId" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="5W7E4fV0XKO" role="1bW2Oz">
                                    <property role="TrG5h" value="ch" />
                                    <node concept="2jxLKc" id="5W7E4fV0XKP" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1VAtEI" id="4uLJMq1zNL$" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5A04Co8Lfan" role="3cqZAp">
                      <node concept="3clFbS" id="5A04Co8Lfao" role="3clFbx">
                        <node concept="3clFbJ" id="5A04Co8Lfap" role="3cqZAp">
                          <node concept="3clFbS" id="5A04Co8Lfaq" role="3clFbx">
                            <node concept="3cpWs6" id="5A04Co8LfaU" role="3cqZAp">
                              <node concept="10M0yZ" id="5A04Co8LfaV" role="3cqZAk">
                                <ref role="3cqZAo" to="jlcu:~FileStatus.ADDED" resolve="ADDED" />
                                <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5A04Co8LfaY" role="3clFbw">
                            <node concept="37vLTw" id="5A04Co8LfaZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="5A04Co8Lfa2" resolve="rootChanges" />
                            </node>
                            <node concept="2HwmR7" id="2cziDBRxLGO" role="2OqNvi">
                              <node concept="1bVj0M" id="2cziDBRxLGQ" role="23t8la">
                                <node concept="3clFbS" id="2cziDBRxLGR" role="1bW5cS">
                                  <node concept="3clFbF" id="2cziDBRxMkm" role="3cqZAp">
                                    <node concept="2ZW3vV" id="2cziDBRxMQq" role="3clFbG">
                                      <node concept="3uibUv" id="2cziDBRxMR7" role="2ZW6by">
                                        <ref role="3uigEE" to="btf5:5x0q8wkvS3B" resolve="AddRootChange" />
                                      </node>
                                      <node concept="37vLTw" id="2cziDBRxMkl" role="2ZW6bz">
                                        <ref role="3cqZAo" node="5W7E4fV0XKQ" resolve="it" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XKQ" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0XKR" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7vnZ8Y07GsM" role="3cqZAp">
                          <node concept="3clFbS" id="7vnZ8Y07GsN" role="3clFbx">
                            <node concept="3cpWs6" id="7vnZ8Y07GsO" role="3cqZAp">
                              <node concept="10M0yZ" id="7vnZ8Y07HG3" role="3cqZAk">
                                <ref role="3cqZAo" to="jlcu:~FileStatus.DELETED" resolve="DELETED" />
                                <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7vnZ8Y07GsQ" role="3clFbw">
                            <node concept="37vLTw" id="7vnZ8Y07GsR" role="2Oq$k0">
                              <ref role="3cqZAo" node="5A04Co8Lfa2" resolve="rootChanges" />
                            </node>
                            <node concept="2HwmR7" id="7vnZ8Y07GsS" role="2OqNvi">
                              <node concept="1bVj0M" id="7vnZ8Y07GsT" role="23t8la">
                                <node concept="3clFbS" id="7vnZ8Y07GsU" role="1bW5cS">
                                  <node concept="3clFbF" id="7vnZ8Y07GsV" role="3cqZAp">
                                    <node concept="2ZW3vV" id="7vnZ8Y07GsW" role="3clFbG">
                                      <node concept="3uibUv" id="7vnZ8Y07Gu8" role="2ZW6by">
                                        <ref role="3uigEE" to="btf5:5x0q8wkvVi1" resolve="DeleteRootChange" />
                                      </node>
                                      <node concept="37vLTw" id="7vnZ8Y07GsY" role="2ZW6bz">
                                        <ref role="3cqZAo" node="5W7E4fV0XKS" resolve="it" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0XKS" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0XKT" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="7vnZ8Y07Gsv" role="3cqZAp" />
                        <node concept="3cpWs6" id="5A04Co8Lfb1" role="3cqZAp">
                          <node concept="10M0yZ" id="5A04Co8Lfb2" role="3cqZAk">
                            <ref role="3cqZAo" to="jlcu:~FileStatus.MODIFIED" resolve="MODIFIED" />
                            <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5A04Co8Lfb5" role="3clFbw">
                        <node concept="37vLTw" id="5A04Co8Lfb6" role="2Oq$k0">
                          <ref role="3cqZAo" node="5A04Co8Lfa2" resolve="rootChanges" />
                        </node>
                        <node concept="3GX2aA" id="4uLJMq1zPo7" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5A04Co8Lfb8" role="3cqZAp">
                  <node concept="10M0yZ" id="5A04Co8Lfb9" role="3cqZAk">
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                    <ref role="3cqZAo" to="jlcu:~FileStatus.NOT_CHANGED" resolve="NOT_CHANGED" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2n7wcdLaASL" role="3cqZAp">
          <node concept="3cpWsn" id="2n7wcdLaASM" role="3cpWs9">
            <property role="TrG5h" value="status" />
            <node concept="3uibUv" id="2n7wcdLaASN" role="1tU5fm">
              <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
            </node>
            <node concept="2OqwBi" id="2n7wcdLaASO" role="33vP2m">
              <node concept="2OqwBi" id="5A04Co8KGo9" role="2Oq$k0">
                <node concept="37vLTw" id="5A04Co8KFHq" role="2Oq$k0">
                  <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
                </node>
                <node concept="liA8E" id="5A04Co8KHqM" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="2n7wcdLaASQ" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="37vLTw" id="5A04Co8LhpA" role="37wK5m">
                  <ref role="3cqZAo" node="5A04Co8Lf96" resolve="cr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4uLJMq1zT7i" role="3cqZAp">
          <node concept="3y3z36" id="4uLJMq1zZsA" role="3cqZAk">
            <node concept="37vLTw" id="4uLJMq1zZuN" role="3uHU7w">
              <ref role="3cqZAo" node="2n7wcdLaASM" resolve="status" />
            </node>
            <node concept="2OqwBi" id="4uLJMq1zUKG" role="3uHU7B">
              <node concept="37vLTw" id="4uLJMq1zTcm" role="2Oq$k0">
                <ref role="3cqZAo" node="2n7wcdLaAW$" resolve="myFileStatusMap" />
              </node>
              <node concept="liA8E" id="4uLJMq1zWc0" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="37vLTw" id="4uLJMq1zWe1" role="37wK5m">
                  <ref role="3cqZAo" node="2n7wcdLaASF" resolve="root" />
                </node>
                <node concept="37vLTw" id="4uLJMq1zYuC" role="37wK5m">
                  <ref role="3cqZAo" node="2n7wcdLaASM" resolve="status" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Ty7LDC$HOU" role="jymVt" />
    <node concept="3clFb_" id="2n7wcdLaAV2" role="jymVt">
      <property role="TrG5h" value="getStatus" />
      <node concept="37vLTG" id="2n7wcdLaAV3" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="2n7wcdLaAV4" role="1tU5fm" />
        <node concept="2AHcQZ" id="2n7wcdLaAV5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="2n7wcdLaAV6" role="3clF45">
        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
      </node>
      <node concept="3Tm1VV" id="2n7wcdLaAV7" role="1B3o_S" />
      <node concept="3clFbS" id="2n7wcdLaAV8" role="3clF47">
        <node concept="3cpWs8" id="2n7wcdLaAV9" role="3cqZAp">
          <node concept="3cpWsn" id="2n7wcdLaAVa" role="3cpWs9">
            <property role="TrG5h" value="nodePointer" />
            <node concept="3uibUv" id="2n7wcdLaAVb" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2ShNRf" id="1KUoCipvCgz" role="33vP2m">
              <node concept="1pGfFk" id="1KUoCipvCg$" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="SNodePointer" />
                <node concept="37vLTw" id="2BHiRxgm6Z_" role="37wK5m">
                  <ref role="3cqZAo" node="2n7wcdLaAV3" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4henvQNwbJl" role="3cqZAp">
          <node concept="3cpWsn" id="4henvQNwbJm" role="3cpWs9">
            <property role="TrG5h" value="existing" />
            <node concept="3uibUv" id="4henvQNwbJn" role="1tU5fm">
              <ref role="3uigEE" node="2JwSLRbyUxe" resolve="CurrentDifference" />
            </node>
            <node concept="2OqwBi" id="4henvQNwc4I" role="33vP2m">
              <node concept="37vLTw" id="4henvQNwbMv" role="2Oq$k0">
                <ref role="3cqZAo" node="2n7wcdLaAWx" resolve="myRegistry" />
              </node>
              <node concept="liA8E" id="4henvQNwcbW" role="2OqNvi">
                <ref role="37wK5l" node="4uLJMq1u4gu" resolve="getExistingCurDifference" />
                <node concept="2OqwBi" id="4henvQNwcnn" role="37wK5m">
                  <node concept="37vLTw" id="4henvQNwceT" role="2Oq$k0">
                    <ref role="3cqZAo" node="2n7wcdLaAVa" resolve="nodePointer" />
                  </node>
                  <node concept="liA8E" id="4henvQNwcuz" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4henvQNwcxL" role="3cqZAp">
          <node concept="3clFbS" id="4henvQNwcxN" role="3clFbx">
            <node concept="3clFbJ" id="4henvQNwcWh" role="3cqZAp">
              <node concept="3clFbS" id="4henvQNwcWj" role="3clFbx">
                <node concept="3cpWs6" id="4henvQNwdjo" role="3cqZAp">
                  <node concept="10M0yZ" id="4henvQNwdlw" role="3cqZAk">
                    <ref role="3cqZAo" to="jlcu:~FileStatus.UNKNOWN" resolve="UNKNOWN" />
                    <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="4henvQNwdhn" role="3clFbw">
                <node concept="2OqwBi" id="4henvQNwdhp" role="3fr31v">
                  <node concept="37vLTw" id="4henvQNwdhq" role="2Oq$k0">
                    <ref role="3cqZAo" node="4henvQNwbJm" resolve="existing" />
                  </node>
                  <node concept="liA8E" id="4henvQNwdhr" role="2OqNvi">
                    <ref role="37wK5l" node="4henvQNvWE8" resolve="isTracked" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4henvQNwdrE" role="3eNLev">
                <node concept="3clFbS" id="4henvQNwdrF" role="3eOfB_">
                  <node concept="3cpWs6" id="4henvQNwdrG" role="3cqZAp">
                    <node concept="10M0yZ" id="4henvQNwdMT" role="3cqZAk">
                      <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                      <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4henvQNwdyX" role="3eO9$A">
                  <node concept="37vLTw" id="4henvQNwdtE" role="2Oq$k0">
                    <ref role="3cqZAo" node="4henvQNwbJm" resolve="existing" />
                  </node>
                  <node concept="liA8E" id="4henvQNwdKF" role="2OqNvi">
                    <ref role="37wK5l" node="4uLJMq1uato" resolve="isConflicted" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4henvQNwcSm" role="3clFbw">
            <node concept="10Nm6u" id="4henvQNwcUl" role="3uHU7w" />
            <node concept="37vLTw" id="4henvQNwc_2" role="3uHU7B">
              <ref role="3cqZAo" node="4henvQNwbJm" resolve="existing" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KUoCipvCgA" role="3cqZAp">
          <node concept="2OqwBi" id="1KUoCipvCgB" role="3clFbG">
            <node concept="2OqwBi" id="1KUoCipvCgC" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeuww5" role="2Oq$k0">
                <ref role="3cqZAo" node="2n7wcdLaAWx" resolve="myRegistry" />
              </node>
              <node concept="liA8E" id="1KUoCipvCgE" role="2OqNvi">
                <ref role="37wK5l" node="2JwSLRbyYWE" resolve="getCommandQueue" />
              </node>
            </node>
            <node concept="liA8E" id="1KUoCipvCgF" role="2OqNvi">
              <ref role="37wK5l" node="3eE6dTgUd0h" resolve="runTask" />
              <node concept="1bVj0M" id="1KUoCipvCgG" role="37wK5m">
                <node concept="3clFbS" id="1KUoCipvCgH" role="1bW5cS">
                  <node concept="3clFbF" id="1KUoCipvCgI" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCipvCgJ" role="3clFbG">
                      <node concept="2OqwBi" id="5A04Co8LBzy" role="2Oq$k0">
                        <node concept="37vLTw" id="5A04Co8LB9$" role="2Oq$k0">
                          <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="5A04Co8LCmm" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1KUoCipvCgL" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                        <node concept="1bVj0M" id="1KUoCipvCgM" role="37wK5m">
                          <node concept="3clFbS" id="1KUoCipvCgN" role="1bW5cS">
                            <node concept="3cpWs8" id="1KUoCipvCgO" role="3cqZAp">
                              <node concept="3cpWsn" id="1KUoCipvCgP" role="3cpWs9">
                                <property role="TrG5h" value="md" />
                                <node concept="3uibUv" id="1KUoCipvCgQ" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="10Nm6u" id="1KUoCipvCgR" role="33vP2m" />
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5A04Co8MhDr" role="3cqZAp">
                              <node concept="3cpWsn" id="5A04Co8MhDs" role="3cpWs9">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="5A04Co8MhDn" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                                <node concept="2OqwBi" id="5A04Co8MhDt" role="33vP2m">
                                  <node concept="37vLTw" id="5A04Co8MhDu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2n7wcdLaAVa" resolve="nodePointer" />
                                  </node>
                                  <node concept="liA8E" id="5A04Co8MhDv" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                    <node concept="2OqwBi" id="5_gUK3iF1Fz" role="37wK5m">
                                      <node concept="37vLTw" id="5_gUK3iF1yL" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5A04Co8KyHu" resolve="myProject" />
                                      </node>
                                      <node concept="liA8E" id="5_gUK3iF2eh" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1KUoCipvCgS" role="3cqZAp">
                              <node concept="3y3z36" id="5A04Co8Mj0$" role="3clFbw">
                                <node concept="10Nm6u" id="5A04Co8Mjc5" role="3uHU7w" />
                                <node concept="37vLTw" id="5A04Co8MiuP" role="3uHU7B">
                                  <ref role="3cqZAo" node="5A04Co8MhDs" resolve="node" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="1KUoCipvCgT" role="3clFbx">
                                <node concept="3clFbF" id="1KUoCipvCgU" role="3cqZAp">
                                  <node concept="37vLTI" id="1KUoCipvCgV" role="3clFbG">
                                    <node concept="2OqwBi" id="1KUoCipvCgX" role="37vLTx">
                                      <node concept="37vLTw" id="2BHiRxgmNGi" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2n7wcdLaAV3" resolve="root" />
                                      </node>
                                      <node concept="I4A8Y" id="1KUoCipvCgZ" role="2OqNvi" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTvHD" role="37vLTJ">
                                      <ref role="3cqZAo" node="1KUoCipvCgP" resolve="md" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1KUoCipvChb" role="3cqZAp">
                              <node concept="1Wc70l" id="1KUoCipvChc" role="3clFbw">
                                <node concept="3fqX7Q" id="1KUoCipvChd" role="3uHU7w">
                                  <node concept="2OqwBi" id="1KUoCipvChe" role="3fr31v">
                                    <node concept="37vLTw" id="1KUoCipvChf" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1KUoCipvCgP" resolve="md" />
                                    </node>
                                    <node concept="liA8E" id="1KUoCipvChg" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2ZW3vV" id="1KUoCipvChh" role="3uHU7B">
                                  <node concept="3uibUv" id="1KUoCipvChi" role="2ZW6by">
                                    <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                  </node>
                                  <node concept="37vLTw" id="3GM_nagTAXk" role="2ZW6bz">
                                    <ref role="3cqZAo" node="1KUoCipvCgP" resolve="md" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="1KUoCipvChk" role="3clFbx">
                                <node concept="3clFbF" id="1KUoCipvChl" role="3cqZAp">
                                  <node concept="2OqwBi" id="1KUoCipvChm" role="3clFbG">
                                    <node concept="2OqwBi" id="1KUoCipvChn" role="2Oq$k0">
                                      <node concept="37vLTw" id="2BHiRxeuW3G" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2n7wcdLaAWx" resolve="myRegistry" />
                                      </node>
                                      <node concept="liA8E" id="1KUoCipvChp" role="2OqNvi">
                                        <ref role="37wK5l" node="2JwSLRbyYTp" resolve="getCurrentDifference" />
                                        <node concept="10QFUN" id="1KUoCipvChq" role="37wK5m">
                                          <node concept="3uibUv" id="1KUoCipvChr" role="10QFUM">
                                            <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                          </node>
                                          <node concept="37vLTw" id="3GM_nagT_WW" role="10QFUP">
                                            <ref role="3cqZAo" node="1KUoCipvCgP" resolve="md" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1KUoCipvCht" role="2OqNvi">
                                      <ref role="37wK5l" node="2JwSLRbzm_p" resolve="setEnabled" />
                                      <node concept="3clFbT" id="1KUoCipvChu" role="37wK5m">
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
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2n7wcdLaAWd" role="3cqZAp">
          <node concept="2OqwBi" id="4uLJMq1$4r4" role="3cqZAk">
            <node concept="37vLTw" id="4uLJMq1$2YX" role="2Oq$k0">
              <ref role="3cqZAo" node="2n7wcdLaAW$" resolve="myFileStatusMap" />
            </node>
            <node concept="liA8E" id="4uLJMq1$5LY" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="4uLJMq1$70b" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAVa" resolve="nodePointer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n7wcdLaAWh" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="qh1hBLab2M" role="jymVt" />
    <node concept="3clFb_" id="2n7wcdLaAWi" role="jymVt">
      <property role="TrG5h" value="getStatus" />
      <node concept="37vLTG" id="2n7wcdLaAWj" role="3clF46">
        <property role="TrG5h" value="nodePointer" />
        <node concept="3uibUv" id="2n7wcdLaAWk" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="2AHcQZ" id="2n7wcdLaAWl" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="2n7wcdLaAWm" role="3clF45">
        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
      </node>
      <node concept="3Tm1VV" id="2n7wcdLaAWn" role="1B3o_S" />
      <node concept="3clFbS" id="2n7wcdLaAWo" role="3clF47">
        <node concept="3cpWs6" id="4uLJMq1$8eg" role="3cqZAp">
          <node concept="2OqwBi" id="4uLJMq1$8eh" role="3cqZAk">
            <node concept="37vLTw" id="4uLJMq1$8ei" role="2Oq$k0">
              <ref role="3cqZAo" node="2n7wcdLaAW$" resolve="myFileStatusMap" />
            </node>
            <node concept="liA8E" id="4uLJMq1$8ej" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="4uLJMq1$8ek" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAWj" resolve="nodePointer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n7wcdLaAWw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="qh1hBLadvO" role="jymVt" />
    <node concept="3clFb_" id="qh1hBLaspL" role="jymVt">
      <property role="TrG5h" value="getNodeFileSystem" />
      <node concept="3uibUv" id="qh1hBLawld" role="3clF45">
        <ref role="3uigEE" to="kip1:~NodeVirtualFileSystem" resolve="NodeVirtualFileSystem" />
      </node>
      <node concept="3Tmbuc" id="qh1hBLauvC" role="1B3o_S" />
      <node concept="3clFbS" id="qh1hBLaspP" role="3clF47">
        <node concept="3cpWs6" id="qh1hBLaBsh" role="3cqZAp">
          <node concept="2YIFZM" id="qh1hBLaFgV" role="3cqZAk">
            <ref role="37wK5l" to="kip1:~NodeVirtualFileSystem.getInstance()" resolve="getInstance" />
            <ref role="1Pybhc" to="kip1:~NodeVirtualFileSystem" resolve="NodeVirtualFileSystem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qh1hBLaeub" role="jymVt" />
    <node concept="312cEu" id="2n7wcdLaAPN" role="jymVt">
      <property role="TrG5h" value="MyGlobalListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="2n7wcdLaAPV" role="1B3o_S" />
      <node concept="3uibUv" id="2n7wcdLaAQ0" role="1zkMxy">
        <ref role="3uigEE" node="5R2TaPUKrqT" resolve="CurrentDifferenceAdapter" />
      </node>
      <node concept="312cEg" id="2n7wcdLaAPO" role="jymVt">
        <property role="TrG5h" value="myAffectedRoots" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2n7wcdLaAPR" role="1B3o_S" />
        <node concept="2ShNRf" id="2n7wcdLaAPS" role="33vP2m">
          <node concept="1pGfFk" id="2VL3PnQEMYz" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
            <node concept="3uibUv" id="2VL3PnQETm9" role="1pMfVU">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="2VL3PnQDZEK" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="2VL3PnQE1YR" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2VL3PnQDYuN" role="jymVt" />
      <node concept="3clFbW" id="2n7wcdLaAPW" role="jymVt">
        <node concept="3cqZAl" id="2n7wcdLaAPX" role="3clF45" />
        <node concept="3Tm6S6" id="2n7wcdLaAPY" role="1B3o_S" />
        <node concept="3clFbS" id="2n7wcdLaAPZ" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="2VL3PnQDXHD" role="jymVt" />
      <node concept="3clFb_" id="2n7wcdLaAQ1" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="changeUpdateFinished" />
        <node concept="3cqZAl" id="2n7wcdLaAQ2" role="3clF45" />
        <node concept="3Tm1VV" id="2n7wcdLaAQ3" role="1B3o_S" />
        <node concept="3clFbS" id="2n7wcdLaAQ4" role="3clF47">
          <node concept="1DcWWT" id="2VL3PnQEXeE" role="3cqZAp">
            <node concept="3clFbS" id="2VL3PnQEXeG" role="2LFqv$">
              <node concept="3clFbF" id="2VL3PnQEY_P" role="3cqZAp">
                <node concept="1rXfSq" id="2VL3PnQEY_N" role="3clFbG">
                  <ref role="37wK5l" node="2n7wcdLaASk" resolve="updateNodeStatus" />
                  <node concept="37vLTw" id="2VL3PnQEYJB" role="37wK5m">
                    <ref role="3cqZAo" node="2VL3PnQEXeH" resolve="ref" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="2VL3PnQEXeH" role="1Duv9x">
              <property role="TrG5h" value="ref" />
              <node concept="3uibUv" id="2VL3PnQEXAR" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
            </node>
            <node concept="37vLTw" id="2VL3PnQEXXD" role="1DdaDG">
              <ref role="3cqZAo" node="2n7wcdLaAPO" resolve="myAffectedRoots" />
            </node>
          </node>
          <node concept="3clFbF" id="2n7wcdLaAQg" role="3cqZAp">
            <node concept="2OqwBi" id="2n7wcdLaAQh" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuv17" role="2Oq$k0">
                <ref role="3cqZAo" node="2n7wcdLaAPO" resolve="myAffectedRoots" />
              </node>
              <node concept="liA8E" id="2VL3PnQEVYL" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.clear()" resolve="clear" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2n7wcdLaAQk" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2VL3PnQDXHE" role="jymVt" />
      <node concept="3clFb_" id="2n7wcdLaAQl" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="addAffectedRoot" />
        <node concept="3cqZAl" id="2n7wcdLaAQm" role="3clF45" />
        <node concept="3Tm6S6" id="2n7wcdLaAQn" role="1B3o_S" />
        <node concept="37vLTG" id="2n7wcdLaAQo" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="2n7wcdLaAQp" role="1tU5fm">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
          <node concept="2AHcQZ" id="2n7wcdLaAQq" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2n7wcdLaAQr" role="3clF47">
          <node concept="3clFbJ" id="2n7wcdLaAQs" role="3cqZAp">
            <node concept="3clFbS" id="2n7wcdLaAQt" role="3clFbx">
              <node concept="3clFbF" id="2n7wcdLaAQu" role="3cqZAp">
                <node concept="2OqwBi" id="2n7wcdLaAQv" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuoQP" role="2Oq$k0">
                    <ref role="3cqZAo" node="2n7wcdLaAPO" resolve="myAffectedRoots" />
                  </node>
                  <node concept="liA8E" id="2VL3PnQF0DT" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="2VL3PnQF14E" role="37wK5m">
                      <node concept="1pGfFk" id="2VL3PnQF14F" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNodePointer" />
                        <node concept="2OqwBi" id="2VL3PnQF14G" role="37wK5m">
                          <node concept="2OqwBi" id="2VL3PnQF14H" role="2Oq$k0">
                            <node concept="2OqwBi" id="2VL3PnQF14I" role="2Oq$k0">
                              <node concept="37vLTw" id="2VL3PnQF14J" role="2Oq$k0">
                                <ref role="3cqZAo" node="2n7wcdLaAQo" resolve="change" />
                              </node>
                              <node concept="liA8E" id="2VL3PnQF14K" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:5x0q8wkvS4u" resolve="getChangeSet" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2VL3PnQF14L" role="2OqNvi">
                              <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                            </node>
                          </node>
                          <node concept="aIX43" id="2VL3PnQF14M" role="2OqNvi" />
                        </node>
                        <node concept="2OqwBi" id="2VL3PnQF14N" role="37wK5m">
                          <node concept="37vLTw" id="2VL3PnQF14O" role="2Oq$k0">
                            <ref role="3cqZAo" node="2n7wcdLaAQo" resolve="change" />
                          </node>
                          <node concept="liA8E" id="2VL3PnQF14P" role="2OqNvi">
                            <ref role="37wK5l" to="btf5:3RcDWS$m24_" resolve="getRootId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="2n7wcdLaAQJ" role="3clFbw">
              <node concept="10Nm6u" id="2n7wcdLaAQK" role="3uHU7w" />
              <node concept="2OqwBi" id="2n7wcdLaAQL" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmqfe" role="2Oq$k0">
                  <ref role="3cqZAo" node="2n7wcdLaAQo" resolve="change" />
                </node>
                <node concept="liA8E" id="2n7wcdLaAQN" role="2OqNvi">
                  <ref role="37wK5l" to="btf5:3RcDWS$m24_" resolve="getRootId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4uLJMq1$dfc" role="jymVt" />
      <node concept="3clFb_" id="2n7wcdLaAQO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="changeAdded" />
        <node concept="3cqZAl" id="2n7wcdLaAQP" role="3clF45" />
        <node concept="3Tm1VV" id="2n7wcdLaAQQ" role="1B3o_S" />
        <node concept="37vLTG" id="2n7wcdLaAQR" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="2n7wcdLaAQS" role="1tU5fm">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
          <node concept="2AHcQZ" id="2n7wcdLaAQT" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2n7wcdLaAQU" role="3clF47">
          <node concept="3clFbF" id="2n7wcdLaAQV" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzkoI" role="3clFbG">
              <ref role="37wK5l" node="2n7wcdLaAQl" resolve="addAffectedRoot" />
              <node concept="37vLTw" id="2BHiRxgheil" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAQR" resolve="change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2n7wcdLaAQY" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2VL3PnQDXHG" role="jymVt" />
      <node concept="3clFb_" id="2n7wcdLaAQZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="changeRemoved" />
        <node concept="3cqZAl" id="2n7wcdLaAR0" role="3clF45" />
        <node concept="3Tm1VV" id="2n7wcdLaAR1" role="1B3o_S" />
        <node concept="37vLTG" id="2n7wcdLaAR2" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="2n7wcdLaAR3" role="1tU5fm">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
          <node concept="2AHcQZ" id="2n7wcdLaAR4" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2n7wcdLaAR5" role="3clF47">
          <node concept="3clFbF" id="2n7wcdLaAR6" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyza4v" role="3clFbG">
              <ref role="37wK5l" node="2n7wcdLaAQl" resolve="addAffectedRoot" />
              <node concept="37vLTw" id="2BHiRxglJTR" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAR2" resolve="change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2n7wcdLaAR9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="3bmhQqpIbBa" role="EKbjA">
      <ref role="3uigEE" to="v23q:~Disposable" resolve="Disposable" />
    </node>
  </node>
  <node concept="312cEu" id="2n7wcdLaAX2">
    <property role="TrG5h" value="NodeFileStatusProvider" />
    <node concept="3Tm1VV" id="2n7wcdLaAX9" role="1B3o_S" />
    <node concept="3uibUv" id="2n7wcdLaAXa" role="EKbjA">
      <ref role="3uigEE" to="j86o:~FileStatusProvider" resolve="FileStatusProvider" />
    </node>
    <node concept="312cEg" id="2n7wcdLaAX3" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3Tm6S6" id="2n7wcdLaAX4" role="1B3o_S" />
      <node concept="3uibUv" id="3RVEVD6wcFc" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="2n7wcdLaAX6" role="jymVt">
      <property role="TrG5h" value="myMapping" />
      <node concept="3Tm6S6" id="2n7wcdLaAX7" role="1B3o_S" />
      <node concept="3uibUv" id="2n7wcdLaAX8" role="1tU5fm">
        <ref role="3uigEE" node="2n7wcdLaAPM" resolve="NodeFileStatusMapping" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Ty7LDC_bWK" role="jymVt" />
    <node concept="3clFbW" id="2n7wcdLaAXb" role="jymVt">
      <node concept="3cqZAl" id="2n7wcdLaAXc" role="3clF45" />
      <node concept="3Tm1VV" id="2n7wcdLaAXd" role="1B3o_S" />
      <node concept="3clFbS" id="2n7wcdLaAXe" role="3clF47">
        <node concept="3clFbF" id="2n7wcdLaAXf" role="3cqZAp">
          <node concept="37vLTI" id="2n7wcdLaAXg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuna0" role="37vLTJ">
              <ref role="3cqZAo" node="2n7wcdLaAX3" resolve="myProject" />
            </node>
            <node concept="2YIFZM" id="6QMYcoz4Mir" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="6QMYcoz4MI6" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAXn" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n7wcdLaAXj" role="3cqZAp">
          <node concept="37vLTI" id="2n7wcdLaAXk" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeukHe" role="37vLTJ">
              <ref role="3cqZAo" node="2n7wcdLaAX6" resolve="myMapping" />
            </node>
            <node concept="2YIFZM" id="4GM5FlLCCNZ" role="37vLTx">
              <ref role="37wK5l" node="3bmhQqpITOL" resolve="getInstance" />
              <ref role="1Pybhc" node="2n7wcdLaAPM" resolve="NodeFileStatusMapping" />
              <node concept="37vLTw" id="4GM5FlLCDb8" role="37wK5m">
                <ref role="3cqZAo" node="2n7wcdLaAXn" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2n7wcdLaAXn" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="2AHcQZ" id="2n7wcdLaAXp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6QMYcoz4KMD" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Ty7LDC_dqB" role="jymVt" />
    <node concept="3clFb_" id="2n7wcdLaAXt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFileStatus" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2n7wcdLaAXu" role="1B3o_S" />
      <node concept="3uibUv" id="2n7wcdLaAXv" role="3clF45">
        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
      </node>
      <node concept="37vLTG" id="2n7wcdLaAXw" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="2n7wcdLaAXx" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3clFbS" id="2n7wcdLaAXy" role="3clF47">
        <node concept="3clFbJ" id="2n7wcdLaAXz" role="3cqZAp">
          <node concept="3fqX7Q" id="1Dm62SvZPy9" role="3clFbw">
            <node concept="2ZW3vV" id="2n7wcdLaAY9" role="3fr31v">
              <node concept="3uibUv" id="2tq39vtPwGv" role="2ZW6by">
                <ref role="3uigEE" to="kip1:~MPSNodeVirtualFile" resolve="MPSNodeVirtualFile" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmtxp" role="2ZW6bz">
                <ref role="3cqZAo" node="2n7wcdLaAXw" resolve="file" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1Dm62SvZPya" role="3clFbx">
            <node concept="3cpWs6" id="1Dm62SvZPye" role="3cqZAp">
              <node concept="10Nm6u" id="1Dm62SvZPyg" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1f5ttTfP$vf" role="3cqZAp" />
        <node concept="3cpWs8" id="2n7wcdLaAX_" role="3cqZAp">
          <node concept="3cpWsn" id="2n7wcdLaAXA" role="3cpWs9">
            <property role="TrG5h" value="nodeFile" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2n7wcdLaAXB" role="1tU5fm">
              <ref role="3uigEE" to="kip1:~MPSNodeVirtualFile" resolve="MPSNodeVirtualFile" />
            </node>
            <node concept="10QFUN" id="2n7wcdLaAXC" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmyrL" role="10QFUP">
                <ref role="3cqZAo" node="2n7wcdLaAXw" resolve="file" />
              </node>
              <node concept="3uibUv" id="2n7wcdLaAXE" role="10QFUM">
                <ref role="3uigEE" to="kip1:~MPSNodeVirtualFile" resolve="MPSNodeVirtualFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2R7EsbQP1Z_" role="3cqZAp" />
        <node concept="3cpWs6" id="3RVEVD6wh8C" role="3cqZAp">
          <node concept="2OqwBi" id="3RVEVD6wBVb" role="3cqZAk">
            <node concept="2ShNRf" id="3RVEVD6whgk" role="2Oq$k0">
              <node concept="1pGfFk" id="3RVEVD6wBA9" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                <node concept="2OqwBi" id="3RVEVD6wgjZ" role="37wK5m">
                  <node concept="37vLTw" id="3RVEVD6wga_" role="2Oq$k0">
                    <ref role="3cqZAo" node="2n7wcdLaAX3" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="3RVEVD6wg$d" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3RVEVD6wC5q" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
              <node concept="2ShNRf" id="3RVEVD6wHmW" role="37wK5m">
                <node concept="YeOm9" id="3RVEVD6wIrS" role="2ShVmc">
                  <node concept="1Y3b0j" id="3RVEVD6wIrV" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3RVEVD6wIrW" role="1B3o_S" />
                    <node concept="3clFb_" id="3RVEVD6wIrX" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="compute" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="3RVEVD6wIrY" role="1B3o_S" />
                      <node concept="3uibUv" id="3RVEVD6wISV" role="3clF45">
                        <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                      </node>
                      <node concept="3clFbS" id="3RVEVD6wIs1" role="3clF47">
                        <node concept="3cpWs8" id="2n7wcdLaAXF" role="3cqZAp">
                          <node concept="3cpWsn" id="2n7wcdLaAXG" role="3cpWs9">
                            <property role="TrG5h" value="root" />
                            <node concept="3Tqbb2" id="2n7wcdLaAXH" role="1tU5fm" />
                            <node concept="2YIFZM" id="5OP79TD_Ia6" role="33vP2m">
                              <ref role="37wK5l" to="k3nr:~MPSEditorUtil.getCurrentEditedNodeFromTabbedEditor(com.intellij.openapi.project.Project,jetbrains.mps.nodefs.MPSNodeVirtualFile)" resolve="getCurrentEditedNodeFromTabbedEditor" />
                              <ref role="1Pybhc" to="k3nr:~MPSEditorUtil" resolve="MPSEditorUtil" />
                              <node concept="2OqwBi" id="5OP79TD_Ia7" role="37wK5m">
                                <node concept="37vLTw" id="5OP79TD_Ia8" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2n7wcdLaAX3" resolve="myProject" />
                                </node>
                                <node concept="liA8E" id="5OP79TD_Ia9" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5OP79TD_Iaa" role="37wK5m">
                                <ref role="3cqZAo" node="2n7wcdLaAXA" resolve="nodeFile" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="$rBR5oPkb_" role="3cqZAp">
                          <node concept="3clFbS" id="$rBR5oPkbC" role="3clFbx">
                            <node concept="3clFbF" id="$rBR5oP$9G" role="3cqZAp">
                              <node concept="37vLTI" id="$rBR5oP$9H" role="3clFbG">
                                <node concept="37vLTw" id="$rBR5oP_jJ" role="37vLTJ">
                                  <ref role="3cqZAo" node="2n7wcdLaAXG" resolve="root" />
                                </node>
                                <node concept="2EnYce" id="4PYeHCbw1ap" role="37vLTx">
                                  <node concept="2OqwBi" id="$rBR5oP$ei" role="2Oq$k0">
                                    <node concept="37vLTw" id="$rBR5oPDPO" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2n7wcdLaAXA" resolve="nodeFile" />
                                    </node>
                                    <node concept="liA8E" id="$rBR5oP$ej" role="2OqNvi">
                                      <ref role="37wK5l" to="kip1:~MPSNodeVirtualFile.getNode()" resolve="getNode" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="$rBR5oP$9Y" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="$rBR5oPknC" role="3clFbw">
                            <node concept="10Nm6u" id="$rBR5oPknR" role="3uHU7w" />
                            <node concept="37vLTw" id="$rBR5oPkid" role="3uHU7B">
                              <ref role="3cqZAo" node="2n7wcdLaAXG" resolve="root" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="2n7wcdLaAXL" role="3cqZAp">
                          <node concept="3clFbS" id="2n7wcdLaAXM" role="3clFbx">
                            <node concept="3cpWs6" id="2R7EsbQP2Tx" role="3cqZAp">
                              <node concept="10Nm6u" id="3RVEVD6wJut" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="22lmx$" id="4PYeHCbw2Zs" role="3clFbw">
                            <node concept="3clFbC" id="4PYeHCbw2Ls" role="3uHU7B">
                              <node concept="10Nm6u" id="4PYeHCbw2UA" role="3uHU7w" />
                              <node concept="37vLTw" id="4PYeHCbw2yf" role="3uHU7B">
                                <ref role="3cqZAo" node="2n7wcdLaAXG" resolve="root" />
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="3RVEVD6wKf7" role="3uHU7w">
                              <node concept="2YIFZM" id="3RVEVD6wKf9" role="3fr31v">
                                <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
                                <ref role="37wK5l" to="mhbf:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository)" resolve="isAccessible" />
                                <node concept="37vLTw" id="3RVEVD6wKfa" role="37wK5m">
                                  <ref role="3cqZAo" node="2n7wcdLaAXG" resolve="root" />
                                </node>
                                <node concept="2OqwBi" id="3RVEVD6wKfb" role="37wK5m">
                                  <node concept="37vLTw" id="3RVEVD6wKfc" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2n7wcdLaAX3" resolve="myProject" />
                                  </node>
                                  <node concept="liA8E" id="3RVEVD6wKfd" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="3RVEVD6wCHp" role="3cqZAp">
                          <node concept="2OqwBi" id="3RVEVD6wDfO" role="3cqZAk">
                            <node concept="37vLTw" id="3RVEVD6wDfP" role="2Oq$k0">
                              <ref role="3cqZAo" node="2n7wcdLaAX6" resolve="myMapping" />
                            </node>
                            <node concept="liA8E" id="3RVEVD6wDfQ" role="2OqNvi">
                              <ref role="37wK5l" node="2n7wcdLaAV2" resolve="getStatus" />
                              <node concept="37vLTw" id="3RVEVD6wDfR" role="37wK5m">
                                <ref role="3cqZAo" node="2n7wcdLaAXG" resolve="root" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="3RVEVD6wIIn" role="2Ghqu4">
                      <ref role="3uigEE" to="jlcu:~FileStatus" resolve="FileStatus" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Sd11" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

