<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f7252e75-44f2-46f6-9600-c9b291e7dd5f(jetbrains.mps.vcs.platform.integration)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="p37l" ref="r:df1b052a-af27-4b87-80fc-1492fa2192be(jetbrains.mps.vcs.diff.ui)" />
    <import index="ur19" ref="r:d58d9938-2526-431c-a5fe-6bbbfeb64ac2(jetbrains.mps.vcs.util)" />
    <import index="wenr" ref="r:351fe3d9-2ce5-4ea0-8afc-9b076259a949(jetbrains.mps.vcs.diff.ui.merge)" />
    <import index="4rb9" ref="r:e4939376-be00-4167-9510-67715eca6425(jetbrains.mps.vcs.platform.util)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ok99" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.diff(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="s9o5" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.editor(MPS.IDEA/)" />
    <import index="tcg7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.fileTypes(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="4hrd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.vfs(MPS.Platform/)" />
    <import index="fglx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileTypes(MPS.IDEA/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="pgpb" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor.warningPanel(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="bmv6" ref="r:e9c4e128-4808-4224-a92b-dbeed02eb860(jetbrains.mps.vcs.diff.merge)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="iho" ref="r:57faf072-5a23-4c30-9cf6-da73f0e0a8ad(jetbrains.mps.vcspersistence)" />
    <import index="yt4f" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff(MPS.IDEA/)" />
    <import index="phib" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.requests(MPS.IDEA/)" />
    <import index="2o8p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.contents(MPS.IDEA/)" />
    <import index="o8e1" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.merge(MPS.IDEA/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="hdhb" ref="r:07568eb8-30c0-4bb3-9dcb-50ee4b8de59a(jetbrains.mps.vcs.diff.ui.common)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="mk90" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="24bc" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.vfs.tracking(MPS.Platform/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="r8xq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.actions(MPS.IDEA/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="j86o" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.openapi.vcs.impl(jetbrains.mps.vcs.idea.stubs/)" />
    <import index="hlwo" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.merge(MPS.IDEA/)" />
    <import index="1037" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes(MPS.IDEA/)" />
    <import index="18nx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.checkin(MPS.IDEA/)" />
    <import index="4zvo" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.ui(MPS.IDEA/)" />
    <import index="ov6m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui.messages(MPS.IDEA/)" />
    <import index="yt4g" ref="f35cbfcb-ea50-4f20-9d5c-c765fbd8fd3b/java:com.intellij.diff(jetbrains.mps.vcs.idea.stubs/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
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
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
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
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="5351203823916832286" name="jetbrains.mps.baseLanguage.structure.ResourceVariable" flags="ng" index="3J1hQo" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
        <child id="5351203823916750334" name="resource" index="3J1_TS" />
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
      <concept id="8974276187400348177" name="jetbrains.mps.lang.access.structure.ExecuteCommandStatement" flags="nn" index="1QHqEO" />
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
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
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
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240247536947" name="jetbrains.mps.baseLanguage.collections.structure.TreeSetCreator" flags="nn" index="34wSKj">
        <child id="2261417478148778174" name="comparator" index="uyce9" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="4CjKsJms80r">
    <property role="TrG5h" value="OptimizeImportsCheckinHandler" />
    <node concept="312cEg" id="4CjKsJms80U" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3uibUv" id="4CjKsJms80V" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="4CjKsJms80W" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4CjKsJms80X" role="jymVt">
      <property role="TrG5h" value="myPanel" />
      <node concept="3uibUv" id="4CjKsJms80Y" role="1tU5fm">
        <ref role="3uigEE" to="jlcu:~CheckinProjectPanel" resolve="CheckinProjectPanel" />
      </node>
      <node concept="3Tm6S6" id="4CjKsJms80Z" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="4CjKsJms810" role="jymVt">
      <node concept="3clFbS" id="4CjKsJms817" role="3clF47">
        <node concept="3clFbF" id="4CjKsJms818" role="3cqZAp">
          <node concept="37vLTI" id="4CjKsJms819" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm$88" role="37vLTx">
              <ref role="3cqZAo" node="4CjKsJms813" resolve="project" />
            </node>
            <node concept="2OqwBi" id="4CjKsJms81a" role="37vLTJ">
              <node concept="Xjq3P" id="4CjKsJms81c" role="2Oq$k0" />
              <node concept="2OwXpG" id="4CjKsJms81b" role="2OqNvi">
                <ref role="2Oxat5" node="4CjKsJms80U" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4CjKsJms81e" role="3cqZAp">
          <node concept="37vLTI" id="4CjKsJms81f" role="3clFbG">
            <node concept="2OqwBi" id="4CjKsJms81g" role="37vLTJ">
              <node concept="2OwXpG" id="4CjKsJms81h" role="2OqNvi">
                <ref role="2Oxat5" node="4CjKsJms80X" resolve="myPanel" />
              </node>
              <node concept="Xjq3P" id="4CjKsJms81i" role="2Oq$k0" />
            </node>
            <node concept="37vLTw" id="2BHiRxglzDd" role="37vLTx">
              <ref role="3cqZAo" node="4CjKsJms815" resolve="panel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4CjKsJms811" role="1B3o_S" />
      <node concept="37vLTG" id="4CjKsJms813" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4CjKsJms814" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="4CjKsJms815" role="3clF46">
        <property role="TrG5h" value="panel" />
        <node concept="3uibUv" id="4CjKsJms816" role="1tU5fm">
          <ref role="3uigEE" to="jlcu:~CheckinProjectPanel" resolve="CheckinProjectPanel" />
        </node>
      </node>
      <node concept="3cqZAl" id="4CjKsJms812" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4CjKsJms81k" role="jymVt">
      <property role="TrG5h" value="getSettings" />
      <node concept="3Tmbuc" id="4CjKsJms81l" role="1B3o_S" />
      <node concept="3uibUv" id="4CjKsJms81m" role="3clF45">
        <ref role="3uigEE" to="jlcu:~VcsConfiguration" resolve="VcsConfiguration" />
      </node>
      <node concept="3clFbS" id="4CjKsJms81n" role="3clF47">
        <node concept="3cpWs6" id="4CjKsJms81o" role="3cqZAp">
          <node concept="2YIFZM" id="4CjKsJms81p" role="3cqZAk">
            <ref role="1Pybhc" to="jlcu:~VcsConfiguration" resolve="VcsConfiguration" />
            <ref role="37wK5l" to="jlcu:~VcsConfiguration.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
            <node concept="37vLTw" id="2BHiRxeuW1t" role="37wK5m">
              <ref role="3cqZAo" node="4CjKsJms80U" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4CjKsJms81r" role="jymVt">
      <property role="TrG5h" value="getBeforeCheckinConfigurationPanel" />
      <node concept="3Tm1VV" id="4CjKsJms81s" role="1B3o_S" />
      <node concept="3uibUv" id="4CjKsJms81t" role="3clF45">
        <ref role="3uigEE" to="4zvo:~RefreshableOnComponent" resolve="RefreshableOnComponent" />
      </node>
      <node concept="3clFbS" id="4CjKsJms81u" role="3clF47">
        <node concept="3cpWs8" id="4CjKsJms81v" role="3cqZAp">
          <node concept="3cpWsn" id="4CjKsJms81w" role="3cpWs9">
            <property role="TrG5h" value="optimizeImportsCheckBox" />
            <property role="3TUv4t" value="true" />
            <node concept="2ShNRf" id="4CjKsJms81y" role="33vP2m">
              <node concept="1pGfFk" id="4CjKsJms81z" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String)" resolve="JCheckBox" />
                <node concept="Xl_RD" id="4CjKsJms81$" role="37wK5m">
                  <property role="Xl_RC" value="Optimize model imports" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="4CjKsJms81x" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4CjKsJms81_" role="3cqZAp">
          <node concept="2ShNRf" id="4CjKsJms81A" role="3cqZAk">
            <node concept="YeOm9" id="4CjKsJms81B" role="2ShVmc">
              <node concept="1Y3b0j" id="4CjKsJms81C" role="YeSDq">
                <property role="TrG5h" value="" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <ref role="1Y3XeK" to="4zvo:~RefreshableOnComponent" resolve="RefreshableOnComponent" />
                <node concept="3clFb_" id="4CjKsJms81D" role="jymVt">
                  <property role="TrG5h" value="getComponent" />
                  <node concept="3clFbS" id="4CjKsJms81G" role="3clF47">
                    <node concept="3cpWs6" id="4CjKsJms81V" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTub0" role="3cqZAk">
                        <ref role="3cqZAo" node="4CjKsJms81w" resolve="optimizeImportsCheckBox" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="4CjKsJms81F" role="3clF45">
                    <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                  </node>
                  <node concept="3Tm1VV" id="4CjKsJms81E" role="1B3o_S" />
                  <node concept="2AHcQZ" id="3tYsUK_SfMd" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3clFb_" id="4CjKsJms81X" role="jymVt">
                  <property role="TrG5h" value="restoreState" />
                  <node concept="3Tm1VV" id="4CjKsJms81Y" role="1B3o_S" />
                  <node concept="3cqZAl" id="4CjKsJms81Z" role="3clF45" />
                  <node concept="3clFbS" id="4CjKsJms820" role="3clF47">
                    <node concept="3clFbF" id="4CjKsJms821" role="3cqZAp">
                      <node concept="2OqwBi" id="4CjKsJms822" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTvdk" role="2Oq$k0">
                          <ref role="3cqZAo" node="4CjKsJms81w" resolve="optimizeImportsCheckBox" />
                        </node>
                        <node concept="liA8E" id="4CjKsJms824" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
                          <node concept="2OqwBi" id="4CjKsJms825" role="37wK5m">
                            <node concept="2OwXpG" id="4CjKsJms826" role="2OqNvi">
                              <ref role="2Oxat5" to="jlcu:~VcsConfiguration.OPTIMIZE_IMPORTS_BEFORE_PROJECT_COMMIT" resolve="OPTIMIZE_IMPORTS_BEFORE_PROJECT_COMMIT" />
                            </node>
                            <node concept="1rXfSq" id="4hiugqyyZvL" role="2Oq$k0">
                              <ref role="37wK5l" node="4CjKsJms81k" resolve="getSettings" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="3tYsUK_SfMe" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3clFb_" id="4CjKsJms828" role="jymVt">
                  <property role="TrG5h" value="saveState" />
                  <node concept="3Tm1VV" id="4CjKsJms829" role="1B3o_S" />
                  <node concept="3cqZAl" id="4CjKsJms82a" role="3clF45" />
                  <node concept="3clFbS" id="4CjKsJms82b" role="3clF47">
                    <node concept="3clFbF" id="4CjKsJms82c" role="3cqZAp">
                      <node concept="37vLTI" id="4CjKsJms82d" role="3clFbG">
                        <node concept="2OqwBi" id="4CjKsJms82h" role="37vLTx">
                          <node concept="liA8E" id="4CjKsJms82j" role="2OqNvi">
                            <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTBLO" role="2Oq$k0">
                            <ref role="3cqZAo" node="4CjKsJms81w" resolve="optimizeImportsCheckBox" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4CjKsJms82e" role="37vLTJ">
                          <node concept="1rXfSq" id="4hiugqyzcKA" role="2Oq$k0">
                            <ref role="37wK5l" node="4CjKsJms81k" resolve="getSettings" />
                          </node>
                          <node concept="2OwXpG" id="4CjKsJms82f" role="2OqNvi">
                            <ref role="2Oxat5" to="jlcu:~VcsConfiguration.OPTIMIZE_IMPORTS_BEFORE_PROJECT_COMMIT" resolve="OPTIMIZE_IMPORTS_BEFORE_PROJECT_COMMIT" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="3tYsUK_SfMc" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3clFb_" id="4CjKsJms82k" role="jymVt">
                  <property role="TrG5h" value="refresh" />
                  <node concept="3Tm1VV" id="4CjKsJms82l" role="1B3o_S" />
                  <node concept="3clFbS" id="4CjKsJms82n" role="3clF47" />
                  <node concept="3cqZAl" id="4CjKsJms82m" role="3clF45" />
                  <node concept="2AHcQZ" id="3tYsUK_SfMf" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4CjKsJms82o" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4CjKsJms82p" role="jymVt">
      <property role="TrG5h" value="beforeCheckin" />
      <node concept="3uibUv" id="4CjKsJms82r" role="3clF45">
        <ref role="3uigEE" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
      </node>
      <node concept="3Tm1VV" id="4CjKsJms82q" role="1B3o_S" />
      <node concept="3clFbS" id="4CjKsJms82s" role="3clF47">
        <node concept="3cpWs8" id="4CjKsJms83g" role="3cqZAp">
          <node concept="3cpWsn" id="4CjKsJms83h" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5wEedBrv32U" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2YIFZM" id="6IL1Wh7s25p" role="33vP2m">
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <node concept="37vLTw" id="6IL1Wh7s25q" role="37wK5m">
                <ref role="3cqZAo" node="4CjKsJms80U" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4CjKsJms82t" role="3cqZAp">
          <node concept="1Wc70l" id="6y_kxB20CRU" role="3clFbw">
            <node concept="3y3z36" id="6y_kxB20D5e" role="3uHU7w">
              <node concept="10Nm6u" id="6y_kxB20D72" role="3uHU7w" />
              <node concept="37vLTw" id="6y_kxB20D1K" role="3uHU7B">
                <ref role="3cqZAo" node="4CjKsJms83h" resolve="mpsProject" />
              </node>
            </node>
            <node concept="2OqwBi" id="4CjKsJms82u" role="3uHU7B">
              <node concept="1rXfSq" id="4hiugqyz9UF" role="2Oq$k0">
                <ref role="37wK5l" node="4CjKsJms81k" resolve="getSettings" />
              </node>
              <node concept="2OwXpG" id="4CjKsJms82v" role="2OqNvi">
                <ref role="2Oxat5" to="jlcu:~VcsConfiguration.OPTIMIZE_IMPORTS_BEFORE_PROJECT_COMMIT" resolve="OPTIMIZE_IMPORTS_BEFORE_PROJECT_COMMIT" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4CjKsJms82x" role="3clFbx">
            <node concept="3cpWs8" id="6IL1Wh7t8Ng" role="3cqZAp">
              <node concept="3cpWsn" id="6IL1Wh7t8Nh" role="3cpWs9">
                <property role="TrG5h" value="repository" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="6IL1Wh7t8Nb" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
                <node concept="2OqwBi" id="6IL1Wh7t8Ni" role="33vP2m">
                  <node concept="37vLTw" id="6IL1Wh7t8Nj" role="2Oq$k0">
                    <ref role="3cqZAo" node="4CjKsJms83h" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="6IL1Wh7t8Nk" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6y_kxB20BG2" role="3cqZAp">
              <node concept="3cpWsn" id="6y_kxB20BG3" role="3cpWs9">
                <property role="TrG5h" value="modelFileTracker" />
                <node concept="3uibUv" id="6y_kxB20BFV" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
                </node>
                <node concept="2YIFZM" id="6y_kxB20BG4" role="33vP2m">
                  <ref role="1Pybhc" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
                  <ref role="37wK5l" to="w1kc:~SModelFileTracker.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                  <node concept="37vLTw" id="6IL1Wh7t8Nl" role="37wK5m">
                    <ref role="3cqZAo" node="6IL1Wh7t8Nh" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4CjKsJms82y" role="3cqZAp">
              <node concept="3cpWsn" id="4CjKsJms82z" role="3cpWs9">
                <property role="TrG5h" value="affectedFiles" />
                <node concept="2OqwBi" id="4CjKsJms82A" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxeujmN" role="2Oq$k0">
                    <ref role="3cqZAo" node="4CjKsJms80X" resolve="myPanel" />
                  </node>
                  <node concept="liA8E" id="4CjKsJms82C" role="2OqNvi">
                    <ref role="37wK5l" to="jlcu:~CheckinProjectPanel.getVirtualFiles()" resolve="getVirtualFiles" />
                  </node>
                </node>
                <node concept="3uibUv" id="4CjKsJms82$" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                  <node concept="3uibUv" id="4CjKsJms82_" role="11_B2D">
                    <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7d67DGPXHcS" role="3cqZAp">
              <node concept="1PaTwC" id="7d67DGPXHcT" role="1aUNEU">
                <node concept="3oM_SD" id="7kmLdYdYghs" role="1PaTwD">
                  <property role="3oM_SC" value="note," />
                </node>
                <node concept="3oM_SD" id="7kmLdYdYglI" role="1PaTwD">
                  <property role="3oM_SC" value="unlike" />
                </node>
                <node concept="3oM_SD" id="7kmLdYdYgde" role="1PaTwD">
                  <property role="3oM_SC" value="getVirtualFiles," />
                </node>
                <node concept="3oM_SD" id="7kmLdYdYgdb" role="1PaTwD">
                  <property role="3oM_SC" value="getFiles" />
                </node>
                <node concept="3oM_SD" id="7d67DGPXHN5" role="1PaTwD">
                  <property role="3oM_SC" value="gives" />
                </node>
                <node concept="3oM_SD" id="7d67DGPXHPR" role="1PaTwD">
                  <property role="3oM_SC" value="deleted" />
                </node>
                <node concept="3oM_SD" id="7d67DGPXHVB" role="1PaTwD">
                  <property role="3oM_SC" value="files" />
                </node>
                <node concept="3oM_SD" id="7d67DGPXHVI" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="7d67DGPXHVQ" role="1PaTwD">
                  <property role="3oM_SC" value="well" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4CjKsJms82D" role="3cqZAp">
              <node concept="3cpWsn" id="4CjKsJms82E" role="3cpWs9">
                <property role="TrG5h" value="affectedModels" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="4CjKsJms82F" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="4CjKsJms82G" role="11_B2D">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                </node>
                <node concept="2ShNRf" id="4CjKsJms82H" role="33vP2m">
                  <node concept="1pGfFk" id="4CjKsJms82I" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="4CjKsJms82J" role="1pMfVU">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="4CjKsJms82O" role="3cqZAp">
              <node concept="3cpWsn" id="4CjKsJms82Q" role="1Duv9x">
                <property role="TrG5h" value="file" />
                <node concept="3uibUv" id="4CjKsJms82R" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTw4G" role="1DdaDG">
                <ref role="3cqZAo" node="4CjKsJms82z" resolve="affectedFiles" />
              </node>
              <node concept="3clFbS" id="4CjKsJms82S" role="2LFqv$">
                <node concept="3cpWs8" id="4CjKsJms82T" role="3cqZAp">
                  <node concept="3cpWsn" id="4CjKsJms82U" role="3cpWs9">
                    <property role="TrG5h" value="model" />
                    <node concept="3uibUv" id="4CjKsJms82V" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="4CjKsJms82W" role="33vP2m">
                      <node concept="37vLTw" id="6y_kxB20BG8" role="2Oq$k0">
                        <ref role="3cqZAo" node="6y_kxB20BG3" resolve="modelFileTracker" />
                      </node>
                      <node concept="liA8E" id="4CjKsJms82Y" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~SModelFileTracker.findModel(jetbrains.mps.vfs.IFile)" resolve="findModel" />
                        <node concept="2OqwBi" id="4CjKsJms82Z" role="37wK5m">
                          <node concept="liA8E" id="4CjKsJms831" role="2OqNvi">
                            <ref role="37wK5l" to="4hrd:~IdeaFileSystem.fromVirtualFile(com.intellij.openapi.vfs.VirtualFile)" resolve="fromVirtualFile" />
                            <node concept="37vLTw" id="3GM_nagTyjw" role="37wK5m">
                              <ref role="3cqZAo" node="4CjKsJms82Q" resolve="file" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7kmLdYdY6rf" role="2Oq$k0">
                            <node concept="37vLTw" id="7kmLdYdY4t7" role="2Oq$k0">
                              <ref role="3cqZAo" node="4CjKsJms83h" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="7kmLdYdY8vK" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4CjKsJms835" role="3cqZAp">
                  <node concept="3clFbC" id="4CjKsJms836" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTsDc" role="3uHU7B">
                      <ref role="3cqZAo" node="4CjKsJms82U" resolve="model" />
                    </node>
                    <node concept="10Nm6u" id="4CjKsJms838" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="4CjKsJms839" role="3clFbx">
                    <node concept="3N13vt" id="4CjKsJms83a" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbF" id="4CjKsJms83b" role="3cqZAp">
                  <node concept="2OqwBi" id="4CjKsJms83c" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTB$O" role="2Oq$k0">
                      <ref role="3cqZAo" node="4CjKsJms82E" resolve="affectedModels" />
                    </node>
                    <node concept="liA8E" id="4CjKsJms83e" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="3GM_nagTtJS" role="37wK5m">
                        <ref role="3cqZAo" node="4CjKsJms82U" resolve="model" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4CjKsJms83n" role="3cqZAp">
              <node concept="2YIFZM" id="4CjKsJms83o" role="3clFbG">
                <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                <ref role="37wK5l" to="3a50:~ThreadUtils.assertEDT()" resolve="assertEDT" />
              </node>
            </node>
            <node concept="3SKdUt" id="6IL1Wh7vmy6" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXomlh" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXomli" role="1PaTwD">
                  <property role="3oM_SC" value="TODO:" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomlj" role="1PaTwD">
                  <property role="3oM_SC" value="extract" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomlk" role="1PaTwD">
                  <property role="3oM_SC" value="common" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomll" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomlm" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomln" role="1PaTwD">
                  <property role="3oM_SC" value="OptimizeModelImports" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6IL1Wh7sg2E" role="3cqZAp">
              <node concept="3cpWsn" id="6IL1Wh7sg2F" role="3cpWs9">
                <property role="TrG5h" value="task" />
                <node concept="3uibUv" id="6IL1Wh7sg2G" role="1tU5fm">
                  <ref role="3uigEE" to="xygl:~Task$Modal" resolve="Task.Modal" />
                </node>
                <node concept="2ShNRf" id="6IL1Wh7sgqe" role="33vP2m">
                  <node concept="YeOm9" id="6IL1Wh7sQi9" role="2ShVmc">
                    <node concept="1Y3b0j" id="6IL1Wh7sQic" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                      <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                      <node concept="3Tm1VV" id="6IL1Wh7sQid" role="1B3o_S" />
                      <node concept="3clFb_" id="6IL1Wh7sQig" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="run" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="6IL1Wh7sQih" role="1B3o_S" />
                        <node concept="3cqZAl" id="6IL1Wh7sQij" role="3clF45" />
                        <node concept="37vLTG" id="6IL1Wh7sQik" role="3clF46">
                          <property role="TrG5h" value="indicator" />
                          <node concept="3uibUv" id="6IL1Wh7sQil" role="1tU5fm">
                            <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                          </node>
                          <node concept="2AHcQZ" id="6IL1Wh7sQim" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6IL1Wh7sQin" role="3clF47">
                          <node concept="3cpWs8" id="fZRHvh7P0G" role="3cqZAp">
                            <node concept="3cpWsn" id="fZRHvh7P0H" role="3cpWs9">
                              <property role="TrG5h" value="monitor" />
                              <node concept="3uibUv" id="fZRHvh7P0I" role="1tU5fm">
                                <ref role="3uigEE" to="mk8z:~ProgressMonitorAdapter" resolve="ProgressMonitorAdapter" />
                              </node>
                              <node concept="2ShNRf" id="fZRHvh7P0J" role="33vP2m">
                                <node concept="1pGfFk" id="fZRHvh7P0K" role="2ShVmc">
                                  <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                  <node concept="37vLTw" id="6IL1Wh7sXDY" role="37wK5m">
                                    <ref role="3cqZAo" node="6IL1Wh7sQik" resolve="indicator" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3J1_TO" id="6IL1Wh7tuST" role="3cqZAp">
                            <node concept="3clFbS" id="4CjKsJms83$" role="1zxBo7">
                              <node concept="3cpWs8" id="fZRHvh7P0M" role="3cqZAp">
                                <node concept="3cpWsn" id="fZRHvh7P0N" role="3cpWs9">
                                  <property role="TrG5h" value="modelsNumber" />
                                  <node concept="10Oyi0" id="fZRHvh7P0O" role="1tU5fm" />
                                  <node concept="2OqwBi" id="6IL1Wh7t6Zb" role="33vP2m">
                                    <node concept="37vLTw" id="6IL1Wh7t62c" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4CjKsJms82E" resolve="affectedModels" />
                                    </node>
                                    <node concept="liA8E" id="6IL1Wh7t7yS" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="fZRHvh7P0U" role="3cqZAp">
                                <node concept="2OqwBi" id="fZRHvh7P0V" role="3clFbG">
                                  <node concept="37vLTw" id="fZRHvh7P0W" role="2Oq$k0">
                                    <ref role="3cqZAo" node="fZRHvh7P0H" resolve="monitor" />
                                  </node>
                                  <node concept="liA8E" id="fZRHvh7P0X" role="2OqNvi">
                                    <ref role="37wK5l" to="mk90:~ProgressMonitorBase.start(java.lang.String,int)" resolve="start" />
                                    <node concept="3cpWs3" id="7OGkmhG50oB" role="37wK5m">
                                      <node concept="Xl_RD" id="7OGkmhG50DF" role="3uHU7w">
                                        <property role="Xl_RC" value=" models" />
                                      </node>
                                      <node concept="3cpWs3" id="7OGkmhG4ZH3" role="3uHU7B">
                                        <node concept="Xl_RD" id="fZRHvh7P0Y" role="3uHU7B">
                                          <property role="Xl_RC" value="Optimizing imports of " />
                                        </node>
                                        <node concept="37vLTw" id="7OGkmhG4ZYF" role="3uHU7w">
                                          <ref role="3cqZAo" node="fZRHvh7P0N" resolve="modelsNumber" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="3ccJEjee2sm" role="37wK5m">
                                      <ref role="3cqZAo" node="fZRHvh7P0N" resolve="modelsNumber" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4wCBdnn49vU" role="3cqZAp">
                                <node concept="2YIFZM" id="4wCBdnn49vW" role="3clFbG">
                                  <ref role="1Pybhc" to="9w4s:~WaitForProgressToShow" resolve="WaitForProgressToShow" />
                                  <ref role="37wK5l" to="9w4s:~WaitForProgressToShow.runOrInvokeAndWaitAboveProgress(java.lang.Runnable)" resolve="runOrInvokeAndWaitAboveProgress" />
                                  <node concept="1bVj0M" id="4wCBdnn49vY" role="37wK5m">
                                    <node concept="3clFbS" id="4wCBdnn49w0" role="1bW5cS" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="6IL1Wh7tkU1" role="3cqZAp" />
                              <node concept="3cpWs8" id="fZRHvh7P12" role="3cqZAp">
                                <node concept="3cpWsn" id="fZRHvh7P13" role="3cpWs9">
                                  <property role="TrG5h" value="helper" />
                                  <node concept="3uibUv" id="fZRHvh7P14" role="1tU5fm">
                                    <ref role="3uigEE" to="z1c3:~OptimizeImportsHelper" resolve="OptimizeImportsHelper" />
                                  </node>
                                  <node concept="2ShNRf" id="fZRHvh7P15" role="33vP2m">
                                    <node concept="1pGfFk" id="fZRHvh7P16" role="2ShVmc">
                                      <ref role="37wK5l" to="z1c3:~OptimizeImportsHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.project.ModelsAutoImportsManager)" resolve="OptimizeImportsHelper" />
                                      <node concept="37vLTw" id="6IL1Wh7tj$p" role="37wK5m">
                                        <ref role="3cqZAo" node="6IL1Wh7t8Nh" resolve="repository" />
                                      </node>
                                      <node concept="2OqwBi" id="7d67DGPXKt6" role="37wK5m">
                                        <node concept="37vLTw" id="7d67DGPXJOu" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4CjKsJms83h" resolve="mpsProject" />
                                        </node>
                                        <node concept="liA8E" id="7d67DGPXKM0" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                                          <node concept="3VsKOn" id="7d67DGPXLAr" role="37wK5m">
                                            <ref role="3VsUkX" to="z1c3:~ModelsAutoImportsManager" resolve="ModelsAutoImportsManager" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7yIn7aXpTY2" role="3cqZAp">
                                <node concept="2OqwBi" id="7yIn7aXpUDW" role="3clFbG">
                                  <node concept="2YIFZM" id="7yIn7aXpUv9" role="2Oq$k0">
                                    <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                    <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                  </node>
                                  <node concept="liA8E" id="7yIn7aXpVmZ" role="2OqNvi">
                                    <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
                                    <node concept="1bVj0M" id="7yIn7aXpWXp" role="37wK5m">
                                      <node concept="3clFbS" id="7yIn7aXpWXr" role="1bW5cS">
                                        <node concept="1QHqEO" id="7yIn7aXpZ3o" role="3cqZAp">
                                          <node concept="1QHqEC" id="7yIn7aXpZ3p" role="1QHqEI">
                                            <node concept="3clFbS" id="7yIn7aXpZ3q" role="1bW5cS">
                                              <node concept="3clFbF" id="6IL1Wh7tor7" role="3cqZAp">
                                                <node concept="2OqwBi" id="4wCBdnn6Oxp" role="3clFbG">
                                                  <node concept="37vLTw" id="4wCBdnn6Oxq" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="fZRHvh7P13" resolve="helper" />
                                                  </node>
                                                  <node concept="liA8E" id="4wCBdnn6Oxr" role="2OqNvi">
                                                    <ref role="37wK5l" to="z1c3:~OptimizeImportsHelper.optimizeModelsImports(java.util.List,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="optimizeModelsImports" />
                                                    <node concept="37vLTw" id="6IL1Wh7tn50" role="37wK5m">
                                                      <ref role="3cqZAo" node="4CjKsJms82E" resolve="affectedModels" />
                                                    </node>
                                                    <node concept="2OqwBi" id="4wCBdnn6Oxv" role="37wK5m">
                                                      <node concept="37vLTw" id="4wCBdnn6Oxw" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="fZRHvh7P0H" resolve="monitor" />
                                                      </node>
                                                      <node concept="liA8E" id="4wCBdnn6Oxx" role="2OqNvi">
                                                        <ref role="37wK5l" to="mk90:~ProgressMonitorBase.subTask(int)" resolve="subTask" />
                                                        <node concept="37vLTw" id="3ccJEjee2Lf" role="37wK5m">
                                                          <ref role="3cqZAo" node="fZRHvh7P0N" resolve="modelsNumber" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="6IL1Wh7tkKg" role="ukAjM">
                                            <ref role="3cqZAo" node="6IL1Wh7t8Nh" resolve="repository" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2YIFZM" id="6IL1Wh7tpzX" role="37wK5m">
                                      <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
                                      <ref role="37wK5l" to="bd8o:~ModalityState.current()" resolve="current" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="fZRHvh7P1Z" role="3cqZAp">
                                <node concept="3clFbS" id="fZRHvh7P20" role="3clFbx">
                                  <node concept="3cpWs6" id="fZRHvh7P21" role="3cqZAp" />
                                </node>
                                <node concept="2OqwBi" id="fZRHvh7P22" role="3clFbw">
                                  <node concept="37vLTw" id="fZRHvh7P23" role="2Oq$k0">
                                    <ref role="3cqZAo" node="fZRHvh7P0H" resolve="monitor" />
                                  </node>
                                  <node concept="liA8E" id="fZRHvh7P24" role="2OqNvi">
                                    <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.isCanceled()" resolve="isCanceled" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="fZRHvh7P2a" role="3cqZAp">
                                <node concept="2OqwBi" id="fZRHvh7P2b" role="3clFbG">
                                  <node concept="37vLTw" id="fZRHvh7P2c" role="2Oq$k0">
                                    <ref role="3cqZAo" node="fZRHvh7P0H" resolve="monitor" />
                                  </node>
                                  <node concept="liA8E" id="fZRHvh7P2d" role="2OqNvi">
                                    <ref role="37wK5l" to="mk90:~ProgressMonitorBase.step(java.lang.String)" resolve="step" />
                                    <node concept="Xl_RD" id="fZRHvh7P2e" role="37wK5m">
                                      <property role="Xl_RC" value="Saving..." />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="fZRHvh7P2f" role="3cqZAp">
                                <node concept="2YIFZM" id="fZRHvh7P2g" role="3clFbG">
                                  <ref role="1Pybhc" to="9w4s:~WaitForProgressToShow" resolve="WaitForProgressToShow" />
                                  <ref role="37wK5l" to="9w4s:~WaitForProgressToShow.runOrInvokeAndWaitAboveProgress(java.lang.Runnable)" resolve="runOrInvokeAndWaitAboveProgress" />
                                  <node concept="1bVj0M" id="fZRHvh7P2h" role="37wK5m">
                                    <node concept="3clFbS" id="fZRHvh7P2i" role="1bW5cS">
                                      <node concept="3clFbF" id="fZRHvh7P2j" role="3cqZAp">
                                        <node concept="2OqwBi" id="fZRHvh7P2k" role="3clFbG">
                                          <node concept="liA8E" id="fZRHvh7P2l" role="2OqNvi">
                                            <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                                            <node concept="1bVj0M" id="fZRHvh7P2m" role="37wK5m">
                                              <node concept="3clFbS" id="fZRHvh7P2n" role="1bW5cS">
                                                <node concept="1DcWWT" id="6IL1Wh7trF$" role="3cqZAp">
                                                  <node concept="37vLTw" id="6IL1Wh7trF_" role="1DdaDG">
                                                    <ref role="3cqZAo" node="4CjKsJms82E" resolve="affectedModels" />
                                                  </node>
                                                  <node concept="3clFbS" id="6IL1Wh7trFA" role="2LFqv$">
                                                    <node concept="3clFbF" id="6IL1Wh7trFB" role="3cqZAp">
                                                      <node concept="2OqwBi" id="6IL1Wh7trFC" role="3clFbG">
                                                        <node concept="1eOMI4" id="6IL1Wh7trFD" role="2Oq$k0">
                                                          <node concept="10QFUN" id="6IL1Wh7trFE" role="1eOMHV">
                                                            <node concept="3uibUv" id="6IL1Wh7trFF" role="10QFUM">
                                                              <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                                            </node>
                                                            <node concept="37vLTw" id="6IL1Wh7trFG" role="10QFUP">
                                                              <ref role="3cqZAo" node="6IL1Wh7trFI" resolve="affectedModel" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="6IL1Wh7trFH" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~EditableSModel.save()" resolve="save" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3cpWsn" id="6IL1Wh7trFI" role="1Duv9x">
                                                    <property role="TrG5h" value="affectedModel" />
                                                    <node concept="3uibUv" id="6IL1Wh7trFJ" role="1tU5fm">
                                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="fZRHvh7P2s" role="2Oq$k0">
                                            <node concept="liA8E" id="fZRHvh7P2t" role="2OqNvi">
                                              <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                                            </node>
                                            <node concept="37vLTw" id="6IL1Wh7trhq" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6IL1Wh7t8Nh" resolve="repository" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="fZRHvh7P2v" role="3cqZAp">
                                <node concept="2OqwBi" id="fZRHvh7P2w" role="3clFbG">
                                  <node concept="37vLTw" id="fZRHvh7P2x" role="2Oq$k0">
                                    <ref role="3cqZAo" node="fZRHvh7P0H" resolve="monitor" />
                                  </node>
                                  <node concept="liA8E" id="fZRHvh7P2y" role="2OqNvi">
                                    <ref role="37wK5l" to="mk90:~ProgressMonitorBase.advance(int)" resolve="advance" />
                                    <node concept="3cmrfG" id="6DRNpvPQk4N" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="6IL1Wh7ttF7" role="3cqZAp" />
                            </node>
                            <node concept="3uVAMA" id="4CjKsJms83q" role="1zxBo5">
                              <node concept="XOnhg" id="4CjKsJms83y" role="1zc67B">
                                <property role="3TUv4t" value="false" />
                                <property role="TrG5h" value="e" />
                                <node concept="nSUau" id="xvs04dIfLu" role="1tU5fm">
                                  <node concept="3uibUv" id="4CjKsJms83z" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="4CjKsJms83r" role="1zc67A">
                                <node concept="RRSsy" id="6V2p7ItLnqN" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="Xl_RD" id="4CjKsJms83w" role="RRSoy">
                                    <property role="Xl_RC" value="Couldn't optimize imports before commit" />
                                  </node>
                                  <node concept="37vLTw" id="6V2p7ItLs88" role="RRSow">
                                    <ref role="3cqZAo" node="4CjKsJms83y" resolve="e" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1wplmZ" id="xvs04dIpjn" role="1zxBo6">
                              <node concept="3clFbS" id="6IL1Wh7tuSW" role="1wplMD">
                                <node concept="3clFbF" id="fZRHvh7P2$" role="3cqZAp">
                                  <node concept="2OqwBi" id="fZRHvh7P2_" role="3clFbG">
                                    <node concept="37vLTw" id="fZRHvh7P2A" role="2Oq$k0">
                                      <ref role="3cqZAo" node="fZRHvh7P0H" resolve="monitor" />
                                    </node>
                                    <node concept="liA8E" id="fZRHvh7P2B" role="2OqNvi">
                                      <ref role="37wK5l" to="mk90:~ProgressMonitorBase.done()" resolve="done" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6IL1Wh7t0ku" role="37wK5m">
                        <node concept="Xjq3P" id="6IL1Wh7sZll" role="2Oq$k0" />
                        <node concept="2OwXpG" id="6IL1Wh7t0yh" role="2OqNvi">
                          <ref role="2Oxat5" node="4CjKsJms80U" resolve="myProject" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6IL1Wh7sUWt" role="37wK5m">
                        <property role="Xl_RC" value="Optimizing model imports" />
                      </node>
                      <node concept="3clFbT" id="6IL1Wh7sUyo" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4CjKsJms84f" role="3cqZAp">
          <node concept="Rm8GO" id="7ua3Cx1dEwZ" role="3cqZAk">
            <ref role="Rm8GQ" to="18nx:~CheckinHandler$ReturnResult.COMMIT" resolve="COMMIT" />
            <ref role="1Px2BO" to="18nx:~CheckinHandler$ReturnResult" resolve="CheckinHandler.ReturnResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4CjKsJms84h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="312cEu" id="4CjKsJms80u" role="jymVt">
      <property role="TrG5h" value="OptimizeImportsCheckinHandlerFactory" />
      <node concept="3clFbW" id="4CjKsJms80x" role="jymVt">
        <node concept="3cqZAl" id="4CjKsJms80z" role="3clF45" />
        <node concept="3Tm1VV" id="4CjKsJms80y" role="1B3o_S" />
        <node concept="3clFbS" id="4CjKsJms80$" role="3clF47" />
      </node>
      <node concept="3uibUv" id="4CjKsJms80w" role="1zkMxy">
        <ref role="3uigEE" to="18nx:~CheckinHandlerFactory" resolve="CheckinHandlerFactory" />
      </node>
      <node concept="3Tm1VV" id="4CjKsJms80v" role="1B3o_S" />
      <node concept="3clFb_" id="4CjKsJms80_" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="createHandler" />
        <property role="DiZV1" value="false" />
        <node concept="37vLTG" id="4CjKsJms80C" role="3clF46">
          <property role="TrG5h" value="panel" />
          <node concept="3uibUv" id="4CjKsJms80D" role="1tU5fm">
            <ref role="3uigEE" to="jlcu:~CheckinProjectPanel" resolve="CheckinProjectPanel" />
          </node>
        </node>
        <node concept="37vLTG" id="4CjKsJms80E" role="3clF46">
          <property role="TrG5h" value="context" />
          <node concept="3uibUv" id="4CjKsJms80F" role="1tU5fm">
            <ref role="3uigEE" to="1037:~CommitContext" resolve="CommitContext" />
          </node>
        </node>
        <node concept="3clFbS" id="4CjKsJms80H" role="3clF47">
          <node concept="3cpWs6" id="4CjKsJms80I" role="3cqZAp">
            <node concept="2ShNRf" id="4CjKsJms80J" role="3cqZAk">
              <node concept="1pGfFk" id="4CjKsJms80K" role="2ShVmc">
                <ref role="37wK5l" node="4CjKsJms810" resolve="OptimizeImportsCheckinHandler" />
                <node concept="2OqwBi" id="4CjKsJms80L" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgm5So" role="2Oq$k0">
                    <ref role="3cqZAo" node="4CjKsJms80C" resolve="panel" />
                  </node>
                  <node concept="liA8E" id="4CjKsJms80N" role="2OqNvi">
                    <ref role="37wK5l" to="jlcu:~CheckinProjectPanel.getProject()" resolve="getProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxgmay9" role="37wK5m">
                  <ref role="3cqZAo" node="4CjKsJms80C" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4CjKsJms80G" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4CjKsJms80B" role="3clF45">
          <ref role="3uigEE" to="18nx:~CheckinHandler" resolve="CheckinHandler" />
        </node>
        <node concept="3Tm1VV" id="4CjKsJms80A" role="1B3o_S" />
        <node concept="2AHcQZ" id="3tYsUK_Sd0k" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4CjKsJms80s" role="1B3o_S" />
    <node concept="3uibUv" id="4CjKsJms80t" role="1zkMxy">
      <ref role="3uigEE" to="18nx:~CheckinHandler" resolve="CheckinHandler" />
    </node>
  </node>
  <node concept="312cEu" id="6KmbN9hT7Qr">
    <property role="TrG5h" value="ConflictingModelsWarnings" />
    <node concept="3clFbW" id="6KmbN9hT7QW" role="jymVt">
      <node concept="3cqZAl" id="6KmbN9hT7QX" role="3clF45" />
      <node concept="3Tm1VV" id="6KmbN9hT7QY" role="1B3o_S" />
      <node concept="3clFbS" id="6KmbN9hT7QZ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="eUUR2W0OGy" role="jymVt" />
    <node concept="3clFb_" id="6KmbN9hT7R1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getWarningPanel" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6KmbN9hT7Rb" role="3clF47">
        <node concept="3cpWs8" id="6KmbN9hT7Rc" role="3cqZAp">
          <node concept="3cpWsn" id="6KmbN9hT7Rd" role="3cpWs9">
            <property role="TrG5h" value="md" />
            <node concept="2OqwBi" id="6KmbN9hT7Rg" role="33vP2m">
              <node concept="liA8E" id="6KmbN9hT7Ri" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
              <node concept="37vLTw" id="2BHiRxglt86" role="2Oq$k0">
                <ref role="3cqZAo" node="6KmbN9hT7R4" resolve="node" />
              </node>
            </node>
            <node concept="3uibUv" id="6KmbN9hT7Re" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6qMd1Cr5oqs" role="3cqZAp">
          <node concept="3clFbS" id="6qMd1Cr5oqu" role="3clFbx">
            <node concept="3cpWs6" id="6qMd1Cr5qQy" role="3cqZAp">
              <node concept="10Nm6u" id="6qMd1Cr5r4m" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6qMd1Cr5pR_" role="3clFbw">
            <node concept="10Nm6u" id="6qMd1Cr5qzO" role="3uHU7w" />
            <node concept="37vLTw" id="6qMd1Cr5p6C" role="3uHU7B">
              <ref role="3cqZAo" node="6KmbN9hT7Rd" resolve="md" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="eUUR2W1oR7" role="3cqZAp">
          <node concept="3cpWsn" id="eUUR2W1oR8" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="eUUR2W1oR9" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="eUUR2W1saw" role="33vP2m">
              <node concept="37vLTw" id="eUUR2W1p6S" role="2Oq$k0">
                <ref role="3cqZAo" node="6KmbN9hT7Rd" resolve="md" />
              </node>
              <node concept="liA8E" id="3G5Nwf9xnGm" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6qMd1Cr5tEg" role="3cqZAp">
          <node concept="3cpWsn" id="6qMd1Cr5tEh" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="6qMd1Cr5tEi" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="6qMd1Cr5uqE" role="33vP2m">
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <node concept="37vLTw" id="6qMd1Cr5uFD" role="37wK5m">
                <ref role="3cqZAo" node="6KmbN9hT7R7" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6qMd1Cr5vAz" role="3cqZAp">
          <node concept="3clFbS" id="6qMd1Cr5vA_" role="3clFbx">
            <node concept="3cpWs6" id="6qMd1Cr5Bh6" role="3cqZAp">
              <node concept="10Nm6u" id="6qMd1Cr5C27" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="6qMd1Cr5ya2" role="3clFbw">
            <node concept="3fqX7Q" id="6qMd1Cr5ySN" role="3uHU7w">
              <node concept="2OqwBi" id="6qMd1Cr5$Ki" role="3fr31v">
                <node concept="2OqwBi" id="6qMd1Cr5zwx" role="2Oq$k0">
                  <node concept="37vLTw" id="6qMd1Cr5z7o" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qMd1Cr5tEh" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="6qMd1Cr5zQO" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getProjectModulesWithGenerators()" resolve="getProjectModulesWithGenerators" />
                  </node>
                </node>
                <node concept="liA8E" id="6qMd1Cr5AbT" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                  <node concept="37vLTw" id="6qMd1Cr5ANC" role="37wK5m">
                    <ref role="3cqZAo" node="eUUR2W1oR8" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="6qMd1Cr5xdp" role="3uHU7B">
              <node concept="37vLTw" id="6qMd1Cr5wna" role="3uHU7B">
                <ref role="3cqZAo" node="6qMd1Cr5tEh" resolve="mpsProject" />
              </node>
              <node concept="10Nm6u" id="6qMd1Cr5xrd" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6KmbN9hT7Rk" role="3cqZAp">
          <node concept="3cpWsn" id="6KmbN9hT7Rl" role="3cpWs9">
            <property role="TrG5h" value="modelFiles" />
            <node concept="_YKpA" id="2LgKyNIVft_" role="1tU5fm">
              <node concept="3uibUv" id="2LgKyNIVkwW" role="_ZDj9">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
            <node concept="2YIFZM" id="6KmbN9hT7Rm" role="33vP2m">
              <ref role="37wK5l" to="4rb9:60S3DtlPd_$" resolve="getConflictingModelFiles" />
              <ref role="1Pybhc" to="4rb9:60S3DtlPd_3" resolve="ConflictsUtil" />
              <node concept="37vLTw" id="3GM_nagTsSe" role="37wK5m">
                <ref role="3cqZAo" node="6KmbN9hT7Rd" resolve="md" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm7ho" role="37wK5m">
                <ref role="3cqZAo" node="6KmbN9hT7R7" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6KmbN9hT7Rq" role="3cqZAp">
          <node concept="3cpWsn" id="6KmbN9hT7Rr" role="3cpWs9">
            <property role="TrG5h" value="moduleFiles" />
            <node concept="2YIFZM" id="6KmbN9hT7Rs" role="33vP2m">
              <ref role="37wK5l" to="4rb9:60S3DtlPdAo" resolve="getConflictingModuleFiles" />
              <ref role="1Pybhc" to="4rb9:60S3DtlPd_3" resolve="ConflictsUtil" />
              <node concept="2EnYce" id="6KmbN9hT7Rt" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTBHD" role="2Oq$k0">
                  <ref role="3cqZAo" node="6KmbN9hT7Rd" resolve="md" />
                </node>
                <node concept="liA8E" id="6KmbN9hT7Rv" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgmkkz" role="37wK5m">
                <ref role="3cqZAo" node="6KmbN9hT7R7" resolve="project" />
              </node>
            </node>
            <node concept="_YKpA" id="2LgKyNIXbIc" role="1tU5fm">
              <node concept="3uibUv" id="2LgKyNIXhtE" role="_ZDj9">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6KmbN9hT7Ry" role="3cqZAp">
          <node concept="9aQIb" id="6KmbN9hT7Sz" role="9aQIa">
            <node concept="3clFbS" id="6KmbN9hT7S$" role="9aQI4">
              <node concept="3clFbJ" id="6KmbN9hT7S_" role="3cqZAp">
                <node concept="2OqwBi" id="2LgKyNIVQAU" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTuHI" role="2Oq$k0">
                    <ref role="3cqZAo" node="6KmbN9hT7Rl" resolve="modelFiles" />
                  </node>
                  <node concept="3GX2aA" id="2LgKyNIVY0l" role="2OqNvi" />
                </node>
                <node concept="9aQIb" id="6KmbN9hT7SU" role="9aQIa">
                  <node concept="3clFbS" id="6KmbN9hT7SV" role="9aQI4">
                    <node concept="3cpWs6" id="6KmbN9hT7SW" role="3cqZAp">
                      <node concept="10Nm6u" id="6KmbN9hT7SX" role="3cqZAk" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6KmbN9hT7SA" role="3clFbx">
                  <node concept="3SKdUt" id="6KmbN9hT7SB" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXomp9" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXompa" role="1PaTwD">
                        <property role="3oM_SC" value="conflicting" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXompb" role="1PaTwD">
                        <property role="3oM_SC" value="model" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6KmbN9hT7SD" role="3cqZAp">
                    <node concept="2ShNRf" id="6KmbN9hT7SE" role="3cqZAk">
                      <node concept="1pGfFk" id="6KmbN9hT7SF" role="2ShVmc">
                        <ref role="37wK5l" to="pgpb:~WarningPanel.&lt;init&gt;(jetbrains.mps.ide.editor.warningPanel.EditorWarningsProvider,java.lang.String,java.lang.String,java.lang.Runnable)" resolve="WarningPanel" />
                        <node concept="Xjq3P" id="6KmbN9hT7SG" role="37wK5m" />
                        <node concept="3cpWs3" id="6KmbN9hT7SH" role="37wK5m">
                          <node concept="Xl_RD" id="6KmbN9hT7SI" role="3uHU7B">
                            <property role="Xl_RC" value="You are viewing model which is not merged yet. You may see very old version of it." />
                          </node>
                          <node concept="Xl_RD" id="6KmbN9hT7SJ" role="3uHU7w">
                            <property role="Xl_RC" value=" You need to merge it before editing, otherwise your changes will be lost." />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6KmbN9hT7SK" role="37wK5m">
                          <property role="Xl_RC" value="Merge Model" />
                        </node>
                        <node concept="1bVj0M" id="6KmbN9hT7SL" role="37wK5m">
                          <node concept="3clFbS" id="6KmbN9hT7SM" role="1bW5cS">
                            <node concept="3clFbF" id="2LgKyNJ0lnJ" role="3cqZAp">
                              <node concept="2OqwBi" id="2LgKyNJ0lnK" role="3clFbG">
                                <node concept="2YIFZM" id="2LgKyNJ0lnL" role="2Oq$k0">
                                  <ref role="1Pybhc" to="jlcu:~AbstractVcsHelper" resolve="AbstractVcsHelper" />
                                  <ref role="37wK5l" to="jlcu:~AbstractVcsHelper.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                  <node concept="37vLTw" id="2LgKyNJ0lnM" role="37wK5m">
                                    <ref role="3cqZAo" node="6KmbN9hT7R7" resolve="project" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2LgKyNJ0lnN" role="2OqNvi">
                                  <ref role="37wK5l" to="jlcu:~AbstractVcsHelper.showMergeDialog(java.util.List)" resolve="showMergeDialog" />
                                  <node concept="37vLTw" id="2LgKyNJ0plV" role="37wK5m">
                                    <ref role="3cqZAo" node="6KmbN9hT7Rl" resolve="modelFiles" />
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
          <node concept="2OqwBi" id="2LgKyNIXuNL" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT_kH" role="2Oq$k0">
              <ref role="3cqZAo" node="6KmbN9hT7Rr" resolve="moduleFiles" />
            </node>
            <node concept="3GX2aA" id="2LgKyNIXEm$" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6KmbN9hT7Rz" role="3clFbx">
            <node concept="3cpWs8" id="6KmbN9hT7R$" role="3cqZAp">
              <node concept="3cpWsn" id="6KmbN9hT7R_" role="3cpWs9">
                <property role="TrG5h" value="type" />
                <node concept="1rXfSq" id="4hiugqysg$b" role="33vP2m">
                  <ref role="37wK5l" node="6KmbN9hT7Qs" resolve="getModuleType" />
                  <node concept="2OqwBi" id="256tImPkKya" role="37wK5m">
                    <node concept="liA8E" id="256tImPkKyb" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTsyv" role="2Oq$k0">
                      <ref role="3cqZAo" node="6KmbN9hT7Rd" resolve="md" />
                    </node>
                  </node>
                </node>
                <node concept="17QB3L" id="6KmbN9hT7RA" role="1tU5fm" />
              </node>
            </node>
            <node concept="1gVbGN" id="6KmbN9hT7RF" role="3cqZAp">
              <node concept="3y3z36" id="6KmbN9hT7RG" role="1gVkn0">
                <node concept="10Nm6u" id="6KmbN9hT7RH" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagT$iL" role="3uHU7B">
                  <ref role="3cqZAo" node="6KmbN9hT7R_" resolve="type" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6KmbN9hT7RJ" role="3cqZAp">
              <node concept="2OqwBi" id="2LgKyNIVpsE" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTybJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6KmbN9hT7Rl" resolve="modelFiles" />
                </node>
                <node concept="3GX2aA" id="2LgKyNIVwB2" role="2OqNvi" />
              </node>
              <node concept="9aQIb" id="6KmbN9hT7Sb" role="9aQIa">
                <node concept="3clFbS" id="6KmbN9hT7Sc" role="9aQI4">
                  <node concept="3SKdUt" id="6KmbN9hT7Sd" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXompc" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXompd" role="1PaTwD">
                        <property role="3oM_SC" value="conflicting" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXompe" role="1PaTwD">
                        <property role="3oM_SC" value="module" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6KmbN9hT7Sf" role="3cqZAp">
                    <node concept="2ShNRf" id="6KmbN9hT7Sg" role="3cqZAk">
                      <node concept="1pGfFk" id="6KmbN9hT7Sh" role="2ShVmc">
                        <ref role="37wK5l" to="pgpb:~WarningPanel.&lt;init&gt;(jetbrains.mps.ide.editor.warningPanel.EditorWarningsProvider,java.lang.String,java.lang.String,java.lang.Runnable)" resolve="WarningPanel" />
                        <node concept="Xjq3P" id="6KmbN9hT7Si" role="37wK5m" />
                        <node concept="2YIFZM" id="6KmbN9hT7Sj" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                          <node concept="Xl_RD" id="6KmbN9hT7Sk" role="37wK5m">
                            <property role="Xl_RC" value="You are viewing model owned by %s which is not merged yet. You need to merge it before editing." />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTtVg" role="37wK5m">
                            <ref role="3cqZAo" node="6KmbN9hT7R_" resolve="type" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="6KmbN9hT7Sm" role="37wK5m">
                          <node concept="2YIFZM" id="6KmbN9hT7Sn" role="3uHU7w">
                            <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                            <ref role="37wK5l" to="18ew:~NameUtil.capitalize(java.lang.String)" resolve="capitalize" />
                            <node concept="37vLTw" id="3GM_nagTrGs" role="37wK5m">
                              <ref role="3cqZAo" node="6KmbN9hT7R_" resolve="type" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6KmbN9hT7Sp" role="3uHU7B">
                            <property role="Xl_RC" value="Merge " />
                          </node>
                        </node>
                        <node concept="1bVj0M" id="6KmbN9hT7Sq" role="37wK5m">
                          <node concept="3clFbS" id="6KmbN9hT7Sr" role="1bW5cS">
                            <node concept="3clFbF" id="2LgKyNIZZmv" role="3cqZAp">
                              <node concept="2OqwBi" id="2LgKyNIZZmw" role="3clFbG">
                                <node concept="2YIFZM" id="2LgKyNIZZmx" role="2Oq$k0">
                                  <ref role="1Pybhc" to="jlcu:~AbstractVcsHelper" resolve="AbstractVcsHelper" />
                                  <ref role="37wK5l" to="jlcu:~AbstractVcsHelper.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                  <node concept="37vLTw" id="2LgKyNIZZmy" role="37wK5m">
                                    <ref role="3cqZAo" node="6KmbN9hT7R7" resolve="project" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2LgKyNIZZmz" role="2OqNvi">
                                  <ref role="37wK5l" to="jlcu:~AbstractVcsHelper.showMergeDialog(java.util.List)" resolve="showMergeDialog" />
                                  <node concept="37vLTw" id="2LgKyNIZZm_" role="37wK5m">
                                    <ref role="3cqZAo" node="6KmbN9hT7Rr" resolve="moduleFiles" />
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
              <node concept="3clFbS" id="6KmbN9hT7RK" role="3clFbx">
                <node concept="3SKdUt" id="6KmbN9hT7RL" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXompf" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXompg" role="1PaTwD">
                      <property role="3oM_SC" value="conflicting" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomph" role="1PaTwD">
                      <property role="3oM_SC" value="model" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXompi" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXompj" role="1PaTwD">
                      <property role="3oM_SC" value="module" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6KmbN9hT7RN" role="3cqZAp">
                  <node concept="2ShNRf" id="6KmbN9hT7RO" role="3cqZAk">
                    <node concept="1pGfFk" id="6KmbN9hT7RP" role="2ShVmc">
                      <ref role="37wK5l" to="pgpb:~WarningPanel.&lt;init&gt;(jetbrains.mps.ide.editor.warningPanel.EditorWarningsProvider,java.lang.String,java.lang.String,java.lang.Runnable)" resolve="WarningPanel" />
                      <node concept="Xjq3P" id="6KmbN9hT7RQ" role="37wK5m" />
                      <node concept="2YIFZM" id="6KmbN9hT7RR" role="37wK5m">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                        <node concept="3cpWs3" id="6KmbN9hT7RS" role="37wK5m">
                          <node concept="Xl_RD" id="6KmbN9hT7RT" role="3uHU7B">
                            <property role="Xl_RC" value="You are viewing model which is not merged yet. It is owned by %s, which is merged neither." />
                          </node>
                          <node concept="Xl_RD" id="6KmbN9hT7RU" role="3uHU7w">
                            <property role="Xl_RC" value=" You need to merge %s and model (this order is important)." />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3GM_nagTA$b" role="37wK5m">
                          <ref role="3cqZAo" node="6KmbN9hT7R_" resolve="type" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTuBz" role="37wK5m">
                          <ref role="3cqZAo" node="6KmbN9hT7R_" resolve="type" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="6KmbN9hT7RX" role="37wK5m">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                        <node concept="Xl_RD" id="6KmbN9hT7RY" role="37wK5m">
                          <property role="Xl_RC" value="Merge %s and Model" />
                        </node>
                        <node concept="2YIFZM" id="6KmbN9hT7RZ" role="37wK5m">
                          <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                          <ref role="37wK5l" to="18ew:~NameUtil.capitalize(java.lang.String)" resolve="capitalize" />
                          <node concept="37vLTw" id="3GM_nagTrJI" role="37wK5m">
                            <ref role="3cqZAo" node="6KmbN9hT7R_" resolve="type" />
                          </node>
                        </node>
                      </node>
                      <node concept="1bVj0M" id="6KmbN9hT7S1" role="37wK5m">
                        <node concept="3clFbS" id="6KmbN9hT7S2" role="1bW5cS">
                          <node concept="3clFbF" id="2LgKyNIY452" role="3cqZAp">
                            <node concept="2OqwBi" id="2LgKyNIY454" role="3clFbG">
                              <node concept="2YIFZM" id="2LgKyNIY455" role="2Oq$k0">
                                <ref role="1Pybhc" to="jlcu:~AbstractVcsHelper" resolve="AbstractVcsHelper" />
                                <ref role="37wK5l" to="jlcu:~AbstractVcsHelper.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                <node concept="37vLTw" id="2LgKyNIY456" role="37wK5m">
                                  <ref role="3cqZAo" node="6KmbN9hT7R7" resolve="project" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2LgKyNIY457" role="2OqNvi">
                                <ref role="37wK5l" to="jlcu:~AbstractVcsHelper.showMergeDialog(java.util.List)" resolve="showMergeDialog" />
                                <node concept="2OqwBi" id="2LgKyNIZm$Y" role="37wK5m">
                                  <node concept="37vLTw" id="2LgKyNIYH0C" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6KmbN9hT7Rr" resolve="moduleFiles" />
                                  </node>
                                  <node concept="X8dFx" id="2LgKyNIZy0i" role="2OqNvi">
                                    <node concept="37vLTw" id="2LgKyNIZBI6" role="25WWJ7">
                                      <ref role="3cqZAo" node="6KmbN9hT7Rl" resolve="modelFiles" />
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
      <node concept="2AHcQZ" id="6KmbN9hT7Ra" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6KmbN9hT7R3" role="3clF45">
        <ref role="3uigEE" to="pgpb:~WarningPanel" resolve="WarningPanel" />
      </node>
      <node concept="3Tm1VV" id="6KmbN9hT7R2" role="1B3o_S" />
      <node concept="37vLTG" id="6KmbN9hT7R4" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="2AHcQZ" id="6KmbN9hT7R6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6KmbN9hT7R5" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6KmbN9hT7R7" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="2AHcQZ" id="6KmbN9hT7R9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6KmbN9hT7R8" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S7fj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="eUUR2W0OGz" role="jymVt" />
    <node concept="2YIFZL" id="6KmbN9hT7Qs" role="jymVt">
      <property role="TrG5h" value="getModuleType" />
      <node concept="37vLTG" id="6KmbN9hT7Qt" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="6KmbN9hT7Qu" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="6KmbN9hT7Qv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6KmbN9hT7Qx" role="1B3o_S" />
      <node concept="17QB3L" id="6KmbN9hT7Qw" role="3clF45" />
      <node concept="3clFbS" id="6KmbN9hT7Qy" role="3clF47">
        <node concept="3clFbJ" id="6KmbN9hT7Qz" role="3cqZAp">
          <node concept="3eNFk2" id="6KmbN9hT7QE" role="3eNLev">
            <node concept="3clFbS" id="6KmbN9hT7QI" role="3eOfB_">
              <node concept="3cpWs6" id="6KmbN9hT7QJ" role="3cqZAp">
                <node concept="Xl_RD" id="6KmbN9hT7QK" role="3cqZAk">
                  <property role="Xl_RC" value="solution" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="6KmbN9hT7QF" role="3eO9$A">
              <node concept="37vLTw" id="2BHiRxglK_P" role="2ZW6bz">
                <ref role="3cqZAo" node="6KmbN9hT7Qt" resolve="module" />
              </node>
              <node concept="3uibUv" id="6KmbN9hT7QG" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6KmbN9hT7Q$" role="3clFbx">
            <node concept="3cpWs6" id="6KmbN9hT7Q_" role="3cqZAp">
              <node concept="Xl_RD" id="6KmbN9hT7QA" role="3cqZAk">
                <property role="Xl_RC" value="language" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6KmbN9hT7QB" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm5F3" role="2ZW6bz">
              <ref role="3cqZAo" node="6KmbN9hT7Qt" resolve="module" />
            </node>
            <node concept="3uibUv" id="6KmbN9hT7QC" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
          </node>
          <node concept="3eNFk2" id="6KmbN9hT7QL" role="3eNLev">
            <node concept="3clFbS" id="6KmbN9hT7QP" role="3eOfB_">
              <node concept="3cpWs6" id="6KmbN9hT7QQ" role="3cqZAp">
                <node concept="Xl_RD" id="6KmbN9hT7QR" role="3cqZAk">
                  <property role="Xl_RC" value="generator" />
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="6KmbN9hT7QM" role="3eO9$A">
              <node concept="37vLTw" id="2BHiRxgm8mb" role="2ZW6bz">
                <ref role="3cqZAo" node="6KmbN9hT7Qt" resolve="module" />
              </node>
              <node concept="3uibUv" id="6KmbN9hT7QN" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6KmbN9hT7QS" role="3cqZAp">
          <node concept="10Nm6u" id="6KmbN9hT7QT" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6KmbN9hT7QU" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6KmbN9hT7QV" role="1B3o_S" />
    <node concept="3uibUv" id="6KmbN9hT7R0" role="EKbjA">
      <ref role="3uigEE" to="pgpb:~EditorWarningsProvider" resolve="EditorWarningsProvider" />
    </node>
  </node>
  <node concept="312cEu" id="68MS4n2I8HR">
    <property role="TrG5h" value="ConflictingModelsUtil" />
    <node concept="2YIFZL" id="68MS4n2Ifb3" role="jymVt">
      <property role="TrG5h" value="getConflictingModelFiles" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="68MS4n2Ifb5" role="3clF47">
        <node concept="3cpWs8" id="68MS4n2Ifb6" role="3cqZAp">
          <node concept="3cpWsn" id="68MS4n2Ifb7" role="3cpWs9">
            <property role="TrG5h" value="conflictedFiles" />
            <node concept="2hMVRd" id="68MS4n2Ifb8" role="1tU5fm">
              <node concept="3uibUv" id="68MS4n2Ifb9" role="2hN53Y">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
            <node concept="2ShNRf" id="68MS4n2Ifba" role="33vP2m">
              <node concept="34wSKj" id="68MS4n2Ifbb" role="2ShVmc">
                <node concept="3uibUv" id="68MS4n2Ifbc" role="HW$YZ">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
                <node concept="1bVj0M" id="68MS4n2Ifbd" role="uyce9">
                  <node concept="37vLTG" id="68MS4n2Ifbe" role="1bW2Oz">
                    <property role="TrG5h" value="a" />
                    <node concept="3uibUv" id="68MS4n2Ifbf" role="1tU5fm">
                      <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="68MS4n2Ifbg" role="1bW2Oz">
                    <property role="TrG5h" value="b" />
                    <node concept="3uibUv" id="68MS4n2Ifbh" role="1tU5fm">
                      <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="68MS4n2Ifbi" role="1bW5cS">
                    <node concept="3clFbF" id="68MS4n2Ifbj" role="3cqZAp">
                      <node concept="2OqwBi" id="68MS4n2Ifbk" role="3clFbG">
                        <node concept="2OqwBi" id="68MS4n2Ifbl" role="2Oq$k0">
                          <node concept="37vLTw" id="68MS4n2Ifbm" role="2Oq$k0">
                            <ref role="3cqZAo" node="68MS4n2Ifbe" resolve="a" />
                          </node>
                          <node concept="liA8E" id="68MS4n2Ifbn" role="2OqNvi">
                            <ref role="37wK5l" to="jlff:~VirtualFile.getPresentableUrl()" resolve="getPresentableUrl" />
                          </node>
                        </node>
                        <node concept="liA8E" id="68MS4n2Ifbo" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.compareTo(java.lang.String)" resolve="compareTo" />
                          <node concept="2OqwBi" id="68MS4n2Ifbp" role="37wK5m">
                            <node concept="37vLTw" id="68MS4n2Ifbq" role="2Oq$k0">
                              <ref role="3cqZAo" node="68MS4n2Ifbg" resolve="b" />
                            </node>
                            <node concept="liA8E" id="68MS4n2Ifbr" role="2OqNvi">
                              <ref role="37wK5l" to="jlff:~VirtualFile.getPresentableUrl()" resolve="getPresentableUrl" />
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
        <node concept="2Gpval" id="68MS4n2Ifbs" role="3cqZAp">
          <node concept="2GrKxI" id="68MS4n2Ifbt" role="2Gsz3X">
            <property role="TrG5h" value="change" />
          </node>
          <node concept="3clFbS" id="68MS4n2Ifbu" role="2LFqv$">
            <node concept="3clFbJ" id="68MS4n2Ifbv" role="3cqZAp">
              <node concept="3clFbS" id="68MS4n2Ifbw" role="3clFbx">
                <node concept="3cpWs8" id="68MS4n2Ifbx" role="3cqZAp">
                  <node concept="3cpWsn" id="68MS4n2Ifby" role="3cpWs9">
                    <property role="TrG5h" value="before" />
                    <node concept="3uibUv" id="68MS4n2Ifbz" role="1tU5fm">
                      <ref role="3uigEE" to="1037:~ContentRevision" resolve="ContentRevision" />
                    </node>
                    <node concept="2OqwBi" id="68MS4n2Ifb$" role="33vP2m">
                      <node concept="2GrUjf" id="68MS4n2Ifb_" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="68MS4n2Ifbt" resolve="change" />
                      </node>
                      <node concept="liA8E" id="68MS4n2IfbA" role="2OqNvi">
                        <ref role="37wK5l" to="1037:~Change.getBeforeRevision()" resolve="getBeforeRevision" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="68MS4n2IfbB" role="3cqZAp">
                  <node concept="3cpWsn" id="68MS4n2IfbC" role="3cpWs9">
                    <property role="TrG5h" value="after" />
                    <node concept="3uibUv" id="68MS4n2IfbD" role="1tU5fm">
                      <ref role="3uigEE" to="1037:~ContentRevision" resolve="ContentRevision" />
                    </node>
                    <node concept="2OqwBi" id="68MS4n2IfbE" role="33vP2m">
                      <node concept="2GrUjf" id="68MS4n2IfbF" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="68MS4n2Ifbt" resolve="change" />
                      </node>
                      <node concept="liA8E" id="68MS4n2IfbG" role="2OqNvi">
                        <ref role="37wK5l" to="1037:~Change.getAfterRevision()" resolve="getAfterRevision" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="68MS4n2IfbH" role="3cqZAp">
                  <node concept="3clFbS" id="68MS4n2IfbI" role="3clFbx">
                    <node concept="3cpWs8" id="68MS4n2IfbJ" role="3cqZAp">
                      <node concept="3cpWsn" id="68MS4n2IfbK" role="3cpWs9">
                        <property role="TrG5h" value="file" />
                        <node concept="3uibUv" id="68MS4n2IfbL" role="1tU5fm">
                          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                        </node>
                        <node concept="2OqwBi" id="68MS4n2IfbM" role="33vP2m">
                          <node concept="2OqwBi" id="68MS4n2IfbN" role="2Oq$k0">
                            <node concept="37vLTw" id="68MS4n2IfbO" role="2Oq$k0">
                              <ref role="3cqZAo" node="68MS4n2Ifby" resolve="before" />
                            </node>
                            <node concept="liA8E" id="68MS4n2IfbP" role="2OqNvi">
                              <ref role="37wK5l" to="1037:~ContentRevision.getFile()" resolve="getFile" />
                            </node>
                          </node>
                          <node concept="liA8E" id="68MS4n2IfbQ" role="2OqNvi">
                            <ref role="37wK5l" to="jlcu:~FilePath.getVirtualFile()" resolve="getVirtualFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="68MS4n2IfbR" role="3cqZAp">
                      <property role="TyiWK" value="false" />
                      <property role="TyiWL" value="true" />
                      <node concept="3clFbS" id="68MS4n2IfbS" role="3clFbx">
                        <node concept="3clFbF" id="68MS4n2IfbT" role="3cqZAp">
                          <node concept="2OqwBi" id="68MS4n2IfbU" role="3clFbG">
                            <node concept="37vLTw" id="68MS4n2IfbV" role="2Oq$k0">
                              <ref role="3cqZAo" node="68MS4n2Ifb7" resolve="conflictedFiles" />
                            </node>
                            <node concept="TSZUe" id="68MS4n2IfbW" role="2OqNvi">
                              <node concept="37vLTw" id="68MS4n2IfbX" role="25WWJ7">
                                <ref role="3cqZAo" node="68MS4n2IfbK" resolve="file" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="68MS4n2IfbY" role="3clFbw">
                        <node concept="10Nm6u" id="68MS4n2IfbZ" role="3uHU7w" />
                        <node concept="37vLTw" id="68MS4n2Ifc0" role="3uHU7B">
                          <ref role="3cqZAo" node="68MS4n2IfbK" resolve="file" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="68MS4n2Ifc1" role="3clFbw">
                    <node concept="10Nm6u" id="68MS4n2Ifc2" role="3uHU7w" />
                    <node concept="37vLTw" id="68MS4n2Ifc3" role="3uHU7B">
                      <ref role="3cqZAo" node="68MS4n2Ifby" resolve="before" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="68MS4n2Ifc4" role="3cqZAp">
                  <node concept="3clFbS" id="68MS4n2Ifc5" role="3clFbx">
                    <node concept="3cpWs8" id="68MS4n2Ifc6" role="3cqZAp">
                      <node concept="3cpWsn" id="68MS4n2Ifc7" role="3cpWs9">
                        <property role="TrG5h" value="file" />
                        <node concept="3uibUv" id="68MS4n2Ifc8" role="1tU5fm">
                          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                        </node>
                        <node concept="2OqwBi" id="68MS4n2Ifc9" role="33vP2m">
                          <node concept="2OqwBi" id="68MS4n2Ifca" role="2Oq$k0">
                            <node concept="37vLTw" id="68MS4n2Ifcb" role="2Oq$k0">
                              <ref role="3cqZAo" node="68MS4n2IfbC" resolve="after" />
                            </node>
                            <node concept="liA8E" id="68MS4n2Ifcc" role="2OqNvi">
                              <ref role="37wK5l" to="1037:~ContentRevision.getFile()" resolve="getFile" />
                            </node>
                          </node>
                          <node concept="liA8E" id="68MS4n2Ifcd" role="2OqNvi">
                            <ref role="37wK5l" to="jlcu:~FilePath.getVirtualFile()" resolve="getVirtualFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="68MS4n2Ifce" role="3cqZAp">
                      <property role="TyiWK" value="false" />
                      <property role="TyiWL" value="true" />
                      <node concept="3clFbS" id="68MS4n2Ifcf" role="3clFbx">
                        <node concept="3clFbF" id="68MS4n2Ifcg" role="3cqZAp">
                          <node concept="2OqwBi" id="68MS4n2Ifch" role="3clFbG">
                            <node concept="37vLTw" id="68MS4n2Ifci" role="2Oq$k0">
                              <ref role="3cqZAo" node="68MS4n2Ifb7" resolve="conflictedFiles" />
                            </node>
                            <node concept="TSZUe" id="68MS4n2Ifcj" role="2OqNvi">
                              <node concept="37vLTw" id="68MS4n2Ifck" role="25WWJ7">
                                <ref role="3cqZAo" node="68MS4n2Ifc7" resolve="file" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="68MS4n2Ifcl" role="3clFbw">
                        <node concept="10Nm6u" id="68MS4n2Ifcm" role="3uHU7w" />
                        <node concept="37vLTw" id="68MS4n2Ifcn" role="3uHU7B">
                          <ref role="3cqZAo" node="68MS4n2Ifc7" resolve="file" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="68MS4n2Ifco" role="3clFbw">
                    <node concept="10Nm6u" id="68MS4n2Ifcp" role="3uHU7w" />
                    <node concept="37vLTw" id="68MS4n2Ifcq" role="3uHU7B">
                      <ref role="3cqZAo" node="68MS4n2IfbC" resolve="after" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="68MS4n2Ifcr" role="3clFbw">
                <node concept="10M0yZ" id="68MS4n2Ifcs" role="3uHU7w">
                  <ref role="3cqZAo" to="jlcu:~FileStatus.MERGED_WITH_CONFLICTS" resolve="MERGED_WITH_CONFLICTS" />
                  <ref role="1PxDUh" to="jlcu:~FileStatus" resolve="FileStatus" />
                </node>
                <node concept="2OqwBi" id="68MS4n2Ifct" role="3uHU7B">
                  <node concept="2GrUjf" id="68MS4n2Ifcu" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="68MS4n2Ifbt" resolve="change" />
                  </node>
                  <node concept="liA8E" id="68MS4n2Ifcv" role="2OqNvi">
                    <ref role="37wK5l" to="1037:~Change.getFileStatus()" resolve="getFileStatus" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="68MS4n2Ifcw" role="2GsD0m">
            <node concept="2YIFZM" id="68MS4n2Ifcx" role="2Oq$k0">
              <ref role="1Pybhc" to="1037:~ChangeListManager" resolve="ChangeListManager" />
              <ref role="37wK5l" to="1037:~ChangeListManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <node concept="37vLTw" id="68MS4n2Ifcy" role="37wK5m">
                <ref role="3cqZAo" node="68MS4n2IfcR" resolve="proj" />
              </node>
            </node>
            <node concept="liA8E" id="68MS4n2Ifcz" role="2OqNvi">
              <ref role="37wK5l" to="1037:~ChangeListManager.getAllChanges()" resolve="getAllChanges" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="68MS4n2Ifc$" role="3cqZAp">
          <node concept="2OqwBi" id="68MS4n2Ifc_" role="3cqZAk">
            <node concept="2OqwBi" id="68MS4n2IfcA" role="2Oq$k0">
              <node concept="37vLTw" id="68MS4n2IfcB" role="2Oq$k0">
                <ref role="3cqZAo" node="68MS4n2Ifb7" resolve="conflictedFiles" />
              </node>
              <node concept="3zZkjj" id="68MS4n2IfcC" role="2OqNvi">
                <node concept="1bVj0M" id="68MS4n2IfcD" role="23t8la">
                  <node concept="3clFbS" id="68MS4n2IfcE" role="1bW5cS">
                    <node concept="3clFbF" id="68MS4n2IfcF" role="3cqZAp">
                      <node concept="2OqwBi" id="68MS4n2IfcG" role="3clFbG">
                        <node concept="10M0yZ" id="68MS4n2IfcH" role="2Oq$k0">
                          <ref role="3cqZAo" node="4qk_0lIkT7W" resolve="SUPPORTED_TYPES" />
                          <ref role="1PxDUh" node="4qk_0lIkI_e" resolve="ModelMergeTool" />
                        </node>
                        <node concept="3JPx81" id="68MS4n2IfcI" role="2OqNvi">
                          <node concept="2OqwBi" id="68MS4n2IfcJ" role="25WWJ7">
                            <node concept="37vLTw" id="68MS4n2IfcK" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XSs" resolve="f" />
                            </node>
                            <node concept="liA8E" id="68MS4n2IfcL" role="2OqNvi">
                              <ref role="37wK5l" to="jlff:~VirtualFile.getFileType()" resolve="getFileType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XSs" role="1bW2Oz">
                    <property role="TrG5h" value="f" />
                    <node concept="2jxLKc" id="5W7E4fV0XSt" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="68MS4n2IfcO" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="68MS4n2IfcP" role="3clF45">
        <node concept="3uibUv" id="68MS4n2IfcQ" role="_ZDj9">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="68MS4n2IfcR" role="3clF46">
        <property role="TrG5h" value="proj" />
        <node concept="3uibUv" id="68MS4n2IfcS" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm1VV" id="68MS4n2IfcV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="68MS4n2IcVy" role="jymVt" />
    <node concept="2YIFZL" id="68MS4n2NqGe" role="jymVt">
      <property role="TrG5h" value="hasResolvableConflicts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="68MS4n2NqGh" role="3clF47">
        <node concept="3clFbH" id="2ngYiH3eVtk" role="3cqZAp" />
        <node concept="3cpWs8" id="2ngYiH3eXsV" role="3cqZAp">
          <node concept="3cpWsn" id="2ngYiH3eXsY" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="true" />
            <node concept="2BsdOp" id="2ngYiH3eYEP" role="33vP2m">
              <node concept="3clFbT" id="2ngYiH3eYPL" role="2BsfMF" />
            </node>
            <node concept="10Q1$e" id="2ngYiH3eYl0" role="1tU5fm">
              <node concept="10P_77" id="2ngYiH3eXsT" role="10Q1$1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ngYiH3eCY5" role="3cqZAp" />
        <node concept="3clFbF" id="2ngYiH3eBHd" role="3cqZAp">
          <node concept="2OqwBi" id="2ngYiH3eBHf" role="3clFbG">
            <node concept="2YIFZM" id="2ngYiH3eBHg" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="2ngYiH3eBHh" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="2ngYiH3eBHi" role="37wK5m">
                <node concept="YeOm9" id="2ngYiH3eBHj" role="2ShVmc">
                  <node concept="1Y3b0j" id="2ngYiH3eBHk" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                    <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                    <node concept="37vLTw" id="2ngYiH3eBHl" role="37wK5m">
                      <ref role="3cqZAo" node="68MS4n2Nsf5" resolve="project" />
                    </node>
                    <node concept="Xl_RD" id="2ngYiH3eBHm" role="37wK5m">
                      <property role="Xl_RC" value="Loading revisions..." />
                    </node>
                    <node concept="3clFbT" id="2ngYiH3eBHn" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="3Tm1VV" id="2ngYiH3eBHo" role="1B3o_S" />
                    <node concept="3clFb_" id="2ngYiH3eBHp" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="2ngYiH3eBHq" role="1B3o_S" />
                      <node concept="3cqZAl" id="2ngYiH3eBHr" role="3clF45" />
                      <node concept="37vLTG" id="2ngYiH3eBHs" role="3clF46">
                        <property role="TrG5h" value="progressIndicator" />
                        <node concept="3uibUv" id="2ngYiH3eBHt" role="1tU5fm">
                          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                        </node>
                        <node concept="2AHcQZ" id="2ngYiH3eBHu" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2ngYiH3eBHv" role="3clF47">
                        <node concept="3cpWs8" id="2VIcG4ossGB" role="3cqZAp">
                          <node concept="3cpWsn" id="2VIcG4ossGC" role="3cpWs9">
                            <property role="TrG5h" value="mpsProject" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="2VIcG4ossGD" role="1tU5fm">
                              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                            </node>
                            <node concept="2YIFZM" id="2VIcG4ossGE" role="33vP2m">
                              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                              <node concept="37vLTw" id="2VIcG4ossGF" role="37wK5m">
                                <ref role="3cqZAo" to="xygl:~Task.myProject" resolve="myProject" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="2ngYiH3eUSC" role="3cqZAp" />
                        <node concept="2Gpval" id="7yFo2Ea62wz" role="3cqZAp">
                          <node concept="2GrKxI" id="7yFo2Ea62w_" role="2Gsz3X">
                            <property role="TrG5h" value="file" />
                          </node>
                          <node concept="3clFbS" id="7yFo2Ea62wB" role="2LFqv$">
                            <node concept="3clFbJ" id="2ngYiH3f_Vy" role="3cqZAp">
                              <node concept="3clFbS" id="2ngYiH3f_V$" role="3clFbx">
                                <node concept="3cpWs6" id="2ngYiH3fDjO" role="3cqZAp" />
                              </node>
                              <node concept="2OqwBi" id="2ngYiH3fCFY" role="3clFbw">
                                <node concept="37vLTw" id="2ngYiH3fC37" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2ngYiH3eBHs" resolve="progressIndicator" />
                                </node>
                                <node concept="liA8E" id="2ngYiH3fCTi" role="2OqNvi">
                                  <ref role="37wK5l" to="xygl:~ProgressIndicator.isCanceled()" resolve="isCanceled" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2ngYiH3fsfX" role="3cqZAp">
                              <node concept="2OqwBi" id="2ngYiH3fu2u" role="3clFbG">
                                <node concept="37vLTw" id="2ngYiH3fsfV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2ngYiH3eBHs" resolve="progressIndicator" />
                                </node>
                                <node concept="liA8E" id="2ngYiH3fuh4" role="2OqNvi">
                                  <ref role="37wK5l" to="xygl:~ProgressIndicator.setText2(java.lang.String)" resolve="setText2" />
                                  <node concept="2OqwBi" id="2ngYiH3fzno" role="37wK5m">
                                    <node concept="2GrUjf" id="2ngYiH3fvc8" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="7yFo2Ea62w_" resolve="file" />
                                    </node>
                                    <node concept="liA8E" id="2ngYiH3f$gU" role="2OqNvi">
                                      <ref role="37wK5l" to="jlff:~VirtualFile.getPresentableName()" resolve="getPresentableName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="2ngYiH3foiL" role="3cqZAp" />
                            <node concept="3J1_TO" id="2VIcG4oqShY" role="3cqZAp">
                              <node concept="3uVAMA" id="2VIcG4oqShZ" role="1zxBo5">
                                <node concept="XOnhg" id="2VIcG4oqSi0" role="1zc67B">
                                  <property role="TrG5h" value="ex" />
                                  <node concept="nSUau" id="2VIcG4oqSi1" role="1tU5fm">
                                    <node concept="3uibUv" id="2VIcG4oqSi2" role="nSUat">
                                      <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="2VIcG4oqSi3" role="1zc67A">
                                  <node concept="3SKdUt" id="2VIcG4oqSi4" role="3cqZAp">
                                    <node concept="1PaTwC" id="2VIcG4oqSi5" role="1aUNEU">
                                      <node concept="3oM_SD" id="2VIcG4oqSi6" role="1PaTwD">
                                        <property role="3oM_SC" value="can't" />
                                      </node>
                                      <node concept="3oM_SD" id="2VIcG4oqSi7" role="1PaTwD">
                                        <property role="3oM_SC" value="detect" />
                                      </node>
                                      <node concept="3oM_SD" id="2VIcG4oqSi8" role="1PaTwD">
                                        <property role="3oM_SC" value="models" />
                                      </node>
                                      <node concept="3oM_SD" id="2VIcG4oqSi9" role="1PaTwD">
                                        <property role="3oM_SC" value="in" />
                                      </node>
                                      <node concept="3oM_SD" id="2VIcG4oqSia" role="1PaTwD">
                                        <property role="3oM_SC" value="the" />
                                      </node>
                                      <node concept="3oM_SD" id="2VIcG4oqSib" role="1PaTwD">
                                        <property role="3oM_SC" value="file," />
                                      </node>
                                      <node concept="3oM_SD" id="2VIcG4oqSic" role="1PaTwD">
                                        <property role="3oM_SC" value="ignore," />
                                      </node>
                                      <node concept="3oM_SD" id="2VIcG4oqSid" role="1PaTwD">
                                        <property role="3oM_SC" value="continue" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="RRSsy" id="2VIcG4oqSie" role="3cqZAp">
                                    <property role="RRSoG" value="h1akgim/info" />
                                    <node concept="2OqwBi" id="2VIcG4oqSif" role="RRSoy">
                                      <node concept="37vLTw" id="2VIcG4oqSig" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2VIcG4oqSi0" resolve="ex" />
                                      </node>
                                      <node concept="liA8E" id="2VIcG4oqSih" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3uVAMA" id="2VIcG4oqSii" role="1zxBo5">
                                <node concept="XOnhg" id="2VIcG4oqSij" role="1zc67B">
                                  <property role="TrG5h" value="e" />
                                  <node concept="nSUau" id="2VIcG4oqSik" role="1tU5fm">
                                    <node concept="3uibUv" id="2VIcG4oqSil" role="nSUat">
                                      <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="2VIcG4oqSim" role="1zc67A">
                                  <node concept="RRSsy" id="4_H1Pxxi4CC" role="3cqZAp">
                                    <property role="RRSoG" value="gZ5fh_4/error" />
                                    <node concept="3cpWs3" id="4_H1Pxxi4Xl" role="RRSoy">
                                      <node concept="2GrUjf" id="4_H1Pxxi5sy" role="3uHU7w">
                                        <ref role="2Gs0qQ" node="7yFo2Ea62w_" resolve="file" />
                                      </node>
                                      <node concept="Xl_RD" id="4_H1Pxxi4CD" role="3uHU7B">
                                        <property role="Xl_RC" value="Error loading revisions of " />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="4_H1Pxxi4CE" role="RRSow">
                                      <ref role="3cqZAo" node="2VIcG4oqSij" resolve="e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3uVAMA" id="2VIcG4oqSiq" role="1zxBo5">
                                <node concept="XOnhg" id="2VIcG4oqSir" role="1zc67B">
                                  <property role="TrG5h" value="ex" />
                                  <node concept="nSUau" id="2VIcG4oqSis" role="1tU5fm">
                                    <node concept="3uibUv" id="2VIcG4oqSit" role="nSUat">
                                      <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="2VIcG4oqSiu" role="1zc67A">
                                  <node concept="RRSsy" id="2VIcG4oqSiv" role="3cqZAp">
                                    <property role="RRSoG" value="h1akgim/info" />
                                    <node concept="2OqwBi" id="2VIcG4oqSiw" role="RRSoy">
                                      <node concept="37vLTw" id="2VIcG4oqSix" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2VIcG4oqSir" resolve="ex" />
                                      </node>
                                      <node concept="liA8E" id="2VIcG4oqSiy" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="2VIcG4oqSiK" role="1zxBo7">
                                <node concept="3cpWs8" id="2VIcG4oqShV" role="3cqZAp">
                                  <node concept="3cpWsn" id="2VIcG4oqShW" role="3cpWs9">
                                    <property role="TrG5h" value="ms" />
                                    <node concept="3uibUv" id="2VIcG4oqShX" role="1tU5fm">
                                      <ref role="3uigEE" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
                                    </node>
                                    <node concept="2YIFZM" id="2VIcG4oqSiN" role="33vP2m">
                                      <ref role="37wK5l" to="iho:2VIcG4o2hlS" resolve="discover" />
                                      <ref role="1Pybhc" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
                                      <node concept="2OqwBi" id="2VIcG4oqSiO" role="37wK5m">
                                        <node concept="37vLTw" id="2VIcG4oqSiP" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2VIcG4ossGC" resolve="mpsProject" />
                                        </node>
                                        <node concept="liA8E" id="2VIcG4oqSiQ" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c3:~ProjectBase.getPlatform()" resolve="getPlatform" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="2VIcG4oqSiR" role="37wK5m">
                                        <node concept="2GrUjf" id="2VIcG4oqSiS" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="7yFo2Ea62w_" resolve="file" />
                                        </node>
                                        <node concept="liA8E" id="2VIcG4oqSiT" role="2OqNvi">
                                          <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="2VIcG4oqSiV" role="3cqZAp">
                                  <node concept="3cpWsn" id="2VIcG4oqSiW" role="3cpWs9">
                                    <property role="TrG5h" value="mergeData" />
                                    <node concept="3uibUv" id="2VIcG4oqSiX" role="1tU5fm">
                                      <ref role="3uigEE" to="hlwo:~MergeData" resolve="MergeData" />
                                    </node>
                                    <node concept="2OqwBi" id="2VIcG4oqSiY" role="33vP2m">
                                      <node concept="37vLTw" id="2VIcG4oqSiZ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="68MS4n2Nso0" resolve="provider" />
                                      </node>
                                      <node concept="liA8E" id="2VIcG4oqSj0" role="2OqNvi">
                                        <ref role="37wK5l" to="hlwo:~MergeProvider.loadRevisions(com.intellij.openapi.vfs.VirtualFile)" resolve="loadRevisions" />
                                        <node concept="2GrUjf" id="2VIcG4oqSj1" role="37wK5m">
                                          <ref role="2Gs0qQ" node="7yFo2Ea62w_" resolve="file" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="2VIcG4orr8B" role="3cqZAp">
                                  <node concept="3cpWsn" id="2VIcG4orr8C" role="3cpWs9">
                                    <property role="TrG5h" value="baseModel" />
                                    <node concept="H_c77" id="2VIcG4orr8D" role="1tU5fm" />
                                    <node concept="1rXfSq" id="2VIcG4oqSj4" role="33vP2m">
                                      <ref role="37wK5l" node="7lfItRMIN5b" resolve="loadModel" />
                                      <node concept="2OqwBi" id="2VIcG4oqSj5" role="37wK5m">
                                        <node concept="37vLTw" id="2VIcG4oqSj6" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2VIcG4oqSiW" resolve="mergeData" />
                                        </node>
                                        <node concept="2OwXpG" id="2VIcG4oqSj7" role="2OqNvi">
                                          <ref role="2Oxat5" to="hlwo:~MergeData.ORIGINAL" resolve="ORIGINAL" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="2VIcG4oqSj8" role="37wK5m">
                                        <ref role="3cqZAo" node="2VIcG4oqShW" resolve="ms" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="2VIcG4orr8F" role="3cqZAp">
                                  <node concept="3cpWsn" id="2VIcG4orr8G" role="3cpWs9">
                                    <property role="TrG5h" value="mineModel" />
                                    <node concept="H_c77" id="2VIcG4orr8H" role="1tU5fm" />
                                    <node concept="1rXfSq" id="2VIcG4oqSjc" role="33vP2m">
                                      <ref role="37wK5l" node="7lfItRMIN5b" resolve="loadModel" />
                                      <node concept="2OqwBi" id="2VIcG4oqSjd" role="37wK5m">
                                        <node concept="37vLTw" id="2VIcG4oqSje" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2VIcG4oqSiW" resolve="mergeData" />
                                        </node>
                                        <node concept="2OwXpG" id="2VIcG4oqSjf" role="2OqNvi">
                                          <ref role="2Oxat5" to="hlwo:~MergeData.CURRENT" resolve="CURRENT" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="2VIcG4oqSjg" role="37wK5m">
                                        <ref role="3cqZAo" node="2VIcG4oqShW" resolve="ms" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="2VIcG4orr8J" role="3cqZAp">
                                  <node concept="3cpWsn" id="2VIcG4orr8K" role="3cpWs9">
                                    <property role="TrG5h" value="repoModel" />
                                    <node concept="H_c77" id="2VIcG4orr8L" role="1tU5fm" />
                                    <node concept="1rXfSq" id="2VIcG4oqSjk" role="33vP2m">
                                      <ref role="37wK5l" node="7lfItRMIN5b" resolve="loadModel" />
                                      <node concept="2OqwBi" id="2VIcG4oqSjl" role="37wK5m">
                                        <node concept="37vLTw" id="2VIcG4oqSjm" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2VIcG4oqSiW" resolve="mergeData" />
                                        </node>
                                        <node concept="2OwXpG" id="2VIcG4oqSjn" role="2OqNvi">
                                          <ref role="2Oxat5" to="hlwo:~MergeData.LAST" resolve="LAST" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="2VIcG4oqSjo" role="37wK5m">
                                        <ref role="3cqZAo" node="2VIcG4oqShW" resolve="ms" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="2VIcG4osJEw" role="3cqZAp" />
                                <node concept="3clFbJ" id="5G$1ADP9P_h" role="3cqZAp">
                                  <node concept="3clFbS" id="5G$1ADP9P_i" role="3clFbx">
                                    <node concept="RRSsy" id="3jYQuSB34oj" role="3cqZAp">
                                      <property role="RRSoG" value="gZ5fksE/warn" />
                                      <node concept="3cpWs3" id="5G$1ADP9RqM" role="RRSoy">
                                        <node concept="2OqwBi" id="5G$1ADP9RPe" role="3uHU7w">
                                          <node concept="2GrUjf" id="5G$1ADP9REA" role="2Oq$k0">
                                            <ref role="2Gs0qQ" node="7yFo2Ea62w_" resolve="file" />
                                          </node>
                                          <node concept="liA8E" id="5G$1ADP9SW6" role="2OqNvi">
                                            <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="5G$1ADP9P_k" role="3uHU7B">
                                          <property role="Xl_RC" value="Couldn't read model " />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3N13vt" id="5G$1ADP9YIU" role="3cqZAp" />
                                  </node>
                                  <node concept="22lmx$" id="5G$1ADP9P_p" role="3clFbw">
                                    <node concept="3clFbC" id="5G$1ADP9P_q" role="3uHU7w">
                                      <node concept="10Nm6u" id="5G$1ADP9P_r" role="3uHU7w" />
                                      <node concept="37vLTw" id="5G$1ADP9QD0" role="3uHU7B">
                                        <ref role="3cqZAo" node="2VIcG4orr8K" resolve="repoModel" />
                                      </node>
                                    </node>
                                    <node concept="22lmx$" id="5G$1ADP9P_t" role="3uHU7B">
                                      <node concept="3clFbC" id="5G$1ADP9P_u" role="3uHU7B">
                                        <node concept="37vLTw" id="5G$1ADP9P_v" role="3uHU7B">
                                          <ref role="3cqZAo" node="2VIcG4orr8C" resolve="baseModel" />
                                        </node>
                                        <node concept="10Nm6u" id="5G$1ADP9P_w" role="3uHU7w" />
                                      </node>
                                      <node concept="3clFbC" id="5G$1ADP9P_x" role="3uHU7w">
                                        <node concept="37vLTw" id="5G$1ADP9P_y" role="3uHU7B">
                                          <ref role="3cqZAo" node="2VIcG4orr8G" resolve="mineModel" />
                                        </node>
                                        <node concept="10Nm6u" id="5G$1ADP9P_z" role="3uHU7w" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="2VIcG4oqSjq" role="3cqZAp" />
                                <node concept="3cpWs8" id="7yFo2Ea679O" role="3cqZAp">
                                  <node concept="3cpWsn" id="7yFo2Ea679P" role="3cpWs9">
                                    <property role="TrG5h" value="mergeSession" />
                                    <node concept="3uibUv" id="7yFo2Ea679Q" role="1tU5fm">
                                      <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                                    </node>
                                    <node concept="2OqwBi" id="7VTIVrWpfZF" role="33vP2m">
                                      <node concept="2OqwBi" id="2VIcG4ou4jv" role="2Oq$k0">
                                        <node concept="37vLTw" id="2VIcG4ou06n" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2VIcG4ossGC" resolve="mpsProject" />
                                        </node>
                                        <node concept="liA8E" id="2VIcG4ou805" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7VTIVrWpgeB" role="2OqNvi">
                                        <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                                        <node concept="1bVj0M" id="7VTIVrWpglV" role="37wK5m">
                                          <node concept="3clFbS" id="7VTIVrWpglW" role="1bW5cS">
                                            <node concept="3clFbF" id="7VTIVrWphvg" role="3cqZAp">
                                              <node concept="2YIFZM" id="7yFo2Ea679R" role="3clFbG">
                                                <ref role="37wK5l" to="bmv6:62HG2toA5Tc" resolve="createMergeSession" />
                                                <ref role="1Pybhc" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                                                <node concept="37vLTw" id="7yFo2Ea679S" role="37wK5m">
                                                  <ref role="3cqZAo" node="2VIcG4orr8C" resolve="baseModel" />
                                                </node>
                                                <node concept="37vLTw" id="7yFo2Ea679T" role="37wK5m">
                                                  <ref role="3cqZAo" node="2VIcG4orr8G" resolve="mineModel" />
                                                </node>
                                                <node concept="37vLTw" id="7yFo2Ea679U" role="37wK5m">
                                                  <ref role="3cqZAo" node="2VIcG4orr8K" resolve="repoModel" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="2ngYiH3fnHd" role="3cqZAp" />
                                <node concept="3cpWs8" id="7yFo2Ea679V" role="3cqZAp">
                                  <node concept="3cpWsn" id="7yFo2Ea679W" role="3cpWs9">
                                    <property role="TrG5h" value="conflictingChangesCount" />
                                    <node concept="10Oyi0" id="7yFo2Ea679X" role="1tU5fm" />
                                    <node concept="2OqwBi" id="7yFo2Ea679Y" role="33vP2m">
                                      <node concept="2OqwBi" id="7yFo2Ea679Z" role="2Oq$k0">
                                        <node concept="2OqwBi" id="7yFo2Ea67a0" role="2Oq$k0">
                                          <node concept="37vLTw" id="7yFo2Ea67a1" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7yFo2Ea679P" resolve="mergeSession" />
                                          </node>
                                          <node concept="liA8E" id="7yFo2Ea67a2" role="2OqNvi">
                                            <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                                          </node>
                                        </node>
                                        <node concept="3zZkjj" id="7yFo2Ea67a3" role="2OqNvi">
                                          <node concept="1bVj0M" id="7yFo2Ea67a4" role="23t8la">
                                            <node concept="3clFbS" id="7yFo2Ea67a5" role="1bW5cS">
                                              <node concept="3clFbF" id="7yFo2Ea67a6" role="3cqZAp">
                                                <node concept="2OqwBi" id="7yFo2Ea67a7" role="3clFbG">
                                                  <node concept="2OqwBi" id="7yFo2Ea67a8" role="2Oq$k0">
                                                    <node concept="37vLTw" id="7yFo2Ea67a9" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="7yFo2Ea679P" resolve="mergeSession" />
                                                    </node>
                                                    <node concept="liA8E" id="7yFo2Ea67aa" role="2OqNvi">
                                                      <ref role="37wK5l" to="bmv6:3$YpntjF4nE" resolve="getConflictedWith" />
                                                      <node concept="37vLTw" id="7yFo2Ea67ab" role="37wK5m">
                                                        <ref role="3cqZAo" node="5W7E4fV0XSu" resolve="c" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3GX2aA" id="7yFo2Ea67ac" role="2OqNvi" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="gl6BB" id="5W7E4fV0XSu" role="1bW2Oz">
                                              <property role="TrG5h" value="c" />
                                              <node concept="2jxLKc" id="5W7E4fV0XSv" role="1tU5fm" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="34oBXx" id="7yFo2Ea67af" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="7yFo2Ea67ag" role="3cqZAp">
                                  <node concept="3clFbS" id="7yFo2Ea67ah" role="3clFbx">
                                    <node concept="3clFbF" id="2ngYiH3f9Hl" role="3cqZAp">
                                      <node concept="37vLTI" id="2ngYiH3fcid" role="3clFbG">
                                        <node concept="3clFbT" id="2ngYiH3fcNH" role="37vLTx">
                                          <property role="3clFbU" value="true" />
                                        </node>
                                        <node concept="AH0OO" id="2ngYiH3fbqn" role="37vLTJ">
                                          <node concept="3cmrfG" id="2ngYiH3fbVG" role="AHEQo">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                          <node concept="37vLTw" id="2ngYiH3f9Hi" role="AHHXb">
                                            <ref role="3cqZAo" node="2ngYiH3eXsY" resolve="result" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="2ngYiH3fjnO" role="3cqZAp" />
                                  </node>
                                  <node concept="3clFbC" id="7yFo2Ea6aY7" role="3clFbw">
                                    <node concept="37vLTw" id="7yFo2Ea67aq" role="3uHU7B">
                                      <ref role="3cqZAo" node="7yFo2Ea679W" resolve="conflictingChangesCount" />
                                    </node>
                                    <node concept="3cmrfG" id="7yFo2Ea67ar" role="3uHU7w">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="68MS4n2NCWu" role="2GsD0m">
                            <ref role="3cqZAo" node="68MS4n2NuVV" resolve="conflictedFiles" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2ngYiH3eBHO" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7yFo2Ea612e" role="3cqZAp" />
        <node concept="3cpWs6" id="68MS4n2NDos" role="3cqZAp">
          <node concept="AH0OO" id="2ngYiH3f0tX" role="3cqZAk">
            <node concept="3cmrfG" id="2ngYiH3f18a" role="AHEQo">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="2ngYiH3eZ10" role="AHHXb">
              <ref role="3cqZAo" node="2ngYiH3eXsY" resolve="result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="68MS4n2Nj7v" role="1B3o_S" />
      <node concept="10P_77" id="68MS4n2NojE" role="3clF45" />
      <node concept="37vLTG" id="68MS4n2Nsf5" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="68MS4n2Nsf4" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="68MS4n2Nso0" role="3clF46">
        <property role="TrG5h" value="provider" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="68MS4n2NuVp" role="1tU5fm">
          <ref role="3uigEE" to="hlwo:~MergeProvider" resolve="MergeProvider" />
        </node>
      </node>
      <node concept="37vLTG" id="68MS4n2NuVV" role="3clF46">
        <property role="TrG5h" value="conflictedFiles" />
        <property role="3TUv4t" value="true" />
        <node concept="A3Dl8" id="5G$1ADP9xI0" role="1tU5fm">
          <node concept="3uibUv" id="5G$1ADP9xI2" role="A3Ik2">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2VIcG4ot0lP" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsD__" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsD_A" role="1PaTwD">
            <property role="3oM_SC" value="Tells" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_B" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_C" role="1PaTwD">
            <property role="3oM_SC" value="conflicts" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_D" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_E" role="1PaTwD">
            <property role="3oM_SC" value="least" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_F" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_G" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_H" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_I" role="1PaTwD">
            <property role="3oM_SC" value="files" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_J" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_K" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsD_L" role="1PaTwD">
            <property role="3oM_SC" value="resolved/merged" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="68MS4n2Ng_T" role="jymVt" />
    <node concept="2YIFZL" id="68MS4n2MKAn" role="jymVt">
      <property role="TrG5h" value="getModelConflictResolverTask" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="68MS4n2MMf7" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="68MS4n2MMfu" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="68MS4n2MMji" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="68MS4n2MMjF" role="1tU5fm">
          <ref role="3uigEE" to="hlwo:~MergeProvider" resolve="MergeProvider" />
        </node>
      </node>
      <node concept="37vLTG" id="68MS4n2MMkj" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="68MS4n2MMkI" role="1tU5fm">
          <ref role="3uigEE" to="hlwo:~MergeSession" resolve="MergeSession" />
        </node>
      </node>
      <node concept="37vLTG" id="68MS4n2MMls" role="3clF46">
        <property role="TrG5h" value="conflictedFiles" />
        <node concept="_YKpA" id="68MS4n2MMlT" role="1tU5fm">
          <node concept="3qUE_q" id="4CUd3ljUVYN" role="_ZDj9">
            <node concept="3uibUv" id="4CUd3ljUWwq" role="3qUE_r">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="68MS4n2MKAq" role="3clF47">
        <node concept="3cpWs6" id="68MS4n2MMnT" role="3cqZAp">
          <node concept="2ShNRf" id="68MS4n2MMov" role="3cqZAk">
            <node concept="1pGfFk" id="68MS4n2MN$e" role="2ShVmc">
              <ref role="37wK5l" node="68MS4n2IH0v" resolve="ConflictingModelsUtil.ModelConflictResolver" />
              <node concept="37vLTw" id="68MS4n2MNB7" role="37wK5m">
                <ref role="3cqZAo" node="68MS4n2MMf7" resolve="project" />
              </node>
              <node concept="37vLTw" id="68MS4n2MNCR" role="37wK5m">
                <ref role="3cqZAo" node="68MS4n2MMji" resolve="provider" />
              </node>
              <node concept="37vLTw" id="68MS4n2MNG1" role="37wK5m">
                <ref role="3cqZAo" node="68MS4n2MMkj" resolve="session" />
              </node>
              <node concept="37vLTw" id="68MS4n2MNLi" role="37wK5m">
                <ref role="3cqZAo" node="68MS4n2MMls" resolve="conflictedFiles" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="68MS4n2MIYE" role="1B3o_S" />
      <node concept="3uibUv" id="3xywf4w3E5D" role="3clF45">
        <ref role="3uigEE" node="68MS4n2IA6m" resolve="ConflictingModelsUtil.ModelConflictResolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="68MS4n2Nawa" role="jymVt" />
    <node concept="312cEu" id="68MS4n2IA6m" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="ModelConflictResolver" />
      <node concept="312cEg" id="68MS4n2ILJ8" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="68MS4n2ILCw" role="1B3o_S" />
        <node concept="3uibUv" id="68MS4n2ILHy" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="312cEg" id="68MS4n2IGFp" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myProvider" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="68MS4n2IExV" role="1tU5fm">
          <ref role="3uigEE" to="hlwo:~MergeProvider" resolve="MergeProvider" />
        </node>
        <node concept="3Tm6S6" id="68MS4n2IGHY" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="68MS4n2IGQd" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="mySession" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="68MS4n2IGM4" role="1B3o_S" />
        <node concept="3uibUv" id="68MS4n2IGOB" role="1tU5fm">
          <ref role="3uigEE" to="hlwo:~MergeSession" resolve="MergeSession" />
        </node>
      </node>
      <node concept="312cEg" id="68MS4n2ITjE" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myConflictedModelFiles" />
        <property role="3TUv4t" value="false" />
        <node concept="_YKpA" id="68MS4n2IQGE" role="1tU5fm">
          <node concept="3qUE_q" id="4CUd3ljUYJ8" role="_ZDj9">
            <node concept="3uibUv" id="4CUd3ljV0M1" role="3qUE_r">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="68MS4n2ITpf" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="3xywf4w2_T1" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myResolvedModelFiles" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="3xywf4w2$9T" role="1B3o_S" />
        <node concept="_YKpA" id="3xywf4w2_sD" role="1tU5fm">
          <node concept="3uibUv" id="3xywf4w2_SA" role="_ZDj9">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
        <node concept="2ShNRf" id="3xywf4w2I7N" role="33vP2m">
          <node concept="Tc6Ow" id="3xywf4w2BNO" role="2ShVmc">
            <node concept="3uibUv" id="3xywf4w2BNP" role="HW$YZ">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="29lH0gvXIl6" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myUnresolvedModelFiles" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="29lH0gvXFSp" role="1B3o_S" />
        <node concept="_YKpA" id="29lH0gvXHtS" role="1tU5fm">
          <node concept="3uibUv" id="29lH0gvXIk_" role="_ZDj9">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
        <node concept="2ShNRf" id="29lH0gvXLOk" role="33vP2m">
          <node concept="Tc6Ow" id="29lH0gvXL4k" role="2ShVmc">
            <node concept="3uibUv" id="29lH0gvXL4l" role="HW$YZ">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="68MS4n2ICnw" role="jymVt" />
      <node concept="3clFbW" id="68MS4n2IH0v" role="jymVt">
        <node concept="3cqZAl" id="68MS4n2IH0w" role="3clF45" />
        <node concept="3clFbS" id="68MS4n2IH0y" role="3clF47">
          <node concept="XkiVB" id="68MS4n2Jczm" role="3cqZAp">
            <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
            <node concept="37vLTw" id="68MS4n2JcXW" role="37wK5m">
              <ref role="3cqZAo" node="68MS4n2ILOi" resolve="project" />
            </node>
            <node concept="Xl_RD" id="68MS4n2JK82" role="37wK5m">
              <property role="Xl_RC" value="Resolving conflicts in models" />
            </node>
            <node concept="3clFbT" id="68MS4n2JKfG" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
          <node concept="3clFbF" id="68MS4n2IHfM" role="3cqZAp">
            <node concept="37vLTI" id="68MS4n2IHj3" role="3clFbG">
              <node concept="37vLTw" id="68MS4n2IHs2" role="37vLTx">
                <ref role="3cqZAo" node="68MS4n2IH3c" resolve="provider" />
              </node>
              <node concept="37vLTw" id="68MS4n2IHfL" role="37vLTJ">
                <ref role="3cqZAo" node="68MS4n2IGFp" resolve="myProvider" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="68MS4n2IHv8" role="3cqZAp">
            <node concept="37vLTI" id="68MS4n2IHzh" role="3clFbG">
              <node concept="37vLTw" id="68MS4n2IHAd" role="37vLTx">
                <ref role="3cqZAo" node="68MS4n2IH5b" resolve="session" />
              </node>
              <node concept="37vLTw" id="68MS4n2IHv6" role="37vLTJ">
                <ref role="3cqZAo" node="68MS4n2IGQd" resolve="mySession" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="68MS4n2ILVz" role="3cqZAp">
            <node concept="37vLTI" id="68MS4n2ILZU" role="3clFbG">
              <node concept="37vLTw" id="68MS4n2IM22" role="37vLTx">
                <ref role="3cqZAo" node="68MS4n2ILOi" resolve="project" />
              </node>
              <node concept="37vLTw" id="68MS4n2J8Dv" role="37vLTJ">
                <ref role="3cqZAo" node="68MS4n2ILJ8" resolve="myProject" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="68MS4n2J9j9" role="3cqZAp">
            <node concept="37vLTI" id="68MS4n2J9PS" role="3clFbG">
              <node concept="37vLTw" id="68MS4n2Ja9l" role="37vLTx">
                <ref role="3cqZAo" node="68MS4n2J8Ma" resolve="conflictedFiles" />
              </node>
              <node concept="37vLTw" id="68MS4n2J9j7" role="37vLTJ">
                <ref role="3cqZAo" node="68MS4n2ITjE" resolve="myConflictedModelFiles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="68MS4n2IH0z" role="1B3o_S" />
        <node concept="37vLTG" id="68MS4n2ILOi" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="68MS4n2ILSl" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
        <node concept="37vLTG" id="68MS4n2IH3c" role="3clF46">
          <property role="TrG5h" value="provider" />
          <node concept="3uibUv" id="68MS4n2IH3b" role="1tU5fm">
            <ref role="3uigEE" to="hlwo:~MergeProvider" resolve="MergeProvider" />
          </node>
        </node>
        <node concept="37vLTG" id="68MS4n2IH5b" role="3clF46">
          <property role="TrG5h" value="session" />
          <node concept="3uibUv" id="68MS4n2IH70" role="1tU5fm">
            <ref role="3uigEE" to="hlwo:~MergeSession" resolve="MergeSession" />
          </node>
        </node>
        <node concept="37vLTG" id="68MS4n2J8Ma" role="3clF46">
          <property role="TrG5h" value="conflictedFiles" />
          <node concept="_YKpA" id="68MS4n2J8W7" role="1tU5fm">
            <node concept="3qUE_q" id="4CUd3ljUXbR" role="_ZDj9">
              <node concept="3uibUv" id="4CUd3ljUXWX" role="3qUE_r">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="68MS4n2IGSS" role="jymVt" />
      <node concept="3clFb_" id="3xywf4w2OR$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getResolvedFiles" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="3xywf4w2ORB" role="3clF47">
          <node concept="3clFbF" id="3xywf4w2SuO" role="3cqZAp">
            <node concept="37vLTw" id="3xywf4w2SuN" role="3clFbG">
              <ref role="3cqZAo" node="3xywf4w2_T1" resolve="myResolvedModelFiles" />
            </node>
          </node>
        </node>
        <node concept="_YKpA" id="3xywf4w2NaN" role="3clF45">
          <node concept="3uibUv" id="3xywf4w2OR5" role="_ZDj9">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
        <node concept="3Tm1VV" id="3xywf4w2Q$v" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="29lH0gvYgfx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getUnresolvedFiles" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="29lH0gvYgf$" role="3clF47">
          <node concept="3SKdUt" id="29lH0gvYj1j" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXompn" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXompo" role="1PaTwD">
                <property role="3oM_SC" value="list" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompp" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompq" role="1PaTwD">
                <property role="3oM_SC" value="old" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompr" role="1PaTwD">
                <property role="3oM_SC" value="files" />
              </node>
              <node concept="3oM_SD" id="ATZLwXomps" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompt" role="1PaTwD">
                <property role="3oM_SC" value="possible" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompu" role="1PaTwD">
                <property role="3oM_SC" value="errors" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompv" role="1PaTwD">
                <property role="3oM_SC" value="because" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompw" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompx" role="1PaTwD">
                <property role="3oM_SC" value="8th" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompy" role="1PaTwD">
                <property role="3oM_SC" value="persistence" />
              </node>
              <node concept="3oM_SD" id="ATZLwXompz" role="1PaTwD">
                <property role="3oM_SC" value="merge" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="29lH0gvYizn" role="3cqZAp">
            <node concept="37vLTw" id="29lH0gvYizm" role="3clFbG">
              <ref role="3cqZAo" node="29lH0gvXIl6" resolve="myUnresolvedModelFiles" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="29lH0gvYdWM" role="1B3o_S" />
        <node concept="_YKpA" id="29lH0gvYgaJ" role="3clF45">
          <node concept="3uibUv" id="29lH0gvYitZ" role="_ZDj9">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3xywf4w2JMs" role="jymVt" />
      <node concept="3clFb_" id="68MS4n2IAbg" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="run" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="68MS4n2IAbh" role="1B3o_S" />
        <node concept="3cqZAl" id="68MS4n2IAbj" role="3clF45" />
        <node concept="37vLTG" id="68MS4n2IAbk" role="3clF46">
          <property role="TrG5h" value="indicator" />
          <node concept="3uibUv" id="68MS4n2IAbl" role="1tU5fm">
            <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
          </node>
          <node concept="2AHcQZ" id="68MS4n2IAbm" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="68MS4n2IAbr" role="3clF47">
          <node concept="3cpWs8" id="3vnmwWFEYI8" role="3cqZAp">
            <node concept="3cpWsn" id="3vnmwWFEYI9" role="3cpWs9">
              <property role="TrG5h" value="monitor" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="68MS4n2JSk5" role="1tU5fm">
                <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
              </node>
              <node concept="2ShNRf" id="3vnmwWFEYP0" role="33vP2m">
                <node concept="1pGfFk" id="3vnmwWFF0gZ" role="2ShVmc">
                  <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                  <node concept="37vLTw" id="3vnmwWFF0iR" role="37wK5m">
                    <ref role="3cqZAo" node="68MS4n2IAbk" resolve="indicator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="68MS4n2KuqG" role="3cqZAp">
            <node concept="2OqwBi" id="68MS4n2Kvml" role="3clFbG">
              <node concept="37vLTw" id="68MS4n2KuqE" role="2Oq$k0">
                <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
              </node>
              <node concept="liA8E" id="68MS4n2Kwfy" role="2OqNvi">
                <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
                <node concept="Xl_RD" id="68MS4n2KzzK" role="37wK5m">
                  <property role="Xl_RC" value="Resolving..." />
                </node>
                <node concept="2OqwBi" id="68MS4n2K$$0" role="37wK5m">
                  <node concept="37vLTw" id="68MS4n2KzYX" role="2Oq$k0">
                    <ref role="3cqZAo" node="68MS4n2ITjE" resolve="myConflictedModelFiles" />
                  </node>
                  <node concept="34oBXx" id="68MS4n2KAj_" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5wz67X6yoky" role="3cqZAp">
            <node concept="3cpWsn" id="5wz67X6yokz" role="3cpWs9">
              <property role="TrG5h" value="mpsProject" />
              <node concept="3uibUv" id="5wz67X6yoaj" role="1tU5fm">
                <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
              </node>
              <node concept="2YIFZM" id="5wz67X6yok$" role="33vP2m">
                <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="37vLTw" id="5wz67X6yok_" role="37wK5m">
                  <ref role="3cqZAo" node="68MS4n2ILJ8" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1uaLumv3b0B" role="3cqZAp">
            <node concept="3cpWsn" id="1uaLumv3b0C" role="3cpWs9">
              <property role="TrG5h" value="ma" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="1uaLumv3b0D" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
              </node>
              <node concept="2OqwBi" id="5wz67X6yy4n" role="33vP2m">
                <node concept="37vLTw" id="5wz67X6ywpu" role="2Oq$k0">
                  <ref role="3cqZAo" node="5wz67X6yokz" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="5wz67X6y$dm" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1_TO" id="68MS4n2JBya" role="3cqZAp">
            <node concept="3clFbS" id="68MS4n2JByc" role="1zxBo7">
              <node concept="2Gpval" id="7yFo2Ea1tdd" role="3cqZAp">
                <node concept="2GrKxI" id="7yFo2Ea1tdf" role="2Gsz3X">
                  <property role="TrG5h" value="file" />
                </node>
                <node concept="3clFbS" id="7yFo2Ea1tdh" role="2LFqv$">
                  <node concept="3clFbF" id="68MS4n2LkyV" role="3cqZAp">
                    <node concept="2OqwBi" id="68MS4n2Ll6V" role="3clFbG">
                      <node concept="37vLTw" id="68MS4n2LkyT" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
                      </node>
                      <node concept="liA8E" id="68MS4n2LlDh" role="2OqNvi">
                        <ref role="37wK5l" to="yyf4:~ProgressMonitor.step(java.lang.String)" resolve="step" />
                        <node concept="2OqwBi" id="68MS4n2LrNr" role="37wK5m">
                          <node concept="2GrUjf" id="68MS4n2Lr_m" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                          </node>
                          <node concept="liA8E" id="68MS4n2Ltcy" role="2OqNvi">
                            <ref role="37wK5l" to="jlff:~VirtualFile.getCanonicalPath()" resolve="getCanonicalPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="68MS4n2Lp8t" role="3cqZAp" />
                  <node concept="3clFbH" id="2VIcG4omrH1" role="3cqZAp" />
                  <node concept="3J1_TO" id="2VIcG4om37j" role="3cqZAp">
                    <node concept="3uVAMA" id="2VIcG4om6Vf" role="1zxBo5">
                      <node concept="XOnhg" id="2VIcG4om6Vg" role="1zc67B">
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="2VIcG4om6Vh" role="1tU5fm">
                          <node concept="3uibUv" id="2VIcG4om8JL" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2VIcG4om6Vi" role="1zc67A">
                        <node concept="3SKdUt" id="2VIcG4omh8p" role="3cqZAp">
                          <node concept="1PaTwC" id="2VIcG4omh8q" role="1aUNEU">
                            <node concept="3oM_SD" id="2VIcG4omh8r" role="1PaTwD">
                              <property role="3oM_SC" value="can't" />
                            </node>
                            <node concept="3oM_SD" id="2VIcG4omiWM" role="1PaTwD">
                              <property role="3oM_SC" value="detect" />
                            </node>
                            <node concept="3oM_SD" id="2VIcG4omj0E" role="1PaTwD">
                              <property role="3oM_SC" value="models" />
                            </node>
                            <node concept="3oM_SD" id="2VIcG4omj5a" role="1PaTwD">
                              <property role="3oM_SC" value="in" />
                            </node>
                            <node concept="3oM_SD" id="2VIcG4omj83" role="1PaTwD">
                              <property role="3oM_SC" value="the" />
                            </node>
                            <node concept="3oM_SD" id="2VIcG4omj84" role="1PaTwD">
                              <property role="3oM_SC" value="file," />
                            </node>
                            <node concept="3oM_SD" id="2VIcG4omjaX" role="1PaTwD">
                              <property role="3oM_SC" value="ignore," />
                            </node>
                            <node concept="3oM_SD" id="2VIcG4on4$h" role="1PaTwD">
                              <property role="3oM_SC" value="continue" />
                            </node>
                          </node>
                        </node>
                        <node concept="RRSsy" id="2VIcG4omWAa" role="3cqZAp">
                          <property role="RRSoG" value="h1akgim/info" />
                          <node concept="2OqwBi" id="2VIcG4on79e" role="RRSoy">
                            <node concept="37vLTw" id="2VIcG4on5cu" role="2Oq$k0">
                              <ref role="3cqZAo" node="2VIcG4om6Vg" resolve="ex" />
                            </node>
                            <node concept="liA8E" id="2VIcG4onbcx" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="2VIcG4omF$a" role="1zxBo5">
                      <node concept="XOnhg" id="2VIcG4omF$b" role="1zc67B">
                        <property role="TrG5h" value="e" />
                        <node concept="nSUau" id="2VIcG4omF$c" role="1tU5fm">
                          <node concept="3uibUv" id="2VIcG4omITs" role="nSUat">
                            <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2VIcG4omF$d" role="1zc67A">
                        <node concept="RRSsy" id="4_H1PxxhS2i" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fh_4/error" />
                          <node concept="Xl_RD" id="4_H1PxxhS2j" role="RRSoy">
                            <property role="Xl_RC" value="Error loading revisions to merge" />
                          </node>
                          <node concept="37vLTw" id="4_H1PxxhS2k" role="RRSow">
                            <ref role="3cqZAo" node="2VIcG4omF$b" resolve="e" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="2VIcG4op6tj" role="1zxBo5">
                      <node concept="XOnhg" id="2VIcG4op6tk" role="1zc67B">
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="2VIcG4op6tl" role="1tU5fm">
                          <node concept="3uibUv" id="2VIcG4op8Zb" role="nSUat">
                            <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2VIcG4op6tm" role="1zc67A">
                        <node concept="RRSsy" id="2VIcG4opgg0" role="3cqZAp">
                          <property role="RRSoG" value="h1akgim/info" />
                          <node concept="2OqwBi" id="2VIcG4oplG2" role="RRSoy">
                            <node concept="37vLTw" id="2VIcG4opjFK" role="2Oq$k0">
                              <ref role="3cqZAo" node="2VIcG4op6tk" resolve="ex" />
                            </node>
                            <node concept="liA8E" id="2VIcG4opoSz" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2VIcG4om37l" role="1zxBo7">
                      <node concept="3cpWs8" id="2VIcG4olp2V" role="3cqZAp">
                        <node concept="3cpWsn" id="2VIcG4olp2W" role="3cpWs9">
                          <property role="TrG5h" value="ms" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="2VIcG4olp2X" role="1tU5fm">
                            <ref role="3uigEE" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
                          </node>
                          <node concept="2YIFZM" id="2VIcG4olxSV" role="33vP2m">
                            <ref role="37wK5l" to="iho:2VIcG4o2hlS" resolve="discover" />
                            <ref role="1Pybhc" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
                            <node concept="2OqwBi" id="2VIcG4olCeY" role="37wK5m">
                              <node concept="37vLTw" id="2VIcG4olA0O" role="2Oq$k0">
                                <ref role="3cqZAo" node="5wz67X6yokz" resolve="mpsProject" />
                              </node>
                              <node concept="liA8E" id="2VIcG4olEIE" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~ProjectBase.getPlatform()" resolve="getPlatform" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2VIcG4olNXJ" role="37wK5m">
                              <node concept="2GrUjf" id="2VIcG4olLB$" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                              </node>
                              <node concept="liA8E" id="2VIcG4olR3_" role="2OqNvi">
                                <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7yFo2Ea2Jpb" role="3cqZAp">
                        <node concept="3cpWsn" id="7yFo2Ea2Jpc" role="3cpWs9">
                          <property role="TrG5h" value="mergeData" />
                          <node concept="3uibUv" id="7yFo2Ea2Jpd" role="1tU5fm">
                            <ref role="3uigEE" to="hlwo:~MergeData" resolve="MergeData" />
                          </node>
                          <node concept="2OqwBi" id="4_H1PxxhS2b" role="33vP2m">
                            <node concept="37vLTw" id="4_H1PxxhUbF" role="2Oq$k0">
                              <ref role="3cqZAo" node="68MS4n2IGFp" resolve="myProvider" />
                            </node>
                            <node concept="liA8E" id="4_H1PxxhS2d" role="2OqNvi">
                              <ref role="37wK5l" to="hlwo:~MergeProvider.loadRevisions(com.intellij.openapi.vfs.VirtualFile)" resolve="loadRevisions" />
                              <node concept="2GrUjf" id="4_H1PxxhUNC" role="37wK5m">
                                <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="5O9exHkXIHC" role="3cqZAp">
                        <node concept="3cpWsn" id="5O9exHkXIHD" role="3cpWs9">
                          <property role="TrG5h" value="baseModel" />
                          <property role="3TUv4t" value="true" />
                          <node concept="H_c77" id="5O9exHkXIHE" role="1tU5fm" />
                          <node concept="1rXfSq" id="7lfItRMJEkL" role="33vP2m">
                            <ref role="37wK5l" node="7lfItRMIN5b" resolve="loadModel" />
                            <node concept="2OqwBi" id="7lfItRMJLHi" role="37wK5m">
                              <node concept="37vLTw" id="7lfItRMJKjp" role="2Oq$k0">
                                <ref role="3cqZAo" node="7yFo2Ea2Jpc" resolve="mergeData" />
                              </node>
                              <node concept="2OwXpG" id="7lfItRMJN8n" role="2OqNvi">
                                <ref role="2Oxat5" to="hlwo:~MergeData.ORIGINAL" resolve="ORIGINAL" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7lfItRMJPPs" role="37wK5m">
                              <ref role="3cqZAo" node="2VIcG4olp2W" resolve="ms" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="5O9exHkXIHM" role="3cqZAp">
                        <node concept="3cpWsn" id="5O9exHkXIHN" role="3cpWs9">
                          <property role="TrG5h" value="mineModel" />
                          <property role="3TUv4t" value="true" />
                          <node concept="H_c77" id="5O9exHkXIHO" role="1tU5fm" />
                          <node concept="1rXfSq" id="7lfItRMJRll" role="33vP2m">
                            <ref role="37wK5l" node="7lfItRMIN5b" resolve="loadModel" />
                            <node concept="2OqwBi" id="7lfItRMJRlm" role="37wK5m">
                              <node concept="37vLTw" id="7lfItRMJRln" role="2Oq$k0">
                                <ref role="3cqZAo" node="7yFo2Ea2Jpc" resolve="mergeData" />
                              </node>
                              <node concept="2OwXpG" id="7lfItRMJRPM" role="2OqNvi">
                                <ref role="2Oxat5" to="hlwo:~MergeData.CURRENT" resolve="CURRENT" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7lfItRMJRlp" role="37wK5m">
                              <ref role="3cqZAo" node="2VIcG4olp2W" resolve="ms" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="5O9exHkXIHW" role="3cqZAp">
                        <node concept="3cpWsn" id="5O9exHkXIHX" role="3cpWs9">
                          <property role="TrG5h" value="repoModel" />
                          <property role="3TUv4t" value="true" />
                          <node concept="H_c77" id="5O9exHkXIHY" role="1tU5fm" />
                          <node concept="1rXfSq" id="7lfItRMJS7R" role="33vP2m">
                            <ref role="37wK5l" node="7lfItRMIN5b" resolve="loadModel" />
                            <node concept="2OqwBi" id="7lfItRMJS7S" role="37wK5m">
                              <node concept="37vLTw" id="7lfItRMJS7T" role="2Oq$k0">
                                <ref role="3cqZAo" node="7yFo2Ea2Jpc" resolve="mergeData" />
                              </node>
                              <node concept="2OwXpG" id="7lfItRMJSDk" role="2OqNvi">
                                <ref role="2Oxat5" to="hlwo:~MergeData.LAST" resolve="LAST" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="7lfItRMJS7V" role="37wK5m">
                              <ref role="3cqZAo" node="2VIcG4olp2W" resolve="ms" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2VIcG4om37k" role="3cqZAp" />
                      <node concept="3clFbJ" id="3qaR2S2wkEj" role="3cqZAp">
                        <node concept="3clFbS" id="3qaR2S2wkEm" role="3clFbx">
                          <node concept="3clFbF" id="3nWvkBlmqwi" role="3cqZAp">
                            <node concept="2OqwBi" id="3nWvkBlmqwj" role="3clFbG">
                              <node concept="37vLTw" id="3nWvkBlmqwk" role="2Oq$k0">
                                <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
                              </node>
                              <node concept="liA8E" id="3nWvkBlmqwl" role="2OqNvi">
                                <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                                <node concept="3cmrfG" id="3nWvkBlmqwm" role="37wK5m">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="3nWvkBlmqwn" role="3cqZAp">
                            <node concept="3clFbS" id="3nWvkBlmqwo" role="3clFbx">
                              <node concept="3cpWs6" id="3nWvkBlmqwp" role="3cqZAp" />
                            </node>
                            <node concept="2OqwBi" id="3nWvkBlmqwq" role="3clFbw">
                              <node concept="37vLTw" id="3nWvkBlmqwr" role="2Oq$k0">
                                <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
                              </node>
                              <node concept="liA8E" id="3nWvkBlmqws" role="2OqNvi">
                                <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                              </node>
                            </node>
                          </node>
                          <node concept="3N13vt" id="3qaR2S2wnUa" role="3cqZAp" />
                        </node>
                        <node concept="22lmx$" id="3qaR2S2wnmp" role="3clFbw">
                          <node concept="3clFbC" id="3qaR2S2wnHd" role="3uHU7w">
                            <node concept="10Nm6u" id="3qaR2S2wnJA" role="3uHU7w" />
                            <node concept="37vLTw" id="3qaR2S2wnyd" role="3uHU7B">
                              <ref role="3cqZAo" node="5O9exHkXIHX" resolve="repoModel" />
                            </node>
                          </node>
                          <node concept="22lmx$" id="3qaR2S2wmOZ" role="3uHU7B">
                            <node concept="3clFbC" id="3qaR2S2wmDY" role="3uHU7B">
                              <node concept="37vLTw" id="3qaR2S2wmaK" role="3uHU7B">
                                <ref role="3cqZAo" node="5O9exHkXIHD" resolve="baseModel" />
                              </node>
                              <node concept="10Nm6u" id="3qaR2S2wmFb" role="3uHU7w" />
                            </node>
                            <node concept="3clFbC" id="3qaR2S2wnaw" role="3uHU7w">
                              <node concept="37vLTw" id="3qaR2S2wn02" role="3uHU7B">
                                <ref role="3cqZAo" node="5O9exHkXIHN" resolve="mineModel" />
                              </node>
                              <node concept="10Nm6u" id="3qaR2S2wncj" role="3uHU7w" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7VTIVrWo6lt" role="3cqZAp" />
                      <node concept="3SKdUt" id="7yFo2Ea2S9o" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXomp$" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXomp_" role="1PaTwD">
                            <property role="3oM_SC" value="read" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXompA" role="1PaTwD">
                            <property role="3oM_SC" value="action:" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7VTIVrWo9s$" role="3cqZAp">
                        <node concept="3cpWsn" id="7VTIVrWo9s_" role="3cpWs9">
                          <property role="TrG5h" value="mergeSession" />
                          <node concept="3uibUv" id="7VTIVrWo9sA" role="1tU5fm">
                            <ref role="3uigEE" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                          </node>
                          <node concept="2OqwBi" id="7VTIVrWmnW9" role="33vP2m">
                            <node concept="37vLTw" id="1uaLumv3jdt" role="2Oq$k0">
                              <ref role="3cqZAo" node="1uaLumv3b0C" resolve="ma" />
                            </node>
                            <node concept="liA8E" id="7VTIVrWmnWc" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                              <node concept="1bVj0M" id="7VTIVrWmnWd" role="37wK5m">
                                <node concept="3clFbS" id="7VTIVrWmnWe" role="1bW5cS">
                                  <node concept="3clFbF" id="2VIcG4opCyu" role="3cqZAp">
                                    <node concept="2YIFZM" id="7yFo2Ea2SDJ" role="3clFbG">
                                      <ref role="1Pybhc" to="bmv6:3$YpntjF4lA" resolve="MergeSession" />
                                      <ref role="37wK5l" to="bmv6:62HG2toA5Tc" resolve="createMergeSession" />
                                      <node concept="37vLTw" id="5O9exHkXKu4" role="37wK5m">
                                        <ref role="3cqZAo" node="5O9exHkXIHD" resolve="baseModel" />
                                      </node>
                                      <node concept="37vLTw" id="5O9exHkXKSk" role="37wK5m">
                                        <ref role="3cqZAo" node="5O9exHkXIHN" resolve="mineModel" />
                                      </node>
                                      <node concept="37vLTw" id="7yFo2Ea2SL7" role="37wK5m">
                                        <ref role="3cqZAo" node="5O9exHkXIHX" resolve="repoModel" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7yFo2Ea2TlD" role="3cqZAp">
                        <node concept="3cpWsn" id="7yFo2Ea2TlG" role="3cpWs9">
                          <property role="TrG5h" value="conflictingChangesCount" />
                          <node concept="10Oyi0" id="7yFo2Ea2TlB" role="1tU5fm" />
                          <node concept="2OqwBi" id="7yFo2Ea31bl" role="33vP2m">
                            <node concept="2OqwBi" id="7yFo2Ea2Uno" role="2Oq$k0">
                              <node concept="2OqwBi" id="7yFo2Ea2TS$" role="2Oq$k0">
                                <node concept="37vLTw" id="7VTIVrWoqLv" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7VTIVrWo9s_" resolve="mergeSession" />
                                </node>
                                <node concept="liA8E" id="7yFo2Ea2U7e" role="2OqNvi">
                                  <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                                </node>
                              </node>
                              <node concept="3zZkjj" id="7yFo2Ea2VLn" role="2OqNvi">
                                <node concept="1bVj0M" id="7yFo2Ea2VLp" role="23t8la">
                                  <node concept="3clFbS" id="7yFo2Ea2VLq" role="1bW5cS">
                                    <node concept="3clFbF" id="7yFo2Ea2Wl9" role="3cqZAp">
                                      <node concept="2OqwBi" id="7yFo2Ea2XFK" role="3clFbG">
                                        <node concept="2OqwBi" id="7yFo2Ea2W$a" role="2Oq$k0">
                                          <node concept="37vLTw" id="7yFo2Ea2Wl8" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7VTIVrWo9s_" resolve="mergeSession" />
                                          </node>
                                          <node concept="liA8E" id="7yFo2Ea2WUn" role="2OqNvi">
                                            <ref role="37wK5l" to="bmv6:3$YpntjF4nE" resolve="getConflictedWith" />
                                            <node concept="37vLTw" id="7yFo2Ea2Xbq" role="37wK5m">
                                              <ref role="3cqZAo" node="5W7E4fV0XSw" resolve="c" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3GX2aA" id="7yFo2Ea30OQ" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="5W7E4fV0XSw" role="1bW2Oz">
                                    <property role="TrG5h" value="c" />
                                    <node concept="2jxLKc" id="5W7E4fV0XSx" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="34oBXx" id="7yFo2Ea32Fv" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7yFo2Ea33qY" role="3cqZAp">
                        <node concept="3clFbS" id="7yFo2Ea33r1" role="3clFbx">
                          <node concept="RRSsy" id="3jYQuSB35lx" role="3cqZAp">
                            <property role="RRSoG" value="h1akgim/info" />
                            <node concept="3cpWs3" id="7yFo2Ea36U3" role="RRSoy">
                              <node concept="2OqwBi" id="7yFo2Ea3742" role="3uHU7w">
                                <node concept="37vLTw" id="7yFo2Ea36UU" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5O9exHkXIHD" resolve="baseModel" />
                                </node>
                                <node concept="LkI2h" id="7yFo2Ea37an" role="2OqNvi" />
                              </node>
                              <node concept="Xl_RD" id="7yFo2Ea36KI" role="3uHU7B">
                                <property role="Xl_RC" value="there are still conflicted changes in " />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4smIWJbVJod" role="3cqZAp">
                            <node concept="2OqwBi" id="4smIWJbVJoe" role="3clFbG">
                              <node concept="37vLTw" id="4smIWJbVJof" role="2Oq$k0">
                                <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
                              </node>
                              <node concept="liA8E" id="4smIWJbVJog" role="2OqNvi">
                                <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                                <node concept="3cmrfG" id="4smIWJbVJoh" role="37wK5m">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="4smIWJbVJoi" role="3cqZAp">
                            <node concept="3clFbS" id="4smIWJbVJoj" role="3clFbx">
                              <node concept="3cpWs6" id="4smIWJbVJok" role="3cqZAp" />
                            </node>
                            <node concept="2OqwBi" id="4smIWJbVJol" role="3clFbw">
                              <node concept="37vLTw" id="4smIWJbVJom" role="2Oq$k0">
                                <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
                              </node>
                              <node concept="liA8E" id="4smIWJbVJon" role="2OqNvi">
                                <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                              </node>
                            </node>
                          </node>
                          <node concept="3N13vt" id="7yFo2Ea37kM" role="3cqZAp" />
                        </node>
                        <node concept="3y3z36" id="7yFo2Ea36FN" role="3clFbw">
                          <node concept="37vLTw" id="7yFo2Ea33Uz" role="3uHU7B">
                            <ref role="3cqZAo" node="7yFo2Ea2TlG" resolve="conflictingChangesCount" />
                          </node>
                          <node concept="3cmrfG" id="7yFo2Ea36pS" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                      <node concept="RRSsy" id="3jYQuSB35lJ" role="3cqZAp">
                        <property role="RRSoG" value="h1akgim/info" />
                        <node concept="3cpWs3" id="7yFo2Ea38Uy" role="RRSoy">
                          <node concept="2OqwBi" id="7yFo2Ea394C" role="3uHU7w">
                            <node concept="37vLTw" id="7yFo2Ea38Vr" role="2Oq$k0">
                              <ref role="3cqZAo" node="5O9exHkXIHD" resolve="baseModel" />
                            </node>
                            <node concept="LkI2h" id="7yFo2Ea39aN" role="2OqNvi" />
                          </node>
                          <node concept="Xl_RD" id="7yFo2Ea384A" role="3uHU7B">
                            <property role="Xl_RC" value="no conflicting changes in " />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="6DkrMsAbD2_" role="3cqZAp">
                        <node concept="3cpWsn" id="6DkrMsAbD2z" role="3cpWs9">
                          <property role="3TUv4t" value="true" />
                          <property role="TrG5h" value="resultContent" />
                          <node concept="10Q1$e" id="3oQv0AQ7Zhc" role="1tU5fm">
                            <node concept="10PrrI" id="3oQv0AQ7WSL" role="10Q1$1" />
                          </node>
                          <node concept="2OqwBi" id="1uaLumv33pn" role="33vP2m">
                            <node concept="37vLTw" id="1uaLumv3iOp" role="2Oq$k0">
                              <ref role="3cqZAo" node="1uaLumv3b0C" resolve="ma" />
                            </node>
                            <node concept="liA8E" id="1uaLumv33Qk" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                              <node concept="1bVj0M" id="1uaLumv342T" role="37wK5m">
                                <node concept="3clFbS" id="1uaLumv342U" role="1bW5cS">
                                  <node concept="3clFbF" id="7yFo2Ea3a5d" role="3cqZAp">
                                    <node concept="2OqwBi" id="7yFo2Ea3aFV" role="3clFbG">
                                      <node concept="37vLTw" id="7yFo2Ea3a5b" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7VTIVrWo9s_" resolve="mergeSession" />
                                      </node>
                                      <node concept="liA8E" id="7yFo2Ea3aUj" role="2OqNvi">
                                        <ref role="37wK5l" to="bmv6:3$YpntjF4oh" resolve="applyChanges" />
                                        <node concept="2OqwBi" id="7yFo2Ea3b1c" role="37wK5m">
                                          <node concept="37vLTw" id="7yFo2Ea3aVs" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7VTIVrWo9s_" resolve="mergeSession" />
                                          </node>
                                          <node concept="liA8E" id="7yFo2Ea3bg4" role="2OqNvi">
                                            <ref role="37wK5l" to="bmv6:3$YpntjF4n8" resolve="getAllChanges" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="6DkrMsAbKiQ" role="3cqZAp">
                                    <node concept="3cpWsn" id="6DkrMsAbKiT" role="3cpWs9">
                                      <property role="TrG5h" value="resultModel" />
                                      <node concept="H_c77" id="6DkrMsAbKiO" role="1tU5fm" />
                                      <node concept="2OqwBi" id="6DkrMsAbL7V" role="33vP2m">
                                        <node concept="37vLTw" id="6DkrMsAbKT3" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7VTIVrWo9s_" resolve="mergeSession" />
                                        </node>
                                        <node concept="liA8E" id="6DkrMsAbLt4" role="2OqNvi">
                                          <ref role="37wK5l" to="bmv6:7OAO1yPTxzu" resolve="getSortedResultModel" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="6DkrMsAdCx$" role="3cqZAp">
                                    <node concept="3clFbS" id="6DkrMsAdCxB" role="3clFbx">
                                      <node concept="3cpWs6" id="2VIcG4owfaE" role="3cqZAp">
                                        <node concept="10Nm6u" id="2VIcG4owk7j" role="3cqZAk" />
                                      </node>
                                    </node>
                                    <node concept="3clFbC" id="6DkrMsAdEmD" role="3clFbw">
                                      <node concept="10Nm6u" id="6DkrMsAdEnQ" role="3uHU7w" />
                                      <node concept="37vLTw" id="6DkrMsAdE5z" role="3uHU7B">
                                        <ref role="3cqZAo" node="6DkrMsAbKiT" resolve="resultModel" />
                                      </node>
                                    </node>
                                    <node concept="3eNFk2" id="6DkrMsAdEzs" role="3eNLev">
                                      <node concept="3clFbS" id="6DkrMsAdEzu" role="3eOfB_">
                                        <node concept="RRSsy" id="3jYQuSB35lX" role="3cqZAp">
                                          <property role="RRSoG" value="h1akgim/info" />
                                          <node concept="2YIFZM" id="6DkrMsAcv5g" role="RRSoy">
                                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                                            <node concept="Xl_RD" id="6DkrMsAcv5h" role="37wK5m">
                                              <property role="Xl_RC" value="%s: node id duplication detected, should merge in UI." />
                                            </node>
                                            <node concept="2OqwBi" id="6DkrMsAcv5i" role="37wK5m">
                                              <node concept="37vLTw" id="6DkrMsAcv5j" role="2Oq$k0">
                                                <ref role="3cqZAo" node="5O9exHkXIHD" resolve="baseModel" />
                                              </node>
                                              <node concept="LkI2h" id="6DkrMsAcv5k" role="2OqNvi" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="6DkrMsAdEKd" role="3eO9$A">
                                        <node concept="37vLTw" id="6DkrMsAdEKe" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7VTIVrWo9s_" resolve="mergeSession" />
                                        </node>
                                        <node concept="liA8E" id="6DkrMsAdEKf" role="2OqNvi">
                                          <ref role="37wK5l" to="bmv6:4SQuDojia_S" resolve="hasIdsToRestore" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="6DkrMsAdJL$" role="9aQIa">
                                      <node concept="3clFbS" id="6DkrMsAdJL_" role="9aQI4">
                                        <node concept="3J1_TO" id="6DkrMsAcDFS" role="3cqZAp">
                                          <node concept="3clFbS" id="6DkrMsAcDFT" role="1zxBo7">
                                            <node concept="3cpWs6" id="2VIcG4owuo0" role="3cqZAp">
                                              <node concept="2OqwBi" id="2VIcG4oqaot" role="3cqZAk">
                                                <node concept="37vLTw" id="2VIcG4oq8uy" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="2VIcG4olp2W" resolve="ms" />
                                                </node>
                                                <node concept="liA8E" id="2VIcG4oqevR" role="2OqNvi">
                                                  <ref role="37wK5l" to="iho:2VIcG4oers7" resolve="save" />
                                                  <node concept="37vLTw" id="2VIcG4oqhg_" role="37wK5m">
                                                    <ref role="3cqZAo" node="6DkrMsAbKiT" resolve="resultModel" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3uVAMA" id="6DkrMsAcDGh" role="1zxBo5">
                                            <node concept="XOnhg" id="6DkrMsAcDGr" role="1zc67B">
                                              <property role="3TUv4t" value="false" />
                                              <property role="TrG5h" value="error" />
                                              <node concept="nSUau" id="xvs04dIfLm" role="1tU5fm">
                                                <node concept="3uibUv" id="6DkrMsAcDGs" role="nSUat">
                                                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="6DkrMsAcDGi" role="1zc67A">
                                              <node concept="3SKdUt" id="6DkrMsAefW$" role="3cqZAp">
                                                <node concept="1PaTwC" id="ATZLwXompB" role="1aUNEU">
                                                  <node concept="3oM_SD" id="ATZLwXompC" role="1PaTwD">
                                                    <property role="3oM_SC" value="this" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompD" role="1PaTwD">
                                                    <property role="3oM_SC" value="can" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompE" role="1PaTwD">
                                                    <property role="3oM_SC" value="be" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompF" role="1PaTwD">
                                                    <property role="3oM_SC" value="when" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompG" role="1PaTwD">
                                                    <property role="3oM_SC" value="saving" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompH" role="1PaTwD">
                                                    <property role="3oM_SC" value="in" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompI" role="1PaTwD">
                                                    <property role="3oM_SC" value="9" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompJ" role="1PaTwD">
                                                    <property role="3oM_SC" value="persistence" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompK" role="1PaTwD">
                                                    <property role="3oM_SC" value="after" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompL" role="1PaTwD">
                                                    <property role="3oM_SC" value="merge" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompM" role="1PaTwD">
                                                    <property role="3oM_SC" value="with" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompN" role="1PaTwD">
                                                    <property role="3oM_SC" value="8" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompO" role="1PaTwD">
                                                    <property role="3oM_SC" value="persistence" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompP" role="1PaTwD">
                                                    <property role="3oM_SC" value="=&gt;" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompQ" role="1PaTwD">
                                                    <property role="3oM_SC" value="leave" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompR" role="1PaTwD">
                                                    <property role="3oM_SC" value="it" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompS" role="1PaTwD">
                                                    <property role="3oM_SC" value="for" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompT" role="1PaTwD">
                                                    <property role="3oM_SC" value="UI" />
                                                  </node>
                                                  <node concept="3oM_SD" id="ATZLwXompU" role="1PaTwD">
                                                    <property role="3oM_SC" value="merge" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbJ" id="29lH0gvXVYO" role="3cqZAp">
                                                <node concept="3clFbS" id="29lH0gvXVYP" role="3clFbx">
                                                  <node concept="3clFbF" id="29lH0gvY4Xr" role="3cqZAp">
                                                    <node concept="2OqwBi" id="29lH0gvY6j5" role="3clFbG">
                                                      <node concept="37vLTw" id="29lH0gvY4Xq" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="29lH0gvXIl6" resolve="myUnresolvedModelFiles" />
                                                      </node>
                                                      <node concept="TSZUe" id="29lH0gvY8$d" role="2OqNvi">
                                                        <node concept="2GrUjf" id="29lH0gvY9p5" role="25WWJ7">
                                                          <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="1Wc70l" id="29lH0gvXVZF" role="3clFbw">
                                                  <node concept="3clFbC" id="29lH0gvXVZG" role="3uHU7w">
                                                    <node concept="3cmrfG" id="29lH0gvXVZH" role="3uHU7w">
                                                      <property role="3cmrfH" value="9" />
                                                    </node>
                                                    <node concept="2OqwBi" id="29lH0gvXVZI" role="3uHU7B">
                                                      <node concept="1eOMI4" id="29lH0gvXVZJ" role="2Oq$k0">
                                                        <node concept="10QFUN" id="29lH0gvXVZK" role="1eOMHV">
                                                          <node concept="3uibUv" id="29lH0gvXVZL" role="10QFUM">
                                                            <ref role="3uigEE" to="pa15:~PersistenceVersionAware" resolve="PersistenceVersionAware" />
                                                          </node>
                                                          <node concept="37vLTw" id="29lH0gvXVZM" role="10QFUP">
                                                            <ref role="3cqZAo" node="6DkrMsAbKiT" resolve="resultModel" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="liA8E" id="29lH0gvXVZN" role="2OqNvi">
                                                        <ref role="37wK5l" to="pa15:~PersistenceVersionAware.getPersistenceVersion()" resolve="getPersistenceVersion" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="1Wc70l" id="29lH0gvXVZO" role="3uHU7B">
                                                    <node concept="1Wc70l" id="29lH0gvXVZP" role="3uHU7B">
                                                      <node concept="2ZW3vV" id="29lH0gvXVZQ" role="3uHU7B">
                                                        <node concept="3uibUv" id="29lH0gvXVZR" role="2ZW6by">
                                                          <ref role="3uigEE" to="pa15:~PersistenceVersionAware" resolve="PersistenceVersionAware" />
                                                        </node>
                                                        <node concept="37vLTw" id="29lH0gvXVZS" role="2ZW6bz">
                                                          <ref role="3cqZAo" node="5O9exHkXIHD" resolve="baseModel" />
                                                        </node>
                                                      </node>
                                                      <node concept="2ZW3vV" id="29lH0gvXVZT" role="3uHU7w">
                                                        <node concept="3uibUv" id="29lH0gvXVZU" role="2ZW6by">
                                                          <ref role="3uigEE" to="pa15:~PersistenceVersionAware" resolve="PersistenceVersionAware" />
                                                        </node>
                                                        <node concept="37vLTw" id="29lH0gvXVZV" role="2ZW6bz">
                                                          <ref role="3cqZAo" node="6DkrMsAbKiT" resolve="resultModel" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbC" id="29lH0gvXVZW" role="3uHU7w">
                                                      <node concept="2OqwBi" id="29lH0gvXVZX" role="3uHU7B">
                                                        <node concept="1eOMI4" id="29lH0gvXVZY" role="2Oq$k0">
                                                          <node concept="10QFUN" id="29lH0gvXVZZ" role="1eOMHV">
                                                            <node concept="3uibUv" id="29lH0gvXW00" role="10QFUM">
                                                              <ref role="3uigEE" to="pa15:~PersistenceVersionAware" resolve="PersistenceVersionAware" />
                                                            </node>
                                                            <node concept="37vLTw" id="29lH0gvXW01" role="10QFUP">
                                                              <ref role="3cqZAo" node="5O9exHkXIHD" resolve="baseModel" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="29lH0gvXW02" role="2OqNvi">
                                                          <ref role="37wK5l" to="pa15:~PersistenceVersionAware.getPersistenceVersion()" resolve="getPersistenceVersion" />
                                                        </node>
                                                      </node>
                                                      <node concept="3cmrfG" id="29lH0gvXW03" role="3uHU7w">
                                                        <property role="3cmrfH" value="8" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="9aQIb" id="29lH0gvXW04" role="9aQIa">
                                                  <node concept="3clFbS" id="29lH0gvXW05" role="9aQI4">
                                                    <node concept="RRSsy" id="3jYQuSB35mb" role="3cqZAp">
                                                      <property role="RRSoG" value="gZ5fh_4/error" />
                                                      <node concept="3cpWs3" id="29lH0gvXW07" role="RRSoy">
                                                        <node concept="2OqwBi" id="29lH0gvXW08" role="3uHU7w">
                                                          <node concept="37vLTw" id="29lH0gvXW09" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="6DkrMsAbKiT" resolve="resultModel" />
                                                          </node>
                                                          <node concept="LkI2h" id="29lH0gvXW0a" role="2OqNvi" />
                                                        </node>
                                                        <node concept="Xl_RD" id="29lH0gvXW0b" role="3uHU7B">
                                                          <property role="Xl_RC" value="Cannot save merge resulting model " />
                                                        </node>
                                                      </node>
                                                      <node concept="37vLTw" id="29lH0gvXW0c" role="RRSow">
                                                        <ref role="3cqZAo" node="6DkrMsAcDGr" resolve="error" />
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
                                  <node concept="3cpWs6" id="2VIcG4owFu7" role="3cqZAp">
                                    <node concept="10Nm6u" id="2VIcG4owKga" role="3cqZAk" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1uaLumv36v3" role="3cqZAp" />
                      <node concept="3clFbJ" id="6DkrMsAdkl8" role="3cqZAp">
                        <node concept="3clFbS" id="6DkrMsAdklb" role="3clFbx">
                          <node concept="3cpWs8" id="2Kuykw7ytgO" role="3cqZAp">
                            <node concept="3cpWsn" id="2Kuykw7ytgR" role="3cpWs9">
                              <property role="TrG5h" value="isWritten" />
                              <node concept="10P_77" id="2Kuykw7ytgM" role="1tU5fm" />
                              <node concept="3clFbT" id="2Kuykw7yw03" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3clFbF" id="1uaLumv3uFC" role="3cqZAp">
                            <node concept="2YIFZM" id="1uaLumv3wVv" role="3clFbG">
                              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                              <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable)" resolve="runInUIThreadAndWait" />
                              <node concept="1bVj0M" id="1uaLumv3x6i" role="37wK5m">
                                <node concept="3clFbS" id="1uaLumv3x6j" role="1bW5cS">
                                  <node concept="3clFbF" id="2Kuykw7__wC" role="3cqZAp">
                                    <node concept="2OqwBi" id="2Kuykw7_Dzz" role="3clFbG">
                                      <node concept="2YIFZM" id="2Kuykw7_BJK" role="2Oq$k0">
                                        <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                        <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                      </node>
                                      <node concept="liA8E" id="2Kuykw7_FeX" role="2OqNvi">
                                        <ref role="37wK5l" to="bd8o:~Application.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
                                        <node concept="1bVj0M" id="68MS4n2IT_W" role="37wK5m">
                                          <node concept="3clFbS" id="68MS4n2IT_X" role="1bW5cS">
                                            <node concept="3J1_TO" id="68MS4n2IT_Y" role="3cqZAp">
                                              <node concept="3clFbS" id="68MS4n2ITA6" role="1zxBo7">
                                                <node concept="3clFbF" id="68MS4n2ITA7" role="3cqZAp">
                                                  <node concept="2OqwBi" id="68MS4n2ITA8" role="3clFbG">
                                                    <node concept="liA8E" id="68MS4n2ITA9" role="2OqNvi">
                                                      <ref role="37wK5l" to="jlff:~VirtualFile.setBinaryContent(byte[])" resolve="setBinaryContent" />
                                                      <node concept="37vLTw" id="7yFo2Ea3TWo" role="37wK5m">
                                                        <ref role="3cqZAo" node="6DkrMsAbD2z" resolve="resultContent" />
                                                      </node>
                                                    </node>
                                                    <node concept="2GrUjf" id="7yFo2Ea3TM$" role="2Oq$k0">
                                                      <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="2Kuykw7ywC2" role="3cqZAp">
                                                  <node concept="37vLTI" id="2Kuykw7yzuW" role="3clFbG">
                                                    <node concept="3clFbT" id="2Kuykw7y$Jo" role="37vLTx">
                                                      <property role="3clFbU" value="true" />
                                                    </node>
                                                    <node concept="37vLTw" id="2Kuykw7ywC0" role="37vLTJ">
                                                      <ref role="3cqZAo" node="2Kuykw7ytgR" resolve="isWritten" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3uVAMA" id="68MS4n2IT_Z" role="1zxBo5">
                                                <node concept="XOnhg" id="68MS4n2ITA4" role="1zc67B">
                                                  <property role="3TUv4t" value="false" />
                                                  <property role="TrG5h" value="e" />
                                                  <node concept="nSUau" id="xvs04dIfLk" role="1tU5fm">
                                                    <node concept="3uibUv" id="68MS4n2ITA5" role="nSUat">
                                                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbS" id="68MS4n2ITA0" role="1zc67A">
                                                  <node concept="RRSsy" id="3jYQuSB35mr" role="3cqZAp">
                                                    <property role="RRSoG" value="gZ5fh_4/error" />
                                                    <node concept="3cpWs3" id="2KwMPsppKrT" role="RRSoy">
                                                      <node concept="2OqwBi" id="2KwMPsppOuA" role="3uHU7w">
                                                        <node concept="2GrUjf" id="2KwMPsppN3s" role="2Oq$k0">
                                                          <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                                                        </node>
                                                        <node concept="liA8E" id="2KwMPsppQwv" role="2OqNvi">
                                                          <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                                                        </node>
                                                      </node>
                                                      <node concept="Xl_RD" id="68MS4n2ITA3" role="3uHU7B">
                                                        <property role="Xl_RC" value="Cannot save merge result into " />
                                                      </node>
                                                    </node>
                                                    <node concept="37vLTw" id="68MS4n2ITA2" role="RRSow">
                                                      <ref role="3cqZAo" node="68MS4n2ITA4" resolve="e" />
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
                          <node concept="3clFbJ" id="2Kuykw7yDay" role="3cqZAp">
                            <node concept="3clFbS" id="2Kuykw7yDa$" role="3clFbx">
                              <node concept="3clFbF" id="7yFo2Ea4bQD" role="3cqZAp">
                                <node concept="2EnYce" id="7yFo2Ea5ywe" role="3clFbG">
                                  <node concept="37vLTw" id="7yFo2Ea4bQB" role="2Oq$k0">
                                    <ref role="3cqZAo" node="68MS4n2IGQd" resolve="mySession" />
                                  </node>
                                  <node concept="liA8E" id="7yFo2Ea4cEF" role="2OqNvi">
                                    <ref role="37wK5l" to="hlwo:~MergeSession.conflictResolvedForFile(com.intellij.openapi.vfs.VirtualFile,com.intellij.openapi.vcs.merge.MergeSession$Resolution)" resolve="conflictResolvedForFile" />
                                    <node concept="2GrUjf" id="7yFo2Ea4d1D" role="37wK5m">
                                      <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                                    </node>
                                    <node concept="Rm8GO" id="7ua3Cx0Zfrn" role="37wK5m">
                                      <ref role="Rm8GQ" to="hlwo:~MergeSession$Resolution.Merged" resolve="Merged" />
                                      <ref role="1Px2BO" to="hlwo:~MergeSession$Resolution" resolve="MergeSession.Resolution" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7yFo2Ea4fff" role="3cqZAp">
                                <node concept="2OqwBi" id="7yFo2Ea4jmL" role="3clFbG">
                                  <node concept="2YIFZM" id="7yFo2Ea4gnG" role="2Oq$k0">
                                    <ref role="1Pybhc" to="1037:~VcsDirtyScopeManager" resolve="VcsDirtyScopeManager" />
                                    <ref role="37wK5l" to="1037:~VcsDirtyScopeManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                                    <node concept="37vLTw" id="68MS4n2IZdd" role="37wK5m">
                                      <ref role="3cqZAo" node="68MS4n2ILJ8" resolve="myProject" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7yFo2Ea4jJf" role="2OqNvi">
                                    <ref role="37wK5l" to="1037:~VcsDirtyScopeManager.fileDirty(com.intellij.openapi.vfs.VirtualFile)" resolve="fileDirty" />
                                    <node concept="2GrUjf" id="7yFo2Ea4kaA" role="37wK5m">
                                      <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="3xywf4w2TQV" role="3cqZAp">
                                <node concept="2OqwBi" id="3xywf4w2VzM" role="3clFbG">
                                  <node concept="37vLTw" id="3xywf4w2TQT" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3xywf4w2_T1" resolve="myResolvedModelFiles" />
                                  </node>
                                  <node concept="TSZUe" id="3xywf4w2Xzb" role="2OqNvi">
                                    <node concept="2GrUjf" id="3xywf4w32ww" role="25WWJ7">
                                      <ref role="2Gs0qQ" node="7yFo2Ea1tdf" resolve="file" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="2Kuykw7yF6l" role="3clFbw">
                              <ref role="3cqZAo" node="2Kuykw7ytgR" resolve="isWritten" />
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="6DkrMsAdmkH" role="3clFbw">
                          <node concept="10Nm6u" id="6DkrMsAdmw_" role="3uHU7w" />
                          <node concept="37vLTw" id="6DkrMsAdlTk" role="3uHU7B">
                            <ref role="3cqZAo" node="6DkrMsAbD2z" resolve="resultContent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="68MS4n2LwG3" role="3cqZAp">
                    <node concept="2OqwBi" id="68MS4n2Lxd0" role="3clFbG">
                      <node concept="37vLTw" id="68MS4n2LwG1" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
                      </node>
                      <node concept="liA8E" id="68MS4n2LxJi" role="2OqNvi">
                        <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                        <node concept="3cmrfG" id="68MS4n2LxKf" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="68MS4n2L_cu" role="3cqZAp">
                    <node concept="3clFbS" id="68MS4n2L_cx" role="3clFbx">
                      <node concept="3cpWs6" id="68MS4n2LAuv" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="68MS4n2LAiB" role="3clFbw">
                      <node concept="37vLTw" id="68MS4n2LAh$" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
                      </node>
                      <node concept="liA8E" id="68MS4n2LAtx" role="2OqNvi">
                        <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="68MS4n2IX9O" role="2GsD0m">
                  <ref role="3cqZAo" node="68MS4n2ITjE" resolve="myConflictedModelFiles" />
                </node>
              </node>
            </node>
            <node concept="1wplmZ" id="xvs04dIpjr" role="1zxBo6">
              <node concept="3clFbS" id="68MS4n2JByd" role="1wplMD">
                <node concept="3clFbF" id="68MS4n2LAyM" role="3cqZAp">
                  <node concept="2OqwBi" id="68MS4n2LAz$" role="3clFbG">
                    <node concept="37vLTw" id="68MS4n2LAyL" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vnmwWFEYI9" resolve="monitor" />
                    </node>
                    <node concept="liA8E" id="68MS4n2LAD3" role="2OqNvi">
                      <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="68MS4n2IAaX" role="1zkMxy">
        <ref role="3uigEE" to="xygl:~Task$Modal" resolve="Task.Modal" />
      </node>
      <node concept="3Tm1VV" id="3xywf4w2Ia$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7lfItRMIzEU" role="jymVt" />
    <node concept="2YIFZL" id="7lfItRMIN5b" role="jymVt">
      <property role="TrG5h" value="loadModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7lfItRMIN5e" role="3clF47">
        <node concept="3clFbJ" id="7lfItRMIQ7V" role="3cqZAp">
          <node concept="3clFbS" id="7lfItRMIQ7W" role="3clFbx">
            <node concept="3cpWs6" id="7lfItRMJcby" role="3cqZAp">
              <node concept="10Nm6u" id="7lfItRMJcn9" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7lfItRMIThK" role="3clFbw">
            <node concept="3cmrfG" id="7lfItRMITjp" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="7lfItRMIQw3" role="3uHU7B">
              <node concept="37vLTw" id="7lfItRMIQ97" role="2Oq$k0">
                <ref role="3cqZAo" node="7lfItRMIPkT" resolve="bytes" />
              </node>
              <node concept="1Rwk04" id="7lfItRMIQPP" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1JWxj3cJIim" role="3cqZAp">
          <node concept="3cpWsn" id="1JWxj3cJIin" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="1JWxj3cJIil" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="2VIcG4onOFv" role="33vP2m">
              <node concept="37vLTw" id="2VIcG4onMRK" role="2Oq$k0">
                <ref role="3cqZAo" node="7lfItRMIPuU" resolve="ms" />
              </node>
              <node concept="liA8E" id="2VIcG4onQ_P" role="2OqNvi">
                <ref role="37wK5l" to="iho:2VIcG4o3ZpT" resolve="load" />
                <node concept="37vLTw" id="2VIcG4onUSq" role="37wK5m">
                  <ref role="3cqZAo" node="7lfItRMIPkT" resolve="bytes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7lfItRMJ2Vv" role="3cqZAp">
          <node concept="3K4zz7" id="1vtkyQdiFBw" role="3cqZAk">
            <node concept="37vLTw" id="1vtkyQdiGc5" role="3K4E3e">
              <ref role="3cqZAo" node="1JWxj3cJIin" resolve="model" />
            </node>
            <node concept="10Nm6u" id="1vtkyQdiGDI" role="3K4GZi" />
            <node concept="2YIFZM" id="1vtkyQdiEaD" role="3K4Cdx">
              <ref role="37wK5l" to="iho:1vtkyQdhXzr" resolve="isModelFullyLoaded" />
              <ref role="1Pybhc" to="iho:1NiMOxiwPcH" resolve="VCSPersistenceUtil" />
              <node concept="37vLTw" id="1vtkyQdiEaE" role="37wK5m">
                <ref role="3cqZAo" node="1JWxj3cJIin" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7lfItRMJoED" role="1B3o_S" />
      <node concept="H_c77" id="7lfItRMILlb" role="3clF45" />
      <node concept="37vLTG" id="7lfItRMIPkT" role="3clF46">
        <property role="TrG5h" value="bytes" />
        <node concept="10Q1$e" id="7lfItRMIPtU" role="1tU5fm">
          <node concept="10PrrI" id="7lfItRMIPkS" role="10Q1$1" />
        </node>
      </node>
      <node concept="37vLTG" id="7lfItRMIPuU" role="3clF46">
        <property role="TrG5h" value="ms" />
        <node concept="3uibUv" id="2VIcG4onAzV" role="1tU5fm">
          <ref role="3uigEE" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7lfItRMJcyq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2VIcG4ooHWm" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
      </node>
    </node>
    <node concept="3Tm1VV" id="68MS4n2I8HS" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3oPvWSRo4RF">
    <property role="TrG5h" value="MPSVcsHelper" />
    <node concept="2tJIrI" id="2bADoQZbUR4" role="jymVt" />
    <node concept="312cEu" id="2bADoQZbW$h" role="jymVt">
      <property role="TrG5h" value="MPSMergeDialogResult" />
      <node concept="3Tm1VV" id="2bADoQZbW$i" role="1B3o_S" />
      <node concept="3uibUv" id="2bADoQZbW$j" role="EKbjA">
        <ref role="3uigEE" to="jlcu:~AbstractVcsHelper$MergeDialogResult" resolve="AbstractVcsHelper.MergeDialogResult" />
      </node>
      <node concept="312cEg" id="2bADoQZbW$k" role="jymVt">
        <property role="TrG5h" value="myFiles" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2bADoQZbW$m" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2bADoQZbW$n" role="11_B2D">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
        <node concept="3Tm6S6" id="2bADoQZbW$o" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="2bADoQZbW$p" role="jymVt">
        <node concept="3cqZAl" id="2bADoQZbW$q" role="3clF45" />
        <node concept="37vLTG" id="2bADoQZbW$r" role="3clF46">
          <property role="TrG5h" value="files" />
          <node concept="3uibUv" id="2bADoQZbW$s" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="2bADoQZbW$t" role="11_B2D">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2bADoQZbW$u" role="3clF47">
          <node concept="3clFbF" id="2bADoQZbW$v" role="3cqZAp">
            <node concept="37vLTI" id="2bADoQZbW$w" role="3clFbG">
              <node concept="37vLTw" id="2bADoQZbW$x" role="37vLTJ">
                <ref role="3cqZAo" node="2bADoQZbW$k" resolve="myFiles" />
              </node>
              <node concept="37vLTw" id="2bADoQZbW$y" role="37vLTx">
                <ref role="3cqZAo" node="2bADoQZbW$r" resolve="files" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2bADoQZbW$z" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="2bADoQZbW$$" role="jymVt">
        <property role="TrG5h" value="getProcessedFiles" />
        <node concept="2AHcQZ" id="2bADoQZbW$_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="2AHcQZ" id="2bADoQZbW$A" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="2bADoQZbW$B" role="3clF47">
          <node concept="3cpWs6" id="2bADoQZbW$C" role="3cqZAp">
            <node concept="37vLTw" id="2bADoQZbW$D" role="3cqZAk">
              <ref role="3cqZAo" node="2bADoQZbW$k" resolve="myFiles" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2bADoQZbW$E" role="1B3o_S" />
        <node concept="3uibUv" id="2bADoQZbW$F" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2bADoQZbW$G" role="11_B2D">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2bADoQZbW$H" role="jymVt">
        <property role="TrG5h" value="shouldFinishMerge" />
        <node concept="2AHcQZ" id="2bADoQZbW$I" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="2bADoQZbW$J" role="3clF47">
          <node concept="3SKdUt" id="2bADoQZbW$O" role="3cqZAp">
            <node concept="1PaTwC" id="2bADoQZbW$P" role="1aUNEU">
              <node concept="3oM_SD" id="2bADoQZbW$R" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="2bADoQZbW$S" role="1PaTwD">
                <property role="3oM_SC" value="default" />
              </node>
              <node concept="3oM_SD" id="2bADoQZbW$T" role="1PaTwD">
                <property role="3oM_SC" value="implementation" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2bADoQZbW$K" role="3cqZAp">
            <node concept="3clFbT" id="2bADoQZbW$L" role="3cqZAk" />
          </node>
        </node>
        <node concept="3Tm1VV" id="2bADoQZbW$M" role="1B3o_S" />
        <node concept="10P_77" id="2bADoQZbW$N" role="3clF45" />
      </node>
    </node>
    <node concept="2tJIrI" id="2bADoQZbUR2" role="jymVt" />
    <node concept="3clFbW" id="3oPvWSRpQsh" role="jymVt">
      <node concept="3cqZAl" id="3oPvWSRpQsj" role="3clF45" />
      <node concept="3Tm1VV" id="3oPvWSRpQsk" role="1B3o_S" />
      <node concept="3clFbS" id="3oPvWSRpQsl" role="3clF47">
        <node concept="XkiVB" id="3oPvWSRpUSm" role="3cqZAp">
          <ref role="37wK5l" to="j86o:~AbstractVcsHelperImpl.&lt;init&gt;(com.intellij.openapi.project.Project)" resolve="AbstractVcsHelperImpl" />
          <node concept="37vLTw" id="3oPvWSRpUS_" role="37wK5m">
            <ref role="3cqZAo" node="3oPvWSRpQvq" resolve="project" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3oPvWSRpQvq" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3oPvWSRpQvp" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3oPvWSRr8F8" role="jymVt" />
    <node concept="3clFb_" id="3oPvWSRpVET" role="jymVt">
      <property role="TrG5h" value="showMergeDialog" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="3oPvWSRpVEU" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="3oPvWSRpVEW" role="3clF46">
        <property role="TrG5h" value="files" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3oPvWSRpVEX" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="4CUd3ljTarz" role="11_B2D">
            <node concept="3uibUv" id="4CUd3ljTbHL" role="3qUE_r">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3oPvWSRpVEZ" role="3clF46">
        <property role="TrG5h" value="provider" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3oPvWSRpVF0" role="1tU5fm">
          <ref role="3uigEE" to="hlwo:~MergeProvider" resolve="MergeProvider" />
        </node>
      </node>
      <node concept="37vLTG" id="3oPvWSRpVF1" role="3clF46">
        <property role="TrG5h" value="customizer" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="3oPvWSRpVF2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="3oPvWSRpVF3" role="1tU5fm">
          <ref role="3uigEE" to="hlwo:~MergeDialogCustomizer" resolve="MergeDialogCustomizer" />
        </node>
      </node>
      <node concept="3clFbS" id="3oPvWSRpVF4" role="3clF47">
        <node concept="3clFbH" id="7UDnPJKjM5v" role="3cqZAp" />
        <node concept="3clFbJ" id="7UDnPJKk2_1" role="3cqZAp">
          <node concept="3clFbS" id="7UDnPJKk2_4" role="3clFbx">
            <node concept="3clFbH" id="7UDnPJKk5X8" role="3cqZAp" />
            <node concept="3cpWs8" id="7UDnPJKkDhs" role="3cqZAp">
              <node concept="3cpWsn" id="7UDnPJKkDhv" role="3cpWs9">
                <property role="TrG5h" value="answer" />
                <node concept="10Oyi0" id="7UDnPJKkDhq" role="1tU5fm" />
                <node concept="2YIFZM" id="7UDnPJKkDIs" role="33vP2m">
                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                  <ref role="37wK5l" to="jkm4:~Messages.showYesNoCancelDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showYesNoCancelDialog" />
                  <node concept="37vLTw" id="7UDnPJKkDIt" role="37wK5m">
                    <ref role="3cqZAo" to="jlcu:~AbstractVcsHelper.myProject" resolve="myProject" />
                  </node>
                  <node concept="Xl_RD" id="7UDnPJKkDIu" role="37wK5m">
                    <property role="Xl_RC" value="Conflicting changes have been detected. Some conflicts in the models can be autoresolved.\nResolve these conflicts automatically?" />
                  </node>
                  <node concept="Xl_RD" id="7UDnPJKkDIv" role="37wK5m">
                    <property role="Xl_RC" value="Conflict Resolver" />
                  </node>
                  <node concept="2YIFZM" id="3xywf4w10ZG" role="37wK5m">
                    <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                    <ref role="37wK5l" to="jkm4:~Messages.getQuestionIcon()" resolve="getQuestionIcon" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7UDnPJKlRH4" role="3cqZAp">
              <node concept="3clFbS" id="7UDnPJKlRH7" role="3clFbx">
                <node concept="3cpWs6" id="7UDnPJKlTBU" role="3cqZAp">
                  <node concept="2ShNRf" id="2bADoQZcu$e" role="3cqZAk">
                    <node concept="1pGfFk" id="2bADoQZdNAW" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="2bADoQZbW$p" resolve="MPSVcsHelper.MPSMergeDialogResult" />
                      <node concept="2YIFZM" id="7UDnPJKlUTc" role="37wK5m">
                        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                        <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                        <node concept="3uibUv" id="3dMY8lFN787" role="3PaCim">
                          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7UDnPJKlSsZ" role="3clFbw">
                <node concept="10M0yZ" id="7UDnPJKlStU" role="3uHU7w">
                  <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
                  <ref role="3cqZAo" to="jkm4:~Messages.CANCEL" resolve="CANCEL" />
                </node>
                <node concept="37vLTw" id="7UDnPJKlRRI" role="3uHU7B">
                  <ref role="3cqZAo" node="7UDnPJKkDhv" resolve="answer" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7UDnPJKlVBq" role="3cqZAp">
              <node concept="3clFbS" id="7UDnPJKlVBt" role="3clFbx">
                <node concept="3cpWs8" id="7yFo2Ea1kAj" role="3cqZAp">
                  <node concept="3cpWsn" id="7yFo2Ea1kAk" role="3cpWs9">
                    <property role="TrG5h" value="session" />
                    <node concept="3uibUv" id="7yFo2Ea1kAl" role="1tU5fm">
                      <ref role="3uigEE" to="hlwo:~MergeSession" resolve="MergeSession" />
                    </node>
                    <node concept="3K4zz7" id="7yFo2Ea1mpT" role="33vP2m">
                      <node concept="10Nm6u" id="7yFo2Ea1rb1" role="3K4GZi" />
                      <node concept="2OqwBi" id="7yFo2Ea1mJr" role="3K4E3e">
                        <node concept="1eOMI4" id="7yFo2Ea1mrF" role="2Oq$k0">
                          <node concept="10QFUN" id="7yFo2Ea1mrC" role="1eOMHV">
                            <node concept="3uibUv" id="7yFo2Ea1mDs" role="10QFUM">
                              <ref role="3uigEE" to="hlwo:~MergeProvider2" resolve="MergeProvider2" />
                            </node>
                            <node concept="37vLTw" id="7yFo2Ea1mEh" role="10QFUP">
                              <ref role="3cqZAo" node="3oPvWSRpVEZ" resolve="provider" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7yFo2Ea1nHR" role="2OqNvi">
                          <ref role="37wK5l" to="hlwo:~MergeProvider2.createMergeSession(java.util.List)" resolve="createMergeSession" />
                          <node concept="10QFUN" id="4CUd3ljV5HG" role="37wK5m">
                            <node concept="3uibUv" id="4CUd3ljV5Vj" role="10QFUM">
                              <ref role="3uigEE" to="33ny:~List" resolve="List" />
                              <node concept="3uibUv" id="4CUd3ljV60x" role="11_B2D">
                                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4CUd3ljUPXQ" role="10QFUP">
                              <ref role="3cqZAo" node="3oPvWSRpVEW" resolve="files" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ZW3vV" id="7yFo2Ea1lrq" role="3K4Cdx">
                        <node concept="3uibUv" id="7yFo2Ea1lRl" role="2ZW6by">
                          <ref role="3uigEE" to="hlwo:~MergeProvider2" resolve="MergeProvider2" />
                        </node>
                        <node concept="37vLTw" id="7yFo2Ea1lnR" role="2ZW6bz">
                          <ref role="3cqZAo" node="3oPvWSRpVEZ" resolve="provider" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3xywf4w3r7N" role="3cqZAp">
                  <node concept="3cpWsn" id="3xywf4w3r7O" role="3cpWs9">
                    <property role="TrG5h" value="modelConflictResolverTask" />
                    <node concept="3uibUv" id="3xywf4w3rFk" role="1tU5fm">
                      <ref role="3uigEE" node="68MS4n2IA6m" resolve="ConflictingModelsUtil.ModelConflictResolver" />
                    </node>
                    <node concept="2YIFZM" id="4CUd3ljV4qy" role="33vP2m">
                      <ref role="37wK5l" node="68MS4n2MKAn" resolve="getModelConflictResolverTask" />
                      <ref role="1Pybhc" node="68MS4n2I8HR" resolve="ConflictingModelsUtil" />
                      <node concept="37vLTw" id="4CUd3ljV4qz" role="37wK5m">
                        <ref role="3cqZAo" to="jlcu:~AbstractVcsHelper.myProject" resolve="myProject" />
                      </node>
                      <node concept="37vLTw" id="4CUd3ljV4q$" role="37wK5m">
                        <ref role="3cqZAo" node="3oPvWSRpVEZ" resolve="provider" />
                      </node>
                      <node concept="37vLTw" id="4CUd3ljV4q_" role="37wK5m">
                        <ref role="3cqZAo" node="7yFo2Ea1kAk" resolve="session" />
                      </node>
                      <node concept="37vLTw" id="4CUd3ljV4qA" role="37wK5m">
                        <ref role="3cqZAo" node="3oPvWSRpVEW" resolve="files" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68MS4n2MqhO" role="3cqZAp">
                  <node concept="2OqwBi" id="68MS4n2MumT" role="3clFbG">
                    <node concept="2YIFZM" id="68MS4n2Mt6y" role="2Oq$k0">
                      <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                      <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="68MS4n2Mw2u" role="2OqNvi">
                      <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
                      <node concept="37vLTw" id="3xywf4w3r7U" role="37wK5m">
                        <ref role="3cqZAo" node="3xywf4w3r7O" resolve="modelConflictResolverTask" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7UDnPJKmeRs" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXompV" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXompW" role="1PaTwD">
                      <property role="3oM_SC" value="update" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXompX" role="1PaTwD">
                      <property role="3oM_SC" value="list" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXompY" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXompZ" role="1PaTwD">
                      <property role="3oM_SC" value="files" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2KwMPspmaUC" role="3cqZAp">
                  <node concept="3cpWsn" id="2KwMPspmaUD" role="3cpWs9">
                    <property role="TrG5h" value="autoResolvedFiles" />
                    <node concept="_YKpA" id="2KwMPspmaUq" role="1tU5fm">
                      <node concept="3uibUv" id="2KwMPspmaUt" role="_ZDj9">
                        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2KwMPspmaUE" role="33vP2m">
                      <node concept="37vLTw" id="2KwMPspmaUF" role="2Oq$k0">
                        <ref role="3cqZAo" node="3xywf4w3r7O" resolve="modelConflictResolverTask" />
                      </node>
                      <node concept="liA8E" id="2KwMPspmaUG" role="2OqNvi">
                        <ref role="37wK5l" node="3xywf4w2OR$" resolve="getResolvedFiles" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="29lH0gvYoeq" role="3cqZAp">
                  <node concept="3cpWsn" id="29lH0gvYoet" role="3cpWs9">
                    <property role="TrG5h" value="unresolvedFiles" />
                    <node concept="_YKpA" id="29lH0gvYoem" role="1tU5fm">
                      <node concept="3uibUv" id="29lH0gvYoQY" role="_ZDj9">
                        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="29lH0gvYrI4" role="33vP2m">
                      <node concept="37vLTw" id="29lH0gvYry5" role="2Oq$k0">
                        <ref role="3cqZAo" node="3xywf4w3r7O" resolve="modelConflictResolverTask" />
                      </node>
                      <node concept="liA8E" id="29lH0gvYstW" role="2OqNvi">
                        <ref role="37wK5l" node="29lH0gvYgfx" resolve="getUnresolvedFiles" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="29lH0gvYZKH" role="3cqZAp">
                  <node concept="3clFbS" id="29lH0gvYZKK" role="3clFbx">
                    <node concept="3cpWs8" id="29lH0gvZB5c" role="3cqZAp">
                      <node concept="3cpWsn" id="29lH0gvZB5d" role="3cpWs9">
                        <property role="TrG5h" value="message" />
                        <node concept="17QB3L" id="29lH0gvZB5e" role="1tU5fm" />
                        <node concept="Xl_RD" id="29lH0gvZB5f" role="33vP2m">
                          <property role="Xl_RC" value="Conflicts in the following model files were not autoresolved:\n" />
                        </node>
                      </node>
                    </node>
                    <node concept="2Gpval" id="29lH0gvZB5g" role="3cqZAp">
                      <node concept="2GrKxI" id="29lH0gvZB5h" role="2Gsz3X">
                        <property role="TrG5h" value="file" />
                      </node>
                      <node concept="3clFbS" id="29lH0gvZB5i" role="2LFqv$">
                        <node concept="3clFbF" id="29lH0gvZB5j" role="3cqZAp">
                          <node concept="d57v9" id="29lH0gvZB5k" role="3clFbG">
                            <node concept="3cpWs3" id="29lH0gvZB5l" role="37vLTx">
                              <node concept="Xl_RD" id="29lH0gvZB5m" role="3uHU7w">
                                <property role="Xl_RC" value="\n" />
                              </node>
                              <node concept="3cpWs3" id="3dMY8lFLdDj" role="3uHU7B">
                                <node concept="Xl_RD" id="3dMY8lFLdOC" role="3uHU7B">
                                  <property role="Xl_RC" value=" " />
                                </node>
                                <node concept="2OqwBi" id="29lH0gvZB5n" role="3uHU7w">
                                  <node concept="2GrUjf" id="29lH0gvZB5o" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="29lH0gvZB5h" resolve="file" />
                                  </node>
                                  <node concept="liA8E" id="29lH0gvZB5p" role="2OqNvi">
                                    <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="29lH0gvZB5q" role="37vLTJ">
                              <ref role="3cqZAo" node="29lH0gvZB5d" resolve="message" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="29lH0gvZC9G" role="2GsD0m">
                        <ref role="3cqZAo" node="29lH0gvYoet" resolve="unresolvedFiles" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="3dMY8lFLvdL" role="3cqZAp">
                      <node concept="d57v9" id="3dMY8lFLwgU" role="3clFbG">
                        <node concept="3cpWs3" id="3dMY8lFLLIW" role="37vLTx">
                          <node concept="Xl_RD" id="3dMY8lFLLJ3" role="3uHU7w">
                            <property role="Xl_RC" value="Continue with merge?" />
                          </node>
                          <node concept="3cpWs3" id="3dMY8lFLIeg" role="3uHU7B">
                            <node concept="Xl_RD" id="3dMY8lFLIem" role="3uHU7B">
                              <property role="Xl_RC" value="This happens when you merge in models in an old persistence format and have not merged and re-generated all of their used languages." />
                            </node>
                            <node concept="Xl_RD" id="3dMY8lFLIeo" role="3uHU7w">
                              <property role="Xl_RC" value=" It is recommended to first merge and re-generate the used languages, and then try to auto resolve the conflicts again.\n" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="3dMY8lFLvdJ" role="37vLTJ">
                          <ref role="3cqZAo" node="29lH0gvZB5d" resolve="message" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="29lH0gvZg4F" role="3cqZAp">
                      <node concept="3cpWsn" id="29lH0gvZg4G" role="3cpWs9">
                        <property role="TrG5h" value="ans" />
                        <node concept="10Oyi0" id="29lH0gvZg4H" role="1tU5fm" />
                        <node concept="2YIFZM" id="3dMY8lFLNTY" role="33vP2m">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showYesNoDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showYesNoDialog" />
                          <node concept="37vLTw" id="3dMY8lFLNTZ" role="37wK5m">
                            <ref role="3cqZAo" to="jlcu:~AbstractVcsHelper.myProject" resolve="myProject" />
                          </node>
                          <node concept="37vLTw" id="3dMY8lFLNU0" role="37wK5m">
                            <ref role="3cqZAo" node="29lH0gvZB5d" resolve="message" />
                          </node>
                          <node concept="Xl_RD" id="3dMY8lFLNU1" role="37wK5m">
                            <property role="Xl_RC" value="Conflict Resolver" />
                          </node>
                          <node concept="2YIFZM" id="3dMY8lFLNU2" role="37wK5m">
                            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                            <ref role="37wK5l" to="jkm4:~Messages.getWarningIcon()" resolve="getWarningIcon" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="29lH0gvZkZ7" role="3cqZAp">
                      <node concept="3clFbS" id="29lH0gvZkZa" role="3clFbx">
                        <node concept="3cpWs6" id="29lH0gvZumn" role="3cqZAp">
                          <node concept="2ShNRf" id="2bADoQZdQ23" role="3cqZAk">
                            <node concept="1pGfFk" id="2bADoQZdW84" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" node="2bADoQZbW$p" resolve="MPSVcsHelper.MPSMergeDialogResult" />
                              <node concept="37vLTw" id="2bADoQZdXOk" role="37wK5m">
                                <ref role="3cqZAo" node="2KwMPspmaUD" resolve="autoResolvedFiles" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="29lH0gvZlym" role="3clFbw">
                        <node concept="10M0yZ" id="29lH0gvZui6" role="3uHU7w">
                          <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="3cqZAo" to="jkm4:~Messages.NO" resolve="NO" />
                        </node>
                        <node concept="37vLTw" id="29lH0gvZl40" role="3uHU7B">
                          <ref role="3cqZAo" node="29lH0gvZg4G" resolve="ans" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="29lH0gvZ0Pq" role="3clFbw">
                    <node concept="37vLTw" id="29lH0gvZ0rp" role="2Oq$k0">
                      <ref role="3cqZAo" node="29lH0gvYoet" resolve="unresolvedFiles" />
                    </node>
                    <node concept="3GX2aA" id="29lH0gvZ2sW" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3cpWs8" id="2KwMPspmy_r" role="3cqZAp">
                  <node concept="3cpWsn" id="2KwMPspmy_u" role="3cpWs9">
                    <property role="TrG5h" value="toResolve" />
                    <node concept="_YKpA" id="2KwMPspmy_n" role="1tU5fm">
                      <node concept="3uibUv" id="2KwMPspmz7s" role="_ZDj9">
                        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2KwMPspmUqk" role="33vP2m">
                      <node concept="2OqwBi" id="2KwMPspmSkD" role="2Oq$k0">
                        <node concept="1eOMI4" id="2KwMPspmSkE" role="2Oq$k0">
                          <node concept="10QFUN" id="2KwMPspmSkF" role="1eOMHV">
                            <node concept="37vLTw" id="2KwMPspmSkG" role="10QFUP">
                              <ref role="3cqZAo" node="3oPvWSRpVEW" resolve="files" />
                            </node>
                            <node concept="_YKpA" id="2KwMPspmSkH" role="10QFUM">
                              <node concept="3uibUv" id="2KwMPspmSkI" role="_ZDj9">
                                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="66VNe" id="2KwMPspmSkJ" role="2OqNvi">
                          <node concept="37vLTw" id="2KwMPspmSkK" role="576Qk">
                            <ref role="3cqZAo" node="2KwMPspmaUD" resolve="autoResolvedFiles" />
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="2KwMPspmVNg" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2KwMPspmhrK" role="3cqZAp">
                  <node concept="3cpWsn" id="2KwMPspmhrL" role="3cpWs9">
                    <property role="TrG5h" value="resolvedResult" />
                    <node concept="3uibUv" id="2bADoQZe1iM" role="1tU5fm">
                      <ref role="3uigEE" to="jlcu:~AbstractVcsHelper$MergeDialogResult" resolve="AbstractVcsHelper.MergeDialogResult" />
                    </node>
                    <node concept="3nyPlj" id="2KwMPspmhrM" role="33vP2m">
                      <ref role="37wK5l" to="j86o:~AbstractVcsHelperImpl.showMergeDialogWithResult(java.util.List,com.intellij.openapi.vcs.merge.MergeProvider,com.intellij.openapi.vcs.merge.MergeDialogCustomizer)" resolve="showMergeDialogWithResult" />
                      <node concept="37vLTw" id="2KwMPspmT9p" role="37wK5m">
                        <ref role="3cqZAo" node="2KwMPspmy_u" resolve="toResolve" />
                      </node>
                      <node concept="37vLTw" id="2KwMPspmhrX" role="37wK5m">
                        <ref role="3cqZAo" node="3oPvWSRpVEZ" resolve="provider" />
                      </node>
                      <node concept="37vLTw" id="2KwMPspmhrY" role="37wK5m">
                        <ref role="3cqZAo" node="3oPvWSRpVF1" resolve="customizer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2KwMPspm29J" role="3cqZAp">
                  <node concept="2ShNRf" id="2bADoQZeaBU" role="3cqZAk">
                    <node concept="1pGfFk" id="2bADoQZeewu" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="2bADoQZbW$p" resolve="MPSVcsHelper.MPSMergeDialogResult" />
                      <node concept="2OqwBi" id="2KwMPspmoXp" role="37wK5m">
                        <node concept="37vLTw" id="2KwMPspmo20" role="2Oq$k0">
                          <ref role="3cqZAo" node="2KwMPspmaUD" resolve="autoResolvedFiles" />
                        </node>
                        <node concept="X8dFx" id="2KwMPspmrdR" role="2OqNvi">
                          <node concept="2OqwBi" id="2bADoQZe3Vj" role="25WWJ7">
                            <node concept="37vLTw" id="2KwMPspmvce" role="2Oq$k0">
                              <ref role="3cqZAo" node="2KwMPspmhrL" resolve="resolvedResult" />
                            </node>
                            <node concept="liA8E" id="2bADoQZe6X5" role="2OqNvi">
                              <ref role="37wK5l" to="jlcu:~AbstractVcsHelper$MergeDialogResult.getProcessedFiles()" resolve="getProcessedFiles" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7UDnPJKlW_p" role="3clFbw">
                <node concept="10M0yZ" id="7UDnPJKlWAK" role="3uHU7w">
                  <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
                  <ref role="3cqZAo" to="jkm4:~Messages.YES" resolve="YES" />
                </node>
                <node concept="37vLTw" id="7UDnPJKlVYI" role="3uHU7B">
                  <ref role="3cqZAo" node="7UDnPJKkDhv" resolve="answer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="68MS4n2NLTA" role="3clFbw">
            <ref role="37wK5l" node="68MS4n2NqGe" resolve="hasResolvableConflicts" />
            <ref role="1Pybhc" node="68MS4n2I8HR" resolve="ConflictingModelsUtil" />
            <node concept="37vLTw" id="7UDnPJKk2S4" role="37wK5m">
              <ref role="3cqZAo" to="jlcu:~AbstractVcsHelper.myProject" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="68MS4n2NW7A" role="37wK5m">
              <ref role="3cqZAo" node="3oPvWSRpVEZ" resolve="provider" />
            </node>
            <node concept="2OqwBi" id="5G$1ADP9G$r" role="37wK5m">
              <node concept="1eOMI4" id="5G$1ADP9FG2" role="2Oq$k0">
                <node concept="10QFUN" id="5G$1ADP9FFZ" role="1eOMHV">
                  <node concept="_YKpA" id="5G$1ADP9FXM" role="10QFUM">
                    <node concept="3uibUv" id="5G$1ADP9Gd2" role="_ZDj9">
                      <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7UDnPJKk38l" role="10QFUP">
                    <ref role="3cqZAo" node="3oPvWSRpVEW" resolve="files" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="5G$1ADP9GI7" role="2OqNvi">
                <node concept="1bVj0M" id="5G$1ADP9GI8" role="23t8la">
                  <node concept="3clFbS" id="5G$1ADP9GI9" role="1bW5cS">
                    <node concept="3clFbF" id="5G$1ADP9GIa" role="3cqZAp">
                      <node concept="2OqwBi" id="5G$1ADP9GIb" role="3clFbG">
                        <node concept="10M0yZ" id="5G$1ADP9GIc" role="2Oq$k0">
                          <ref role="1PxDUh" node="4qk_0lIkI_e" resolve="ModelMergeTool" />
                          <ref role="3cqZAo" node="4qk_0lIkT7W" resolve="SUPPORTED_TYPES" />
                        </node>
                        <node concept="3JPx81" id="5G$1ADP9GId" role="2OqNvi">
                          <node concept="2OqwBi" id="5G$1ADP9GIe" role="25WWJ7">
                            <node concept="37vLTw" id="5G$1ADP9GIf" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XSy" resolve="f" />
                            </node>
                            <node concept="liA8E" id="5G$1ADP9GIg" role="2OqNvi">
                              <ref role="37wK5l" to="jlff:~VirtualFile.getFileType()" resolve="getFileType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XSy" role="1bW2Oz">
                    <property role="TrG5h" value="f" />
                    <node concept="2jxLKc" id="5W7E4fV0XSz" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7UDnPJKjMf7" role="3cqZAp" />
        <node concept="3clFbF" id="7UDnPJKkacY" role="3cqZAp">
          <node concept="3nyPlj" id="7UDnPJKkacW" role="3clFbG">
            <ref role="37wK5l" to="j86o:~AbstractVcsHelperImpl.showMergeDialogWithResult(java.util.List,com.intellij.openapi.vcs.merge.MergeProvider,com.intellij.openapi.vcs.merge.MergeDialogCustomizer)" resolve="showMergeDialogWithResult" />
            <node concept="37vLTw" id="7UDnPJKkaA9" role="37wK5m">
              <ref role="3cqZAo" node="3oPvWSRpVEW" resolve="files" />
            </node>
            <node concept="37vLTw" id="7UDnPJKkaBU" role="37wK5m">
              <ref role="3cqZAo" node="3oPvWSRpVEZ" resolve="provider" />
            </node>
            <node concept="37vLTw" id="7UDnPJKkaHL" role="37wK5m">
              <ref role="3cqZAo" node="3oPvWSRpVF1" resolve="customizer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3oPvWSRpVFn" role="1B3o_S" />
      <node concept="3uibUv" id="2bADoQZcqLA" role="3clF45">
        <ref role="3uigEE" to="jlcu:~AbstractVcsHelper$MergeDialogResult" resolve="AbstractVcsHelper.MergeDialogResult" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3oPvWSRo4RG" role="1B3o_S" />
    <node concept="3uibUv" id="48Xq_bGQ3oC" role="1zkMxy">
      <ref role="3uigEE" to="j86o:~AbstractVcsHelperImpl" resolve="AbstractVcsHelperImpl" />
    </node>
  </node>
  <node concept="312cEu" id="1R9fMbxrKEY">
    <property role="TrG5h" value="ModelDiffTool" />
    <node concept="3Tm1VV" id="1R9fMbxrKEZ" role="1B3o_S" />
    <node concept="3uibUv" id="1R9fMbxrLkZ" role="EKbjA">
      <ref role="3uigEE" to="yt4f:~FrameDiffTool" resolve="FrameDiffTool" />
    </node>
    <node concept="Wx3nA" id="7NAm8AJJnt" role="jymVt">
      <property role="TrG5h" value="DIFF_SUPPORTED_TYPES" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="7NAm8AJJnu" role="1tU5fm">
        <node concept="3uibUv" id="7NAm8AJJnv" role="10Q1$1">
          <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
        </node>
      </node>
      <node concept="2BsdOp" id="7NAm8AJJnw" role="33vP2m">
        <node concept="10M0yZ" id="7NAm8AJJnx" role="2BsfMF">
          <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
          <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_FILE_TYPE" resolve="MPS_FILE_TYPE" />
        </node>
        <node concept="10M0yZ" id="7NAm8AJJny" role="2BsfMF">
          <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
          <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_HEADER_FILE_TYPE" resolve="MPS_HEADER_FILE_TYPE" />
        </node>
        <node concept="10M0yZ" id="7NAm8AJJnz" role="2BsfMF">
          <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
          <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_ROOT_FILE_TYPE" resolve="MPS_ROOT_FILE_TYPE" />
        </node>
        <node concept="10M0yZ" id="2m0aRN6TOAj" role="2BsfMF">
          <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_BINARY_FILE_TYPE" resolve="MPS_BINARY_FILE_TYPE" />
          <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7NAm8AJJn$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7NAm8AJMkd" role="jymVt" />
    <node concept="3clFb_" id="1R9fMbxrLis" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1R9fMbxrLit" role="1B3o_S" />
      <node concept="3uibUv" id="1R9fMbxrLiv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="1R9fMbxrLiw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R9fMbxrLix" role="3clF47">
        <node concept="3clFbF" id="1R9fMbxrLqY" role="3cqZAp">
          <node concept="Xl_RD" id="1R9fMbxrLqX" role="3clFbG">
            <property role="Xl_RC" value="MPS model viewer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1R9fMbxrLi$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canShow" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1R9fMbxrLi_" role="1B3o_S" />
      <node concept="10P_77" id="1R9fMbxrLiB" role="3clF45" />
      <node concept="37vLTG" id="1R9fMbxrLiC" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1R9fMbxrLiD" role="1tU5fm">
          <ref role="3uigEE" to="yt4f:~DiffContext" resolve="DiffContext" />
        </node>
        <node concept="2AHcQZ" id="1R9fMbxrLiE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R9fMbxrLiF" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="6Y9uQqeMLPE" role="1tU5fm">
          <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
        </node>
        <node concept="2AHcQZ" id="1R9fMbxrLiH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1R9fMbxrLiI" role="3clF47">
        <node concept="3clFbF" id="5zPLqcHMkw6" role="3cqZAp">
          <node concept="2YIFZM" id="5zPLqcHMkwq" role="3clFbG">
            <ref role="37wK5l" node="5zPLqcHMjKa" resolve="canShow" />
            <ref role="1Pybhc" node="1R9fMbxrLzY" resolve="ModelDiffViewer" />
            <node concept="37vLTw" id="5zPLqcHMkwQ" role="37wK5m">
              <ref role="3cqZAo" node="1R9fMbxrLiC" resolve="context" />
            </node>
            <node concept="37vLTw" id="5zPLqcHMk_V" role="37wK5m">
              <ref role="3cqZAo" node="1R9fMbxrLiF" resolve="request" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1R9fMbxrLmQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1R9fMbxrLmR" role="1B3o_S" />
      <node concept="3uibUv" id="1R9fMbxrLmT" role="3clF45">
        <ref role="3uigEE" to="yt4f:~FrameDiffTool$DiffViewer" resolve="FrameDiffTool.DiffViewer" />
      </node>
      <node concept="37vLTG" id="1R9fMbxrLmU" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1R9fMbxrLmV" role="1tU5fm">
          <ref role="3uigEE" to="yt4f:~DiffContext" resolve="DiffContext" />
        </node>
        <node concept="2AHcQZ" id="1R9fMbxrLmW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R9fMbxrLmX" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="6Y9uQqeMLSf" role="1tU5fm">
          <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
        </node>
        <node concept="2AHcQZ" id="1R9fMbxrLmZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R9fMbxrLn0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R9fMbxrLn1" role="3clF47">
        <node concept="3clFbF" id="6Y9uQqeM5ca" role="3cqZAp">
          <node concept="2ShNRf" id="6Y9uQqeM5c4" role="3clFbG">
            <node concept="1pGfFk" id="5zPLqcHM8Ag" role="2ShVmc">
              <ref role="37wK5l" node="5zPLqcHLMf9" resolve="ModelDiffViewer" />
              <node concept="37vLTw" id="5zPLqcHMa32" role="37wK5m">
                <ref role="3cqZAo" node="1R9fMbxrLmU" resolve="context" />
              </node>
              <node concept="10QFUN" id="5zPLqcHMc2n" role="37wK5m">
                <node concept="3uibUv" id="5zPLqcHMc5Q" role="10QFUM">
                  <ref role="3uigEE" to="phib:~ContentDiffRequest" resolve="ContentDiffRequest" />
                </node>
                <node concept="37vLTw" id="5zPLqcHMa5R" role="10QFUP">
                  <ref role="3cqZAo" node="1R9fMbxrLmX" resolve="request" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R9fMbxrLzY">
    <property role="TrG5h" value="ModelDiffViewer" />
    <node concept="Wx3nA" id="3bsyx4MRX1o" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DIFF_SHOW_ROOTID" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3bsyx4MRJT_" role="1B3o_S" />
      <node concept="3uibUv" id="3bsyx4MRWK4" role="1tU5fm">
        <ref role="3uigEE" to="zn9m:~Key" resolve="Key" />
        <node concept="3uibUv" id="3bsyx4MRX0V" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="2ShNRf" id="3bsyx4MRXQ$" role="33vP2m">
        <node concept="1pGfFk" id="3bsyx4MRXMc" role="2ShVmc">
          <ref role="37wK5l" to="zn9m:~Key.&lt;init&gt;(java.lang.String)" resolve="Key" />
          <node concept="3uibUv" id="3bsyx4MRXMd" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="Xl_RD" id="3bsyx4MRY8$" role="37wK5m">
            <property role="Xl_RC" value="MPS.diff.rootid" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2XVPiKXGj6s" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DIFF_NAVIGATE_TO" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2XVPiKXGj6t" role="1B3o_S" />
      <node concept="3uibUv" id="2XVPiKXGj6u" role="1tU5fm">
        <ref role="3uigEE" to="zn9m:~Key" resolve="Key" />
        <node concept="2pR195" id="2XVPiKXGACq" role="11_B2D">
          <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
        </node>
      </node>
      <node concept="2ShNRf" id="2XVPiKXGj6w" role="33vP2m">
        <node concept="1pGfFk" id="2XVPiKXGj6x" role="2ShVmc">
          <ref role="37wK5l" to="zn9m:~Key.&lt;init&gt;(java.lang.String)" resolve="Key" />
          <node concept="2pR195" id="5zPLqcHLmcW" role="1pMfVU">
            <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
          </node>
          <node concept="Xl_RD" id="2XVPiKXGj6z" role="37wK5m">
            <property role="Xl_RC" value="MPS.diff.navigateto" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1vsKl3K0pUU" role="jymVt">
      <property role="TrG5h" value="DIFF_SHOW_TREE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1vsKl3K0qLE" role="1B3o_S" />
      <node concept="3uibUv" id="1vsKl3K0rbp" role="1tU5fm">
        <ref role="3uigEE" to="zn9m:~Key" resolve="Key" />
        <node concept="3uibUv" id="1vsKl3K0rA9" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="2YIFZM" id="1vsKl3K0ssj" role="33vP2m">
        <ref role="37wK5l" to="zn9m:~Key.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="zn9m:~Key" resolve="Key" />
        <node concept="Xl_RD" id="1vsKl3K0sMU" role="37wK5m">
          <property role="Xl_RC" value="MPS.diff.showtree" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XVPiKXGiG9" role="jymVt" />
    <node concept="312cEg" id="5zPLqcHLKP4" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myViewer" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5zPLqcHLKLA" role="1B3o_S" />
      <node concept="3uibUv" id="5zPLqcHLKNK" role="1tU5fm">
        <ref role="3uigEE" to="p37l:5zPLqcHJB90" resolve="ModelDifferenceViewer" />
      </node>
    </node>
    <node concept="2tJIrI" id="5zPLqcHLKRi" role="jymVt" />
    <node concept="3clFbW" id="5zPLqcHLMf9" role="jymVt">
      <node concept="37vLTG" id="5zPLqcHM9vx" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5zPLqcHM9xx" role="1tU5fm">
          <ref role="3uigEE" to="yt4f:~DiffContext" resolve="DiffContext" />
        </node>
        <node concept="2AHcQZ" id="5zPLqcHMauZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHM9y1" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="5zPLqcHMbm5" role="1tU5fm">
          <ref role="3uigEE" to="phib:~ContentDiffRequest" resolve="ContentDiffRequest" />
        </node>
        <node concept="2AHcQZ" id="5zPLqcHMavw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="5zPLqcHLMfb" role="3clF45" />
      <node concept="3Tm1VV" id="5zPLqcHLMfc" role="1B3o_S" />
      <node concept="3clFbS" id="5zPLqcHLMfd" role="3clF47">
        <node concept="3cpWs8" id="6y_kxB1ZrlZ" role="3cqZAp">
          <node concept="3cpWsn" id="6y_kxB1Zrm0" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="6y_kxB1ZrlU" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2YIFZM" id="5Lno_XHoJP0" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2OqwBi" id="6y_kxB1Zrm4" role="37wK5m">
                <node concept="37vLTw" id="6y_kxB1Zrm5" role="2Oq$k0">
                  <ref role="3cqZAo" node="5zPLqcHM9vx" resolve="context" />
                </node>
                <node concept="liA8E" id="6y_kxB1Zrm6" role="2OqNvi">
                  <ref role="37wK5l" to="yt4f:~DiffContext.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5zPLqcHNRe1" role="3cqZAp" />
        <node concept="3cpWs8" id="5zPLqcHMfvt" role="3cqZAp">
          <node concept="3cpWsn" id="5zPLqcHMfvu" role="3cpWs9">
            <property role="TrG5h" value="contents" />
            <node concept="2OqwBi" id="5zPLqcHMfvv" role="33vP2m">
              <node concept="37vLTw" id="5zPLqcHMfvw" role="2Oq$k0">
                <ref role="3cqZAo" node="5zPLqcHM9y1" resolve="request" />
              </node>
              <node concept="liA8E" id="5zPLqcHMfvx" role="2OqNvi">
                <ref role="37wK5l" to="phib:~ContentDiffRequest.getContents()" resolve="getContents" />
              </node>
            </node>
            <node concept="_YKpA" id="1X_O_$4xj$F" role="1tU5fm">
              <node concept="3uibUv" id="1X_O_$4xj$H" role="_ZDj9">
                <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5zPLqcHMTC3" role="3cqZAp">
          <node concept="3cpWsn" id="5zPLqcHMTC4" role="3cpWs9">
            <property role="TrG5h" value="type" />
            <node concept="3uibUv" id="5zPLqcHMTC5" role="1tU5fm">
              <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
            </node>
            <node concept="3K4zz7" id="5zPLqcHMUfr" role="33vP2m">
              <node concept="3y3z36" id="5zPLqcHMU4p" role="3K4Cdx">
                <node concept="10Nm6u" id="5zPLqcHMUan" role="3uHU7w" />
                <node concept="2OqwBi" id="5zPLqcHMTXV" role="3uHU7B">
                  <node concept="1y4W85" id="1aBDmM$rnG6" role="2Oq$k0">
                    <node concept="3cmrfG" id="1aBDmM$ro4m" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="5zPLqcHMTXX" role="1y566C">
                      <ref role="3cqZAo" node="5zPLqcHMfvu" resolve="contents" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5zPLqcHMTY0" role="2OqNvi">
                    <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5zPLqcHMUjI" role="3K4E3e">
                <node concept="1y4W85" id="1aBDmM$rpYr" role="2Oq$k0">
                  <node concept="3cmrfG" id="1aBDmM$rqyI" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5zPLqcHMUjK" role="1y566C">
                    <ref role="3cqZAo" node="5zPLqcHMfvu" resolve="contents" />
                  </node>
                </node>
                <node concept="liA8E" id="5zPLqcHMUjN" role="2OqNvi">
                  <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                </node>
              </node>
              <node concept="2OqwBi" id="5zPLqcHMUp3" role="3K4GZi">
                <node concept="1y4W85" id="1aBDmM$rsc1" role="2Oq$k0">
                  <node concept="3cmrfG" id="1aBDmM$rsoe" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="5zPLqcHMUp5" role="1y566C">
                    <ref role="3cqZAo" node="5zPLqcHMfvu" resolve="contents" />
                  </node>
                </node>
                <node concept="liA8E" id="5zPLqcHMUp8" role="2OqNvi">
                  <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Tzj6YXEQRF" role="3cqZAp">
          <node concept="3cpWsn" id="Tzj6YXEQRG" role="3cpWs9">
            <property role="TrG5h" value="rootId" />
            <node concept="3uibUv" id="Tzj6YXEQRH" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1X_O_$4lQe0" role="3cqZAp">
          <node concept="3cpWsn" id="1X_O_$4lQe3" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="_YKpA" id="1X_O_$4lQdW" role="1tU5fm">
              <node concept="H_c77" id="1X_O_$4lTT7" role="_ZDj9" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1X_O_$4vEul" role="3cqZAp">
          <node concept="3cpWsn" id="1X_O_$4vEuo" role="3cpWs9">
            <property role="TrG5h" value="perRootPersistence" />
            <node concept="10P_77" id="1X_O_$4vEuj" role="1tU5fm" />
            <node concept="22lmx$" id="Tzj6YXEHXG" role="33vP2m">
              <node concept="2OqwBi" id="Tzj6YXEHXH" role="3uHU7B">
                <node concept="10M0yZ" id="Tzj6YXEHXI" role="2Oq$k0">
                  <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
                  <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_ROOT_FILE_TYPE" resolve="MPS_ROOT_FILE_TYPE" />
                </node>
                <node concept="liA8E" id="Tzj6YXEHXJ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="Tzj6YXEHXK" role="37wK5m">
                    <ref role="3cqZAo" node="5zPLqcHMTC4" resolve="type" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="Tzj6YXEHXL" role="3uHU7w">
                <node concept="10M0yZ" id="Tzj6YXEHXM" role="2Oq$k0">
                  <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
                  <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_HEADER_FILE_TYPE" resolve="MPS_HEADER_FILE_TYPE" />
                </node>
                <node concept="liA8E" id="Tzj6YXEHXN" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="Tzj6YXEHXO" role="37wK5m">
                    <ref role="3cqZAo" node="5zPLqcHMTC4" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Tzj6YXEHGr" role="3cqZAp">
          <node concept="3clFbS" id="Tzj6YXEHGt" role="3clFbx">
            <node concept="3cpWs8" id="1X_O_$4ylOK" role="3cqZAp">
              <node concept="3cpWsn" id="1X_O_$4ylON" role="3cpWs9">
                <property role="TrG5h" value="modelsIds" />
                <node concept="_YKpA" id="1X_O_$4ylOG" role="1tU5fm">
                  <node concept="1LlUBW" id="1X_O_$4ynBU" role="_ZDj9">
                    <node concept="H_c77" id="1X_O_$4ysnm" role="1Lm7xW" />
                    <node concept="3uibUv" id="1X_O_$4ywqV" role="1Lm7xW">
                      <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1X_O_$4z1dX" role="33vP2m">
                  <node concept="2OqwBi" id="1X_O_$4yGdy" role="2Oq$k0">
                    <node concept="37vLTw" id="1X_O_$4yCOa" role="2Oq$k0">
                      <ref role="3cqZAo" node="5zPLqcHMfvu" resolve="contents" />
                    </node>
                    <node concept="3$u5V9" id="1X_O_$4yIET" role="2OqNvi">
                      <node concept="1bVj0M" id="1X_O_$4yIEV" role="23t8la">
                        <node concept="3clFbS" id="1X_O_$4yIEW" role="1bW5cS">
                          <node concept="3clFbF" id="1X_O_$4yL$Y" role="3cqZAp">
                            <node concept="1rXfSq" id="1X_O_$4yL$X" role="3clFbG">
                              <ref role="37wK5l" node="6y_kxB1YYBy" resolve="getModelAndRoot" />
                              <node concept="37vLTw" id="1X_O_$4yPge" role="37wK5m">
                                <ref role="3cqZAo" node="6y_kxB1Zrm0" resolve="mpsProject" />
                              </node>
                              <node concept="37vLTw" id="1X_O_$4ySUP" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XS$" resolve="it" />
                              </node>
                              <node concept="37vLTw" id="1X_O_$4yYfg" role="37wK5m">
                                <ref role="3cqZAo" node="5zPLqcHMTC4" resolve="type" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XS$" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0XS_" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="1X_O_$4z4ZY" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7aiOwVxTraA" role="3cqZAp">
              <node concept="37vLTI" id="7aiOwVxTraC" role="3clFbG">
                <node concept="3K4zz7" id="Tzj6YXEQRI" role="37vLTx">
                  <node concept="1LFfDK" id="1X_O_$4zZN6" role="3K4E3e">
                    <node concept="3cmrfG" id="1X_O_$4zZN7" role="1LF_Uc">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="1y4W85" id="1X_O_$4zZN8" role="1LFl5Q">
                      <node concept="3cmrfG" id="1X_O_$4zZN9" role="1y58nS">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="1X_O_$4zZNa" role="1y566C">
                        <ref role="3cqZAo" node="1X_O_$4ylON" resolve="modelsIds" />
                      </node>
                    </node>
                  </node>
                  <node concept="1LFfDK" id="1X_O_$4$1B$" role="3K4GZi">
                    <node concept="3cmrfG" id="1X_O_$4$1B_" role="1LF_Uc">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="1y4W85" id="1X_O_$4$1BA" role="1LFl5Q">
                      <node concept="3cmrfG" id="1X_O_$4$1BB" role="1y58nS">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="1X_O_$4$1BC" role="1y566C">
                        <ref role="3cqZAo" node="1X_O_$4ylON" resolve="modelsIds" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="Tzj6YXEQRP" role="3K4Cdx">
                    <node concept="1LFfDK" id="1X_O_$4zWXk" role="3uHU7B">
                      <node concept="3cmrfG" id="1X_O_$4zX9y" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="1y4W85" id="1X_O_$4zThl" role="1LFl5Q">
                        <node concept="3cmrfG" id="1X_O_$4zV4B" role="1y58nS">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="1X_O_$4zO9t" role="1y566C">
                          <ref role="3cqZAo" node="1X_O_$4ylON" resolve="modelsIds" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="Tzj6YXEQRT" role="3uHU7w" />
                  </node>
                </node>
                <node concept="37vLTw" id="7aiOwVxTraG" role="37vLTJ">
                  <ref role="3cqZAo" node="Tzj6YXEQRG" resolve="rootId" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1X_O_$4uEHc" role="3cqZAp">
              <node concept="37vLTI" id="1X_O_$4uIql" role="3clFbG">
                <node concept="2OqwBi" id="1X_O_$4zqYy" role="37vLTx">
                  <node concept="2OqwBi" id="1X_O_$4zdW8" role="2Oq$k0">
                    <node concept="37vLTw" id="1X_O_$4zazA" role="2Oq$k0">
                      <ref role="3cqZAo" node="1X_O_$4ylON" resolve="modelsIds" />
                    </node>
                    <node concept="3$u5V9" id="1X_O_$4zh0X" role="2OqNvi">
                      <node concept="1bVj0M" id="1X_O_$4zh0Z" role="23t8la">
                        <node concept="3clFbS" id="1X_O_$4zh10" role="1bW5cS">
                          <node concept="3clFbF" id="1X_O_$4zk6e" role="3cqZAp">
                            <node concept="1LFfDK" id="1X_O_$4zlRO" role="3clFbG">
                              <node concept="3cmrfG" id="1X_O_$4zoS0" role="1LF_Uc">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="1X_O_$4zk6d" role="1LFl5Q">
                                <ref role="3cqZAo" node="5W7E4fV0XSA" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0XSA" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0XSB" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="1X_O_$4zvMn" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="1X_O_$4uEHa" role="37vLTJ">
                  <ref role="3cqZAo" node="1X_O_$4lQe3" resolve="models" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="Tzj6YXEOCR" role="9aQIa">
            <node concept="3clFbS" id="Tzj6YXEOCS" role="9aQI4">
              <node concept="3SKdUt" id="3bsyx4MS6px" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXomq0" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXomq1" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomq2" role="1PaTwD">
                    <property role="3oM_SC" value="show" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomq3" role="1PaTwD">
                    <property role="3oM_SC" value="one" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomq4" role="1PaTwD">
                    <property role="3oM_SC" value="root" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomq5" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomq6" role="1PaTwD">
                    <property role="3oM_SC" value="if" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomq7" role="1PaTwD">
                    <property role="3oM_SC" value="requested" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7aiOwVxTqLk" role="3cqZAp">
                <node concept="37vLTI" id="7aiOwVxTqLm" role="3clFbG">
                  <node concept="2OqwBi" id="3bsyx4MS2BC" role="37vLTx">
                    <node concept="37vLTw" id="58LFDWPAKbF" role="2Oq$k0">
                      <ref role="3cqZAo" node="5zPLqcHM9y1" resolve="request" />
                    </node>
                    <node concept="liA8E" id="3bsyx4MS2BE" role="2OqNvi">
                      <ref role="37wK5l" to="phib:~DiffRequest.getUserData(com.intellij.openapi.util.Key)" resolve="getUserData" />
                      <node concept="37vLTw" id="3bsyx4MS2BH" role="37wK5m">
                        <ref role="3cqZAo" node="3bsyx4MRX1o" resolve="DIFF_SHOW_ROOTID" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7aiOwVxTsKy" role="37vLTJ">
                    <ref role="3cqZAo" node="Tzj6YXEQRG" resolve="rootId" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1X_O_$4uQaa" role="3cqZAp">
                <node concept="37vLTI" id="1X_O_$4uTK9" role="3clFbG">
                  <node concept="2OqwBi" id="1X_O_$4xYhB" role="37vLTx">
                    <node concept="2OqwBi" id="1X_O_$4xfmC" role="2Oq$k0">
                      <node concept="37vLTw" id="1X_O_$4xbNq" role="2Oq$k0">
                        <ref role="3cqZAo" node="5zPLqcHMfvu" resolve="contents" />
                      </node>
                      <node concept="3$u5V9" id="1X_O_$4xPXb" role="2OqNvi">
                        <node concept="1bVj0M" id="1X_O_$4xPXd" role="23t8la">
                          <node concept="3clFbS" id="1X_O_$4xPXe" role="1bW5cS">
                            <node concept="3clFbF" id="1X_O_$4xSKl" role="3cqZAp">
                              <node concept="2YIFZM" id="1X_O_$4xSKn" role="3clFbG">
                                <ref role="37wK5l" node="5zPLqcHMCgg" resolve="getModel" />
                                <ref role="1Pybhc" node="1R9fMbxrLzY" resolve="ModelDiffViewer" />
                                <node concept="37vLTw" id="1X_O_$4xSKo" role="37wK5m">
                                  <ref role="3cqZAo" node="6y_kxB1Zrm0" resolve="mpsProject" />
                                </node>
                                <node concept="37vLTw" id="1X_O_$4xViB" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XSC" resolve="it" />
                                </node>
                                <node concept="37vLTw" id="1X_O_$4xSKt" role="37wK5m">
                                  <ref role="3cqZAo" node="5zPLqcHMTC4" resolve="type" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XSC" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0XSD" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="1X_O_$4y2Tv" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="1X_O_$4uQa8" role="37vLTJ">
                    <ref role="3cqZAo" node="1X_O_$4lQe3" resolve="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1X_O_$4w7i6" role="3clFbw">
            <ref role="3cqZAo" node="1X_O_$4vEuo" resolve="perRootPersistence" />
          </node>
        </node>
        <node concept="3clFbH" id="69TGyf2LOyB" role="3cqZAp" />
        <node concept="3cpWs8" id="1vsKl3K0xFs" role="3cqZAp">
          <node concept="3cpWsn" id="1vsKl3K0xFt" role="3cpWs9">
            <property role="TrG5h" value="showTree" />
            <node concept="10P_77" id="1vsKl3K0xFu" role="1tU5fm" />
            <node concept="2OqwBi" id="1vsKl3K0vFh" role="33vP2m">
              <node concept="37vLTw" id="1X_O_$4wRAD" role="2Oq$k0">
                <ref role="3cqZAo" node="1vsKl3K0pUU" resolve="DIFF_SHOW_TREE" />
              </node>
              <node concept="liA8E" id="1vsKl3K0vFj" role="2OqNvi">
                <ref role="37wK5l" to="zn9m:~Key.get(com.intellij.openapi.util.UserDataHolder,java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="1vsKl3K0vFk" role="37wK5m">
                  <ref role="3cqZAo" node="5zPLqcHM9y1" resolve="request" />
                </node>
                <node concept="3fqX7Q" id="1X_O_$4w$hc" role="37wK5m">
                  <node concept="37vLTw" id="1X_O_$4w$he" role="3fr31v">
                    <ref role="3cqZAo" node="1X_O_$4vEuo" resolve="perRootPersistence" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5zPLqcHLMi6" role="3cqZAp">
          <node concept="37vLTI" id="5zPLqcHLMo4" role="3clFbG">
            <node concept="2ShNRf" id="5zPLqcHMa$r" role="37vLTx">
              <node concept="1pGfFk" id="5zPLqcHMa$q" role="2ShVmc">
                <ref role="37wK5l" to="p37l:5zPLqcHJBaa" resolve="ModelDifferenceViewer" />
                <node concept="37vLTw" id="17s8F1401JA" role="37wK5m">
                  <ref role="3cqZAo" node="5zPLqcHM9vx" resolve="context" />
                </node>
                <node concept="37vLTw" id="17s8F1407rA" role="37wK5m">
                  <ref role="3cqZAo" node="5zPLqcHM9y1" resolve="request" />
                </node>
                <node concept="Xjq3P" id="17s8F140fvE" role="37wK5m" />
                <node concept="37vLTw" id="fs2nn71Jak" role="37wK5m">
                  <ref role="3cqZAo" node="1X_O_$4lQe3" resolve="models" />
                </node>
                <node concept="37vLTw" id="1vsKl3K0xre" role="37wK5m">
                  <ref role="3cqZAo" node="1vsKl3K0xFt" resolve="showTree" />
                </node>
                <node concept="37vLTw" id="69TGyf2zr0f" role="37wK5m">
                  <ref role="3cqZAo" node="1X_O_$4vEuo" resolve="perRootPersistence" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5zPLqcHLMi5" role="37vLTJ">
              <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="69TGyf2fk$X" role="3cqZAp">
          <node concept="2OqwBi" id="69TGyf2fnc_" role="3clFbG">
            <node concept="37vLTw" id="69TGyf2fk$V" role="2Oq$k0">
              <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
            </node>
            <node concept="liA8E" id="69TGyf2fpoF" role="2OqNvi">
              <ref role="37wK5l" to="p37l:69TGyf2eVc$" resolve="showDiff" />
              <node concept="37vLTw" id="69TGyf2JCsY" role="37wK5m">
                <ref role="3cqZAo" node="1vsKl3K0xFt" resolve="showTree" />
              </node>
              <node concept="37vLTw" id="69TGyf2JHx7" role="37wK5m">
                <ref role="3cqZAo" node="Tzj6YXEQRG" resolve="rootId" />
              </node>
              <node concept="2OqwBi" id="69TGyf2K0y1" role="37wK5m">
                <node concept="37vLTw" id="69TGyf2K0y2" role="2Oq$k0">
                  <ref role="3cqZAo" node="5zPLqcHM9y1" resolve="request" />
                </node>
                <node concept="liA8E" id="69TGyf2K0y3" role="2OqNvi">
                  <ref role="37wK5l" to="phib:~DiffRequest.getUserData(com.intellij.openapi.util.Key)" resolve="getUserData" />
                  <node concept="37vLTw" id="69TGyf2K0y6" role="37wK5m">
                    <ref role="3cqZAo" node="2XVPiKXGj6s" resolve="DIFF_NAVIGATE_TO" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5zPLqcHLM9U" role="jymVt" />
    <node concept="2YIFZL" id="5zPLqcHMjKa" role="jymVt">
      <property role="TrG5h" value="canShow" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5zPLqcHMjKi" role="3clF47">
        <node concept="3clFbJ" id="5zPLqcHMFJc" role="3cqZAp">
          <node concept="3fqX7Q" id="5zPLqcHMFJd" role="3clFbw">
            <node concept="1eOMI4" id="5zPLqcHMFJh" role="3fr31v">
              <node concept="2ZW3vV" id="5zPLqcHMFJg" role="1eOMHV">
                <node concept="37vLTw" id="5zPLqcHMFJe" role="2ZW6bz">
                  <ref role="3cqZAo" node="5zPLqcHMjKf" resolve="request" />
                </node>
                <node concept="3uibUv" id="5zPLqcHMFJf" role="2ZW6by">
                  <ref role="3uigEE" to="phib:~ContentDiffRequest" resolve="ContentDiffRequest" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5zPLqcHMFJk" role="3clFbx">
            <node concept="3cpWs6" id="5zPLqcHMFJi" role="3cqZAp">
              <node concept="3clFbT" id="5zPLqcHMFJj" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5zPLqcHMFJm" role="3cqZAp">
          <node concept="3cpWsn" id="5zPLqcHMFJl" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="contents" />
            <node concept="3uibUv" id="5zPLqcHMFJn" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5zPLqcHMG6i" role="11_B2D">
                <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
              </node>
            </node>
            <node concept="2OqwBi" id="5zPLqcHMFJp" role="33vP2m">
              <node concept="1eOMI4" id="5zPLqcHMFJt" role="2Oq$k0">
                <node concept="10QFUN" id="5zPLqcHMFJq" role="1eOMHV">
                  <node concept="37vLTw" id="5zPLqcHMFJr" role="10QFUP">
                    <ref role="3cqZAo" node="5zPLqcHMjKf" resolve="request" />
                  </node>
                  <node concept="3uibUv" id="5zPLqcHMFJs" role="10QFUM">
                    <ref role="3uigEE" to="phib:~ContentDiffRequest" resolve="ContentDiffRequest" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5zPLqcHMFJu" role="2OqNvi">
                <ref role="37wK5l" to="phib:~ContentDiffRequest.getContents()" resolve="getContents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5zPLqcHMFJv" role="3cqZAp">
          <node concept="3clFbS" id="5zPLqcHMFJ_" role="3clFbx">
            <node concept="3cpWs6" id="5zPLqcHMFJz" role="3cqZAp">
              <node concept="3clFbT" id="5zPLqcHMFJ$" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="32jJuKFxrhT" role="3clFbw">
            <node concept="3y3z36" id="7tX5qWAk3ad" role="3uHU7w">
              <node concept="3cmrfG" id="7tX5qWAk3V8" role="3uHU7w">
                <property role="3cmrfH" value="3" />
              </node>
              <node concept="2OqwBi" id="7tX5qWAk1lG" role="3uHU7B">
                <node concept="37vLTw" id="7tX5qWAjZPn" role="2Oq$k0">
                  <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                </node>
                <node concept="liA8E" id="7tX5qWAk28G" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5zPLqcHMFJw" role="3uHU7B">
              <node concept="2OqwBi" id="5zPLqcHMFKy" role="3uHU7B">
                <node concept="37vLTw" id="5zPLqcHMFKx" role="2Oq$k0">
                  <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                </node>
                <node concept="liA8E" id="5zPLqcHMFKz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
              <node concept="3cmrfG" id="5zPLqcHMFJy" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tX5qWAjW62" role="3cqZAp">
          <node concept="3cpWsn" id="7tX5qWAjW65" role="3cpWs9">
            <property role="TrG5h" value="allEmpty" />
            <node concept="10P_77" id="7tX5qWAjW60" role="1tU5fm" />
            <node concept="3clFbT" id="7tX5qWAjX7E" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7tX5qWAkiaf" role="3cqZAp">
          <node concept="3cpWsn" id="7tX5qWAkiai" role="3cpWs9">
            <property role="TrG5h" value="contentFound" />
            <node concept="10P_77" id="7tX5qWAkiad" role="1tU5fm" />
            <node concept="3clFbT" id="7tX5qWAkjgG" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="7tX5qWAj$MH" role="3cqZAp">
          <node concept="3clFbS" id="7tX5qWAj$MJ" role="2LFqv$">
            <node concept="3clFbJ" id="7tX5qWAjDxC" role="3cqZAp">
              <node concept="3clFbS" id="7tX5qWAjDxE" role="3clFbx">
                <node concept="3cpWs6" id="7tX5qWAjEBQ" role="3cqZAp">
                  <node concept="3clFbT" id="7tX5qWAjGlv" role="3cqZAk" />
                </node>
              </node>
              <node concept="3fqX7Q" id="7tX5qWAjHdP" role="3clFbw">
                <node concept="1rXfSq" id="7tX5qWAjHdR" role="3fr31v">
                  <ref role="37wK5l" node="5zPLqcHMEBE" resolve="canShowContent" />
                  <node concept="37vLTw" id="7tX5qWAjHdS" role="37wK5m">
                    <ref role="3cqZAo" node="7tX5qWAj$MK" resolve="content" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7tX5qWAk5Fc" role="3cqZAp">
              <node concept="3clFbS" id="7tX5qWAk5Fe" role="3clFbx">
                <node concept="3clFbF" id="7tX5qWAk8xn" role="3cqZAp">
                  <node concept="37vLTI" id="7tX5qWAk8ZA" role="3clFbG">
                    <node concept="3clFbT" id="7tX5qWAkb7n" role="37vLTx" />
                    <node concept="37vLTw" id="7tX5qWAk8xl" role="37vLTJ">
                      <ref role="3cqZAo" node="7tX5qWAjW65" resolve="allEmpty" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7tX5qWAk9FC" role="3clFbw">
                <node concept="1eOMI4" id="7tX5qWAk9FE" role="3fr31v">
                  <node concept="2ZW3vV" id="7tX5qWAkaSZ" role="1eOMHV">
                    <node concept="3uibUv" id="7tX5qWAkb6G" role="2ZW6by">
                      <ref role="3uigEE" to="2o8p:~EmptyContent" resolve="EmptyContent" />
                    </node>
                    <node concept="37vLTw" id="7tX5qWAkat6" role="2ZW6bz">
                      <ref role="3cqZAo" node="7tX5qWAj$MK" resolve="content" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7tX5qWAkkW6" role="3cqZAp">
              <node concept="3clFbS" id="7tX5qWAkkW8" role="3clFbx">
                <node concept="3clFbF" id="7tX5qWAknNl" role="3cqZAp">
                  <node concept="37vLTI" id="7tX5qWAko3o" role="3clFbG">
                    <node concept="3clFbT" id="7tX5qWAkofX" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="7tX5qWAknNj" role="37vLTJ">
                      <ref role="3cqZAo" node="7tX5qWAkiai" resolve="contentFound" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="7tX5qWAkncJ" role="3clFbw">
                <node concept="3uibUv" id="7tX5qWAknqm" role="2ZW6by">
                  <ref role="3uigEE" to="24bc:~ModelDiffContent" resolve="ModelDiffContent" />
                </node>
                <node concept="37vLTw" id="7tX5qWAkmMW" role="2ZW6bz">
                  <ref role="3cqZAo" node="7tX5qWAj$MK" resolve="content" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7tX5qWAj$MK" role="1Duv9x">
            <property role="TrG5h" value="content" />
            <node concept="3uibUv" id="7tX5qWAjBbR" role="1tU5fm">
              <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
            </node>
          </node>
          <node concept="37vLTw" id="7tX5qWAjBVX" role="1DdaDG">
            <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
          </node>
        </node>
        <node concept="3clFbJ" id="7tX5qWAkd5Y" role="3cqZAp">
          <node concept="3clFbS" id="7tX5qWAkd60" role="3clFbx">
            <node concept="3cpWs6" id="7tX5qWAkeQG" role="3cqZAp">
              <node concept="3clFbT" id="7tX5qWAkf35" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7tX5qWAkel2" role="3clFbw">
            <ref role="3cqZAo" node="7tX5qWAjW65" resolve="allEmpty" />
          </node>
        </node>
        <node concept="3clFbJ" id="7tX5qWAkq95" role="3cqZAp">
          <node concept="3clFbS" id="7tX5qWAkq97" role="3clFbx">
            <node concept="3cpWs6" id="7tX5qWAkrUg" role="3cqZAp">
              <node concept="3clFbT" id="7tX5qWAks6F" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7tX5qWAkro$" role="3clFbw">
            <ref role="3cqZAo" node="7tX5qWAkiai" resolve="contentFound" />
          </node>
        </node>
        <node concept="1DcWWT" id="5zPLqcHMFKe" role="3cqZAp">
          <node concept="3cpWsn" id="5zPLqcHMFKp" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="type" />
            <node concept="3uibUv" id="5zPLqcHMFKr" role="1tU5fm">
              <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
            </node>
          </node>
          <node concept="3clFbS" id="5zPLqcHMFKg" role="2LFqv$">
            <node concept="3clFbJ" id="7tX5qWAkw4y" role="3cqZAp">
              <node concept="3clFbS" id="7tX5qWAkw4$" role="3clFbx">
                <node concept="3clFbJ" id="7tX5qWAkE4Z" role="3cqZAp">
                  <node concept="1Wc70l" id="7tX5qWAkFll" role="3clFbw">
                    <node concept="1rXfSq" id="7tX5qWAkE50" role="3uHU7B">
                      <ref role="37wK5l" node="5zPLqcHMEC8" resolve="sameTypes" />
                      <node concept="37vLTw" id="7tX5qWAkE51" role="37wK5m">
                        <ref role="3cqZAo" node="5zPLqcHMFKp" resolve="type" />
                      </node>
                      <node concept="2OqwBi" id="7tX5qWAkE52" role="37wK5m">
                        <node concept="2OqwBi" id="7tX5qWAkE53" role="2Oq$k0">
                          <node concept="37vLTw" id="7tX5qWAkE54" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                          </node>
                          <node concept="liA8E" id="7tX5qWAkE55" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="7tX5qWAkE56" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7tX5qWAkE57" role="2OqNvi">
                          <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7tX5qWAkE58" role="37wK5m">
                        <node concept="2OqwBi" id="7tX5qWAkE59" role="2Oq$k0">
                          <node concept="37vLTw" id="7tX5qWAkE5a" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                          </node>
                          <node concept="liA8E" id="7tX5qWAkE5b" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="7tX5qWAkE5c" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7tX5qWAkE5d" role="2OqNvi">
                          <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                        </node>
                      </node>
                    </node>
                    <node concept="1rXfSq" id="7tX5qWAkGy8" role="3uHU7w">
                      <ref role="37wK5l" node="5zPLqcHMEC8" resolve="sameTypes" />
                      <node concept="37vLTw" id="7tX5qWAkGy9" role="37wK5m">
                        <ref role="3cqZAo" node="5zPLqcHMFKp" resolve="type" />
                      </node>
                      <node concept="2OqwBi" id="7tX5qWAkGya" role="37wK5m">
                        <node concept="2OqwBi" id="7tX5qWAkGyb" role="2Oq$k0">
                          <node concept="37vLTw" id="7tX5qWAkGyc" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                          </node>
                          <node concept="liA8E" id="7tX5qWAkGyd" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="7tX5qWAkJce" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7tX5qWAkGyf" role="2OqNvi">
                          <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7tX5qWAkGyg" role="37wK5m">
                        <node concept="2OqwBi" id="7tX5qWAkGyh" role="2Oq$k0">
                          <node concept="37vLTw" id="7tX5qWAkGyi" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                          </node>
                          <node concept="liA8E" id="7tX5qWAkGyj" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="7tX5qWAkJH_" role="37wK5m">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7tX5qWAkGyl" role="2OqNvi">
                          <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7tX5qWAkE5e" role="3clFbx">
                    <node concept="3cpWs6" id="7tX5qWAkE5f" role="3cqZAp">
                      <node concept="3clFbT" id="7tX5qWAkE5g" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7tX5qWAkzCV" role="3clFbw">
                <node concept="3cmrfG" id="7tX5qWAkzOX" role="3uHU7w">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="2OqwBi" id="7tX5qWAkxXI" role="3uHU7B">
                  <node concept="37vLTw" id="7tX5qWAkx7I" role="2Oq$k0">
                    <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                  </node>
                  <node concept="liA8E" id="7tX5qWAkyKb" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7tX5qWAk$UX" role="9aQIa">
                <node concept="3clFbS" id="7tX5qWAk$UY" role="9aQI4">
                  <node concept="3clFbJ" id="5zPLqcHMFKh" role="3cqZAp">
                    <node concept="1rXfSq" id="5zPLqcHMFKi" role="3clFbw">
                      <ref role="37wK5l" node="5zPLqcHMEC8" resolve="sameTypes" />
                      <node concept="37vLTw" id="5zPLqcHMFKj" role="37wK5m">
                        <ref role="3cqZAo" node="5zPLqcHMFKp" resolve="type" />
                      </node>
                      <node concept="2OqwBi" id="5zPLqcHMOp5" role="37wK5m">
                        <node concept="2OqwBi" id="5zPLqcHMOp6" role="2Oq$k0">
                          <node concept="37vLTw" id="5zPLqcHMOp7" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                          </node>
                          <node concept="liA8E" id="5zPLqcHMOp8" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="5zPLqcHMOp9" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5zPLqcHMOpa" role="2OqNvi">
                          <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5zPLqcHMOsR" role="37wK5m">
                        <node concept="2OqwBi" id="5zPLqcHMOsS" role="2Oq$k0">
                          <node concept="37vLTw" id="5zPLqcHMOsT" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zPLqcHMFJl" resolve="contents" />
                          </node>
                          <node concept="liA8E" id="5zPLqcHMOsU" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="5zPLqcHMOsV" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5zPLqcHMOsW" role="2OqNvi">
                          <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="5zPLqcHMFKo" role="3clFbx">
                      <node concept="3cpWs6" id="5zPLqcHMFKm" role="3cqZAp">
                        <node concept="3clFbT" id="5zPLqcHMFKn" role="3cqZAk">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10M0yZ" id="5zPLqcHMLvM" role="1DdaDG">
            <ref role="1PxDUh" node="1R9fMbxrKEY" resolve="ModelDiffTool" />
            <ref role="3cqZAo" node="7NAm8AJJnt" resolve="DIFF_SUPPORTED_TYPES" />
          </node>
        </node>
        <node concept="3cpWs6" id="5zPLqcHMFKt" role="3cqZAp">
          <node concept="3clFbT" id="5zPLqcHMFKu" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5zPLqcHMjKk" role="3clF45" />
      <node concept="37vLTG" id="5zPLqcHMjKc" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5zPLqcHMjKd" role="1tU5fm">
          <ref role="3uigEE" to="yt4f:~DiffContext" resolve="DiffContext" />
        </node>
        <node concept="2AHcQZ" id="5zPLqcHMjKe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHMjKf" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="5zPLqcHMkQd" role="1tU5fm">
          <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
        </node>
        <node concept="2AHcQZ" id="5zPLqcHMjKh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5zPLqcHMjKm" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6P3LuKI4NQE" role="jymVt" />
    <node concept="2YIFZL" id="5zPLqcHMEBE" role="jymVt">
      <property role="TrG5h" value="canShowContent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5zPLqcHMEBF" role="3clF46">
        <property role="TrG5h" value="content" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="5zPLqcHMEBG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5zPLqcHMF6w" role="1tU5fm">
          <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
        </node>
      </node>
      <node concept="3clFbS" id="5zPLqcHMEBI" role="3clF47">
        <node concept="3cpWs6" id="5zPLqcHMNdh" role="3cqZAp">
          <node concept="22lmx$" id="5zPLqcHMO2Z" role="3cqZAk">
            <node concept="22lmx$" id="5zPLqcHMNDE" role="3uHU7B">
              <node concept="22lmx$" id="IOaVVgtNSE" role="3uHU7B">
                <node concept="2ZW3vV" id="IOaVVgtOD$" role="3uHU7B">
                  <node concept="3uibUv" id="IOaVVgtOS$" role="2ZW6by">
                    <ref role="3uigEE" to="24bc:~ModelDiffContent" resolve="ModelDiffContent" />
                  </node>
                  <node concept="37vLTw" id="IOaVVgtOcR" role="2ZW6bz">
                    <ref role="3cqZAo" node="5zPLqcHMEBF" resolve="content" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="5zPLqcHMNm9" role="3uHU7w">
                  <node concept="37vLTw" id="5zPLqcHMNma" role="2ZW6bz">
                    <ref role="3cqZAo" node="5zPLqcHMEBF" resolve="content" />
                  </node>
                  <node concept="3uibUv" id="5zPLqcHMNmb" role="2ZW6by">
                    <ref role="3uigEE" to="2o8p:~EmptyContent" resolve="EmptyContent" />
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="2kSqePg2sJi" role="3uHU7w">
                <node concept="1Wc70l" id="2kSqePg2uGG" role="1eOMHV">
                  <node concept="3fqX7Q" id="2kSqePg2An7" role="3uHU7w">
                    <node concept="2ZW3vV" id="2kSqePg2An9" role="3fr31v">
                      <node concept="3uibUv" id="2kSqePg2Ana" role="2ZW6by">
                        <ref role="3uigEE" to="r8xq:~DocumentFragmentContent" resolve="DocumentFragmentContent" />
                      </node>
                      <node concept="37vLTw" id="2kSqePg2Anb" role="2ZW6bz">
                        <ref role="3cqZAo" node="5zPLqcHMEBF" resolve="content" />
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="5zPLqcHMNJg" role="3uHU7B">
                    <node concept="37vLTw" id="5zPLqcHMNJh" role="2ZW6bz">
                      <ref role="3cqZAo" node="5zPLqcHMEBF" resolve="content" />
                    </node>
                    <node concept="3uibUv" id="5zPLqcHMNJi" role="2ZW6by">
                      <ref role="3uigEE" to="2o8p:~DocumentContent" resolve="DocumentContent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5zPLqcHMO8P" role="3uHU7w">
              <node concept="37vLTw" id="5zPLqcHMO8Q" role="2ZW6bz">
                <ref role="3cqZAo" node="5zPLqcHMEBF" resolve="content" />
              </node>
              <node concept="3uibUv" id="5zPLqcHMO8R" role="2ZW6by">
                <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5zPLqcHMEC6" role="1B3o_S" />
      <node concept="10P_77" id="5zPLqcHMEC7" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="5zPLqcHMEC8" role="jymVt">
      <property role="TrG5h" value="sameTypes" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5zPLqcHMEC9" role="3clF46">
        <property role="TrG5h" value="baseType" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="5zPLqcHMECa" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5zPLqcHMECb" role="1tU5fm">
          <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHMECc" role="3clF46">
        <property role="TrG5h" value="type1" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="5zPLqcHMECd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5zPLqcHMECe" role="1tU5fm">
          <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHMECf" role="3clF46">
        <property role="TrG5h" value="type2" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="5zPLqcHMECg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5zPLqcHMECh" role="1tU5fm">
          <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
        </node>
      </node>
      <node concept="3clFbS" id="5zPLqcHMECi" role="3clF47">
        <node concept="3clFbJ" id="5zPLqcHMECj" role="3cqZAp">
          <node concept="1Wc70l" id="5zPLqcHMECk" role="3clFbw">
            <node concept="3y3z36" id="5zPLqcHMECl" role="3uHU7B">
              <node concept="37vLTw" id="5zPLqcHMECm" role="3uHU7B">
                <ref role="3cqZAo" node="5zPLqcHMECc" resolve="type1" />
              </node>
              <node concept="10Nm6u" id="5zPLqcHMECn" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="5zPLqcHMECo" role="3uHU7w">
              <node concept="2OqwBi" id="5zPLqcHMECV" role="3fr31v">
                <node concept="37vLTw" id="5zPLqcHMECU" role="2Oq$k0">
                  <ref role="3cqZAo" node="5zPLqcHMEC9" resolve="baseType" />
                </node>
                <node concept="liA8E" id="5zPLqcHMECW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="5zPLqcHMECq" role="37wK5m">
                    <ref role="3cqZAo" node="5zPLqcHMECc" resolve="type1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5zPLqcHMECt" role="3clFbx">
            <node concept="3cpWs6" id="5zPLqcHMECr" role="3cqZAp">
              <node concept="3clFbT" id="5zPLqcHMECs" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5zPLqcHMECu" role="3cqZAp">
          <node concept="1Wc70l" id="5zPLqcHMECv" role="3clFbw">
            <node concept="3y3z36" id="5zPLqcHMECw" role="3uHU7B">
              <node concept="37vLTw" id="5zPLqcHMECx" role="3uHU7B">
                <ref role="3cqZAo" node="5zPLqcHMECf" resolve="type2" />
              </node>
              <node concept="10Nm6u" id="5zPLqcHMECy" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="5zPLqcHMECz" role="3uHU7w">
              <node concept="2OqwBi" id="5zPLqcHMED0" role="3fr31v">
                <node concept="37vLTw" id="5zPLqcHMECZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5zPLqcHMEC9" resolve="baseType" />
                </node>
                <node concept="liA8E" id="5zPLqcHMED1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="5zPLqcHMEC_" role="37wK5m">
                    <ref role="3cqZAo" node="5zPLqcHMECf" resolve="type2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5zPLqcHMECC" role="3clFbx">
            <node concept="3cpWs6" id="5zPLqcHMECA" role="3cqZAp">
              <node concept="3clFbT" id="5zPLqcHMECB" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5zPLqcHMECD" role="3cqZAp">
          <node concept="1Wc70l" id="5zPLqcHMECE" role="3clFbw">
            <node concept="3clFbC" id="5zPLqcHMECF" role="3uHU7B">
              <node concept="37vLTw" id="5zPLqcHMECG" role="3uHU7B">
                <ref role="3cqZAo" node="5zPLqcHMECc" resolve="type1" />
              </node>
              <node concept="10Nm6u" id="5zPLqcHMECH" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="5zPLqcHMECI" role="3uHU7w">
              <node concept="37vLTw" id="5zPLqcHMECJ" role="3uHU7B">
                <ref role="3cqZAo" node="5zPLqcHMECf" resolve="type2" />
              </node>
              <node concept="10Nm6u" id="5zPLqcHMECK" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5zPLqcHMECN" role="3clFbx">
            <node concept="3cpWs6" id="5zPLqcHMECL" role="3cqZAp">
              <node concept="3clFbT" id="5zPLqcHMECM" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5zPLqcHMECO" role="3cqZAp">
          <node concept="3clFbT" id="5zPLqcHMECP" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5zPLqcHMECQ" role="1B3o_S" />
      <node concept="10P_77" id="5zPLqcHMECR" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5zPLqcHMgQN" role="jymVt" />
    <node concept="2tJIrI" id="5zPLqcHMPjG" role="jymVt" />
    <node concept="3Tm1VV" id="1R9fMbxrLzZ" role="1B3o_S" />
    <node concept="3uibUv" id="1R9fMbxrL$l" role="EKbjA">
      <ref role="3uigEE" to="yt4f:~FrameDiffTool$DiffViewer" resolve="FrameDiffTool.DiffViewer" />
    </node>
    <node concept="3clFb_" id="1R9fMbxrL$u" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1R9fMbxrL$v" role="1B3o_S" />
      <node concept="3uibUv" id="1R9fMbxrL$x" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="1R9fMbxrL$y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R9fMbxrL$z" role="3clF47">
        <node concept="3clFbJ" id="7aiOwVxT_6S" role="3cqZAp">
          <node concept="3clFbS" id="7aiOwVxT_6U" role="3clFbx">
            <node concept="3cpWs6" id="7aiOwVxTAtO" role="3cqZAp">
              <node concept="2ShNRf" id="7aiOwVxTAE3" role="3cqZAk">
                <node concept="1pGfFk" id="7aiOwVxTRIW" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="7aiOwVxTSRx" role="37wK5m">
                    <property role="Xl_RC" value="Failed to create diff viewer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7aiOwVxT_Ta" role="3clFbw">
            <node concept="10Nm6u" id="7aiOwVxTAfZ" role="3uHU7w" />
            <node concept="37vLTw" id="7aiOwVxT_x5" role="3uHU7B">
              <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R9fMbxrLC6" role="3cqZAp">
          <node concept="2OqwBi" id="5zPLqcHLL24" role="3clFbG">
            <node concept="37vLTw" id="5zPLqcHLKYE" role="2Oq$k0">
              <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
            </node>
            <node concept="liA8E" id="5zPLqcHLLlS" role="2OqNvi">
              <ref role="37wK5l" to="p37l:5zPLqcHLxtR" resolve="getComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="69TGyf1RVzy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R9fMbxrL$A" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPreferredFocusedComponent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1R9fMbxrL$B" role="1B3o_S" />
      <node concept="3uibUv" id="1R9fMbxrL$D" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="1R9fMbxrL$E" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1R9fMbxrL$F" role="3clF47">
        <node concept="3clFbJ" id="7Ut6nIE90IQ" role="3cqZAp">
          <node concept="3clFbS" id="7Ut6nIE90IR" role="3clFbx">
            <node concept="3cpWs6" id="7Ut6nIE90IS" role="3cqZAp">
              <node concept="2ShNRf" id="7Ut6nIE90IT" role="3cqZAk">
                <node concept="1pGfFk" id="7Ut6nIE90IU" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="7Ut6nIE90IV" role="37wK5m">
                    <property role="Xl_RC" value="Failed to create diff viewer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7Ut6nIE90IW" role="3clFbw">
            <node concept="10Nm6u" id="7Ut6nIE90IX" role="3uHU7w" />
            <node concept="37vLTw" id="7Ut6nIE90IY" role="3uHU7B">
              <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R9fMbxrL$H" role="3cqZAp">
          <node concept="2OqwBi" id="5U8a8kRyKnj" role="3clFbG">
            <node concept="37vLTw" id="5U8a8kRy5Gn" role="2Oq$k0">
              <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
            </node>
            <node concept="liA8E" id="5U8a8kRyKxX" role="2OqNvi">
              <ref role="37wK5l" to="p37l:5U8a8kRybaX" resolve="getPreferredFocusedComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1R9fMbxrL$I" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1R9fMbxrL$J" role="1B3o_S" />
      <node concept="3uibUv" id="1R9fMbxrL$L" role="3clF45">
        <ref role="3uigEE" to="yt4f:~FrameDiffTool$ToolbarComponents" resolve="FrameDiffTool.ToolbarComponents" />
      </node>
      <node concept="2AHcQZ" id="1R9fMbxrL$M" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R9fMbxrL$N" role="3clF47">
        <node concept="3cpWs8" id="6Q$KBKW887K" role="3cqZAp">
          <node concept="3cpWsn" id="6Q$KBKW887N" role="3cpWs9">
            <property role="TrG5h" value="toolbarComponents" />
            <node concept="3uibUv" id="6Q$KBKW8b9Z" role="1tU5fm">
              <ref role="3uigEE" to="yt4f:~FrameDiffTool$ToolbarComponents" resolve="FrameDiffTool.ToolbarComponents" />
            </node>
            <node concept="2ShNRf" id="6Q$KBKW8kVw" role="33vP2m">
              <node concept="1pGfFk" id="6Q$KBKW8kVx" role="2ShVmc">
                <ref role="37wK5l" to="yt4f:~FrameDiffTool$ToolbarComponents.&lt;init&gt;()" resolve="FrameDiffTool.ToolbarComponents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11EV03uuZca" role="3cqZAp">
          <node concept="3cpWsn" id="11EV03uuZcb" role="3cpWs9">
            <property role="TrG5h" value="showInNewWindow" />
            <node concept="3uibUv" id="11EV03uuZcc" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
            <node concept="2OqwBi" id="11EV03uv94i" role="33vP2m">
              <node concept="2YIFZM" id="11EV03uv94j" role="2Oq$k0">
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
              </node>
              <node concept="liA8E" id="11EV03uv94k" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                <node concept="Xl_RD" id="11EV03uv94l" role="37wK5m">
                  <property role="Xl_RC" value="Vcs.Diff.ShowDiffInNewWindow" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11EV03uvivm" role="3cqZAp">
          <node concept="3cpWsn" id="11EV03uvivn" role="3cpWs9">
            <property role="TrG5h" value="showInEditorTab" />
            <node concept="3uibUv" id="11EV03uvivo" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
            <node concept="2OqwBi" id="11EV03uvuHJ" role="33vP2m">
              <node concept="2YIFZM" id="11EV03uvuHK" role="2Oq$k0">
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
              </node>
              <node concept="liA8E" id="11EV03uvuHL" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                <node concept="Xl_RD" id="11EV03uvuHM" role="37wK5m">
                  <property role="Xl_RC" value="Vcs.Diff.ShowDiffInEditorTab" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="11EV03uwBvu" role="3cqZAp">
          <node concept="1PaTwC" id="11EV03uwBvv" role="1aUNEU">
            <node concept="3oM_SD" id="11EV03uwEFO" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEFX" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEG0" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEGC" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEGH" role="1PaTwD">
              <property role="3oM_SC" value="wrong" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEGN" role="1PaTwD">
              <property role="3oM_SC" value="icon" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEHh" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEHI" role="1PaTwD">
              <property role="3oM_SC" value="created" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEIG" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEIQ" role="1PaTwD">
              <property role="3oM_SC" value="showInEditorTab" />
            </node>
            <node concept="3oM_SD" id="11EV03uwEJ7" role="1PaTwD">
              <property role="3oM_SC" value="action" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11EV03uv$XW" role="3cqZAp">
          <node concept="2OqwBi" id="11EV03uvPWJ" role="3clFbG">
            <node concept="2OqwBi" id="11EV03uvJ4X" role="2Oq$k0">
              <node concept="37vLTw" id="11EV03uv$XU" role="2Oq$k0">
                <ref role="3cqZAo" node="11EV03uvivn" resolve="showInEditorTab" />
              </node>
              <node concept="liA8E" id="11EV03uvMEf" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnAction.getTemplatePresentation()" resolve="getTemplatePresentation" />
              </node>
            </node>
            <node concept="liA8E" id="11EV03uvTyu" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setIcon(javax.swing.Icon)" resolve="setIcon" />
              <node concept="2OqwBi" id="11EV03uw3RF" role="37wK5m">
                <node concept="2OqwBi" id="11EV03uvZ98" role="2Oq$k0">
                  <node concept="37vLTw" id="11EV03uvXmp" role="2Oq$k0">
                    <ref role="3cqZAo" node="11EV03uuZcb" resolve="showInNewWindow" />
                  </node>
                  <node concept="liA8E" id="11EV03uw2$F" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnAction.getTemplatePresentation()" resolve="getTemplatePresentation" />
                  </node>
                </node>
                <node concept="liA8E" id="11EV03uw7xN" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.getIcon()" resolve="getIcon" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Q$KBKW9lAI" role="3cqZAp">
          <node concept="37vLTI" id="6Q$KBKW9uo1" role="3clFbG">
            <node concept="2OqwBi" id="6Q$KBKW9nm8" role="37vLTJ">
              <node concept="37vLTw" id="6Q$KBKW9lAG" role="2Oq$k0">
                <ref role="3cqZAo" node="6Q$KBKW887N" resolve="toolbarComponents" />
              </node>
              <node concept="2OwXpG" id="6Q$KBKW9qQ1" role="2OqNvi">
                <ref role="2Oxat5" to="yt4f:~FrameDiffTool$ToolbarComponents.toolbarActions" resolve="toolbarActions" />
              </node>
            </node>
            <node concept="2YIFZM" id="11EV03uwlRS" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="11EV03uwpKs" role="37wK5m">
                <ref role="3cqZAo" node="11EV03uvivn" resolve="showInEditorTab" />
              </node>
              <node concept="37vLTw" id="11EV03uwvf_" role="37wK5m">
                <ref role="3cqZAo" node="11EV03uuZcb" resolve="showInNewWindow" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6Q$KBKW9OpE" role="3cqZAp">
          <node concept="37vLTw" id="6Q$KBKW9QUo" role="3cqZAk">
            <ref role="3cqZAo" node="6Q$KBKW887N" resolve="toolbarComponents" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1R9fMbxrL$Q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1R9fMbxrL$R" role="1B3o_S" />
      <node concept="3cqZAl" id="1R9fMbxrL$T" role="3clF45" />
      <node concept="3clFbS" id="1R9fMbxrL$V" role="3clF47">
        <node concept="3clFbJ" id="3nINzKYIdD5" role="3cqZAp">
          <node concept="3clFbS" id="3nINzKYIdD6" role="3clFbx">
            <node concept="3clFbF" id="3nINzKYIdMs" role="3cqZAp">
              <node concept="2OqwBi" id="3nINzKYIdSn" role="3clFbG">
                <node concept="37vLTw" id="3nINzKYIdMr" role="2Oq$k0">
                  <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
                </node>
                <node concept="liA8E" id="3nINzKYIhc4" role="2OqNvi">
                  <ref role="37wK5l" to="p37l:5zPLqcHJBgh" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7aiOwVxT$9i" role="3cqZAp">
              <node concept="37vLTI" id="7aiOwVxT$xl" role="3clFbG">
                <node concept="10Nm6u" id="7aiOwVxT$QV" role="37vLTx" />
                <node concept="37vLTw" id="7aiOwVxT$9g" role="37vLTJ">
                  <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3nINzKYIdJD" role="3clFbw">
            <node concept="10Nm6u" id="3nINzKYIdKl" role="3uHU7w" />
            <node concept="37vLTw" id="3nINzKYIdDF" role="3uHU7B">
              <ref role="3cqZAo" node="5zPLqcHLKP4" resolve="myViewer" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5zPLqcHMBts" role="jymVt" />
    <node concept="2YIFZL" id="5zPLqcHMPPZ" role="jymVt">
      <property role="TrG5h" value="readModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5zPLqcHMPQ0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="5zPLqcHMPQ1" role="3clF46">
        <property role="TrG5h" value="content" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5zPLqcHMQJm" role="1tU5fm">
          <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHMPQ3" role="3clF46">
        <property role="TrG5h" value="type" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5zPLqcHMPQ4" role="1tU5fm">
          <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
        </node>
      </node>
      <node concept="37vLTG" id="5Lno_XHslfD" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="5Lno_XHsnXl" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3clFbS" id="5zPLqcHMPQ5" role="3clF47">
        <node concept="3SKdUt" id="2Zi4iXoEd8e" role="3cqZAp">
          <node concept="1PaTwC" id="2Zi4iXoEd8f" role="1aUNEU">
            <node concept="3oM_SD" id="2Zi4iXoEd8g" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="2Zi4iXoEd8h" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2Zi4iXoEd8i" role="1PaTwD">
              <property role="3oM_SC" value="model?" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Zi4iXoEd8j" role="3cqZAp">
          <node concept="3clFbS" id="2Zi4iXoEd8k" role="3clFbx">
            <node concept="3cpWs6" id="2Zi4iXoEd8l" role="3cqZAp">
              <node concept="2OqwBi" id="2Zi4iXoEd8m" role="3cqZAk">
                <node concept="1eOMI4" id="2Zi4iXoEd8n" role="2Oq$k0">
                  <node concept="10QFUN" id="2Zi4iXoEd8o" role="1eOMHV">
                    <node concept="3uibUv" id="2Zi4iXoEd8p" role="10QFUM">
                      <ref role="3uigEE" to="24bc:~ModelDiffContent" resolve="ModelDiffContent" />
                    </node>
                    <node concept="37vLTw" id="2Zi4iXoEd8q" role="10QFUP">
                      <ref role="3cqZAo" node="5zPLqcHMPQ1" resolve="content" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2Zi4iXoEd8r" role="2OqNvi">
                  <ref role="37wK5l" to="24bc:~ModelDiffContent.getModel()" resolve="getModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2Zi4iXoEd8s" role="3clFbw">
            <node concept="3uibUv" id="2Zi4iXoEd8t" role="2ZW6by">
              <ref role="3uigEE" to="24bc:~ModelDiffContent" resolve="ModelDiffContent" />
            </node>
            <node concept="37vLTw" id="2Zi4iXoEd8u" role="2ZW6bz">
              <ref role="3cqZAo" node="5zPLqcHMPQ1" resolve="content" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5zPLqcHMPQ6" role="3cqZAp">
          <node concept="2ZW3vV" id="5zPLqcHMPQ9" role="3clFbw">
            <node concept="37vLTw" id="5zPLqcHMPQ7" role="2ZW6bz">
              <ref role="3cqZAo" node="5zPLqcHMPQ1" resolve="content" />
            </node>
            <node concept="3uibUv" id="5zPLqcHMPQ8" role="2ZW6by">
              <ref role="3uigEE" to="2o8p:~EmptyContent" resolve="EmptyContent" />
            </node>
          </node>
          <node concept="3clFbS" id="5zPLqcHMPQc" role="3clFbx">
            <node concept="3cpWs6" id="5zPLqcHMPQa" role="3cqZAp">
              <node concept="2ShNRf" id="5zPLqcHNt$b" role="3cqZAk">
                <node concept="1pGfFk" id="5zPLqcHNt$c" role="2ShVmc">
                  <ref role="37wK5l" to="bmv6:1m2uLwrS0vs" resolve="MergeTemporaryModel" />
                  <node concept="2ShNRf" id="5zPLqcHNt$d" role="37wK5m">
                    <node concept="1pGfFk" id="5zPLqcHNt$e" role="2ShVmc">
                      <ref role="37wK5l" to="w1kc:~SModelReference.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="SModelReference" />
                      <node concept="10Nm6u" id="5zPLqcHNt$f" role="37wK5m" />
                      <node concept="2YIFZM" id="5zPLqcHNt$g" role="37wK5m">
                        <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                        <ref role="37wK5l" to="w1kc:~SModelId.generate()" resolve="generate" />
                      </node>
                      <node concept="Xl_RD" id="5zPLqcHNt$h" role="37wK5m">
                        <property role="Xl_RC" value="&lt;empty_merge_model&gt;" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="5zPLqcHNt$i" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5zPLqcHNx4B" role="3cqZAp" />
        <node concept="3clFbJ" id="5zPLqcHMPQd" role="3cqZAp">
          <node concept="2ZW3vV" id="5zPLqcHMPQg" role="3clFbw">
            <node concept="37vLTw" id="5zPLqcHMPQe" role="2ZW6bz">
              <ref role="3cqZAo" node="5zPLqcHMPQ1" resolve="content" />
            </node>
            <node concept="3uibUv" id="5zPLqcHMQQi" role="2ZW6by">
              <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
            </node>
          </node>
          <node concept="3clFbS" id="5zPLqcHMPQi" role="3clFbx">
            <node concept="3cpWs8" id="HUlZWKf9YY" role="3cqZAp">
              <node concept="3cpWsn" id="HUlZWKf9YZ" role="3cpWs9">
                <property role="TrG5h" value="file" />
                <node concept="3uibUv" id="HUlZWKf9YN" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
                <node concept="2OqwBi" id="HUlZWKf9Z0" role="33vP2m">
                  <node concept="liA8E" id="HUlZWKf9Z1" role="2OqNvi">
                    <ref role="37wK5l" to="2o8p:~FileContent.getFile()" resolve="getFile" />
                  </node>
                  <node concept="1eOMI4" id="HUlZWKf9Z2" role="2Oq$k0">
                    <node concept="10QFUN" id="HUlZWKf9Z3" role="1eOMHV">
                      <node concept="3uibUv" id="HUlZWKf9Z4" role="10QFUM">
                        <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
                      </node>
                      <node concept="37vLTw" id="HUlZWKf9Z5" role="10QFUP">
                        <ref role="3cqZAo" node="5zPLqcHMPQ1" resolve="content" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="5Lno_XHtaT$" role="3cqZAp">
              <node concept="3uVAMA" id="5Lno_XHtpJ_" role="1zxBo5">
                <node concept="XOnhg" id="5Lno_XHtpJA" role="1zc67B">
                  <property role="TrG5h" value="ex" />
                  <node concept="nSUau" id="5Lno_XHtpJB" role="1tU5fm">
                    <node concept="3uibUv" id="5Lno_XHtswe" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5Lno_XHtpJC" role="1zc67A">
                  <node concept="3SKdUt" id="HUlZWKeTOG" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXomqx" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXomqy" role="1PaTwD">
                        <property role="3oM_SC" value="ignore" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXomqz" role="1PaTwD">
                        <property role="3oM_SC" value="any" />
                      </node>
                      <node concept="3oM_SD" id="5Lno_XHuqTI" role="1PaTwD">
                        <property role="3oM_SC" value="error" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="HUlZWKePLV" role="3cqZAp">
                    <node concept="10Nm6u" id="HUlZWKePYf" role="3cqZAk" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5Lno_XHtaTA" role="1zxBo7">
                <node concept="3SKdUt" id="HUlZWKgM9b" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXomqk" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXomql" role="1PaTwD">
                      <property role="3oM_SC" value="I'm" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqm" role="1PaTwD">
                      <property role="3oM_SC" value="fine" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqn" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqo" role="1PaTwD">
                      <property role="3oM_SC" value="exception" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqp" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqq" role="1PaTwD">
                      <property role="3oM_SC" value="case" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqr" role="1PaTwD">
                      <property role="3oM_SC" value="file" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqs" role="1PaTwD">
                      <property role="3oM_SC" value="length" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqt" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqu" role="1PaTwD">
                      <property role="3oM_SC" value="&gt;" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqv" role="1PaTwD">
                      <property role="3oM_SC" value="than" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXomqw" role="1PaTwD">
                      <property role="3oM_SC" value="2^31" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="5Lno_XHv0MO" role="3cqZAp">
                  <node concept="1PaTwC" id="5Lno_XHv0MP" role="1aUNEU">
                    <node concept="3oM_SD" id="5Lno_XHv2vI" role="1PaTwD">
                      <property role="3oM_SC" value="FIXME" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv0MV" role="1PaTwD">
                      <property role="3oM_SC" value="although" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2vz" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2v$" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2v_" role="1PaTwD">
                      <property role="3oM_SC" value="big" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2vA" role="1PaTwD">
                      <property role="3oM_SC" value="deal" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2vB" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2vE" role="1PaTwD">
                      <property role="3oM_SC" value="craft" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2vF" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2vG" role="1PaTwD">
                      <property role="3oM_SC" value="StreamDataSource" />
                    </node>
                    <node concept="3oM_SD" id="5Lno_XHv2vH" role="1PaTwD">
                      <property role="3oM_SC" value="here" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="HUlZWKfU4Q" role="3cqZAp">
                  <node concept="3cpWsn" id="HUlZWKfU4R" role="3cpWs9">
                    <property role="TrG5h" value="data" />
                    <node concept="10Q1$e" id="HUlZWKfU4L" role="1tU5fm">
                      <node concept="10PrrI" id="HUlZWKfU4O" role="10Q1$1" />
                    </node>
                    <node concept="2YIFZM" id="HUlZWKfU4S" role="33vP2m">
                      <ref role="1Pybhc" to="18ew:~ReadUtil" resolve="ReadUtil" />
                      <ref role="37wK5l" to="18ew:~ReadUtil.read(java.io.InputStream,int)" resolve="read" />
                      <node concept="37vLTw" id="HUlZWKgmkD" role="37wK5m">
                        <ref role="3cqZAo" node="5Lno_XHtaTB" resolve="inputStream" />
                      </node>
                      <node concept="10QFUN" id="HUlZWKfU4U" role="37wK5m">
                        <node concept="10Oyi0" id="HUlZWKfU4V" role="10QFUM" />
                        <node concept="2OqwBi" id="HUlZWKfU4W" role="10QFUP">
                          <node concept="37vLTw" id="HUlZWKfU4X" role="2Oq$k0">
                            <ref role="3cqZAo" node="HUlZWKf9YZ" resolve="file" />
                          </node>
                          <node concept="liA8E" id="HUlZWKfU4Y" role="2OqNvi">
                            <ref role="37wK5l" to="jlff:~VirtualFile.getLength()" resolve="getLength" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5zPLqcHNzru" role="3cqZAp">
                  <node concept="2OqwBi" id="5Lno_XHsB7G" role="3cqZAk">
                    <node concept="2YIFZM" id="5Lno_XHpeRa" role="2Oq$k0">
                      <ref role="37wK5l" to="iho:2VIcG4o2hlS" resolve="discover" />
                      <ref role="1Pybhc" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
                      <node concept="37vLTw" id="5Lno_XHs$4t" role="37wK5m">
                        <ref role="3cqZAo" node="5Lno_XHslfD" resolve="mpsPlatform" />
                      </node>
                      <node concept="2OqwBi" id="5Lno_XHpr5r" role="37wK5m">
                        <node concept="37vLTw" id="5Lno_XHpocI" role="2Oq$k0">
                          <ref role="3cqZAo" node="HUlZWKf9YZ" resolve="file" />
                        </node>
                        <node concept="liA8E" id="5Lno_XHpu5P" role="2OqNvi">
                          <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5Lno_XHsDA3" role="2OqNvi">
                      <ref role="37wK5l" to="iho:2VIcG4o3ZpT" resolve="load" />
                      <node concept="37vLTw" id="5Lno_XHsGxY" role="37wK5m">
                        <ref role="3cqZAo" node="HUlZWKfU4R" resolve="data" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3J1hQo" id="5Lno_XHtaTB" role="3J1_TS">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="inputStream" />
                <node concept="3uibUv" id="5Lno_XHtfut" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                </node>
                <node concept="2OqwBi" id="5Lno_XHtlqk" role="33vP2m">
                  <node concept="37vLTw" id="5Lno_XHtlql" role="2Oq$k0">
                    <ref role="3cqZAo" node="HUlZWKf9YZ" resolve="file" />
                  </node>
                  <node concept="liA8E" id="5Lno_XHtlqm" role="2OqNvi">
                    <ref role="37wK5l" to="jlff:~VirtualFile.getInputStream()" resolve="getInputStream" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5zPLqcHMPQP" role="3cqZAp">
          <node concept="2ZW3vV" id="5zPLqcHMPQS" role="3clFbw">
            <node concept="37vLTw" id="5zPLqcHMPQQ" role="2ZW6bz">
              <ref role="3cqZAo" node="5zPLqcHMPQ1" resolve="content" />
            </node>
            <node concept="3uibUv" id="5zPLqcHMR6L" role="2ZW6by">
              <ref role="3uigEE" to="2o8p:~DocumentContent" resolve="DocumentContent" />
            </node>
          </node>
          <node concept="3clFbS" id="5zPLqcHMPQU" role="3clFbx">
            <node concept="3J1_TO" id="5Lno_XHv$yu" role="3cqZAp">
              <node concept="3uVAMA" id="5Lno_XHvAQ8" role="1zxBo5">
                <node concept="XOnhg" id="5Lno_XHvAQ9" role="1zc67B">
                  <property role="TrG5h" value="ex" />
                  <node concept="nSUau" id="5Lno_XHvAQa" role="1tU5fm">
                    <node concept="3uibUv" id="5Lno_XHvDFn" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5Lno_XHvAQb" role="1zc67A">
                  <node concept="3SKdUt" id="5Lno_XHvR0N" role="3cqZAp">
                    <node concept="1PaTwC" id="5Lno_XHvR0O" role="1aUNEU">
                      <node concept="3oM_SD" id="5Lno_XHvR0P" role="1PaTwD">
                        <property role="3oM_SC" value="ignore" />
                      </node>
                      <node concept="3oM_SD" id="5Lno_XHvR0Q" role="1PaTwD">
                        <property role="3oM_SC" value="any" />
                      </node>
                      <node concept="3oM_SD" id="5Lno_XHvR0R" role="1PaTwD">
                        <property role="3oM_SC" value="error" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="5Lno_XHvR0S" role="3cqZAp">
                    <node concept="10Nm6u" id="5Lno_XHvR0T" role="3cqZAk" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5Lno_XHv$yw" role="1zxBo7">
                <node concept="3cpWs8" id="5Lno_XHv2N7" role="3cqZAp">
                  <node concept="3cpWsn" id="5Lno_XHv2N8" role="3cpWs9">
                    <property role="TrG5h" value="dc" />
                    <node concept="3uibUv" id="5Lno_XHv2ni" role="1tU5fm">
                      <ref role="3uigEE" to="2o8p:~DocumentContent" resolve="DocumentContent" />
                    </node>
                    <node concept="10QFUN" id="5Lno_XHv2N9" role="33vP2m">
                      <node concept="37vLTw" id="5Lno_XHv2Na" role="10QFUP">
                        <ref role="3cqZAo" node="5zPLqcHMPQ1" resolve="content" />
                      </node>
                      <node concept="3uibUv" id="5Lno_XHv2Nb" role="10QFUM">
                        <ref role="3uigEE" to="2o8p:~DocumentContent" resolve="DocumentContent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5zPLqcHMPQW" role="3cqZAp">
                  <node concept="3cpWsn" id="5zPLqcHMPQV" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="text" />
                    <node concept="17QB3L" id="5zPLqcHN$mQ" role="1tU5fm" />
                    <node concept="2OqwBi" id="5zPLqcHMPQY" role="33vP2m">
                      <node concept="2OqwBi" id="5zPLqcHMPQZ" role="2Oq$k0">
                        <node concept="37vLTw" id="5Lno_XHv2Nc" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Lno_XHv2N8" resolve="dc" />
                        </node>
                        <node concept="liA8E" id="5zPLqcHMPR4" role="2OqNvi">
                          <ref role="37wK5l" to="2o8p:~DocumentContent.getDocument()" resolve="getDocument" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5zPLqcHMPR5" role="2OqNvi">
                        <ref role="37wK5l" to="s9o5:~Document.getText()" resolve="getText" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5Lno_XHxRqs" role="3cqZAp">
                  <node concept="3cpWsn" id="5Lno_XHxRqt" role="3cpWs9">
                    <property role="TrG5h" value="fileName" />
                    <node concept="3uibUv" id="5Lno_XHxRqu" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5Lno_XHvdGE" role="3cqZAp">
                  <node concept="3clFbS" id="5Lno_XHvdGG" role="3clFbx">
                    <node concept="3clFbF" id="5Lno_XH$A_c" role="3cqZAp">
                      <node concept="37vLTI" id="5Lno_XH$FJp" role="3clFbG">
                        <node concept="37vLTw" id="5Lno_XH$A_a" role="37vLTJ">
                          <ref role="3cqZAo" node="5Lno_XHxRqt" resolve="fileName" />
                        </node>
                        <node concept="2OqwBi" id="5Lno_XHwvAs" role="37vLTx">
                          <node concept="2OqwBi" id="5Lno_XHwoSY" role="2Oq$k0">
                            <node concept="37vLTw" id="5Lno_XHwmbO" role="2Oq$k0">
                              <ref role="3cqZAo" node="5Lno_XHv2N8" resolve="dc" />
                            </node>
                            <node concept="liA8E" id="5Lno_XHwtzG" role="2OqNvi">
                              <ref role="37wK5l" to="2o8p:~DocumentContent.getHighlightFile()" resolve="getHighlightFile" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5Lno_XHwypR" role="2OqNvi">
                            <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="5Lno_XHvqhB" role="3clFbw">
                    <node concept="10Nm6u" id="5Lno_XHvtkF" role="3uHU7w" />
                    <node concept="2OqwBi" id="5Lno_XHviZ7" role="3uHU7B">
                      <node concept="37vLTw" id="5Lno_XHvght" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Lno_XHv2N8" resolve="dc" />
                      </node>
                      <node concept="liA8E" id="5Lno_XHvmK7" role="2OqNvi">
                        <ref role="37wK5l" to="2o8p:~DocumentContent.getHighlightFile()" resolve="getHighlightFile" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="5Lno_XHwQZk" role="9aQIa">
                    <node concept="3clFbS" id="5Lno_XHwQZl" role="9aQI4">
                      <node concept="3clFbJ" id="5Lno_XHylFE" role="3cqZAp">
                        <node concept="3clFbS" id="5Lno_XHylFG" role="3clFbx">
                          <node concept="3SKdUt" id="5Lno_XHzCF6" role="3cqZAp">
                            <node concept="1PaTwC" id="5Lno_XHzCF7" role="1aUNEU">
                              <node concept="3oM_SD" id="5Lno_XHzCF8" role="1PaTwD">
                                <property role="3oM_SC" value="&quot;.model&quot;" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$rGX" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$rJP" role="1PaTwD">
                                <property role="3oM_SC" value="the" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$rJQ" role="1PaTwD">
                                <property role="3oM_SC" value="only" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$rJR" role="1PaTwD">
                                <property role="3oM_SC" value="case" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$rVy" role="1PaTwD">
                                <property role="3oM_SC" value="from" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$rYp" role="1PaTwD">
                                <property role="3oM_SC" value="ModelDiffTool.DIFF_SUPPORTED_TYPES" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$si_" role="1PaTwD">
                                <property role="3oM_SC" value="that" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$sr8" role="1PaTwD">
                                <property role="3oM_SC" value="comes" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$stZ" role="1PaTwD">
                                <property role="3oM_SC" value="w/o" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$su0" role="1PaTwD">
                                <property role="3oM_SC" value="a" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$szH" role="1PaTwD">
                                <property role="3oM_SC" value="file" />
                              </node>
                              <node concept="3oM_SD" id="5Lno_XH$szI" role="1PaTwD">
                                <property role="3oM_SC" value="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5Lno_XHyIDQ" role="3cqZAp">
                            <node concept="37vLTI" id="5Lno_XHyNJE" role="3clFbG">
                              <node concept="37vLTw" id="5Lno_XHyIDO" role="37vLTJ">
                                <ref role="3cqZAo" node="5Lno_XHxRqt" resolve="fileName" />
                              </node>
                              <node concept="10M0yZ" id="5Lno_XHzQx3" role="37vLTx">
                                <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_MODEL_HEADER" resolve="DOT_MODEL_HEADER" />
                                <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="5Lno_XHytN_" role="3clFbw">
                          <node concept="37vLTw" id="5Lno_XHyp4c" role="3uHU7B">
                            <ref role="3cqZAo" node="5zPLqcHMPQ3" resolve="type" />
                          </node>
                          <node concept="10M0yZ" id="5Lno_XHyy4d" role="3uHU7w">
                            <ref role="1PxDUh" to="tcg7:~MPSFileTypeFactory" resolve="MPSFileTypeFactory" />
                            <ref role="3cqZAo" to="tcg7:~MPSFileTypeFactory.MPS_HEADER_FILE_TYPE" resolve="MPS_HEADER_FILE_TYPE" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="5Lno_XHyUkL" role="9aQIa">
                          <node concept="3clFbS" id="5Lno_XHyUkM" role="9aQI4">
                            <node concept="3SKdUt" id="5Lno_XHy3qM" role="3cqZAp">
                              <node concept="1PaTwC" id="5Lno_XHy3qN" role="1aUNEU">
                                <node concept="3oM_SD" id="5Lno_XHy3qO" role="1PaTwD">
                                  <property role="3oM_SC" value="hack," />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy7RH" role="1PaTwD">
                                  <property role="3oM_SC" value="we" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy7U7" role="1PaTwD">
                                  <property role="3oM_SC" value="know" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy81i" role="1PaTwD">
                                  <property role="3oM_SC" value="discover()" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy88a" role="1PaTwD">
                                  <property role="3oM_SC" value="looks" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8fn" role="1PaTwD">
                                  <property role="3oM_SC" value="into" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8fo" role="1PaTwD">
                                  <property role="3oM_SC" value="extension" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8k9" role="1PaTwD">
                                  <property role="3oM_SC" value="part" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8my" role="1PaTwD">
                                  <property role="3oM_SC" value="only," />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8mz" role="1PaTwD">
                                  <property role="3oM_SC" value="can" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8oW" role="1PaTwD">
                                  <property role="3oM_SC" value="get" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8ts" role="1PaTwD">
                                  <property role="3oM_SC" value="any" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8vP" role="1PaTwD">
                                  <property role="3oM_SC" value="name" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHy8ye" role="1PaTwD">
                                  <property role="3oM_SC" value="here" />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="5Lno_XHycPf" role="3cqZAp">
                              <node concept="1PaTwC" id="5Lno_XHycPg" role="1aUNEU">
                                <node concept="3oM_SD" id="5Lno_XHycPh" role="1PaTwD">
                                  <property role="3oM_SC" value="however," />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfxO" role="1PaTwD">
                                  <property role="3oM_SC" value="still" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfxQ" role="1PaTwD">
                                  <property role="3oM_SC" value="a" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfxR" role="1PaTwD">
                                  <property role="3oM_SC" value="hack," />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfC2" role="1PaTwD">
                                  <property role="3oM_SC" value="and" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfGP" role="1PaTwD">
                                  <property role="3oM_SC" value="I'd" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfGQ" role="1PaTwD">
                                  <property role="3oM_SC" value="like" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfJf" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfO0" role="1PaTwD">
                                  <property role="3oM_SC" value="get" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfQp" role="1PaTwD">
                                  <property role="3oM_SC" value="rid" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfVa" role="1PaTwD">
                                  <property role="3oM_SC" value="of" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfVb" role="1PaTwD">
                                  <property role="3oM_SC" value="it" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfVc" role="1PaTwD">
                                  <property role="3oM_SC" value="eventually" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyfX_" role="1PaTwD">
                                  <property role="3oM_SC" value="(once" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyg4I" role="1PaTwD">
                                  <property role="3oM_SC" value="there's" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyg77" role="1PaTwD">
                                  <property role="3oM_SC" value="no" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyg78" role="1PaTwD">
                                  <property role="3oM_SC" value="need" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyg79" role="1PaTwD">
                                  <property role="3oM_SC" value="in" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyg9y" role="1PaTwD">
                                  <property role="3oM_SC" value="discover()" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyggF" role="1PaTwD">
                                  <property role="3oM_SC" value="or" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyggG" role="1PaTwD">
                                  <property role="3oM_SC" value="its" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHyguZ" role="1PaTwD">
                                  <property role="3oM_SC" value="per-root-aware" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHygxo" role="1PaTwD">
                                  <property role="3oM_SC" value="logic" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHygzL" role="1PaTwD">
                                  <property role="3oM_SC" value="(i.e." />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHygCy" role="1PaTwD">
                                  <property role="3oM_SC" value="once" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHygEV" role="1PaTwD">
                                  <property role="3oM_SC" value="per-root" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHygJG" role="1PaTwD">
                                  <property role="3oM_SC" value="MF" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHygM5" role="1PaTwD">
                                  <property role="3oM_SC" value="supports" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHygQQ" role="1PaTwD">
                                  <property role="3oM_SC" value="single" />
                                </node>
                                <node concept="3oM_SD" id="5Lno_XHygVB" role="1PaTwD">
                                  <property role="3oM_SC" value="roots/headers)" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5Lno_XHzhFZ" role="3cqZAp">
                              <node concept="37vLTI" id="5Lno_XHzhG0" role="3clFbG">
                                <node concept="37vLTw" id="5Lno_XHzhG1" role="37vLTJ">
                                  <ref role="3cqZAo" node="5Lno_XHxRqt" resolve="fileName" />
                                </node>
                                <node concept="3cpWs3" id="5Lno_XHzhG2" role="37vLTx">
                                  <node concept="Xl_RD" id="5Lno_XHzhG4" role="3uHU7B">
                                    <property role="Xl_RC" value="fakeFileName." />
                                  </node>
                                  <node concept="2OqwBi" id="5Lno_XHxhFT" role="3uHU7w">
                                    <node concept="37vLTw" id="5Lno_XHxhFU" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5zPLqcHMPQ3" resolve="type" />
                                    </node>
                                    <node concept="liA8E" id="5Lno_XHxhFV" role="2OqNvi">
                                      <ref role="37wK5l" to="fglx:~FileType.getDefaultExtension()" resolve="getDefaultExtension" />
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
                <node concept="3cpWs6" id="5zPLqcHN_qV" role="3cqZAp">
                  <node concept="2OqwBi" id="5Lno_XHxa7Z" role="3cqZAk">
                    <node concept="2YIFZM" id="5Lno_XHwX1u" role="2Oq$k0">
                      <ref role="37wK5l" to="iho:2VIcG4o2hlS" resolve="discover" />
                      <ref role="1Pybhc" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
                      <node concept="37vLTw" id="5Lno_XHwX1v" role="37wK5m">
                        <ref role="3cqZAo" node="5Lno_XHslfD" resolve="mpsPlatform" />
                      </node>
                      <node concept="37vLTw" id="5Lno_XHx5Bl" role="37wK5m">
                        <ref role="3cqZAo" node="5Lno_XHxRqt" resolve="fileName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5Lno_XHxcQ0" role="2OqNvi">
                      <ref role="37wK5l" to="iho:2VIcG4o3ZpT" resolve="load" />
                      <node concept="2OqwBi" id="5Lno_XHxfeY" role="37wK5m">
                        <node concept="37vLTw" id="5Lno_XHxfeZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="5zPLqcHMPQV" resolve="text" />
                        </node>
                        <node concept="liA8E" id="5Lno_XHxff0" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.getBytes()" resolve="getBytes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5zPLqcHMPRa" role="3cqZAp">
          <node concept="10Nm6u" id="5zPLqcHMPRb" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5zPLqcHMPRc" role="1B3o_S" />
      <node concept="H_c77" id="5zPLqcHMQAg" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="HUlZWKekI4" role="jymVt" />
    <node concept="2YIFZL" id="5zPLqcHMCgg" role="jymVt">
      <property role="TrG5h" value="getModel" />
      <node concept="37vLTG" id="6y_kxB1Z0M8" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="HUlZWKcb8v" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="H_c77" id="5zPLqcHMCgh" role="3clF45" />
      <node concept="3Tm6S6" id="5zPLqcHMCgi" role="1B3o_S" />
      <node concept="3clFbS" id="5zPLqcHMCgj" role="3clF47">
        <node concept="3SKdUt" id="IOaVVgtZ67" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomq$" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomq_" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqA" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqB" role="1PaTwD">
              <property role="3oM_SC" value="model?" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="IOaVVgtZR0" role="3cqZAp">
          <node concept="3clFbS" id="IOaVVgtZR2" role="3clFbx">
            <node concept="3cpWs6" id="IOaVVgu1M0" role="3cqZAp">
              <node concept="2OqwBi" id="IOaVVgu2W1" role="3cqZAk">
                <node concept="1eOMI4" id="IOaVVgu2pL" role="2Oq$k0">
                  <node concept="10QFUN" id="IOaVVgu2pI" role="1eOMHV">
                    <node concept="3uibUv" id="IOaVVgu2pN" role="10QFUM">
                      <ref role="3uigEE" to="24bc:~ModelDiffContent" resolve="ModelDiffContent" />
                    </node>
                    <node concept="37vLTw" id="IOaVVgu2pO" role="10QFUP">
                      <ref role="3cqZAo" node="5zPLqcHMCgW" resolve="content" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2mAIImNawmF" role="2OqNvi">
                  <ref role="37wK5l" to="24bc:~ModelDiffContent.getModel()" resolve="getModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="IOaVVgu124" role="3clFbw">
            <node concept="3uibUv" id="IOaVVgu1rC" role="2ZW6by">
              <ref role="3uigEE" to="24bc:~ModelDiffContent" resolve="ModelDiffContent" />
            </node>
            <node concept="37vLTw" id="IOaVVgu0v9" role="2ZW6bz">
              <ref role="3cqZAo" node="5zPLqcHMCgW" resolve="content" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5zPLqcHNif2" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomqC" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomqD" role="1PaTwD">
              <property role="3oM_SC" value="try" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqE" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqF" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqG" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqH" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqI" role="1PaTwD">
              <property role="3oM_SC" value="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5zPLqcHNhqp" role="3cqZAp">
          <node concept="3clFbS" id="5zPLqcHNhqr" role="3clFbx">
            <node concept="3cpWs8" id="HUlZWKdkDe" role="3cqZAp">
              <node concept="3cpWsn" id="HUlZWKdkDf" role="3cpWs9">
                <property role="TrG5h" value="file" />
                <node concept="3uibUv" id="HUlZWKdkDc" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
                <node concept="2OqwBi" id="HUlZWKdkDg" role="33vP2m">
                  <node concept="1eOMI4" id="HUlZWKdkDh" role="2Oq$k0">
                    <node concept="10QFUN" id="HUlZWKdkDi" role="1eOMHV">
                      <node concept="3uibUv" id="HUlZWKdkDj" role="10QFUM">
                        <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
                      </node>
                      <node concept="37vLTw" id="HUlZWKdkDk" role="10QFUP">
                        <ref role="3cqZAo" node="5zPLqcHMCgW" resolve="content" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="HUlZWKdkDl" role="2OqNvi">
                    <ref role="37wK5l" to="2o8p:~FileContent.getFile()" resolve="getFile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6PUZm6lajPh" role="3cqZAp">
              <node concept="3cpWsn" id="6PUZm6lajPi" role="3cpWs9">
                <property role="TrG5h" value="fs" />
                <node concept="3uibUv" id="6PUZm6la9ag" role="1tU5fm">
                  <ref role="3uigEE" to="4hrd:~FileSystemBridge" resolve="FileSystemBridge" />
                </node>
                <node concept="2OqwBi" id="6PUZm6lajPj" role="33vP2m">
                  <node concept="37vLTw" id="6PUZm6lajPk" role="2Oq$k0">
                    <ref role="3cqZAo" node="6y_kxB1Z0M8" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="6PUZm6lajPl" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5zPLqcHMCgt" role="3cqZAp">
              <node concept="3cpWsn" id="5zPLqcHMCgu" role="3cpWs9">
                <property role="TrG5h" value="model" />
                <property role="3TUv4t" value="false" />
                <node concept="H_c77" id="5zPLqcHMCgz" role="1tU5fm" />
                <node concept="10Nm6u" id="6PUZm6lalCO" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbJ" id="6PUZm6laklY" role="3cqZAp">
              <node concept="2OqwBi" id="6PUZm6laklZ" role="3clFbw">
                <node concept="37vLTw" id="6PUZm6lakm0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6PUZm6lajPi" resolve="fs" />
                </node>
                <node concept="liA8E" id="6PUZm6lakm1" role="2OqNvi">
                  <ref role="37wK5l" to="4hrd:~FileSystemBridge.canConvert(com.intellij.openapi.vfs.VirtualFile)" resolve="canConvert" />
                  <node concept="37vLTw" id="6PUZm6lakm2" role="37wK5m">
                    <ref role="3cqZAo" node="HUlZWKdkDf" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6PUZm6lakm3" role="3clFbx">
                <node concept="3clFbF" id="6PUZm6lakNA" role="3cqZAp">
                  <node concept="37vLTI" id="6PUZm6lakNC" role="3clFbG">
                    <node concept="2OqwBi" id="5zPLqcHMCgv" role="37vLTx">
                      <node concept="2YIFZM" id="5zPLqcHMCgw" role="2Oq$k0">
                        <ref role="1Pybhc" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
                        <ref role="37wK5l" to="w1kc:~SModelFileTracker.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                        <node concept="2OqwBi" id="6y_kxB1Z1Fc" role="37wK5m">
                          <node concept="37vLTw" id="6y_kxB1Z1pp" role="2Oq$k0">
                            <ref role="3cqZAo" node="6y_kxB1Z0M8" resolve="mpsProject" />
                          </node>
                          <node concept="liA8E" id="6y_kxB1Z1Of" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5zPLqcHMCgx" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~SModelFileTracker.findModel(jetbrains.mps.vfs.IFile)" resolve="findModel" />
                        <node concept="2OqwBi" id="HUlZWKcKnP" role="37wK5m">
                          <node concept="37vLTw" id="6PUZm6lajPm" role="2Oq$k0">
                            <ref role="3cqZAo" node="6PUZm6lajPi" resolve="fs" />
                          </node>
                          <node concept="liA8E" id="HUlZWKcNeq" role="2OqNvi">
                            <ref role="37wK5l" to="4hrd:~FileSystemBridge.fromVirtualFile(com.intellij.openapi.vfs.VirtualFile)" resolve="fromVirtualFile" />
                            <node concept="37vLTw" id="HUlZWKdu42" role="37wK5m">
                              <ref role="3cqZAo" node="HUlZWKdkDf" resolve="file" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6PUZm6lakNG" role="37vLTJ">
                      <ref role="3cqZAo" node="5zPLqcHMCgu" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5zPLqcHMCg$" role="3cqZAp">
              <node concept="3clFbS" id="5zPLqcHMCg_" role="3clFbx">
                <node concept="3cpWs6" id="5zPLqcHMCgA" role="3cqZAp">
                  <node concept="37vLTw" id="5zPLqcHMCgB" role="3cqZAk">
                    <ref role="3cqZAo" node="5zPLqcHMCgu" resolve="model" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5zPLqcHMCgC" role="3clFbw">
                <node concept="10Nm6u" id="5zPLqcHMCgD" role="3uHU7w" />
                <node concept="37vLTw" id="5zPLqcHMCgE" role="3uHU7B">
                  <ref role="3cqZAo" node="5zPLqcHMCgu" resolve="model" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="HUlZWKcs8r" role="3clFbw">
            <node concept="3uibUv" id="HUlZWKcu_0" role="2ZW6by">
              <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
            </node>
            <node concept="37vLTw" id="HUlZWKcnPU" role="2ZW6bz">
              <ref role="3cqZAo" node="5zPLqcHMCgW" resolve="content" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5zPLqcHNi27" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomqJ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomqK" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqL" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqM" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqN" role="1PaTwD">
              <property role="3oM_SC" value="content" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5zPLqcHMCgT" role="3cqZAp">
          <node concept="1rXfSq" id="5zPLqcHNiKB" role="3cqZAk">
            <ref role="37wK5l" node="5zPLqcHMPPZ" resolve="readModel" />
            <node concept="37vLTw" id="5zPLqcHMCgV" role="37wK5m">
              <ref role="3cqZAo" node="5zPLqcHMCgW" resolve="content" />
            </node>
            <node concept="37vLTw" id="5zPLqcHNnM4" role="37wK5m">
              <ref role="3cqZAo" node="5zPLqcHNmW$" resolve="type" />
            </node>
            <node concept="2OqwBi" id="5Lno_XHuRhc" role="37wK5m">
              <node concept="37vLTw" id="5Lno_XHuNnA" role="2Oq$k0">
                <ref role="3cqZAo" node="6y_kxB1Z0M8" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="5Lno_XHuUfQ" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectBase.getPlatform()" resolve="getPlatform" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHMCgW" role="3clF46">
        <property role="TrG5h" value="content" />
        <node concept="3uibUv" id="5zPLqcHNgZE" role="1tU5fm">
          <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
        </node>
        <node concept="2AHcQZ" id="5zPLqcHNfAm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHNmW$" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="5zPLqcHNnd$" role="1tU5fm">
          <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5zPLqcHMCgY" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5zPLqcHMCgZ" role="jymVt" />
    <node concept="2YIFZL" id="6y_kxB1YYBy" role="jymVt">
      <property role="TrG5h" value="getModelAndRoot" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5zPLqcHMCip" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="5zPLqcHMCh1" role="3clF47">
        <node concept="3SKdUt" id="7s_9TZT3sMX" role="3cqZAp">
          <node concept="1PaTwC" id="7s_9TZT3sMY" role="1aUNEU">
            <node concept="3oM_SD" id="7s_9TZT3sMZ" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4OEC" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT3sN0" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT3sN1" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT3sN2" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT3tcI" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT3sN5" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT3sN6" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT3sN7" role="1PaTwD">
              <property role="3oM_SC" value="Id" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7s_9TZT4wMk" role="3cqZAp">
          <node concept="3cpWsn" id="7s_9TZT4wMl" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="7s_9TZT4wMm" role="1tU5fm" />
            <node concept="1rXfSq" id="7s_9TZT4wMn" role="33vP2m">
              <ref role="37wK5l" node="5zPLqcHMPPZ" resolve="readModel" />
              <node concept="37vLTw" id="7s_9TZT4wMo" role="37wK5m">
                <ref role="3cqZAo" node="5zPLqcHMCin" resolve="content" />
              </node>
              <node concept="37vLTw" id="7s_9TZT4wMp" role="37wK5m">
                <ref role="3cqZAo" node="5zPLqcHNADu" resolve="type" />
              </node>
              <node concept="2OqwBi" id="5Lno_XHuyRy" role="37wK5m">
                <node concept="37vLTw" id="5Lno_XHuvdi" role="2Oq$k0">
                  <ref role="3cqZAo" node="6y_kxB1YYhM" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="5Lno_XHuAjD" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~ProjectBase.getPlatform()" resolve="getPlatform" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="7s_9TZT4wMq" role="3cqZAp">
          <node concept="1PaTwC" id="7s_9TZT4wMr" role="1aUNEU">
            <node concept="3oM_SD" id="7s_9TZT4wMs" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMt" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMu" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMv" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMw" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMx" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMy" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMz" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wM$" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wM_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMA" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMB" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMC" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wMD" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="7s_9TZT4wME" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7s_9TZT4yxA" role="3cqZAp">
          <node concept="3cpWsn" id="7s_9TZT4yxB" role="3cpWs9">
            <property role="TrG5h" value="rootId" />
            <node concept="3uibUv" id="7s_9TZT4yxC" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="2EnYce" id="7s_9TZT4wMI" role="33vP2m">
              <node concept="2JrnkZ" id="7s_9TZT4wMJ" role="2Oq$k0">
                <node concept="2OqwBi" id="7s_9TZT4wMK" role="2JrQYb">
                  <node concept="2OqwBi" id="7s_9TZT4wML" role="2Oq$k0">
                    <node concept="37vLTw" id="7s_9TZT4wMM" role="2Oq$k0">
                      <ref role="3cqZAo" node="7s_9TZT4wMl" resolve="model" />
                    </node>
                    <node concept="2RRcyG" id="7s_9TZT4wMN" role="2OqNvi" />
                  </node>
                  <node concept="1uHKPH" id="7s_9TZT4wMO" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="7s_9TZT4wMP" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7s_9TZT4yWX" role="3cqZAp" />
        <node concept="3SKdUt" id="5zPLqcHNBeK" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomqO" role="1aUNEU">
            <node concept="3oM_SD" id="7s_9TZT3td7" role="1PaTwD">
              <property role="3oM_SC" value="try" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqR" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqS" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqT" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqU" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomqV" role="1PaTwD">
              <property role="3oM_SC" value="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5zPLqcHNBeR" role="3cqZAp">
          <node concept="3clFbS" id="5zPLqcHNBeS" role="3clFbx">
            <node concept="3cpWs8" id="HUlZWKdIfV" role="3cqZAp">
              <node concept="3cpWsn" id="HUlZWKdIfW" role="3cpWs9">
                <property role="TrG5h" value="file" />
                <node concept="3uibUv" id="HUlZWKdIfX" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
                <node concept="2OqwBi" id="HUlZWKdPVj" role="33vP2m">
                  <node concept="2OqwBi" id="HUlZWKdIfY" role="2Oq$k0">
                    <node concept="1eOMI4" id="HUlZWKdIfZ" role="2Oq$k0">
                      <node concept="10QFUN" id="HUlZWKdIg0" role="1eOMHV">
                        <node concept="3uibUv" id="HUlZWKdIg1" role="10QFUM">
                          <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
                        </node>
                        <node concept="37vLTw" id="HUlZWKdIg2" role="10QFUP">
                          <ref role="3cqZAo" node="5zPLqcHMCin" resolve="content" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="HUlZWKdIg3" role="2OqNvi">
                      <ref role="37wK5l" to="2o8p:~FileContent.getFile()" resolve="getFile" />
                    </node>
                  </node>
                  <node concept="liA8E" id="HUlZWKdRwu" role="2OqNvi">
                    <ref role="37wK5l" to="jlff:~VirtualFile.getParent()" resolve="getParent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6PUZm6laaRf" role="3cqZAp">
              <node concept="3cpWsn" id="6PUZm6laaRg" role="3cpWs9">
                <property role="TrG5h" value="fs" />
                <node concept="3uibUv" id="6PUZm6la9fx" role="1tU5fm">
                  <ref role="3uigEE" to="4hrd:~FileSystemBridge" resolve="FileSystemBridge" />
                </node>
                <node concept="2OqwBi" id="6PUZm6laaRh" role="33vP2m">
                  <node concept="37vLTw" id="6PUZm6laaRi" role="2Oq$k0">
                    <ref role="3cqZAo" node="6y_kxB1YYhM" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="6PUZm6laaRj" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~MPSProject.getFileSystem()" resolve="getFileSystem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6PUZm6l8yw3" role="3cqZAp">
              <node concept="2OqwBi" id="6PUZm6l8yIX" role="3clFbw">
                <node concept="37vLTw" id="6PUZm6l8yIW" role="2Oq$k0">
                  <ref role="3cqZAo" node="6PUZm6laaRg" resolve="fs" />
                </node>
                <node concept="liA8E" id="6PUZm6l8yIY" role="2OqNvi">
                  <ref role="37wK5l" to="4hrd:~FileSystemBridge.canConvert(com.intellij.openapi.vfs.VirtualFile)" resolve="canConvert" />
                  <node concept="37vLTw" id="6PUZm6l8yIZ" role="37wK5m">
                    <ref role="3cqZAo" node="HUlZWKdIfW" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6PUZm6l8yw9" role="3clFbx">
                <node concept="3cpWs8" id="5zPLqcHNBS5" role="3cqZAp">
                  <node concept="3cpWsn" id="5zPLqcHNBS8" role="3cpWs9">
                    <property role="TrG5h" value="repoModel" />
                    <node concept="H_c77" id="5zPLqcHNBS3" role="1tU5fm" />
                    <node concept="2OqwBi" id="1jAV7zstgde" role="33vP2m">
                      <node concept="2YIFZM" id="1jAV7zstgdf" role="2Oq$k0">
                        <ref role="1Pybhc" to="w1kc:~SModelFileTracker" resolve="SModelFileTracker" />
                        <ref role="37wK5l" to="w1kc:~SModelFileTracker.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                        <node concept="2OqwBi" id="1jAV7zstgdg" role="37wK5m">
                          <node concept="37vLTw" id="1jAV7zstgdh" role="2Oq$k0">
                            <ref role="3cqZAo" node="6y_kxB1YYhM" resolve="mpsProject" />
                          </node>
                          <node concept="liA8E" id="1jAV7zstgdi" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1jAV7zstgdj" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~SModelFileTracker.findModel(jetbrains.mps.vfs.IFile)" resolve="findModel" />
                        <node concept="2OqwBi" id="1jAV7zstgdk" role="37wK5m">
                          <node concept="37vLTw" id="1jAV7zstgdl" role="2Oq$k0">
                            <ref role="3cqZAo" node="6PUZm6laaRg" resolve="fs" />
                          </node>
                          <node concept="liA8E" id="1jAV7zstgdm" role="2OqNvi">
                            <ref role="37wK5l" to="4hrd:~FileSystemBridge.fromVirtualFile(com.intellij.openapi.vfs.VirtualFile)" resolve="fromVirtualFile" />
                            <node concept="37vLTw" id="1jAV7zstgdn" role="37wK5m">
                              <ref role="3cqZAo" node="HUlZWKdIfW" resolve="file" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1jAV7zsrVGq" role="3cqZAp">
                  <property role="TyiWL" value="true" />
                  <node concept="3clFbS" id="1jAV7zsrVGs" role="3clFbx">
                    <node concept="3clFbF" id="7s_9TZT4umL" role="3cqZAp">
                      <node concept="37vLTI" id="7s_9TZT4v_s" role="3clFbG">
                        <node concept="37vLTw" id="7s_9TZT4w0x" role="37vLTx">
                          <ref role="3cqZAo" node="5zPLqcHNBS8" resolve="repoModel" />
                        </node>
                        <node concept="37vLTw" id="7s_9TZT4zVm" role="37vLTJ">
                          <ref role="3cqZAo" node="7s_9TZT4wMl" resolve="model" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1jAV7zsrWsu" role="3clFbw">
                    <node concept="10Nm6u" id="1jAV7zsrWHU" role="3uHU7w" />
                    <node concept="37vLTw" id="1jAV7zsrW77" role="3uHU7B">
                      <ref role="3cqZAo" node="5zPLqcHNBS8" resolve="repoModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="HUlZWKdB2w" role="3clFbw">
            <node concept="3uibUv" id="HUlZWKdDyy" role="2ZW6by">
              <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
            </node>
            <node concept="37vLTw" id="HUlZWKdySF" role="2ZW6bz">
              <ref role="3cqZAo" node="5zPLqcHMCin" resolve="content" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1jAV7zst65x" role="3cqZAp">
          <node concept="1Ls8ON" id="7s_9TZT4$kM" role="3cqZAk">
            <node concept="37vLTw" id="7s_9TZT4_qt" role="1Lso8e">
              <ref role="3cqZAo" node="7s_9TZT4wMl" resolve="model" />
            </node>
            <node concept="37vLTw" id="7s_9TZT4Awu" role="1Lso8e">
              <ref role="3cqZAo" node="7s_9TZT4yxB" resolve="rootId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6y_kxB1YYhM" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="HUlZWKch44" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHMCin" role="3clF46">
        <property role="TrG5h" value="content" />
        <node concept="3uibUv" id="5zPLqcHNANy" role="1tU5fm">
          <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
        </node>
      </node>
      <node concept="37vLTG" id="5zPLqcHNADu" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="5zPLqcHNAMs" role="1tU5fm">
          <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
        </node>
      </node>
      <node concept="1LlUBW" id="5zPLqcHMCik" role="3clF45">
        <node concept="H_c77" id="5zPLqcHMCil" role="1Lm7xW" />
        <node concept="3uibUv" id="5zPLqcHMCim" role="1Lm7xW">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5zPLqcHMCij" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="4qk_0lIkI_e">
    <property role="TrG5h" value="ModelMergeTool" />
    <node concept="3Tm1VV" id="4qk_0lIkI_f" role="1B3o_S" />
    <node concept="3uibUv" id="4qk_0lIkOPc" role="EKbjA">
      <ref role="3uigEE" to="o8e1:~MergeTool" resolve="MergeTool" />
    </node>
    <node concept="Wx3nA" id="4qk_0lIkT7W" role="jymVt">
      <property role="TrG5h" value="SUPPORTED_TYPES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4qk_0lIkT7X" role="1B3o_S" />
      <node concept="2hMVRd" id="4qk_0lIkT7Y" role="1tU5fm">
        <node concept="3uibUv" id="4qk_0lIkT7Z" role="2hN53Y">
          <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
        </node>
      </node>
      <node concept="2ShNRf" id="4qk_0lIkT80" role="33vP2m">
        <node concept="2i4dXS" id="4qk_0lIkT81" role="2ShVmc">
          <node concept="3uibUv" id="4qk_0lIkT82" role="HW$YZ">
            <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
          </node>
          <node concept="10M0yZ" id="4qk_0lIkT83" role="I$8f6">
            <ref role="1PxDUh" node="1R9fMbxrKEY" resolve="ModelDiffTool" />
            <ref role="3cqZAo" node="7NAm8AJJnt" resolve="DIFF_SUPPORTED_TYPES" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4qk_0lIkT0m" role="jymVt" />
    <node concept="Wx3nA" id="4qk_0lIsi2n" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4qk_0lIshDN" role="1B3o_S" />
      <node concept="3uibUv" id="4qk_0lIsi0F" role="1tU5fm">
        <ref role="3uigEE" node="4qk_0lIkI_e" resolve="ModelMergeTool" />
      </node>
      <node concept="2ShNRf" id="4qk_0lIsigf" role="33vP2m">
        <node concept="HV5vD" id="4qk_0lIskb_" role="2ShVmc">
          <ref role="HV5vE" node="4qk_0lIkI_e" resolve="ModelMergeTool" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4qk_0lIshrL" role="jymVt" />
    <node concept="3clFb_" id="4qk_0lIkS0K" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canShow" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4qk_0lIkS0L" role="1B3o_S" />
      <node concept="10P_77" id="4qk_0lIkS0N" role="3clF45" />
      <node concept="37vLTG" id="4qk_0lIkS0O" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4qk_0lIkS0P" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~MergeContext" resolve="MergeContext" />
        </node>
        <node concept="2AHcQZ" id="4qk_0lIkS0Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4qk_0lIkS0R" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="4qk_0lIkS0S" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~MergeRequest" resolve="MergeRequest" />
        </node>
        <node concept="2AHcQZ" id="4qk_0lIkS0T" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4qk_0lIkS0U" role="3clF47">
        <node concept="3SKdUt" id="4qk_0lIkS82" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomre" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomrf" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrg" role="1PaTwD">
              <property role="3oM_SC" value="SUPPORTED_TYPES" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrh" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomri" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrj" role="1PaTwD">
              <property role="3oM_SC" value="files," />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrk" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrl" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrm" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrn" role="1PaTwD">
              <property role="3oM_SC" value="work" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomro" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrp" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrq" role="1PaTwD">
              <property role="3oM_SC" value="requests" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrr" role="1PaTwD">
              <property role="3oM_SC" value="ony." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4qk_0lIkS84" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomrs" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomrt" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomru" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrv" role="1PaTwD">
              <property role="3oM_SC" value="also" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrw" role="1PaTwD">
              <property role="3oM_SC" value="allow" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrx" role="1PaTwD">
              <property role="3oM_SC" value="us" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomry" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrz" role="1PaTwD">
              <property role="3oM_SC" value="fallback" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomr$" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomr_" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrA" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrB" role="1PaTwD">
              <property role="3oM_SC" value="merge" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrC" role="1PaTwD">
              <property role="3oM_SC" value="tool" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qk_0lIkS7a" role="3cqZAp">
          <node concept="3fqX7Q" id="4qk_0lIkS7b" role="3clFbw">
            <node concept="1eOMI4" id="4qk_0lIkS7f" role="3fr31v">
              <node concept="2ZW3vV" id="4qk_0lIkS7e" role="1eOMHV">
                <node concept="37vLTw" id="4qk_0lIkS7c" role="2ZW6bz">
                  <ref role="3cqZAo" node="4qk_0lIkS0R" resolve="request" />
                </node>
                <node concept="3uibUv" id="4qk_0lIkS7d" role="2ZW6by">
                  <ref role="3uigEE" to="o8e1:~TextMergeRequest" resolve="TextMergeRequest" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4qk_0lIkS7i" role="3clFbx">
            <node concept="3cpWs6" id="4qk_0lIkS7g" role="3cqZAp">
              <node concept="3clFbT" id="4qk_0lIkS7h" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qk_0lIkS7k" role="3cqZAp">
          <node concept="3cpWsn" id="4qk_0lIkS7j" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="textRequest" />
            <node concept="3uibUv" id="4qk_0lIkS7l" role="1tU5fm">
              <ref role="3uigEE" to="o8e1:~TextMergeRequest" resolve="TextMergeRequest" />
            </node>
            <node concept="10QFUN" id="4qk_0lIkS7m" role="33vP2m">
              <node concept="37vLTw" id="4qk_0lIkS7n" role="10QFUP">
                <ref role="3cqZAo" node="4qk_0lIkS0R" resolve="request" />
              </node>
              <node concept="3uibUv" id="4qk_0lIkS7o" role="10QFUM">
                <ref role="3uigEE" to="o8e1:~TextMergeRequest" resolve="TextMergeRequest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4qk_0lIkS86" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXomrD" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXomrE" role="1PaTwD">
              <property role="3oM_SC" value="required" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrF" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrG" role="1PaTwD">
              <property role="3oM_SC" value="save" />
            </node>
            <node concept="3oM_SD" id="ATZLwXomrH" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qk_0lIkS7p" role="3cqZAp">
          <node concept="3fqX7Q" id="4qk_0lIkS7q" role="3clFbw">
            <node concept="1eOMI4" id="4qk_0lIkS7u" role="3fr31v">
              <node concept="2ZW3vV" id="4qk_0lIkS7t" role="1eOMHV">
                <node concept="2OqwBi" id="4qk_0lIkS8a" role="2ZW6bz">
                  <node concept="37vLTw" id="4qk_0lIkS89" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qk_0lIkS7j" resolve="textRequest" />
                  </node>
                  <node concept="liA8E" id="4qk_0lIkS8b" role="2OqNvi">
                    <ref role="37wK5l" to="o8e1:~TextMergeRequest.getOutputContent()" resolve="getOutputContent" />
                  </node>
                </node>
                <node concept="3uibUv" id="4qk_0lIkSvS" role="2ZW6by">
                  <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4qk_0lIkS7x" role="3clFbx">
            <node concept="3cpWs6" id="4qk_0lIkS7v" role="3cqZAp">
              <node concept="3clFbT" id="4qk_0lIkS7w" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qk_0lIkS7z" role="3cqZAp">
          <node concept="3cpWsn" id="4qk_0lIkS7y" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="commonType" />
            <node concept="3uibUv" id="4qk_0lIkS7$" role="1tU5fm">
              <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
            </node>
            <node concept="2OqwBi" id="4qk_0lIkS7_" role="33vP2m">
              <node concept="2OqwBi" id="4qk_0lIkS8f" role="2Oq$k0">
                <node concept="37vLTw" id="4qk_0lIkS8e" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qk_0lIkS7j" resolve="textRequest" />
                </node>
                <node concept="liA8E" id="4qk_0lIkS8g" role="2OqNvi">
                  <ref role="37wK5l" to="o8e1:~TextMergeRequest.getOutputContent()" resolve="getOutputContent" />
                </node>
              </node>
              <node concept="liA8E" id="4qk_0lIkS7B" role="2OqNvi">
                <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4qk_0lIkS7C" role="3cqZAp">
          <node concept="2OqwBi" id="4qk_0lIkS8k" role="1DdaDG">
            <node concept="37vLTw" id="4qk_0lIkS8j" role="2Oq$k0">
              <ref role="3cqZAo" node="4qk_0lIkS7j" resolve="textRequest" />
            </node>
            <node concept="liA8E" id="4qk_0lIkS8l" role="2OqNvi">
              <ref role="37wK5l" to="o8e1:~TextMergeRequest.getContents()" resolve="getContents" />
            </node>
          </node>
          <node concept="3cpWsn" id="4qk_0lIkS7U" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="content" />
            <node concept="3uibUv" id="4qk_0lIkS_n" role="1tU5fm">
              <ref role="3uigEE" to="2o8p:~DiffContent" resolve="DiffContent" />
            </node>
          </node>
          <node concept="3clFbS" id="4qk_0lIkS7E" role="2LFqv$">
            <node concept="3cpWs8" id="4qk_0lIkS7G" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIkS7F" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="contentType" />
                <node concept="3uibUv" id="4qk_0lIkS7H" role="1tU5fm">
                  <ref role="3uigEE" to="fglx:~FileType" resolve="FileType" />
                </node>
                <node concept="2OqwBi" id="4qk_0lIkS8p" role="33vP2m">
                  <node concept="37vLTw" id="4qk_0lIkS8o" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qk_0lIkS7U" resolve="content" />
                  </node>
                  <node concept="liA8E" id="4qk_0lIkS8q" role="2OqNvi">
                    <ref role="37wK5l" to="2o8p:~DiffContent.getContentType()" resolve="getContentType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4qk_0lIkS7J" role="3cqZAp">
              <node concept="1Wc70l" id="4qk_0lIkS7K" role="3clFbw">
                <node concept="3y3z36" id="4qk_0lIkS7L" role="3uHU7B">
                  <node concept="37vLTw" id="4qk_0lIkS7M" role="3uHU7B">
                    <ref role="3cqZAo" node="4qk_0lIkS7F" resolve="contentType" />
                  </node>
                  <node concept="10Nm6u" id="4qk_0lIkS7N" role="3uHU7w" />
                </node>
                <node concept="3y3z36" id="4qk_0lIkS7O" role="3uHU7w">
                  <node concept="37vLTw" id="4qk_0lIkS7P" role="3uHU7B">
                    <ref role="3cqZAo" node="4qk_0lIkS7F" resolve="contentType" />
                  </node>
                  <node concept="37vLTw" id="4qk_0lIkS7Q" role="3uHU7w">
                    <ref role="3cqZAo" node="4qk_0lIkS7y" resolve="commonType" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4qk_0lIkS7T" role="3clFbx">
                <node concept="3cpWs6" id="4qk_0lIkS7R" role="3cqZAp">
                  <node concept="3clFbT" id="4qk_0lIkS7S" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4qk_0lIkS7Y" role="3cqZAp">
          <node concept="2OqwBi" id="4qk_0lIkThN" role="3cqZAk">
            <node concept="37vLTw" id="4qk_0lIkUsm" role="2Oq$k0">
              <ref role="3cqZAo" node="4qk_0lIkT7W" resolve="SUPPORTED_TYPES" />
            </node>
            <node concept="3JPx81" id="4qk_0lIkVmG" role="2OqNvi">
              <node concept="37vLTw" id="4qk_0lIkVJ6" role="25WWJ7">
                <ref role="3cqZAo" node="4qk_0lIkS7y" resolve="commonType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4qk_0lIkVYB" role="jymVt" />
    <node concept="3clFb_" id="4qk_0lIkW6X" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4qk_0lIkW6Y" role="1B3o_S" />
      <node concept="3uibUv" id="4qk_0lIkW70" role="3clF45">
        <ref role="3uigEE" to="o8e1:~MergeTool$MergeViewer" resolve="MergeTool.MergeViewer" />
      </node>
      <node concept="37vLTG" id="4qk_0lIkW71" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4qk_0lIkW72" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~MergeContext" resolve="MergeContext" />
        </node>
        <node concept="2AHcQZ" id="4qk_0lIkW73" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4qk_0lIkW74" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="4qk_0lIkW75" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~MergeRequest" resolve="MergeRequest" />
        </node>
        <node concept="2AHcQZ" id="4qk_0lIkW76" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4qk_0lIkW77" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4qk_0lIkW78" role="3clF47">
        <node concept="3cpWs8" id="4qk_0lIxnXU" role="3cqZAp">
          <node concept="3cpWsn" id="4qk_0lIxnXV" role="3cpWs9">
            <property role="TrG5h" value="viewer" />
            <node concept="3uibUv" id="4qk_0lIxnXW" role="1tU5fm">
              <ref role="3uigEE" node="4qk_0lIkYNV" resolve="ModelMergeViewer" />
            </node>
            <node concept="2YIFZM" id="4qk_0lIxoIP" role="33vP2m">
              <ref role="37wK5l" node="4qk_0lIxhlw" resolve="createComponent" />
              <ref role="1Pybhc" node="4qk_0lIkYNV" resolve="ModelMergeViewer" />
              <node concept="37vLTw" id="4qk_0lIxoYQ" role="37wK5m">
                <ref role="3cqZAo" node="4qk_0lIkW71" resolve="context" />
              </node>
              <node concept="37vLTw" id="4qk_0lIxpnB" role="37wK5m">
                <ref role="3cqZAo" node="4qk_0lIkW74" resolve="request" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qk_0lIxqg9" role="3cqZAp">
          <node concept="3clFbS" id="4qk_0lIxqgb" role="3clFbx">
            <node concept="3cpWs6" id="4qk_0lIxsef" role="3cqZAp">
              <node concept="37vLTw" id="4qk_0lIxsIf" role="3cqZAk">
                <ref role="3cqZAo" node="4qk_0lIxnXV" resolve="viewer" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4qk_0lIxrqx" role="3clFbw">
            <node concept="10Nm6u" id="4qk_0lIxrNL" role="3uHU7w" />
            <node concept="37vLTw" id="4qk_0lIxqRm" role="3uHU7B">
              <ref role="3cqZAo" node="4qk_0lIxnXV" resolve="viewer" />
            </node>
          </node>
          <node concept="3eNFk2" id="4qk_0lIxtMM" role="3eNLev">
            <node concept="3clFbS" id="4qk_0lIxtMO" role="3eOfB_">
              <node concept="3SKdUt" id="4qk_0lIxuu6" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXomrI" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXomrJ" role="1PaTwD">
                    <property role="3oM_SC" value="fallback" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomrK" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomrL" role="1PaTwD">
                    <property role="3oM_SC" value="text" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXomrM" role="1PaTwD">
                    <property role="3oM_SC" value="merge" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4qk_0lIxuu8" role="3cqZAp">
                <node concept="2OqwBi" id="4qk_0lIxuu9" role="3cqZAk">
                  <node concept="10M0yZ" id="4qk_0lIxuua" role="2Oq$k0">
                    <ref role="1PxDUh" to="o8e1:~TextMergeTool" resolve="TextMergeTool" />
                    <ref role="3cqZAo" to="o8e1:~TextMergeTool.INSTANCE" resolve="INSTANCE" />
                  </node>
                  <node concept="liA8E" id="4qk_0lIxuub" role="2OqNvi">
                    <ref role="37wK5l" to="o8e1:~TextMergeTool.createComponent(com.intellij.diff.merge.MergeContext,com.intellij.diff.merge.MergeRequest)" resolve="createComponent" />
                    <node concept="37vLTw" id="4qk_0lIxuuc" role="37wK5m">
                      <ref role="3cqZAo" node="4qk_0lIkW71" resolve="context" />
                    </node>
                    <node concept="37vLTw" id="4qk_0lIxuud" role="37wK5m">
                      <ref role="3cqZAo" node="4qk_0lIkW74" resolve="request" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4qk_0lIxukX" role="3eO9$A">
              <node concept="10M0yZ" id="4qk_0lIxukY" role="2Oq$k0">
                <ref role="3cqZAo" to="o8e1:~TextMergeTool.INSTANCE" resolve="INSTANCE" />
                <ref role="1PxDUh" to="o8e1:~TextMergeTool" resolve="TextMergeTool" />
              </node>
              <node concept="liA8E" id="4qk_0lIxukZ" role="2OqNvi">
                <ref role="37wK5l" to="o8e1:~TextMergeTool.canShow(com.intellij.diff.merge.MergeContext,com.intellij.diff.merge.MergeRequest)" resolve="canShow" />
                <node concept="37vLTw" id="4qk_0lIxul0" role="37wK5m">
                  <ref role="3cqZAo" node="4qk_0lIkW71" resolve="context" />
                </node>
                <node concept="37vLTw" id="4qk_0lIxul1" role="37wK5m">
                  <ref role="3cqZAo" node="4qk_0lIkW74" resolve="request" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4qk_0lIxuBy" role="9aQIa">
            <node concept="3clFbS" id="4qk_0lIxuBz" role="9aQI4">
              <node concept="YS8fn" id="4qk_0lIxv1$" role="3cqZAp">
                <node concept="2ShNRf" id="4qk_0lIxv1_" role="YScLw">
                  <node concept="1pGfFk" id="4qk_0lIxv1A" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="4qk_0lIxv1B" role="37wK5m">
                      <property role="Xl_RC" value="Can't show merge" />
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
  <node concept="312cEu" id="4qk_0lIkYNV">
    <property role="TrG5h" value="ModelMergeViewer" />
    <node concept="2tJIrI" id="4qk_0lIxB3i" role="jymVt" />
    <node concept="312cEg" id="4qk_0lIs3Li" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMergeContext" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4qk_0lIs3lD" role="1B3o_S" />
      <node concept="3uibUv" id="4qk_0lIs3Jt" role="1tU5fm">
        <ref role="3uigEE" to="o8e1:~MergeContext" resolve="MergeContext" />
      </node>
    </node>
    <node concept="312cEg" id="4qk_0lIs2_K" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMergeRequest" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4qk_0lIs25K" role="1B3o_S" />
      <node concept="3uibUv" id="4qk_0lIweiR" role="1tU5fm">
        <ref role="3uigEE" to="o8e1:~TextMergeRequest" resolve="TextMergeRequest" />
      </node>
    </node>
    <node concept="2tJIrI" id="4qk_0lIs8a5" role="jymVt" />
    <node concept="312cEg" id="4qk_0lIoFF5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPanel" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="4qk_0lIoGVo" role="1tU5fm">
        <ref role="3uigEE" to="wenr:2jv$fqwD$ox" resolve="MergeModelsPanel" />
      </node>
      <node concept="3Tm6S6" id="4qk_0lIoFJQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4qk_0lIrovY" role="jymVt" />
    <node concept="3clFbW" id="4qk_0lIrpmE" role="jymVt">
      <node concept="3cqZAl" id="4qk_0lIrpmG" role="3clF45" />
      <node concept="3Tm1VV" id="4qk_0lIrpmH" role="1B3o_S" />
      <node concept="3clFbS" id="4qk_0lIrpmI" role="3clF47">
        <node concept="3clFbF" id="4qk_0lIs9T$" role="3cqZAp">
          <node concept="37vLTI" id="4qk_0lIsa6p" role="3clFbG">
            <node concept="37vLTw" id="4qk_0lIsagK" role="37vLTx">
              <ref role="3cqZAo" node="4qk_0lIrxJo" resolve="context" />
            </node>
            <node concept="37vLTw" id="4qk_0lIs9Ty" role="37vLTJ">
              <ref role="3cqZAo" node="4qk_0lIs3Li" resolve="myMergeContext" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qk_0lIsaRa" role="3cqZAp">
          <node concept="37vLTI" id="4qk_0lIsb4p" role="3clFbG">
            <node concept="37vLTw" id="4qk_0lIsbeK" role="37vLTx">
              <ref role="3cqZAo" node="4qk_0lIs91X" resolve="request" />
            </node>
            <node concept="37vLTw" id="4qk_0lIsaR8" role="37vLTJ">
              <ref role="3cqZAo" node="4qk_0lIs2_K" resolve="myMergeRequest" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qk_0lIrpK1" role="3cqZAp">
          <node concept="37vLTI" id="4qk_0lIrqf2" role="3clFbG">
            <node concept="2ShNRf" id="4qk_0lIrqBJ" role="37vLTx">
              <node concept="1pGfFk" id="4qk_0lIrqBI" role="2ShVmc">
                <ref role="37wK5l" to="wenr:2jv$fqwD$pu" resolve="MergeModelsPanel" />
                <node concept="2OqwBi" id="4qk_0lIs8Vs" role="37wK5m">
                  <node concept="37vLTw" id="4qk_0lIryfv" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qk_0lIrxJo" resolve="context" />
                  </node>
                  <node concept="liA8E" id="4qk_0lIs90C" role="2OqNvi">
                    <ref role="37wK5l" to="o8e1:~MergeContext.getProject()" resolve="getProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="4qk_0lIrr7y" role="37wK5m">
                  <ref role="3cqZAo" node="4qk_0lIrqGO" resolve="base" />
                </node>
                <node concept="37vLTw" id="4qk_0lIrrmQ" role="37wK5m">
                  <ref role="3cqZAo" node="4qk_0lIrqJ_" resolve="mine" />
                </node>
                <node concept="37vLTw" id="4qk_0lIrrAo" role="37wK5m">
                  <ref role="3cqZAo" node="4qk_0lIrqRc" resolve="repo" />
                </node>
                <node concept="37vLTw" id="4qk_0lIsgz0" role="37wK5m">
                  <ref role="3cqZAo" node="4qk_0lIs91X" resolve="request" />
                </node>
                <node concept="37vLTw" id="39EUdpT11D$" role="37wK5m">
                  <ref role="3cqZAo" node="39EUdpT0Cgb" resolve="doNotShowMetadata" />
                </node>
                <node concept="37vLTw" id="5u75OIaAKat" role="37wK5m">
                  <ref role="3cqZAo" node="5u75OIaAziW" resolve="fixReferences" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4qk_0lIrpK0" role="37vLTJ">
              <ref role="3cqZAo" node="4qk_0lIoFF5" resolve="myPanel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4qk_0lIrxJo" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4qk_0lIs8$w" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~MergeContext" resolve="MergeContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4qk_0lIs91X" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="4qk_0lIs9fy" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~TextMergeRequest" resolve="TextMergeRequest" />
        </node>
      </node>
      <node concept="37vLTG" id="4qk_0lIrqGO" role="3clF46">
        <property role="TrG5h" value="base" />
        <node concept="H_c77" id="4qk_0lIrqGN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4qk_0lIrqJ_" role="3clF46">
        <property role="TrG5h" value="mine" />
        <node concept="H_c77" id="4qk_0lIrqQC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4qk_0lIrqRc" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="H_c77" id="4qk_0lIrqYj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="39EUdpT0Cgb" role="3clF46">
        <property role="TrG5h" value="doNotShowMetadata" />
        <node concept="10P_77" id="39EUdpT0F8L" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5u75OIaAziW" role="3clF46">
        <property role="TrG5h" value="fixReferences" />
        <node concept="10P_77" id="5u75OIaABDR" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4qk_0lIro_N" role="jymVt" />
    <node concept="2YIFZL" id="4qk_0lIxhlw" role="jymVt">
      <property role="TrG5h" value="createComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4qk_0lIxhlx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4qk_0lIxhly" role="3clF47">
        <node concept="3J1_TO" id="4qk_0lIxhlz" role="3cqZAp">
          <node concept="3clFbS" id="4qk_0lIxhl$" role="1zxBo7">
            <node concept="3SKdUt" id="2VIcG4o6CXa" role="3cqZAp">
              <node concept="1PaTwC" id="2VIcG4o6CXb" role="1aUNEU">
                <node concept="3oM_SD" id="2VIcG4o6GKk" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6GKl" role="1PaTwD">
                  <property role="3oM_SC" value="why" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6GUb" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6GUc" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6GUd" role="1PaTwD">
                  <property role="3oM_SC" value="care" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6H4p" role="1PaTwD">
                  <property role="3oM_SC" value="about" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6H4q" role="1PaTwD">
                  <property role="3oM_SC" value="TextMergeRequest" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6I1s" role="1PaTwD">
                  <property role="3oM_SC" value="only," />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6Il5" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6IvY" role="1PaTwD">
                  <property role="3oM_SC" value="believe" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6IDN" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6IOG" role="1PaTwD">
                  <property role="3oM_SC" value="can" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6IOH" role="1PaTwD">
                  <property role="3oM_SC" value="handle" />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6IYy" role="1PaTwD">
                  <property role="3oM_SC" value="BinaryMergeRequest," />
                </node>
                <node concept="3oM_SD" id="2VIcG4o6JB_" role="1PaTwD">
                  <property role="3oM_SC" value="too!" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4qk_0lIxhl_" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIxhlA" role="3cpWs9">
                <property role="TrG5h" value="textRequest" />
                <node concept="3uibUv" id="4qk_0lIxhlB" role="1tU5fm">
                  <ref role="3uigEE" to="o8e1:~TextMergeRequest" resolve="TextMergeRequest" />
                </node>
                <node concept="10QFUN" id="4qk_0lIxhlC" role="33vP2m">
                  <node concept="3uibUv" id="4qk_0lIxhlD" role="10QFUM">
                    <ref role="3uigEE" to="o8e1:~TextMergeRequest" resolve="TextMergeRequest" />
                  </node>
                  <node concept="37vLTw" id="4qk_0lIxhlE" role="10QFUP">
                    <ref role="3cqZAo" node="4qk_0lIxhnY" resolve="request" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4qk_0lIxhlF" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIxhlG" role="3cpWs9">
                <property role="TrG5h" value="contents" />
                <node concept="_YKpA" id="4qk_0lIxhlH" role="1tU5fm">
                  <node concept="3uibUv" id="4qk_0lIxhlI" role="_ZDj9">
                    <ref role="3uigEE" to="2o8p:~DocumentContent" resolve="DocumentContent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4qk_0lIxhlJ" role="33vP2m">
                  <node concept="37vLTw" id="4qk_0lIxhlK" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qk_0lIxhlA" resolve="textRequest" />
                  </node>
                  <node concept="liA8E" id="4qk_0lIxhlL" role="2OqNvi">
                    <ref role="37wK5l" to="o8e1:~TextMergeRequest.getContents()" resolve="getContents" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4qk_0lIxhlM" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIxhlN" role="3cpWs9">
                <property role="TrG5h" value="byteContents" />
                <node concept="10Q1$e" id="4qk_0lIxhlO" role="1tU5fm">
                  <node concept="10Q1$e" id="4qk_0lIxhlP" role="10Q1$1">
                    <node concept="10PrrI" id="4qk_0lIxhlQ" role="10Q1$1" />
                  </node>
                </node>
                <node concept="2BsdOp" id="1cdAI9a2TV5" role="33vP2m">
                  <node concept="1rXfSq" id="1cdAI9a2VXm" role="2BsfMF">
                    <ref role="37wK5l" node="4qk_0lIxx7w" resolve="getContentBytes" />
                    <node concept="1y4W85" id="1cdAI9a3pER" role="37wK5m">
                      <node concept="3cmrfG" id="1cdAI9a3qpB" role="1y58nS">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="1cdAI9a2WMm" role="1y566C">
                        <ref role="3cqZAo" node="4qk_0lIxhlG" resolve="contents" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1cdAI9a2ZPn" role="2BsfMF">
                    <ref role="37wK5l" node="4qk_0lIxx7w" resolve="getContentBytes" />
                    <node concept="1y4W85" id="1cdAI9a2ZPo" role="37wK5m">
                      <node concept="3cmrfG" id="1cdAI9a2ZPp" role="1y58nS">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="1cdAI9a2ZPq" role="1y566C">
                        <ref role="3cqZAo" node="4qk_0lIxhlG" resolve="contents" />
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1cdAI9a30qo" role="2BsfMF">
                    <ref role="37wK5l" node="4qk_0lIxx7w" resolve="getContentBytes" />
                    <node concept="1y4W85" id="1cdAI9a30qp" role="37wK5m">
                      <node concept="3cmrfG" id="1cdAI9a30qq" role="1y58nS">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="37vLTw" id="1cdAI9a30qr" role="1y566C">
                        <ref role="3cqZAo" node="4qk_0lIxhlG" resolve="contents" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4qk_0lIxhm3" role="3cqZAp" />
            <node concept="3cpWs8" id="4qk_0lIxhm4" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIxhm5" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="file" />
                <node concept="3uibUv" id="4qk_0lIxhm6" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
                <node concept="2OqwBi" id="4qk_0lIxhm7" role="33vP2m">
                  <node concept="1eOMI4" id="4qk_0lIxhm8" role="2Oq$k0">
                    <node concept="10QFUN" id="4qk_0lIxhm9" role="1eOMHV">
                      <node concept="2OqwBi" id="4qk_0lIxhma" role="10QFUP">
                        <node concept="37vLTw" id="4qk_0lIxhmb" role="2Oq$k0">
                          <ref role="3cqZAo" node="4qk_0lIxhlA" resolve="textRequest" />
                        </node>
                        <node concept="liA8E" id="4qk_0lIxhmc" role="2OqNvi">
                          <ref role="37wK5l" to="o8e1:~TextMergeRequest.getOutputContent()" resolve="getOutputContent" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="4qk_0lIxhmd" role="10QFUM">
                        <ref role="3uigEE" to="2o8p:~FileContent" resolve="FileContent" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4qk_0lIxhme" role="2OqNvi">
                    <ref role="37wK5l" to="2o8p:~FileContent.getFile()" resolve="getFile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4qk_0lIxhmg" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIxhmh" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="backupFile" />
                <node concept="3uibUv" id="4qk_0lIxhmi" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2YIFZM" id="4qk_0lIxhmj" role="33vP2m">
                  <ref role="37wK5l" to="4rb9:4qk_0lIsKC1" resolve="zipModel" />
                  <ref role="1Pybhc" to="4rb9:60S3DtlQamH" resolve="MergeBackupUtil" />
                  <node concept="37vLTw" id="4qk_0lIxhmk" role="37wK5m">
                    <ref role="3cqZAo" node="4qk_0lIxhlN" resolve="byteContents" />
                  </node>
                  <node concept="37vLTw" id="4qk_0lIxhml" role="37wK5m">
                    <ref role="3cqZAo" node="4qk_0lIxhm5" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4qk_0lIxhmm" role="3cqZAp" />
            <node concept="3cpWs8" id="2VIcG4ocf0m" role="3cqZAp">
              <node concept="3cpWsn" id="2VIcG4ocf0n" role="3cpWs9">
                <property role="TrG5h" value="mpsProject" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="2VIcG4oc5BR" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                </node>
                <node concept="2YIFZM" id="2VIcG4ocf0o" role="33vP2m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProjectOrFail(com.intellij.openapi.project.Project)" resolve="fromIdeaProjectOrFail" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2OqwBi" id="2VIcG4ocf0p" role="37wK5m">
                    <node concept="37vLTw" id="2VIcG4ocf0q" role="2Oq$k0">
                      <ref role="3cqZAo" node="4qk_0lIxhnV" resolve="context" />
                    </node>
                    <node concept="liA8E" id="2VIcG4ocf0r" role="2OqNvi">
                      <ref role="37wK5l" to="o8e1:~MergeContext.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2VIcG4o5X$P" role="3cqZAp">
              <node concept="3cpWsn" id="2VIcG4o5X$Q" role="3cpWs9">
                <property role="TrG5h" value="ms" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="2VIcG4o5X$R" role="1tU5fm">
                  <ref role="3uigEE" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
                </node>
                <node concept="2YIFZM" id="2VIcG4o67jP" role="33vP2m">
                  <ref role="37wK5l" to="iho:2VIcG4o2hlS" resolve="discover" />
                  <ref role="1Pybhc" to="iho:2VIcG4o2hgX" resolve="ModelSack" />
                  <node concept="2OqwBi" id="2VIcG4o7c53" role="37wK5m">
                    <node concept="37vLTw" id="2VIcG4ocf0s" role="2Oq$k0">
                      <ref role="3cqZAo" node="2VIcG4ocf0n" resolve="mpsProject" />
                    </node>
                    <node concept="liA8E" id="2VIcG4o7f$u" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~ProjectBase.getPlatform()" resolve="getPlatform" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2VIcG4o6MCU" role="37wK5m">
                    <node concept="37vLTw" id="2VIcG4o6KEO" role="2Oq$k0">
                      <ref role="3cqZAo" node="4qk_0lIxhm5" resolve="file" />
                    </node>
                    <node concept="liA8E" id="2VIcG4o6Q3g" role="2OqNvi">
                      <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4qk_0lIxhmG" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIxhmH" role="3cpWs9">
                <property role="TrG5h" value="baseModel" />
                <node concept="H_c77" id="4qk_0lIxhmI" role="1tU5fm" />
                <node concept="3K4zz7" id="6RVoxb_4ITb" role="33vP2m">
                  <node concept="10Nm6u" id="6RVoxb_4KTO" role="3K4E3e" />
                  <node concept="2OqwBi" id="6RVoxb_4NrG" role="3K4GZi">
                    <node concept="liA8E" id="6RVoxb_4NrH" role="2OqNvi">
                      <ref role="37wK5l" to="iho:2VIcG4o3ZpT" resolve="load" />
                      <node concept="AH0OO" id="6RVoxb_4NrI" role="37wK5m">
                        <node concept="37vLTw" id="6RVoxb_4NrJ" role="AHHXb">
                          <ref role="3cqZAo" node="4qk_0lIxhlN" resolve="byteContents" />
                        </node>
                        <node concept="10M0yZ" id="6RVoxb_4NrK" role="AHEQo">
                          <ref role="1PxDUh" to="ur19:341WClvYLJt" resolve="MergeConstants" />
                          <ref role="3cqZAo" to="ur19:341WClvYLKO" resolve="ORIGINAL" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6RVoxb_4NrL" role="2Oq$k0">
                      <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="6RVoxb_4Wfi" role="3K4Cdx">
                    <node concept="3cmrfG" id="6RVoxb_4Ycq" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="6RVoxb_4QmN" role="3uHU7B">
                      <node concept="AH0OO" id="4qk_0lIxhmK" role="2Oq$k0">
                        <node concept="37vLTw" id="4qk_0lIxhmL" role="AHHXb">
                          <ref role="3cqZAo" node="4qk_0lIxhlN" resolve="byteContents" />
                        </node>
                        <node concept="10M0yZ" id="4qk_0lIxhmM" role="AHEQo">
                          <ref role="1PxDUh" to="ur19:341WClvYLJt" resolve="MergeConstants" />
                          <ref role="3cqZAo" to="ur19:341WClvYLKO" resolve="ORIGINAL" />
                        </node>
                      </node>
                      <node concept="1Rwk04" id="6RVoxb_4Snw" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4qk_0lIxhmO" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIxhmP" role="3cpWs9">
                <property role="TrG5h" value="mineModel" />
                <node concept="H_c77" id="4qk_0lIxhmV" role="1tU5fm" />
                <node concept="3K4zz7" id="2VIcG4o8JjP" role="33vP2m">
                  <node concept="10Nm6u" id="2VIcG4o8P90" role="3K4E3e" />
                  <node concept="2OqwBi" id="2VIcG4o8UoP" role="3K4GZi">
                    <node concept="37vLTw" id="2VIcG4o8SJ2" role="2Oq$k0">
                      <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                    </node>
                    <node concept="liA8E" id="2VIcG4o8Wj0" role="2OqNvi">
                      <ref role="37wK5l" to="iho:2VIcG4o3ZpT" resolve="load" />
                      <node concept="AH0OO" id="2VIcG4o8Y5a" role="37wK5m">
                        <node concept="37vLTw" id="2VIcG4o8Y5b" role="AHHXb">
                          <ref role="3cqZAo" node="4qk_0lIxhlN" resolve="byteContents" />
                        </node>
                        <node concept="10M0yZ" id="2VIcG4o8Y5c" role="AHEQo">
                          <ref role="1PxDUh" to="ur19:341WClvYLJt" resolve="MergeConstants" />
                          <ref role="3cqZAo" to="ur19:341WClvYLJE" resolve="CURRENT" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="2VIcG4o8CSQ" role="3K4Cdx">
                    <node concept="3cmrfG" id="2VIcG4o8M_F" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2VIcG4o8y11" role="3uHU7B">
                      <node concept="AH0OO" id="4qk_0lIxhmR" role="2Oq$k0">
                        <node concept="37vLTw" id="4qk_0lIxhmS" role="AHHXb">
                          <ref role="3cqZAo" node="4qk_0lIxhlN" resolve="byteContents" />
                        </node>
                        <node concept="10M0yZ" id="4qk_0lIxhmT" role="AHEQo">
                          <ref role="1PxDUh" to="ur19:341WClvYLJt" resolve="MergeConstants" />
                          <ref role="3cqZAo" to="ur19:341WClvYLJE" resolve="CURRENT" />
                        </node>
                      </node>
                      <node concept="1Rwk04" id="2VIcG4o8$lL" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4qk_0lIxhmW" role="3cqZAp">
              <node concept="3cpWsn" id="4qk_0lIxhmX" role="3cpWs9">
                <property role="TrG5h" value="newModel" />
                <node concept="H_c77" id="4qk_0lIxhn3" role="1tU5fm" />
                <node concept="3K4zz7" id="2VIcG4o9gfK" role="33vP2m">
                  <node concept="10Nm6u" id="2VIcG4o9ja4" role="3K4E3e" />
                  <node concept="2OqwBi" id="2VIcG4o9u4I" role="3K4GZi">
                    <node concept="37vLTw" id="2VIcG4o9rXl" role="2Oq$k0">
                      <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                    </node>
                    <node concept="liA8E" id="2VIcG4o9v_V" role="2OqNvi">
                      <ref role="37wK5l" to="iho:2VIcG4o3ZpT" resolve="load" />
                      <node concept="AH0OO" id="2VIcG4o9yTg" role="37wK5m">
                        <node concept="10M0yZ" id="2VIcG4o9yTh" role="AHEQo">
                          <ref role="1PxDUh" to="ur19:341WClvYLJt" resolve="MergeConstants" />
                          <ref role="3cqZAo" to="ur19:341WClvYLL9" resolve="LAST_REVISION" />
                        </node>
                        <node concept="37vLTw" id="2VIcG4o9yTi" role="AHHXb">
                          <ref role="3cqZAo" node="4qk_0lIxhlN" resolve="byteContents" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="2VIcG4o9cu3" role="3K4Cdx">
                    <node concept="3cmrfG" id="2VIcG4o9egO" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="2VIcG4o95cM" role="3uHU7B">
                      <node concept="AH0OO" id="4qk_0lIxhmZ" role="2Oq$k0">
                        <node concept="10M0yZ" id="4qk_0lIxhn0" role="AHEQo">
                          <ref role="1PxDUh" to="ur19:341WClvYLJt" resolve="MergeConstants" />
                          <ref role="3cqZAo" to="ur19:341WClvYLL9" resolve="LAST_REVISION" />
                        </node>
                        <node concept="37vLTw" id="4qk_0lIxhn1" role="AHHXb">
                          <ref role="3cqZAo" node="4qk_0lIxhlN" resolve="byteContents" />
                        </node>
                      </node>
                      <node concept="1Rwk04" id="2VIcG4o97$N" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="13t7RZlHJ5W" role="3cqZAp">
              <node concept="1PaTwC" id="13t7RZlHJ5X" role="1aUNEU">
                <node concept="3oM_SD" id="13t7RZlHJ5Y" role="1PaTwD">
                  <property role="3oM_SC" value="Allow" />
                </node>
                <node concept="3oM_SD" id="13t7RZlHKCM" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="13t7RZlHTbt" role="1PaTwD">
                  <property role="3oM_SC" value="resolve" />
                </node>
                <node concept="3oM_SD" id="13t7RZlHMnz" role="1PaTwD">
                  <property role="3oM_SC" value="conflict" />
                </node>
                <node concept="3oM_SD" id="13t7RZlHO48" role="1PaTwD">
                  <property role="3oM_SC" value="change/delete" />
                </node>
                <node concept="3oM_SD" id="13t7RZlHOUr" role="1PaTwD">
                  <property role="3oM_SC" value="root" />
                </node>
                <node concept="3oM_SD" id="13t7RZlHPl_" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="13t7RZlHR4n" role="1PaTwD">
                  <property role="3oM_SC" value="per-root" />
                </node>
                <node concept="3oM_SD" id="13t7RZlHRUE" role="1PaTwD">
                  <property role="3oM_SC" value="persistence" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="8ufb7zhfGS" role="3cqZAp">
              <node concept="3clFbS" id="8ufb7zhfGU" role="3clFbx">
                <node concept="3clFbJ" id="5P567OFmaXB" role="3cqZAp">
                  <node concept="3clFbS" id="5P567OFmaXC" role="3clFbx">
                    <node concept="3SKdUt" id="5P567OFlZ4A" role="3cqZAp">
                      <node concept="1PaTwC" id="5P567OFlZ4B" role="1aUNEU">
                        <node concept="3oM_SD" id="5P567OFlZ4C" role="1PaTwD">
                          <property role="3oM_SC" value="create" />
                        </node>
                        <node concept="3oM_SD" id="5P567OFm0tA" role="1PaTwD">
                          <property role="3oM_SC" value="an" />
                        </node>
                        <node concept="3oM_SD" id="5P567OFm0tC" role="1PaTwD">
                          <property role="3oM_SC" value="empty" />
                        </node>
                        <node concept="3oM_SD" id="5P567OFm57q" role="1PaTwD">
                          <property role="3oM_SC" value="base" />
                        </node>
                        <node concept="3oM_SD" id="5P567OFm63b" role="1PaTwD">
                          <property role="3oM_SC" value="model" />
                        </node>
                        <node concept="3oM_SD" id="5P567OFm7qH" role="1PaTwD">
                          <property role="3oM_SC" value="if" />
                        </node>
                        <node concept="3oM_SD" id="5P567OFm7Tj" role="1PaTwD">
                          <property role="3oM_SC" value="necessary" />
                        </node>
                        <node concept="3oM_SD" id="2ObFNnNjBu0" role="1PaTwD">
                          <property role="3oM_SC" value="(add/add" />
                        </node>
                        <node concept="3oM_SD" id="2ObFNnNjA0E" role="1PaTwD">
                          <property role="3oM_SC" value="conflict)" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5P567OFmaXD" role="3cqZAp">
                      <node concept="37vLTI" id="5P567OFmaXE" role="3clFbG">
                        <node concept="37vLTw" id="5P567OFmaXF" role="37vLTJ">
                          <ref role="3cqZAo" node="4qk_0lIxhmH" resolve="baseModel" />
                        </node>
                        <node concept="2ShNRf" id="5P567OFmaXG" role="37vLTx">
                          <node concept="1pGfFk" id="5P567OFmaXH" role="2ShVmc">
                            <ref role="37wK5l" to="bmv6:1m2uLwrS0vs" resolve="MergeTemporaryModel" />
                            <node concept="2OqwBi" id="5P567OFmaXI" role="37wK5m">
                              <node concept="2JrnkZ" id="5P567OFmaXJ" role="2Oq$k0">
                                <node concept="37vLTw" id="5P567OFmaXK" role="2JrQYb">
                                  <ref role="3cqZAo" node="4qk_0lIxhmP" resolve="mineModel" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5P567OFmaXL" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="5P567OFmaXM" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="5P567OFmaXN" role="3clFbw">
                    <node concept="10Nm6u" id="5P567OFmaXO" role="3uHU7w" />
                    <node concept="37vLTw" id="5P567OFmaXP" role="3uHU7B">
                      <ref role="3cqZAo" node="4qk_0lIxhmH" resolve="baseModel" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="13t7RZlMqql" role="3cqZAp">
                  <node concept="1PaTwC" id="13t7RZlMqqm" role="1aUNEU">
                    <node concept="3oM_SD" id="13t7RZlMqqn" role="1PaTwD">
                      <property role="3oM_SC" value="create" />
                    </node>
                    <node concept="3oM_SD" id="13t7RZlMrFy" role="1PaTwD">
                      <property role="3oM_SC" value="an" />
                    </node>
                    <node concept="3oM_SD" id="13t7RZlMrF$" role="1PaTwD">
                      <property role="3oM_SC" value="empty" />
                    </node>
                    <node concept="3oM_SD" id="13t7RZlMs$F" role="1PaTwD">
                      <property role="3oM_SC" value="model" />
                    </node>
                    <node concept="3oM_SD" id="13t7RZlMsZP" role="1PaTwD">
                      <property role="3oM_SC" value="if" />
                    </node>
                    <node concept="3oM_SD" id="13t7RZlMv7_" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="13t7RZlMvyJ" role="1PaTwD">
                      <property role="3oM_SC" value="root" />
                    </node>
                    <node concept="3oM_SD" id="13t7RZlMwrd" role="1PaTwD">
                      <property role="3oM_SC" value="was" />
                    </node>
                    <node concept="3oM_SD" id="13t7RZlMwPI" role="1PaTwD">
                      <property role="3oM_SC" value="deleted" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="8ufb7zhkbK" role="3cqZAp">
                  <node concept="3clFbS" id="8ufb7zhkbM" role="3clFbx">
                    <node concept="3clFbF" id="8ufb7zhua$" role="3cqZAp">
                      <node concept="37vLTI" id="8ufb7zhEo4" role="3clFbG">
                        <node concept="37vLTw" id="8ufb7zhuay" role="37vLTJ">
                          <ref role="3cqZAo" node="4qk_0lIxhmP" resolve="mineModel" />
                        </node>
                        <node concept="2ShNRf" id="59Mw_8gE0zu" role="37vLTx">
                          <node concept="1pGfFk" id="59Mw_8gE0zv" role="2ShVmc">
                            <ref role="37wK5l" to="bmv6:1m2uLwrS0vs" resolve="MergeTemporaryModel" />
                            <node concept="2OqwBi" id="13t7RZln8Sf" role="37wK5m">
                              <node concept="2JrnkZ" id="13t7RZlnau5" role="2Oq$k0">
                                <node concept="37vLTw" id="13t7RZln5UU" role="2JrQYb">
                                  <ref role="3cqZAo" node="4qk_0lIxhmH" resolve="baseModel" />
                                </node>
                              </node>
                              <node concept="liA8E" id="13t7RZlnbPh" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="59Mw_8gE0zz" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="8ufb7zhpkW" role="3clFbw">
                    <node concept="10Nm6u" id="8ufb7zhr8B" role="3uHU7w" />
                    <node concept="37vLTw" id="8ufb7zhmGm" role="3uHU7B">
                      <ref role="3cqZAo" node="4qk_0lIxhmP" resolve="mineModel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="8ufb7ziaR4" role="3cqZAp">
                  <node concept="3clFbS" id="8ufb7ziaR5" role="3clFbx">
                    <node concept="3clFbF" id="8ufb7ziaR6" role="3cqZAp">
                      <node concept="37vLTI" id="8ufb7ziaR7" role="3clFbG">
                        <node concept="37vLTw" id="8ufb7ziaR8" role="37vLTJ">
                          <ref role="3cqZAo" node="4qk_0lIxhmX" resolve="newModel" />
                        </node>
                        <node concept="2ShNRf" id="8ufb7ziaR9" role="37vLTx">
                          <node concept="1pGfFk" id="8ufb7ziaRa" role="2ShVmc">
                            <ref role="37wK5l" to="bmv6:1m2uLwrS0vs" resolve="MergeTemporaryModel" />
                            <node concept="2OqwBi" id="13t7RZlDbb2" role="37wK5m">
                              <node concept="2JrnkZ" id="13t7RZlDbb3" role="2Oq$k0">
                                <node concept="37vLTw" id="13t7RZlDbb4" role="2JrQYb">
                                  <ref role="3cqZAo" node="4qk_0lIxhmH" resolve="baseModel" />
                                </node>
                              </node>
                              <node concept="liA8E" id="13t7RZlDbb5" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="2zc0$cMNdC2" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="8ufb7ziaRg" role="3clFbw">
                    <node concept="10Nm6u" id="8ufb7ziaRh" role="3uHU7w" />
                    <node concept="37vLTw" id="8ufb7ziaRi" role="3uHU7B">
                      <ref role="3cqZAo" node="4qk_0lIxhmX" resolve="newModel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8ufb7zi9Ca" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="8ufb7zhhqU" role="3clFbw">
                <node concept="37vLTw" id="8ufb7zhhqV" role="2Oq$k0">
                  <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                </node>
                <node concept="liA8E" id="8ufb7zhhqW" role="2OqNvi">
                  <ref role="37wK5l" to="iho:2VIcG4o9EpD" resolve="isPerRootPersistenceRoot" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4qk_0lIxhn4" role="3cqZAp">
              <node concept="3clFbS" id="4qk_0lIxhn5" role="3clFbx">
                <node concept="3clFbJ" id="3NHMrAMxIdp" role="3cqZAp">
                  <node concept="3clFbS" id="3NHMrAMxIdr" role="3clFbx">
                    <node concept="3SKdUt" id="3NHMrAMxNw9" role="3cqZAp">
                      <node concept="1PaTwC" id="3NHMrAMxNwa" role="1aUNEU">
                        <node concept="3oM_SD" id="3NHMrAMxOvE" role="1PaTwD">
                          <property role="3oM_SC" value="fix" />
                        </node>
                        <node concept="3oM_SD" id="3NHMrAMxOvG" role="1PaTwD">
                          <property role="3oM_SC" value="imports" />
                        </node>
                        <node concept="3oM_SD" id="3NHMrAMxOvJ" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="166I1_8S3Ef" role="1PaTwD">
                          <property role="3oM_SC" value="languages" />
                        </node>
                        <node concept="3oM_SD" id="166I1_8S3Eo" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="3NHMrAMxOvN" role="1PaTwD">
                          <property role="3oM_SC" value="per-root" />
                        </node>
                        <node concept="3oM_SD" id="3NHMrAMxOvS" role="1PaTwD">
                          <property role="3oM_SC" value="persistence" />
                        </node>
                        <node concept="3oM_SD" id="3NHMrAMxOvY" role="1PaTwD">
                          <property role="3oM_SC" value="root" />
                        </node>
                        <node concept="3oM_SD" id="3NHMrAMxOw5" role="1PaTwD">
                          <property role="3oM_SC" value="file" />
                        </node>
                        <node concept="3oM_SD" id="166I1_8S3Xn" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="166I1_8S46B" role="1PaTwD">
                          <property role="3oM_SC" value="allow" />
                        </node>
                        <node concept="3oM_SD" id="166I1_8S4fS" role="1PaTwD">
                          <property role="3oM_SC" value="completion" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2VIcG4oaao3" role="3cqZAp">
                      <node concept="3cpWsn" id="2VIcG4oaao4" role="3cpWs9">
                        <property role="TrG5h" value="mi" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="2VIcG4oaao5" role="1tU5fm">
                          <ref role="3uigEE" to="w1kc:~ModelImports" resolve="ModelImports" />
                        </node>
                        <node concept="2ShNRf" id="2VIcG4oagfD" role="33vP2m">
                          <node concept="1pGfFk" id="2VIcG4ob2Ma" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                            <node concept="37vLTw" id="2VIcG4ob5U0" role="37wK5m">
                              <ref role="3cqZAo" node="4qk_0lIxhmH" resolve="baseModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2VIcG4obb1f" role="3cqZAp">
                      <node concept="1PaTwC" id="2VIcG4obb1g" role="1aUNEU">
                        <node concept="3oM_SD" id="2VIcG4obb1h" role="1PaTwD">
                          <property role="3oM_SC" value="FIXME" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obeW6" role="1PaTwD">
                          <property role="3oM_SC" value="there's" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obhay" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obhAO" role="1PaTwD">
                          <property role="3oM_SC" value="very" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obhAP" role="1PaTwD">
                          <property role="3oM_SC" value="odd" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obhAQ" role="1PaTwD">
                          <property role="3oM_SC" value="code," />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4objQp" role="1PaTwD">
                          <property role="3oM_SC" value="`model" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obivM" role="1PaTwD">
                          <property role="3oM_SC" value="repoModel" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obivN" role="1PaTwD">
                          <property role="3oM_SC" value="=" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obivO" role="1PaTwD">
                          <property role="3oM_SC" value="baseModel/.getReference().resolve(null);`!!!" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2VIcG4obpxu" role="3cqZAp">
                      <node concept="1PaTwC" id="2VIcG4obpxv" role="1aUNEU">
                        <node concept="3oM_SD" id="2VIcG4obpxw" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obrrM" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obrrO" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obrrP" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obrRK" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obrRL" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obxRa" role="1PaTwD">
                          <property role="3oM_SC" value="(a)" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obyJH" role="1PaTwD">
                          <property role="3oM_SC" value="it's" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obyJI" role="1PaTwD">
                          <property role="3oM_SC" value="wrong" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obzcm" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obzcn" role="1PaTwD">
                          <property role="3oM_SC" value="use" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obzco" role="1PaTwD">
                          <property role="3oM_SC" value="null" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obzcp" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obzDo" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ob$5E" role="1PaTwD">
                          <property role="3oM_SC" value="repo;" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ob$xW" role="1PaTwD">
                          <property role="3oM_SC" value="(b)" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ob_rT" role="1PaTwD">
                          <property role="3oM_SC" value="wrong" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obAks" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obAkt" role="1PaTwD">
                          <property role="3oM_SC" value="assume" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obAku" role="1PaTwD">
                          <property role="3oM_SC" value="actual" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obAKK" role="1PaTwD">
                          <property role="3oM_SC" value="model" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obBes" role="1PaTwD">
                          <property role="3oM_SC" value="is" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obBEI" role="1PaTwD">
                          <property role="3oM_SC" value="there" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obC70" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obC71" role="1PaTwD">
                          <property role="3oM_SC" value="got" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obCZ$" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obCZ_" role="1PaTwD">
                          <property role="3oM_SC" value="same" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4obDsd" role="1PaTwD">
                          <property role="3oM_SC" value="identity" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2VIcG4oc4gF" role="3cqZAp">
                      <node concept="1PaTwC" id="2VIcG4oc4gG" role="1aUNEU">
                        <node concept="3oM_SD" id="2VIcG4oc4gH" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oc76y" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oc76$" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oc76_" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oc76A" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oc7yq" role="1PaTwD">
                          <property role="3oM_SC" value="However," />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oc9iy" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oc9iz" role="1PaTwD">
                          <property role="3oM_SC" value="it's" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oc9i$" role="1PaTwD">
                          <property role="3oM_SC" value="relatively" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocaa7" role="1PaTwD">
                          <property role="3oM_SC" value="fresh" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocaAf" role="1PaTwD">
                          <property role="3oM_SC" value="fix" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocbux" role="1PaTwD">
                          <property role="3oM_SC" value="which" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocbuy" role="1PaTwD">
                          <property role="3oM_SC" value="seems" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocbuz" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocbu$" role="1PaTwD">
                          <property role="3oM_SC" value="address" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocbVK" role="1PaTwD">
                          <property role="3oM_SC" value="in-IDE" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocdf4" role="1PaTwD">
                          <property role="3oM_SC" value="merge" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocdf5" role="1PaTwD">
                          <property role="3oM_SC" value="with" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocdGh" role="1PaTwD">
                          <property role="3oM_SC" value="actual" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocdGi" role="1PaTwD">
                          <property role="3oM_SC" value="model" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocdGj" role="1PaTwD">
                          <property role="3oM_SC" value="present," />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4oce85" role="1PaTwD">
                          <property role="3oM_SC" value="keep" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocezR" role="1PaTwD">
                          <property role="3oM_SC" value="it," />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocucW" role="1PaTwD">
                          <property role="3oM_SC" value="with" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocucX" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocucY" role="1PaTwD">
                          <property role="3oM_SC" value="only" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocucZ" role="1PaTwD">
                          <property role="3oM_SC" value="fix" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocuEF" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocuEG" role="1PaTwD">
                          <property role="3oM_SC" value="context" />
                        </node>
                        <node concept="3oM_SD" id="2VIcG4ocuEH" role="1PaTwD">
                          <property role="3oM_SC" value="repo" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="SMdHsjZziU" role="3cqZAp">
                      <node concept="3cpWsn" id="SMdHsjZziV" role="3cpWs9">
                        <property role="TrG5h" value="repo" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="SMdHsjZp9W" role="1tU5fm">
                          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                        </node>
                        <node concept="2OqwBi" id="SMdHsjZziW" role="33vP2m">
                          <node concept="37vLTw" id="SMdHsjZziX" role="2Oq$k0">
                            <ref role="3cqZAo" node="2VIcG4ocf0n" resolve="mpsProject" />
                          </node>
                          <node concept="liA8E" id="SMdHsjZziY" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="SMdHsjZZeI" role="3cqZAp">
                      <node concept="2OqwBi" id="SMdHsk0b6y" role="3clFbG">
                        <node concept="2OqwBi" id="SMdHsk05KJ" role="2Oq$k0">
                          <node concept="37vLTw" id="SMdHsjZZeG" role="2Oq$k0">
                            <ref role="3cqZAo" node="SMdHsjZziV" resolve="repo" />
                          </node>
                          <node concept="liA8E" id="SMdHsk08GZ" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                          </node>
                        </node>
                        <node concept="liA8E" id="SMdHsk0cs4" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                          <node concept="1bVj0M" id="SMdHsk0dV1" role="37wK5m">
                            <node concept="3clFbS" id="SMdHsk0dV4" role="1bW5cS">
                              <node concept="3cpWs8" id="3NHMrAMyqaI" role="3cqZAp">
                                <node concept="3cpWsn" id="3NHMrAMyqaL" role="3cpWs9">
                                  <property role="TrG5h" value="repoModel" />
                                  <node concept="H_c77" id="3NHMrAMyqaG" role="1tU5fm" />
                                  <node concept="2OqwBi" id="3NHMrAMyGhz" role="33vP2m">
                                    <node concept="2OqwBi" id="3NHMrAMyDQx" role="2Oq$k0">
                                      <node concept="liA8E" id="3NHMrAMyF89" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                      </node>
                                      <node concept="2JrnkZ" id="3NHMrAMyDQA" role="2Oq$k0">
                                        <node concept="37vLTw" id="3NHMrAMyxV8" role="2JrQYb">
                                          <ref role="3cqZAo" node="4qk_0lIxhmH" resolve="baseModel" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3NHMrAMyI5f" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                      <node concept="37vLTw" id="SMdHsjZziZ" role="37wK5m">
                                        <ref role="3cqZAo" node="SMdHsjZziV" resolve="repo" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2VIcG4odtjq" role="3cqZAp">
                                <node concept="2OqwBi" id="2VIcG4oduNd" role="3clFbG">
                                  <node concept="37vLTw" id="2VIcG4odtjo" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2VIcG4oaao4" resolve="mi" />
                                  </node>
                                  <node concept="liA8E" id="2VIcG4odyzO" role="2OqNvi">
                                    <ref role="37wK5l" to="w1kc:~ModelImports.copyImportedModelsFrom(org.jetbrains.mps.openapi.model.SModel)" resolve="copyImportedModelsFrom" />
                                    <node concept="37vLTw" id="2VIcG4odAtE" role="37wK5m">
                                      <ref role="3cqZAo" node="3NHMrAMyqaL" resolve="repoModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2VIcG4odFWT" role="3cqZAp">
                                <node concept="2OqwBi" id="2VIcG4odHt2" role="3clFbG">
                                  <node concept="37vLTw" id="2VIcG4odFWR" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2VIcG4oaao4" resolve="mi" />
                                  </node>
                                  <node concept="liA8E" id="2VIcG4odL23" role="2OqNvi">
                                    <ref role="37wK5l" to="w1kc:~ModelImports.copyUsedLanguagesFrom(org.jetbrains.mps.openapi.model.SModel)" resolve="copyUsedLanguagesFrom" />
                                    <node concept="37vLTw" id="2VIcG4odP1V" role="37wK5m">
                                      <ref role="3cqZAo" node="3NHMrAMyqaL" resolve="repoModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2VIcG4oe38u" role="3cqZAp">
                                <node concept="2OqwBi" id="2VIcG4oe4oy" role="3clFbG">
                                  <node concept="37vLTw" id="2VIcG4oe38s" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2VIcG4oaao4" resolve="mi" />
                                  </node>
                                  <node concept="liA8E" id="2VIcG4oe7eU" role="2OqNvi">
                                    <ref role="37wK5l" to="w1kc:~ModelImports.copyEmployedDevKitsFrom(org.jetbrains.mps.openapi.model.SModel)" resolve="copyEmployedDevKitsFrom" />
                                    <node concept="37vLTw" id="2VIcG4oea99" role="37wK5m">
                                      <ref role="3cqZAo" node="3NHMrAMyqaL" resolve="repoModel" />
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
                  <node concept="2OqwBi" id="2VIcG4o9UKp" role="3clFbw">
                    <node concept="37vLTw" id="2VIcG4o9QKq" role="2Oq$k0">
                      <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                    </node>
                    <node concept="liA8E" id="2VIcG4o9Xrr" role="2OqNvi">
                      <ref role="37wK5l" to="iho:2VIcG4o9EpD" resolve="isPerRootPersistenceRoot" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4qk_0lIxhn6" role="3cqZAp">
                  <node concept="3cpWsn" id="4qk_0lIxhn7" role="3cpWs9">
                    <property role="TrG5h" value="viewer" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="4qk_0lIxhn8" role="1tU5fm">
                      <ref role="3uigEE" node="4qk_0lIkYNV" resolve="ModelMergeViewer" />
                    </node>
                    <node concept="2ShNRf" id="4qk_0lIxhn9" role="33vP2m">
                      <node concept="1pGfFk" id="4qk_0lIxhna" role="2ShVmc">
                        <ref role="37wK5l" node="4qk_0lIrpmE" resolve="ModelMergeViewer" />
                        <node concept="37vLTw" id="4qk_0lIxhnb" role="37wK5m">
                          <ref role="3cqZAo" node="4qk_0lIxhnV" resolve="context" />
                        </node>
                        <node concept="37vLTw" id="4qk_0lIxhnc" role="37wK5m">
                          <ref role="3cqZAo" node="4qk_0lIxhlA" resolve="textRequest" />
                        </node>
                        <node concept="37vLTw" id="4qk_0lIxhnd" role="37wK5m">
                          <ref role="3cqZAo" node="4qk_0lIxhmH" resolve="baseModel" />
                        </node>
                        <node concept="37vLTw" id="4qk_0lIxhne" role="37wK5m">
                          <ref role="3cqZAo" node="4qk_0lIxhmP" resolve="mineModel" />
                        </node>
                        <node concept="37vLTw" id="4qk_0lIxhnf" role="37wK5m">
                          <ref role="3cqZAo" node="4qk_0lIxhmX" resolve="newModel" />
                        </node>
                        <node concept="2OqwBi" id="39EUdpT0xjq" role="37wK5m">
                          <node concept="37vLTw" id="39EUdpT0uIc" role="2Oq$k0">
                            <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                          </node>
                          <node concept="liA8E" id="39EUdpT0z2E" role="2OqNvi">
                            <ref role="37wK5l" to="iho:2VIcG4o9EpD" resolve="isPerRootPersistenceRoot" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2VIcG4oegw9" role="37wK5m">
                          <node concept="37vLTw" id="5u75OIaAOdn" role="2Oq$k0">
                            <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                          </node>
                          <node concept="liA8E" id="2VIcG4oejgK" role="2OqNvi">
                            <ref role="37wK5l" to="iho:2VIcG4o2LGl" resolve="isPerRootPersistence" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4qk_0lIylGZ" role="3cqZAp" />
                <node concept="3cpWs8" id="4qk_0lIyubL" role="3cqZAp">
                  <node concept="3cpWsn" id="4qk_0lIyubO" role="3cpWs9">
                    <property role="TrG5h" value="saver" />
                    <node concept="3uibUv" id="4qk_0lIyubP" role="1tU5fm">
                      <ref role="3uigEE" to="wenr:5$xqaErb5$G" resolve="ISaveMergedModel" />
                    </node>
                    <node concept="2ShNRf" id="4qk_0lIyubQ" role="33vP2m">
                      <node concept="YeOm9" id="4qk_0lIyubR" role="2ShVmc">
                        <node concept="1Y3b0j" id="4qk_0lIyubS" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="wenr:5$xqaErb5$G" resolve="ISaveMergedModel" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3Tm1VV" id="4qk_0lIyubT" role="1B3o_S" />
                          <node concept="3clFb_" id="4qk_0lIyubU" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="2aFKle" value="false" />
                            <property role="TrG5h" value="save" />
                            <node concept="3Tm1VV" id="4qk_0lIyubV" role="1B3o_S" />
                            <node concept="10P_77" id="4qk_0lIyubW" role="3clF45" />
                            <node concept="37vLTG" id="4qk_0lIyubX" role="3clF46">
                              <property role="TrG5h" value="parent" />
                              <node concept="3uibUv" id="4qk_0lIyubY" role="1tU5fm">
                                <ref role="3uigEE" to="wenr:2jv$fqwD$ox" resolve="MergeModelsPanel" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="4qk_0lIyubZ" role="3clF46">
                              <property role="TrG5h" value="resultModel" />
                              <property role="3TUv4t" value="true" />
                              <node concept="H_c77" id="4qk_0lIyuc0" role="1tU5fm" />
                            </node>
                            <node concept="3clFbS" id="4qk_0lIyuc1" role="3clF47">
                              <node concept="3clFbF" id="77hmqNcoiAA" role="3cqZAp">
                                <node concept="2OqwBi" id="77hmqNcoiAC" role="3clFbG">
                                  <node concept="2YIFZM" id="77hmqNcoiAD" role="2Oq$k0">
                                    <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                    <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                  </node>
                                  <node concept="liA8E" id="77hmqNcoiAE" role="2OqNvi">
                                    <ref role="37wK5l" to="bd8o:~Application.assertIsDispatchThread()" resolve="assertIsDispatchThread" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="77hmqNcojC4" role="3cqZAp" />
                              <node concept="3cpWs8" id="4qk_0lIyuc2" role="3cqZAp">
                                <node concept="3cpWsn" id="4qk_0lIyuc3" role="3cpWs9">
                                  <property role="TrG5h" value="closeDialog" />
                                  <node concept="10P_77" id="4qk_0lIyuc4" role="1tU5fm" />
                                  <node concept="3clFbT" id="4qk_0lIyuc5" role="33vP2m">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="4qk_0lIyuca" role="3cqZAp" />
                              <node concept="3J1_TO" id="4qk_0lIyuch" role="3cqZAp">
                                <node concept="3clFbS" id="4qk_0lIyuci" role="1zxBo7">
                                  <node concept="3cpWs8" id="4qk_0lIyuc6" role="3cqZAp">
                                    <node concept="3cpWsn" id="4qk_0lIyuc7" role="3cpWs9">
                                      <property role="TrG5h" value="resultContent" />
                                      <node concept="10Q1$e" id="3oQv0AQ7o7Q" role="1tU5fm">
                                        <node concept="10PrrI" id="3oQv0AQ7n1I" role="10Q1$1" />
                                      </node>
                                      <node concept="2OqwBi" id="2VIcG4ofqrb" role="33vP2m">
                                        <node concept="37vLTw" id="2VIcG4ofni8" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                                        </node>
                                        <node concept="liA8E" id="2VIcG4ofsXe" role="2OqNvi">
                                          <ref role="37wK5l" to="iho:2VIcG4oers7" resolve="save" />
                                          <node concept="37vLTw" id="2VIcG4ofELh" role="37wK5m">
                                            <ref role="3cqZAo" node="4qk_0lIyubZ" resolve="resultModel" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="3j7bj9veGGC" role="3cqZAp">
                                    <node concept="2OqwBi" id="3j7bj9veATF" role="3clFbG">
                                      <node concept="liA8E" id="3j7bj9veATH" role="2OqNvi">
                                        <ref role="37wK5l" to="bd8o:~Application.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
                                        <node concept="1bVj0M" id="3j7bj9veATI" role="37wK5m">
                                          <node concept="3clFbS" id="3j7bj9veATJ" role="1bW5cS">
                                            <node concept="3J1_TO" id="3j7bj9veATK" role="3cqZAp">
                                              <node concept="3clFbS" id="3j7bj9veATW" role="1zxBo7">
                                                <node concept="3clFbJ" id="2ul0vtc5iW7" role="3cqZAp">
                                                  <node concept="3clFbS" id="2ul0vtc5iW9" role="3clFbx">
                                                    <node concept="3clFbF" id="3j7bj9veATX" role="3cqZAp">
                                                      <node concept="2OqwBi" id="3j7bj9veATY" role="3clFbG">
                                                        <node concept="liA8E" id="3j7bj9veATZ" role="2OqNvi">
                                                          <ref role="37wK5l" to="jlff:~VirtualFile.setBinaryContent(byte[])" resolve="setBinaryContent" />
                                                          <node concept="37vLTw" id="3j7bj9veCr_" role="37wK5m">
                                                            <ref role="3cqZAo" node="4qk_0lIyuc7" resolve="resultContent" />
                                                          </node>
                                                        </node>
                                                        <node concept="37vLTw" id="3j7bj9veBOU" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="4qk_0lIxhm5" resolve="file" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3y3z36" id="2ul0vtc5qhN" role="3clFbw">
                                                    <node concept="10Nm6u" id="2ul0vtc5sHU" role="3uHU7w" />
                                                    <node concept="37vLTw" id="2ul0vtc5ns4" role="3uHU7B">
                                                      <ref role="3cqZAo" node="4qk_0lIyuc7" resolve="resultContent" />
                                                    </node>
                                                  </node>
                                                  <node concept="3eNFk2" id="2ul0vtc5$6C" role="3eNLev">
                                                    <node concept="2OqwBi" id="2ul0vtc5DZj" role="3eO9$A">
                                                      <node concept="37vLTw" id="2ul0vtc5B6f" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="2VIcG4o5X$Q" resolve="ms" />
                                                      </node>
                                                      <node concept="liA8E" id="2ul0vtc5FuY" role="2OqNvi">
                                                        <ref role="37wK5l" to="iho:2VIcG4o9EpD" resolve="isPerRootPersistenceRoot" />
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbS" id="2ul0vtc5$6E" role="3eOfB_">
                                                      <node concept="3clFbF" id="2ul0vtc5Id_" role="3cqZAp">
                                                        <node concept="2OqwBi" id="2ul0vtc5LnW" role="3clFbG">
                                                          <node concept="37vLTw" id="2ul0vtc5Id$" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="4qk_0lIxhm5" resolve="file" />
                                                          </node>
                                                          <node concept="liA8E" id="2ul0vtc5OMn" role="2OqNvi">
                                                            <ref role="37wK5l" to="jlff:~VirtualFile.delete(java.lang.Object)" resolve="delete" />
                                                            <node concept="10Nm6u" id="2ul0vtc5RrA" role="37wK5m" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="9aQIb" id="4Un8HDQCJcS" role="9aQIa">
                                                    <node concept="3clFbS" id="4Un8HDQCJcT" role="9aQI4">
                                                      <node concept="RRSsy" id="4Un8HDQCNz8" role="3cqZAp">
                                                        <property role="RRSoG" value="gZ5fh_4/error" />
                                                        <node concept="3cpWs3" id="4Un8HDQCZO1" role="RRSoy">
                                                          <node concept="2OqwBi" id="4Un8HDQD59R" role="3uHU7w">
                                                            <node concept="37vLTw" id="4Un8HDQD2QC" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="4qk_0lIxhm5" resolve="file" />
                                                            </node>
                                                            <node concept="liA8E" id="4Un8HDQD8q1" role="2OqNvi">
                                                              <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                                                            </node>
                                                          </node>
                                                          <node concept="Xl_RD" id="4Un8HDQCNza" role="3uHU7B">
                                                            <property role="Xl_RC" value="Null after saving to " />
                                                          </node>
                                                        </node>
                                                        <node concept="2ShNRf" id="4Un8HDQDdZk" role="RRSow">
                                                          <node concept="1pGfFk" id="4Un8HDQDr7I" role="2ShVmc">
                                                            <property role="373rjd" value="true" />
                                                            <ref role="37wK5l" to="wyt6:~Throwable.&lt;init&gt;()" resolve="Throwable" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3uVAMA" id="3j7bj9veATL" role="1zxBo5">
                                                <node concept="XOnhg" id="3j7bj9veATU" role="1zc67B">
                                                  <property role="3TUv4t" value="false" />
                                                  <property role="TrG5h" value="e" />
                                                  <node concept="nSUau" id="xvs04dIfLi" role="1tU5fm">
                                                    <node concept="3uibUv" id="3j7bj9veATV" role="nSUat">
                                                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbS" id="3j7bj9veATM" role="1zc67A">
                                                  <node concept="RRSsy" id="3jYQuSB37gt" role="3cqZAp">
                                                    <property role="RRSoG" value="gZ5fh_4/error" />
                                                    <node concept="3cpWs3" id="3j7bj9veATP" role="RRSoy">
                                                      <node concept="2OqwBi" id="3j7bj9veATQ" role="3uHU7w">
                                                        <node concept="37vLTw" id="3j7bj9veD1G" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="4qk_0lIxhm5" resolve="file" />
                                                        </node>
                                                        <node concept="liA8E" id="3j7bj9veATS" role="2OqNvi">
                                                          <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
                                                        </node>
                                                      </node>
                                                      <node concept="Xl_RD" id="3j7bj9veATT" role="3uHU7B">
                                                        <property role="Xl_RC" value="Cannot save merge result into " />
                                                      </node>
                                                    </node>
                                                    <node concept="37vLTw" id="3j7bj9veATO" role="RRSow">
                                                      <ref role="3cqZAo" node="3j7bj9veATU" resolve="e" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2YIFZM" id="6pjhMZUQsw$" role="2Oq$k0">
                                        <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                        <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4qk_0lIyuea" role="3cqZAp">
                                    <node concept="2YIFZM" id="4qk_0lIyueb" role="3clFbG">
                                      <ref role="1Pybhc" to="4rb9:60S3DtlQamH" resolve="MergeBackupUtil" />
                                      <ref role="37wK5l" to="4rb9:341WClvYwjD" resolve="packMergeResult" />
                                      <node concept="37vLTw" id="4qk_0lIyuec" role="37wK5m">
                                        <ref role="3cqZAo" node="4qk_0lIxhmh" resolve="backupFile" />
                                      </node>
                                      <node concept="2OqwBi" id="4qk_0lIyued" role="37wK5m">
                                        <node concept="liA8E" id="4qk_0lIyuee" role="2OqNvi">
                                          <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
                                        </node>
                                        <node concept="37vLTw" id="4qk_0lIyuef" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4qk_0lIxhm5" resolve="file" />
                                        </node>
                                      </node>
                                      <node concept="3K4zz7" id="2ul0vtc6JCF" role="37wK5m">
                                        <node concept="37vLTw" id="2ul0vtc6Njr" role="3K4E3e">
                                          <ref role="3cqZAo" node="4qk_0lIyuc7" resolve="resultContent" />
                                        </node>
                                        <node concept="2ShNRf" id="2ul0vtc6Rsw" role="3K4GZi">
                                          <node concept="3$_iS1" id="2ul0vtc7bZs" role="2ShVmc">
                                            <node concept="3$GHV9" id="2ul0vtc7bZu" role="3$GQph">
                                              <node concept="3cmrfG" id="2ul0vtc7f5l" role="3$I4v7">
                                                <property role="3cmrfH" value="0" />
                                              </node>
                                            </node>
                                            <node concept="10PrrI" id="2ul0vtc7bzf" role="3$_nBY" />
                                          </node>
                                        </node>
                                        <node concept="3y3z36" id="2ul0vtc6uA6" role="3K4Cdx">
                                          <node concept="10Nm6u" id="2ul0vtc6x4w" role="3uHU7w" />
                                          <node concept="37vLTw" id="4qk_0lIyueg" role="3uHU7B">
                                            <ref role="3cqZAo" node="4qk_0lIyuc7" resolve="resultContent" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uVAMA" id="4qk_0lIyucq" role="1zxBo5">
                                  <node concept="XOnhg" id="4qk_0lIyue1" role="1zc67B">
                                    <property role="3TUv4t" value="false" />
                                    <property role="TrG5h" value="error" />
                                    <node concept="nSUau" id="xvs04dIfLo" role="1tU5fm">
                                      <node concept="3uibUv" id="4qk_0lIyue2" role="nSUat">
                                        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="4qk_0lIyucr" role="1zc67A">
                                    <node concept="RRSsy" id="3jYQuSB37gd" role="3cqZAp">
                                      <property role="RRSoG" value="gZ5fh_4/error" />
                                      <node concept="3cpWs3" id="4qk_0lIyudV" role="RRSoy">
                                        <node concept="2OqwBi" id="4qk_0lIyudW" role="3uHU7w">
                                          <node concept="37vLTw" id="4qk_0lIyudX" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4qk_0lIyubZ" resolve="resultModel" />
                                          </node>
                                          <node concept="LkI2h" id="4qk_0lIyudY" role="2OqNvi" />
                                        </node>
                                        <node concept="Xl_RD" id="4qk_0lIyudZ" role="3uHU7B">
                                          <property role="Xl_RC" value="Cannot save merge resulting model " />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="4qk_0lIyue0" role="RRSow">
                                        <ref role="3cqZAo" node="4qk_0lIyue1" resolve="error" />
                                      </node>
                                    </node>
                                    <node concept="3SKdUt" id="4qk_0lIyucs" role="3cqZAp">
                                      <node concept="1PaTwC" id="ATZLwXomrY" role="1aUNEU">
                                        <node concept="3oM_SD" id="ATZLwXomrZ" role="1PaTwD">
                                          <property role="3oM_SC" value="if" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQQrp" role="1PaTwD">
                                          <property role="3oM_SC" value="this" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQRBh" role="1PaTwD">
                                          <property role="3oM_SC" value="happens" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQSsp" role="1PaTwD">
                                          <property role="3oM_SC" value="saving" />
                                        </node>
                                        <node concept="3oM_SD" id="ATZLwXoms4" role="1PaTwD">
                                          <property role="3oM_SC" value="in" />
                                        </node>
                                        <node concept="3oM_SD" id="ATZLwXoms5" role="1PaTwD">
                                          <property role="3oM_SC" value="9" />
                                        </node>
                                        <node concept="3oM_SD" id="ATZLwXoms6" role="1PaTwD">
                                          <property role="3oM_SC" value="persistence" />
                                        </node>
                                        <node concept="3oM_SD" id="ATZLwXoms7" role="1PaTwD">
                                          <property role="3oM_SC" value="after" />
                                        </node>
                                        <node concept="3oM_SD" id="ATZLwXoms8" role="1PaTwD">
                                          <property role="3oM_SC" value="merge" />
                                        </node>
                                        <node concept="3oM_SD" id="ATZLwXoms9" role="1PaTwD">
                                          <property role="3oM_SC" value="with" />
                                        </node>
                                        <node concept="3oM_SD" id="ATZLwXomsa" role="1PaTwD">
                                          <property role="3oM_SC" value="older" />
                                        </node>
                                        <node concept="3oM_SD" id="ATZLwXomsb" role="1PaTwD">
                                          <property role="3oM_SC" value="persistence," />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQTgC" role="1PaTwD">
                                          <property role="3oM_SC" value="we" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQTgD" role="1PaTwD">
                                          <property role="3oM_SC" value="can" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQTgE" role="1PaTwD">
                                          <property role="3oM_SC" value="try" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQTgF" role="1PaTwD">
                                          <property role="3oM_SC" value="to" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQUS0" role="1PaTwD">
                                          <property role="3oM_SC" value="save" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQVij" role="1PaTwD">
                                          <property role="3oM_SC" value="using" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQVGa" role="1PaTwD">
                                          <property role="3oM_SC" value="earlier" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytQVGb" role="1PaTwD">
                                          <property role="3oM_SC" value="version," />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3SKdUt" id="2VIcG4og0FA" role="3cqZAp">
                                      <node concept="1PaTwC" id="2VIcG4og0FB" role="1aUNEU">
                                        <node concept="3oM_SD" id="7o$QXytQZId" role="1PaTwD">
                                          <property role="3oM_SC" value="however," />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR06H" role="1PaTwD">
                                          <property role="3oM_SC" value="(a)" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og418" role="1PaTwD">
                                          <property role="3oM_SC" value="our" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og5h8" role="1PaTwD">
                                          <property role="3oM_SC" value="standard" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og5h9" role="1PaTwD">
                                          <property role="3oM_SC" value="MF" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og5ha" role="1PaTwD">
                                          <property role="3oM_SC" value="implementation" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og5FS" role="1PaTwD">
                                          <property role="3oM_SC" value="forcefully" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og8zm" role="1PaTwD">
                                          <property role="3oM_SC" value="upgrades" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og6wC" role="1PaTwD">
                                          <property role="3oM_SC" value="persistence" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og6Vo" role="1PaTwD">
                                          <property role="3oM_SC" value="version" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og8WC" role="1PaTwD">
                                          <property role="3oM_SC" value="on" />
                                        </node>
                                        <node concept="3oM_SD" id="2VIcG4og9l5" role="1PaTwD">
                                          <property role="3oM_SC" value="save" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR0U9" role="1PaTwD">
                                          <property role="3oM_SC" value="(which" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR1jJ" role="1PaTwD">
                                          <property role="3oM_SC" value="could" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR1Gc" role="1PaTwD">
                                          <property role="3oM_SC" value="get" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR2vn" role="1PaTwD">
                                          <property role="3oM_SC" value="addressed" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR3iy" role="1PaTwD">
                                          <property role="3oM_SC" value="with" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR3iz" role="1PaTwD">
                                          <property role="3oM_SC" value="another" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR3i$" role="1PaTwD">
                                          <property role="3oM_SC" value="way" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR3i_" role="1PaTwD">
                                          <property role="3oM_SC" value="to" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR3iA" role="1PaTwD">
                                          <property role="3oM_SC" value="specify" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR462" role="1PaTwD">
                                          <property role="3oM_SC" value="version" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytR4Td" role="1PaTwD">
                                          <property role="3oM_SC" value="or" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3SKdUt" id="7o$QXytRglW" role="3cqZAp">
                                      <node concept="1PaTwC" id="7o$QXytRglX" role="1aUNEU">
                                        <node concept="3oM_SD" id="7o$QXytRglY" role="1PaTwD">
                                          <property role="3oM_SC" value="a" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRhBg" role="1PaTwD">
                                          <property role="3oM_SC" value="save" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRiq0" role="1PaTwD">
                                          <property role="3oM_SC" value="flag" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRjcJ" role="1PaTwD">
                                          <property role="3oM_SC" value="to" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRjcK" role="1PaTwD">
                                          <property role="3oM_SC" value="indicate" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRjXD" role="1PaTwD">
                                          <property role="3oM_SC" value="'no" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRkKO" role="1PaTwD">
                                          <property role="3oM_SC" value="upgrade'" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRnaH" role="1PaTwD">
                                          <property role="3oM_SC" value="(worth" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRnaI" role="1PaTwD">
                                          <property role="3oM_SC" value="adding" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRn$_" role="1PaTwD">
                                          <property role="3oM_SC" value="anyway);" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRpAG" role="1PaTwD">
                                          <property role="3oM_SC" value="(b)" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRq0i" role="1PaTwD">
                                          <property role="3oM_SC" value="lack" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRqMk" role="1PaTwD">
                                          <property role="3oM_SC" value="of" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRqMl" role="1PaTwD">
                                          <property role="3oM_SC" value="write" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRqMm" role="1PaTwD">
                                          <property role="3oM_SC" value="support" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRrbW" role="1PaTwD">
                                          <property role="3oM_SC" value="for" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRrbX" role="1PaTwD">
                                          <property role="3oM_SC" value="earlier" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRr_7" role="1PaTwD">
                                          <property role="3oM_SC" value="versions" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRtfL" role="1PaTwD">
                                          <property role="3oM_SC" value="(we" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRtCV" role="1PaTwD">
                                          <property role="3oM_SC" value="dropped" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRu3v" role="1PaTwD">
                                          <property role="3oM_SC" value="all" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRuQN" role="1PaTwD">
                                          <property role="3oM_SC" value="respective" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRwOI" role="1PaTwD">
                                          <property role="3oM_SC" value="IModelWriter" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytRxek" role="1PaTwD">
                                          <property role="3oM_SC" value="implementations." />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs8" id="7o$QXytShY2" role="3cqZAp">
                                      <node concept="3cpWsn" id="7o$QXytShY5" role="3cpWs9">
                                        <property role="TrG5h" value="message" />
                                        <node concept="17QB3L" id="7o$QXytShY0" role="1tU5fm" />
                                        <node concept="2OqwBi" id="7o$QXytUwQF" role="33vP2m">
                                          <node concept="Xl_RD" id="7o$QXytSz$C" role="2Oq$k0">
                                            <property role="Xl_RC" value="Failed to save model due to %s. You can return to the merge editor and try to fix model" />
                                          </node>
                                          <node concept="2cAKMz" id="7o$QXytUyEJ" role="2OqNvi">
                                            <node concept="2OqwBi" id="7o$QXytUBF4" role="2cAKU6">
                                              <node concept="37vLTw" id="7o$QXytU$Yx" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4qk_0lIyue1" resolve="error" />
                                              </node>
                                              <node concept="liA8E" id="7o$QXytUD$1" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs8" id="4qk_0lIyucE" role="3cqZAp">
                                      <node concept="3cpWsn" id="4qk_0lIyucF" role="3cpWs9">
                                        <property role="TrG5h" value="result" />
                                        <node concept="10Oyi0" id="4qk_0lIyucG" role="1tU5fm" />
                                        <node concept="2YIFZM" id="7o$QXytTJPv" role="33vP2m">
                                          <ref role="37wK5l" to="jkm4:~Messages.showOkCancelDialog(java.awt.Component,java.lang.String,java.lang.String,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showOkCancelDialog" />
                                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                          <node concept="2OqwBi" id="7o$QXytTJPw" role="37wK5m">
                                            <node concept="37vLTw" id="7o$QXytTJPx" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4qk_0lIxhn7" resolve="viewer" />
                                            </node>
                                            <node concept="liA8E" id="7o$QXytTJPy" role="2OqNvi">
                                              <ref role="37wK5l" node="4qk_0lIli94" resolve="getComponent" />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="7o$QXytTJPz" role="37wK5m">
                                            <ref role="3cqZAo" node="7o$QXytShY5" resolve="message" />
                                          </node>
                                          <node concept="3cpWs3" id="7o$QXytTJP$" role="37wK5m">
                                            <node concept="2OqwBi" id="7o$QXytTJP_" role="3uHU7w">
                                              <node concept="37vLTw" id="7o$QXytTJPA" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4qk_0lIyubZ" resolve="resultModel" />
                                              </node>
                                              <node concept="LkI2h" id="7o$QXytTJPB" role="2OqNvi" />
                                            </node>
                                            <node concept="Xl_RD" id="7o$QXytTJPC" role="3uHU7B">
                                              <property role="Xl_RC" value="Merging " />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="7o$QXytTJPD" role="37wK5m">
                                            <property role="Xl_RC" value="Abandon changes" />
                                          </node>
                                          <node concept="Xl_RD" id="7o$QXytTJPE" role="37wK5m">
                                            <property role="Xl_RC" value="Return to merge" />
                                          </node>
                                          <node concept="2YIFZM" id="7o$QXytTJPF" role="37wK5m">
                                            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                                            <ref role="37wK5l" to="jkm4:~Messages.getWarningIcon()" resolve="getWarningIcon" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3SKdUt" id="7o$QXytTDIV" role="3cqZAp">
                                      <node concept="1PaTwC" id="7o$QXytTDIW" role="1aUNEU">
                                        <node concept="3oM_SD" id="7o$QXytTDIX" role="1PaTwD">
                                          <property role="3oM_SC" value="FIXME" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTEVD" role="1PaTwD">
                                          <property role="3oM_SC" value="there's" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTFlk" role="1PaTwD">
                                          <property role="3oM_SC" value="no" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTFll" role="1PaTwD">
                                          <property role="3oM_SC" value="support" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTFLN" role="1PaTwD">
                                          <property role="3oM_SC" value="to" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTGbt" role="1PaTwD">
                                          <property role="3oM_SC" value="&quot;revert" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTG_7" role="1PaTwD">
                                          <property role="3oM_SC" value="changes&quot;," />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTHoq" role="1PaTwD">
                                          <property role="3oM_SC" value="on" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTHM4" role="1PaTwD">
                                          <property role="3oM_SC" value="false," />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytUj4L" role="1PaTwD">
                                          <property role="3oM_SC" value="from" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytUjxf" role="1PaTwD">
                                          <property role="3oM_SC" value="save()" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTICb" role="1PaTwD">
                                          <property role="3oM_SC" value="merge" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTJ1P" role="1PaTwD">
                                          <property role="3oM_SC" value="simply" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytTJrv" role="1PaTwD">
                                          <property role="3oM_SC" value="doesn't" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytUo$G" role="1PaTwD">
                                          <property role="3oM_SC" value="complete." />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytUoYo" role="1PaTwD">
                                          <property role="3oM_SC" value="Why" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytUoYp" role="1PaTwD">
                                          <property role="3oM_SC" value="was" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytUoYq" role="1PaTwD">
                                          <property role="3oM_SC" value="this" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytUpo4" role="1PaTwD">
                                          <property role="3oM_SC" value="option" />
                                        </node>
                                        <node concept="3oM_SD" id="7o$QXytUq9M" role="1PaTwD">
                                          <property role="3oM_SC" value="there?!" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3KaCP$" id="4qk_0lIyucV" role="3cqZAp">
                                      <node concept="3clFbS" id="4qk_0lIyucW" role="3Kb1Dw">
                                        <node concept="3clFbF" id="4qk_0lIyucX" role="3cqZAp">
                                          <node concept="37vLTI" id="4qk_0lIyucY" role="3clFbG">
                                            <node concept="3clFbT" id="4qk_0lIyucZ" role="37vLTx">
                                              <property role="3clFbU" value="false" />
                                            </node>
                                            <node concept="37vLTw" id="4qk_0lIyud0" role="37vLTJ">
                                              <ref role="3cqZAo" node="4qk_0lIyuc3" resolve="closeDialog" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3zACq4" id="4qk_0lIyud1" role="3cqZAp" />
                                      </node>
                                      <node concept="37vLTw" id="4qk_0lIyud2" role="3KbGdf">
                                        <ref role="3cqZAo" node="4qk_0lIyucF" resolve="result" />
                                      </node>
                                      <node concept="3KbdKl" id="4qk_0lIyud3" role="3KbHQx">
                                        <node concept="10M0yZ" id="7o$QXytTZ8U" role="3Kbmr1">
                                          <ref role="3cqZAo" to="jkm4:~Messages.OK" resolve="OK" />
                                          <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
                                        </node>
                                        <node concept="3clFbS" id="4qk_0lIyud5" role="3Kbo56">
                                          <node concept="3clFbF" id="7o$QXytSRFR" role="3cqZAp">
                                            <node concept="37vLTI" id="7o$QXytSZ3B" role="3clFbG">
                                              <node concept="3clFbT" id="7o$QXytT0Vg" role="37vLTx">
                                                <property role="3clFbU" value="true" />
                                              </node>
                                              <node concept="37vLTw" id="7o$QXytSRFP" role="37vLTJ">
                                                <ref role="3cqZAo" node="4qk_0lIyuc3" resolve="closeDialog" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3zACq4" id="4qk_0lIyudm" role="3cqZAp" />
                                        </node>
                                      </node>
                                      <node concept="3KbdKl" id="4qk_0lIyudn" role="3KbHQx">
                                        <node concept="10M0yZ" id="7o$QXytU1y_" role="3Kbmr1">
                                          <ref role="3cqZAo" to="jkm4:~Messages.CANCEL" resolve="CANCEL" />
                                          <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
                                        </node>
                                        <node concept="3clFbS" id="4qk_0lIyudp" role="3Kbo56">
                                          <node concept="3clFbF" id="7o$QXytT3fY" role="3cqZAp">
                                            <node concept="37vLTI" id="7o$QXytT3fZ" role="3clFbG">
                                              <node concept="37vLTw" id="7o$QXytT3g1" role="37vLTJ">
                                                <ref role="3cqZAo" node="4qk_0lIyuc3" resolve="closeDialog" />
                                              </node>
                                              <node concept="3clFbT" id="7o$QXytUfy0" role="37vLTx" />
                                            </node>
                                          </node>
                                          <node concept="3zACq4" id="4qk_0lIyudu" role="3cqZAp" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="4qk_0lIyuek" role="3cqZAp" />
                              <node concept="3cpWs6" id="4qk_0lIyuel" role="3cqZAp">
                                <node concept="37vLTw" id="4qk_0lIyuem" role="3cqZAk">
                                  <ref role="3cqZAo" node="4qk_0lIyuc3" resolve="closeDialog" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4qk_0lIyV0y" role="3cqZAp">
                  <node concept="2OqwBi" id="4qk_0lIyX8X" role="3clFbG">
                    <node concept="2OqwBi" id="4qk_0lIyVSW" role="2Oq$k0">
                      <node concept="37vLTw" id="4qk_0lIyV0w" role="2Oq$k0">
                        <ref role="3cqZAo" node="4qk_0lIxhn7" resolve="viewer" />
                      </node>
                      <node concept="2OwXpG" id="4qk_0lIyW$u" role="2OqNvi">
                        <ref role="2Oxat5" node="4qk_0lIoFF5" resolve="myPanel" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4qk_0lIyY96" role="2OqNvi">
                      <ref role="37wK5l" to="wenr:5$xqaEreqhH" resolve="setSaver" />
                      <node concept="37vLTw" id="4qk_0lIyYHw" role="37wK5m">
                        <ref role="3cqZAo" node="4qk_0lIyubO" resolve="saver" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4qk_0lIylVo" role="3cqZAp" />
                <node concept="3cpWs6" id="4qk_0lIxhng" role="3cqZAp">
                  <node concept="37vLTw" id="4qk_0lIxhnh" role="3cqZAk">
                    <ref role="3cqZAo" node="4qk_0lIxhn7" resolve="viewer" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="4qk_0lIxhni" role="3clFbw">
                <node concept="1Wc70l" id="4qk_0lIxhnj" role="3uHU7B">
                  <node concept="3y3z36" id="4qk_0lIxhnk" role="3uHU7B">
                    <node concept="37vLTw" id="4qk_0lIxhnl" role="3uHU7B">
                      <ref role="3cqZAo" node="4qk_0lIxhmH" resolve="baseModel" />
                    </node>
                    <node concept="10Nm6u" id="4qk_0lIxhnm" role="3uHU7w" />
                  </node>
                  <node concept="3y3z36" id="4qk_0lIxhnn" role="3uHU7w">
                    <node concept="37vLTw" id="4qk_0lIxhno" role="3uHU7B">
                      <ref role="3cqZAo" node="4qk_0lIxhmP" resolve="mineModel" />
                    </node>
                    <node concept="10Nm6u" id="4qk_0lIxhnp" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3y3z36" id="4qk_0lIxhnq" role="3uHU7w">
                  <node concept="37vLTw" id="4qk_0lIxhnr" role="3uHU7B">
                    <ref role="3cqZAo" node="4qk_0lIxhmX" resolve="newModel" />
                  </node>
                  <node concept="10Nm6u" id="4qk_0lIxhns" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4qk_0lIxhnu" role="1zxBo5">
            <node concept="XOnhg" id="4qk_0lIxhn_" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dIfM4" role="1tU5fm">
                <node concept="3uibUv" id="4qk_0lIxhnA" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
                <node concept="3uibUv" id="2VIcG4o7oEw" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                </node>
                <node concept="3uibUv" id="2VIcG4o80gK" role="nSUat">
                  <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4qk_0lIxhnv" role="1zc67A">
              <node concept="RRSsy" id="6V2p7ItLJ_8" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="6V2p7ItLJ_a" role="RRSoy">
                  <property role="Xl_RC" value="Failed to create merge view" />
                </node>
                <node concept="37vLTw" id="6V2p7ItLM4z" role="RRSow">
                  <ref role="3cqZAo" node="4qk_0lIxhn_" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4qk_0lIxGqT" role="3cqZAp">
          <node concept="10Nm6u" id="4qk_0lIxFbo" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4qk_0lIxhnV" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4qk_0lIxhnW" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~MergeContext" resolve="MergeContext" />
        </node>
        <node concept="2AHcQZ" id="4qk_0lIxhnX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4qk_0lIxhnY" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="4qk_0lIxhnZ" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~MergeRequest" resolve="MergeRequest" />
        </node>
        <node concept="2AHcQZ" id="4qk_0lIxho0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="4qk_0lIxiFC" role="3clF45">
        <ref role="3uigEE" node="4qk_0lIkYNV" resolve="ModelMergeViewer" />
      </node>
      <node concept="3Tm1VV" id="4qk_0lIxho2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4qk_0lIxgFD" role="jymVt" />
    <node concept="2tJIrI" id="4qk_0lIxgYG" role="jymVt" />
    <node concept="3Tm1VV" id="4qk_0lIkYNW" role="1B3o_S" />
    <node concept="3uibUv" id="4qk_0lIl6P6" role="EKbjA">
      <ref role="3uigEE" to="o8e1:~MergeTool$MergeViewer" resolve="MergeTool.MergeViewer" />
    </node>
    <node concept="3clFb_" id="4qk_0lIli94" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4qk_0lIli95" role="1B3o_S" />
      <node concept="3uibUv" id="4qk_0lIli97" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="4qk_0lIli98" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4qk_0lIli99" role="3clF47">
        <node concept="3clFbF" id="4qk_0lIli9b" role="3cqZAp">
          <node concept="37vLTw" id="4qk_0lIoFUc" role="3clFbG">
            <ref role="3cqZAo" node="4qk_0lIoFF5" resolve="myPanel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4qk_0lIli9c" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPreferredFocusedComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4qk_0lIli9d" role="1B3o_S" />
      <node concept="3uibUv" id="4qk_0lIli9f" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="4qk_0lIli9g" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4qk_0lIli9h" role="3clF47">
        <node concept="3clFbF" id="4qk_0lIli9j" role="3cqZAp">
          <node concept="2OqwBi" id="4qk_0lIsbVa" role="3clFbG">
            <node concept="37vLTw" id="4qk_0lIoG4Z" role="2Oq$k0">
              <ref role="3cqZAo" node="4qk_0lIoFF5" resolve="myPanel" />
            </node>
            <node concept="liA8E" id="4qk_0lIsd4V" role="2OqNvi">
              <ref role="37wK5l" to="wenr:6d004XjC32Z" resolve="getPreferredFocusedComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4qk_0lIlikA" role="jymVt" />
    <node concept="3clFb_" id="4qk_0lIli9v" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4qk_0lIli9w" role="1B3o_S" />
      <node concept="3uibUv" id="4qk_0lIli9y" role="3clF45">
        <ref role="3uigEE" to="o8e1:~MergeTool$ToolbarComponents" resolve="MergeTool.ToolbarComponents" />
      </node>
      <node concept="3clFbS" id="4qk_0lIli9z" role="3clF47">
        <node concept="3cpWs8" id="4qk_0lIoCd1" role="3cqZAp">
          <node concept="3cpWsn" id="4qk_0lIoCd2" role="3cpWs9">
            <property role="TrG5h" value="components" />
            <node concept="3uibUv" id="4qk_0lIoCcW" role="1tU5fm">
              <ref role="3uigEE" to="o8e1:~MergeTool$ToolbarComponents" resolve="MergeTool.ToolbarComponents" />
            </node>
            <node concept="2ShNRf" id="4qk_0lIoCd3" role="33vP2m">
              <node concept="1pGfFk" id="4qk_0lIoCd4" role="2ShVmc">
                <ref role="37wK5l" to="o8e1:~MergeTool$ToolbarComponents.&lt;init&gt;()" resolve="MergeTool.ToolbarComponents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qk_0lIpf2V" role="3cqZAp" />
        <node concept="3clFbF" id="4qk_0lIrlXf" role="3cqZAp">
          <node concept="37vLTI" id="4qk_0lIrmqu" role="3clFbG">
            <node concept="2OqwBi" id="4qk_0lIrnbo" role="37vLTx">
              <node concept="37vLTw" id="4qk_0lIrmIM" role="2Oq$k0">
                <ref role="3cqZAo" node="4qk_0lIoFF5" resolve="myPanel" />
              </node>
              <node concept="liA8E" id="4qk_0lIron0" role="2OqNvi">
                <ref role="37wK5l" to="wenr:4qk_0lIpEyS" resolve="getToolbarActions" />
              </node>
            </node>
            <node concept="2OqwBi" id="4qk_0lIrm72" role="37vLTJ">
              <node concept="37vLTw" id="4qk_0lIrlXd" role="2Oq$k0">
                <ref role="3cqZAo" node="4qk_0lIoCd2" resolve="components" />
              </node>
              <node concept="2OwXpG" id="4qk_0lIrm9m" role="2OqNvi">
                <ref role="2Oxat5" to="o8e1:~MergeTool$ToolbarComponents.toolbarActions" resolve="toolbarActions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4qk_0lIrksh" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="4qk_0lIqxg$" role="8Wnug">
            <node concept="37vLTI" id="4qk_0lIqxYq" role="3clFbG">
              <node concept="10Nm6u" id="4qk_0lIqyct" role="37vLTx" />
              <node concept="2OqwBi" id="4qk_0lIqxvC" role="37vLTJ">
                <node concept="37vLTw" id="4qk_0lIqxgy" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qk_0lIoCd2" resolve="components" />
                </node>
                <node concept="2OwXpG" id="4qk_0lIqxAC" role="2OqNvi">
                  <ref role="2Oxat5" to="o8e1:~MergeTool$ToolbarComponents.statusPanel" resolve="statusPanel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qk_0lIoCMe" role="3cqZAp">
          <node concept="37vLTI" id="4qk_0lIoD3A" role="3clFbG">
            <node concept="1bVj0M" id="4qk_0lIoDmJ" role="37vLTx">
              <node concept="3clFbS" id="4qk_0lIoDmL" role="1bW5cS">
                <node concept="3clFbF" id="4qk_0lIoDF0" role="3cqZAp">
                  <node concept="1rXfSq" id="4qk_0lIsg6G" role="3clFbG">
                    <ref role="37wK5l" node="4qk_0lIsdhS" resolve="allowCancel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4qk_0lIoCV_" role="37vLTJ">
              <node concept="37vLTw" id="4qk_0lIoCMc" role="2Oq$k0">
                <ref role="3cqZAo" node="4qk_0lIoCd2" resolve="components" />
              </node>
              <node concept="2OwXpG" id="4qk_0lIoCXL" role="2OqNvi">
                <ref role="2Oxat5" to="o8e1:~MergeTool$ToolbarComponents.closeHandler" resolve="closeHandler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qk_0lIoynX" role="3cqZAp">
          <node concept="37vLTw" id="4qk_0lIoCd5" role="3clFbG">
            <ref role="3cqZAo" node="4qk_0lIoCd2" resolve="components" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4qk_0lIli9k" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getResolveAction" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4qk_0lIli9l" role="1B3o_S" />
      <node concept="3uibUv" id="4qk_0lIli9n" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Action" resolve="Action" />
      </node>
      <node concept="37vLTG" id="4qk_0lIli9o" role="3clF46">
        <property role="TrG5h" value="result" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4qk_0lIli9p" role="1tU5fm">
          <ref role="3uigEE" to="o8e1:~MergeResult" resolve="MergeResult" />
        </node>
        <node concept="2AHcQZ" id="4qk_0lIli9q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4qk_0lIli9r" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4qk_0lIli9s" role="3clF47">
        <node concept="3cpWs8" id="4qk_0lIs1ab" role="3cqZAp">
          <node concept="3cpWsn" id="4qk_0lIs1aa" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="caption" />
            <node concept="17QB3L" id="4qk_0lIs50c" role="1tU5fm" />
            <node concept="2YIFZM" id="4qk_0lIs1bd" role="33vP2m">
              <ref role="1Pybhc" to="o8e1:~MergeUtil" resolve="MergeUtil" />
              <ref role="37wK5l" to="o8e1:~MergeUtil.getResolveActionTitle(com.intellij.diff.merge.MergeResult,com.intellij.diff.merge.MergeRequest,com.intellij.diff.merge.MergeContext)" resolve="getResolveActionTitle" />
              <node concept="37vLTw" id="4qk_0lIs1ae" role="37wK5m">
                <ref role="3cqZAo" node="4qk_0lIli9o" resolve="result" />
              </node>
              <node concept="37vLTw" id="4qk_0lIs1af" role="37wK5m">
                <ref role="3cqZAo" node="4qk_0lIs2_K" resolve="myMergeRequest" />
              </node>
              <node concept="37vLTw" id="4qk_0lIs1ag" role="37wK5m">
                <ref role="3cqZAo" node="4qk_0lIs3Li" resolve="myMergeContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="18Ub5ANGWgk" role="3cqZAp">
          <node concept="37vLTw" id="18Ub5ANGY1i" role="3KbGdf">
            <ref role="3cqZAo" node="4qk_0lIli9o" resolve="result" />
          </node>
          <node concept="3KbdKl" id="18Ub5ANHWUL" role="3KbHQx">
            <node concept="Rm8GO" id="18Ub5ANHWUM" role="3Kbmr1">
              <ref role="Rm8GQ" to="o8e1:~MergeResult.CANCEL" resolve="CANCEL" />
              <ref role="1Px2BO" to="o8e1:~MergeResult" resolve="MergeResult" />
            </node>
            <node concept="3clFbS" id="18Ub5ANHWUN" role="3Kbo56">
              <node concept="3cpWs6" id="18Ub5ANHWUO" role="3cqZAp">
                <node concept="2ShNRf" id="18Ub5ANHWUP" role="3cqZAk">
                  <node concept="YeOm9" id="18Ub5ANHWUQ" role="2ShVmc">
                    <node concept="1Y3b0j" id="18Ub5ANHWUR" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="dxuu:~AbstractAction" resolve="AbstractAction" />
                      <ref role="37wK5l" to="dxuu:~AbstractAction.&lt;init&gt;(java.lang.String)" resolve="AbstractAction" />
                      <node concept="3Tm1VV" id="18Ub5ANHWUS" role="1B3o_S" />
                      <node concept="3clFb_" id="18Ub5ANHWUT" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="actionPerformed" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="18Ub5ANHWUU" role="1B3o_S" />
                        <node concept="3cqZAl" id="18Ub5ANHWUV" role="3clF45" />
                        <node concept="37vLTG" id="18Ub5ANHWUW" role="3clF46">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="18Ub5ANHWUX" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="18Ub5ANHWUY" role="3clF47">
                          <node concept="3clFbJ" id="18Ub5ANHWUZ" role="3cqZAp">
                            <node concept="1rXfSq" id="18Ub5ANHWV0" role="3clFbw">
                              <ref role="37wK5l" node="4qk_0lIsdhS" resolve="allowCancel" />
                            </node>
                            <node concept="3clFbS" id="18Ub5ANHWV1" role="3clFbx">
                              <node concept="3clFbF" id="18Ub5ANHWV2" role="3cqZAp">
                                <node concept="2OqwBi" id="18Ub5ANHWV3" role="3clFbG">
                                  <node concept="37vLTw" id="18Ub5ANHWV4" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4qk_0lIs3Li" resolve="myMergeContext" />
                                  </node>
                                  <node concept="liA8E" id="18Ub5ANHWV5" role="2OqNvi">
                                    <ref role="37wK5l" to="o8e1:~MergeContext.finishMerge(com.intellij.diff.merge.MergeResult)" resolve="finishMerge" />
                                    <node concept="Rm8GO" id="18Ub5ANHWV6" role="37wK5m">
                                      <ref role="1Px2BO" to="o8e1:~MergeResult" resolve="MergeResult" />
                                      <ref role="Rm8GQ" to="o8e1:~MergeResult.CANCEL" resolve="CANCEL" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="18Ub5ANIcmJ" role="37wK5m">
                        <ref role="3cqZAo" node="4qk_0lIs1aa" resolve="caption" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="18Ub5ANGYbL" role="3KbHQx">
            <node concept="Rm8GO" id="18Ub5ANI0nJ" role="3Kbmr1">
              <ref role="Rm8GQ" to="o8e1:~MergeResult.RESOLVED" resolve="RESOLVED" />
              <ref role="1Px2BO" to="o8e1:~MergeResult" resolve="MergeResult" />
            </node>
            <node concept="3clFbS" id="18Ub5ANGYbN" role="3Kbo56">
              <node concept="3cpWs6" id="18Ub5ANH6Y_" role="3cqZAp">
                <node concept="2ShNRf" id="18Ub5ANH95E" role="3cqZAk">
                  <node concept="YeOm9" id="18Ub5ANHEyj" role="2ShVmc">
                    <node concept="1Y3b0j" id="18Ub5ANHEym" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="dxuu:~AbstractAction" resolve="AbstractAction" />
                      <ref role="37wK5l" to="dxuu:~AbstractAction.&lt;init&gt;(java.lang.String)" resolve="AbstractAction" />
                      <node concept="3Tm1VV" id="18Ub5ANHEyn" role="1B3o_S" />
                      <node concept="3clFb_" id="18Ub5ANHEyE" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="actionPerformed" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="18Ub5ANHEyF" role="1B3o_S" />
                        <node concept="3cqZAl" id="18Ub5ANHEyH" role="3clF45" />
                        <node concept="37vLTG" id="18Ub5ANHEyI" role="3clF46">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="18Ub5ANHEyJ" role="1tU5fm">
                            <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="18Ub5ANHEyK" role="3clF47">
                          <node concept="3clFbJ" id="18Ub5ANHNzy" role="3cqZAp">
                            <node concept="3clFbS" id="18Ub5ANHNz$" role="3clFbx">
                              <node concept="3clFbF" id="18Ub5ANHSJk" role="3cqZAp">
                                <node concept="2OqwBi" id="18Ub5ANHTDT" role="3clFbG">
                                  <node concept="37vLTw" id="18Ub5ANHSJi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4qk_0lIs3Li" resolve="myMergeContext" />
                                  </node>
                                  <node concept="liA8E" id="18Ub5ANHU4c" role="2OqNvi">
                                    <ref role="37wK5l" to="o8e1:~MergeContext.finishMerge(com.intellij.diff.merge.MergeResult)" resolve="finishMerge" />
                                    <node concept="Rm8GO" id="18Ub5ANI26U" role="37wK5m">
                                      <ref role="Rm8GQ" to="o8e1:~MergeResult.RESOLVED" resolve="RESOLVED" />
                                      <ref role="1Px2BO" to="o8e1:~MergeResult" resolve="MergeResult" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="18Ub5ANI3Ug" role="3clFbw">
                              <node concept="37vLTw" id="18Ub5ANI3Uh" role="2Oq$k0">
                                <ref role="3cqZAo" node="4qk_0lIoFF5" resolve="myPanel" />
                              </node>
                              <node concept="liA8E" id="18Ub5ANI3Ui" role="2OqNvi">
                                <ref role="37wK5l" to="wenr:4qk_0lIurZq" resolve="saveResults" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="18Ub5ANIeLl" role="37wK5m">
                        <ref role="3cqZAo" node="4qk_0lIs1aa" resolve="caption" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="18Ub5ANH25i" role="3Kb1Dw">
            <node concept="3SKdUt" id="18Ub5ANI7Y8" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXomsi" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXomsj" role="1PaTwD">
                  <property role="3oM_SC" value="Accept" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsk" role="1PaTwD">
                  <property role="3oM_SC" value="LEFT" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsl" role="1PaTwD">
                  <property role="3oM_SC" value="or" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsm" role="1PaTwD">
                  <property role="3oM_SC" value="Accept" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsn" role="1PaTwD">
                  <property role="3oM_SC" value="RIGHT" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="18Ub5ANI9JR" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXomso" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXomsp" role="1PaTwD">
                  <property role="3oM_SC" value="can't" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsq" role="1PaTwD">
                  <property role="3oM_SC" value="call" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsr" role="1PaTwD">
                  <property role="3oM_SC" value="finishMerge(LEFT/RIGHT)" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomss" role="1PaTwD">
                  <property role="3oM_SC" value="directly," />
                </node>
                <node concept="3oM_SD" id="ATZLwXomst" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsu" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsv" role="1PaTwD">
                  <property role="3oM_SC" value="probably" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsw" role="1PaTwD">
                  <property role="3oM_SC" value="want" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsx" role="1PaTwD">
                  <property role="3oM_SC" value="accept" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsy" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsz" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoms$" role="1PaTwD">
                  <property role="3oM_SC" value="root" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="18Ub5ANI9JT" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoms_" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXomsA" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsB" role="1PaTwD">
                  <property role="3oM_SC" value="can't" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsC" role="1PaTwD">
                  <property role="3oM_SC" value="just" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsD" role="1PaTwD">
                  <property role="3oM_SC" value="accept" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsE" role="1PaTwD">
                  <property role="3oM_SC" value="old" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsF" role="1PaTwD">
                  <property role="3oM_SC" value="byte[]" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsG" role="1PaTwD">
                  <property role="3oM_SC" value="content," />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsH" role="1PaTwD">
                  <property role="3oM_SC" value="because" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsI" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsJ" role="1PaTwD">
                  <property role="3oM_SC" value="could" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsK" role="1PaTwD">
                  <property role="3oM_SC" value="break" />
                </node>
                <node concept="3oM_SD" id="ATZLwXomsL" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="18Ub5ANH3P1" role="3cqZAp">
              <node concept="10Nm6u" id="18Ub5ANH5eP" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4qk_0lIli9A" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4qk_0lIli9B" role="1B3o_S" />
      <node concept="3cqZAl" id="4qk_0lIli9D" role="3clF45" />
      <node concept="3clFbS" id="4qk_0lIli9E" role="3clF47">
        <node concept="3clFbF" id="4qk_0lIs5Jf" role="3cqZAp">
          <node concept="2OqwBi" id="4qk_0lIs6ee" role="3clFbG">
            <node concept="37vLTw" id="4qk_0lIs5Je" role="2Oq$k0">
              <ref role="3cqZAo" node="4qk_0lIoFF5" resolve="myPanel" />
            </node>
            <node concept="liA8E" id="4qk_0lIs7nZ" role="2OqNvi">
              <ref role="37wK5l" to="wenr:65pnlFBKfjM" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4qk_0lIxHN1" role="jymVt" />
    <node concept="3clFb_" id="4qk_0lIsdhS" role="jymVt">
      <property role="TrG5h" value="allowCancel" />
      <node concept="3Tm6S6" id="4qk_0lIsdhT" role="1B3o_S" />
      <node concept="10P_77" id="4qk_0lIsdhU" role="3clF45" />
      <node concept="3clFbS" id="4qk_0lIsde8" role="3clF47">
        <node concept="3cpWs6" id="4qk_0lIsdfU" role="3cqZAp">
          <node concept="3clFbC" id="4qk_0lIseSr" role="3cqZAk">
            <node concept="2YIFZM" id="4qk_0lIsdfW" role="3uHU7B">
              <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
              <ref role="37wK5l" to="jkm4:~Messages.showYesNoDialog(java.lang.String,java.lang.String,java.lang.String,java.lang.String,javax.swing.Icon)" resolve="showYesNoDialog" />
              <node concept="2YIFZM" id="4qk_0lIsdg0" role="37wK5m">
                <ref role="1Pybhc" to="ok99:~DiffBundle" resolve="DiffBundle" />
                <ref role="37wK5l" to="ok99:~DiffBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <node concept="Xl_RD" id="4qk_0lIsdg1" role="37wK5m">
                  <property role="Xl_RC" value="merge.dialog.exit.without.applying.changes.confirmation.message" />
                </node>
              </node>
              <node concept="2YIFZM" id="4qk_0lIsdg2" role="37wK5m">
                <ref role="1Pybhc" to="ok99:~DiffBundle" resolve="DiffBundle" />
                <ref role="37wK5l" to="ok99:~DiffBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <node concept="Xl_RD" id="4qk_0lIsdg3" role="37wK5m">
                  <property role="Xl_RC" value="cancel.visual.merge.dialog.title" />
                </node>
              </node>
              <node concept="2YIFZM" id="6lvN2qMIk8U" role="37wK5m">
                <ref role="1Pybhc" to="ok99:~DiffBundle" resolve="DiffBundle" />
                <ref role="37wK5l" to="ok99:~DiffBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <node concept="Xl_RD" id="6lvN2qMIk8V" role="37wK5m">
                  <property role="Xl_RC" value="button.discard.changes.and.do" />
                </node>
                <node concept="2YIFZM" id="6lvN2qMIk8W" role="37wK5m">
                  <ref role="1Pybhc" to="ok99:~DiffBundle" resolve="DiffBundle" />
                  <ref role="37wK5l" to="ok99:~DiffBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                  <node concept="Xl_RD" id="6lvN2qMIk8X" role="37wK5m">
                    <property role="Xl_RC" value="button.cancel.merge" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="6lvN2qMIm8R" role="37wK5m">
                <ref role="1Pybhc" to="ok99:~DiffBundle" resolve="DiffBundle" />
                <ref role="37wK5l" to="ok99:~DiffBundle.message(java.lang.String,java.lang.Object...)" resolve="message" />
                <node concept="Xl_RD" id="6lvN2qMIm8S" role="37wK5m">
                  <property role="Xl_RC" value="button.continue.merge" />
                </node>
              </node>
              <node concept="2YIFZM" id="4qk_0lIsdg4" role="37wK5m">
                <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                <ref role="37wK5l" to="jkm4:~Messages.getQuestionIcon()" resolve="getQuestionIcon" />
              </node>
            </node>
            <node concept="10M0yZ" id="4qk_0lIsdg5" role="3uHU7w">
              <ref role="1PxDUh" to="jkm4:~Messages" resolve="Messages" />
              <ref role="3cqZAo" to="jkm4:~Messages.YES" resolve="YES" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4qk_0lIxx7v" role="jymVt" />
    <node concept="2YIFZL" id="4qk_0lIxx7w" role="jymVt">
      <property role="TrG5h" value="getContentBytes" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4qk_0lIxx7x" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4qk_0lIxx7y" role="3clF46">
        <property role="TrG5h" value="content" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="4qk_0lIxx7z" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4qk_0lIxx7$" role="1tU5fm">
          <ref role="3uigEE" to="2o8p:~DocumentContent" resolve="DocumentContent" />
        </node>
      </node>
      <node concept="3clFbS" id="4qk_0lIxx7_" role="3clF47">
        <node concept="3SKdUt" id="4c7jxksUWyi" role="3cqZAp">
          <node concept="1PaTwC" id="4c7jxksUWyj" role="1aUNEU">
            <node concept="3oM_SD" id="4c7jxksUWyk" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZ7n" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZ7D" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZ7U" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZ8b" role="1PaTwD">
              <property role="3oM_SC" value="&quot;&quot;" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZbe" role="1PaTwD">
              <property role="3oM_SC" value="content" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZd5" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZdm" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZdB" role="1PaTwD">
              <property role="3oM_SC" value="merge" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZht" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZkq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZkV" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZkW" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZlt" role="1PaTwD">
              <property role="3oM_SC" value="deleted" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZlI" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZlJ" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZm0" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZm1" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZm2" role="1PaTwD">
              <property role="3oM_SC" value="branches," />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZeC" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZfp" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZfU" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZmj" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZgb" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="4c7jxksUZgW" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4c7jxksV2Hv" role="3cqZAp">
          <node concept="3clFbS" id="4c7jxksV2Hx" role="3clFbx">
            <node concept="3cpWs6" id="4c7jxksVrMD" role="3cqZAp">
              <node concept="2ShNRf" id="4c7jxksVw3s" role="3cqZAk">
                <node concept="3$_iS1" id="4c7jxksVvV1" role="2ShVmc">
                  <node concept="10PrrI" id="4c7jxksVvV2" role="3$_nBY" />
                  <node concept="3$GHV9" id="4c7jxksVzDp" role="3$GQph">
                    <node concept="3cmrfG" id="4c7jxksVAQ7" role="3$I4v7">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4c7jxksVmFz" role="3clFbw">
            <node concept="10Nm6u" id="4c7jxksVola" role="3uHU7w" />
            <node concept="2OqwBi" id="4c7jxksV8Ig" role="3uHU7B">
              <node concept="37vLTw" id="4c7jxksV5M1" role="2Oq$k0">
                <ref role="3cqZAo" node="4qk_0lIxx7y" resolve="content" />
              </node>
              <node concept="liA8E" id="4c7jxksVbAH" role="2OqNvi">
                <ref role="37wK5l" to="zn9m:~UserDataHolder.getUserData(com.intellij.openapi.util.Key)" resolve="getUserData" />
                <node concept="10M0yZ" id="4c7jxksVjxK" role="37wK5m">
                  <ref role="3cqZAo" to="yt4g:~DiffVcsDataKeys.REVISION_INFO" resolve="REVISION_INFO" />
                  <ref role="1PxDUh" to="yt4g:~DiffVcsDataKeys" resolve="DiffVcsDataKeys" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qk_0lIxx7A" role="3cqZAp">
          <node concept="3cpWsn" id="4qk_0lIxx7B" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="document" />
            <node concept="3uibUv" id="4qk_0lIxx7C" role="1tU5fm">
              <ref role="3uigEE" to="s9o5:~Document" resolve="Document" />
            </node>
            <node concept="2OqwBi" id="4qk_0lIxx7D" role="33vP2m">
              <node concept="37vLTw" id="4qk_0lIxx7G" role="2Oq$k0">
                <ref role="3cqZAo" node="4qk_0lIxx7y" resolve="content" />
              </node>
              <node concept="liA8E" id="4qk_0lIxx7I" role="2OqNvi">
                <ref role="37wK5l" to="2o8p:~DocumentContent.getDocument()" resolve="getDocument" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qk_0lIxx7J" role="3cqZAp">
          <node concept="3cpWsn" id="4qk_0lIxx7K" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="charset" />
            <node concept="3uibUv" id="4qk_0lIxx7L" role="1tU5fm">
              <ref role="3uigEE" to="7x5y:~Charset" resolve="Charset" />
            </node>
            <node concept="2OqwBi" id="4qk_0lIxx7M" role="33vP2m">
              <node concept="37vLTw" id="4qk_0lIxx7P" role="2Oq$k0">
                <ref role="3cqZAo" node="4qk_0lIxx7y" resolve="content" />
              </node>
              <node concept="liA8E" id="4qk_0lIxx7R" role="2OqNvi">
                <ref role="37wK5l" to="2o8p:~DocumentContent.getCharset()" resolve="getCharset" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qk_0lIxx7S" role="3cqZAp">
          <node concept="3clFbC" id="4qk_0lIxx7T" role="3clFbw">
            <node concept="37vLTw" id="4qk_0lIxx7U" role="3uHU7B">
              <ref role="3cqZAo" node="4qk_0lIxx7K" resolve="charset" />
            </node>
            <node concept="10Nm6u" id="4qk_0lIxx7V" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4qk_0lIxx7W" role="3clFbx">
            <node concept="3clFbF" id="4qk_0lIxx7X" role="3cqZAp">
              <node concept="37vLTI" id="4qk_0lIxx7Y" role="3clFbG">
                <node concept="37vLTw" id="4qk_0lIxx7Z" role="37vLTJ">
                  <ref role="3cqZAo" node="4qk_0lIxx7K" resolve="charset" />
                </node>
                <node concept="2YIFZM" id="4qk_0lIxx80" role="37vLTx">
                  <ref role="1Pybhc" to="jlff:~CharsetToolkit" resolve="CharsetToolkit" />
                  <ref role="37wK5l" to="jlff:~CharsetToolkit.getDefaultSystemCharset()" resolve="getDefaultSystemCharset" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4qk_0lIxx81" role="3cqZAp">
          <node concept="2OqwBi" id="4qk_0lIxx82" role="3cqZAk">
            <node concept="2OqwBi" id="4qk_0lIxx83" role="2Oq$k0">
              <node concept="37vLTw" id="4qk_0lIxx84" role="2Oq$k0">
                <ref role="3cqZAo" node="4qk_0lIxx7B" resolve="document" />
              </node>
              <node concept="liA8E" id="4qk_0lIxx85" role="2OqNvi">
                <ref role="37wK5l" to="s9o5:~Document.getText()" resolve="getText" />
              </node>
            </node>
            <node concept="liA8E" id="4qk_0lIxx86" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.getBytes(java.nio.charset.Charset)" resolve="getBytes" />
              <node concept="37vLTw" id="4qk_0lIxx87" role="37wK5m">
                <ref role="3cqZAo" node="4qk_0lIxx7K" resolve="charset" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4qk_0lIxx88" role="1B3o_S" />
      <node concept="10Q1$e" id="4qk_0lIxx89" role="3clF45">
        <node concept="10PrrI" id="4qk_0lIxx8a" role="10Q1$1" />
      </node>
    </node>
  </node>
</model>

