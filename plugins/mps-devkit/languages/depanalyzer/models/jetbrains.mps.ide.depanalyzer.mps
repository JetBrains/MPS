<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e9e5ee4e-8216-40bc-b13e-6f1480c626c5(jetbrains.mps.ide.depanalyzer)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="rgfa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.tree(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="3s15" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench(MPS.Platform/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="7bx7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.action(MPS.Platform/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="y49u" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.util(MPS.OpenAPI/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="pwkq" ref="r:77da0423-abdb-440a-b7fa-09f1e00ba0f2(jetbrains.mps.ide.depanalyzer.actions)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="ngmm" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view(MPS.Platform/)" />
    <import index="9erk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model(MPS.Core/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="kxvg" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree.module(MPS.Platform/)" />
    <import index="xr52" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree.smodel(MPS.Platform/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="dsdj" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view.treeholder.treeview(MPS.Platform/)" />
    <import index="gkle" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view.treeholder.tree(MPS.Platform/)" />
    <import index="qoip" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes(MPS.Platform/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239360506533" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleDeclaration" flags="ng" index="2fD8I5">
        <child id="1239529553065" name="component" index="2pHZQ9" />
      </concept>
      <concept id="1239462176079" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentDeclaration" flags="ng" index="2lGYhJ">
        <property id="1240400839614" name="final" index="3dDGau" />
        <child id="1239462974287" name="type" index="2lK19J" />
      </concept>
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
      <concept id="1239559992092" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleLiteral" flags="nn" index="2ry78W">
        <reference id="1239560008022" name="tupleDeclaration" index="2ryb1Q" />
        <child id="1239560910577" name="componentRef" index="2r_Bvh" />
      </concept>
      <concept id="1239560581441" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentReference" flags="ng" index="2r$n1x">
        <reference id="1239560595302" name="componentDeclaration" index="2r$qp6" />
        <child id="1239560837729" name="value" index="2r_lH1" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="3205675194086589964" name="jetbrains.mps.lang.plugin.structure.ActionAccessOperation" flags="nn" index="3$FdUm">
        <reference id="3205675194086671728" name="action" index="3$FpRE" />
      </concept>
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
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
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
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
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
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
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI" />
      <concept id="2217234381367530195" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocReference" flags="ng" index="VXe0Z">
        <reference id="2217234381367530196" name="methodDeclaration" index="VXe0S" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
      <concept id="5085607816306582224" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentTextElement" flags="ng" index="1Vtdud">
        <child id="5085607816306582225" name="tag" index="1Vtduc" />
      </concept>
      <concept id="5085607816306647746" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTagTE" flags="ng" index="1VuXuv">
        <child id="5085607816306647747" name="reference" index="1VuXuu" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1237467461002" name="jetbrains.mps.baseLanguage.collections.structure.GetIteratorOperation" flags="nn" index="uNJiE" />
      <concept id="1237467705688" name="jetbrains.mps.baseLanguage.collections.structure.IteratorType" flags="in" index="uOF1S">
        <child id="1237467730343" name="elementType" index="uOL27" />
      </concept>
      <concept id="1237470895604" name="jetbrains.mps.baseLanguage.collections.structure.HasNextOperation" flags="nn" index="v0PNk" />
      <concept id="1237471031357" name="jetbrains.mps.baseLanguage.collections.structure.GetNextOperation" flags="nn" index="v1n4t" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1227026094155" name="jetbrains.mps.baseLanguage.collections.structure.RemoveLastElementOperation" flags="nn" index="2Kt5_m" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="2HP68CXWGxl">
    <property role="TrG5h" value="DependencyTree" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="3GE5qa" value="view1" />
    <node concept="3Tm1VV" id="2HP68CXWGxm" role="1B3o_S" />
    <node concept="3uibUv" id="2HP68CXWX$j" role="1zkMxy">
      <ref role="3uigEE" to="7e8u:~MPSTree" resolve="MPSTree" />
    </node>
    <node concept="3uibUv" id="3qzvyg2VtUO" role="EKbjA">
      <ref role="3uigEE" to="qkt:~DataProvider" resolve="DataProvider" />
    </node>
    <node concept="312cEg" id="2HP68CXWGx$" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="1aCYpOWFGq7" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="2HP68CXWGxA" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3YtP95zXLeP" role="jymVt">
      <property role="TrG5h" value="myModule" />
      <node concept="3uibUv" id="6TI6RSr8WQp" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm6S6" id="3YtP95zXLeQ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5VaNJtFGegX" role="jymVt">
      <property role="TrG5h" value="myShowRuntime" />
      <node concept="3Tm6S6" id="5VaNJtFGegY" role="1B3o_S" />
      <node concept="10P_77" id="5VaNJtFGeJJ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5VaNJtFGeJK" role="jymVt">
      <property role="TrG5h" value="myShowUsedLanguage" />
      <node concept="3Tm6S6" id="5VaNJtFGeJL" role="1B3o_S" />
      <node concept="10P_77" id="5VaNJtFGeJN" role="1tU5fm" />
      <node concept="3clFbT" id="5VaNJtFGeJP" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="3clFbW" id="bB3g$9WQPw" role="jymVt">
      <node concept="3Tm1VV" id="bB3g$9WQPx" role="1B3o_S" />
      <node concept="3cqZAl" id="bB3g$9WQPy" role="3clF45" />
      <node concept="37vLTG" id="bB3g$9WQPz" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1aCYpOWFFQQ" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="bB3g$9WQPB" role="3clF47">
        <node concept="3clFbF" id="bB3g$9WQPC" role="3cqZAp">
          <node concept="37vLTI" id="bB3g$9WQPD" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeug55" role="37vLTJ">
              <ref role="3cqZAo" node="2HP68CXWGx$" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm7Mv" role="37vLTx">
              <ref role="3cqZAo" node="bB3g$9WQPz" resolve="project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5mho9GASLDQ" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3uibUv" id="1aCYpOWFH44" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3clFbS" id="5mho9GASLDT" role="3clF47">
        <node concept="3clFbF" id="5mho9GASO4S" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeudg3" role="3clFbG">
            <ref role="3cqZAo" node="2HP68CXWGx$" resolve="myProject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3YtP95zXLeH" role="jymVt">
      <property role="TrG5h" value="setModules" />
      <node concept="3cqZAl" id="3YtP95zXLeI" role="3clF45" />
      <node concept="3Tm1VV" id="3YtP95zXLeJ" role="1B3o_S" />
      <node concept="3clFbS" id="3YtP95zXLeK" role="3clF47">
        <node concept="3clFbF" id="3YtP95zXLeV" role="3cqZAp">
          <node concept="37vLTI" id="3YtP95zXLeX" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgl6x2" role="37vLTx">
              <ref role="3cqZAo" node="3YtP95zXLeL" resolve="module" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuPgY" role="37vLTJ">
              <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3YtP95zXLeL" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="6TI6RSr8U0a" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1yQON_5okWG" role="jymVt">
      <property role="TrG5h" value="getModule" />
      <node concept="3uibUv" id="1yQON_5om2M" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="1yQON_5okWJ" role="1B3o_S" />
      <node concept="3clFbS" id="1yQON_5okWK" role="3clF47">
        <node concept="3cpWs6" id="1yQON_5orrl" role="3cqZAp">
          <node concept="37vLTw" id="1yQON_5orys" role="3cqZAk">
            <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5VaNJtFGeKg" role="jymVt">
      <property role="TrG5h" value="isShowRuntime" />
      <node concept="10P_77" id="5VaNJtFGeKk" role="3clF45" />
      <node concept="3Tm1VV" id="5VaNJtFGeKi" role="1B3o_S" />
      <node concept="3clFbS" id="5VaNJtFGeKj" role="3clF47">
        <node concept="3clFbF" id="5VaNJtFGeKl" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuOQy" role="3clFbG">
            <ref role="3cqZAo" node="5VaNJtFGegX" resolve="myShowRuntime" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5VaNJtFGeJQ" role="jymVt">
      <property role="TrG5h" value="setShowRuntime" />
      <node concept="3cqZAl" id="5VaNJtFGeJR" role="3clF45" />
      <node concept="3Tm1VV" id="5VaNJtFGeJS" role="1B3o_S" />
      <node concept="3clFbS" id="5VaNJtFGeJT" role="3clF47">
        <node concept="3clFbF" id="5VaNJtFGeJW" role="3cqZAp">
          <node concept="37vLTI" id="5VaNJtFGeJY" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglnT3" role="37vLTx">
              <ref role="3cqZAo" node="5VaNJtFGeJU" resolve="showRuntime" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuyTl" role="37vLTJ">
              <ref role="3cqZAo" node="5VaNJtFGegX" resolve="myShowRuntime" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5VaNJtFGeJU" role="3clF46">
        <property role="TrG5h" value="showRuntime" />
        <node concept="10P_77" id="5VaNJtFGeJV" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="5VaNJtFGeKx" role="jymVt">
      <property role="TrG5h" value="isShowUsedLanguage" />
      <node concept="10P_77" id="5VaNJtFGeK_" role="3clF45" />
      <node concept="3Tm1VV" id="5VaNJtFGeKz" role="1B3o_S" />
      <node concept="3clFbS" id="5VaNJtFGeK$" role="3clF47">
        <node concept="3clFbF" id="5VaNJtFGeKA" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeukt$" role="3clFbG">
            <ref role="3cqZAo" node="5VaNJtFGeJK" resolve="myShowUsedLanguage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5VaNJtFGeK2" role="jymVt">
      <property role="TrG5h" value="setShowUsedLanguage" />
      <node concept="3cqZAl" id="5VaNJtFGeK3" role="3clF45" />
      <node concept="3Tm1VV" id="5VaNJtFGeK4" role="1B3o_S" />
      <node concept="3clFbS" id="5VaNJtFGeK5" role="3clF47">
        <node concept="3clFbF" id="5VaNJtFGeK8" role="3cqZAp">
          <node concept="37vLTI" id="5VaNJtFGeKa" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm7sh" role="37vLTx">
              <ref role="3cqZAo" node="5VaNJtFGeK6" resolve="showUsedLanguage" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuk0A" role="37vLTJ">
              <ref role="3cqZAo" node="5VaNJtFGeJK" resolve="myShowUsedLanguage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5VaNJtFGeK6" role="3clF46">
        <property role="TrG5h" value="showUsedLanguage" />
        <node concept="10P_77" id="5VaNJtFGeK7" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="2HP68CXWGy6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="rebuild" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="2HP68CXWGy7" role="1B3o_S" />
      <node concept="3uibUv" id="2HP68CXWX$n" role="3clF45">
        <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
      </node>
      <node concept="3clFbS" id="2HP68CXWGy9" role="3clF47">
        <node concept="3clFbJ" id="3YtP95zXLf5" role="3cqZAp">
          <node concept="3clFbC" id="3YtP95zXLfE" role="3clFbw">
            <node concept="10Nm6u" id="3YtP95zXLfH" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeunnc" role="3uHU7B">
              <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
            </node>
          </node>
          <node concept="3clFbS" id="3YtP95zXLf6" role="3clFbx">
            <node concept="3cpWs6" id="3YtP95zXLfe" role="3cqZAp">
              <node concept="2ShNRf" id="3YtP95zXLfg" role="3cqZAk">
                <node concept="1pGfFk" id="3YtP95zXLfi" role="2ShVmc">
                  <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                  <node concept="Xl_RD" id="3YtP95zXLfj" role="37wK5m">
                    <property role="Xl_RC" value="No Content" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6TI6RSr86Bg" role="3cqZAp">
          <node concept="3cpWsn" id="6TI6RSr86Bh" role="3cpWs9">
            <property role="TrG5h" value="deps" />
            <node concept="3uibUv" id="6TI6RSr86B2" role="1tU5fm">
              <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
            </node>
            <node concept="2OqwBi" id="6TI6RSr86Bi" role="33vP2m">
              <node concept="2OqwBi" id="6TI6RSra2bz" role="2Oq$k0">
                <node concept="2ShNRf" id="6TI6RSra2b$" role="2Oq$k0">
                  <node concept="1pGfFk" id="6TI6RSra2b_" role="2ShVmc">
                    <ref role="37wK5l" node="Qjxfu1vy1a" resolve="DependencyUtil" />
                    <node concept="2OqwBi" id="7yrEqDbJdXA" role="37wK5m">
                      <node concept="37vLTw" id="7yrEqDbJdC9" role="2Oq$k0">
                        <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
                      </node>
                      <node concept="liA8E" id="7yrEqDbJemf" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6TI6RSra2bA" role="2OqNvi">
                  <ref role="37wK5l" node="6TI6RSqO2N$" resolve="trackRuntime" />
                  <node concept="1rXfSq" id="6TI6RSra2bB" role="37wK5m">
                    <ref role="37wK5l" node="5VaNJtFGeKg" resolve="isShowRuntime" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6TI6RSr86Bk" role="2OqNvi">
                <ref role="37wK5l" node="6TI6RSqPYeV" resolve="build" />
                <node concept="37vLTw" id="6TI6RSra0XA" role="37wK5m">
                  <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KdzVirieF3" role="3cqZAp">
          <node concept="3cpWsn" id="3KdzVirieF4" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="3KdzVirieF5" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~TextTreeNode" resolve="TextTreeNode" />
            </node>
            <node concept="2ShNRf" id="3KdzVirifEA" role="33vP2m">
              <node concept="1pGfFk" id="3KdzVirigjW" role="2ShVmc">
                <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                <node concept="2OqwBi" id="3KdzVirigDU" role="37wK5m">
                  <node concept="37vLTw" id="3KdzVirig$1" role="2Oq$k0">
                    <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
                  </node>
                  <node concept="liA8E" id="3KdzVirigXq" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KdzVirii62" role="3cqZAp">
          <node concept="2OqwBi" id="3KdzViriiPI" role="3clFbG">
            <node concept="37vLTw" id="3KdzVirii61" role="2Oq$k0">
              <ref role="3cqZAo" node="3KdzVirieF4" resolve="root" />
            </node>
            <node concept="liA8E" id="3KdzViril1a" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTreeNode.setIcon(javax.swing.Icon)" resolve="setIcon" />
              <node concept="2OqwBi" id="3yHXoEB_2_B" role="37wK5m">
                <node concept="liA8E" id="3yHXoEB_3PK" role="2OqNvi">
                  <ref role="37wK5l" to="xnls:~BaseIconManager.getIconFor(org.jetbrains.mps.openapi.module.SModule)" resolve="getIconFor" />
                  <node concept="37vLTw" id="3yHXoEB_7a7" role="37wK5m">
                    <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
                  </node>
                </node>
                <node concept="2YIFZM" id="73i1guT_c36" role="2Oq$k0">
                  <ref role="37wK5l" to="xnls:~GlobalIconManager.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="xnls:~GlobalIconManager" resolve="GlobalIconManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KdzViripFn" role="3cqZAp">
          <node concept="1rXfSq" id="3KdzViripFm" role="3clFbG">
            <ref role="37wK5l" node="3KdzVirhV1i" resolve="populate" />
            <node concept="37vLTw" id="3KdzViriqFw" role="37wK5m">
              <ref role="3cqZAo" node="3KdzVirieF4" resolve="root" />
            </node>
            <node concept="2OqwBi" id="3KdzViriZ9X" role="37wK5m">
              <node concept="37vLTw" id="3KdzViriqVt" role="2Oq$k0">
                <ref role="3cqZAo" node="6TI6RSr86Bh" resolve="deps" />
              </node>
              <node concept="liA8E" id="3KdzViriZqj" role="2OqNvi">
                <ref role="37wK5l" node="3KdzVireOEs" resolve="allDependencies" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6TI6RSra5FZ" role="3cqZAp">
          <node concept="37vLTw" id="3KdzViriscu" role="3cqZAk">
            <ref role="3cqZAo" node="3KdzVirieF4" resolve="root" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RYbU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1c6WnGgjLTN" role="jymVt" />
    <node concept="2tJIrI" id="1c6WnGgjMSO" role="jymVt" />
    <node concept="3clFb_" id="1c6WnGgjNO0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runRebuildAction" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tmbuc" id="1c6WnGgjNO1" role="1B3o_S" />
      <node concept="3cqZAl" id="1c6WnGgjNO3" role="3clF45" />
      <node concept="37vLTG" id="1c6WnGgjNO4" role="3clF46">
        <property role="TrG5h" value="rebuildAction" />
        <node concept="3uibUv" id="1c6WnGgjNO5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="37vLTG" id="1c6WnGgjNO6" role="3clF46">
        <property role="TrG5h" value="saveExpansion" />
        <node concept="10P_77" id="1c6WnGgjNO7" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1c6WnGgjNO8" role="3clF47">
        <node concept="3clFbF" id="1c6WnGgjNOd" role="3cqZAp">
          <node concept="3nyPlj" id="1c6WnGgjNOc" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTree.runRebuildAction(java.lang.Runnable,boolean)" resolve="runRebuildAction" />
            <node concept="2ShNRf" id="1c6WnGgjQmT" role="37wK5m">
              <node concept="1pGfFk" id="1c6WnGgjYQH" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess,java.lang.Runnable)" resolve="ModelReadRunnable" />
                <node concept="2OqwBi" id="1c6WnGgkhyO" role="37wK5m">
                  <node concept="37vLTw" id="1c6WnGgkfDA" role="2Oq$k0">
                    <ref role="3cqZAo" node="2HP68CXWGx$" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="1c6WnGgkhUt" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="37vLTw" id="1c6WnGgkdHz" role="37wK5m">
                  <ref role="3cqZAo" node="1c6WnGgjNO4" resolve="rebuildAction" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1c6WnGgjNOb" role="37wK5m">
              <ref role="3cqZAo" node="1c6WnGgjNO6" resolve="saveExpansion" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1c6WnGgjNO9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1c6WnGgjM20" role="jymVt" />
    <node concept="3clFb_" id="3KdzVirhV1i" role="jymVt">
      <property role="TrG5h" value="populate" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="3KdzVirh1IJ" role="3clF45" />
      <node concept="37vLTG" id="3KdzVirh2wC" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="3KdzViriooN" role="1tU5fm">
          <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3KdzVirh4tg" role="3clF46">
        <property role="TrG5h" value="allDependencies" />
        <node concept="A3Dl8" id="3KdzViriLcm" role="1tU5fm">
          <node concept="3uibUv" id="3KdzViriMzI" role="A3Ik2">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3KdzVirh1SF" role="3clF47">
        <node concept="3cpWs8" id="3KdzVirhNcM" role="3cqZAp">
          <node concept="3cpWsn" id="3KdzVirhNcP" role="3cpWs9">
            <property role="TrG5h" value="DEPENDENCY_CYCLE" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3KdzVirhNcR" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~TreeMessage" resolve="TreeMessage" />
            </node>
            <node concept="2ShNRf" id="3KdzVirhOm3" role="33vP2m">
              <node concept="1pGfFk" id="3KdzVirhOm4" role="2ShVmc">
                <ref role="37wK5l" to="7e8u:~TreeMessage.&lt;init&gt;(java.awt.Color,java.lang.String,jetbrains.mps.ide.ui.tree.TreeMessageOwner)" resolve="TreeMessage" />
                <node concept="10M0yZ" id="7K7yXoRkPNz" role="37wK5m">
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  <ref role="3cqZAo" to="exr9:~MPSColors.RED" resolve="RED" />
                </node>
                <node concept="Xl_RD" id="3KdzVirhOm6" role="37wK5m">
                  <property role="Xl_RC" value="dependency cycle" />
                </node>
                <node concept="10Nm6u" id="3KdzVirhOm7" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3yHXoEBNyPu" role="3cqZAp">
          <node concept="3cpWsn" id="3yHXoEBNyPv" role="3cpWs9">
            <property role="TrG5h" value="HAS_CYCLE" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3yHXoEBNyPw" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~TreeMessage" resolve="TreeMessage" />
            </node>
            <node concept="2ShNRf" id="3yHXoEBNyPx" role="33vP2m">
              <node concept="1pGfFk" id="3yHXoEBNyPy" role="2ShVmc">
                <ref role="37wK5l" to="7e8u:~TreeMessage.&lt;init&gt;(java.awt.Color,java.lang.String,jetbrains.mps.ide.ui.tree.TreeMessageOwner)" resolve="TreeMessage" />
                <node concept="10M0yZ" id="7QoASCbDzgd" role="37wK5m">
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  <ref role="3cqZAo" to="exr9:~MPSColors.RED" resolve="RED" />
                </node>
                <node concept="Xl_RD" id="3yHXoEBNyP$" role="37wK5m">
                  <property role="Xl_RC" value="module with dependency cycle" />
                </node>
                <node concept="10Nm6u" id="3yHXoEBNyP_" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KdzVirhOoo" role="3cqZAp">
          <node concept="3cpWsn" id="3KdzVirhOor" role="3cpWs9">
            <property role="TrG5h" value="BOOTSTRAP_DEPENDENCY" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3KdzVirhOot" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~TreeMessage" resolve="TreeMessage" />
            </node>
            <node concept="2ShNRf" id="5rWr1P$laMu" role="33vP2m">
              <node concept="1pGfFk" id="5rWr1P$liS7" role="2ShVmc">
                <ref role="37wK5l" to="7e8u:~TreeMessage.&lt;init&gt;(java.awt.Color,java.lang.String,jetbrains.mps.ide.ui.tree.TreeMessageOwner)" resolve="TreeMessage" />
                <node concept="10M0yZ" id="5rWr1P$liS8" role="37wK5m">
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  <ref role="3cqZAo" to="exr9:~MPSColors.RED" resolve="RED" />
                </node>
                <node concept="Xl_RD" id="5rWr1P$liSa" role="37wK5m">
                  <property role="Xl_RC" value="language with bootstrap dependency" />
                </node>
                <node concept="10Nm6u" id="5rWr1P$liSn" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KdzVirhyUT" role="3cqZAp" />
        <node concept="3cpWs8" id="3KdzVirh2Od" role="3cqZAp">
          <node concept="3cpWsn" id="3KdzVirh2Oe" role="3cpWs9">
            <property role="TrG5h" value="sortedModules" />
            <node concept="A3Dl8" id="3KdzVirh2Of" role="1tU5fm">
              <node concept="3uibUv" id="7yrEqDbIYJv" role="A3Ik2">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KdzVirh2Oh" role="33vP2m">
              <node concept="2OqwBi" id="3KdzVirh2Oi" role="2Oq$k0">
                <node concept="2OqwBi" id="3KdzVirh2Oj" role="2Oq$k0">
                  <node concept="3$u5V9" id="3KdzVirh2Ol" role="2OqNvi">
                    <node concept="1bVj0M" id="3KdzVirh2Om" role="23t8la">
                      <node concept="3clFbS" id="3KdzVirh2On" role="1bW5cS">
                        <node concept="3clFbF" id="3KdzVirh2Oo" role="3cqZAp">
                          <node concept="2OqwBi" id="3KdzVirh2Op" role="3clFbG">
                            <node concept="37vLTw" id="3KdzVirh2Oq" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XlS" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="3KdzVirh2Or" role="2OqNvi">
                              <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XlS" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0XlT" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3KdzVirh6N$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KdzVirh4tg" resolve="allDependencies" />
                  </node>
                </node>
                <node concept="1VAtEI" id="3KdzVirh2Ou" role="2OqNvi" />
              </node>
              <node concept="2S7cBI" id="3KdzVirh2Ov" role="2OqNvi">
                <node concept="1bVj0M" id="3KdzVirh2Ow" role="23t8la">
                  <node concept="3clFbS" id="3KdzVirh2Ox" role="1bW5cS">
                    <node concept="3clFbF" id="3KdzVirh2Oy" role="3cqZAp">
                      <node concept="2OqwBi" id="3KdzVirh2Oz" role="3clFbG">
                        <node concept="37vLTw" id="3KdzVirh2O$" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XlU" resolve="it" />
                        </node>
                        <node concept="liA8E" id="3KdzVirh2O_" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XlU" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0XlV" role="1tU5fm" />
                  </node>
                </node>
                <node concept="1nlBCl" id="3KdzVirh2OC" role="2S7zOq">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KdzVirh2OD" role="3cqZAp" />
        <node concept="3cpWs8" id="3KdzVirh2Pj" role="3cqZAp">
          <node concept="3cpWsn" id="3KdzVirh2Pk" role="3cpWs9">
            <property role="TrG5h" value="cbDeps" />
            <node concept="3uibUv" id="3KdzVirh2Pl" role="1tU5fm">
              <ref role="3uigEE" node="3KdzVirfuIV" resolve="CycleBuilder" />
            </node>
            <node concept="2ShNRf" id="3KdzVirh2Pm" role="33vP2m">
              <node concept="1pGfFk" id="3KdzVirh2Pn" role="2ShVmc">
                <ref role="37wK5l" node="3KdzVirfw9C" resolve="CycleBuilder" />
                <node concept="2ShNRf" id="3KdzVirh2Po" role="37wK5m">
                  <node concept="YeOm9" id="3KdzVirh2Pp" role="2ShVmc">
                    <node concept="1Y3b0j" id="3KdzVirh2Pq" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="y49u:~Condition" resolve="Condition" />
                      <node concept="3Tm1VV" id="3KdzVirh2Pr" role="1B3o_S" />
                      <node concept="3clFb_" id="3KdzVirh2Ps" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="met" />
                        <property role="DiZV1" value="false" />
                        <node concept="3Tm1VV" id="3KdzVirh2Pt" role="1B3o_S" />
                        <node concept="10P_77" id="3KdzVirh2Pu" role="3clF45" />
                        <node concept="37vLTG" id="3KdzVirh2Pv" role="3clF46">
                          <property role="TrG5h" value="dl" />
                          <node concept="3uibUv" id="3KdzVirh2Pw" role="1tU5fm">
                            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="3KdzVirh2Px" role="3clF47">
                          <node concept="3clFbF" id="3KdzVirh2Py" role="3cqZAp">
                            <node concept="2OqwBi" id="3KdzVirh2Pz" role="3clFbG">
                              <node concept="2OqwBi" id="3KdzVirh2P$" role="2Oq$k0">
                                <node concept="37vLTw" id="3KdzVirh2P_" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3KdzVirh2Pv" resolve="dl" />
                                </node>
                                <node concept="2OwXpG" id="3KdzVirh2PA" role="2OqNvi">
                                  <ref role="2Oxat5" node="65vkPOiCZ8k" resolve="role" />
                                </node>
                              </node>
                              <node concept="liA8E" id="3KdzVirh2PB" role="2OqNvi">
                                <ref role="37wK5l" node="3jefwWMZ5VM" resolve="isDependency" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="3KdzVirh2PC" role="2Ghqu4">
                        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3KdzVirh2OE" role="3cqZAp">
          <node concept="2GrKxI" id="3KdzVirh2OF" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="37vLTw" id="3KdzVirh2OG" role="2GsD0m">
            <ref role="3cqZAo" node="3KdzVirh2Oe" resolve="sortedModules" />
          </node>
          <node concept="3clFbS" id="3KdzVirh2OH" role="2LFqv$">
            <node concept="3cpWs8" id="3KdzVirh2OI" role="3cqZAp">
              <node concept="3cpWsn" id="3KdzVirh2OJ" role="3cpWs9">
                <property role="TrG5h" value="moduleDeps" />
                <node concept="A3Dl8" id="3KdzVirh2OK" role="1tU5fm">
                  <node concept="3uibUv" id="3KdzVirh2OL" role="A3Ik2">
                    <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3KdzVirh2OM" role="33vP2m">
                  <node concept="37vLTw" id="3KdzVirh9Sw" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KdzVirh4tg" resolve="allDependencies" />
                  </node>
                  <node concept="3zZkjj" id="3KdzVirh2OO" role="2OqNvi">
                    <node concept="1bVj0M" id="3KdzVirh2OP" role="23t8la">
                      <node concept="3clFbS" id="3KdzVirh2OQ" role="1bW5cS">
                        <node concept="3clFbF" id="3KdzVirh2OR" role="3cqZAp">
                          <node concept="1Wc70l" id="3KdzVirh2OS" role="3clFbG">
                            <node concept="2OqwBi" id="3KdzVirh2OU" role="3uHU7w">
                              <node concept="37vLTw" id="3KdzVirh2OV" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0XlW" resolve="it" />
                              </node>
                              <node concept="liA8E" id="4Hi6aYlcWFq" role="2OqNvi">
                                <ref role="37wK5l" node="4Hi6aYlbZtD" resolve="isDependencyRole" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="67kAnwJUUMD" role="3uHU7B">
                              <node concept="2GrUjf" id="67kAnwJUSCX" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="3KdzVirh2OF" resolve="module" />
                              </node>
                              <node concept="liA8E" id="67kAnwJUV$E" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                <node concept="2OqwBi" id="67kAnwJUZTu" role="37wK5m">
                                  <node concept="37vLTw" id="67kAnwJUXM2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XlW" resolve="it" />
                                  </node>
                                  <node concept="2OwXpG" id="67kAnwJV0x9" role="2OqNvi">
                                    <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XlW" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0XlX" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3KdzVirh2P5" role="3cqZAp">
              <node concept="3clFbS" id="3KdzVirh2P6" role="3clFbx">
                <node concept="3N13vt" id="3KdzVirh2P7" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="3KdzVirh2P8" role="3clFbw">
                <node concept="37vLTw" id="3KdzVirh2P9" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KdzVirh2OJ" resolve="moduleDeps" />
                </node>
                <node concept="1v1jN8" id="3KdzVirh2Pa" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs8" id="3KdzVirh2Pb" role="3cqZAp">
              <node concept="3cpWsn" id="3KdzVirh2Pc" role="3cpWs9">
                <property role="TrG5h" value="n" />
                <node concept="3uibUv" id="3KdzVirh2Pd" role="1tU5fm">
                  <ref role="3uigEE" node="3YtP95zXIo3" resolve="ModuleDependencyNode" />
                </node>
                <node concept="2ShNRf" id="3KdzVirh2Pe" role="33vP2m">
                  <node concept="1pGfFk" id="3KdzVirh2Pf" role="2ShVmc">
                    <ref role="37wK5l" node="1tGIPqPKo7Z" resolve="ModuleDependencyNode" />
                    <node concept="2GrUjf" id="3KdzVirh2Pg" role="37wK5m">
                      <ref role="2Gs0qQ" node="3KdzVirh2OF" resolve="module" />
                    </node>
                    <node concept="2OqwBi" id="4Hi6aYla5iV" role="37wK5m">
                      <node concept="37vLTw" id="3KdzVirh2Ph" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KdzVirh2OJ" resolve="moduleDeps" />
                      </node>
                      <node concept="1VAtEI" id="4Hi6aYla9i2" role="2OqNvi" />
                    </node>
                    <node concept="3clFbT" id="3KdzVirh2Pi" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7deq$1uHEwE" role="3cqZAp">
              <node concept="2OqwBi" id="7deq$1uHEwF" role="3clFbG">
                <node concept="37vLTw" id="7deq$1uHEwG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KdzVirh2Pc" resolve="n" />
                </node>
                <node concept="liA8E" id="7deq$1uHEwH" role="2OqNvi">
                  <ref role="37wK5l" node="7deq$1uHcZj" resolve="updateIcon" />
                  <node concept="2OqwBi" id="7deq$1uHEwI" role="37wK5m">
                    <node concept="37vLTw" id="7deq$1uHEwJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
                    </node>
                    <node concept="liA8E" id="7deq$1uHEwK" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3yHXoEBNAaU" role="3cqZAp">
              <node concept="3clFbS" id="3yHXoEBNAaW" role="3clFbx">
                <node concept="3SKdUt" id="4Hi6aYldsdZ" role="3cqZAp">
                  <node concept="1PaTwC" id="4Hi6aYldse0" role="1aUNEU">
                    <node concept="3oM_SD" id="4Hi6aYldse1" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYlduX0" role="1PaTwD">
                      <property role="3oM_SC" value="could" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYlduXU" role="1PaTwD">
                      <property role="3oM_SC" value="get" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYlduYf" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYlduYk" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYlduZg" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldv1_" role="1PaTwD">
                      <property role="3oM_SC" value="module" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldv3E" role="1PaTwD">
                      <property role="3oM_SC" value="dependency" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldv44" role="1PaTwD">
                      <property role="3oM_SC" value="through" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldv54" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldv5f" role="1PaTwD">
                      <property role="3oM_SC" value="path" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldv6y" role="1PaTwD">
                      <property role="3oM_SC" value="which" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldv8X" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldv9s" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldvaM" role="1PaTwD">
                      <property role="3oM_SC" value="necessarily" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldvdM" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldvfa" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="4Hi6aYldzHL" role="3cqZAp">
                  <node concept="1PaTwC" id="4Hi6aYldzHM" role="1aUNEU">
                    <node concept="3oM_SD" id="4Hi6aYld_tJ" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;proper&quot;" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYld_yZ" role="1PaTwD">
                      <property role="3oM_SC" value="dependency." />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldB4t" role="1PaTwD">
                      <property role="3oM_SC" value="E.g." />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldB5n" role="1PaTwD">
                      <property role="3oM_SC" value="generator" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldB8L" role="1PaTwD">
                      <property role="3oM_SC" value="owned" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBb5" role="1PaTwD">
                      <property role="3oM_SC" value="by" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBbI" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBbQ" role="1PaTwD">
                      <property role="3oM_SC" value="language" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBd6" role="1PaTwD">
                      <property role="3oM_SC" value="depends" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBg0" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBhz" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBi_" role="1PaTwD">
                      <property role="3oM_SC" value="language" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBiM" role="1PaTwD">
                      <property role="3oM_SC" value="(&quot;proper&quot;)" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldBmQ" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="4Hi6aYldBpj" role="3cqZAp">
                  <node concept="1PaTwC" id="4Hi6aYldBp3" role="1aUNEU">
                    <node concept="3oM_SD" id="4Hi6aYldBp2" role="1PaTwD">
                      <property role="3oM_SC" value="dependency," />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldErV" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEsP" role="1PaTwD">
                      <property role="3oM_SC" value="at" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEsT" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEsY" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEtU" role="1PaTwD">
                      <property role="3oM_SC" value="time" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEui" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEvw" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEvU" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;owned" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldExs" role="1PaTwD">
                      <property role="3oM_SC" value="generator&quot;" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEyI" role="1PaTwD">
                      <property role="3oM_SC" value="relation," />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldE$i" role="1PaTwD">
                      <property role="3oM_SC" value="which" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEBq" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEBC" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEDe" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldEFr" role="1PaTwD">
                      <property role="3oM_SC" value="dependency" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="4Hi6aYldJ68" role="3cqZAp">
                  <node concept="1PaTwC" id="4Hi6aYldJ69" role="1aUNEU">
                    <node concept="3oM_SD" id="4Hi6aYldK8T" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldLYu" role="1PaTwD">
                      <property role="3oM_SC" value="module's" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldK8V" role="1PaTwD">
                      <property role="3oM_SC" value="load/run." />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldM12" role="1PaTwD">
                      <property role="3oM_SC" value="With" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldM3l" role="1PaTwD">
                      <property role="3oM_SC" value="ancestors" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldM5j" role="1PaTwD">
                      <property role="3oM_SC" value="check," />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldM6x" role="1PaTwD">
                      <property role="3oM_SC" value="make" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldM81" role="1PaTwD">
                      <property role="3oM_SC" value="sure" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldM8r" role="1PaTwD">
                      <property role="3oM_SC" value="'cycle'" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldMcZ" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldMda" role="1PaTwD">
                      <property role="3oM_SC" value="reported" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldMec" role="1PaTwD">
                      <property role="3oM_SC" value="only" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldMff" role="1PaTwD">
                      <property role="3oM_SC" value="when" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldMgP" role="1PaTwD">
                      <property role="3oM_SC" value="complete" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="4Hi6aYldQBU" role="3cqZAp">
                  <node concept="1PaTwC" id="4Hi6aYldQBV" role="1aUNEU">
                    <node concept="3oM_SD" id="4Hi6aYldT7Q" role="1PaTwD">
                      <property role="3oM_SC" value="path" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldT7S" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldT93" role="1PaTwD">
                      <property role="3oM_SC" value="through" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldTbR" role="1PaTwD">
                      <property role="3oM_SC" value="&quot;proper&quot;" />
                    </node>
                    <node concept="3oM_SD" id="4Hi6aYldTfy" role="1PaTwD">
                      <property role="3oM_SC" value="dependencies" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4Hi6aYlde9P" role="3cqZAp">
                  <node concept="3clFbS" id="4Hi6aYlde9R" role="3clFbx">
                    <node concept="3clFbF" id="3yHXoEBNTc0" role="3cqZAp">
                      <node concept="2OqwBi" id="3yHXoEBNTqv" role="3clFbG">
                        <node concept="37vLTw" id="3yHXoEBNTbY" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KdzVirh2Pc" resolve="n" />
                        </node>
                        <node concept="liA8E" id="3yHXoEBNUlC" role="2OqNvi">
                          <ref role="37wK5l" to="7e8u:~MPSTreeNode.addTreeMessage(jetbrains.mps.ide.ui.tree.TreeMessage)" resolve="addTreeMessage" />
                          <node concept="37vLTw" id="3yHXoEBNYzO" role="37wK5m">
                            <ref role="3cqZAo" node="3KdzVirhNcP" resolve="DEPENDENCY_CYCLE" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4Hi6aYlayDo" role="3clFbw">
                    <node concept="37vLTw" id="4Hi6aYlavT$" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KdzVirh2OJ" resolve="moduleDeps" />
                    </node>
                    <node concept="2HwmR7" id="4Hi6aYlaAsG" role="2OqNvi">
                      <node concept="1bVj0M" id="4Hi6aYlaAsI" role="23t8la">
                        <node concept="3clFbS" id="4Hi6aYlaAsJ" role="1bW5cS">
                          <node concept="3clFbF" id="4Hi6aYlaGBQ" role="3cqZAp">
                            <node concept="2OqwBi" id="4Hi6aYlcpzr" role="3clFbG">
                              <node concept="2OqwBi" id="4Hi6aYlaI5E" role="2Oq$k0">
                                <node concept="37vLTw" id="4Hi6aYlaGBP" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4Hi6aYlaAsK" resolve="it" />
                                </node>
                                <node concept="liA8E" id="4Hi6aYlcmjP" role="2OqNvi">
                                  <ref role="37wK5l" node="4Hi6aYlaUvJ" resolve="ancestors" />
                                </node>
                              </node>
                              <node concept="2HxqBE" id="4Hi6aYlct$u" role="2OqNvi">
                                <node concept="1bVj0M" id="4Hi6aYlct$w" role="23t8la">
                                  <node concept="3clFbS" id="4Hi6aYlct$x" role="1bW5cS">
                                    <node concept="3clFbF" id="4Hi6aYlcC0i" role="3cqZAp">
                                      <node concept="2OqwBi" id="4Hi6aYlcF9e" role="3clFbG">
                                        <node concept="37vLTw" id="4Hi6aYlcC0h" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4Hi6aYlct$y" resolve="it2" />
                                        </node>
                                        <node concept="liA8E" id="4Hi6aYlcIFc" role="2OqNvi">
                                          <ref role="37wK5l" node="4Hi6aYlbZtD" resolve="isDependencyRole" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="4Hi6aYlct$y" role="1bW2Oz">
                                    <property role="TrG5h" value="it2" />
                                    <node concept="2jxLKc" id="4Hi6aYlct$z" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4Hi6aYlaAsK" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4Hi6aYlaAsL" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="722Vpodg6ry" role="3clFbw">
                <node concept="2GrUjf" id="3yHXoEBNC4A" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="3KdzVirh2OF" resolve="module" />
                </node>
                <node concept="liA8E" id="722Vpodg72S" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="722Vpodg3vf" role="37wK5m">
                    <node concept="37vLTw" id="3yHXoEBNKHl" role="2Oq$k0">
                      <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
                    </node>
                    <node concept="liA8E" id="722Vpodg4ez" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3yHXoEBNN_8" role="9aQIa">
                <node concept="3clFbS" id="3yHXoEBNN_9" role="9aQI4">
                  <node concept="3SKdUt" id="3KdzVirh2PD" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXorUy" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXorUz" role="1PaTwD">
                        <property role="3oM_SC" value="if" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorU$" role="1PaTwD">
                        <property role="3oM_SC" value="there's" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorU_" role="1PaTwD">
                        <property role="3oM_SC" value="any" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUA" role="1PaTwD">
                        <property role="3oM_SC" value="dependency" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUB" role="1PaTwD">
                        <property role="3oM_SC" value="with" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUC" role="1PaTwD">
                        <property role="3oM_SC" value="loop" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUD" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUE" role="1PaTwD">
                        <property role="3oM_SC" value="itself," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUF" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUG" role="1PaTwD">
                        <property role="3oM_SC" value="role" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUH" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUI" role="1PaTwD">
                        <property role="3oM_SC" value="each" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUJ" role="1PaTwD">
                        <property role="3oM_SC" value="element" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUK" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUL" role="1PaTwD">
                        <property role="3oM_SC" value="this" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUM" role="1PaTwD">
                        <property role="3oM_SC" value="path" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUN" role="1PaTwD">
                        <property role="3oM_SC" value="isDependency," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUO" role="1PaTwD">
                        <property role="3oM_SC" value="then" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUP" role="1PaTwD">
                        <property role="3oM_SC" value="it's" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUQ" role="1PaTwD">
                        <property role="3oM_SC" value="dependency" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUR" role="1PaTwD">
                        <property role="3oM_SC" value="cycle" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4rTwHtpVaG_" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXorUS" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXorUT" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUU" role="1PaTwD">
                        <property role="3oM_SC" value="NOTE," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUV" role="1PaTwD">
                        <property role="3oM_SC" value="selectMany" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUW" role="1PaTwD">
                        <property role="3oM_SC" value="ends" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUX" role="1PaTwD">
                        <property role="3oM_SC" value="up" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUY" role="1PaTwD">
                        <property role="3oM_SC" value="as" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorUZ" role="1PaTwD">
                        <property role="3oM_SC" value="TranslatingSequence," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV0" role="1PaTwD">
                        <property role="3oM_SC" value="it" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV1" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV2" role="1PaTwD">
                        <property role="3oM_SC" value="don't" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV3" role="1PaTwD">
                        <property role="3oM_SC" value="want" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV4" role="1PaTwD">
                        <property role="3oM_SC" value="cycles" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV5" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV6" role="1PaTwD">
                        <property role="3oM_SC" value="be" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV7" role="1PaTwD">
                        <property role="3oM_SC" value="recalculated" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV8" role="1PaTwD">
                        <property role="3oM_SC" value="again" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorV9" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVa" role="1PaTwD">
                        <property role="3oM_SC" value="again" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVb" role="1PaTwD">
                        <property role="3oM_SC" value="on" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVc" role="1PaTwD">
                        <property role="3oM_SC" value="any" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4rTwHtpVaPX" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXorVd" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXorVe" role="1PaTwD">
                        <property role="3oM_SC" value="ModuleDependencyNode.isLeaf" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVf" role="1PaTwD">
                        <property role="3oM_SC" value="call," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVg" role="1PaTwD">
                        <property role="3oM_SC" value="shall" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVh" role="1PaTwD">
                        <property role="3oM_SC" value="keep" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVi" role="1PaTwD">
                        <property role="3oM_SC" value="it" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVj" role="1PaTwD">
                        <property role="3oM_SC" value="calculated" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVk" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVl" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVm" role="1PaTwD">
                        <property role="3oM_SC" value="collection" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVn" role="1PaTwD">
                        <property role="3oM_SC" value="once" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVo" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVp" role="1PaTwD">
                        <property role="3oM_SC" value="for" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVq" role="1PaTwD">
                        <property role="3oM_SC" value="all" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVr" role="1PaTwD">
                        <property role="3oM_SC" value="(e.g." />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVs" role="1PaTwD">
                        <property role="3oM_SC" value="with" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorVt" role="1PaTwD">
                        <property role="3oM_SC" value="toList)" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3KdzVirk8Be" role="3cqZAp">
                    <node concept="3cpWsn" id="3KdzVirk8Bf" role="3cpWs9">
                      <property role="TrG5h" value="cycles" />
                      <node concept="_YKpA" id="4rTwHtpV8tr" role="1tU5fm">
                        <node concept="3uibUv" id="4rTwHtpV8tt" role="_ZDj9">
                          <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4rTwHtpV6pW" role="33vP2m">
                        <node concept="2OqwBi" id="3KdzVirk8Bg" role="2Oq$k0">
                          <node concept="3goQfb" id="3KdzVirk8Bi" role="2OqNvi">
                            <node concept="1bVj0M" id="3KdzVirk8Bj" role="23t8la">
                              <node concept="3clFbS" id="3KdzVirk8Bk" role="1bW5cS">
                                <node concept="3clFbF" id="3KdzVirk8Bl" role="3cqZAp">
                                  <node concept="2OqwBi" id="3KdzVirk8Bm" role="3clFbG">
                                    <node concept="37vLTw" id="3KdzVirk8Bn" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3KdzVirh2Pk" resolve="cbDeps" />
                                    </node>
                                    <node concept="liA8E" id="3KdzVirk8Bo" role="2OqNvi">
                                      <ref role="37wK5l" node="3KdzVirfAma" resolve="cyclePaths" />
                                      <node concept="37vLTw" id="3KdzVirk8Bp" role="37wK5m">
                                        <ref role="3cqZAo" node="5W7E4fV0XlY" resolve="dep" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0XlY" role="1bW2Oz">
                                <property role="TrG5h" value="dep" />
                                <node concept="2jxLKc" id="5W7E4fV0XlZ" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4Hi6aYleDCM" role="2Oq$k0">
                            <node concept="37vLTw" id="3KdzVirk8Bh" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KdzVirh2OJ" resolve="moduleDeps" />
                            </node>
                            <node concept="1VAtEI" id="4Hi6aYleHHv" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="ANE8D" id="4rTwHtpV6zJ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3KdzVirh2PF" role="3cqZAp">
                    <node concept="3clFbS" id="3KdzVirh2PG" role="3clFbx">
                      <node concept="3clFbF" id="3KdzVirh2PH" role="3cqZAp">
                        <node concept="2OqwBi" id="3KdzVirh2PI" role="3clFbG">
                          <node concept="37vLTw" id="3KdzVirh2PJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KdzVirh2Pc" resolve="n" />
                          </node>
                          <node concept="liA8E" id="3KdzVirh2PK" role="2OqNvi">
                            <ref role="37wK5l" node="Qjxfu1vRet" resolve="setCycles" />
                            <node concept="37vLTw" id="3KdzVirkqjB" role="37wK5m">
                              <ref role="3cqZAo" node="3KdzVirk8Bf" resolve="cycles" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3KdzVirh2PL" role="3cqZAp">
                        <node concept="2OqwBi" id="3KdzVirh2PM" role="3clFbG">
                          <node concept="37vLTw" id="3KdzVirh2PN" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KdzVirh2Pc" resolve="n" />
                          </node>
                          <node concept="liA8E" id="3KdzVirh2PO" role="2OqNvi">
                            <ref role="37wK5l" to="7e8u:~MPSTreeNode.addTreeMessage(jetbrains.mps.ide.ui.tree.TreeMessage)" resolve="addTreeMessage" />
                            <node concept="37vLTw" id="2n6i2$sh664" role="37wK5m">
                              <ref role="3cqZAo" node="3yHXoEBNyPv" resolve="HAS_CYCLE" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3KdzVirkaru" role="3clFbw">
                      <node concept="37vLTw" id="3KdzVirkade" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KdzVirk8Bf" resolve="cycles" />
                      </node>
                      <node concept="3GX2aA" id="3KdzVirkb8r" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KdzVirhc5C" role="3cqZAp">
              <node concept="2OqwBi" id="3KdzVirhcHx" role="3clFbG">
                <node concept="37vLTw" id="3KdzVirhc5B" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KdzVirh2wC" resolve="root" />
                </node>
                <node concept="liA8E" id="3KdzVirheUx" role="2OqNvi">
                  <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                  <node concept="37vLTw" id="3KdzVirheWF" role="37wK5m">
                    <ref role="3cqZAo" node="3KdzVirh2Pc" resolve="n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KdzVirh2Qg" role="3cqZAp">
          <node concept="3clFbS" id="3KdzVirh2Qh" role="3clFbx">
            <node concept="3cpWs8" id="3KdzVirh2Qi" role="3cqZAp">
              <node concept="3cpWsn" id="3KdzVirh2Qj" role="3cpWs9">
                <property role="TrG5h" value="usedlanguages" />
                <node concept="3uibUv" id="3KdzVirh2Qk" role="1tU5fm">
                  <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                </node>
                <node concept="2ShNRf" id="3KdzVirh2Ql" role="33vP2m">
                  <node concept="1pGfFk" id="3KdzVirh2Qm" role="2ShVmc">
                    <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                    <node concept="Xl_RD" id="3KdzVirh2Qn" role="37wK5m">
                      <property role="Xl_RC" value="Used Languages" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3KdzVirh2R5" role="3cqZAp">
              <node concept="3cpWsn" id="3KdzVirh2R6" role="3cpWs9">
                <property role="TrG5h" value="cbUsedLang" />
                <node concept="3uibUv" id="3KdzVirh2R7" role="1tU5fm">
                  <ref role="3uigEE" node="3KdzVirfuIV" resolve="CycleBuilder" />
                </node>
                <node concept="2ShNRf" id="3KdzVirh2R8" role="33vP2m">
                  <node concept="1pGfFk" id="3KdzVirh2R9" role="2ShVmc">
                    <ref role="37wK5l" node="3KdzVirfw9C" resolve="CycleBuilder" />
                    <node concept="2ShNRf" id="3KdzVirh2Ra" role="37wK5m">
                      <node concept="YeOm9" id="3KdzVirh2Rb" role="2ShVmc">
                        <node concept="1Y3b0j" id="3KdzVirh2Rc" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="y49u:~Condition" resolve="Condition" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3Tm1VV" id="3KdzVirh2Rd" role="1B3o_S" />
                          <node concept="3clFb_" id="3KdzVirh2Re" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="met" />
                            <property role="DiZV1" value="false" />
                            <node concept="3Tm1VV" id="3KdzVirh2Rf" role="1B3o_S" />
                            <node concept="10P_77" id="3KdzVirh2Rg" role="3clF45" />
                            <node concept="37vLTG" id="3KdzVirh2Rh" role="3clF46">
                              <property role="TrG5h" value="dl" />
                              <node concept="3uibUv" id="3KdzVirh2Ri" role="1tU5fm">
                                <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="3KdzVirh2Rj" role="3clF47">
                              <node concept="3clFbF" id="3KdzVirh2Rk" role="3cqZAp">
                                <node concept="2OqwBi" id="3KdzVirh2Rl" role="3clFbG">
                                  <node concept="2OqwBi" id="3KdzVirh2Rm" role="2Oq$k0">
                                    <node concept="37vLTw" id="3KdzVirh2Rn" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3KdzVirh2Rh" resolve="dl" />
                                    </node>
                                    <node concept="2OwXpG" id="3KdzVirh2Ro" role="2OqNvi">
                                      <ref role="2Oxat5" node="65vkPOiCZ8k" resolve="role" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3KdzVirh2Rp" role="2OqNvi">
                                    <ref role="37wK5l" node="3jefwWMZ5UI" resolve="isUsedLanguage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="3KdzVirh2Rq" role="2Ghqu4">
                            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="3KdzVirh2Qs" role="3cqZAp">
              <node concept="2GrKxI" id="3KdzVirh2Qt" role="2Gsz3X">
                <property role="TrG5h" value="module" />
              </node>
              <node concept="37vLTw" id="3KdzVirh2Qu" role="2GsD0m">
                <ref role="3cqZAo" node="3KdzVirh2Oe" resolve="sortedModules" />
              </node>
              <node concept="3clFbS" id="3KdzVirh2Qv" role="2LFqv$">
                <node concept="3cpWs8" id="3KdzVirh2Qw" role="3cqZAp">
                  <node concept="3cpWsn" id="3KdzVirh2Qx" role="3cpWs9">
                    <property role="TrG5h" value="usedLangDeps" />
                    <node concept="A3Dl8" id="3KdzVirh2Qy" role="1tU5fm">
                      <node concept="3uibUv" id="3KdzVirh2Qz" role="A3Ik2">
                        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3KdzVirh2Q$" role="33vP2m">
                      <node concept="37vLTw" id="3KdzVirhS4K" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KdzVirh4tg" resolve="allDependencies" />
                      </node>
                      <node concept="3zZkjj" id="3KdzVirh2QA" role="2OqNvi">
                        <node concept="1bVj0M" id="3KdzVirh2QB" role="23t8la">
                          <node concept="3clFbS" id="3KdzVirh2QC" role="1bW5cS">
                            <node concept="3clFbF" id="3KdzVirh2QD" role="3cqZAp">
                              <node concept="1Wc70l" id="3KdzVirh2QE" role="3clFbG">
                                <node concept="2OqwBi" id="3KdzVirh2QF" role="3uHU7w">
                                  <node concept="2OqwBi" id="3KdzVirh2QG" role="2Oq$k0">
                                    <node concept="37vLTw" id="3KdzVirh2QH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Xm0" resolve="it" />
                                    </node>
                                    <node concept="2OwXpG" id="3KdzVirh2QI" role="2OqNvi">
                                      <ref role="2Oxat5" node="65vkPOiCZ8k" resolve="role" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3KdzVirh2QJ" role="2OqNvi">
                                    <ref role="37wK5l" node="3jefwWMZ5UI" resolve="isUsedLanguage" />
                                  </node>
                                </node>
                                <node concept="3clFbC" id="3KdzVirh2QK" role="3uHU7B">
                                  <node concept="2OqwBi" id="3KdzVirh2QL" role="3uHU7B">
                                    <node concept="37vLTw" id="3KdzVirh2QM" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Xm0" resolve="it" />
                                    </node>
                                    <node concept="2OwXpG" id="3KdzVirh2QN" role="2OqNvi">
                                      <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                                    </node>
                                  </node>
                                  <node concept="2GrUjf" id="3KdzVirh2QO" role="3uHU7w">
                                    <ref role="2Gs0qQ" node="3KdzVirh2Qt" resolve="module" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0Xm0" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0Xm1" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3KdzVirh2QR" role="3cqZAp">
                  <node concept="3clFbS" id="3KdzVirh2QS" role="3clFbx">
                    <node concept="3N13vt" id="3KdzVirh2QT" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="3KdzVirh2QU" role="3clFbw">
                    <node concept="37vLTw" id="3KdzVirh2QV" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KdzVirh2Qx" resolve="usedLangDeps" />
                    </node>
                    <node concept="1v1jN8" id="3KdzVirh2QW" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3cpWs8" id="3KdzVirh2QX" role="3cqZAp">
                  <node concept="3cpWsn" id="3KdzVirh2QY" role="3cpWs9">
                    <property role="TrG5h" value="n" />
                    <node concept="3uibUv" id="3KdzVirh2QZ" role="1tU5fm">
                      <ref role="3uigEE" node="3YtP95zXIo3" resolve="ModuleDependencyNode" />
                    </node>
                    <node concept="2ShNRf" id="3KdzVirh2R0" role="33vP2m">
                      <node concept="1pGfFk" id="3KdzVirh2R1" role="2ShVmc">
                        <ref role="37wK5l" node="1tGIPqPKo7Z" resolve="ModuleDependencyNode" />
                        <node concept="2GrUjf" id="3KdzVirh2R2" role="37wK5m">
                          <ref role="2Gs0qQ" node="3KdzVirh2Qt" resolve="module" />
                        </node>
                        <node concept="37vLTw" id="3KdzVirh2R3" role="37wK5m">
                          <ref role="3cqZAo" node="3KdzVirh2Qx" resolve="usedLangDeps" />
                        </node>
                        <node concept="3clFbT" id="3KdzVirh2R4" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7deq$1uHA5y" role="3cqZAp">
                  <node concept="2OqwBi" id="7deq$1uHAkr" role="3clFbG">
                    <node concept="37vLTw" id="7deq$1uHA5w" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KdzVirh2QY" resolve="n" />
                    </node>
                    <node concept="liA8E" id="7deq$1uHCJU" role="2OqNvi">
                      <ref role="37wK5l" node="7deq$1uHcZj" resolve="updateIcon" />
                      <node concept="2OqwBi" id="7deq$1uHDDe" role="37wK5m">
                        <node concept="37vLTw" id="7deq$1uHDkH" role="2Oq$k0">
                          <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
                        </node>
                        <node concept="liA8E" id="7deq$1uHDYn" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4gccZmaK0QT" role="3cqZAp">
                  <node concept="3clFbS" id="4gccZmaK0QV" role="3clFbx">
                    <node concept="3clFbF" id="4gccZmaKe6q" role="3cqZAp">
                      <node concept="2OqwBi" id="4gccZmaKe6r" role="3clFbG">
                        <node concept="37vLTw" id="4gccZmaKe6s" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KdzVirh2QY" resolve="n" />
                        </node>
                        <node concept="liA8E" id="4gccZmaKe6t" role="2OqNvi">
                          <ref role="37wK5l" to="7e8u:~MPSTreeNode.addTreeMessage(jetbrains.mps.ide.ui.tree.TreeMessage)" resolve="addTreeMessage" />
                          <node concept="37vLTw" id="4gccZmaKe6u" role="37wK5m">
                            <ref role="3cqZAo" node="3KdzVirhOor" resolve="BOOTSTRAP_DEPENDENCY" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4gccZmaK4i9" role="3clFbw">
                    <node concept="2GrUjf" id="4gccZmaK2AK" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3KdzVirh2Qt" resolve="module" />
                    </node>
                    <node concept="liA8E" id="4gccZmaK4IN" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="4gccZmaKbNa" role="37wK5m">
                        <node concept="37vLTw" id="4gccZmaK91O" role="2Oq$k0">
                          <ref role="3cqZAo" node="3YtP95zXLeP" resolve="myModule" />
                        </node>
                        <node concept="liA8E" id="4gccZmaKe12" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="4gccZmaKi92" role="9aQIa">
                    <node concept="3clFbS" id="4gccZmaKi93" role="9aQI4">
                      <node concept="3cpWs8" id="3KdzVirktH9" role="3cqZAp">
                        <node concept="3cpWsn" id="3KdzVirktHa" role="3cpWs9">
                          <property role="TrG5h" value="cycles" />
                          <node concept="A3Dl8" id="3KdzVirktGN" role="1tU5fm">
                            <node concept="3uibUv" id="3KdzVirktGQ" role="A3Ik2">
                              <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3KdzVirktHb" role="33vP2m">
                            <node concept="37vLTw" id="3KdzVirktHc" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KdzVirh2Qx" resolve="usedLangDeps" />
                            </node>
                            <node concept="3goQfb" id="3KdzVirktHd" role="2OqNvi">
                              <node concept="1bVj0M" id="3KdzVirktHe" role="23t8la">
                                <node concept="3clFbS" id="3KdzVirktHf" role="1bW5cS">
                                  <node concept="3clFbF" id="3KdzVirktHg" role="3cqZAp">
                                    <node concept="2OqwBi" id="3KdzVirktHh" role="3clFbG">
                                      <node concept="37vLTw" id="3KdzVirktHi" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3KdzVirh2R6" resolve="cbUsedLang" />
                                      </node>
                                      <node concept="liA8E" id="3KdzVirktHj" role="2OqNvi">
                                        <ref role="37wK5l" node="3KdzVirfAma" resolve="cyclePaths" />
                                        <node concept="37vLTw" id="3KdzVirktHk" role="37wK5m">
                                          <ref role="3cqZAo" node="5W7E4fV0Xm2" resolve="dep" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0Xm2" role="1bW2Oz">
                                  <property role="TrG5h" value="dep" />
                                  <node concept="2jxLKc" id="5W7E4fV0Xm3" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3KdzVirh2Rr" role="3cqZAp">
                        <node concept="3clFbS" id="3KdzVirh2Rs" role="3clFbx">
                          <node concept="3clFbF" id="3KdzVirh2Rx" role="3cqZAp">
                            <node concept="2OqwBi" id="3KdzVirh2Ry" role="3clFbG">
                              <node concept="37vLTw" id="3KdzVirh2Rz" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KdzVirh2QY" resolve="n" />
                              </node>
                              <node concept="liA8E" id="3KdzVirh2R$" role="2OqNvi">
                                <ref role="37wK5l" node="Qjxfu1vRet" resolve="setCycles" />
                                <node concept="37vLTw" id="3KdzVirkvyR" role="37wK5m">
                                  <ref role="3cqZAo" node="3KdzVirktHa" resolve="cycles" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3KdzVirh2R_" role="3cqZAp">
                            <node concept="2OqwBi" id="3KdzVirh2RA" role="3clFbG">
                              <node concept="37vLTw" id="3KdzVirh2RB" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KdzVirh2QY" resolve="n" />
                              </node>
                              <node concept="liA8E" id="3KdzVirh2RC" role="2OqNvi">
                                <ref role="37wK5l" to="7e8u:~MPSTreeNode.addTreeMessage(jetbrains.mps.ide.ui.tree.TreeMessage)" resolve="addTreeMessage" />
                                <node concept="37vLTw" id="3KdzVirhR8c" role="37wK5m">
                                  <ref role="3cqZAo" node="3KdzVirhOor" resolve="BOOTSTRAP_DEPENDENCY" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3KdzVirkuOn" role="3clFbw">
                          <node concept="37vLTw" id="3KdzVirkuDb" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KdzVirktHa" resolve="cycles" />
                          </node>
                          <node concept="3GX2aA" id="3KdzVirkvxA" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3KdzVirh2RR" role="3cqZAp">
                  <node concept="2OqwBi" id="3KdzVirh2RS" role="3clFbG">
                    <node concept="37vLTw" id="3KdzVirh2RT" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KdzVirh2Qj" resolve="usedlanguages" />
                    </node>
                    <node concept="liA8E" id="3KdzVirh2RU" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="37vLTw" id="3KdzVirh2RV" role="37wK5m">
                        <ref role="3cqZAo" node="3KdzVirh2QY" resolve="n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3KdzVirh2S3" role="3cqZAp">
              <node concept="3clFbS" id="3KdzVirh2S4" role="3clFbx">
                <node concept="3clFbF" id="3KdzVirhZzW" role="3cqZAp">
                  <node concept="2OqwBi" id="3KdzVirhZGT" role="3clFbG">
                    <node concept="37vLTw" id="3KdzVirhZzV" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KdzVirh2wC" resolve="root" />
                    </node>
                    <node concept="liA8E" id="3KdzViri1oW" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="37vLTw" id="3KdzViri1rw" role="37wK5m">
                        <ref role="3cqZAo" node="3KdzVirh2Qj" resolve="usedlanguages" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="3KdzVirh2S8" role="3clFbw">
                <node concept="3cmrfG" id="3KdzVirh2S9" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="3KdzVirh2Sa" role="3uHU7B">
                  <node concept="37vLTw" id="3KdzVirh2Sb" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KdzVirh2Qj" resolve="usedlanguages" />
                  </node>
                  <node concept="liA8E" id="3KdzVirh2Sc" role="2OqNvi">
                    <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.getChildCount()" resolve="getChildCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="3KdzVirhXok" role="3clFbw">
            <ref role="37wK5l" node="5VaNJtFGeKx" resolve="isShowUsedLanguage" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3KdzVirh1bY" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="2HP68CXWGz3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createPopupActionGroup" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="2HP68CXWGz4" role="1B3o_S" />
      <node concept="3uibUv" id="1F70I3uJVM7" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
      </node>
      <node concept="37vLTG" id="2HP68CXWGz6" role="3clF46">
        <property role="TrG5h" value="treeNode" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2HP68CXWX$o" role="1tU5fm">
          <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
        </node>
      </node>
      <node concept="3clFbS" id="2HP68CXWGz8" role="3clF47">
        <node concept="3clFbF" id="1F70I3uKdh8" role="3cqZAp">
          <node concept="2YIFZM" id="3qzvyg2VtXM" role="3clFbG">
            <ref role="1Pybhc" to="7bx7:~ActionUtils" resolve="ActionUtils" />
            <ref role="37wK5l" to="7bx7:~ActionUtils.groupFromActions(com.intellij.openapi.actionSystem.AnAction...)" resolve="groupFromActions" />
            <node concept="3$FdUm" id="2Fydl1Eeg$O" role="37wK5m">
              <ref role="3$FpRE" to="pwkq:2Fydl1EdN_l" resolve="ShowDependenciesInViewer" />
            </node>
            <node concept="3$FdUm" id="3KdzVirj9MN" role="37wK5m">
              <ref role="3$FpRE" to="pwkq:4K0u7uB3viW" resolve="AnalyzeModuleDependencies" />
            </node>
            <node concept="3$FdUm" id="3qzvyg2VtXN" role="37wK5m">
              <ref role="3$FpRE" to="tprs:hGANgqU" resolve="ModuleProperties" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2HP68CXWGzR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3qzvyg2VtUP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getData" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3qzvyg2VtUQ" role="1B3o_S" />
      <node concept="3uibUv" id="3qzvyg2VtUR" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="3qzvyg2VtUS" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="2AHcQZ" id="3qzvyg2VtUU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
        <node concept="17QB3L" id="B8hVAdko0h" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="3qzvyg2VtUV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3qzvyg2VtUW" role="3clF47">
        <node concept="3clFbJ" id="7deq$1uHWr_" role="3cqZAp">
          <node concept="3clFbS" id="7deq$1uHWrB" role="3clFbx">
            <node concept="3cpWs6" id="7deq$1uHYGo" role="3cqZAp">
              <node concept="10Nm6u" id="7deq$1uHZ0c" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="7deq$1uIbZi" role="3clFbw">
            <node concept="2ZW3vV" id="7deq$1uIbZk" role="3fr31v">
              <node concept="3uibUv" id="7deq$1uIbZl" role="2ZW6by">
                <ref role="3uigEE" node="3YtP95zXIo3" resolve="ModuleDependencyNode" />
              </node>
              <node concept="1rXfSq" id="7deq$1uIbZm" role="2ZW6bz">
                <ref role="37wK5l" to="7e8u:~MPSTree.getCurrentNode()" resolve="getCurrentNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3qzvyg2VtXl" role="3cqZAp">
          <node concept="3cpWsn" id="3qzvyg2VtXm" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="3qzvyg2VtXn" role="1tU5fm">
              <ref role="3uigEE" node="3YtP95zXIo3" resolve="ModuleDependencyNode" />
            </node>
            <node concept="10QFUN" id="7deq$1uIgOA" role="33vP2m">
              <node concept="3uibUv" id="7deq$1uIh$r" role="10QFUM">
                <ref role="3uigEE" node="3YtP95zXIo3" resolve="ModuleDependencyNode" />
              </node>
              <node concept="1rXfSq" id="4hiugqyz8lx" role="10QFUP">
                <ref role="37wK5l" to="7e8u:~MPSTree.getCurrentNode()" resolve="getCurrentNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1FNI8ZlsyGB" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="1FNI8ZlsyGC" role="3clFbx">
            <node concept="3cpWs6" id="1FNI8ZlsyGM" role="3cqZAp">
              <node concept="37vLTw" id="7deq$1uIiR4" role="3cqZAk">
                <ref role="3cqZAo" node="3qzvyg2VtXm" resolve="current" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5EpuqcIKpJK" role="3clFbw">
            <node concept="10M0yZ" id="1FNI8ZlsyGL" role="2Oq$k0">
              <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
              <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
            </node>
            <node concept="liA8E" id="5EpuqcIKrMT" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataKey.is(java.lang.String)" resolve="is" />
              <node concept="37vLTw" id="5EpuqcIKwlz" role="37wK5m">
                <ref role="3cqZAo" node="3qzvyg2VtUS" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3qzvyg2VtXu" role="3cqZAp">
          <node concept="3clFbS" id="3qzvyg2VtX_" role="3clFbx">
            <node concept="3cpWs6" id="tudvW8QFiR" role="3cqZAp">
              <node concept="2YIFZM" id="5EpuqcIKWRu" role="3cqZAk">
                <ref role="37wK5l" to="qq03:~SModuleActionData.from(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="from" />
                <ref role="1Pybhc" to="qq03:~SModuleActionData" resolve="SModuleActionData" />
                <node concept="2OqwBi" id="7deq$1uHZDx" role="37wK5m">
                  <node concept="37vLTw" id="3GM_nagTsZ3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3qzvyg2VtXm" resolve="current" />
                  </node>
                  <node concept="liA8E" id="tudvW8PENm" role="2OqNvi">
                    <ref role="37wK5l" node="6TI6RSrpMqO" resolve="getModule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5EpuqcIK6P_" role="3clFbw">
            <node concept="10M0yZ" id="5EpuqcIL9mt" role="2Oq$k0">
              <ref role="3cqZAo" to="qq03:~SModuleActionData.KEY" resolve="KEY" />
              <ref role="1PxDUh" to="qq03:~SModuleActionData" resolve="SModuleActionData" />
            </node>
            <node concept="liA8E" id="5EpuqcIK99Q" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataKey.is(java.lang.String)" resolve="is" />
              <node concept="37vLTw" id="5EpuqcIKe87" role="37wK5m">
                <ref role="3cqZAo" node="3qzvyg2VtUS" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="PZcUJwN6I_" role="3cqZAp">
          <node concept="10Nm6u" id="3qzvyg2VtUY" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RYbT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="109zu4DcKs8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doInit" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tmbuc" id="109zu4DcKs9" role="1B3o_S" />
      <node concept="3cqZAl" id="109zu4DcKsb" role="3clF45" />
      <node concept="37vLTG" id="109zu4DcKsc" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="109zu4DcKsd" role="1tU5fm">
          <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
        </node>
      </node>
      <node concept="37vLTG" id="109zu4DcKse" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="3uibUv" id="109zu4DcKsf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="109zu4DcKsg" role="3clF47">
        <node concept="3clFbF" id="109zu4DcKsl" role="3cqZAp">
          <node concept="3nyPlj" id="109zu4DcKsk" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTree.doInit(jetbrains.mps.ide.ui.tree.MPSTreeNode,java.lang.Runnable)" resolve="doInit" />
            <node concept="37vLTw" id="109zu4DcKsi" role="37wK5m">
              <ref role="3cqZAo" node="109zu4DcKsc" resolve="node" />
            </node>
            <node concept="2ShNRf" id="109zu4DcMcT" role="37wK5m">
              <node concept="1pGfFk" id="109zu4DcQef" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess,java.lang.Runnable)" resolve="ModelReadRunnable" />
                <node concept="2OqwBi" id="109zu4DcUPN" role="37wK5m">
                  <node concept="37vLTw" id="1aCYpOWFLIO" role="2Oq$k0">
                    <ref role="3cqZAo" node="2HP68CXWGx$" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="109zu4DcUXO" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="37vLTw" id="109zu4DcW8q" role="37wK5m">
                  <ref role="3cqZAo" node="109zu4DcKse" resolve="runnable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="109zu4DcKsh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2HP68CXWGD6">
    <property role="TrG5h" value="DependencyTreeNode" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="3GE5qa" value="view1" />
    <node concept="312cEg" id="6Hf3JtD50km" role="jymVt">
      <property role="TrG5h" value="myLink" />
      <node concept="3Tm6S6" id="6Hf3JtD50kn" role="1B3o_S" />
      <node concept="3uibUv" id="6Hf3JtD50kq" role="1tU5fm">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
    </node>
    <node concept="312cEg" id="5CsY6KdL7h4" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3Tm6S6" id="5CsY6KdL7h5" role="1B3o_S" />
      <node concept="3uibUv" id="1aCYpOWEYpw" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="3clFbW" id="6Hf3JtD50kA" role="jymVt">
      <node concept="37vLTG" id="5CsY6KdL1ba" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="1aCYpOWEXZR" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6Hf3JtD50kB" role="1B3o_S" />
      <node concept="3clFbS" id="6Hf3JtD50kJ" role="3clF47">
        <node concept="XkiVB" id="6Hf3JtD50kK" role="3cqZAp">
          <ref role="37wK5l" to="7e8u:~MPSTreeNode.&lt;init&gt;(java.lang.Object)" resolve="MPSTreeNode" />
          <node concept="37vLTw" id="2BHiRxgmv3L" role="37wK5m">
            <ref role="3cqZAo" node="6Hf3JtD50kD" resolve="link" />
          </node>
        </node>
        <node concept="3clFbF" id="6Hf3JtD50kN" role="3cqZAp">
          <node concept="37vLTI" id="6Hf3JtD50kO" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm7An" role="37vLTx">
              <ref role="3cqZAo" node="6Hf3JtD50kD" resolve="link" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuF52" role="37vLTJ">
              <ref role="3cqZAo" node="6Hf3JtD50km" resolve="myLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5CsY6KdL7h8" role="3cqZAp">
          <node concept="37vLTI" id="5CsY6KdL7ha" role="3clFbG">
            <node concept="37vLTw" id="5CsY6KdLd4z" role="37vLTJ">
              <ref role="3cqZAo" node="5CsY6KdL7h4" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="5CsY6KdL7hi" role="37vLTx">
              <ref role="3cqZAo" node="5CsY6KdL1ba" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Hf3JtD50kV" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzbQ7" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTreeNode.setIcon(javax.swing.Icon)" resolve="setIcon" />
            <node concept="2OqwBi" id="7eHFHBM_YlA" role="37wK5m">
              <node concept="2YIFZM" id="7eHFHBM_Y5e" role="2Oq$k0">
                <ref role="1Pybhc" to="xnls:~GlobalIconManager" resolve="GlobalIconManager" />
                <ref role="37wK5l" to="xnls:~GlobalIconManager.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7eHFHBM_Z6Y" role="2OqNvi">
                <ref role="37wK5l" to="xnls:~BaseIconManager.getIconFor(org.jetbrains.mps.openapi.module.SModule)" resolve="getIconFor" />
                <node concept="1rXfSq" id="7eHFHBMA52X" role="37wK5m">
                  <ref role="37wK5l" node="2HP68CXWGDf" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5$a$9Y876LF" role="3cqZAp">
          <node concept="3cpWsn" id="5$a$9Y876LG" role="3cpWs9">
            <property role="TrG5h" value="linktype" />
            <node concept="3K4zz7" id="5$a$9Y876LT" role="33vP2m">
              <node concept="3clFbC" id="5$a$9Y876LP" role="3K4Cdx">
                <node concept="2OqwBi" id="5$a$9Y876LK" role="3uHU7B">
                  <node concept="2OwXpG" id="5$a$9Y876LO" role="2OqNvi">
                    <ref role="2Oxat5" node="65vkPOiCZ8q" resolve="linktype" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm6nl" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Hf3JtD50kD" resolve="link" />
                  </node>
                </node>
                <node concept="10Nm6u" id="5$a$9Y876LS" role="3uHU7w" />
              </node>
              <node concept="3cpWs3" id="5$a$9Y876LY" role="3K4GZi">
                <node concept="Xl_RD" id="5$a$9Y876LZ" role="3uHU7w">
                  <property role="Xl_RC" value="&lt;/i&gt; " />
                </node>
                <node concept="3cpWs3" id="69Nk_7Zq5CT" role="3uHU7B">
                  <node concept="2OqwBi" id="5$a$9Y876M0" role="3uHU7w">
                    <node concept="2OqwBi" id="5$a$9Y876M1" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxgheif" role="2Oq$k0">
                        <ref role="3cqZAo" node="6Hf3JtD50kD" resolve="link" />
                      </node>
                      <node concept="2OwXpG" id="5$a$9Y876M3" role="2OqNvi">
                        <ref role="2Oxat5" node="65vkPOiCZ8q" resolve="linktype" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5$a$9Y876M4" role="2OqNvi">
                      <ref role="37wK5l" node="3pZ6JG2c$vh" resolve="toString" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="69Nk_7Zq5CW" role="3uHU7B">
                    <property role="Xl_RC" value="&lt;i&gt;" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="5$a$9Y876LX" role="3K4E3e">
                <property role="Xl_RC" value="" />
              </node>
            </node>
            <node concept="17QB3L" id="5$a$9Y876LH" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="6Hf3JtD50kZ" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8MW" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTreeNode.setNodeIdentifier(java.lang.String)" resolve="setNodeIdentifier" />
            <node concept="3cpWs3" id="6Hf3JtD50l1" role="37wK5m">
              <node concept="2OqwBi" id="75gf1bhG9dp" role="3uHU7w">
                <node concept="liA8E" id="75gf1bhG9dq" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                </node>
                <node concept="2OqwBi" id="75gf1bhG9dr" role="2Oq$k0">
                  <node concept="2OwXpG" id="75gf1bhG9ds" role="2OqNvi">
                    <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm8Cm" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Hf3JtD50kD" resolve="link" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="69Nk_7Zq5CY" role="3uHU7B">
                <node concept="2OwXpG" id="69Nk_7Zq5D2" role="2OqNvi">
                  <ref role="2Oxat5" node="65vkPOiCZ8q" resolve="linktype" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmkki" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Hf3JtD50kD" resolve="link" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Hf3JtD50l6" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzffm" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTreeNode.setText(java.lang.String)" resolve="setText" />
            <node concept="3cpWs3" id="6Hf3JtD50l8" role="37wK5m">
              <node concept="3cpWs3" id="6Hf3JtD50l9" role="3uHU7B">
                <node concept="2OqwBi" id="75gf1bhG9dD" role="3uHU7w">
                  <node concept="liA8E" id="75gf1bhG9dE" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                  </node>
                  <node concept="2OqwBi" id="75gf1bhG9dF" role="2Oq$k0">
                    <node concept="2OwXpG" id="75gf1bhG9dG" role="2OqNvi">
                      <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgmuY5" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Hf3JtD50kD" resolve="link" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="2htM_wHYoRF" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTyW7" role="3uHU7w">
                    <ref role="3cqZAo" node="5$a$9Y876LG" resolve="linktype" />
                  </node>
                  <node concept="Xl_RD" id="6Hf3JtD50ld" role="3uHU7B">
                    <property role="Xl_RC" value="&lt;html&gt;" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="6Hf3JtD50lk" role="3uHU7w">
                <property role="Xl_RC" value="&lt;/html&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6Hf3JtD50kD" role="3clF46">
        <property role="TrG5h" value="link" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6Hf3JtD50ll" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="3cqZAl" id="6Hf3JtD50kC" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6Hf3JtD50kr" role="jymVt">
      <property role="TrG5h" value="getLink" />
      <node concept="3clFbS" id="6Hf3JtD50ku" role="3clF47">
        <node concept="3clFbF" id="6Hf3JtD50kw" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeujPI" role="3clFbG">
            <ref role="3cqZAo" node="6Hf3JtD50km" resolve="myLink" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6Hf3JtD50kv" role="3clF45">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
      <node concept="3Tm1VV" id="6Hf3JtD50kt" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1aCYpOWF1F9" role="jymVt">
      <property role="TrG5h" value="getModuleReference" />
      <node concept="3uibUv" id="1aCYpOWF2lM" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="3Tm1VV" id="1aCYpOWF1Fc" role="1B3o_S" />
      <node concept="3clFbS" id="1aCYpOWF1Fd" role="3clF47">
        <node concept="3cpWs6" id="1aCYpOWFlxb" role="3cqZAp">
          <node concept="2OqwBi" id="1aCYpOWFnjD" role="3cqZAk">
            <node concept="37vLTw" id="1aCYpOWFmop" role="2Oq$k0">
              <ref role="3cqZAo" node="6Hf3JtD50km" resolve="myLink" />
            </node>
            <node concept="2OwXpG" id="1aCYpOWFnSc" role="2OqNvi">
              <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2HP68CXWGDf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModule" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2HP68CXWGDi" role="3clF47">
        <node concept="3cpWs8" id="4fBbqzdIr3x" role="3cqZAp">
          <node concept="3cpWsn" id="4fBbqzdIr3y" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4fBbqzdIr3w" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="4fBbqzdIpck" role="3cqZAp">
          <node concept="1QHqEC" id="4fBbqzdIpcm" role="1QHqEI">
            <node concept="3clFbS" id="4fBbqzdIpco" role="1bW5cS">
              <node concept="3clFbF" id="4fBbqzdIrlL" role="3cqZAp">
                <node concept="37vLTI" id="4fBbqzdIrlN" role="3clFbG">
                  <node concept="2OqwBi" id="4fBbqzdIr3z" role="37vLTx">
                    <node concept="2OqwBi" id="4fBbqzdIr3$" role="2Oq$k0">
                      <node concept="37vLTw" id="4fBbqzdIr3_" role="2Oq$k0">
                        <ref role="3cqZAo" node="6Hf3JtD50km" resolve="myLink" />
                      </node>
                      <node concept="2OwXpG" id="4fBbqzdIr3A" role="2OqNvi">
                        <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4fBbqzdIr3B" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                      <node concept="2OqwBi" id="4fBbqzdIr3C" role="37wK5m">
                        <node concept="37vLTw" id="4fBbqzdIr3D" role="2Oq$k0">
                          <ref role="3cqZAo" node="5CsY6KdL7h4" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="4fBbqzdIr3E" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4fBbqzdIrlR" role="37vLTJ">
                    <ref role="3cqZAo" node="4fBbqzdIr3y" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4fBbqzdIqzO" role="ukAjM">
            <node concept="37vLTw" id="4fBbqzdIq06" role="2Oq$k0">
              <ref role="3cqZAo" node="5CsY6KdL7h4" resolve="myProject" />
            </node>
            <node concept="liA8E" id="4fBbqzdIqLH" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2htM_wHYnpW" role="3cqZAp">
          <node concept="37vLTw" id="4fBbqzdIr3F" role="3clFbG">
            <ref role="3cqZAo" node="4fBbqzdIr3y" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2HP68CXWGDh" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="2HP68CXWGDg" role="1B3o_S" />
      <node concept="P$JXv" id="1aCYpOWFom_" role="lGtFl">
        <node concept="TZ5HI" id="1aCYpOWFomA" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsBS8" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBS9" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsBSa" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsBSb" role="1Vtduc">
                <node concept="VXe0Z" id="1aCYpOWF$Pl" role="1VuXuu">
                  <ref role="VXe0S" node="1aCYpOWF1F9" resolve="getModuleReference" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsBSe" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsBSf" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBSg" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBSh" role="1PaTwD">
              <property role="3oM_SC" value="(otherwise" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBSi" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBSj" role="1PaTwD">
              <property role="3oM_SC" value="hidden" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBSk" role="1PaTwD">
              <property role="3oM_SC" value="assumption" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBSl" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBSm" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBSn" role="1PaTwD">
              <property role="3oM_SC" value="access)" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1aCYpOWFomC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="3clFb_" id="7cMANkukC8M" role="jymVt">
      <property role="TrG5h" value="setDepLeaf" />
      <node concept="3cqZAl" id="7cMANkukC8N" role="3clF45" />
      <node concept="3clFbS" id="7cMANkukC8P" role="3clF47">
        <node concept="3cpWs8" id="69Nk_7Zq5D3" role="3cqZAp">
          <node concept="3cpWsn" id="69Nk_7Zq5D4" role="3cpWs9">
            <property role="TrG5h" value="linktype" />
            <node concept="17QB3L" id="69Nk_7Zq5D5" role="1tU5fm" />
            <node concept="3K4zz7" id="69Nk_7Zq5D6" role="33vP2m">
              <node concept="3clFbC" id="69Nk_7Zq5D8" role="3K4Cdx">
                <node concept="10Nm6u" id="69Nk_7Zq5D9" role="3uHU7w" />
                <node concept="2OqwBi" id="69Nk_7Zq5Da" role="3uHU7B">
                  <node concept="2OwXpG" id="69Nk_7Zq5Dc" role="2OqNvi">
                    <ref role="2Oxat5" node="65vkPOiCZ8q" resolve="linktype" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuhiX" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Hf3JtD50km" resolve="myLink" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="69Nk_7Zq5Dd" role="3K4GZi">
                <node concept="Xl_RD" id="69Nk_7Zq5De" role="3uHU7w">
                  <property role="Xl_RC" value="&lt;/i&gt; " />
                </node>
                <node concept="3cpWs3" id="69Nk_7Zq5Df" role="3uHU7B">
                  <node concept="2OqwBi" id="69Nk_7Zq5Dh" role="3uHU7w">
                    <node concept="2OqwBi" id="69Nk_7Zq5Di" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxeudb1" role="2Oq$k0">
                        <ref role="3cqZAo" node="6Hf3JtD50km" resolve="myLink" />
                      </node>
                      <node concept="2OwXpG" id="69Nk_7Zq5Dk" role="2OqNvi">
                        <ref role="2Oxat5" node="65vkPOiCZ8q" resolve="linktype" />
                      </node>
                    </node>
                    <node concept="liA8E" id="69Nk_7Zq5Dl" role="2OqNvi">
                      <ref role="37wK5l" node="3pZ6JG2c$vh" resolve="toString" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="69Nk_7Zq5Dg" role="3uHU7B">
                    <property role="Xl_RC" value="&lt;i&gt;" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="69Nk_7Zq5D7" role="3K4E3e">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cMANkukC9J" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzk6l" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTreeNode.setText(java.lang.String)" resolve="setText" />
            <node concept="3cpWs3" id="7cMANkukC9L" role="37wK5m">
              <node concept="3cpWs3" id="7cMANkukC9M" role="3uHU7B">
                <node concept="2OqwBi" id="75gf1bhG9cg" role="3uHU7w">
                  <node concept="liA8E" id="75gf1bhG9ch" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                  </node>
                  <node concept="2OqwBi" id="75gf1bhG9ci" role="2Oq$k0">
                    <node concept="2OwXpG" id="75gf1bhG9cj" role="2OqNvi">
                      <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxeuw_2" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Hf3JtD50km" resolve="myLink" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="7cMANkukC9N" role="3uHU7B">
                  <node concept="3cpWs3" id="7cMANkukC9O" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTrjj" role="3uHU7w">
                      <ref role="3cqZAo" node="69Nk_7Zq5D4" resolve="linktype" />
                    </node>
                    <node concept="Xl_RD" id="7cMANkukC9R" role="3uHU7B">
                      <property role="Xl_RC" value="&lt;html&gt;" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7cMANkukC9T" role="3uHU7w">
                    <property role="Xl_RC" value="&lt;b&gt;" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="7cMANkukC9Z" role="3uHU7w">
                <property role="Xl_RC" value="&lt;/b&gt;&lt;/html&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7cMANkukC8O" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="5ZjmYHJbkq0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doubleClick" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5ZjmYHJbkq1" role="1B3o_S" />
      <node concept="3clFbS" id="5ZjmYHJbkq3" role="3clF47">
        <node concept="3clFbF" id="1aCYpOWDGdn" role="3cqZAp">
          <node concept="2OqwBi" id="1aCYpOWE7I$" role="3clFbG">
            <node concept="2ShNRf" id="1aCYpOWDGdj" role="2Oq$k0">
              <node concept="1pGfFk" id="1aCYpOWE6Vw" role="2ShVmc">
                <ref role="37wK5l" to="kz9k:~ProjectPaneNavigator.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="ProjectPaneNavigator" />
                <node concept="37vLTw" id="1aCYpOWFDG1" role="37wK5m">
                  <ref role="3cqZAo" node="5CsY6KdL7h4" resolve="myProject" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1aCYpOWE81k" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~ProjectPaneNavigator.select(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="select" />
              <node concept="2OqwBi" id="1aCYpOWE8V0" role="37wK5m">
                <node concept="37vLTw" id="1aCYpOWE8rj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Hf3JtD50km" resolve="myLink" />
                </node>
                <node concept="2OwXpG" id="1aCYpOWE9cQ" role="2OqNvi">
                  <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5ZjmYHJbkq2" role="3clF45" />
      <node concept="2AHcQZ" id="3tYsUK_RVm5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2HP68CXWGD7" role="1B3o_S" />
    <node concept="3uibUv" id="2HP68CXWZmd" role="1zkMxy">
      <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
    </node>
  </node>
  <node concept="312cEu" id="3YtP95zXIo3">
    <property role="TrG5h" value="ModuleDependencyNode" />
    <property role="3GE5qa" value="view1" />
    <node concept="3Tm1VV" id="3YtP95zXIo4" role="1B3o_S" />
    <node concept="3uibUv" id="3YtP95zXJ02" role="1zkMxy">
      <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
    </node>
    <node concept="312cEg" id="7aBUyauZVGo" role="jymVt">
      <property role="TrG5h" value="myInitialized" />
      <node concept="3Tm6S6" id="7aBUyauZVGp" role="1B3o_S" />
      <node concept="10P_77" id="7aBUyauZY6T" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="Qjxfu1vRep" role="jymVt">
      <property role="TrG5h" value="myCycles" />
      <node concept="A3Dl8" id="3KdzVirkfiT" role="1tU5fm">
        <node concept="3uibUv" id="3KdzVirkfF5" role="A3Ik2">
          <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
        </node>
      </node>
      <node concept="3Tm6S6" id="Qjxfu1vReq" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1tGIPqPLrjq" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModule" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1tGIPqPLo1t" role="1B3o_S" />
      <node concept="3uibUv" id="7yrEqDbJthC" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
    <node concept="312cEg" id="1tGIPqPLwYA" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIsUsedLang" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1tGIPqPLvpT" role="1B3o_S" />
      <node concept="10P_77" id="1tGIPqPLwY$" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="1tGIPqPKo7Z" role="jymVt">
      <node concept="3cqZAl" id="1tGIPqPKo81" role="3clF45" />
      <node concept="3clFbS" id="1tGIPqPKo83" role="3clF47">
        <node concept="3SKdUt" id="1tGIPqPLiV4" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorVu" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorVv" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVw" role="1PaTwD">
              <property role="3oM_SC" value="serves" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVx" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVy" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVz" role="1PaTwD">
              <property role="3oM_SC" value="target" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorV$" role="1PaTwD">
              <property role="3oM_SC" value="(dependencies" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorV_" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVA" role="1PaTwD">
              <property role="3oM_SC" value="captured" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVB" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVC" role="1PaTwD">
              <property role="3oM_SC" value="relations" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVD" role="1PaTwD">
              <property role="3oM_SC" value="sequence)" />
            </node>
          </node>
        </node>
        <node concept="XkiVB" id="1tGIPqPLQPy" role="3cqZAp">
          <ref role="37wK5l" to="7e8u:~MPSTreeNode.&lt;init&gt;(java.lang.Object)" resolve="MPSTreeNode" />
          <node concept="2OqwBi" id="1tGIPqPLRsE" role="37wK5m">
            <node concept="37vLTw" id="1tGIPqPLR2l" role="2Oq$k0">
              <ref role="3cqZAo" node="1tGIPqPKqb_" resolve="relations" />
            </node>
            <node concept="ANE8D" id="1tGIPqPLSSs" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1tGIPqPLtjc" role="3cqZAp">
          <node concept="37vLTI" id="1tGIPqPLtkq" role="3clFbG">
            <node concept="37vLTw" id="1tGIPqPLtmW" role="37vLTx">
              <ref role="3cqZAo" node="1tGIPqPKq98" resolve="module" />
            </node>
            <node concept="37vLTw" id="1tGIPqPLtjb" role="37vLTJ">
              <ref role="3cqZAo" node="1tGIPqPLrjq" resolve="myModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1tGIPqPLz5g" role="3cqZAp">
          <node concept="37vLTI" id="1tGIPqPLzhD" role="3clFbG">
            <node concept="37vLTw" id="1tGIPqPLztx" role="37vLTx">
              <ref role="3cqZAo" node="1tGIPqPKqpH" resolve="isUsedLanguage" />
            </node>
            <node concept="37vLTw" id="1tGIPqPLz5f" role="37vLTJ">
              <ref role="3cqZAo" node="1tGIPqPLwYA" resolve="myIsUsedLang" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1tGIPqPLzIi" role="3cqZAp">
          <node concept="1rXfSq" id="1tGIPqPLzIj" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTreeNode.setText(java.lang.String)" resolve="setText" />
            <node concept="2OqwBi" id="1tGIPqPLzIk" role="37wK5m">
              <node concept="37vLTw" id="1tGIPqPL$oJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1tGIPqPKq98" resolve="module" />
              </node>
              <node concept="liA8E" id="1tGIPqPLzIo" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1tGIPqPLzIP" role="3cqZAp">
          <node concept="1rXfSq" id="1tGIPqPLzIQ" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTreeNode.setNodeIdentifier(java.lang.String)" resolve="setNodeIdentifier" />
            <node concept="2OqwBi" id="1tGIPqPL_N6" role="37wK5m">
              <node concept="37vLTw" id="1tGIPqPL_N7" role="2Oq$k0">
                <ref role="3cqZAo" node="1tGIPqPKq98" resolve="module" />
              </node>
              <node concept="liA8E" id="1tGIPqPL_N8" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1tGIPqPKq98" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7yrEqDbJoe7" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
      <node concept="37vLTG" id="1tGIPqPKqb_" role="3clF46">
        <property role="TrG5h" value="relations" />
        <node concept="A3Dl8" id="1tGIPqPKqi0" role="1tU5fm">
          <node concept="3uibUv" id="1tGIPqPKqou" role="A3Ik2">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1tGIPqPKqpH" role="3clF46">
        <property role="TrG5h" value="isUsedLanguage" />
        <node concept="10P_77" id="1tGIPqPKqvX" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="7deq$1uHcZj" role="jymVt">
      <property role="TrG5h" value="updateIcon" />
      <node concept="3cqZAl" id="7deq$1uHcZl" role="3clF45" />
      <node concept="3clFbS" id="7deq$1uHcZn" role="3clF47">
        <node concept="3cpWs8" id="7deq$1uHk_C" role="3cqZAp">
          <node concept="3cpWsn" id="7deq$1uHk_D" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="7deq$1uHk_A" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="7deq$1uHk_E" role="33vP2m">
              <node concept="37vLTw" id="7deq$1uHk_F" role="2Oq$k0">
                <ref role="3cqZAo" node="1tGIPqPLrjq" resolve="myModule" />
              </node>
              <node concept="liA8E" id="7deq$1uHk_G" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                <node concept="37vLTw" id="7deq$1uHk_H" role="37wK5m">
                  <ref role="3cqZAo" node="7deq$1uHiTZ" resolve="repo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7deq$1uHkLr" role="3cqZAp">
          <node concept="3clFbS" id="7deq$1uHkLt" role="3clFbx">
            <node concept="3clFbF" id="7deq$1uHkWo" role="3cqZAp">
              <node concept="1rXfSq" id="7deq$1uHkWm" role="3clFbG">
                <ref role="37wK5l" to="7e8u:~MPSTreeNode.setIcon(javax.swing.Icon)" resolve="setIcon" />
                <node concept="10M0yZ" id="7deq$1uHl2y" role="37wK5m">
                  <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
                  <ref role="3cqZAo" to="xnls:~IdeIcons.DEFAULT_ICON" resolve="DEFAULT_ICON" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7deq$1uHkQk" role="3clFbw">
            <node concept="10Nm6u" id="7deq$1uHkRR" role="3uHU7w" />
            <node concept="37vLTw" id="7deq$1uHkOu" role="3uHU7B">
              <ref role="3cqZAo" node="7deq$1uHk_D" resolve="m" />
            </node>
          </node>
          <node concept="9aQIb" id="7deq$1uHl4w" role="9aQIa">
            <node concept="3clFbS" id="7deq$1uHl4x" role="9aQI4">
              <node concept="3clFbF" id="7deq$1uHl9C" role="3cqZAp">
                <node concept="1rXfSq" id="7deq$1uHl9B" role="3clFbG">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.setIcon(javax.swing.Icon)" resolve="setIcon" />
                  <node concept="2OqwBi" id="7eHFHBMA66A" role="37wK5m">
                    <node concept="2YIFZM" id="7eHFHBMA66B" role="2Oq$k0">
                      <ref role="1Pybhc" to="xnls:~GlobalIconManager" resolve="GlobalIconManager" />
                      <ref role="37wK5l" to="xnls:~GlobalIconManager.getInstance()" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="7eHFHBMA66C" role="2OqNvi">
                      <ref role="37wK5l" to="xnls:~BaseIconManager.getIconFor(org.jetbrains.mps.openapi.module.SModule)" resolve="getIconFor" />
                      <node concept="37vLTw" id="7eHFHBMA70z" role="37wK5m">
                        <ref role="3cqZAo" node="7deq$1uHk_D" resolve="m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7deq$1uHiTZ" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="7deq$1uHiTY" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6TI6RSrpMqO" role="jymVt">
      <property role="TrG5h" value="getModule" />
      <node concept="3uibUv" id="7deq$1uHuwx" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="3Tm1VV" id="6TI6RSrpMqR" role="1B3o_S" />
      <node concept="3clFbS" id="6TI6RSrpMqS" role="3clF47">
        <node concept="3cpWs6" id="7deq$1uHw_e" role="3cqZAp">
          <node concept="37vLTw" id="7deq$1uHxnG" role="3cqZAk">
            <ref role="3cqZAo" node="1tGIPqPLrjq" resolve="myModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6TI6RSqXJL7" role="jymVt">
      <property role="TrG5h" value="getCapturedDependencies" />
      <node concept="A3Dl8" id="1tGIPqPLU9A" role="3clF45">
        <node concept="3uibUv" id="1tGIPqPLWvx" role="A3Ik2">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="3clFbS" id="6TI6RSqXJLb" role="3clF47">
        <node concept="3cpWs6" id="6TI6RSqYYMK" role="3cqZAp">
          <node concept="10QFUN" id="6TI6RSqZpdK" role="3cqZAk">
            <node concept="A3Dl8" id="1tGIPqPLYP_" role="10QFUM">
              <node concept="3uibUv" id="1tGIPqPM0ZU" role="A3Ik2">
                <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
              </node>
            </node>
            <node concept="1rXfSq" id="6TI6RSqZ4fI" role="10QFUP">
              <ref role="37wK5l" to="7e8u:~MPSTreeNode.getUserObject()" resolve="getUserObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1tGIPqPMxOb" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBSo" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBSp" role="1PaTwD">
            <property role="3oM_SC" value="Module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSq" role="1PaTwD">
            <property role="3oM_SC" value="associated" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSr" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSs" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSt" role="1PaTwD">
            <property role="3oM_SC" value="node" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSu" role="1PaTwD">
            <property role="3oM_SC" value="might" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSv" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSw" role="1PaTwD">
            <property role="3oM_SC" value="target" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSx" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSy" role="1PaTwD">
            <property role="3oM_SC" value="few" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSz" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS$" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS_" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSA" role="1PaTwD">
            <property role="3oM_SC" value="initial" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSB" role="1PaTwD">
            <property role="3oM_SC" value="module." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5dWvMyuy2We" role="jymVt">
      <property role="TrG5h" value="isUsedLanguage" />
      <node concept="10P_77" id="5dWvMyuy2Wi" role="3clF45" />
      <node concept="3Tm1VV" id="5dWvMyuy2Wg" role="1B3o_S" />
      <node concept="3clFbS" id="5dWvMyuy2Wh" role="3clF47">
        <node concept="3clFbF" id="1tGIPqPLyYc" role="3cqZAp">
          <node concept="37vLTw" id="1tGIPqPLyYb" role="3clFbG">
            <ref role="3cqZAo" node="1tGIPqPLwYA" resolve="myIsUsedLang" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="Qjxfu1vRet" role="jymVt">
      <property role="TrG5h" value="setCycles" />
      <node concept="37vLTG" id="3KdzVirkekV" role="3clF46">
        <property role="TrG5h" value="cycles" />
        <node concept="A3Dl8" id="3KdzVirkekT" role="1tU5fm">
          <node concept="3uibUv" id="3KdzVirkffg" role="A3Ik2">
            <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="Qjxfu1vReu" role="3clF45" />
      <node concept="3clFbS" id="Qjxfu1vRew" role="3clF47">
        <node concept="3clFbF" id="Qjxfu1vRex" role="3cqZAp">
          <node concept="37vLTI" id="Qjxfu1vRez" role="3clFbG">
            <node concept="37vLTw" id="3KdzVirkgzl" role="37vLTx">
              <ref role="3cqZAo" node="3KdzVirkekV" resolve="cycles" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuF8i" role="37vLTJ">
              <ref role="3cqZAo" node="Qjxfu1vRep" resolve="myCycles" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1FNI8ZlszpC" role="jymVt">
      <property role="TrG5h" value="isCyclic" />
      <node concept="10P_77" id="1FNI8ZlszpG" role="3clF45" />
      <node concept="3Tm1VV" id="1FNI8ZlszpE" role="1B3o_S" />
      <node concept="3clFbS" id="1FNI8ZlszpF" role="3clF47">
        <node concept="3clFbF" id="1FNI8ZlszpH" role="3cqZAp">
          <node concept="2OqwBi" id="3KdzVirkgMc" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuVZ_" role="2Oq$k0">
              <ref role="3cqZAo" node="Qjxfu1vRep" resolve="myCycles" />
            </node>
            <node concept="3GX2aA" id="3KdzVirkhyJ" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="15H8LO1IkQ9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isLeaf" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="15H8LO1IkQa" role="1B3o_S" />
      <node concept="10P_77" id="15H8LO1IkQc" role="3clF45" />
      <node concept="3clFbS" id="15H8LO1IkQg" role="3clF47">
        <node concept="3cpWs6" id="15H8LO1Iw4g" role="3cqZAp">
          <node concept="3fqX7Q" id="aVgL3GZ43o" role="3cqZAk">
            <node concept="1rXfSq" id="aVgL3GZ43q" role="3fr31v">
              <ref role="37wK5l" node="1FNI8ZlszpC" resolve="isCyclic" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="15H8LO1IkQh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1RQ_ZJVlrcA" role="jymVt">
      <property role="TrG5h" value="doInit" />
      <node concept="3cqZAl" id="1RQ_ZJVlrcB" role="3clF45" />
      <node concept="3Tmbuc" id="1FsmsQoR4IV" role="1B3o_S" />
      <node concept="3clFbS" id="1RQ_ZJVlrcD" role="3clF47">
        <node concept="3cpWs8" id="5CsY6KdLlcb" role="3cqZAp">
          <node concept="3cpWsn" id="5CsY6KdLlcc" role="3cpWs9">
            <property role="TrG5h" value="tree" />
            <node concept="3uibUv" id="5CsY6KdLlcd" role="1tU5fm">
              <ref role="3uigEE" node="2HP68CXWGxl" resolve="DependencyTree" />
            </node>
            <node concept="10QFUN" id="5CsY6KdLmwr" role="33vP2m">
              <node concept="3uibUv" id="5CsY6KdLmXm" role="10QFUM">
                <ref role="3uigEE" node="2HP68CXWGxl" resolve="DependencyTree" />
              </node>
              <node concept="1rXfSq" id="5CsY6KdLlCM" role="10QFUP">
                <ref role="37wK5l" to="7e8u:~MPSTreeNode.getTree()" resolve="getTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3KdzVirkxb8" role="3cqZAp">
          <node concept="2GrKxI" id="3KdzVirkxba" role="2Gsz3X">
            <property role="TrG5h" value="c" />
          </node>
          <node concept="2OqwBi" id="60mUW1j0KXX" role="2GsD0m">
            <node concept="37vLTw" id="3KdzVirkxio" role="2Oq$k0">
              <ref role="3cqZAo" node="Qjxfu1vRep" resolve="myCycles" />
            </node>
            <node concept="1VAtEI" id="60mUW1j0MJX" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="3KdzVirkxbe" role="2LFqv$">
            <node concept="3cpWs8" id="aVgL3GZlUQ" role="3cqZAp">
              <node concept="3cpWsn" id="aVgL3GZlUR" role="3cpWs9">
                <property role="TrG5h" value="itr" />
                <node concept="uOF1S" id="aVgL3GZlUC" role="1tU5fm">
                  <node concept="3uibUv" id="aVgL3GZlUF" role="uOL27">
                    <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                  </node>
                </node>
                <node concept="2OqwBi" id="aVgL3GZlUS" role="33vP2m">
                  <node concept="2OqwBi" id="aVgL3GZlUT" role="2Oq$k0">
                    <node concept="2GrUjf" id="aVgL3GZlUU" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3KdzVirkxba" resolve="c" />
                    </node>
                    <node concept="liA8E" id="aVgL3GZlUV" role="2OqNvi">
                      <ref role="37wK5l" node="65vkPOiPKQB" resolve="elements" />
                    </node>
                  </node>
                  <node concept="uNJiE" id="aVgL3GZlUW" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="aVgL3GZnzd" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXorVE" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXorVF" role="1PaTwD">
                  <property role="3oM_SC" value="skip" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVG" role="1PaTwD">
                  <property role="3oM_SC" value="first" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVH" role="1PaTwD">
                  <property role="3oM_SC" value="path" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVI" role="1PaTwD">
                  <property role="3oM_SC" value="element," />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVJ" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVK" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVL" role="1PaTwD">
                  <property role="3oM_SC" value="always" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVM" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVN" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVO" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVP" role="1PaTwD">
                  <property role="3oM_SC" value="my" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorVQ" role="1PaTwD">
                  <property role="3oM_SC" value="getCapturedDependencies()" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="aVgL3GZg2T" role="3cqZAp">
              <node concept="2OqwBi" id="aVgL3GZm7R" role="3clFbG">
                <node concept="37vLTw" id="aVgL3GZlUX" role="2Oq$k0">
                  <ref role="3cqZAo" node="aVgL3GZlUR" resolve="itr" />
                </node>
                <node concept="v1n4t" id="aVgL3GZmvR" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs8" id="aVgL3GZmKX" role="3cqZAp">
              <node concept="3cpWsn" id="aVgL3GZmKY" role="3cpWs9">
                <property role="TrG5h" value="parent" />
                <node concept="3uibUv" id="aVgL3GZmKZ" role="1tU5fm">
                  <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                </node>
                <node concept="Xjq3P" id="aVgL3GZmUC" role="33vP2m" />
              </node>
            </node>
            <node concept="2$JKZl" id="aVgL3GZn45" role="3cqZAp">
              <node concept="3clFbS" id="aVgL3GZn47" role="2LFqv$">
                <node concept="3cpWs8" id="aVgL3GZ$_M" role="3cqZAp">
                  <node concept="3cpWsn" id="aVgL3GZ$_N" role="3cpWs9">
                    <property role="TrG5h" value="dtn" />
                    <node concept="3uibUv" id="aVgL3GZ$$W" role="1tU5fm">
                      <ref role="3uigEE" node="2HP68CXWGD6" resolve="DependencyTreeNode" />
                    </node>
                    <node concept="2ShNRf" id="aVgL3GZ$_O" role="33vP2m">
                      <node concept="1pGfFk" id="aVgL3GZ$_P" role="2ShVmc">
                        <ref role="37wK5l" node="6Hf3JtD50kA" resolve="DependencyTreeNode" />
                        <node concept="2OqwBi" id="5CsY6KdLone" role="37wK5m">
                          <node concept="37vLTw" id="5CsY6KdLnuh" role="2Oq$k0">
                            <ref role="3cqZAo" node="5CsY6KdLlcc" resolve="tree" />
                          </node>
                          <node concept="liA8E" id="5CsY6KdLu99" role="2OqNvi">
                            <ref role="37wK5l" node="5mho9GASLDQ" resolve="getProject" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="aVgL3GZ$_Q" role="37wK5m">
                          <node concept="37vLTw" id="aVgL3GZ$_R" role="2Oq$k0">
                            <ref role="3cqZAo" node="aVgL3GZlUR" resolve="itr" />
                          </node>
                          <node concept="v1n4t" id="aVgL3GZ$_S" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="aVgL3GZnGY" role="3cqZAp">
                  <node concept="2OqwBi" id="aVgL3GZnO9" role="3clFbG">
                    <node concept="37vLTw" id="aVgL3GZnGX" role="2Oq$k0">
                      <ref role="3cqZAo" node="aVgL3GZmKY" resolve="parent" />
                    </node>
                    <node concept="liA8E" id="aVgL3GZpr3" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="37vLTw" id="aVgL3GZ$_T" role="37wK5m">
                        <ref role="3cqZAo" node="aVgL3GZ$_N" resolve="dtn" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="aVgL3GZ_3H" role="3cqZAp">
                  <node concept="37vLTI" id="aVgL3GZ_gj" role="3clFbG">
                    <node concept="37vLTw" id="aVgL3GZ_gO" role="37vLTx">
                      <ref role="3cqZAo" node="aVgL3GZ$_N" resolve="dtn" />
                    </node>
                    <node concept="37vLTw" id="aVgL3GZ_3G" role="37vLTJ">
                      <ref role="3cqZAo" node="aVgL3GZmKY" resolve="parent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="aVgL3GZncr" role="2$JKZa">
                <node concept="37vLTw" id="aVgL3GZnae" role="2Oq$k0">
                  <ref role="3cqZAo" node="aVgL3GZlUR" resolve="itr" />
                </node>
                <node concept="v0PNk" id="aVgL3GZnoN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Tgjq1Jn67V" role="3cqZAp">
          <node concept="37vLTI" id="7Tgjq1Jno3_" role="3clFbG">
            <node concept="3clFbT" id="7Tgjq1Jno3C" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="2BHiRxeukjN" role="37vLTJ">
              <ref role="3cqZAo" node="7aBUyauZVGo" resolve="myInitialized" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_U$Pn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7aBUyauZVGh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isInitialized" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="7aBUyauZVGi" role="1B3o_S" />
      <node concept="10P_77" id="7aBUyauZVGj" role="3clF45" />
      <node concept="3clFbS" id="7aBUyauZVGk" role="3clF47">
        <node concept="3clFbF" id="7aBUyauZY6U" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuu0e" role="3clFbG">
            <ref role="3cqZAo" node="7aBUyauZVGo" resolve="myInitialized" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_U$Pp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3qzvyg2VtV3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doubleClick" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3qzvyg2VtV4" role="1B3o_S" />
      <node concept="3cqZAl" id="3qzvyg2VtV5" role="3clF45" />
      <node concept="3clFbS" id="3qzvyg2VtV6" role="3clF47">
        <node concept="3clFbJ" id="1aCYpOWGdxT" role="3cqZAp">
          <node concept="3clFbS" id="1aCYpOWGdxV" role="3clFbx">
            <node concept="3cpWs6" id="1aCYpOWGfZs" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1aCYpOWGeUv" role="3clFbw">
            <node concept="10Nm6u" id="1aCYpOWGfqG" role="3uHU7w" />
            <node concept="1rXfSq" id="1aCYpOWGemu" role="3uHU7B">
              <ref role="37wK5l" node="7deq$1uFcue" resolve="getProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1aCYpOWEPYO" role="3cqZAp">
          <node concept="2OqwBi" id="1aCYpOWESYC" role="3clFbG">
            <node concept="2ShNRf" id="1aCYpOWEPYK" role="2Oq$k0">
              <node concept="1pGfFk" id="1aCYpOWERDU" role="2ShVmc">
                <ref role="37wK5l" to="kz9k:~ProjectPaneNavigator.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="ProjectPaneNavigator" />
                <node concept="1rXfSq" id="1aCYpOWGcJ$" role="37wK5m">
                  <ref role="37wK5l" node="7deq$1uFcue" resolve="getProject" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1aCYpOWETlR" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~ProjectPaneNavigator.select(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="select" />
              <node concept="37vLTw" id="1aCYpOWEUar" role="37wK5m">
                <ref role="3cqZAo" node="1tGIPqPLrjq" resolve="myModule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_U$Po" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7deq$1uFcue" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3uibUv" id="1aCYpOWGbmN" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="7deq$1uFeLo" role="1B3o_S" />
      <node concept="3clFbS" id="7deq$1uFcui" role="3clF47">
        <node concept="3cpWs6" id="7deq$1uFloP" role="3cqZAp">
          <node concept="3K4zz7" id="7deq$1uFw7e" role="3cqZAk">
            <node concept="2OqwBi" id="7deq$1uFCT$" role="3K4GZi">
              <node concept="1eOMI4" id="7deq$1uF$Gi" role="2Oq$k0">
                <node concept="10QFUN" id="7deq$1uF$Gf" role="1eOMHV">
                  <node concept="3uibUv" id="7deq$1uFAl_" role="10QFUM">
                    <ref role="3uigEE" node="2HP68CXWGxl" resolve="DependencyTree" />
                  </node>
                  <node concept="1rXfSq" id="7deq$1uFyBV" role="10QFUP">
                    <ref role="37wK5l" to="7e8u:~MPSTreeNode.getTree()" resolve="getTree" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7deq$1uFJ0B" role="2OqNvi">
                <ref role="37wK5l" node="5mho9GASLDQ" resolve="getProject" />
              </node>
            </node>
            <node concept="10Nm6u" id="7deq$1uFxnJ" role="3K4E3e" />
            <node concept="3clFbC" id="7deq$1uFun9" role="3K4Cdx">
              <node concept="10Nm6u" id="7deq$1uFvf2" role="3uHU7w" />
              <node concept="1rXfSq" id="7deq$1uFqzR" role="3uHU7B">
                <ref role="37wK5l" to="7e8u:~MPSTreeNode.getTree()" resolve="getTree" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="AnAlNI7xQZ">
    <property role="TrG5h" value="DependencyPathTree" />
    <property role="3GE5qa" value="view1" />
    <node concept="3uibUv" id="3H5bdBlUvjx" role="EKbjA">
      <ref role="3uigEE" to="qkt:~DataProvider" resolve="DataProvider" />
    </node>
    <node concept="3Tm1VV" id="AnAlNI7xR0" role="1B3o_S" />
    <node concept="3uibUv" id="AnAlNI7xWW" role="1zkMxy">
      <ref role="3uigEE" to="7e8u:~MPSTree" resolve="MPSTree" />
    </node>
    <node concept="312cEg" id="AnAlNI7zWb" role="jymVt">
      <property role="TrG5h" value="myAllDependencies" />
      <node concept="3Tm6S6" id="AnAlNI7zWc" role="1B3o_S" />
      <node concept="_YKpA" id="AnAlNI7zWs" role="1tU5fm">
        <node concept="3uibUv" id="6TI6RSrdNqB" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="2ShNRf" id="AnAlNI7zWy" role="33vP2m">
        <node concept="Tc6Ow" id="AnAlNI7zWz" role="2ShVmc">
          <node concept="3uibUv" id="6TI6RSrdQ2C" role="HW$YZ">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5ZjmYHJbrd6" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1aCYpOWFP2g" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="5ZjmYHJbrd7" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="AnAlNI7xR1" role="jymVt">
      <node concept="37vLTG" id="5ZjmYHJbrda" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1aCYpOWFMzv" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="AnAlNI7xR2" role="3clF45" />
      <node concept="3Tm1VV" id="AnAlNI7xR3" role="1B3o_S" />
      <node concept="3clFbS" id="AnAlNI7xR4" role="3clF47">
        <node concept="3clFbF" id="5ZjmYHJbrde" role="3cqZAp">
          <node concept="37vLTI" id="5ZjmYHJbrdg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm8uf" role="37vLTx">
              <ref role="3cqZAo" node="5ZjmYHJbrda" resolve="project" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuyUR" role="37vLTJ">
              <ref role="3cqZAo" node="5ZjmYHJbrd6" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Sr61xfuWGR" role="3cqZAp">
          <node concept="2OqwBi" id="5Sr61xfuY2x" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyz5BP" role="2Oq$k0">
              <ref role="37wK5l" to="dxuu:~JTree.getSelectionModel()" resolve="getSelectionModel" />
            </node>
            <node concept="liA8E" id="5Sr61xfuY2_" role="2OqNvi">
              <ref role="37wK5l" to="rgfa:~TreeSelectionModel.setSelectionMode(int)" resolve="setSelectionMode" />
              <node concept="10M0yZ" id="5Sr61xfuY2A" role="37wK5m">
                <ref role="1PxDUh" to="rgfa:~TreeSelectionModel" resolve="TreeSelectionModel" />
                <ref role="3cqZAo" to="rgfa:~TreeSelectionModel.SINGLE_TREE_SELECTION" resolve="SINGLE_TREE_SELECTION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="AnAlNI7zW7" role="jymVt">
      <property role="TrG5h" value="resetDependencies" />
      <node concept="3cqZAl" id="AnAlNI7zW8" role="3clF45" />
      <node concept="3Tm1VV" id="AnAlNI7zW9" role="1B3o_S" />
      <node concept="3clFbS" id="AnAlNI7zWa" role="3clF47">
        <node concept="3clFbF" id="AnAlNI7zWF" role="3cqZAp">
          <node concept="2OqwBi" id="AnAlNI7zWH" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuu4N" role="2Oq$k0">
              <ref role="3cqZAo" node="AnAlNI7zWb" resolve="myAllDependencies" />
            </node>
            <node concept="2Kehj3" id="AnAlNI7zWL" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6TI6RSrckpj" role="jymVt">
      <property role="TrG5h" value="revealDependencies" />
      <node concept="3cqZAl" id="6TI6RSrckpl" role="3clF45" />
      <node concept="3Tm1VV" id="6TI6RSrckpm" role="1B3o_S" />
      <node concept="3clFbS" id="6TI6RSrckpn" role="3clF47">
        <node concept="3clFbF" id="6TI6RSrdQJi" role="3cqZAp">
          <node concept="2OqwBi" id="6TI6RSrdR56" role="3clFbG">
            <node concept="37vLTw" id="6TI6RSrdQJh" role="2Oq$k0">
              <ref role="3cqZAo" node="AnAlNI7zWb" resolve="myAllDependencies" />
            </node>
            <node concept="X8dFx" id="1tGIPqPMM8v" role="2OqNvi">
              <node concept="37vLTw" id="1tGIPqPMM8x" role="25WWJ7">
                <ref role="3cqZAo" node="6TI6RSrcK3L" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6TI6RSrcK3L" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="A3Dl8" id="1tGIPqPML05" role="1tU5fm">
          <node concept="3uibUv" id="1tGIPqPMLwK" role="A3Ik2">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5ZjmYHJ8vov" role="jymVt">
      <property role="TrG5h" value="buildTree" />
      <node concept="3cqZAl" id="6TI6RSre3yW" role="3clF45" />
      <node concept="37vLTG" id="1qzOzPIJwLd" role="3clF46">
        <property role="TrG5h" value="depNode" />
        <node concept="3uibUv" id="6TI6RSrdwk3" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="37vLTG" id="6TI6RSrdE2x" role="3clF46">
        <property role="TrG5h" value="visited" />
        <node concept="3rvAFt" id="6TI6RSrdGb0" role="1tU5fm">
          <node concept="2pR195" id="6TI6RSrdGb1" role="3rvQeY">
            <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
          </node>
          <node concept="3uibUv" id="6TI6RSrdGb2" role="3rvSg0">
            <ref role="3uigEE" node="3ExW2NMDIcz" resolve="DependencyPathTree.LinkFrom" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5ZjmYHJ8voz" role="1B3o_S" />
      <node concept="3clFbS" id="5ZjmYHJ8voy" role="3clF47">
        <node concept="3cpWs8" id="5ZjmYHJ8vof" role="3cqZAp">
          <node concept="3cpWsn" id="5ZjmYHJ8vog" role="3cpWs9">
            <property role="TrG5h" value="dependencyPath" />
            <node concept="_YKpA" id="6TI6RSrfPbD" role="1tU5fm">
              <node concept="3uibUv" id="6TI6RSrfPbF" role="_ZDj9">
                <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
              </node>
            </node>
            <node concept="2ShNRf" id="5ZjmYHJ8vol" role="33vP2m">
              <node concept="2Jqq0_" id="5ZjmYHJ8vom" role="2ShVmc">
                <node concept="3uibUv" id="6TI6RSreC1Z" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6TI6RSrgE2x" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorVR" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorVS" role="1PaTwD">
              <property role="3oM_SC" value="unwind" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVT" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVU" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVV" role="1PaTwD">
              <property role="3oM_SC" value="source" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVW" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVX" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVY" role="1PaTwD">
              <property role="3oM_SC" value="path," />
            </node>
            <node concept="3oM_SD" id="ATZLwXorVZ" role="1PaTwD">
              <property role="3oM_SC" value="effectively" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW0" role="1PaTwD">
              <property role="3oM_SC" value="reversing" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW1" role="1PaTwD">
              <property role="3oM_SC" value="it," />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW2" role="1PaTwD">
              <property role="3oM_SC" value="top" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW3" role="1PaTwD">
              <property role="3oM_SC" value="(source" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW4" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW5" role="1PaTwD">
              <property role="3oM_SC" value="dep)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW6" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW7" role="1PaTwD">
              <property role="3oM_SC" value="bottom" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW8" role="1PaTwD">
              <property role="3oM_SC" value="(target" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorW9" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWa" role="1PaTwD">
              <property role="3oM_SC" value="dep)" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="6TI6RSrfHRy" role="3cqZAp">
          <node concept="3clFbS" id="6TI6RSrfHR$" role="2LFqv$">
            <node concept="3clFbF" id="6TI6RSrecm_" role="3cqZAp">
              <node concept="2OqwBi" id="6TI6RSreeP5" role="3clFbG">
                <node concept="37vLTw" id="6TI6RSrecm$" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ZjmYHJ8vog" resolve="dependencyPath" />
                </node>
                <node concept="2Ke4WJ" id="6TI6RSrfQ7Y" role="2OqNvi">
                  <node concept="37vLTw" id="6TI6RSrfQ80" role="25WWJ7">
                    <ref role="3cqZAo" node="1qzOzPIJwLd" resolve="depNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TI6RSrfNCr" role="3cqZAp">
              <node concept="37vLTI" id="6TI6RSrfNMe" role="3clFbG">
                <node concept="2OqwBi" id="6TI6RSrfNSA" role="37vLTx">
                  <node concept="37vLTw" id="6TI6RSrfNRq" role="2Oq$k0">
                    <ref role="3cqZAo" node="1qzOzPIJwLd" resolve="depNode" />
                  </node>
                  <node concept="liA8E" id="6TI6RSrfObx" role="2OqNvi">
                    <ref role="37wK5l" node="65vkPOiCZ9c" resolve="parent" />
                  </node>
                </node>
                <node concept="37vLTw" id="6TI6RSrfNCq" role="37vLTJ">
                  <ref role="3cqZAo" node="1qzOzPIJwLd" resolve="depNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6TI6RSrfKr2" role="2$JKZa">
            <node concept="10Nm6u" id="6TI6RSrfL1a" role="3uHU7w" />
            <node concept="37vLTw" id="6TI6RSrfK1R" role="3uHU7B">
              <ref role="3cqZAo" node="1qzOzPIJwLd" resolve="depNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Hf3JtD5b$2" role="3cqZAp" />
        <node concept="3cpWs8" id="6TI6RSrfDaM" role="3cqZAp">
          <node concept="3cpWsn" id="6TI6RSrfDaN" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="6TI6RSrfDaO" role="1tU5fm">
              <ref role="3uigEE" node="3ExW2NMDIcz" resolve="DependencyPathTree.LinkFrom" />
            </node>
            <node concept="10Nm6u" id="6TI6RSrfFA4" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="6Hf3JtD50jv" role="3cqZAp">
          <node concept="3clFbS" id="6Hf3JtD50jx" role="2LFqv$">
            <node concept="3cpWs8" id="6TI6RSreGQa" role="3cqZAp">
              <node concept="3cpWsn" id="6TI6RSreGQb" role="3cpWs9">
                <property role="TrG5h" value="n" />
                <node concept="3uibUv" id="6TI6RSreGQ5" role="1tU5fm">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
                <node concept="2OqwBi" id="6TI6RSreGQc" role="33vP2m">
                  <node concept="37vLTw" id="6TI6RSreGQd" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ZjmYHJ8vog" resolve="dependencyPath" />
                  </node>
                  <node concept="2Kt2Hk" id="6TI6RSreGQe" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6TI6RSrfeP$" role="3cqZAp">
              <node concept="3cpWsn" id="6TI6RSrfeP_" role="3cpWs9">
                <property role="TrG5h" value="key" />
                <node concept="2pR195" id="6TI6RSrfePv" role="1tU5fm">
                  <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
                </node>
                <node concept="2OqwBi" id="pmFBCUcMev" role="33vP2m">
                  <node concept="37vLTw" id="pmFBCUcLI5" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TI6RSreGQb" resolve="n" />
                  </node>
                  <node concept="liA8E" id="pmFBCUcMxM" role="2OqNvi">
                    <ref role="37wK5l" node="65vkPOiL_a0" resolve="getRoleModuleKey" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6TI6RSrfdDN" role="3cqZAp">
              <node concept="3cpWsn" id="6TI6RSrfdDO" role="3cpWs9">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="6TI6RSrfdDp" role="1tU5fm">
                  <ref role="3uigEE" node="3ExW2NMDIcz" resolve="DependencyPathTree.LinkFrom" />
                </node>
                <node concept="3EllGN" id="6TI6RSrfdDP" role="33vP2m">
                  <node concept="37vLTw" id="6TI6RSrfePJ" role="3ElVtu">
                    <ref role="3cqZAo" node="6TI6RSrfeP_" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="6TI6RSrfdDZ" role="3ElQJh">
                    <ref role="3cqZAo" node="6TI6RSrdE2x" resolve="visited" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6TI6RSrfefB" role="3cqZAp">
              <node concept="3clFbS" id="6TI6RSrfefE" role="3clFbx">
                <node concept="3SKdUt" id="6$qoHtvCgRM" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXorWb" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXorWc" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWd" role="1PaTwD">
                      <property role="3oM_SC" value="didn't" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWe" role="1PaTwD">
                      <property role="3oM_SC" value="yet" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWf" role="1PaTwD">
                      <property role="3oM_SC" value="see" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWg" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWh" role="1PaTwD">
                      <property role="3oM_SC" value="dep" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWi" role="1PaTwD">
                      <property role="3oM_SC" value="link" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWj" role="1PaTwD">
                      <property role="3oM_SC" value="anywhere," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWk" role="1PaTwD">
                      <property role="3oM_SC" value="or" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWl" role="1PaTwD">
                      <property role="3oM_SC" value="have" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWm" role="1PaTwD">
                      <property role="3oM_SC" value="seen" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWn" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWo" role="1PaTwD">
                      <property role="3oM_SC" value="under" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWp" role="1PaTwD">
                      <property role="3oM_SC" value="another" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorWq" role="1PaTwD">
                      <property role="3oM_SC" value="branch" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6TI6RSrffOb" role="3cqZAp">
                  <node concept="3cpWsn" id="6TI6RSrffOc" role="3cpWs9">
                    <property role="TrG5h" value="f" />
                    <node concept="3uibUv" id="6TI6RSrffOd" role="1tU5fm">
                      <ref role="3uigEE" node="3ExW2NMDIcz" resolve="DependencyPathTree.LinkFrom" />
                    </node>
                    <node concept="2ShNRf" id="6TI6RSrfg67" role="33vP2m">
                      <node concept="1pGfFk" id="6TI6RSrfhce" role="2ShVmc">
                        <ref role="37wK5l" node="3ExW2NMDIc_" resolve="DependencyPathTree.LinkFrom" />
                        <node concept="37vLTw" id="6TI6RSrfSVY" role="37wK5m">
                          <ref role="3cqZAo" node="6TI6RSreGQb" resolve="n" />
                        </node>
                        <node concept="37vLTw" id="6TI6RSrfT1Z" role="37wK5m">
                          <ref role="3cqZAo" node="6TI6RSrfDaN" resolve="parent" />
                        </node>
                        <node concept="37vLTw" id="5CsY6KdLBF6" role="37wK5m">
                          <ref role="3cqZAo" node="5ZjmYHJbrd6" resolve="myProject" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6TI6RSrfht8" role="3cqZAp">
                  <node concept="37vLTI" id="6TI6RSrfi8S" role="3clFbG">
                    <node concept="37vLTw" id="6TI6RSrfia4" role="37vLTx">
                      <ref role="3cqZAo" node="6TI6RSrffOc" resolve="f" />
                    </node>
                    <node concept="3EllGN" id="6TI6RSrfhHu" role="37vLTJ">
                      <node concept="37vLTw" id="6TI6RSrfhNO" role="3ElVtu">
                        <ref role="3cqZAo" node="6TI6RSrfeP_" resolve="key" />
                      </node>
                      <node concept="37vLTw" id="6TI6RSrfht7" role="3ElQJh">
                        <ref role="3cqZAo" node="6TI6RSrdE2x" resolve="visited" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6TI6RSrfTtq" role="3cqZAp">
                  <node concept="37vLTI" id="6TI6RSrfTw8" role="3clFbG">
                    <node concept="37vLTw" id="6TI6RSrfTwR" role="37vLTx">
                      <ref role="3cqZAo" node="6TI6RSrffOc" resolve="f" />
                    </node>
                    <node concept="37vLTw" id="6TI6RSrfTtp" role="37vLTJ">
                      <ref role="3cqZAo" node="6TI6RSrfDaN" resolve="parent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="6$qoHtvCgvR" role="3clFbw">
                <node concept="3y3z36" id="6$qoHtvCgIa" role="3uHU7w">
                  <node concept="37vLTw" id="6$qoHtvCgLl" role="3uHU7w">
                    <ref role="3cqZAo" node="6TI6RSrfDaN" resolve="parent" />
                  </node>
                  <node concept="2OqwBi" id="6$qoHtvCgyU" role="3uHU7B">
                    <node concept="37vLTw" id="6$qoHtvCgxX" role="2Oq$k0">
                      <ref role="3cqZAo" node="6TI6RSrfdDO" resolve="e" />
                    </node>
                    <node concept="2OwXpG" id="6$qoHtvCgFn" role="2OqNvi">
                      <ref role="2Oxat5" node="3ExW2NMDK8C" resolve="parent" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6TI6RSrfevV" role="3uHU7B">
                  <node concept="37vLTw" id="6TI6RSrfeuG" role="3uHU7B">
                    <ref role="3cqZAo" node="6TI6RSrfdDO" resolve="e" />
                  </node>
                  <node concept="10Nm6u" id="6TI6RSrfeF8" role="3uHU7w" />
                </node>
              </node>
              <node concept="9aQIb" id="6TI6RSrfTxD" role="9aQIa">
                <node concept="3clFbS" id="6TI6RSrfTxE" role="9aQI4">
                  <node concept="3clFbF" id="6TI6RSrfTBn" role="3cqZAp">
                    <node concept="37vLTI" id="6TI6RSrfTLc" role="3clFbG">
                      <node concept="37vLTw" id="6TI6RSrfTLV" role="37vLTx">
                        <ref role="3cqZAo" node="6TI6RSrfdDO" resolve="e" />
                      </node>
                      <node concept="37vLTw" id="6TI6RSrfTK4" role="37vLTJ">
                        <ref role="3cqZAo" node="6TI6RSrfDaN" resolve="parent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6Hf3JtD50jz" role="2$JKZa">
            <node concept="37vLTw" id="3GM_nagTBgz" role="2Oq$k0">
              <ref role="3cqZAo" node="5ZjmYHJ8vog" resolve="dependencyPath" />
            </node>
            <node concept="3GX2aA" id="6Hf3JtD50jB" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="6$qoHtvCqc3" role="3cqZAp">
          <node concept="3clFbS" id="6$qoHtvCqc6" role="3clFbx">
            <node concept="3SKdUt" id="6$qoHtvCtii" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXorWr" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXorWs" role="1PaTwD">
                  <property role="3oM_SC" value="parent" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWt" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWu" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWv" role="1PaTwD">
                  <property role="3oM_SC" value="bottom" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWw" role="1PaTwD">
                  <property role="3oM_SC" value="(leaf)" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWx" role="1PaTwD">
                  <property role="3oM_SC" value="node," />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWy" role="1PaTwD">
                  <property role="3oM_SC" value="holding" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWz" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorW$" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorW_" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWA" role="1PaTwD">
                  <property role="3oM_SC" value="initially" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWB" role="1PaTwD">
                  <property role="3oM_SC" value="selected" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorWC" role="1PaTwD">
                  <property role="3oM_SC" value="(revealDependencies())" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6$qoHtvCqC1" role="3cqZAp">
              <node concept="2OqwBi" id="6$qoHtvCra7" role="3clFbG">
                <node concept="2OqwBi" id="6$qoHtvCqDf" role="2Oq$k0">
                  <node concept="37vLTw" id="6$qoHtvCqC0" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TI6RSrfDaN" resolve="parent" />
                  </node>
                  <node concept="2OwXpG" id="6$qoHtvCqRV" role="2OqNvi">
                    <ref role="2Oxat5" node="3ExW2NMDK8G" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="6$qoHtvCs5r" role="2OqNvi">
                  <ref role="37wK5l" node="7cMANkukC8M" resolve="setDepLeaf" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6$qoHtvCqyW" role="3clFbw">
            <node concept="10Nm6u" id="6$qoHtvCqzZ" role="3uHU7w" />
            <node concept="37vLTw" id="6$qoHtvCqxu" role="3uHU7B">
              <ref role="3cqZAo" node="6TI6RSrfDaN" resolve="parent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="AnAlNI7xWX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="rebuild" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="AnAlNI7xWY" role="1B3o_S" />
      <node concept="3uibUv" id="AnAlNI7xWZ" role="3clF45">
        <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
      </node>
      <node concept="3clFbS" id="AnAlNI7xX0" role="3clF47">
        <node concept="3cpWs8" id="AnAlNI7ChG" role="3cqZAp">
          <node concept="3cpWsn" id="AnAlNI7ChH" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="AnAlNI7ChI" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
            </node>
            <node concept="2ShNRf" id="AnAlNI7ChK" role="33vP2m">
              <node concept="1pGfFk" id="AnAlNI7ChM" role="2ShVmc">
                <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                <node concept="3K4zz7" id="1aKJEDUUJBz" role="37wK5m">
                  <node concept="Xl_RD" id="1aKJEDUUJBB" role="3K4E3e">
                    <property role="Xl_RC" value="No Dependencies Selected" />
                  </node>
                  <node concept="Xl_RD" id="1aKJEDUUJBC" role="3K4GZi">
                    <property role="Xl_RC" value="Found Dependencies:" />
                  </node>
                  <node concept="2OqwBi" id="1aKJEDUUJBu" role="3K4Cdx">
                    <node concept="37vLTw" id="2BHiRxeupig" role="2Oq$k0">
                      <ref role="3cqZAo" node="AnAlNI7zWb" resolve="myAllDependencies" />
                    </node>
                    <node concept="1v1jN8" id="1aKJEDUUJBy" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6TI6RSrdVVf" role="3cqZAp">
          <node concept="3cpWsn" id="6TI6RSrdVVg" role="3cpWs9">
            <property role="TrG5h" value="deps" />
            <node concept="3rvAFt" id="6TI6RSrdVV1" role="1tU5fm">
              <node concept="2pR195" id="6TI6RSrdVV7" role="3rvQeY">
                <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
              </node>
              <node concept="3uibUv" id="6TI6RSrdVV6" role="3rvSg0">
                <ref role="3uigEE" node="3ExW2NMDIcz" resolve="DependencyPathTree.LinkFrom" />
              </node>
            </node>
            <node concept="2ShNRf" id="6TI6RSrdVVh" role="33vP2m">
              <node concept="3rGOSV" id="6TI6RSrdVVi" role="2ShVmc">
                <node concept="2pR195" id="6TI6RSrdVVj" role="3rHrn6">
                  <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
                </node>
                <node concept="3uibUv" id="6TI6RSrdVVk" role="3rHtpV">
                  <ref role="3uigEE" node="3ExW2NMDIcz" resolve="DependencyPathTree.LinkFrom" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6TI6RSrglyX" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorWD" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorWE" role="1PaTwD">
              <property role="3oM_SC" value="merge" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWF" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWG" role="1PaTwD">
              <property role="3oM_SC" value="paths" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWH" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWI" role="1PaTwD">
              <property role="3oM_SC" value="role" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWJ" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWK" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="AnAlNI7ChW" role="3cqZAp">
          <node concept="2GrKxI" id="AnAlNI7ChX" role="2Gsz3X">
            <property role="TrG5h" value="dep" />
          </node>
          <node concept="37vLTw" id="2BHiRxeul8e" role="2GsD0m">
            <ref role="3cqZAo" node="AnAlNI7zWb" resolve="myAllDependencies" />
          </node>
          <node concept="3clFbS" id="AnAlNI7ChZ" role="2LFqv$">
            <node concept="3clFbF" id="6TI6RSrdLy3" role="3cqZAp">
              <node concept="1rXfSq" id="6TI6RSrdLy2" role="3clFbG">
                <ref role="37wK5l" node="5ZjmYHJ8vov" resolve="buildTree" />
                <node concept="2GrUjf" id="6TI6RSrdVDM" role="37wK5m">
                  <ref role="2Gs0qQ" node="AnAlNI7ChX" resolve="dep" />
                </node>
                <node concept="37vLTw" id="6TI6RSrdVVl" role="37wK5m">
                  <ref role="3cqZAo" node="6TI6RSrdVVg" resolve="deps" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="5rIE9LD_WXA" role="3cqZAp">
              <node concept="2GrKxI" id="5rIE9LD_WXC" role="2Gsz3X">
                <property role="TrG5h" value="rd" />
              </node>
              <node concept="3clFbS" id="5rIE9LD_WXG" role="2LFqv$">
                <node concept="3clFbF" id="5rIE9LDAlwM" role="3cqZAp">
                  <node concept="1rXfSq" id="5rIE9LDAlwL" role="3clFbG">
                    <ref role="37wK5l" node="5ZjmYHJ8vov" resolve="buildTree" />
                    <node concept="2GrUjf" id="5rIE9LDAr7U" role="37wK5m">
                      <ref role="2Gs0qQ" node="5rIE9LD_WXC" resolve="rd" />
                    </node>
                    <node concept="37vLTw" id="5rIE9LDAy3f" role="37wK5m">
                      <ref role="3cqZAo" node="6TI6RSrdVVg" resolve="deps" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5rIE9LD_DtL" role="2GsD0m">
                <node concept="2GrUjf" id="5rIE9LD_CHQ" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="AnAlNI7ChX" resolve="dep" />
                </node>
                <node concept="liA8E" id="5rIE9LD_F0w" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiHN$u" resolve="reusedFrom" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6TI6RSrgpXF" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorWL" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorWM" role="1PaTwD">
              <property role="3oM_SC" value="attach" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWN" role="1PaTwD">
              <property role="3oM_SC" value="roots" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWO" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWP" role="1PaTwD">
              <property role="3oM_SC" value="merged" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWQ" role="1PaTwD">
              <property role="3oM_SC" value="paths" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWR" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWS" role="1PaTwD">
              <property role="3oM_SC" value="top" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWT" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6TI6RSrdYhf" role="3cqZAp">
          <node concept="2GrKxI" id="6TI6RSrdYhh" role="2Gsz3X">
            <property role="TrG5h" value="lf" />
          </node>
          <node concept="2OqwBi" id="6TI6RSre19K" role="2GsD0m">
            <node concept="37vLTw" id="6TI6RSre0NB" role="2Oq$k0">
              <ref role="3cqZAo" node="6TI6RSrdVVg" resolve="deps" />
            </node>
            <node concept="T8wYR" id="6TI6RSre3v7" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6TI6RSrdYhl" role="2LFqv$">
            <node concept="3clFbJ" id="6TI6RSrgdV0" role="3cqZAp">
              <node concept="3clFbS" id="6TI6RSrgdV1" role="3clFbx">
                <node concept="3clFbF" id="6TI6RSrgfN_" role="3cqZAp">
                  <node concept="2OqwBi" id="6TI6RSrgfVc" role="3clFbG">
                    <node concept="37vLTw" id="6TI6RSrgfN$" role="2Oq$k0">
                      <ref role="3cqZAo" node="AnAlNI7ChH" resolve="result" />
                    </node>
                    <node concept="liA8E" id="6TI6RSrghyi" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="2OqwBi" id="6TI6RSrghBM" role="37wK5m">
                        <node concept="2GrUjf" id="6TI6RSrgh$o" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6TI6RSrdYhh" resolve="lf" />
                        </node>
                        <node concept="2OwXpG" id="6TI6RSrgil5" role="2OqNvi">
                          <ref role="2Oxat5" node="3ExW2NMDK8G" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6TI6RSrgf0_" role="3clFbw">
                <node concept="10Nm6u" id="6TI6RSrgfp9" role="3uHU7w" />
                <node concept="2OqwBi" id="6TI6RSrgdXo" role="3uHU7B">
                  <node concept="2GrUjf" id="6TI6RSrgdVU" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6TI6RSrdYhh" resolve="lf" />
                  </node>
                  <node concept="2OwXpG" id="6TI6RSrgeCz" role="2OqNvi">
                    <ref role="2Oxat5" node="3ExW2NMDK8C" resolve="parent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44y9Yoj_1H2" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzb$h" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JTree.setRootVisible(boolean)" resolve="setRootVisible" />
            <node concept="3clFbC" id="6TI6RSrgwPC" role="37wK5m">
              <node concept="3cmrfG" id="6TI6RSrgwSU" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="6TI6RSrgu$p" role="3uHU7B">
                <node concept="37vLTw" id="6TI6RSrgu$q" role="2Oq$k0">
                  <ref role="3cqZAo" node="AnAlNI7ChH" resolve="result" />
                </node>
                <node concept="liA8E" id="6TI6RSrgu$r" role="2OqNvi">
                  <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.getChildCount()" resolve="getChildCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1$a2Yrbcz83" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9ku" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JTree.setShowsRootHandles(boolean)" resolve="setShowsRootHandles" />
            <node concept="3y3z36" id="6TI6RSrgzv0" role="37wK5m">
              <node concept="3cmrfG" id="6TI6RSrgzyE" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="6TI6RSrgx6k" role="3uHU7B">
                <node concept="37vLTw" id="6TI6RSrgwVR" role="2Oq$k0">
                  <ref role="3cqZAo" node="AnAlNI7ChH" resolve="result" />
                </node>
                <node concept="liA8E" id="6TI6RSrgyRK" role="2OqNvi">
                  <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.getChildCount()" resolve="getChildCount" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="AnAlNI7ChS" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTvZS" role="3cqZAk">
            <ref role="3cqZAo" node="AnAlNI7ChH" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUoj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3H5bdBlUajG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createPopupActionGroup" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="3H5bdBlUajH" role="1B3o_S" />
      <node concept="3uibUv" id="1F70I3uJ2QE" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
      </node>
      <node concept="37vLTG" id="3H5bdBlUajJ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3H5bdBlUajK" role="1tU5fm">
          <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3H5bdBlUajL" role="3clF47">
        <node concept="3clFbF" id="1F70I3uJHZ4" role="3cqZAp">
          <node concept="2YIFZM" id="1J5QIiTH0b2" role="3clFbG">
            <ref role="37wK5l" to="7bx7:~ActionUtils.groupFromActions(com.intellij.openapi.actionSystem.AnAction...)" resolve="groupFromActions" />
            <ref role="1Pybhc" to="7bx7:~ActionUtils" resolve="ActionUtils" />
            <node concept="3$FdUm" id="3WD8wJnMj1" role="37wK5m">
              <ref role="3$FpRE" to="pwkq:yXzhPPCIr5" resolve="SafeDeleteModuleDependency" />
            </node>
            <node concept="3$FdUm" id="185rHHJe5lB" role="37wK5m">
              <ref role="3$FpRE" to="pwkq:185rHHJdnAu" resolve="ShowInDependenciesViewer" />
            </node>
            <node concept="3$FdUm" id="1J5QIiTH0b3" role="37wK5m">
              <ref role="3$FpRE" to="tprs:hGANgqU" resolve="ModuleProperties" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3H5bdBlUajM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3H5bdBlUvjy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getData" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3H5bdBlUvjz" role="1B3o_S" />
      <node concept="3uibUv" id="3H5bdBlUvj$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="3H5bdBlUvj_" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="3H5bdBlUvjA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3H5bdBlUvjB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3H5bdBlUvjC" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3H5bdBlUvjD" role="3clF47">
        <node concept="3cpWs8" id="3H5bdBlUv$j" role="3cqZAp">
          <node concept="3cpWsn" id="3H5bdBlUv$k" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="3H5bdBlUv$u" role="1tU5fm">
              <ref role="3uigEE" node="2HP68CXWGD6" resolve="DependencyTreeNode" />
            </node>
            <node concept="0kSF2" id="3H5bdBlUv$q" role="33vP2m">
              <node concept="3uibUv" id="3H5bdBlUv$t" role="0kSFW">
                <ref role="3uigEE" node="2HP68CXWGD6" resolve="DependencyTreeNode" />
              </node>
              <node concept="1rXfSq" id="4hiugqyz8fj" role="0kSFX">
                <ref role="37wK5l" to="7e8u:~MPSTree.getCurrentNode()" resolve="getCurrentNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="44sVLhmXetw" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="44sVLhmXetx" role="3clFbx">
            <node concept="3cpWs6" id="44sVLhmXety" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTAmI" role="3cqZAk">
                <ref role="3cqZAo" node="3H5bdBlUv$k" resolve="current" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="44sVLhmXet$" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmN_j" role="2Oq$k0">
              <ref role="3cqZAo" node="3H5bdBlUvj_" resolve="id" />
            </node>
            <node concept="liA8E" id="44sVLhmXetA" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="44sVLhmXetB" role="37wK5m">
                <node concept="10M0yZ" id="44sVLhmXetC" role="2Oq$k0">
                  <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                  <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
                </node>
                <node concept="liA8E" id="44sVLhmXetD" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="K7luKUxnn0" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="2OqwBi" id="K7luKUxnn1" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmqi1" role="2Oq$k0">
              <ref role="3cqZAo" node="3H5bdBlUvj_" resolve="id" />
            </node>
            <node concept="liA8E" id="K7luKUxnn3" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="K7luKUxnn4" role="37wK5m">
                <node concept="10M0yZ" id="K7luKUxnn5" role="2Oq$k0">
                  <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
                  <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MODULE" resolve="MODULE" />
                </node>
                <node concept="liA8E" id="K7luKUxnn6" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="K7luKUxnn7" role="3clFbx">
            <node concept="3cpWs6" id="K7luKUxnn8" role="3cqZAp">
              <node concept="2EnYce" id="44sVLhmXetI" role="3cqZAk">
                <node concept="37vLTw" id="3GM_nagTu26" role="2Oq$k0">
                  <ref role="3cqZAo" node="3H5bdBlUv$k" resolve="current" />
                </node>
                <node concept="liA8E" id="3H5bdBlUw7U" role="2OqNvi">
                  <ref role="37wK5l" node="2HP68CXWGDf" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="K7luKUxnnD" role="3cqZAp">
          <node concept="10Nm6u" id="K7luKUxnnE" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUoi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="312cEu" id="3ExW2NMDIcz" role="jymVt">
      <property role="TrG5h" value="LinkFrom" />
      <property role="2bfB8j" value="false" />
      <node concept="3Tm1VV" id="3ExW2NMDIc$" role="1B3o_S" />
      <node concept="312cEg" id="3ExW2NMDIcD" role="jymVt">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3ExW2NMDK8B" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="312cEg" id="3ExW2NMDK8C" role="jymVt">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="3ExW2NMDK8F" role="1tU5fm">
          <ref role="3uigEE" node="3ExW2NMDIcz" resolve="DependencyPathTree.LinkFrom" />
        </node>
      </node>
      <node concept="312cEg" id="3ExW2NMDK8G" role="jymVt">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3ExW2NMDMdn" role="1tU5fm">
          <ref role="3uigEE" node="2HP68CXWGD6" resolve="DependencyTreeNode" />
        </node>
      </node>
      <node concept="3clFbW" id="3ExW2NMDIc_" role="jymVt">
        <node concept="3cqZAl" id="3ExW2NMDIcA" role="3clF45" />
        <node concept="3Tm1VV" id="3ExW2NMDIcB" role="1B3o_S" />
        <node concept="3clFbS" id="3ExW2NMDIcC" role="3clF47">
          <node concept="3clFbF" id="3ExW2NMDKAg" role="3cqZAp">
            <node concept="37vLTI" id="3ExW2NMDKAn" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgm6l4" role="37vLTx">
                <ref role="3cqZAo" node="3ExW2NMDKAb" resolve="link" />
              </node>
              <node concept="2OqwBi" id="3ExW2NMDKAi" role="37vLTJ">
                <node concept="Xjq3P" id="3ExW2NMDKAh" role="2Oq$k0" />
                <node concept="2OwXpG" id="3ExW2NMDKAm" role="2OqNvi">
                  <ref role="2Oxat5" node="3ExW2NMDIcD" resolve="link" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3ExW2NMDKAs" role="3cqZAp">
            <node concept="37vLTI" id="3ExW2NMDKAz" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxglpPp" role="37vLTx">
                <ref role="3cqZAo" node="3ExW2NMDKAd" resolve="from" />
              </node>
              <node concept="2OqwBi" id="3ExW2NMDKAu" role="37vLTJ">
                <node concept="Xjq3P" id="3ExW2NMDKAt" role="2Oq$k0" />
                <node concept="2OwXpG" id="3ExW2NMDKAy" role="2OqNvi">
                  <ref role="2Oxat5" node="3ExW2NMDK8C" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TI6RSrg8vr" role="3cqZAp">
            <node concept="37vLTI" id="6TI6RSrg8GW" role="3clFbG">
              <node concept="2ShNRf" id="6TI6RSrg8LB" role="37vLTx">
                <node concept="1pGfFk" id="6TI6RSrg9zR" role="2ShVmc">
                  <ref role="37wK5l" node="6Hf3JtD50kA" resolve="DependencyTreeNode" />
                  <node concept="37vLTw" id="5CsY6KdLALu" role="37wK5m">
                    <ref role="3cqZAo" node="5CsY6KdLA2v" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="6TI6RSrg9CC" role="37wK5m">
                    <ref role="3cqZAo" node="3ExW2NMDKAb" resolve="link" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6TI6RSrg8vq" role="37vLTJ">
                <ref role="3cqZAo" node="3ExW2NMDK8G" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6TI6RSrgai5" role="3cqZAp">
            <node concept="3clFbS" id="6TI6RSrgai8" role="3clFbx">
              <node concept="3clFbF" id="6TI6RSrgaAk" role="3cqZAp">
                <node concept="2OqwBi" id="6TI6RSrgaZZ" role="3clFbG">
                  <node concept="2OqwBi" id="6TI6RSrgaB$" role="2Oq$k0">
                    <node concept="37vLTw" id="6TI6RSrgaAj" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ExW2NMDKAd" resolve="from" />
                    </node>
                    <node concept="2OwXpG" id="6TI6RSrgaIt" role="2OqNvi">
                      <ref role="2Oxat5" node="3ExW2NMDK8G" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6TI6RSrgcKM" role="2OqNvi">
                    <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                    <node concept="37vLTw" id="6TI6RSrgcNX" role="37wK5m">
                      <ref role="3cqZAo" node="3ExW2NMDK8G" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6TI6RSrgaxa" role="3clFbw">
              <node concept="10Nm6u" id="6TI6RSrgayf" role="3uHU7w" />
              <node concept="37vLTw" id="6TI6RSrgavE" role="3uHU7B">
                <ref role="3cqZAo" node="3ExW2NMDKAd" resolve="from" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3ExW2NMDKAb" role="3clF46">
          <property role="TrG5h" value="link" />
          <node concept="3uibUv" id="3ExW2NMDKAc" role="1tU5fm">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
        <node concept="37vLTG" id="3ExW2NMDKAd" role="3clF46">
          <property role="TrG5h" value="from" />
          <node concept="3uibUv" id="3ExW2NMDKAf" role="1tU5fm">
            <ref role="3uigEE" node="3ExW2NMDIcz" resolve="DependencyPathTree.LinkFrom" />
          </node>
        </node>
        <node concept="37vLTG" id="5CsY6KdLA2v" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="1aCYpOWFF0U" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5gnR903heD8">
    <property role="TrG5h" value="ModuleDependenciesView" />
    <property role="3GE5qa" value="view1" />
    <node concept="312cEg" id="3oy_yTlMYki" role="jymVt">
      <property role="TrG5h" value="myLeftTree" />
      <node concept="3uibUv" id="3oy_yTlMY_b" role="1tU5fm">
        <ref role="3uigEE" node="2HP68CXWGxl" resolve="DependencyTree" />
      </node>
      <node concept="3Tm6S6" id="3oy_yTlMYkj" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5gnR903heD9" role="1B3o_S" />
    <node concept="3uibUv" id="5gnR903hfFM" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="312cEg" id="3oy_yTlMZ6E" role="jymVt">
      <property role="TrG5h" value="myRightTree" />
      <node concept="3uibUv" id="3oy_yTlMZnA" role="1tU5fm">
        <ref role="3uigEE" node="AnAlNI7xQZ" resolve="DependencyPathTree" />
      </node>
      <node concept="3Tm6S6" id="3oy_yTlMZ6F" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="5gnR903heDa" role="jymVt">
      <node concept="3cqZAl" id="5gnR903heDb" role="3clF45" />
      <node concept="3Tm1VV" id="5gnR903heDc" role="1B3o_S" />
      <node concept="3clFbS" id="5gnR903heDd" role="3clF47">
        <node concept="XkiVB" id="4UfmgA1$4s8" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="4UfmgA1$4s9" role="37wK5m">
            <node concept="1pGfFk" id="4UfmgA1$4sb" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1aCYpOWFSyw" role="3cqZAp">
          <node concept="3cpWsn" id="1aCYpOWFSyx" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="1aCYpOWFSyy" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="1aCYpOWFVfi" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="1aCYpOWFVWU" role="37wK5m">
                <ref role="3cqZAo" node="5gnR903hj96" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gnR903hj9e" role="3cqZAp">
          <node concept="37vLTI" id="5gnR903hj9g" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwxn" role="37vLTJ">
              <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
            </node>
            <node concept="2ShNRf" id="5gnR903hj9j" role="37vLTx">
              <node concept="1pGfFk" id="5gnR903hj9k" role="2ShVmc">
                <ref role="37wK5l" node="bB3g$9WQPw" resolve="DependencyTree" />
                <node concept="37vLTw" id="2BHiRxgmyuT" role="37wK5m">
                  <ref role="3cqZAo" node="1aCYpOWFSyx" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gnR903hj9o" role="3cqZAp">
          <node concept="37vLTI" id="5gnR903hj9q" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeus9L" role="37vLTJ">
              <ref role="3cqZAo" node="3oy_yTlMZ6E" resolve="myRightTree" />
            </node>
            <node concept="2ShNRf" id="5gnR903hj9t" role="37vLTx">
              <node concept="1pGfFk" id="5gnR903hj9u" role="2ShVmc">
                <ref role="37wK5l" node="AnAlNI7xR1" resolve="DependencyPathTree" />
                <node concept="37vLTw" id="1aCYpOWFZiD" role="37wK5m">
                  <ref role="3cqZAo" node="1aCYpOWFSyx" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64YhKysRXMn" role="3cqZAp" />
        <node concept="3cpWs8" id="2zElYzLnYK8" role="3cqZAp">
          <node concept="3cpWsn" id="2zElYzLnYK9" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2zElYzLopCP" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
            </node>
            <node concept="2YIFZM" id="2zElYzLnYKb" role="33vP2m">
              <ref role="1Pybhc" to="7bx7:~ActionUtils" resolve="ActionUtils" />
              <ref role="37wK5l" to="7bx7:~ActionUtils.groupFromActions(com.intellij.openapi.actionSystem.AnAction...)" resolve="groupFromActions" />
              <node concept="2ShNRf" id="2zElYzLnZOu" role="37wK5m">
                <node concept="1pGfFk" id="2zElYzLopio" role="2ShVmc">
                  <ref role="37wK5l" to="71xd:~CloseAction.&lt;init&gt;(jetbrains.mps.ide.tools.BaseTool)" resolve="CloseAction" />
                  <node concept="37vLTw" id="2BHiRxgmP5B" role="37wK5m">
                    <ref role="3cqZAo" node="5gnR903hj9w" resolve="tool" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="27BaQbjOtpf" role="37wK5m">
                <node concept="1pGfFk" id="27BaQbjOtph" role="2ShVmc">
                  <ref role="37wK5l" node="27BaQbjOrsd" resolve="ModuleDependenciesView.MyToggleAction" />
                  <node concept="Xl_RD" id="27BaQbjOtpv" role="37wK5m">
                    <property role="Xl_RC" value="Show Runtime Dependencies" />
                  </node>
                  <node concept="10M0yZ" id="1LdipaRGtQ_" role="37wK5m">
                    <ref role="1PxDUh" to="l7us:~MPSIcons$General" resolve="MPSIcons.General" />
                    <ref role="3cqZAo" to="l7us:~MPSIcons$General.Runtime" resolve="Runtime" />
                  </node>
                  <node concept="3clFbT" id="27BaQbjOtpz" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="1bVj0M" id="27BaQbjOtp_" role="37wK5m">
                    <node concept="3clFbS" id="27BaQbjOtpA" role="1bW5cS">
                      <node concept="3clFbF" id="27BaQbjOtCa" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyzk7B" role="3clFbG">
                          <ref role="37wK5l" node="27BaQbjOtpD" resolve="setShowRuntime" />
                          <node concept="37vLTw" id="2BHiRxgm65a" role="37wK5m">
                            <ref role="3cqZAo" node="27BaQbjOtpB" resolve="b" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="27BaQbjOtpB" role="1bW2Oz">
                      <property role="TrG5h" value="b" />
                      <node concept="10P_77" id="27BaQbjOtpC" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="27BaQbjOtCN" role="37wK5m">
                <node concept="1pGfFk" id="27BaQbjOtCO" role="2ShVmc">
                  <ref role="37wK5l" node="27BaQbjOrsd" resolve="ModuleDependenciesView.MyToggleAction" />
                  <node concept="Xl_RD" id="27BaQbjOtCP" role="37wK5m">
                    <property role="Xl_RC" value="Show Used Languages" />
                  </node>
                  <node concept="10M0yZ" id="1LdipaRGjGr" role="37wK5m">
                    <ref role="1PxDUh" to="l7us:~MPSIcons$Nodes" resolve="MPSIcons.Nodes" />
                    <ref role="3cqZAo" to="l7us:~MPSIcons$Nodes.Language" resolve="Language" />
                  </node>
                  <node concept="3clFbT" id="27BaQbjOtCR" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="1bVj0M" id="27BaQbjOtCS" role="37wK5m">
                    <node concept="3clFbS" id="27BaQbjOtCT" role="1bW5cS">
                      <node concept="3clFbF" id="27BaQbjOtCU" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyyZ2L" role="3clFbG">
                          <ref role="37wK5l" node="27BaQbjOtCp" resolve="setShowUsedLanguages" />
                          <node concept="37vLTw" id="2BHiRxglO74" role="37wK5m">
                            <ref role="3cqZAo" node="27BaQbjOtCX" resolve="b" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="27BaQbjOtCX" role="1bW2Oz">
                      <property role="TrG5h" value="b" />
                      <node concept="10P_77" id="27BaQbjOtCY" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gnR903hj9J" role="3cqZAp" />
        <node concept="3cpWs8" id="67OlBty3wqR" role="3cqZAp">
          <node concept="3cpWsn" id="67OlBty3wqS" role="3cpWs9">
            <property role="TrG5h" value="toolbar" />
            <node concept="3uibUv" id="67OlBty3mA9" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~ActionToolbar" resolve="ActionToolbar" />
            </node>
            <node concept="2OqwBi" id="67OlBty3wqT" role="33vP2m">
              <node concept="2YIFZM" id="67OlBty3wqU" role="2Oq$k0">
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
              </node>
              <node concept="liA8E" id="67OlBty3wqV" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean)" resolve="createActionToolbar" />
                <node concept="10M0yZ" id="67OlBty3wqW" role="37wK5m">
                  <ref role="3cqZAo" to="qkt:~ActionPlaces.TOOLBAR" resolve="TOOLBAR" />
                  <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                </node>
                <node concept="37vLTw" id="67OlBty3wqX" role="37wK5m">
                  <ref role="3cqZAo" node="2zElYzLnYK9" resolve="group" />
                </node>
                <node concept="3clFbT" id="67OlBty3wqY" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="67OlBty3McY" role="3cqZAp">
          <node concept="2OqwBi" id="67OlBty3OJR" role="3clFbG">
            <node concept="37vLTw" id="67OlBty3McW" role="2Oq$k0">
              <ref role="3cqZAo" node="67OlBty3wqS" resolve="toolbar" />
            </node>
            <node concept="liA8E" id="67OlBty3QJX" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~ActionToolbar.setTargetComponent(javax.swing.JComponent)" resolve="setTargetComponent" />
              <node concept="Xjq3P" id="67OlBty3UV2" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gnR903hj9L" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz5Ko" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2OqwBi" id="2zElYzLnYKg" role="37wK5m">
              <node concept="37vLTw" id="67OlBty3wqZ" role="2Oq$k0">
                <ref role="3cqZAo" node="67OlBty3wqS" resolve="toolbar" />
              </node>
              <node concept="liA8E" id="2zElYzLnYKn" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
              </node>
            </node>
            <node concept="10M0yZ" id="5gnR903hj9Q" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2zElYzLopu6" role="3cqZAp" />
        <node concept="3cpWs8" id="2zElYzLnYK2" role="3cqZAp">
          <node concept="3cpWsn" id="2zElYzLnYK3" role="3cpWs9">
            <property role="TrG5h" value="splitter" />
            <node concept="3uibUv" id="6WGXqLSg0PI" role="1tU5fm">
              <ref role="3uigEE" to="jkm4:~Splitter" resolve="Splitter" />
            </node>
            <node concept="2ShNRf" id="2zElYzLnYK6" role="33vP2m">
              <node concept="1pGfFk" id="2zElYzLnYK7" role="2ShVmc">
                <ref role="37wK5l" to="jkm4:~Splitter.&lt;init&gt;()" resolve="Splitter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YX357bjJH9" role="3cqZAp">
          <node concept="2OqwBi" id="3YX357bjJHb" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTwpm" role="2Oq$k0">
              <ref role="3cqZAo" node="2zElYzLnYK3" resolve="splitter" />
            </node>
            <node concept="liA8E" id="3YX357bjJHf" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setDividerWidth(int)" resolve="setDividerWidth" />
              <node concept="3cmrfG" id="3YX357bjJHu" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gnR903hj9S" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzeVq" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="3GM_nagT$wj" role="37wK5m">
              <ref role="3cqZAo" node="2zElYzLnYK3" resolve="splitter" />
            </node>
            <node concept="10M0yZ" id="5gnR903hj9W" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bB3g$9X9fw" role="3cqZAp">
          <node concept="2OqwBi" id="bB3g$9X9fy" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTu9v" role="2Oq$k0">
              <ref role="3cqZAo" node="2zElYzLnYK3" resolve="splitter" />
            </node>
            <node concept="liA8E" id="bB3g$9XbpW" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setFirstComponent(javax.swing.JComponent)" resolve="setFirstComponent" />
              <node concept="2ShNRf" id="bB3g$9XbpX" role="37wK5m">
                <node concept="1pGfFk" id="bB3g$9XbpZ" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JBScrollPane" />
                  <node concept="37vLTw" id="2BHiRxeuInT" role="37wK5m">
                    <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5F8pT3LVUGD" role="3cqZAp">
          <node concept="2OqwBi" id="5F8pT3LVUGF" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTzml" role="2Oq$k0">
              <ref role="3cqZAo" node="2zElYzLnYK3" resolve="splitter" />
            </node>
            <node concept="liA8E" id="5F8pT3LVUGJ" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setSecondComponent(javax.swing.JComponent)" resolve="setSecondComponent" />
              <node concept="2ShNRf" id="5F8pT3LVUGK" role="37wK5m">
                <node concept="1pGfFk" id="5F8pT3LVUGM" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JBScrollPane" />
                  <node concept="37vLTw" id="2BHiRxeusI8" role="37wK5m">
                    <ref role="3cqZAo" node="3oy_yTlMZ6E" resolve="myRightTree" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="dBB26391X9" role="3cqZAp" />
        <node concept="3clFbF" id="5gnR903hja2" role="3cqZAp">
          <node concept="2OqwBi" id="5gnR903hja4" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuq7l" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
            </node>
            <node concept="liA8E" id="5gnR903hja8" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTree.addTreeSelectionListener(javax.swing.event.TreeSelectionListener)" resolve="addTreeSelectionListener" />
              <node concept="2ShNRf" id="5gnR903hja9" role="37wK5m">
                <node concept="YeOm9" id="5gnR903hjaa" role="2ShVmc">
                  <node concept="1Y3b0j" id="5gnR903hjab" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="gsia:~TreeSelectionListener" resolve="TreeSelectionListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="5gnR903hjac" role="1B3o_S" />
                    <node concept="3clFb_" id="5gnR903hjad" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="valueChanged" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="5gnR903hjae" role="1B3o_S" />
                      <node concept="3cqZAl" id="5gnR903hjaf" role="3clF45" />
                      <node concept="37vLTG" id="5gnR903hjag" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="5gnR903hjah" role="1tU5fm">
                          <ref role="3uigEE" to="gsia:~TreeSelectionEvent" resolve="TreeSelectionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5gnR903hjai" role="3clF47">
                        <node concept="3clFbF" id="5gnR903hjbD" role="3cqZAp">
                          <node concept="1rXfSq" id="4hiugqyz8bP" role="3clFbG">
                            <ref role="37wK5l" node="5gnR903hja$" resolve="rebuildDependencies" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_UuTF" role="2AJF6D">
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
      <node concept="37vLTG" id="5gnR903hj9w" role="3clF46">
        <property role="TrG5h" value="tool" />
        <node concept="3uibUv" id="7h272464Odt" role="1tU5fm">
          <ref role="3uigEE" to="71xd:~BaseTool" resolve="BaseTool" />
        </node>
      </node>
      <node concept="37vLTG" id="5gnR903hj96" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5gnR903hj97" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5gnR903hpj9" role="jymVt">
      <property role="TrG5h" value="setModules" />
      <node concept="3cqZAl" id="5gnR903hpja" role="3clF45" />
      <node concept="3Tm1VV" id="5gnR903hpjb" role="1B3o_S" />
      <node concept="3clFbS" id="5gnR903hpjc" role="3clF47">
        <node concept="3clFbF" id="5gnR903hpjn" role="3cqZAp">
          <node concept="2OqwBi" id="5gnR903hpjp" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuu3G" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
            </node>
            <node concept="liA8E" id="5gnR903hpjt" role="2OqNvi">
              <ref role="37wK5l" node="3YtP95zXLeH" resolve="setModules" />
              <node concept="37vLTw" id="2BHiRxgliAU" role="37wK5m">
                <ref role="3cqZAo" node="5gnR903hpjd" resolve="modules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TkeKW9Izmy" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyJH_" role="3clFbG">
            <ref role="37wK5l" node="5gnR903hjbm" resolve="resetAll" />
          </node>
        </node>
        <node concept="3clFbF" id="74pxCYHqa5_" role="3cqZAp">
          <node concept="2OqwBi" id="74pxCYHqaZW" role="3clFbG">
            <node concept="37vLTw" id="74pxCYHqa5$" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
            </node>
            <node concept="liA8E" id="74pxCYHqgl1" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.expandRoot()" resolve="expandRoot" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5gnR903hpjd" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="6TI6RSr9kns" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5gnR903hja$" role="jymVt">
      <property role="TrG5h" value="rebuildDependencies" />
      <node concept="3cqZAl" id="5gnR903hja_" role="3clF45" />
      <node concept="3Tm1VV" id="5gnR903hjaA" role="1B3o_S" />
      <node concept="3clFbS" id="5gnR903hjaB" role="3clF47">
        <node concept="3SKdUt" id="7TkeKW9Izm_" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorWU" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorWV" role="1PaTwD">
              <property role="3oM_SC" value="rebuild" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWW" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWX" role="1PaTwD">
              <property role="3oM_SC" value="tree" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWY" role="1PaTwD">
              <property role="3oM_SC" value="based" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorWZ" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorX0" role="1PaTwD">
              <property role="3oM_SC" value="selection" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorX1" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorX2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorX3" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gnR903hjaD" role="3cqZAp">
          <node concept="2OqwBi" id="5gnR903hjaF" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeugmY" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMZ6E" resolve="myRightTree" />
            </node>
            <node concept="liA8E" id="5gnR903hjaJ" role="2OqNvi">
              <ref role="37wK5l" node="AnAlNI7zW7" resolve="resetDependencies" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6$ufTnEUQWv" role="3cqZAp">
          <node concept="3cpWsn" id="6$ufTnEUQWw" role="3cpWs9">
            <property role="TrG5h" value="paths" />
            <node concept="10Q1$e" id="6$ufTnEUQWx" role="1tU5fm">
              <node concept="3uibUv" id="6$ufTnEUQWy" role="10Q1$1">
                <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
              </node>
            </node>
            <node concept="2OqwBi" id="5gnR903hjaM" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxeukkS" role="2Oq$k0">
                <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
              </node>
              <node concept="liA8E" id="5gnR903hjaQ" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTree.getSelectionPaths()" resolve="getSelectionPaths" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6$ufTnEUQWC" role="3cqZAp">
          <node concept="3clFbS" id="6$ufTnEUQWD" role="3clFbx">
            <node concept="2Gpval" id="6$ufTnEUQWE" role="3cqZAp">
              <node concept="2GrKxI" id="6$ufTnEUQWF" role="2Gsz3X">
                <property role="TrG5h" value="path" />
              </node>
              <node concept="37vLTw" id="3GM_nagTxiP" role="2GsD0m">
                <ref role="3cqZAo" node="6$ufTnEUQWw" resolve="paths" />
              </node>
              <node concept="3clFbS" id="6$ufTnEUQWH" role="2LFqv$">
                <node concept="3cpWs8" id="6$ufTnEUQWI" role="3cqZAp">
                  <node concept="3cpWsn" id="6$ufTnEUQWJ" role="3cpWs9">
                    <property role="TrG5h" value="o" />
                    <node concept="3uibUv" id="7TkeKW9IzmD" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="6$ufTnEUQWN" role="33vP2m">
                      <node concept="2GrUjf" id="6$ufTnEUQWO" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6$ufTnEUQWF" resolve="path" />
                      </node>
                      <node concept="liA8E" id="6$ufTnEUQWP" role="2OqNvi">
                        <ref role="37wK5l" to="rgfa:~TreePath.getLastPathComponent()" resolve="getLastPathComponent" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6$ufTnEUQWQ" role="3cqZAp">
                  <node concept="1Wc70l" id="6$qoHtvDgCi" role="3clFbw">
                    <node concept="3y3z36" id="6$qoHtvDgJN" role="3uHU7w">
                      <node concept="2OqwBi" id="6$qoHtvDhc9" role="3uHU7w">
                        <node concept="37vLTw" id="6$qoHtvDgLa" role="2Oq$k0">
                          <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
                        </node>
                        <node concept="liA8E" id="6$qoHtvDmwc" role="2OqNvi">
                          <ref role="37wK5l" to="7e8u:~MPSTree.getRootNode()" resolve="getRootNode" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6$qoHtvDgJ4" role="3uHU7B">
                        <ref role="3cqZAo" node="6$ufTnEUQWJ" resolve="o" />
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="6$ufTnEUQX$" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTrwo" role="2ZW6bz">
                        <ref role="3cqZAo" node="6$ufTnEUQWJ" resolve="o" />
                      </node>
                      <node concept="3uibUv" id="6$ufTnEUQXA" role="2ZW6by">
                        <ref role="3uigEE" node="3YtP95zXIo3" resolve="ModuleDependencyNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6$ufTnEUQWR" role="3clFbx">
                    <node concept="3cpWs8" id="6$ufTnEUQWS" role="3cqZAp">
                      <node concept="3cpWsn" id="6$ufTnEUQWT" role="3cpWs9">
                        <property role="TrG5h" value="node" />
                        <node concept="3uibUv" id="6$ufTnEUQWU" role="1tU5fm">
                          <ref role="3uigEE" node="3YtP95zXIo3" resolve="ModuleDependencyNode" />
                        </node>
                        <node concept="10QFUN" id="6$ufTnEUQWV" role="33vP2m">
                          <node concept="3uibUv" id="6$ufTnEUQWW" role="10QFUM">
                            <ref role="3uigEE" node="3YtP95zXIo3" resolve="ModuleDependencyNode" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTtTE" role="10QFUP">
                            <ref role="3cqZAo" node="6$ufTnEUQWJ" resolve="o" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6TI6RSrcTjq" role="3cqZAp">
                      <node concept="2OqwBi" id="6TI6RSrcU2a" role="3clFbG">
                        <node concept="37vLTw" id="6TI6RSrcTjp" role="2Oq$k0">
                          <ref role="3cqZAo" node="3oy_yTlMZ6E" resolve="myRightTree" />
                        </node>
                        <node concept="liA8E" id="6TI6RSrcZvE" role="2OqNvi">
                          <ref role="37wK5l" node="6TI6RSrckpj" resolve="revealDependencies" />
                          <node concept="2OqwBi" id="6TI6RSrcZP5" role="37wK5m">
                            <node concept="37vLTw" id="6TI6RSrcZ$2" role="2Oq$k0">
                              <ref role="3cqZAo" node="6$ufTnEUQWT" resolve="node" />
                            </node>
                            <node concept="liA8E" id="6TI6RSrd3$T" role="2OqNvi">
                              <ref role="37wK5l" node="6TI6RSqXJL7" resolve="getCapturedDependencies" />
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
          <node concept="3y3z36" id="6$ufTnEUQXB" role="3clFbw">
            <node concept="10Nm6u" id="6$ufTnEUQXC" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTzWB" role="3uHU7B">
              <ref role="3cqZAo" node="6$ufTnEUQWw" resolve="paths" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gnR903hjbf" role="3cqZAp">
          <node concept="2OqwBi" id="5gnR903hjbh" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuAWS" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMZ6E" resolve="myRightTree" />
            </node>
            <node concept="liA8E" id="5gnR903hjbl" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildNow()" resolve="rebuildNow" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1lQA51452gl" role="3cqZAp">
          <node concept="2OqwBi" id="1lQA51452gn" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunbV" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMZ6E" resolve="myRightTree" />
            </node>
            <node concept="liA8E" id="1lQA51452gr" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.expandAll()" resolve="expandAll" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="27BaQbjOtpD" role="jymVt">
      <property role="TrG5h" value="setShowRuntime" />
      <node concept="3cqZAl" id="27BaQbjOtpE" role="3clF45" />
      <node concept="3Tm6S6" id="1FF77I4KHgF" role="1B3o_S" />
      <node concept="3clFbS" id="27BaQbjOtpG" role="3clF47">
        <node concept="3clFbF" id="27BaQbjOtCd" role="3cqZAp">
          <node concept="2OqwBi" id="27BaQbjOtCe" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuqQI" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
            </node>
            <node concept="liA8E" id="27BaQbjOtCg" role="2OqNvi">
              <ref role="37wK5l" node="5VaNJtFGeJQ" resolve="setShowRuntime" />
              <node concept="37vLTw" id="2BHiRxgmys4" role="37wK5m">
                <ref role="3cqZAo" node="27BaQbjOtpH" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="27BaQbjOtCn" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9zj" role="3clFbG">
            <ref role="37wK5l" node="5gnR903hjbm" resolve="resetAll" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="27BaQbjOtpH" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10P_77" id="27BaQbjOtpI" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="27BaQbjOtCp" role="jymVt">
      <property role="TrG5h" value="setShowUsedLanguages" />
      <node concept="3cqZAl" id="27BaQbjOtCq" role="3clF45" />
      <node concept="3Tm6S6" id="1FF77I4KHgG" role="1B3o_S" />
      <node concept="3clFbS" id="27BaQbjOtCs" role="3clF47">
        <node concept="3clFbF" id="27BaQbjOtCv" role="3cqZAp">
          <node concept="2OqwBi" id="27BaQbjOtCw" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuxLl" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
            </node>
            <node concept="liA8E" id="27BaQbjOtCy" role="2OqNvi">
              <ref role="37wK5l" node="5VaNJtFGeK2" resolve="setShowUsedLanguage" />
              <node concept="37vLTw" id="2BHiRxgm98w" role="37wK5m">
                <ref role="3cqZAo" node="27BaQbjOtCt" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="27BaQbjOtC$" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8Lu" role="3clFbG">
            <ref role="37wK5l" node="5gnR903hjbm" resolve="resetAll" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="27BaQbjOtCt" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10P_77" id="27BaQbjOtCu" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="5gnR903hjbm" role="jymVt">
      <property role="TrG5h" value="resetAll" />
      <node concept="3cqZAl" id="5gnR903hjbn" role="3clF45" />
      <node concept="3Tm1VV" id="5gnR903hjbo" role="1B3o_S" />
      <node concept="3clFbS" id="5gnR903hjbp" role="3clF47">
        <node concept="3clFbF" id="6$ufTnEUQYc" role="3cqZAp">
          <node concept="2OqwBi" id="5gnR903hjbs" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTte" role="2Oq$k0">
              <ref role="3cqZAo" node="3oy_yTlMYki" resolve="myLeftTree" />
            </node>
            <node concept="liA8E" id="5gnR903hjbw" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.rebuildNow()" resolve="rebuildNow" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KfhJ3ClX$8" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyYup" role="3clFbG">
            <ref role="37wK5l" node="5gnR903hja$" resolve="rebuildDependencies" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="vRAM6BkNhf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getData" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="3oy_yTm1d9G" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="vRAM6BkNhg" role="1B3o_S" />
      <node concept="37vLTG" id="vRAM6BkNhj" role="3clF46">
        <property role="TrG5h" value="dataId" />
        <node concept="17QB3L" id="vRAM6BtzZo" role="1tU5fm" />
        <node concept="2AHcQZ" id="vRAM6BkNhl" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="2AHcQZ" id="vRAM6BkNhm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="vRAM6BsJ7b" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="vRAM6BkNhp" role="3clF47">
        <node concept="3clFbJ" id="vRAM6Bl$VH" role="3cqZAp">
          <node concept="3clFbS" id="vRAM6Bl$VJ" role="3clFbx">
            <node concept="3cpWs6" id="vRAM6BlN4e" role="3cqZAp">
              <node concept="Rm8GO" id="29TpidqgiXs" role="3cqZAk">
                <ref role="1Px2BO" to="3s15:~ActionPlace" resolve="ActionPlace" />
                <ref role="Rm8GQ" to="3s15:~ActionPlace.MODULE_DEPENDENCIES" resolve="MODULE_DEPENDENCIES" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5EpuqcILDnX" role="3clFbw">
            <node concept="10M0yZ" id="vRAM6BlH1Z" role="2Oq$k0">
              <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.PLACE" resolve="PLACE" />
              <ref role="1PxDUh" to="qq03:~MPSCommonDataKeys" resolve="MPSCommonDataKeys" />
            </node>
            <node concept="liA8E" id="5EpuqcILGiJ" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataKey.is(java.lang.String)" resolve="is" />
              <node concept="37vLTw" id="5EpuqcILJ8e" role="37wK5m">
                <ref role="3cqZAo" node="vRAM6BkNhj" resolve="dataId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="vRAM6Bll8p" role="3cqZAp">
          <node concept="10Nm6u" id="vRAM6Bll8q" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="27BaQbjOrsb" role="jymVt">
      <property role="TrG5h" value="MyToggleAction" />
      <property role="2bfB8j" value="false" />
      <node concept="3Tm1VV" id="27BaQbjOrsc" role="1B3o_S" />
      <node concept="3uibUv" id="27BaQbjOtoc" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
      </node>
      <node concept="312cEg" id="27BaQbjOtod" role="jymVt">
        <property role="TrG5h" value="myValue" />
        <node concept="3Tm6S6" id="27BaQbjOtoe" role="1B3o_S" />
        <node concept="10P_77" id="27BaQbjOtog" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="27BaQbjOtou" role="jymVt">
        <property role="TrG5h" value="mySetValue" />
        <node concept="3Tm6S6" id="27BaQbjOtov" role="1B3o_S" />
        <node concept="1ajhzC" id="27BaQbjOtox" role="1tU5fm">
          <node concept="3cqZAl" id="27BaQbjOtoz" role="1ajl9A" />
          <node concept="10P_77" id="27BaQbjOto$" role="1ajw0F" />
        </node>
      </node>
      <node concept="3clFbW" id="27BaQbjOrsd" role="jymVt">
        <node concept="3cqZAl" id="27BaQbjOrse" role="3clF45" />
        <node concept="3Tm1VV" id="27BaQbjOrsf" role="1B3o_S" />
        <node concept="3clFbS" id="27BaQbjOrsg" role="3clF47">
          <node concept="XkiVB" id="27BaQbjOtpp" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="ToggleAction" />
            <node concept="37vLTw" id="2BHiRxghfZy" role="37wK5m">
              <ref role="3cqZAo" node="27BaQbjOtpi" resolve="title" />
            </node>
            <node concept="37vLTw" id="2BHiRxgkWmO" role="37wK5m">
              <ref role="3cqZAo" node="27BaQbjOtpi" resolve="title" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm2sr" role="37wK5m">
              <ref role="3cqZAo" node="27BaQbjOtpl" resolve="icon" />
            </node>
          </node>
          <node concept="3clFbF" id="27BaQbjOto_" role="3cqZAp">
            <node concept="37vLTI" id="27BaQbjOtoB" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgl_GT" role="37vLTx">
                <ref role="3cqZAo" node="27BaQbjOtoh" resolve="value" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuxK_" role="37vLTJ">
                <ref role="3cqZAo" node="27BaQbjOtod" resolve="myValue" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="27BaQbjOtoG" role="3cqZAp">
            <node concept="37vLTI" id="27BaQbjOtoI" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgkWAm" role="37vLTx">
                <ref role="3cqZAo" node="27BaQbjOtoj" resolve="setValue" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuE2P" role="37vLTJ">
                <ref role="3cqZAo" node="27BaQbjOtou" resolve="mySetValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="27BaQbjOtpi" role="3clF46">
          <property role="TrG5h" value="title" />
          <node concept="17QB3L" id="27BaQbjOtpk" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="27BaQbjOtpl" role="3clF46">
          <property role="TrG5h" value="icon" />
          <node concept="3uibUv" id="27BaQbjOtpn" role="1tU5fm">
            <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
          </node>
        </node>
        <node concept="37vLTG" id="27BaQbjOtoh" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="10P_77" id="27BaQbjOtoi" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="27BaQbjOtoj" role="3clF46">
          <property role="TrG5h" value="setValue" />
          <node concept="1ajhzC" id="27BaQbjOtoq" role="1tU5fm">
            <node concept="3cqZAl" id="27BaQbjOtot" role="1ajl9A" />
            <node concept="10P_77" id="27BaQbjOtos" role="1ajw0F" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="27BaQbjOtoM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setSelected" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="27BaQbjOtoN" role="1B3o_S" />
        <node concept="3cqZAl" id="27BaQbjOtoO" role="3clF45" />
        <node concept="37vLTG" id="27BaQbjOtoP" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="27BaQbjOtoQ" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="37vLTG" id="27BaQbjOtoR" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="10P_77" id="27BaQbjOtoS" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="27BaQbjOtoT" role="3clF47">
          <node concept="3clFbF" id="27BaQbjOtp4" role="3cqZAp">
            <node concept="2Sg_IR" id="27BaQbjOtp6" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeumOE" role="2SgG2M">
                <ref role="3cqZAo" node="27BaQbjOtou" resolve="mySetValue" />
              </node>
              <node concept="37vLTI" id="27BaQbjOtpa" role="2SgHGx">
                <node concept="37vLTw" id="2BHiRxgmKsP" role="37vLTx">
                  <ref role="3cqZAo" node="27BaQbjOtoR" resolve="b" />
                </node>
                <node concept="37vLTw" id="2BHiRxeu$BH" role="37vLTJ">
                  <ref role="3cqZAo" node="27BaQbjOtod" resolve="myValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_S68c" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="27BaQbjOtoU" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isSelected" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="27BaQbjOtoV" role="1B3o_S" />
        <node concept="10P_77" id="27BaQbjOtoW" role="3clF45" />
        <node concept="37vLTG" id="27BaQbjOtoX" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="27BaQbjOtoY" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="27BaQbjOtoZ" role="3clF47">
          <node concept="3clFbF" id="27BaQbjOtp2" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeundx" role="3clFbG">
              <ref role="3cqZAo" node="27BaQbjOtod" resolve="myValue" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_S68b" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5xBMjUKCBbN" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="5xBMjUKCBbO" role="1B3o_S" />
        <node concept="2AHcQZ" id="5xBMjUKCBbP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5xBMjUKCBbQ" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="5xBMjUKCBbR" role="3clF47">
          <node concept="3clFbF" id="5xBMjUKCBbS" role="3cqZAp">
            <node concept="Rm8GO" id="5xBMjUKCF5R" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.EDT" resolve="EDT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5xBMjUKCBbT" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="3oy_yTlRqC0" role="EKbjA">
      <ref role="3uigEE" to="qkt:~DataProvider" resolve="DataProvider" />
    </node>
  </node>
  <node concept="312cEu" id="Qjxfu1vy18">
    <property role="TrG5h" value="DependencyUtil" />
    <property role="1EXbeo" value="true" />
    <property role="3GE5qa" value="view1" />
    <node concept="3Tm1VV" id="6TI6RSrm3zc" role="1B3o_S" />
    <node concept="312cEg" id="6TI6RSqOvPr" role="jymVt">
      <property role="TrG5h" value="myNeedRuntime" />
      <node concept="3Tm6S6" id="6TI6RSqOvPs" role="1B3o_S" />
      <node concept="10P_77" id="6TI6RSqOvPu" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7yrEqDbGJXT" role="jymVt">
      <property role="TrG5h" value="myRepo" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7yrEqDbGJXU" role="1B3o_S" />
      <node concept="3uibUv" id="7yrEqDbGMQ_" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="4AxH6sXT5CD" role="jymVt" />
    <node concept="3clFbW" id="Qjxfu1vy1a" role="jymVt">
      <node concept="3cqZAl" id="Qjxfu1vy1b" role="3clF45" />
      <node concept="3clFbS" id="Qjxfu1vy1d" role="3clF47">
        <node concept="3SKdUt" id="4AxH6sXTgh7" role="3cqZAp">
          <node concept="1PaTwC" id="4AxH6sXTgh8" role="1aUNEU">
            <node concept="3oM_SD" id="4AxH6sXTgF8" role="1PaTwD">
              <property role="3oM_SC" value="although" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFa" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFd" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFh" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFm" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFs" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFz" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFF" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFO" role="1PaTwD">
              <property role="3oM_SC" value="package" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgFY" role="1PaTwD">
              <property role="3oM_SC" value="only," />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgG9" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgGl" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgGy" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTgGK" role="1PaTwD">
              <property role="3oM_SC" value="public" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AxH6sXThrz" role="3cqZAp">
          <node concept="1PaTwC" id="4AxH6sXThr$" role="1aUNEU">
            <node concept="3oM_SD" id="4AxH6sXThIQ" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThPQ" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThPT" role="1PaTwD">
              <property role="3oM_SC" value="ModuleDependenciesTest," />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThPX" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThQ2" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThQ8" role="1PaTwD">
              <property role="3oM_SC" value="loaded" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThQf" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThQn" role="1PaTwD">
              <property role="3oM_SC" value="*another*" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThQw" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXThQE" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AxH6sXTiAg" role="3cqZAp">
          <node concept="1PaTwC" id="4AxH6sXTiAh" role="1aUNEU">
            <node concept="3oM_SD" id="4AxH6sXTj0H" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj0J" role="1PaTwD">
              <property role="3oM_SC" value="Java" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj0M" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj0Q" role="1PaTwD">
              <property role="3oM_SC" value="tolerate" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj11" role="1PaTwD">
              <property role="3oM_SC" value="accessing" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj12" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj13" role="1PaTwD">
              <property role="3oM_SC" value="package" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj14" role="1PaTwD">
              <property role="3oM_SC" value="scoped" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj15" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj16" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj17" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj18" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj19" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AxH6sXTj2e" role="3cqZAp">
          <node concept="1PaTwC" id="4AxH6sXTj1M" role="1aUNEU">
            <node concept="3oM_SD" id="4AxH6sXTj1L" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1a" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1b" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1c" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1d" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1e" role="1PaTwD">
              <property role="3oM_SC" value="package" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1f" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1g" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1h" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1i" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1j" role="1PaTwD">
              <property role="3oM_SC" value="different" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1k" role="1PaTwD">
              <property role="3oM_SC" value="jar" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1l" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTj1m" role="1PaTwD">
              <property role="3oM_SC" value="classloader." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AxH6sXTkdD" role="3cqZAp">
          <node concept="1PaTwC" id="4AxH6sXTkdE" role="1aUNEU">
            <node concept="3oM_SD" id="4AxH6sXTkC_" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkCI" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkCU" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkCY" role="1PaTwD">
              <property role="3oM_SC" value="nice" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkD3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkD9" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkDg" role="1PaTwD">
              <property role="3oM_SC" value="once" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkDo" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkDx" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkDF" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkDQ" role="1PaTwD">
              <property role="3oM_SC" value="classes" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkEt" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkEE" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkES" role="1PaTwD">
              <property role="3oM_SC" value="app" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkF7" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTlRo" role="1PaTwD">
              <property role="3oM_SC" value="(out" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTlRF" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTlRZ" role="1PaTwD">
              <property role="3oM_SC" value="mps-workbench)" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTkFn" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AxH6sXTlTr" role="3cqZAp">
          <node concept="1PaTwC" id="4AxH6sXTlT5" role="1aUNEU">
            <node concept="3oM_SD" id="4AxH6sXTlT4" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmlo" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmKY" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmKE" role="1PaTwD">
              <property role="3oM_SC" value="CL," />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmLj" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmLD" role="1PaTwD">
              <property role="3oM_SC" value="our" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmM0" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmMo" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmNh" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmNr" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmNA" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmO2" role="1PaTwD">
              <property role="3oM_SC" value="relaxed" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmOv" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmOH" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmPc" role="1PaTwD">
              <property role="3oM_SC" value="(I" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmPW" role="1PaTwD">
              <property role="3oM_SC" value="doubt" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmQt" role="1PaTwD">
              <property role="3oM_SC" value="that," />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmQJ" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmR2" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmRQ" role="1PaTwD">
              <property role="3oM_SC" value="Java" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTmSr" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4AxH6sXTmUp" role="3cqZAp">
          <node concept="1PaTwC" id="4AxH6sXTmU2" role="1aUNEU">
            <node concept="3oM_SD" id="4AxH6sXTmU1" role="1PaTwD">
              <property role="3oM_SC" value="restriction," />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTnn2" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTnnl" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTnnp" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTnnu" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTnnO" role="1PaTwD">
              <property role="3oM_SC" value="CL," />
            </node>
            <node concept="3oM_SD" id="4AxH6sXTnoF" role="1PaTwD">
              <property role="3oM_SC" value="though)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7yrEqDbGEky" role="3cqZAp">
          <node concept="37vLTI" id="7yrEqDbGEk$" role="3clFbG">
            <node concept="37vLTw" id="7yrEqDbGMS1" role="37vLTJ">
              <ref role="3cqZAo" node="7yrEqDbGJXT" resolve="myRepo" />
            </node>
            <node concept="37vLTw" id="7yrEqDbGEkG" role="37vLTx">
              <ref role="3cqZAo" node="7yrEqDbGEkd" resolve="repo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7yrEqDbGEkd" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="7yrEqDbGEkc" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4AxH6sXT5eJ" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="6TI6RSqO2N$" role="jymVt">
      <property role="TrG5h" value="trackRuntime" />
      <node concept="3uibUv" id="6TI6RSqOlCZ" role="3clF45">
        <ref role="3uigEE" node="Qjxfu1vy18" resolve="DependencyUtil" />
      </node>
      <node concept="3Tm1VV" id="6TI6RSqO2NB" role="1B3o_S" />
      <node concept="3clFbS" id="6TI6RSqO2NC" role="3clF47">
        <node concept="3clFbF" id="6TI6RSqOvPv" role="3cqZAp">
          <node concept="37vLTI" id="6TI6RSqOvPx" role="3clFbG">
            <node concept="2OqwBi" id="6TI6RSqOvP_" role="37vLTJ">
              <node concept="Xjq3P" id="6TI6RSqOvPC" role="2Oq$k0" />
              <node concept="2OwXpG" id="6TI6RSqPTxh" role="2OqNvi">
                <ref role="2Oxat5" node="6TI6RSqOvPr" resolve="myNeedRuntime" />
              </node>
            </node>
            <node concept="37vLTw" id="6TI6RSqOvPD" role="37vLTx">
              <ref role="3cqZAo" node="6TI6RSqOhQv" resolve="needRuntime" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6TI6RSqOpg0" role="3cqZAp">
          <node concept="Xjq3P" id="6TI6RSqOpgX" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="6TI6RSqOhQv" role="3clF46">
        <property role="TrG5h" value="needRuntime" />
        <node concept="10P_77" id="6TI6RSqOhQu" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="65vkPOiK2zp" role="jymVt" />
    <node concept="3clFb_" id="6TI6RSqPYeV" role="jymVt">
      <property role="TrG5h" value="build" />
      <node concept="3uibUv" id="6TI6RSqQ6Dl" role="3clF45">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
      <node concept="3clFbS" id="6TI6RSqPYeY" role="3clF47">
        <node concept="3cpWs8" id="6TI6RSqS3EL" role="3cqZAp">
          <node concept="3cpWsn" id="6TI6RSqS3EM" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="6TI6RSqS3EN" role="1tU5fm">
              <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
            </node>
            <node concept="2ShNRf" id="6TI6RSqS53D" role="33vP2m">
              <node concept="1pGfFk" id="6TI6RSqS5G9" role="2ShVmc">
                <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                <node concept="2OqwBi" id="7yrEqDbFJVw" role="37wK5m">
                  <node concept="37vLTw" id="6TI6RSqS5MX" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TI6RSqQBdC" resolve="module" />
                  </node>
                  <node concept="liA8E" id="7yrEqDbFMpd" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                  </node>
                </node>
                <node concept="Rm8GO" id="6TI6RSqS5U0" role="37wK5m">
                  <ref role="Rm8GQ" node="6F582lFlfyA" resolve="None" />
                  <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                </node>
                <node concept="10Nm6u" id="6TI6RSqScRu" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6TI6RSqSJfh" role="3cqZAp">
          <node concept="3cpWsn" id="6TI6RSqSJfk" role="3cpWs9">
            <property role="TrG5h" value="queue" />
            <node concept="_YKpA" id="N_vzraYzzk" role="1tU5fm">
              <node concept="3uibUv" id="N_vzraYzzm" role="_ZDj9">
                <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
              </node>
            </node>
            <node concept="2ShNRf" id="6TI6RSqSNTI" role="33vP2m">
              <node concept="2Jqq0_" id="6TI6RSqSPmr" role="2ShVmc">
                <node concept="3uibUv" id="6TI6RSqSPES" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TI6RSqTiyy" role="3cqZAp">
          <node concept="2OqwBi" id="6TI6RSqTmIZ" role="3clFbG">
            <node concept="37vLTw" id="6TI6RSqVmA8" role="2Oq$k0">
              <ref role="3cqZAo" node="6TI6RSqSJfk" resolve="queue" />
            </node>
            <node concept="2Ke9KJ" id="6TI6RSrpm4Y" role="2OqNvi">
              <node concept="37vLTw" id="6TI6RSrpm50" role="25WWJ7">
                <ref role="3cqZAo" node="6TI6RSqS3EM" resolve="rv" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="65vkPOiIpD_" role="3cqZAp">
          <node concept="3cpWsn" id="65vkPOiIpDC" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="3rvAFt" id="65vkPOiIpDv" role="1tU5fm">
              <node concept="2pR195" id="65vkPOiItoP" role="3rvQeY">
                <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
              </node>
              <node concept="3uibUv" id="65vkPOiItvP" role="3rvSg0">
                <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
              </node>
            </node>
            <node concept="2ShNRf" id="65vkPOiItA$" role="33vP2m">
              <node concept="3rGOSV" id="65vkPOiIuhl" role="2ShVmc">
                <node concept="2pR195" id="65vkPOiIxCl" role="3rHrn6">
                  <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
                </node>
                <node concept="3uibUv" id="65vkPOiIxX6" role="3rHtpV">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="6TI6RSqT9sE" role="3cqZAp">
          <node concept="3clFbS" id="6TI6RSqT9sG" role="2LFqv$">
            <node concept="3cpWs8" id="6TI6RSqTHc7" role="3cqZAp">
              <node concept="3cpWsn" id="6TI6RSqTHc8" role="3cpWs9">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="6TI6RSqTHbT" role="1tU5fm">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
                <node concept="2OqwBi" id="6TI6RSqTHc9" role="33vP2m">
                  <node concept="37vLTw" id="6TI6RSqTHca" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TI6RSqSJfk" resolve="queue" />
                  </node>
                  <node concept="2Kt2Hk" id="6TI6RSqTHcb" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6TI6RSqQReO" role="3cqZAp">
              <node concept="3cpWsn" id="6TI6RSqQReP" role="3cpWs9">
                <property role="TrG5h" value="dependencies" />
                <node concept="_YKpA" id="6TI6RSqQReI" role="1tU5fm">
                  <node concept="3uibUv" id="6TI6RSqQReL" role="_ZDj9">
                    <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                  </node>
                </node>
                <node concept="1rXfSq" id="6TI6RSqQReQ" role="33vP2m">
                  <ref role="37wK5l" node="65vkPOiEtjY" resolve="dependencies" />
                  <node concept="2OqwBi" id="6TI6RSqUvxP" role="37wK5m">
                    <node concept="37vLTw" id="6TI6RSqUtux" role="2Oq$k0">
                      <ref role="3cqZAo" node="6TI6RSqTHc8" resolve="e" />
                    </node>
                    <node concept="2OwXpG" id="6TI6RSqU$OC" role="2OqNvi">
                      <ref role="2Oxat5" node="65vkPOiCZ8k" resolve="role" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6TI6RSqUGvA" role="37wK5m">
                    <node concept="37vLTw" id="6TI6RSqUE0G" role="2Oq$k0">
                      <ref role="3cqZAo" node="6TI6RSqTHc8" resolve="e" />
                    </node>
                    <node concept="2OwXpG" id="6TI6RSqUKSc" role="2OqNvi">
                      <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6TI6RSrc5y3" role="3cqZAp">
              <node concept="2GrKxI" id="6TI6RSrc5y5" role="2Gsz3X">
                <property role="TrG5h" value="d" />
              </node>
              <node concept="37vLTw" id="6TI6RSrc5UI" role="2GsD0m">
                <ref role="3cqZAo" node="6TI6RSqQReP" resolve="dependencies" />
              </node>
              <node concept="3clFbS" id="6TI6RSrc5y9" role="2LFqv$">
                <node concept="3clFbF" id="6TI6RSrc60j" role="3cqZAp">
                  <node concept="37vLTI" id="6TI6RSrc6xq" role="3clFbG">
                    <node concept="37vLTw" id="6TI6RSrc6zb" role="37vLTx">
                      <ref role="3cqZAo" node="6TI6RSqTHc8" resolve="e" />
                    </node>
                    <node concept="2OqwBi" id="6TI6RSrc60R" role="37vLTJ">
                      <node concept="2OwXpG" id="6TI6RSrc6fv" role="2OqNvi">
                        <ref role="2Oxat5" node="65vkPOiCZ8x" resolve="myParent" />
                      </node>
                      <node concept="2GrUjf" id="65vkPOiIEDj" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6TI6RSrc5y5" resolve="d" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="65vkPOiIQ_Z" role="3cqZAp">
                  <node concept="2OqwBi" id="65vkPOiIR44" role="3clFbG">
                    <node concept="2OqwBi" id="65vkPOiIQCN" role="2Oq$k0">
                      <node concept="37vLTw" id="65vkPOiIQ_Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="6TI6RSqTHc8" resolve="e" />
                      </node>
                      <node concept="liA8E" id="65vkPOiIQOj" role="2OqNvi">
                        <ref role="37wK5l" node="65vkPOiCZ95" resolve="children" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="65vkPOiIUdh" role="2OqNvi">
                      <node concept="2GrUjf" id="65vkPOiIUgR" role="25WWJ7">
                        <ref role="2Gs0qQ" node="6TI6RSrc5y5" resolve="d" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="65vkPOiIlim" role="3cqZAp">
                  <node concept="3cpWsn" id="65vkPOiIlin" role="3cpWs9">
                    <property role="TrG5h" value="key" />
                    <node concept="2pR195" id="65vkPOiIlio" role="1tU5fm">
                      <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
                    </node>
                    <node concept="2OqwBi" id="aVgL3GZ7Sd" role="33vP2m">
                      <node concept="2GrUjf" id="pmFBCUdMPV" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6TI6RSrc5y5" resolve="d" />
                      </node>
                      <node concept="liA8E" id="aVgL3GZ8gL" role="2OqNvi">
                        <ref role="37wK5l" node="65vkPOiL_a0" resolve="getRoleModuleKey" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="65vkPOiIlFM" role="3cqZAp">
                  <node concept="3clFbS" id="65vkPOiIlFP" role="3clFbx">
                    <node concept="3clFbF" id="65vkPOiILcE" role="3cqZAp">
                      <node concept="2OqwBi" id="65vkPOiILde" role="3clFbG">
                        <node concept="2GrUjf" id="65vkPOiILcD" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6TI6RSrc5y5" resolve="d" />
                        </node>
                        <node concept="liA8E" id="ZnONWxhWbb" role="2OqNvi">
                          <ref role="37wK5l" node="65vkPOiJcP0" resolve="setReused" />
                          <node concept="3EllGN" id="65vkPOiIQi_" role="37wK5m">
                            <node concept="37vLTw" id="65vkPOiIQni" role="3ElVtu">
                              <ref role="3cqZAo" node="65vkPOiIlin" resolve="key" />
                            </node>
                            <node concept="37vLTw" id="65vkPOiIPIC" role="3ElQJh">
                              <ref role="3cqZAo" node="65vkPOiIpDC" resolve="visited" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="65vkPOiI_C$" role="3clFbw">
                    <node concept="37vLTw" id="65vkPOiI_kC" role="2Oq$k0">
                      <ref role="3cqZAo" node="65vkPOiIpDC" resolve="visited" />
                    </node>
                    <node concept="2Nt0df" id="65vkPOiIBNJ" role="2OqNvi">
                      <node concept="37vLTw" id="65vkPOiIBPq" role="38cxEo">
                        <ref role="3cqZAo" node="65vkPOiIlin" resolve="key" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="65vkPOiIG$k" role="9aQIa">
                    <node concept="3clFbS" id="65vkPOiIG$l" role="9aQI4">
                      <node concept="3clFbF" id="65vkPOiIHk4" role="3cqZAp">
                        <node concept="37vLTI" id="65vkPOiIL5V" role="3clFbG">
                          <node concept="2GrUjf" id="65vkPOiIL7g" role="37vLTx">
                            <ref role="2Gs0qQ" node="6TI6RSrc5y5" resolve="d" />
                          </node>
                          <node concept="3EllGN" id="65vkPOiIKYK" role="37vLTJ">
                            <node concept="37vLTw" id="65vkPOiIL0L" role="3ElVtu">
                              <ref role="3cqZAo" node="65vkPOiIlin" resolve="key" />
                            </node>
                            <node concept="37vLTw" id="65vkPOiIHlC" role="3ElQJh">
                              <ref role="3cqZAo" node="65vkPOiIpDC" resolve="visited" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="65vkPOiIUrT" role="3cqZAp">
                        <node concept="2OqwBi" id="65vkPOiIUGQ" role="3clFbG">
                          <node concept="37vLTw" id="65vkPOiIUrS" role="2Oq$k0">
                            <ref role="3cqZAo" node="6TI6RSqSJfk" resolve="queue" />
                          </node>
                          <node concept="TSZUe" id="65vkPOiIXux" role="2OqNvi">
                            <node concept="2GrUjf" id="65vkPOiIXxN" role="25WWJ7">
                              <ref role="2Gs0qQ" node="6TI6RSrc5y5" resolve="d" />
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
          <node concept="2OqwBi" id="6TI6RSqTA1I" role="2$JKZa">
            <node concept="37vLTw" id="6TI6RSqTdCa" role="2Oq$k0">
              <ref role="3cqZAo" node="6TI6RSqSJfk" resolve="queue" />
            </node>
            <node concept="3GX2aA" id="6TI6RSqTCfj" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="6TI6RSqSpbO" role="3cqZAp">
          <node concept="37vLTw" id="6TI6RSqSqGJ" role="3cqZAk">
            <ref role="3cqZAo" node="6TI6RSqS3EM" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6TI6RSqQ2mH" role="1B3o_S" />
      <node concept="37vLTG" id="6TI6RSqQBdC" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="6TI6RSqQBdB" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="P$JXv" id="65vkPOiK5QV" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBSC" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBSD" role="1PaTwD">
            <property role="3oM_SC" value="Build" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSE" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSF" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSG" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSH" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSI" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSJ" role="1PaTwD">
            <property role="3oM_SC" value="given" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSK" role="1PaTwD">
            <property role="3oM_SC" value="module," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSL" role="1PaTwD">
            <property role="3oM_SC" value="grouped" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSM" role="1PaTwD">
            <property role="3oM_SC" value="under" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSN" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSO" role="1PaTwD">
            <property role="3oM_SC" value="fake" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSP" role="1PaTwD">
            <property role="3oM_SC" value="root" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSQ" role="1PaTwD">
            <property role="3oM_SC" value="container" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiEtjY" role="jymVt">
      <property role="TrG5h" value="dependencies" />
      <property role="DiZV1" value="false" />
      <node concept="_YKpA" id="Qjxfu1vy41" role="3clF45">
        <node concept="3uibUv" id="Qjxfu1vy42" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="37vLTG" id="Qjxfu1vy43" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="Qjxfu1vy44" role="1tU5fm">
          <ref role="3uigEE" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
        </node>
      </node>
      <node concept="37vLTG" id="Qjxfu1vy45" role="3clF46">
        <property role="TrG5h" value="moduleRef" />
        <node concept="3uibUv" id="7yrEqDbFOLr" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
      <node concept="3clFbS" id="Qjxfu1vy49" role="3clF47">
        <node concept="3cpWs8" id="Qjxfu1vy4a" role="3cqZAp">
          <node concept="3cpWsn" id="Qjxfu1vy4b" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="Qjxfu1vy4c" role="1tU5fm">
              <node concept="3uibUv" id="Qjxfu1vy4d" role="_ZDj9">
                <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
              </node>
            </node>
            <node concept="2ShNRf" id="Qjxfu1vy4e" role="33vP2m">
              <node concept="Tc6Ow" id="Qjxfu1vy4f" role="2ShVmc">
                <node concept="3uibUv" id="Qjxfu1vy4g" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7yrEqDbG4xW" role="3cqZAp">
          <node concept="3cpWsn" id="7yrEqDbG4xX" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="7yrEqDbG4xY" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="7yrEqDbG7r_" role="33vP2m">
              <node concept="37vLTw" id="7yrEqDbG7oV" role="2Oq$k0">
                <ref role="3cqZAo" node="Qjxfu1vy45" resolve="moduleRef" />
              </node>
              <node concept="liA8E" id="7yrEqDbG7FS" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                <node concept="37vLTw" id="7yrEqDbGPDw" role="37wK5m">
                  <ref role="3cqZAo" node="7yrEqDbGJXT" resolve="myRepo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3yHXoEBLjlk" role="3cqZAp">
          <node concept="3clFbS" id="3yHXoEBLjlm" role="3clFbx">
            <node concept="3cpWs6" id="2VlVRNU1azH" role="3cqZAp">
              <node concept="37vLTw" id="2VlVRNU1bFK" role="3cqZAk">
                <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3yHXoEBLmJ9" role="3clFbw">
            <node concept="10Nm6u" id="3yHXoEBLnTs" role="3uHU7w" />
            <node concept="37vLTw" id="3yHXoEBLlDs" role="3uHU7B">
              <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="Qjxfu1vy4n" role="3cqZAp">
          <node concept="3KbdKl" id="65vkPOiH0Tx" role="3KbHQx">
            <node concept="Rm8GO" id="65vkPOiH4m9" role="3Kbmr1">
              <ref role="Rm8GQ" node="6F582lFlfyC" resolve="OwnedGenerator" />
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
            </node>
            <node concept="3clFbS" id="65vkPOiH0Tz" role="3Kbo56" />
          </node>
          <node concept="3KbdKl" id="Qjxfu1vy4o" role="3KbHQx">
            <node concept="Rm8GO" id="Qjxfu1vy4p" role="3Kbmr1">
              <ref role="Rm8GQ" node="6F582lFlfyA" resolve="None" />
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
            </node>
            <node concept="3clFbS" id="Qjxfu1vy4q" role="3Kbo56">
              <node concept="3SKdUt" id="Qjxfu1vy4r" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXorX7" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXorX8" role="1PaTwD">
                    <property role="3oM_SC" value="first" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorX9" role="1PaTwD">
                    <property role="3oM_SC" value="step" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3yHXoEBKrSW" role="3cqZAp">
                <node concept="1rXfSq" id="3yHXoEBKrSU" role="3clFbG">
                  <ref role="37wK5l" node="3yHXoEBFhKl" resolve="addUsedLanguagesAndDevkitsOf" />
                  <node concept="37vLTw" id="3yHXoEBLepV" role="37wK5m">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                  <node concept="37vLTw" id="3yHXoEBKuwR" role="37wK5m">
                    <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                  </node>
                  <node concept="3clFbT" id="3yHXoEBKuG5" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="1DcWWT" id="6TI6RSqJj1i" role="3cqZAp">
                <node concept="3clFbS" id="6TI6RSqJj1l" role="2LFqv$">
                  <node concept="3clFbJ" id="3yHXoEBC73L" role="3cqZAp">
                    <node concept="3clFbS" id="3yHXoEBC73N" role="3clFbx">
                      <node concept="3SKdUt" id="3yHXoEBCb3f" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXorXa" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXorXb" role="1PaTwD">
                            <property role="3oM_SC" value="design-time" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXc" role="1PaTwD">
                            <property role="3oM_SC" value="dependencies" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXd" role="1PaTwD">
                            <property role="3oM_SC" value="are" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXe" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXf" role="1PaTwD">
                            <property role="3oM_SC" value="now" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXg" role="1PaTwD">
                            <property role="3oM_SC" value="value" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXh" role="1PaTwD">
                            <property role="3oM_SC" value="during" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXi" role="1PaTwD">
                            <property role="3oM_SC" value="execution" />
                          </node>
                        </node>
                      </node>
                      <node concept="3N13vt" id="3yHXoEBCaQJ" role="3cqZAp" />
                    </node>
                    <node concept="1Wc70l" id="3yHXoEBCaeD" role="3clFbw">
                      <node concept="3fqX7Q" id="3yHXoEBCaoG" role="3uHU7w">
                        <node concept="37vLTw" id="3yHXoEBCaBP" role="3fr31v">
                          <ref role="3cqZAo" node="6TI6RSqOvPr" resolve="myNeedRuntime" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="3yHXoEBC9KE" role="3uHU7B">
                        <node concept="2OqwBi" id="3yHXoEBC9n1" role="3uHU7B">
                          <node concept="37vLTw" id="3yHXoEBC9in" role="2Oq$k0">
                            <ref role="3cqZAo" node="6TI6RSqJj1o" resolve="dep" />
                          </node>
                          <node concept="liA8E" id="3yHXoEBC9vE" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SDependency.getScope()" resolve="getScope" />
                          </node>
                        </node>
                        <node concept="Rm8GO" id="3yHXoEBCa2a" role="3uHU7w">
                          <ref role="Rm8GQ" to="lui2:~SDependencyScope.DESIGN" resolve="DESIGN" />
                          <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3yHXoEBBiXf" role="3cqZAp">
                    <node concept="2OqwBi" id="3yHXoEBBlV3" role="3clFbG">
                      <node concept="37vLTw" id="3yHXoEBBiXd" role="2Oq$k0">
                        <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="3yHXoEBBmUP" role="2OqNvi">
                        <node concept="1rXfSq" id="3yHXoEBBnnb" role="25WWJ7">
                          <ref role="37wK5l" node="3yHXoEBDIOs" resolve="regularDependencyPresentation" />
                          <node concept="37vLTw" id="3yHXoEBBnxJ" role="37wK5m">
                            <ref role="3cqZAo" node="6TI6RSqJj1o" resolve="dep" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="6TI6RSqJj1o" role="1Duv9x">
                  <property role="TrG5h" value="dep" />
                  <node concept="3uibUv" id="6TI6RSqJm2Y" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6TI6RSqJlvM" role="1DdaDG">
                  <node concept="37vLTw" id="7yrEqDbGT6c" role="2Oq$k0">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                  <node concept="liA8E" id="6TI6RSqJlX9" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getDeclaredDependencies()" resolve="getDeclaredDependencies" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6TI6RSqKz95" role="3cqZAp">
                <node concept="3clFbS" id="6TI6RSqKz98" role="3clFbx">
                  <node concept="3SKdUt" id="6NG8tmYRrVC" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXorXj" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXorXk" role="1PaTwD">
                        <property role="3oM_SC" value="generators" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXl" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXm" role="1PaTwD">
                        <property role="3oM_SC" value="generators" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXn" role="1PaTwD">
                        <property role="3oM_SC" value="dependencies" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXo" role="1PaTwD">
                        <property role="3oM_SC" value="are" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXp" role="1PaTwD">
                        <property role="3oM_SC" value="now" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXq" role="1PaTwD">
                        <property role="3oM_SC" value="also" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXr" role="1PaTwD">
                        <property role="3oM_SC" value="added" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXs" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXt" role="1PaTwD">
                        <property role="3oM_SC" value="language" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXu" role="1PaTwD">
                        <property role="3oM_SC" value="dependencies" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorXv" role="1PaTwD">
                        <property role="3oM_SC" value="(MPS-15883)" />
                      </node>
                    </node>
                  </node>
                  <node concept="1DcWWT" id="6TI6RSqKEfP" role="3cqZAp">
                    <node concept="3clFbS" id="6TI6RSqKEfQ" role="2LFqv$">
                      <node concept="3clFbF" id="6TI6RSqKSUX" role="3cqZAp">
                        <node concept="2OqwBi" id="6TI6RSqKTc5" role="3clFbG">
                          <node concept="37vLTw" id="6TI6RSqKSUW" role="2Oq$k0">
                            <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="6TI6RSqKW0A" role="2OqNvi">
                            <node concept="2ShNRf" id="6TI6RSqKW4T" role="25WWJ7">
                              <node concept="1pGfFk" id="6TI6RSqKWJz" role="2ShVmc">
                                <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                                <node concept="2OqwBi" id="7yrEqDbHsg1" role="37wK5m">
                                  <node concept="37vLTw" id="6TI6RSqKWOd" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6TI6RSqKEfR" resolve="g" />
                                  </node>
                                  <node concept="liA8E" id="7yrEqDbHv2l" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleReference()" resolve="getModuleReference" />
                                  </node>
                                </node>
                                <node concept="Rm8GO" id="6TI6RSqKXdn" role="37wK5m">
                                  <ref role="Rm8GQ" node="6F582lFlfyC" resolve="OwnedGenerator" />
                                  <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                                </node>
                                <node concept="Rm8GO" id="6TI6RSqL12R" role="37wK5m">
                                  <ref role="Rm8GQ" node="6NG8tmYRrVr" resolve="Generator" />
                                  <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="6TI6RSqKEfR" role="1Duv9x">
                      <property role="TrG5h" value="g" />
                      <node concept="3uibUv" id="6TI6RSqKE_0" role="1tU5fm">
                        <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6TI6RSqKFkT" role="1DdaDG">
                      <node concept="1eOMI4" id="6TI6RSqKF0p" role="2Oq$k0">
                        <node concept="10QFUN" id="6TI6RSqKF0m" role="1eOMHV">
                          <node concept="3uibUv" id="6TI6RSqKF0r" role="10QFUM">
                            <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                          </node>
                          <node concept="37vLTw" id="7yrEqDbHs6U" role="10QFUP">
                            <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6TI6RSqKGGh" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~Language.getGenerators()" resolve="getGenerators" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="6TI6RSqK_uG" role="3clFbw">
                  <node concept="3uibUv" id="6TI6RSqKE4P" role="2ZW6by">
                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                  </node>
                  <node concept="37vLTw" id="7yrEqDbHs3j" role="2ZW6bz">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6cS2_awCLJ" role="3cqZAp">
                <node concept="3clFbS" id="6cS2_awCLK" role="3clFbx">
                  <node concept="3cpWs8" id="6TI6RSqLp8v" role="3cqZAp">
                    <node concept="3cpWsn" id="6TI6RSqLp8w" role="3cpWs9">
                      <property role="TrG5h" value="srcLang" />
                      <node concept="2OqwBi" id="6TI6RSqLp8x" role="33vP2m">
                        <node concept="1eOMI4" id="6TI6RSqLp8y" role="2Oq$k0">
                          <node concept="10QFUN" id="6TI6RSqLp8z" role="1eOMHV">
                            <node concept="3uibUv" id="6TI6RSqLp8$" role="10QFUM">
                              <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                            </node>
                            <node concept="37vLTw" id="7yrEqDbHwzk" role="10QFUP">
                              <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3g3Xh9jfULY" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~Generator.sourceLanguage()" resolve="sourceLanguage" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="3g3Xh9jfRBy" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6cS2_awCMr" role="3cqZAp">
                    <node concept="2OqwBi" id="6cS2_awCMt" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTtWy" role="2Oq$k0">
                        <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="6cS2_awCMx" role="2OqNvi">
                        <node concept="2ShNRf" id="6cS2_awDc9" role="25WWJ7">
                          <node concept="1pGfFk" id="6cS2_awDcb" role="2ShVmc">
                            <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                            <node concept="2OqwBi" id="7yrEqDbHy5y" role="37wK5m">
                              <node concept="37vLTw" id="6TI6RSqLz7b" role="2Oq$k0">
                                <ref role="3cqZAo" node="6TI6RSqLp8w" resolve="srcLang" />
                              </node>
                              <node concept="liA8E" id="3g3Xh9jfWej" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                              </node>
                            </node>
                            <node concept="Rm8GO" id="6cS2_awDcf" role="37wK5m">
                              <ref role="Rm8GQ" node="6cS2_awCMp" resolve="SourceLanguage" />
                              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                            </node>
                            <node concept="Rm8GO" id="6cS2_awDci" role="37wK5m">
                              <ref role="Rm8GQ" node="6cS2_awCMn" resolve="GeneratorLanguage" />
                              <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="6TI6RSqL7Je" role="3clFbw">
                  <node concept="3uibUv" id="6TI6RSqL9ff" role="2ZW6by">
                    <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                  </node>
                  <node concept="37vLTw" id="7yrEqDbHwvB" role="2ZW6bz">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="Qjxfu1vy4V" role="3cqZAp" />
              <node concept="3clFbH" id="Qjxfu1vy4W" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="3W891rWTi7K" role="3KbHQx">
            <node concept="Rm8GO" id="4O9XZtfT1V1" role="3Kbmr1">
              <ref role="Rm8GQ" node="6F582lFlfyG" resolve="UsedDevkit" />
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
            </node>
            <node concept="3clFbS" id="3W891rWTi7M" role="3Kbo56">
              <node concept="3SKdUt" id="65vkPOiGg3q" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXorXw" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXorXx" role="1PaTwD">
                    <property role="3oM_SC" value="explicit" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorXy" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorXz" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorX$" role="1PaTwD">
                    <property role="3oM_SC" value="devkit" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="3yHXoEBCdEo" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXorX_" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXorXA" role="1PaTwD">
                    <property role="3oM_SC" value="fall-through" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="Qjxfu1vy4X" role="3KbHQx">
            <node concept="3clFbS" id="Qjxfu1vy4Y" role="3Kbo56">
              <node concept="3clFbJ" id="2VlVRNU16gL" role="3cqZAp">
                <node concept="3clFbS" id="2VlVRNU16gN" role="3clFbx">
                  <node concept="3zACq4" id="3yHXoEBLx5I" role="3cqZAp" />
                </node>
                <node concept="3fqX7Q" id="2VlVRNU19zY" role="3clFbw">
                  <node concept="2ZW3vV" id="2VlVRNU19$0" role="3fr31v">
                    <node concept="3uibUv" id="2VlVRNU19$1" role="2ZW6by">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="37vLTw" id="2VlVRNU19$2" role="2ZW6bz">
                      <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6cS2_awCBN" role="3cqZAp">
                <node concept="3cpWsn" id="6cS2_awCBO" role="3cpWs9">
                  <property role="TrG5h" value="devkit" />
                  <node concept="3uibUv" id="6cS2_awCBP" role="1tU5fm">
                    <ref role="3uigEE" to="w0gx:~DevkitDescriptor" resolve="DevkitDescriptor" />
                  </node>
                  <node concept="0kSF2" id="6cS2_awCBS" role="33vP2m">
                    <node concept="3uibUv" id="6cS2_awCBU" role="0kSFW">
                      <ref role="3uigEE" to="w0gx:~DevkitDescriptor" resolve="DevkitDescriptor" />
                    </node>
                    <node concept="2OqwBi" id="3yHXoEBJGOI" role="0kSFX">
                      <node concept="1eOMI4" id="3yHXoEBLy4B" role="2Oq$k0">
                        <node concept="10QFUN" id="3yHXoEBLy4$" role="1eOMHV">
                          <node concept="3uibUv" id="3yHXoEBLyG7" role="10QFUM">
                            <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                          </node>
                          <node concept="37vLTw" id="3yHXoEBLysv" role="10QFUP">
                            <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3yHXoEBJGOK" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6cS2_awCFn" role="3cqZAp">
                <node concept="3clFbS" id="6cS2_awCFo" role="3clFbx">
                  <node concept="3zACq4" id="6cS2_awCFw" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="6cS2_awCFs" role="3clFbw">
                  <node concept="10Nm6u" id="6cS2_awCFv" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTvgm" role="3uHU7B">
                    <ref role="3cqZAo" node="6cS2_awCBO" resolve="devkit" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3W891rWTi60" role="3cqZAp">
                <node concept="3cpWsn" id="3W891rWTi61" role="3cpWs9">
                  <property role="TrG5h" value="direct" />
                  <node concept="10P_77" id="3W891rWTi62" role="1tU5fm" />
                  <node concept="3clFbC" id="3W891rWTi6r" role="33vP2m">
                    <node concept="Rm8GO" id="3W891rWTi75" role="3uHU7w">
                      <ref role="Rm8GQ" node="6F582lFlfyG" resolve="UsedDevkit" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgmC83" role="3uHU7B">
                      <ref role="3cqZAo" node="Qjxfu1vy43" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Qjxfu1vy4Z" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqysiPY" role="3clFbG">
                  <ref role="37wK5l" node="7yrEqDbIBXb" resolve="addDeps" />
                  <node concept="37vLTw" id="3GM_nagTxmh" role="37wK5m">
                    <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                  </node>
                  <node concept="2OqwBi" id="6cS2_awCFx" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTsC1" role="2Oq$k0">
                      <ref role="3cqZAo" node="6cS2_awCBO" resolve="devkit" />
                    </node>
                    <node concept="liA8E" id="Qjxfu1vy56" role="2OqNvi">
                      <ref role="37wK5l" to="w0gx:~DevkitDescriptor.getExtendedDevkits()" resolve="getExtendedDevkits" />
                    </node>
                  </node>
                  <node concept="3K4zz7" id="3W891rWTi6L" role="37wK5m">
                    <node concept="Rm8GO" id="3W891rWTi74" role="3K4E3e">
                      <ref role="Rm8GQ" node="6F582lFlfyG" resolve="UsedDevkit" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                    <node concept="Rm8GO" id="3W891rWTi73" role="3K4GZi">
                      <ref role="Rm8GQ" node="3W891rWTi50" resolve="DependencyDevkit" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTAc4" role="3K4Cdx">
                      <ref role="3cqZAo" node="3W891rWTi61" resolve="direct" />
                    </node>
                  </node>
                  <node concept="Rm8GO" id="Qjxfu1vy58" role="37wK5m">
                    <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                    <ref role="Rm8GQ" node="6F582lFlfyv" resolve="ExtendsDevkit" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Qjxfu1vy59" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqysr6R" role="3clFbG">
                  <ref role="37wK5l" node="7yrEqDbIBXb" resolve="addDeps" />
                  <node concept="37vLTw" id="3GM_nagTxwT" role="37wK5m">
                    <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                  </node>
                  <node concept="2OqwBi" id="6cS2_awCF$" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTsL5" role="2Oq$k0">
                      <ref role="3cqZAo" node="6cS2_awCBO" resolve="devkit" />
                    </node>
                    <node concept="liA8E" id="Qjxfu1vy5g" role="2OqNvi">
                      <ref role="37wK5l" to="w0gx:~DevkitDescriptor.getExportedLanguages()" resolve="getExportedLanguages" />
                    </node>
                  </node>
                  <node concept="3K4zz7" id="3W891rWTi6W" role="37wK5m">
                    <node concept="Rm8GO" id="3W891rWTi79" role="3K4E3e">
                      <ref role="Rm8GQ" node="6F582lFlfyF" resolve="UsedLanguage" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTtge" role="3K4Cdx">
                      <ref role="3cqZAo" node="3W891rWTi61" resolve="direct" />
                    </node>
                    <node concept="Rm8GO" id="3W891rWTi7d" role="3K4GZi">
                      <ref role="Rm8GQ" node="3W891rWThyR" resolve="DependencyLanguage" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                  </node>
                  <node concept="Rm8GO" id="Qjxfu1vy5i" role="37wK5m">
                    <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                    <ref role="Rm8GQ" node="6F582lFlfyt" resolve="ExportsLanguage" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Qjxfu1vy5j" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqysr0o" role="3clFbG">
                  <ref role="37wK5l" node="7yrEqDbIBXb" resolve="addDeps" />
                  <node concept="37vLTw" id="3GM_nagTvc9" role="37wK5m">
                    <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                  </node>
                  <node concept="2OqwBi" id="6cS2_awCFB" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTwpS" role="2Oq$k0">
                      <ref role="3cqZAo" node="6cS2_awCBO" resolve="devkit" />
                    </node>
                    <node concept="liA8E" id="Qjxfu1vy5q" role="2OqNvi">
                      <ref role="37wK5l" to="w0gx:~DevkitDescriptor.getExportedSolutions()" resolve="getExportedSolutions" />
                    </node>
                  </node>
                  <node concept="3K4zz7" id="3W891rWTi7A" role="37wK5m">
                    <node concept="Rm8GO" id="3W891rWTi7F" role="3K4GZi">
                      <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTrEa" role="3K4Cdx">
                      <ref role="3cqZAo" node="3W891rWTi61" resolve="direct" />
                    </node>
                    <node concept="Rm8GO" id="3W891rWTi7J" role="3K4E3e">
                      <ref role="Rm8GQ" node="6F582lFlfyB" resolve="RegularDependency" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                  </node>
                  <node concept="Rm8GO" id="Qjxfu1vy5s" role="37wK5m">
                    <ref role="Rm8GQ" node="6F582lFlfyu" resolve="ExportsSolution" />
                    <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="Qjxfu1vy5t" role="3cqZAp" />
              <node concept="3clFbH" id="Qjxfu1vy5u" role="3cqZAp" />
            </node>
            <node concept="Rm8GO" id="4O9XZtfT1V3" role="3Kbmr1">
              <ref role="Rm8GQ" node="3W891rWTi50" resolve="DependencyDevkit" />
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
            </node>
          </node>
          <node concept="3KbdKl" id="Qjxfu1vy5w" role="3KbHQx">
            <node concept="Rm8GO" id="Qjxfu1vy5x" role="3Kbmr1">
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
              <ref role="Rm8GQ" node="6F582lFlfyF" resolve="UsedLanguage" />
            </node>
            <node concept="3clFbS" id="Qjxfu1vy5y" role="3Kbo56">
              <node concept="3clFbF" id="3yHXoEBHMrw" role="3cqZAp">
                <node concept="1rXfSq" id="3yHXoEBHMru" role="3clFbG">
                  <ref role="37wK5l" node="3yHXoEBGO$$" resolve="addExtendedLanguages" />
                  <node concept="37vLTw" id="3yHXoEBHOCA" role="37wK5m">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                  <node concept="Rm8GO" id="3yHXoEBCwAo" role="37wK5m">
                    <ref role="Rm8GQ" node="6F582lFlfyF" resolve="UsedLanguage" />
                    <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                  </node>
                  <node concept="37vLTw" id="3yHXoEBHTE1" role="37wK5m">
                    <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="Qjxfu1vy5H" role="3cqZAp">
                <node concept="3clFbS" id="Qjxfu1vy5I" role="3clFbx">
                  <node concept="1DcWWT" id="3yHXoEBCoZe" role="3cqZAp">
                    <node concept="3clFbS" id="3yHXoEBCoZg" role="2LFqv$">
                      <node concept="3clFbJ" id="3yHXoEBDybc" role="3cqZAp">
                        <node concept="3clFbS" id="3yHXoEBDybd" role="3clFbx">
                          <node concept="3N13vt" id="3yHXoEBDybi" role="3cqZAp" />
                        </node>
                        <node concept="22lmx$" id="3yHXoEBIw9W" role="3clFbw">
                          <node concept="3clFbC" id="3yHXoEBDybj" role="3uHU7B">
                            <node concept="2OqwBi" id="3yHXoEBDybl" role="3uHU7B">
                              <node concept="37vLTw" id="3yHXoEBDybm" role="2Oq$k0">
                                <ref role="3cqZAo" node="3yHXoEBCoZh" resolve="dep" />
                              </node>
                              <node concept="liA8E" id="3yHXoEBDybn" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SDependency.getScope()" resolve="getScope" />
                              </node>
                            </node>
                            <node concept="Rm8GO" id="3yHXoEBDybk" role="3uHU7w">
                              <ref role="Rm8GQ" to="lui2:~SDependencyScope.DESIGN" resolve="DESIGN" />
                              <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
                            </node>
                          </node>
                          <node concept="3clFbC" id="3yHXoEBCtwO" role="3uHU7w">
                            <node concept="2OqwBi" id="3yHXoEBCtb5" role="3uHU7B">
                              <node concept="37vLTw" id="3yHXoEBCt5b" role="2Oq$k0">
                                <ref role="3cqZAo" node="3yHXoEBCoZh" resolve="dep" />
                              </node>
                              <node concept="liA8E" id="3yHXoEBCtfO" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SDependency.getScope()" resolve="getScope" />
                              </node>
                            </node>
                            <node concept="Rm8GO" id="3yHXoEBCtLw" role="3uHU7w">
                              <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
                              <ref role="Rm8GQ" to="lui2:~SDependencyScope.EXTENDS" resolve="EXTENDS" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3yHXoEBDDCe" role="3cqZAp">
                        <node concept="2OqwBi" id="3yHXoEBDDCf" role="3clFbG">
                          <node concept="37vLTw" id="3yHXoEBDDCg" role="2Oq$k0">
                            <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="3yHXoEBDDCh" role="2OqNvi">
                            <node concept="1rXfSq" id="3yHXoEBDDCi" role="25WWJ7">
                              <ref role="37wK5l" node="3yHXoEBDIOs" resolve="regularDependencyPresentation" />
                              <node concept="37vLTw" id="3yHXoEBDGAU" role="37wK5m">
                                <ref role="3cqZAo" node="3yHXoEBCoZh" resolve="dep" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="3yHXoEBCoZh" role="1Duv9x">
                      <property role="TrG5h" value="dep" />
                      <node concept="3uibUv" id="3yHXoEBCrHS" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3yHXoEBCsv0" role="1DdaDG">
                      <node concept="37vLTw" id="3yHXoEBCspV" role="2Oq$k0">
                        <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                      </node>
                      <node concept="liA8E" id="3yHXoEBCsGF" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getDeclaredDependencies()" resolve="getDeclaredDependencies" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="Qjxfu1vy5J" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqysrqG" role="3clFbG">
                      <ref role="37wK5l" node="7yrEqDbIBXb" resolve="addDeps" />
                      <node concept="37vLTw" id="3GM_nagTBdZ" role="37wK5m">
                        <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                      </node>
                      <node concept="2OqwBi" id="6cS2_awCG0" role="37wK5m">
                        <node concept="0kSF2" id="3yHXoEBD2OG" role="2Oq$k0">
                          <node concept="3uibUv" id="3yHXoEBD51C" role="0kSFW">
                            <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                          </node>
                          <node concept="37vLTw" id="3yHXoEBCZZM" role="0kSFX">
                            <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                          </node>
                        </node>
                        <node concept="liA8E" id="Qjxfu1vy5Q" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~Language.getRuntimeModulesReferences()" resolve="getRuntimeModulesReferences" />
                        </node>
                      </node>
                      <node concept="Rm8GO" id="Qjxfu1vy5R" role="37wK5m">
                        <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                        <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                      </node>
                      <node concept="Rm8GO" id="Qjxfu1vy5S" role="37wK5m">
                        <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                        <ref role="Rm8GQ" node="6F582lFlfyq" resolve="ExportsRuntime" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="65vkPOiEyiP" role="3clFbw">
                  <ref role="3cqZAo" node="6TI6RSqOvPr" resolve="myNeedRuntime" />
                </node>
              </node>
              <node concept="3zACq4" id="Qjxfu1vy5U" role="3cqZAp" />
              <node concept="3clFbH" id="Qjxfu1vy5V" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="Qjxfu1vy5W" role="3KbHQx">
            <node concept="Rm8GO" id="Qjxfu1vy5X" role="3Kbmr1">
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
              <ref role="Rm8GQ" node="6F582lFlfyB" resolve="RegularDependency" />
            </node>
            <node concept="3clFbS" id="Qjxfu1vy5Y" role="3Kbo56">
              <node concept="1DcWWT" id="3yHXoEB_xQD" role="3cqZAp">
                <node concept="3clFbS" id="3yHXoEB_xQF" role="2LFqv$">
                  <node concept="3clFbJ" id="3yHXoEB_EOa" role="3cqZAp">
                    <node concept="3clFbS" id="3yHXoEB_EOc" role="3clFbx">
                      <node concept="3SKdUt" id="3yHXoEB_Hh$" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXorXB" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXorXC" role="1PaTwD">
                            <property role="3oM_SC" value="design" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXD" role="1PaTwD">
                            <property role="3oM_SC" value="dependencies" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXE" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXF" role="1PaTwD">
                            <property role="3oM_SC" value="our" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXG" role="1PaTwD">
                            <property role="3oM_SC" value="own" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXH" role="1PaTwD">
                            <property role="3oM_SC" value="dependencies" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXI" role="1PaTwD">
                            <property role="3oM_SC" value="are" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXJ" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXK" role="1PaTwD">
                            <property role="3oM_SC" value="no" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXL" role="1PaTwD">
                            <property role="3oM_SC" value="interest" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXM" role="1PaTwD">
                            <property role="3oM_SC" value="for" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXN" role="1PaTwD">
                            <property role="3oM_SC" value="the" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXO" role="1PaTwD">
                            <property role="3oM_SC" value="module," />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXP" role="1PaTwD">
                            <property role="3oM_SC" value="we" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXQ" role="1PaTwD">
                            <property role="3oM_SC" value="don't" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXR" role="1PaTwD">
                            <property role="3oM_SC" value="see" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXS" role="1PaTwD">
                            <property role="3oM_SC" value="them" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="3yHXoEBCdRC" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXorXT" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXorXU" role="1PaTwD">
                            <property role="3oM_SC" value="and" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXV" role="1PaTwD">
                            <property role="3oM_SC" value="yes," />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXW" role="1PaTwD">
                            <property role="3oM_SC" value="regardless" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXX" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXY" role="1PaTwD">
                            <property role="3oM_SC" value="myNeedRuntime" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorXZ" role="1PaTwD">
                            <property role="3oM_SC" value="setting" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorY0" role="1PaTwD">
                            <property role="3oM_SC" value="(unlike" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorY1" role="1PaTwD">
                            <property role="3oM_SC" value="top-level" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXorY2" role="1PaTwD">
                            <property role="3oM_SC" value="deps)." />
                          </node>
                        </node>
                      </node>
                      <node concept="3N13vt" id="3yHXoEB_H54" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="3yHXoEB_Gms" role="3clFbw">
                      <node concept="Rm8GO" id="3yHXoEB_GSE" role="3uHU7w">
                        <ref role="Rm8GQ" to="lui2:~SDependencyScope.DESIGN" resolve="DESIGN" />
                        <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
                      </node>
                      <node concept="2OqwBi" id="3yHXoEB_FXf" role="3uHU7B">
                        <node concept="37vLTw" id="3yHXoEB_FS_" role="2Oq$k0">
                          <ref role="3cqZAo" node="3yHXoEB_xQG" resolve="dep" />
                        </node>
                        <node concept="liA8E" id="3yHXoEB_G5$" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SDependency.getScope()" resolve="getScope" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="3yHXoEB_uI4" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXorY3" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXorY4" role="1PaTwD">
                        <property role="3oM_SC" value="We" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorY5" role="1PaTwD">
                        <property role="3oM_SC" value="need" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorY6" role="1PaTwD">
                        <property role="3oM_SC" value="all" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorY7" role="1PaTwD">
                        <property role="3oM_SC" value="modules" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorY8" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorY9" role="1PaTwD">
                        <property role="3oM_SC" value="dependencies" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYa" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYb" role="1PaTwD">
                        <property role="3oM_SC" value="load" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYc" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYd" role="1PaTwD">
                        <property role="3oM_SC" value="module" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYe" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYf" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYg" role="1PaTwD">
                        <property role="3oM_SC" value="execute" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYh" role="1PaTwD">
                        <property role="3oM_SC" value="code" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYi" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYj" role="1PaTwD">
                        <property role="3oM_SC" value="it." />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYk" role="1PaTwD">
                        <property role="3oM_SC" value="Re-export" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYl" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYm" role="1PaTwD">
                        <property role="3oM_SC" value="for" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYn" role="1PaTwD">
                        <property role="3oM_SC" value="scope" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYo" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYp" role="1PaTwD">
                        <property role="3oM_SC" value="compile" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYq" role="1PaTwD">
                        <property role="3oM_SC" value="control" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3yHXoEB_$d8" role="3cqZAp">
                    <node concept="3clFbS" id="3yHXoEB_$da" role="3clFbx">
                      <node concept="3clFbF" id="3yHXoEB_$Bu" role="3cqZAp">
                        <node concept="2OqwBi" id="3yHXoEB_$Bv" role="3clFbG">
                          <node concept="37vLTw" id="3yHXoEB_$Bw" role="2Oq$k0">
                            <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="3yHXoEB_$Bx" role="2OqNvi">
                            <node concept="1rXfSq" id="3yHXoEBBuqK" role="25WWJ7">
                              <ref role="37wK5l" node="3yHXoEBDIOs" resolve="regularDependencyPresentation" />
                              <node concept="37vLTw" id="3yHXoEBBwGJ" role="37wK5m">
                                <ref role="3cqZAo" node="3yHXoEB_xQG" resolve="dep" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3yHXoEB_$p6" role="3clFbw">
                      <node concept="37vLTw" id="3yHXoEB_$ks" role="2Oq$k0">
                        <ref role="3cqZAo" node="3yHXoEB_xQG" resolve="dep" />
                      </node>
                      <node concept="liA8E" id="3yHXoEB_$xr" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SDependency.isReexport()" resolve="isReexport" />
                      </node>
                    </node>
                    <node concept="3eNFk2" id="3yHXoEBDOcy" role="3eNLev">
                      <node concept="37vLTw" id="3yHXoEBDVkc" role="3eO9$A">
                        <ref role="3cqZAo" node="6TI6RSqOvPr" resolve="myNeedRuntime" />
                      </node>
                      <node concept="3clFbS" id="3yHXoEBDOc$" role="3eOfB_">
                        <node concept="3SKdUt" id="3yHXoEBEgkG" role="3cqZAp">
                          <node concept="1PaTwC" id="ATZLwXorYr" role="1aUNEU">
                            <node concept="3oM_SD" id="ATZLwXorYs" role="1PaTwD">
                              <property role="3oM_SC" value="not" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorYt" role="1PaTwD">
                              <property role="3oM_SC" value="sure" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorYu" role="1PaTwD">
                              <property role="3oM_SC" value="there's" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorYv" role="1PaTwD">
                              <property role="3oM_SC" value="reason" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorYw" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorYx" role="1PaTwD">
                              <property role="3oM_SC" value="tell" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorYy" role="1PaTwD">
                              <property role="3oM_SC" value="regular" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorYz" role="1PaTwD">
                              <property role="3oM_SC" value="dependency" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorY$" role="1PaTwD">
                              <property role="3oM_SC" value="from" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorY_" role="1PaTwD">
                              <property role="3oM_SC" value="runtime" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXorYA" role="1PaTwD">
                              <property role="3oM_SC" value="dependency" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3yHXoEBDVxM" role="3cqZAp">
                          <node concept="2OqwBi" id="3yHXoEBDW0z" role="3clFbG">
                            <node concept="37vLTw" id="3yHXoEBDVxL" role="2Oq$k0">
                              <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="3yHXoEBDX0X" role="2OqNvi">
                              <node concept="2ShNRf" id="3yHXoEBDXbI" role="25WWJ7">
                                <node concept="1pGfFk" id="3yHXoEBE38O" role="2ShVmc">
                                  <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                                  <node concept="2OqwBi" id="3yHXoEBE3mT" role="37wK5m">
                                    <node concept="37vLTw" id="3yHXoEBE3ig" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3yHXoEB_xQG" resolve="dep" />
                                    </node>
                                    <node concept="liA8E" id="3yHXoEBE3tT" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                                    </node>
                                  </node>
                                  <node concept="Rm8GO" id="Qjxfu1vy6d" role="37wK5m">
                                    <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                                    <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                                  </node>
                                  <node concept="Rm8GO" id="Qjxfu1vy6e" role="37wK5m">
                                    <ref role="Rm8GQ" node="6F582lFlfym" resolve="Depends" />
                                    <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
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
                <node concept="3cpWsn" id="3yHXoEB_xQG" role="1Duv9x">
                  <property role="TrG5h" value="dep" />
                  <node concept="3uibUv" id="3yHXoEB_zfr" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3yHXoEB_zGd" role="1DdaDG">
                  <node concept="37vLTw" id="3yHXoEB_zB8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                  <node concept="liA8E" id="3yHXoEB_zXv" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getDeclaredDependencies()" resolve="getDeclaredDependencies" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="Qjxfu1vy66" role="3cqZAp">
                <node concept="3clFbS" id="Qjxfu1vy67" role="3clFbx">
                  <node concept="3SKdUt" id="3yHXoEBErMb" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXorYB" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXorYC" role="1PaTwD">
                        <property role="3oM_SC" value="at" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYD" role="1PaTwD">
                        <property role="3oM_SC" value="run" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYE" role="1PaTwD">
                        <property role="3oM_SC" value="time," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYF" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYG" role="1PaTwD">
                        <property role="3oM_SC" value="need" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYH" role="1PaTwD">
                        <property role="3oM_SC" value="dependencies" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYI" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYJ" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYK" role="1PaTwD">
                        <property role="3oM_SC" value="languages" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYL" role="1PaTwD">
                        <property role="3oM_SC" value="our" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYM" role="1PaTwD">
                        <property role="3oM_SC" value="dependencies" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYN" role="1PaTwD">
                        <property role="3oM_SC" value="were" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYO" role="1PaTwD">
                        <property role="3oM_SC" value="written" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXorYP" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3yHXoEBFNYY" role="3cqZAp">
                    <node concept="1rXfSq" id="3yHXoEBFNYZ" role="3clFbG">
                      <ref role="37wK5l" node="3yHXoEBFhKl" resolve="addUsedLanguagesAndDevkitsOf" />
                      <node concept="37vLTw" id="3yHXoEBLgN8" role="37wK5m">
                        <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                      </node>
                      <node concept="37vLTw" id="3yHXoEBFNZ1" role="37wK5m">
                        <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                      </node>
                      <node concept="3clFbT" id="3yHXoEBKyr8" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="65vkPOiE$An" role="3clFbw">
                  <ref role="3cqZAo" node="6TI6RSqOvPr" resolve="myNeedRuntime" />
                </node>
              </node>
              <node concept="3zACq4" id="Qjxfu1vy6g" role="3cqZAp" />
              <node concept="3clFbH" id="Qjxfu1vy6h" role="3cqZAp" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxgm7OA" role="3KbGdf">
            <ref role="3cqZAo" node="Qjxfu1vy43" resolve="role" />
          </node>
          <node concept="3clFbS" id="Qjxfu1vy6j" role="3Kb1Dw" />
          <node concept="3KbdKl" id="3jefwWMZ9B9" role="3KbHQx">
            <node concept="Rm8GO" id="4O9XZtfT1V6" role="3Kbmr1">
              <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
            </node>
            <node concept="3clFbS" id="3jefwWMZ9Bb" role="3Kbo56">
              <node concept="3clFbJ" id="3jefwWMZ9Bi" role="3cqZAp">
                <node concept="3clFbS" id="3jefwWMZ9Bj" role="3clFbx">
                  <node concept="1DcWWT" id="3yHXoEBECGI" role="3cqZAp">
                    <node concept="3clFbS" id="3yHXoEBECGK" role="2LFqv$">
                      <node concept="3clFbJ" id="3yHXoEBEIU5" role="3cqZAp">
                        <node concept="3clFbS" id="3yHXoEBEIU6" role="3clFbx">
                          <node concept="3N13vt" id="3yHXoEBEIU7" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="3yHXoEBEIU8" role="3clFbw">
                          <node concept="Rm8GO" id="3yHXoEBEIU9" role="3uHU7w">
                            <ref role="Rm8GQ" to="lui2:~SDependencyScope.DESIGN" resolve="DESIGN" />
                            <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
                          </node>
                          <node concept="2OqwBi" id="3yHXoEBEIUa" role="3uHU7B">
                            <node concept="37vLTw" id="3yHXoEBEIUb" role="2Oq$k0">
                              <ref role="3cqZAo" node="3yHXoEBECGL" resolve="dep" />
                            </node>
                            <node concept="liA8E" id="3yHXoEBEIUc" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SDependency.getScope()" resolve="getScope" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3yHXoEBEGke" role="3cqZAp">
                        <node concept="2OqwBi" id="3yHXoEBEGMZ" role="3clFbG">
                          <node concept="37vLTw" id="3yHXoEBEGkc" role="2Oq$k0">
                            <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="3yHXoEBEHNq" role="2OqNvi">
                            <node concept="2ShNRf" id="3yHXoEBEHVY" role="25WWJ7">
                              <node concept="1pGfFk" id="3yHXoEBEIRn" role="2ShVmc">
                                <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                                <node concept="2OqwBi" id="3yHXoEBEJaV" role="37wK5m">
                                  <node concept="37vLTw" id="3yHXoEBEJ6z" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3yHXoEBECGL" resolve="dep" />
                                  </node>
                                  <node concept="liA8E" id="3yHXoEBEJiz" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                                  </node>
                                </node>
                                <node concept="Rm8GO" id="3yHXoEBEJug" role="37wK5m">
                                  <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                                  <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                                </node>
                                <node concept="3K4zz7" id="3yHXoEBETom" role="37wK5m">
                                  <node concept="2OqwBi" id="3yHXoEBEOkL" role="3K4Cdx">
                                    <node concept="37vLTw" id="3yHXoEBELXp" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3yHXoEBECGL" resolve="dep" />
                                    </node>
                                    <node concept="liA8E" id="3yHXoEBEQJG" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SDependency.isReexport()" resolve="isReexport" />
                                    </node>
                                  </node>
                                  <node concept="Rm8GO" id="3yHXoEBEVTb" role="3K4E3e">
                                    <ref role="Rm8GQ" node="6F582lFlfyn" resolve="ReexportsDep" />
                                    <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                                  </node>
                                  <node concept="Rm8GO" id="3yHXoEBF0wA" role="3K4GZi">
                                    <ref role="Rm8GQ" node="6F582lFlfym" resolve="Depends" />
                                    <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="3yHXoEBECGL" role="1Duv9x">
                      <property role="TrG5h" value="dep" />
                      <node concept="3uibUv" id="3yHXoEBEF7D" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3yHXoEBEFLU" role="1DdaDG">
                      <node concept="37vLTw" id="3yHXoEBEFGP" role="2Oq$k0">
                        <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                      </node>
                      <node concept="liA8E" id="3yHXoEBEG3b" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getDeclaredDependencies()" resolve="getDeclaredDependencies" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3yHXoEBFIIk" role="3cqZAp">
                    <node concept="1rXfSq" id="3yHXoEBFIIi" role="3clFbG">
                      <ref role="37wK5l" node="3yHXoEBFhKl" resolve="addUsedLanguagesAndDevkitsOf" />
                      <node concept="37vLTw" id="3yHXoEBLh7j" role="37wK5m">
                        <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                      </node>
                      <node concept="37vLTw" id="3yHXoEBFL$X" role="37wK5m">
                        <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                      </node>
                      <node concept="3clFbT" id="3yHXoEBKyB5" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="65vkPOiEB3S" role="3clFbw">
                  <ref role="3cqZAo" node="6TI6RSqOvPr" resolve="myNeedRuntime" />
                </node>
              </node>
              <node concept="3clFbJ" id="3yHXoEBIGhX" role="3cqZAp">
                <node concept="3clFbS" id="3yHXoEBIGhZ" role="3clFbx">
                  <node concept="3clFbF" id="mowLuLg8l2" role="3cqZAp">
                    <node concept="2OqwBi" id="mowLuLg8l3" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTsci" role="2Oq$k0">
                        <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="mowLuLg8l5" role="2OqNvi">
                        <node concept="2ShNRf" id="mowLuLg8l6" role="25WWJ7">
                          <node concept="1pGfFk" id="mowLuLg8l7" role="2ShVmc">
                            <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                            <node concept="2OqwBi" id="7yrEqDbHBYV" role="37wK5m">
                              <node concept="2OqwBi" id="mowLuLg8l8" role="2Oq$k0">
                                <node concept="1eOMI4" id="mowLuLg8l9" role="2Oq$k0">
                                  <node concept="0kSF2" id="mowLuLg8la" role="1eOMHV">
                                    <node concept="3uibUv" id="mowLuLg8lb" role="0kSFW">
                                      <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                                    </node>
                                    <node concept="37vLTw" id="7yrEqDbHAq7" role="0kSFX">
                                      <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="3g3Xh9jfZpW" role="2OqNvi">
                                  <ref role="37wK5l" to="w1kc:~Generator.sourceLanguage()" resolve="sourceLanguage" />
                                </node>
                              </node>
                              <node concept="liA8E" id="3g3Xh9jg0DO" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                              </node>
                            </node>
                            <node concept="Rm8GO" id="mowLuLg8lB" role="37wK5m">
                              <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                            </node>
                            <node concept="Rm8GO" id="mowLuLg8lf" role="37wK5m">
                              <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                              <ref role="Rm8GQ" node="6cS2_awCMn" resolve="GeneratorLanguage" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="3yHXoEBIIM7" role="3clFbw">
                  <node concept="3uibUv" id="3yHXoEBIJ0j" role="2ZW6by">
                    <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                  </node>
                  <node concept="37vLTw" id="3yHXoEBII$r" role="2ZW6bz">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="3jefwWMZ9Be" role="3cqZAp" />
              <node concept="3clFbH" id="3jefwWMZ9Bc" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="6cS2_awDcj" role="3KbHQx">
            <node concept="Rm8GO" id="6cS2_awDcn" role="3Kbmr1">
              <ref role="Rm8GQ" node="6cS2_awCMp" resolve="SourceLanguage" />
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
            </node>
            <node concept="3clFbS" id="6cS2_awDcl" role="3Kbo56">
              <node concept="3SKdUt" id="6TI6RSqNQMY" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXorYQ" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXorYR" role="1PaTwD">
                    <property role="3oM_SC" value="dependency" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorYS" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorYT" role="1PaTwD">
                    <property role="3oM_SC" value="generator" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorYU" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorYV" role="1PaTwD">
                    <property role="3oM_SC" value="its" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorYW" role="1PaTwD">
                    <property role="3oM_SC" value="source" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXorYX" role="1PaTwD">
                    <property role="3oM_SC" value="language" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3yHXoEBH_CD" role="3cqZAp">
                <node concept="1rXfSq" id="3yHXoEBH_CE" role="3clFbG">
                  <ref role="37wK5l" node="3yHXoEBGO$$" resolve="addExtendedLanguages" />
                  <node concept="37vLTw" id="3yHXoEBH_CF" role="37wK5m">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                  <node concept="Rm8GO" id="3yHXoEBHBQs" role="37wK5m">
                    <ref role="Rm8GQ" node="6cS2_awCMp" resolve="SourceLanguage" />
                    <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                  </node>
                  <node concept="37vLTw" id="3yHXoEBH_CH" role="37wK5m">
                    <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3yHXoEBG60s" role="3cqZAp">
                <node concept="3clFbS" id="3yHXoEBG60u" role="3clFbx">
                  <node concept="3clFbF" id="3yHXoEBG8yg" role="3cqZAp">
                    <node concept="1rXfSq" id="3yHXoEBG8yh" role="3clFbG">
                      <ref role="37wK5l" node="7yrEqDbIBXb" resolve="addDeps" />
                      <node concept="37vLTw" id="3yHXoEBG8yi" role="37wK5m">
                        <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                      </node>
                      <node concept="2OqwBi" id="3yHXoEBG8yj" role="37wK5m">
                        <node concept="0kSF2" id="3yHXoEBG8yk" role="2Oq$k0">
                          <node concept="3uibUv" id="3yHXoEBG8yl" role="0kSFW">
                            <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                          </node>
                          <node concept="37vLTw" id="3yHXoEBG8ym" role="0kSFX">
                            <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3yHXoEBG8yn" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~Language.getRuntimeModulesReferences()" resolve="getRuntimeModulesReferences" />
                        </node>
                      </node>
                      <node concept="Rm8GO" id="3yHXoEBG8yo" role="37wK5m">
                        <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                        <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                      </node>
                      <node concept="Rm8GO" id="3yHXoEBG8yp" role="37wK5m">
                        <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                        <ref role="Rm8GQ" node="6F582lFlfyq" resolve="ExportsRuntime" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3yHXoEBG8vU" role="3clFbw">
                  <ref role="3cqZAo" node="6TI6RSqOvPr" resolve="myNeedRuntime" />
                </node>
              </node>
              <node concept="3zACq4" id="6cS2_awDcq" role="3cqZAp" />
              <node concept="3clFbH" id="6cS2_awDco" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="3W891rWThyS" role="3KbHQx">
            <node concept="Rm8GO" id="3W891rWThyW" role="3Kbmr1">
              <ref role="Rm8GQ" node="3W891rWThyR" resolve="DependencyLanguage" />
              <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
            </node>
            <node concept="3clFbS" id="3W891rWThyU" role="3Kbo56">
              <node concept="3clFbF" id="3yHXoEBHqen" role="3cqZAp">
                <node concept="1rXfSq" id="3yHXoEBHqel" role="3clFbG">
                  <ref role="37wK5l" node="3yHXoEBGO$$" resolve="addExtendedLanguages" />
                  <node concept="37vLTw" id="3yHXoEBHsL7" role="37wK5m">
                    <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                  </node>
                  <node concept="Rm8GO" id="3yHXoEBGC$s" role="37wK5m">
                    <ref role="Rm8GQ" node="3W891rWThyR" resolve="DependencyLanguage" />
                    <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                  </node>
                  <node concept="37vLTw" id="3yHXoEBHxDp" role="37wK5m">
                    <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3yHXoEBFUNb" role="3cqZAp">
                <node concept="1rXfSq" id="3yHXoEBFUNc" role="3clFbG">
                  <ref role="37wK5l" node="7yrEqDbIBXb" resolve="addDeps" />
                  <node concept="37vLTw" id="3yHXoEBFUNd" role="37wK5m">
                    <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
                  </node>
                  <node concept="2OqwBi" id="3yHXoEBFUNe" role="37wK5m">
                    <node concept="0kSF2" id="3yHXoEBFUNf" role="2Oq$k0">
                      <node concept="3uibUv" id="3yHXoEBFUNg" role="0kSFW">
                        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                      </node>
                      <node concept="37vLTw" id="3yHXoEBFUNh" role="0kSFX">
                        <ref role="3cqZAo" node="7yrEqDbG4xX" resolve="module" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3yHXoEBFUNi" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~Language.getRuntimeModulesReferences()" resolve="getRuntimeModulesReferences" />
                    </node>
                  </node>
                  <node concept="Rm8GO" id="3yHXoEBFUNj" role="37wK5m">
                    <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                  </node>
                  <node concept="Rm8GO" id="3yHXoEBFUNk" role="37wK5m">
                    <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                    <ref role="Rm8GQ" node="6F582lFlfyq" resolve="ExportsRuntime" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="3W891rWThzw" role="3cqZAp" />
              <node concept="3clFbH" id="3W891rWThzr" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Qjxfu1vy6B" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTvTF" role="3cqZAk">
            <ref role="3cqZAo" node="Qjxfu1vy4b" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6TI6RSrmjUU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3yHXoEB_Hjy" role="jymVt" />
    <node concept="3clFb_" id="3yHXoEBFhKl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addUsedLanguagesAndDevkitsOf" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3yHXoEBFhKo" role="3clF47">
        <node concept="3clFbJ" id="3yHXoEBKyFZ" role="3cqZAp">
          <node concept="3clFbS" id="3yHXoEBKyG0" role="3clFbx">
            <node concept="1DcWWT" id="3yHXoEBL2Vk" role="3cqZAp">
              <node concept="3clFbS" id="3yHXoEBL2Vn" role="2LFqv$">
                <node concept="3cpWs8" id="3yHXoEBLb1n" role="3cqZAp">
                  <node concept="3cpWsn" id="3yHXoEBLb1o" role="3cpWs9">
                    <property role="TrG5h" value="langSourceModule" />
                    <node concept="3uibUv" id="3yHXoEBLb1k" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                    </node>
                    <node concept="2OqwBi" id="3yHXoEBLb1p" role="33vP2m">
                      <node concept="37vLTw" id="3yHXoEBLb1q" role="2Oq$k0">
                        <ref role="3cqZAo" node="3yHXoEBL2Vo" resolve="lang" />
                      </node>
                      <node concept="liA8E" id="3yHXoEBLb1r" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3yHXoEBLasJ" role="3cqZAp">
                  <node concept="3clFbS" id="3yHXoEBLasL" role="3clFbx">
                    <node concept="3clFbF" id="3yHXoEBL6_A" role="3cqZAp">
                      <node concept="2OqwBi" id="3yHXoEBL751" role="3clFbG">
                        <node concept="37vLTw" id="3yHXoEBL6__" role="2Oq$k0">
                          <ref role="3cqZAo" node="3yHXoEBFp6U" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="3yHXoEBL7CE" role="2OqNvi">
                          <node concept="2ShNRf" id="3yHXoEBLbZE" role="25WWJ7">
                            <node concept="1pGfFk" id="3yHXoEBLcUV" role="2ShVmc">
                              <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                              <node concept="37vLTw" id="3yHXoEBLdcB" role="37wK5m">
                                <ref role="3cqZAo" node="3yHXoEBLb1o" resolve="langSourceModule" />
                              </node>
                              <node concept="3K4zz7" id="3yHXoEBLdpF" role="37wK5m">
                                <node concept="Rm8GO" id="3yHXoEBLdpG" role="3K4E3e">
                                  <ref role="Rm8GQ" node="6F582lFlfyF" resolve="UsedLanguage" />
                                  <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                                </node>
                                <node concept="37vLTw" id="3yHXoEBLdpH" role="3K4Cdx">
                                  <ref role="3cqZAo" node="3yHXoEBJT2I" resolve="initialNotDependency" />
                                </node>
                                <node concept="Rm8GO" id="3yHXoEBLdpI" role="3K4GZi">
                                  <ref role="Rm8GQ" node="3W891rWThyR" resolve="DependencyLanguage" />
                                  <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                                </node>
                              </node>
                              <node concept="Rm8GO" id="3yHXoEBLdS9" role="37wK5m">
                                <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                                <ref role="Rm8GQ" node="6F582lFlfyo" resolve="UsesLanguage" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="3yHXoEBLbun" role="3clFbw">
                    <node concept="10Nm6u" id="3yHXoEBLbAY" role="3uHU7w" />
                    <node concept="37vLTw" id="3yHXoEBLb1s" role="3uHU7B">
                      <ref role="3cqZAo" node="3yHXoEBLb1o" resolve="langSourceModule" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3yHXoEBL2Vo" role="1Duv9x">
                <property role="TrG5h" value="lang" />
                <node concept="3uibUv" id="3yHXoEBL2Vs" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
              <node concept="2OqwBi" id="3yHXoEBL2Vt" role="1DdaDG">
                <node concept="37vLTw" id="3yHXoEBL2Vu" role="2Oq$k0">
                  <ref role="3cqZAo" node="3yHXoEBFkxV" resolve="module" />
                </node>
                <node concept="liA8E" id="3yHXoEBL2Vv" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getUsedLanguages()" resolve="getUsedLanguages" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3yHXoEBKyG1" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="3yHXoEBKyG3" role="3clFbw">
            <node concept="2ZW3vV" id="3yHXoEBKyG4" role="3fr31v">
              <node concept="3uibUv" id="3yHXoEBKyG5" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
              <node concept="37vLTw" id="3yHXoEBKyG6" role="2ZW6bz">
                <ref role="3cqZAo" node="3yHXoEBFkxV" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3yHXoEBFtPL" role="3cqZAp">
          <node concept="3cpWsn" id="3yHXoEBFtPM" role="3cpWs9">
            <property role="TrG5h" value="actualUses" />
            <node concept="3uibUv" id="3yHXoEBFtPN" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~AbstractModule$LangAndDevkits" resolve="AbstractModule.LangAndDevkits" />
            </node>
            <node concept="2OqwBi" id="3yHXoEBFtPO" role="33vP2m">
              <node concept="1eOMI4" id="3yHXoEBN3i0" role="2Oq$k0">
                <node concept="10QFUN" id="3yHXoEBM7OH" role="1eOMHV">
                  <node concept="3uibUv" id="3yHXoEBM7OI" role="10QFUM">
                    <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                  </node>
                  <node concept="37vLTw" id="3yHXoEBMZeu" role="10QFUP">
                    <ref role="3cqZAo" node="3yHXoEBFkxV" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3yHXoEBFtPQ" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~AbstractModule.collectLanguagesAndDevkits()" resolve="collectLanguagesAndDevkits" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3yHXoEBFuLx" role="3cqZAp">
          <node concept="3cpWsn" id="3yHXoEBFuLy" role="3cpWs9">
            <property role="TrG5h" value="languages" />
            <node concept="A3Dl8" id="3yHXoEBFuKS" role="1tU5fm">
              <node concept="3uibUv" id="3yHXoEBFuKV" role="A3Ik2">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
            <node concept="2OqwBi" id="3yHXoEBFuLz" role="33vP2m">
              <node concept="1eOMI4" id="3yHXoEBFuL$" role="2Oq$k0">
                <node concept="10QFUN" id="3yHXoEBFuL_" role="1eOMHV">
                  <node concept="A3Dl8" id="3yHXoEBFuLA" role="10QFUM">
                    <node concept="3uibUv" id="3yHXoEBFuLB" role="A3Ik2">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3yHXoEBFuLC" role="10QFUP">
                    <node concept="37vLTw" id="3yHXoEBFuLD" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yHXoEBFtPM" resolve="actualUses" />
                    </node>
                    <node concept="2OwXpG" id="3yHXoEBFuLE" role="2OqNvi">
                      <ref role="2Oxat5" to="z1c3:~AbstractModule$LangAndDevkits.languages" resolve="languages" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="3yHXoEBFuLF" role="2OqNvi">
                <node concept="1bVj0M" id="3yHXoEBFuLG" role="23t8la">
                  <node concept="3clFbS" id="3yHXoEBFuLH" role="1bW5cS">
                    <node concept="3clFbF" id="3yHXoEBFuLI" role="3cqZAp">
                      <node concept="2OqwBi" id="3yHXoEBFuLJ" role="3clFbG">
                        <node concept="37vLTw" id="3yHXoEBFuLK" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0Xm4" resolve="it" />
                        </node>
                        <node concept="liA8E" id="3yHXoEBFuLL" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xm4" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xm5" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yHXoEBFtPR" role="3cqZAp">
          <node concept="1rXfSq" id="3yHXoEBFtPS" role="3clFbG">
            <ref role="37wK5l" node="7yrEqDbIBXb" resolve="addDeps" />
            <node concept="37vLTw" id="3yHXoEBFtPT" role="37wK5m">
              <ref role="3cqZAo" node="3yHXoEBFp6U" resolve="result" />
            </node>
            <node concept="2OqwBi" id="3yHXoEBFAMi" role="37wK5m">
              <node concept="37vLTw" id="3yHXoEBFuLO" role="2Oq$k0">
                <ref role="3cqZAo" node="3yHXoEBFuLy" resolve="languages" />
              </node>
              <node concept="1KnU$U" id="3yHXoEBFDgJ" role="2OqNvi" />
            </node>
            <node concept="3K4zz7" id="3yHXoEBK2uQ" role="37wK5m">
              <node concept="Rm8GO" id="3yHXoEBK6Ds" role="3K4E3e">
                <ref role="Rm8GQ" node="6F582lFlfyF" resolve="UsedLanguage" />
                <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
              </node>
              <node concept="37vLTw" id="3yHXoEBK08L" role="3K4Cdx">
                <ref role="3cqZAo" node="3yHXoEBJT2I" resolve="initialNotDependency" />
              </node>
              <node concept="Rm8GO" id="3yHXoEBFtQb" role="3K4GZi">
                <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                <ref role="Rm8GQ" node="3W891rWThyR" resolve="DependencyLanguage" />
              </node>
            </node>
            <node concept="Rm8GO" id="3yHXoEBFtQc" role="37wK5m">
              <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
              <ref role="Rm8GQ" node="6F582lFlfyo" resolve="UsesLanguage" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yHXoEBFtQd" role="3cqZAp">
          <node concept="1rXfSq" id="3yHXoEBFtQe" role="3clFbG">
            <ref role="37wK5l" node="7yrEqDbIBXb" resolve="addDeps" />
            <node concept="37vLTw" id="3yHXoEBFtQf" role="37wK5m">
              <ref role="3cqZAo" node="3yHXoEBFp6U" resolve="result" />
            </node>
            <node concept="2OqwBi" id="3yHXoEBFtQg" role="37wK5m">
              <node concept="37vLTw" id="3yHXoEBFtQh" role="2Oq$k0">
                <ref role="3cqZAo" node="3yHXoEBFtPM" resolve="actualUses" />
              </node>
              <node concept="2OwXpG" id="3yHXoEBFtQi" role="2OqNvi">
                <ref role="2Oxat5" to="z1c3:~AbstractModule$LangAndDevkits.devkits" resolve="devkits" />
              </node>
            </node>
            <node concept="3K4zz7" id="3yHXoEBKgkP" role="37wK5m">
              <node concept="Rm8GO" id="3yHXoEBKleh" role="3K4E3e">
                <ref role="Rm8GQ" node="6F582lFlfyG" resolve="UsedDevkit" />
                <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
              </node>
              <node concept="37vLTw" id="3yHXoEBKdw1" role="3K4Cdx">
                <ref role="3cqZAo" node="3yHXoEBJT2I" resolve="initialNotDependency" />
              </node>
              <node concept="Rm8GO" id="3yHXoEBFtQj" role="3K4GZi">
                <ref role="Rm8GQ" node="3W891rWTi50" resolve="DependencyDevkit" />
                <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
              </node>
            </node>
            <node concept="Rm8GO" id="3yHXoEBFtQk" role="37wK5m">
              <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
              <ref role="Rm8GQ" node="6F582lFlfys" resolve="UsesDevkit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3yHXoEBFf4b" role="1B3o_S" />
      <node concept="3cqZAl" id="3yHXoEBFhK1" role="3clF45" />
      <node concept="37vLTG" id="3yHXoEBFkxV" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="3yHXoEBKG6K" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="3yHXoEBFp6U" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="_YKpA" id="3yHXoEBFp6V" role="1tU5fm">
          <node concept="3uibUv" id="3yHXoEBFp6W" role="_ZDj9">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3yHXoEBJT2I" role="3clF46">
        <property role="TrG5h" value="initialNotDependency" />
        <node concept="10P_77" id="3yHXoEBJVrR" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3yHXoEBGJiK" role="jymVt" />
    <node concept="3clFb_" id="3yHXoEBGO$$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addExtendedLanguages" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3yHXoEBGO$B" role="3clF47">
        <node concept="1gVbGN" id="3yHXoEBHgx9" role="3cqZAp">
          <node concept="2ZW3vV" id="3yHXoEBHl2a" role="1gVkn0">
            <node concept="3uibUv" id="3yHXoEBHnnb" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="37vLTw" id="3yHXoEBHiLG" role="2ZW6bz">
              <ref role="3cqZAo" node="3yHXoEBGVzd" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3yHXoEBH6Wr" role="3cqZAp">
          <node concept="3clFbS" id="3yHXoEBH6Ws" role="2LFqv$">
            <node concept="3clFbJ" id="3yHXoEBH6Wt" role="3cqZAp">
              <node concept="3clFbS" id="3yHXoEBH6Wu" role="3clFbx">
                <node concept="3SKdUt" id="3yHXoEBCJNV" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXorYY" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXorYZ" role="1PaTwD">
                      <property role="3oM_SC" value="Language" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ0" role="1PaTwD">
                      <property role="3oM_SC" value="can" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ1" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ2" role="1PaTwD">
                      <property role="3oM_SC" value="extend" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ3" role="1PaTwD">
                      <property role="3oM_SC" value="anything" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ4" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ5" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ6" role="1PaTwD">
                      <property role="3oM_SC" value="language," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ7" role="1PaTwD">
                      <property role="3oM_SC" value="that's" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ8" role="1PaTwD">
                      <property role="3oM_SC" value="why" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ9" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZa" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZb" role="1PaTwD">
                      <property role="3oM_SC" value="care" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZc" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZd" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZe" role="1PaTwD">
                      <property role="3oM_SC" value="dep's" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZf" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3yHXoEBH6Wx" role="3cqZAp">
                  <node concept="2OqwBi" id="3yHXoEBH6Wy" role="3clFbG">
                    <node concept="37vLTw" id="3yHXoEBH6Wz" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yHXoEBH2EW" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="3yHXoEBH6W$" role="2OqNvi">
                      <node concept="2ShNRf" id="3yHXoEBH6W_" role="25WWJ7">
                        <node concept="1pGfFk" id="3yHXoEBH6WA" role="2ShVmc">
                          <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                          <node concept="2OqwBi" id="3yHXoEBH6WB" role="37wK5m">
                            <node concept="37vLTw" id="3yHXoEBH6WC" role="2Oq$k0">
                              <ref role="3cqZAo" node="3yHXoEBH6WL" resolve="dep" />
                            </node>
                            <node concept="liA8E" id="3yHXoEBH6WD" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3yHXoEBH7va" role="37wK5m">
                            <ref role="3cqZAo" node="3yHXoEBGY69" resolve="role" />
                          </node>
                          <node concept="Rm8GO" id="3yHXoEBH6WF" role="37wK5m">
                            <ref role="Rm8GQ" node="6F582lFlfyp" resolve="ExtendsLanguage" />
                            <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3yHXoEBH6WG" role="3clFbw">
                <node concept="Rm8GO" id="3yHXoEBH6WH" role="3uHU7w">
                  <ref role="Rm8GQ" to="lui2:~SDependencyScope.EXTENDS" resolve="EXTENDS" />
                  <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
                </node>
                <node concept="2OqwBi" id="3yHXoEBH6WI" role="3uHU7B">
                  <node concept="37vLTw" id="3yHXoEBH6WJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3yHXoEBH6WL" resolve="dep" />
                  </node>
                  <node concept="liA8E" id="3yHXoEBH6WK" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SDependency.getScope()" resolve="getScope" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3yHXoEBH6WL" role="1Duv9x">
            <property role="TrG5h" value="dep" />
            <node concept="3uibUv" id="3yHXoEBH6WM" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
            </node>
          </node>
          <node concept="2OqwBi" id="3yHXoEBH6WN" role="1DdaDG">
            <node concept="37vLTw" id="3yHXoEBH7kH" role="2Oq$k0">
              <ref role="3cqZAo" node="3yHXoEBGVzd" resolve="module" />
            </node>
            <node concept="liA8E" id="3yHXoEBH6WP" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getDeclaredDependencies()" resolve="getDeclaredDependencies" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3yHXoEBGMiF" role="1B3o_S" />
      <node concept="3cqZAl" id="3yHXoEBGO$5" role="3clF45" />
      <node concept="37vLTG" id="3yHXoEBGVzd" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="3yHXoEBGVzc" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="3yHXoEBGY69" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="3yHXoEBH0o0" role="1tU5fm">
          <ref role="3uigEE" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
        </node>
      </node>
      <node concept="37vLTG" id="3yHXoEBH2EW" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="_YKpA" id="3yHXoEBH2EX" role="1tU5fm">
          <node concept="3uibUv" id="3yHXoEBH2EY" role="_ZDj9">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3yHXoEB_Hzp" role="jymVt" />
    <node concept="2YIFZL" id="3yHXoEBDIOs" role="jymVt">
      <property role="TrG5h" value="regularDependencyPresentation" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3yHXoEB_Ryc" role="3clF47">
        <node concept="3KaCP$" id="3yHXoEB_Woy" role="3cqZAp">
          <node concept="2OqwBi" id="3yHXoEB_Woz" role="3KbGdf">
            <node concept="37vLTw" id="3yHXoEB_Wo$" role="2Oq$k0">
              <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
            </node>
            <node concept="liA8E" id="3yHXoEB_Wo_" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SDependency.getScope()" resolve="getScope" />
            </node>
          </node>
          <node concept="3clFbS" id="3yHXoEB_WoA" role="3Kb1Dw">
            <node concept="3cpWs6" id="3yHXoEBB3TR" role="3cqZAp">
              <node concept="2ShNRf" id="3yHXoEB_WoF" role="3cqZAk">
                <node concept="1pGfFk" id="3yHXoEB_WoG" role="2ShVmc">
                  <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                  <node concept="2OqwBi" id="3yHXoEB_WoH" role="37wK5m">
                    <node concept="37vLTw" id="3yHXoEB_WoI" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
                    </node>
                    <node concept="liA8E" id="3yHXoEB_WoJ" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                    </node>
                  </node>
                  <node concept="Rm8GO" id="3yHXoEB_WoK" role="37wK5m">
                    <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    <ref role="Rm8GQ" node="6F582lFlfyB" resolve="RegularDependency" />
                  </node>
                  <node concept="3K4zz7" id="3yHXoEB_WoL" role="37wK5m">
                    <node concept="Rm8GO" id="3yHXoEB_WoM" role="3K4E3e">
                      <ref role="Rm8GQ" node="6F582lFlfyn" resolve="ReexportsDep" />
                      <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                    </node>
                    <node concept="Rm8GO" id="3yHXoEB_WoN" role="3K4GZi">
                      <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                      <ref role="Rm8GQ" node="6F582lFlfym" resolve="Depends" />
                    </node>
                    <node concept="2OqwBi" id="3yHXoEB_WoO" role="3K4Cdx">
                      <node concept="37vLTw" id="3yHXoEB_WoP" role="2Oq$k0">
                        <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
                      </node>
                      <node concept="liA8E" id="3yHXoEB_WoQ" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SDependency.isReexport()" resolve="isReexport" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3yHXoEB_WoR" role="3KbHQx">
            <node concept="Rm8GO" id="3yHXoEB_WoS" role="3Kbmr1">
              <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
              <ref role="Rm8GQ" to="lui2:~SDependencyScope.EXTENDS" resolve="EXTENDS" />
            </node>
            <node concept="3clFbS" id="3yHXoEB_WoT" role="3Kbo56">
              <node concept="3cpWs8" id="3yHXoEB_WoU" role="3cqZAp">
                <node concept="3cpWsn" id="3yHXoEB_WoV" role="3cpWs9">
                  <property role="TrG5h" value="t" />
                  <node concept="3uibUv" id="3yHXoEB_WoW" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                  <node concept="2OqwBi" id="3yHXoEB_WoX" role="33vP2m">
                    <node concept="37vLTw" id="3yHXoEB_WoY" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
                    </node>
                    <node concept="liA8E" id="3yHXoEB_WoZ" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SDependency.getTarget()" resolve="getTarget" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3yHXoEB_Wp0" role="3cqZAp">
                <node concept="3clFbS" id="3yHXoEB_Wp1" role="3clFbx">
                  <node concept="3cpWs6" id="3yHXoEB_Ycw" role="3cqZAp">
                    <node concept="2ShNRf" id="3yHXoEB_Wp6" role="3cqZAk">
                      <node concept="1pGfFk" id="3yHXoEB_Wp7" role="2ShVmc">
                        <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                        <node concept="2OqwBi" id="3yHXoEB_Wp8" role="37wK5m">
                          <node concept="37vLTw" id="3yHXoEB_Wp9" role="2Oq$k0">
                            <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
                          </node>
                          <node concept="liA8E" id="3yHXoEB_Wpa" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                          </node>
                        </node>
                        <node concept="Rm8GO" id="3yHXoEB_Wpb" role="37wK5m">
                          <ref role="Rm8GQ" node="6F582lFlfyB" resolve="RegularDependency" />
                          <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                        </node>
                        <node concept="Rm8GO" id="3yHXoEB_Wpc" role="37wK5m">
                          <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                          <ref role="Rm8GQ" node="6F582lFlfyp" resolve="ExtendsLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="3yHXoEB_Wpd" role="3clFbw">
                  <node concept="3uibUv" id="3yHXoEB_Wpe" role="2ZW6by">
                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                  </node>
                  <node concept="37vLTw" id="3yHXoEB_Wpf" role="2ZW6bz">
                    <ref role="3cqZAo" node="3yHXoEB_WoV" resolve="t" />
                  </node>
                </node>
                <node concept="3eNFk2" id="3yHXoEB_Wpg" role="3eNLev">
                  <node concept="2ZW3vV" id="3yHXoEB_Wph" role="3eO9$A">
                    <node concept="3uibUv" id="3yHXoEB_Wpi" role="2ZW6by">
                      <ref role="3uigEE" to="w1kc:~Generator" resolve="Generator" />
                    </node>
                    <node concept="37vLTw" id="3yHXoEB_Wpj" role="2ZW6bz">
                      <ref role="3cqZAo" node="3yHXoEB_WoV" resolve="t" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="3yHXoEB_Wpk" role="3eOfB_">
                    <node concept="3cpWs6" id="3yHXoEBAm4A" role="3cqZAp">
                      <node concept="2ShNRf" id="3yHXoEB_Wpp" role="3cqZAk">
                        <node concept="1pGfFk" id="3yHXoEB_Wpq" role="2ShVmc">
                          <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                          <node concept="2OqwBi" id="3yHXoEB_Wpr" role="37wK5m">
                            <node concept="37vLTw" id="3yHXoEB_Wps" role="2Oq$k0">
                              <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
                            </node>
                            <node concept="liA8E" id="3yHXoEB_Wpt" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="3yHXoEB_Wpu" role="37wK5m">
                            <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                            <ref role="Rm8GQ" node="6F582lFlfyB" resolve="RegularDependency" />
                          </node>
                          <node concept="Rm8GO" id="3yHXoEB_Wpv" role="37wK5m">
                            <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                            <ref role="Rm8GQ" node="5_d5oiEpDxV" resolve="ExtendsGenerator" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="3yHXoEB_Wpw" role="9aQIa">
                  <node concept="3clFbS" id="3yHXoEB_Wpx" role="9aQI4">
                    <node concept="3SKdUt" id="3yHXoEB_Wpy" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXorZg" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXorZh" role="1PaTwD">
                          <property role="3oM_SC" value="just" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXorZi" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXorZj" role="1PaTwD">
                          <property role="3oM_SC" value="case" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXorZk" role="1PaTwD">
                          <property role="3oM_SC" value="module" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXorZl" role="1PaTwD">
                          <property role="3oM_SC" value="could" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXorZm" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXorZn" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXorZo" role="1PaTwD">
                          <property role="3oM_SC" value="resolved" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3yHXoEBArJt" role="3cqZAp">
                      <node concept="2ShNRf" id="3yHXoEB_WpC" role="3cqZAk">
                        <node concept="1pGfFk" id="3yHXoEB_WpD" role="2ShVmc">
                          <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                          <node concept="2OqwBi" id="3yHXoEB_WpE" role="37wK5m">
                            <node concept="37vLTw" id="3yHXoEB_WpF" role="2Oq$k0">
                              <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
                            </node>
                            <node concept="liA8E" id="3yHXoEB_WpG" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="3yHXoEB_WpH" role="37wK5m">
                            <ref role="Rm8GQ" node="6F582lFlfyB" resolve="RegularDependency" />
                            <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                          </node>
                          <node concept="Rm8GO" id="3yHXoEB_WpI" role="37wK5m">
                            <ref role="Rm8GQ" node="6F582lFlfym" resolve="Depends" />
                            <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3yHXoEB_WpK" role="3KbHQx">
            <node concept="Rm8GO" id="3yHXoEB_WpL" role="3Kbmr1">
              <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
              <ref role="Rm8GQ" to="lui2:~SDependencyScope.DESIGN" resolve="DESIGN" />
            </node>
            <node concept="3clFbS" id="3yHXoEB_WpM" role="3Kbo56">
              <node concept="3cpWs6" id="3yHXoEBAAaI" role="3cqZAp">
                <node concept="2ShNRf" id="3yHXoEB_WpR" role="3cqZAk">
                  <node concept="1pGfFk" id="3yHXoEB_WpS" role="2ShVmc">
                    <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                    <node concept="2OqwBi" id="3yHXoEB_WpT" role="37wK5m">
                      <node concept="37vLTw" id="3yHXoEB_WpU" role="2Oq$k0">
                        <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
                      </node>
                      <node concept="liA8E" id="3yHXoEB_WpV" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="3yHXoEB_WpW" role="37wK5m">
                      <ref role="Rm8GQ" node="6F582lFlfyB" resolve="RegularDependency" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                    <node concept="Rm8GO" id="3yHXoEB_WpX" role="37wK5m">
                      <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                      <ref role="Rm8GQ" node="6F582lFlfym" resolve="Depends" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3yHXoEB_WpZ" role="3KbHQx">
            <node concept="Rm8GO" id="3yHXoEB_Wq0" role="3Kbmr1">
              <ref role="1Px2BO" to="lui2:~SDependencyScope" resolve="SDependencyScope" />
              <ref role="Rm8GQ" to="lui2:~SDependencyScope.RUNTIME" resolve="RUNTIME" />
            </node>
            <node concept="3clFbS" id="3yHXoEB_Wq1" role="3Kbo56">
              <node concept="3cpWs6" id="3yHXoEBAR84" role="3cqZAp">
                <node concept="2ShNRf" id="3yHXoEB_Wq6" role="3cqZAk">
                  <node concept="1pGfFk" id="3yHXoEB_Wq7" role="2ShVmc">
                    <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                    <node concept="2OqwBi" id="3yHXoEB_Wq8" role="37wK5m">
                      <node concept="37vLTw" id="3yHXoEB_Wq9" role="2Oq$k0">
                        <ref role="3cqZAo" node="3yHXoEB_U9I" resolve="dep" />
                      </node>
                      <node concept="liA8E" id="3yHXoEB_Wqa" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="3yHXoEB_Wqb" role="37wK5m">
                      <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                      <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                    </node>
                    <node concept="Rm8GO" id="3yHXoEB_Wqc" role="37wK5m">
                      <ref role="Rm8GQ" node="6F582lFlfym" resolve="Depends" />
                      <ref role="1Px2BO" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3yHXoEB_U9I" role="3clF46">
        <property role="TrG5h" value="dep" />
        <node concept="3uibUv" id="3yHXoEB_U9H" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
        </node>
      </node>
      <node concept="3uibUv" id="3yHXoEB_RwV" role="3clF45">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
      <node concept="3Tm6S6" id="3yHXoEB_NjU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3yHXoEB_HNh" role="jymVt" />
    <node concept="3clFb_" id="7yrEqDbIBXb" role="jymVt">
      <property role="TrG5h" value="addDeps" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7yrEqDbIBXo" role="3clF47">
        <node concept="3clFbJ" id="7yrEqDbIBXp" role="3cqZAp">
          <node concept="3clFbS" id="7yrEqDbIBXq" role="3clFbx">
            <node concept="3cpWs6" id="7yrEqDbIBXr" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7yrEqDbIBXs" role="3clFbw">
            <node concept="10Nm6u" id="7yrEqDbIBXt" role="3uHU7w" />
            <node concept="37vLTw" id="7yrEqDbIBXu" role="3uHU7B">
              <ref role="3cqZAo" node="7yrEqDbIBXh" resolve="modules" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7yrEqDbIBXv" role="3cqZAp">
          <node concept="2OqwBi" id="7yrEqDbIBXw" role="3clFbG">
            <node concept="37vLTw" id="7yrEqDbIBXx" role="2Oq$k0">
              <ref role="3cqZAo" node="7yrEqDbIBXe" resolve="result" />
            </node>
            <node concept="X8dFx" id="7yrEqDbIBXy" role="2OqNvi">
              <node concept="2OqwBi" id="7yrEqDbIBXz" role="25WWJ7">
                <node concept="37vLTw" id="7yrEqDbIBXA" role="2Oq$k0">
                  <ref role="3cqZAo" node="7yrEqDbIBXh" resolve="modules" />
                </node>
                <node concept="3$u5V9" id="7yrEqDbIBXT" role="2OqNvi">
                  <node concept="1bVj0M" id="7yrEqDbIBXU" role="23t8la">
                    <node concept="3clFbS" id="7yrEqDbIBXV" role="1bW5cS">
                      <node concept="3clFbF" id="7yrEqDbIBXW" role="3cqZAp">
                        <node concept="2ShNRf" id="7yrEqDbIBXX" role="3clFbG">
                          <node concept="1pGfFk" id="7yrEqDbIBXY" role="2ShVmc">
                            <ref role="37wK5l" node="65vkPOiCZ8z" resolve="DepLink" />
                            <node concept="37vLTw" id="7yrEqDbIBXZ" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0Xm6" resolve="module" />
                            </node>
                            <node concept="37vLTw" id="7yrEqDbIBY0" role="37wK5m">
                              <ref role="3cqZAo" node="7yrEqDbIBXk" resolve="role" />
                            </node>
                            <node concept="37vLTw" id="7yrEqDbIBY1" role="37wK5m">
                              <ref role="3cqZAo" node="7yrEqDbIBXm" resolve="linktype" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xm6" role="1bW2Oz">
                      <property role="TrG5h" value="module" />
                      <node concept="2jxLKc" id="5W7E4fV0Xm7" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7yrEqDbIBXd" role="3clF45" />
      <node concept="37vLTG" id="7yrEqDbIBXe" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="_YKpA" id="7yrEqDbIBXf" role="1tU5fm">
          <node concept="3uibUv" id="7yrEqDbIBXg" role="_ZDj9">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7yrEqDbIBXh" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="A3Dl8" id="7yrEqDbIBXi" role="1tU5fm">
          <node concept="3uibUv" id="7yrEqDbIBXj" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7yrEqDbIBXk" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="7yrEqDbIBXl" role="1tU5fm">
          <ref role="3uigEE" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
        </node>
      </node>
      <node concept="37vLTG" id="7yrEqDbIBXm" role="3clF46">
        <property role="TrG5h" value="linktype" />
        <node concept="3uibUv" id="7yrEqDbIBXn" role="1tU5fm">
          <ref role="3uigEE" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7yrEqDbIBY6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4nS8_MQ1$J3" role="jymVt" />
    <node concept="Qs71p" id="6F582lFlfyl" role="jymVt">
      <property role="TrG5h" value="LinkType" />
      <property role="2bfB8j" value="false" />
      <node concept="QsSxf" id="6F582lFlfym" role="Qtgdg">
        <property role="TrG5h" value="Depends" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yf" role="37wK5m">
          <property role="Xl_RC" value="depends on" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyn" role="Qtgdg">
        <property role="TrG5h" value="ReexportsDep" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yg" role="37wK5m">
          <property role="Xl_RC" value="reexports dependency on" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyo" role="Qtgdg">
        <property role="TrG5h" value="UsesLanguage" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yh" role="37wK5m">
          <property role="Xl_RC" value="uses language" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyp" role="Qtgdg">
        <property role="TrG5h" value="ExtendsLanguage" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yi" role="37wK5m">
          <property role="Xl_RC" value="extends language" />
        </node>
      </node>
      <node concept="QsSxf" id="5_d5oiEpDxV" role="Qtgdg">
        <property role="TrG5h" value="ExtendsGenerator" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="5_d5oiEpDxW" role="37wK5m">
          <property role="Xl_RC" value="extends generator" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyq" role="Qtgdg">
        <property role="TrG5h" value="ExportsRuntime" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yj" role="37wK5m">
          <property role="Xl_RC" value="exports runtime" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyr" role="Qtgdg">
        <property role="TrG5h" value="ExportsRuntimeLib" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yk" role="37wK5m">
          <property role="Xl_RC" value="has runtime library" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfys" role="Qtgdg">
        <property role="TrG5h" value="UsesDevkit" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yl" role="37wK5m">
          <property role="Xl_RC" value="uses devkit" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyt" role="Qtgdg">
        <property role="TrG5h" value="ExportsLanguage" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Ym" role="37wK5m">
          <property role="Xl_RC" value="exports language" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyu" role="Qtgdg">
        <property role="TrG5h" value="ExportsSolution" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yn" role="37wK5m">
          <property role="Xl_RC" value="exports solution" />
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyv" role="Qtgdg">
        <property role="TrG5h" value="ExtendsDevkit" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3pZ6JG2c$Yo" role="37wK5m">
          <property role="Xl_RC" value="extends devkit" />
        </node>
      </node>
      <node concept="QsSxf" id="6cS2_awCMn" role="Qtgdg">
        <property role="TrG5h" value="GeneratorLanguage" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="6cS2_awCMo" role="37wK5m">
          <property role="Xl_RC" value="generator language" />
        </node>
      </node>
      <node concept="QsSxf" id="3jefwWMZ9AD" role="Qtgdg">
        <property role="TrG5h" value="DependsOnGenerator" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3jefwWMZ9AE" role="37wK5m">
          <property role="Xl_RC" value="depends on generator" />
        </node>
      </node>
      <node concept="QsSxf" id="6NG8tmYRrVr" role="Qtgdg">
        <property role="TrG5h" value="Generator" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="6NG8tmYRrVs" role="37wK5m">
          <property role="Xl_RC" value="generator" />
        </node>
      </node>
      <node concept="QsSxf" id="3jefwWMZ9BN" role="Qtgdg">
        <property role="TrG5h" value="LangCore" />
        <ref role="37wK5l" node="6F582lFlfyx" resolve="DependencyUtil.LinkType" />
        <node concept="Xl_RD" id="3jefwWMZ9BO" role="37wK5m">
          <property role="Xl_RC" value="" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6F582lFlfyw" role="1B3o_S" />
      <node concept="312cEg" id="3pZ6JG2c$vo" role="jymVt">
        <property role="TrG5h" value="myText" />
        <node concept="3Tm6S6" id="3pZ6JG2c$vp" role="1B3o_S" />
        <node concept="17QB3L" id="3pZ6JG2c$Ya" role="1tU5fm" />
      </node>
      <node concept="3clFbW" id="6F582lFlfyx" role="jymVt">
        <node concept="3cqZAl" id="6F582lFlfyy" role="3clF45" />
        <node concept="3clFbS" id="6F582lFlfy$" role="3clF47">
          <node concept="3clFbF" id="6DByJ2QweYU" role="3cqZAp">
            <node concept="37vLTI" id="6DByJ2QweYW" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgmji$" role="37vLTx">
                <ref role="3cqZAo" node="3pZ6JG2c$Yb" resolve="text" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuw_K" role="37vLTJ">
                <ref role="3cqZAo" node="3pZ6JG2c$vo" resolve="myText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3pZ6JG2c$Yb" role="3clF46">
          <property role="TrG5h" value="text" />
          <node concept="17QB3L" id="3pZ6JG2c$Yc" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="3pZ6JG2c$vh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="toString" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3pZ6JG2c$vi" role="1B3o_S" />
        <node concept="3uibUv" id="3pZ6JG2c$vj" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="3pZ6JG2c$vk" role="3clF47">
          <node concept="3clFbF" id="3pZ6JG2c$Yd" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeuqQS" role="3clFbG">
              <ref role="3cqZAo" node="3pZ6JG2c$vo" resolve="myText" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3pZ6JG2c$vl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="Qs71p" id="6F582lFlfy_" role="jymVt">
      <property role="TrG5h" value="Role" />
      <property role="2bfB8j" value="false" />
      <node concept="3UR2Jj" id="65vkPOiEE6o" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBQx" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBQy" role="1PaTwD">
            <property role="3oM_SC" value="None" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQz" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQ$" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQ_" role="1PaTwD">
            <property role="3oM_SC" value="fake" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQA" role="1PaTwD">
            <property role="3oM_SC" value="role" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQB" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQC" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQD" role="1PaTwD">
            <property role="3oM_SC" value="initial" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQE" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQF" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQG" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBQH" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBQI" role="1PaTwD">
            <property role="3oM_SC" value="UsedLanguage" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQJ" role="1PaTwD">
            <property role="3oM_SC" value="reflects" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQK" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQL" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQM" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQN" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQO" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQP" role="1PaTwD">
            <property role="3oM_SC" value="module." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQQ" role="1PaTwD">
            <property role="3oM_SC" value="languages" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQR" role="1PaTwD">
            <property role="3oM_SC" value="extended" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQS" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQT" role="1PaTwD">
            <property role="3oM_SC" value="UsedLanguage" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQU" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQV" role="1PaTwD">
            <property role="3oM_SC" value="reflected" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQW" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQX" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQY" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBQZ" role="1PaTwD">
            <property role="3oM_SC" value="role," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR0" role="1PaTwD">
            <property role="3oM_SC" value="too." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBR1" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBR2" role="1PaTwD">
            <property role="3oM_SC" value="DependencyLanguage" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR3" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR4" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR5" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR6" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR7" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR8" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR9" role="1PaTwD">
            <property role="3oM_SC" value="dependency" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRa" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRb" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRc" role="1PaTwD">
            <property role="3oM_SC" value="'used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRd" role="1PaTwD">
            <property role="3oM_SC" value="language'" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBRe" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBRf" role="1PaTwD">
            <property role="3oM_SC" value="UsedDevkit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRg" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRh" role="1PaTwD">
            <property role="3oM_SC" value="explicit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRi" role="1PaTwD">
            <property role="3oM_SC" value="devkit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRj" role="1PaTwD">
            <property role="3oM_SC" value="dependency," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRk" role="1PaTwD">
            <property role="3oM_SC" value="direct" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRl" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRm" role="1PaTwD">
            <property role="3oM_SC" value="indirect" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRn" role="1PaTwD">
            <property role="3oM_SC" value="(i.e." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRo" role="1PaTwD">
            <property role="3oM_SC" value="devkit1" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRp" role="1PaTwD">
            <property role="3oM_SC" value="extends" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRq" role="1PaTwD">
            <property role="3oM_SC" value="devkit2" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBRr" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBRs" role="1PaTwD">
            <property role="3oM_SC" value="DependencyDevkit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRt" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRu" role="1PaTwD">
            <property role="3oM_SC" value="devkit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRv" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRw" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRx" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRy" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRz" role="1PaTwD">
            <property role="3oM_SC" value="dependency" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR$" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBR_" role="1PaTwD">
            <property role="3oM_SC" value="than" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRA" role="1PaTwD">
            <property role="3oM_SC" value="'UsedDevkit'" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRB" role="1PaTwD">
            <property role="3oM_SC" value="(indirectly" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRC" role="1PaTwD">
            <property role="3oM_SC" value="involved" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRD" role="1PaTwD">
            <property role="3oM_SC" value="devkits)" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBRE" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBRF" role="1PaTwD">
            <property role="3oM_SC" value="RegularDependency" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRG" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRH" role="1PaTwD">
            <property role="3oM_SC" value="direct" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRI" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRJ" role="1PaTwD">
            <property role="3oM_SC" value="indirect" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRK" role="1PaTwD">
            <property role="3oM_SC" value="dependency" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRL" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRM" role="1PaTwD">
            <property role="3oM_SC" value="original" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRN" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBRO" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBRP" role="1PaTwD">
            <property role="3oM_SC" value="OwnedGenerator" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRQ" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRR" role="1PaTwD">
            <property role="3oM_SC" value="dependency" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRS" role="1PaTwD">
            <property role="3oM_SC" value="between" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRT" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRU" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRV" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRW" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBRX" role="1PaTwD">
            <property role="3oM_SC" value="generators" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBRY" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBRZ" role="1PaTwD">
            <property role="3oM_SC" value="SourceLanguage" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS0" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS1" role="1PaTwD">
            <property role="3oM_SC" value="dependency" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS2" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS3" role="1PaTwD">
            <property role="3oM_SC" value="generator" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS4" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS5" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS6" role="1PaTwD">
            <property role="3oM_SC" value="owning" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBS7" role="1PaTwD">
            <property role="3oM_SC" value="language" />
          </node>
        </node>
      </node>
      <node concept="QsSxf" id="6F582lFlfyA" role="Qtgdg">
        <property role="TrG5h" value="None" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="QsSxf" id="6F582lFlfyB" role="Qtgdg">
        <property role="TrG5h" value="RegularDependency" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="QsSxf" id="6F582lFlfyD" role="Qtgdg">
        <property role="TrG5h" value="RuntimeDependency" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="QsSxf" id="6F582lFlfyF" role="Qtgdg">
        <property role="TrG5h" value="UsedLanguage" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="QsSxf" id="3W891rWThyR" role="Qtgdg">
        <property role="TrG5h" value="DependencyLanguage" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="QsSxf" id="6F582lFlfyG" role="Qtgdg">
        <property role="TrG5h" value="UsedDevkit" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="QsSxf" id="3W891rWTi50" role="Qtgdg">
        <property role="TrG5h" value="DependencyDevkit" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="QsSxf" id="6cS2_awCMp" role="Qtgdg">
        <property role="TrG5h" value="SourceLanguage" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="QsSxf" id="6F582lFlfyC" role="Qtgdg">
        <property role="TrG5h" value="OwnedGenerator" />
        <ref role="37wK5l" node="6F582lFlfyI" resolve="DependencyUtil.Role" />
      </node>
      <node concept="3Tm1VV" id="6F582lFlfyH" role="1B3o_S" />
      <node concept="3clFbW" id="6F582lFlfyI" role="jymVt">
        <node concept="3cqZAl" id="6F582lFlfyJ" role="3clF45" />
        <node concept="3clFbS" id="6F582lFlfyL" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3jefwWMZ5UI" role="jymVt">
        <property role="TrG5h" value="isUsedLanguage" />
        <node concept="10P_77" id="3jefwWMZ5UM" role="3clF45" />
        <node concept="3Tm1VV" id="3jefwWMZ5UK" role="1B3o_S" />
        <node concept="3clFbS" id="3jefwWMZ5UL" role="3clF47">
          <node concept="3SKdUt" id="4nS8_MQ0vxO" role="3cqZAp">
            <node concept="1PaTwC" id="4nS8_MQ0vxP" role="1aUNEU">
              <node concept="3oM_SD" id="4nS8_MQ1lOl" role="1PaTwD">
                <property role="3oM_SC" value="FWIW" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ0yRH" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ0ySI" role="1PaTwD">
                <property role="3oM_SC" value="language" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ0ySO" role="1PaTwD">
                <property role="3oM_SC" value="extended" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ0yUB" role="1PaTwD">
                <property role="3oM_SC" value="by" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ0yV_" role="1PaTwD">
                <property role="3oM_SC" value="used" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ0yW$" role="1PaTwD">
                <property role="3oM_SC" value="language" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ0yWI" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ1lTa" role="1PaTwD">
                <property role="3oM_SC" value="considered" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ1lXs" role="1PaTwD">
                <property role="3oM_SC" value="'used'," />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ1m5X" role="1PaTwD">
                <property role="3oM_SC" value="see" />
              </node>
              <node concept="3oM_SD" id="4nS8_MQ1p4U" role="1PaTwD">
                <property role="3oM_SC" value="#addExtendedLanguages()" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3jefwWMZ5UN" role="3cqZAp">
            <node concept="3clFbC" id="3jefwWMZ5UP" role="3clFbG">
              <node concept="Xjq3P" id="3jefwWMZ5UO" role="3uHU7B" />
              <node concept="Rm8GO" id="3jefwWMZ5UT" role="3uHU7w">
                <ref role="Rm8GQ" node="6F582lFlfyF" resolve="UsedLanguage" />
                <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3jefwWMZ5VM" role="jymVt">
        <property role="TrG5h" value="isDependency" />
        <node concept="10P_77" id="3jefwWMZ5VQ" role="3clF45" />
        <node concept="3Tm1VV" id="3jefwWMZ5VO" role="1B3o_S" />
        <node concept="3clFbS" id="3jefwWMZ5VP" role="3clF47">
          <node concept="3clFbF" id="3KdzVireBT_" role="3cqZAp">
            <node concept="22lmx$" id="3KdzVireBTA" role="3clFbG">
              <node concept="3clFbC" id="3KdzVireBTB" role="3uHU7w">
                <node concept="Xjq3P" id="3KdzVireBTC" role="3uHU7B" />
                <node concept="Rm8GO" id="3KdzVireBTD" role="3uHU7w">
                  <ref role="Rm8GQ" node="6F582lFlfyD" resolve="RuntimeDependency" />
                  <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                </node>
              </node>
              <node concept="22lmx$" id="3KdzVireBTE" role="3uHU7B">
                <node concept="3clFbC" id="3KdzVireBTF" role="3uHU7w">
                  <node concept="Xjq3P" id="3KdzVireBTH" role="3uHU7B" />
                  <node concept="Rm8GO" id="4nS8_MQ0jdL" role="3uHU7w">
                    <ref role="Rm8GQ" node="6cS2_awCMp" resolve="SourceLanguage" />
                    <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                  </node>
                </node>
                <node concept="3clFbC" id="3KdzVireBTI" role="3uHU7B">
                  <node concept="Xjq3P" id="3KdzVireBTJ" role="3uHU7B" />
                  <node concept="Rm8GO" id="3KdzVireBTK" role="3uHU7w">
                    <ref role="Rm8GQ" node="6F582lFlfyB" resolve="RegularDependency" />
                    <ref role="1Px2BO" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2fD8I5" id="3pZ6JG2c_9t" role="jymVt">
      <property role="TrG5h" value="Dependency" />
      <node concept="2lGYhJ" id="3pZ6JG2c_9y" role="2pHZQ9">
        <property role="3dDGau" value="false" />
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7yrEqDbF_9i" role="2lK19J">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
      <node concept="2lGYhJ" id="3pZ6JG2c_9v" role="2pHZQ9">
        <property role="3dDGau" value="false" />
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="3pZ6JG2c_9x" role="2lK19J">
          <ref role="3uigEE" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3pZ6JG2c_9u" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="65vkPOiCZ8i">
    <property role="TrG5h" value="DepLink" />
    <property role="2bfB8j" value="false" />
    <property role="1EXbeo" value="true" />
    <property role="3GE5qa" value="view1" />
    <node concept="3Tm1VV" id="65vkPOiCZ8j" role="1B3o_S" />
    <node concept="312cEg" id="65vkPOiCZ8k" role="jymVt">
      <property role="TrG5h" value="role" />
      <node concept="3Tm1VV" id="65vkPOiCZ8l" role="1B3o_S" />
      <node concept="3uibUv" id="65vkPOiCZ8m" role="1tU5fm">
        <ref role="3uigEE" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
      </node>
    </node>
    <node concept="312cEg" id="65vkPOiCZ8n" role="jymVt">
      <property role="TrG5h" value="module" />
      <node concept="3Tm1VV" id="65vkPOiCZ8o" role="1B3o_S" />
      <node concept="3uibUv" id="7yrEqDbFC2i" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
    <node concept="312cEg" id="65vkPOiCZ8q" role="jymVt">
      <property role="TrG5h" value="linktype" />
      <node concept="3Tm1VV" id="65vkPOiCZ8r" role="1B3o_S" />
      <node concept="3uibUv" id="65vkPOiCZ8s" role="1tU5fm">
        <ref role="3uigEE" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
      </node>
    </node>
    <node concept="312cEg" id="65vkPOiCZ8t" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myChildren" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="65vkPOiCZ8u" role="1B3o_S" />
      <node concept="_YKpA" id="65vkPOiCZ8v" role="1tU5fm">
        <node concept="3uibUv" id="65vkPOiCZ8w" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="65vkPOiHTPN" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myReferences" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="65vkPOiHTPO" role="1B3o_S" />
      <node concept="_YKpA" id="65vkPOiHTPP" role="1tU5fm">
        <node concept="3uibUv" id="65vkPOiHTPQ" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="65vkPOiJlSl" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myReusedDepLink" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="65vkPOiJkwI" role="1B3o_S" />
      <node concept="3uibUv" id="65vkPOiJlPx" role="1tU5fm">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
    </node>
    <node concept="312cEg" id="65vkPOiCZ8x" role="jymVt">
      <property role="TrG5h" value="myParent" />
      <node concept="3uibUv" id="65vkPOiCZ8y" role="1tU5fm">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
    </node>
    <node concept="3clFbW" id="65vkPOiCZ8z" role="jymVt">
      <node concept="3cqZAl" id="65vkPOiCZ8$" role="3clF45" />
      <node concept="3Tm1VV" id="65vkPOiCZ8_" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiCZ8A" role="3clF47">
        <node concept="3clFbF" id="65vkPOiCZ8B" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiCZ8C" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiCZ8D" role="37vLTx">
              <ref role="3cqZAo" node="65vkPOiCZ8Z" resolve="module" />
            </node>
            <node concept="2OqwBi" id="65vkPOiCZ8E" role="37vLTJ">
              <node concept="Xjq3P" id="65vkPOiCZ8F" role="2Oq$k0" />
              <node concept="2OwXpG" id="65vkPOiCZ8G" role="2OqNvi">
                <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiCZ8H" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiCZ8I" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiCZ8J" role="37vLTx">
              <ref role="3cqZAo" node="65vkPOiCZ91" resolve="role" />
            </node>
            <node concept="2OqwBi" id="65vkPOiCZ8K" role="37vLTJ">
              <node concept="Xjq3P" id="65vkPOiCZ8L" role="2Oq$k0" />
              <node concept="2OwXpG" id="65vkPOiCZ8M" role="2OqNvi">
                <ref role="2Oxat5" node="65vkPOiCZ8k" resolve="role" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiCZ8N" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiCZ8O" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiCZ8P" role="37vLTx">
              <ref role="3cqZAo" node="65vkPOiCZ93" resolve="linktype" />
            </node>
            <node concept="2OqwBi" id="65vkPOiCZ8Q" role="37vLTJ">
              <node concept="Xjq3P" id="65vkPOiCZ8R" role="2Oq$k0" />
              <node concept="2OwXpG" id="65vkPOiCZ8S" role="2OqNvi">
                <ref role="2Oxat5" node="65vkPOiCZ8q" resolve="linktype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiCZ8T" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiCZ8U" role="3clFbG">
            <node concept="2ShNRf" id="65vkPOiCZ8V" role="37vLTx">
              <node concept="Tc6Ow" id="65vkPOiCZ8W" role="2ShVmc">
                <node concept="3uibUv" id="65vkPOiCZ8X" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="65vkPOiCZ8Y" role="37vLTJ">
              <ref role="3cqZAo" node="65vkPOiCZ8t" resolve="myChildren" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiHVa_" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiHVZR" role="3clFbG">
            <node concept="2ShNRf" id="65vkPOiHWkJ" role="37vLTx">
              <node concept="Tc6Ow" id="65vkPOiHXhT" role="2ShVmc">
                <node concept="3uibUv" id="65vkPOiHYs4" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="65vkPOiHVa$" role="37vLTJ">
              <ref role="3cqZAo" node="65vkPOiHTPN" resolve="myReferences" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="65vkPOiCZ8Z" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="7yrEqDbFDSX" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
      <node concept="37vLTG" id="65vkPOiCZ91" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="65vkPOiCZ92" role="1tU5fm">
          <ref role="3uigEE" node="6F582lFlfy_" resolve="DependencyUtil.Role" />
        </node>
      </node>
      <node concept="37vLTG" id="65vkPOiCZ93" role="3clF46">
        <property role="TrG5h" value="linktype" />
        <node concept="3uibUv" id="65vkPOiCZ94" role="1tU5fm">
          <ref role="3uigEE" node="6F582lFlfyl" resolve="DependencyUtil.LinkType" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiCZ95" role="jymVt">
      <property role="TrG5h" value="children" />
      <node concept="_YKpA" id="65vkPOiCZ96" role="3clF45">
        <node concept="3uibUv" id="65vkPOiCZ97" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="65vkPOiCZ98" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiCZ99" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiCZ9a" role="3cqZAp">
          <node concept="37vLTw" id="65vkPOiCZ9b" role="3cqZAk">
            <ref role="3cqZAo" node="65vkPOiCZ8t" resolve="myChildren" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiCZ9c" role="jymVt">
      <property role="TrG5h" value="parent" />
      <node concept="3uibUv" id="65vkPOiCZ9d" role="3clF45">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
      <node concept="3Tm1VV" id="65vkPOiCZ9e" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiCZ9f" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiCZ9g" role="3cqZAp">
          <node concept="37vLTw" id="65vkPOiCZ9h" role="3cqZAk">
            <ref role="3cqZAo" node="65vkPOiCZ8x" resolve="myParent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Hi6aYlaUvJ" role="jymVt">
      <property role="TrG5h" value="ancestors" />
      <node concept="3clFbS" id="4Hi6aYlaUvM" role="3clF47">
        <node concept="3clFbJ" id="4Hi6aYlaYLZ" role="3cqZAp">
          <node concept="3clFbC" id="4Hi6aYlb2N0" role="3clFbw">
            <node concept="10Nm6u" id="4Hi6aYlb3Cu" role="3uHU7w" />
            <node concept="37vLTw" id="4Hi6aYlb251" role="3uHU7B">
              <ref role="3cqZAo" node="65vkPOiCZ8x" resolve="myParent" />
            </node>
          </node>
          <node concept="3clFbS" id="4Hi6aYlaYM1" role="3clFbx">
            <node concept="3cpWs6" id="4Hi6aYlb71i" role="3cqZAp">
              <node concept="2ShNRf" id="4Hi6aYlb8tC" role="3cqZAk">
                <node concept="kMnCb" id="4Hi6aYlb$IK" role="2ShVmc">
                  <node concept="3uibUv" id="4Hi6aYlbB6Z" role="kMuH3">
                    <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Hi6aYlbEzk" role="3cqZAp">
          <node concept="2OqwBi" id="4Hi6aYlbLZs" role="3cqZAk">
            <node concept="2ShNRf" id="4Hi6aYlbFGJ" role="2Oq$k0">
              <node concept="2HTt$P" id="4Hi6aYlbI7z" role="2ShVmc">
                <node concept="37vLTw" id="4Hi6aYlbL1l" role="2HTEbv">
                  <ref role="3cqZAo" node="65vkPOiCZ8x" resolve="myParent" />
                </node>
                <node concept="3uibUv" id="4$56G0tAMbf" role="2HTBi0">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
            <node concept="3QWeyG" id="4Hi6aYlbPdv" role="2OqNvi">
              <node concept="2OqwBi" id="4Hi6aYlbR92" role="576Qk">
                <node concept="37vLTw" id="4Hi6aYlbPL5" role="2Oq$k0">
                  <ref role="3cqZAo" node="65vkPOiCZ8x" resolve="myParent" />
                </node>
                <node concept="liA8E" id="4Hi6aYlbTUA" role="2OqNvi">
                  <ref role="37wK5l" node="4Hi6aYlaUvJ" resolve="ancestors" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Hi6aYlaQN4" role="1B3o_S" />
      <node concept="A3Dl8" id="4Hi6aYlaTFz" role="3clF45">
        <node concept="3uibUv" id="4Hi6aYlaUnK" role="A3Ik2">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiJcP0" role="jymVt">
      <property role="TrG5h" value="setReused" />
      <node concept="3cqZAl" id="65vkPOiJcP2" role="3clF45" />
      <node concept="3Tm1VV" id="65vkPOiJcP3" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiJcP4" role="3clF47">
        <node concept="3clFbF" id="65vkPOiJnjs" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiJnlN" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiJnom" role="37vLTx">
              <ref role="3cqZAo" node="65vkPOiJi4w" resolve="reusedDepLink" />
            </node>
            <node concept="37vLTw" id="65vkPOiJnjr" role="37vLTJ">
              <ref role="3cqZAo" node="65vkPOiJlSl" resolve="myReusedDepLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiJnwj" role="3cqZAp">
          <node concept="2OqwBi" id="65vkPOiJogq" role="3clFbG">
            <node concept="2OqwBi" id="65vkPOiJnxI" role="2Oq$k0">
              <node concept="37vLTw" id="65vkPOiJnwi" role="2Oq$k0">
                <ref role="3cqZAo" node="65vkPOiJi4w" resolve="reusedDepLink" />
              </node>
              <node concept="2OwXpG" id="65vkPOiJnJ8" role="2OqNvi">
                <ref role="2Oxat5" node="65vkPOiHTPN" resolve="myReferences" />
              </node>
            </node>
            <node concept="TSZUe" id="65vkPOiJreI" role="2OqNvi">
              <node concept="Xjq3P" id="65vkPOiJrgB" role="25WWJ7" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="65vkPOiJi4w" role="3clF46">
        <property role="TrG5h" value="reusedDepLink" />
        <node concept="3uibUv" id="65vkPOiJi4v" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiJGGQ" role="jymVt">
      <property role="TrG5h" value="getReused" />
      <node concept="3uibUv" id="65vkPOiJI44" role="3clF45">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
      <node concept="3Tm1VV" id="65vkPOiJGGT" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiJGGU" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiJTyb" role="3cqZAp">
          <node concept="37vLTw" id="65vkPOiJTyH" role="3cqZAk">
            <ref role="3cqZAo" node="65vkPOiJlSl" resolve="myReusedDepLink" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiHN$u" role="jymVt">
      <property role="TrG5h" value="reusedFrom" />
      <node concept="_YKpA" id="65vkPOiHOGD" role="3clF45">
        <node concept="3uibUv" id="65vkPOiHPMz" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="65vkPOiHN$x" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiHN$y" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiHZMG" role="3cqZAp">
          <node concept="37vLTw" id="65vkPOiI0Ux" role="3cqZAk">
            <ref role="3cqZAo" node="65vkPOiHTPN" resolve="myReferences" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4Hi6aYlbZtD" role="jymVt">
      <property role="TrG5h" value="isDependencyRole" />
      <node concept="3clFbS" id="4Hi6aYlbZtG" role="3clF47">
        <node concept="3cpWs6" id="4Hi6aYlc3CD" role="3cqZAp">
          <node concept="2OqwBi" id="4Hi6aYlc9xR" role="3cqZAk">
            <node concept="37vLTw" id="4Hi6aYlc76i" role="2Oq$k0">
              <ref role="3cqZAo" node="65vkPOiCZ8k" resolve="role" />
            </node>
            <node concept="liA8E" id="4Hi6aYlcbcD" role="2OqNvi">
              <ref role="37wK5l" node="3jefwWMZ5VM" resolve="isDependency" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Hi6aYlbXCR" role="1B3o_S" />
      <node concept="10P_77" id="4Hi6aYlc2JU" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4Hi6aYlcbGN" role="jymVt">
      <property role="TrG5h" value="isUsedLanguageRole" />
      <node concept="3clFbS" id="4Hi6aYlcbGO" role="3clF47">
        <node concept="3cpWs6" id="4Hi6aYlcbGP" role="3cqZAp">
          <node concept="2OqwBi" id="4Hi6aYlcbGQ" role="3cqZAk">
            <node concept="37vLTw" id="4Hi6aYlcbGR" role="2Oq$k0">
              <ref role="3cqZAo" node="65vkPOiCZ8k" resolve="role" />
            </node>
            <node concept="liA8E" id="4Hi6aYlcbGS" role="2OqNvi">
              <ref role="37wK5l" node="3jefwWMZ5UI" resolve="isUsedLanguage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Hi6aYlcbGT" role="1B3o_S" />
      <node concept="10P_77" id="4Hi6aYlcbGU" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4Hi6aYlaOA9" role="jymVt" />
    <node concept="3clFb_" id="65vkPOiCZ9i" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="65vkPOiCZ9j" role="1B3o_S" />
      <node concept="10P_77" id="65vkPOiCZ9k" role="3clF45" />
      <node concept="37vLTG" id="65vkPOiCZ9l" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="65vkPOiCZ9m" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="65vkPOiCZ9n" role="3clF47">
        <node concept="3clFbJ" id="65vkPOiCZ9o" role="3cqZAp">
          <node concept="3clFbS" id="65vkPOiCZ9p" role="3clFbx">
            <node concept="3cpWs8" id="65vkPOiCZ9q" role="3cqZAp">
              <node concept="3cpWsn" id="65vkPOiCZ9r" role="3cpWs9">
                <property role="TrG5h" value="link" />
                <node concept="3uibUv" id="65vkPOiCZ9s" role="1tU5fm">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
                <node concept="10QFUN" id="65vkPOiCZ9t" role="33vP2m">
                  <node concept="3uibUv" id="65vkPOiCZ9u" role="10QFUM">
                    <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                  </node>
                  <node concept="37vLTw" id="65vkPOiCZ9v" role="10QFUP">
                    <ref role="3cqZAo" node="65vkPOiCZ9l" resolve="object" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="65vkPOiCZ9w" role="3cqZAp">
              <node concept="1Wc70l" id="65vkPOiCZ9x" role="3cqZAk">
                <node concept="3clFbC" id="65vkPOiCZ9y" role="3uHU7w">
                  <node concept="37vLTw" id="65vkPOiCZ9z" role="3uHU7w">
                    <ref role="3cqZAo" node="65vkPOiCZ8k" resolve="role" />
                  </node>
                  <node concept="2OqwBi" id="65vkPOiCZ9$" role="3uHU7B">
                    <node concept="37vLTw" id="65vkPOiCZ9_" role="2Oq$k0">
                      <ref role="3cqZAo" node="65vkPOiCZ9r" resolve="link" />
                    </node>
                    <node concept="2OwXpG" id="65vkPOiCZ9A" role="2OqNvi">
                      <ref role="2Oxat5" node="65vkPOiCZ8k" resolve="role" />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="65vkPOiCZ9B" role="3uHU7B">
                  <node concept="2OqwBi" id="65vkPOiCZ9C" role="3uHU7B">
                    <node concept="2OqwBi" id="65vkPOiCZ9D" role="2Oq$k0">
                      <node concept="37vLTw" id="65vkPOiCZ9E" role="2Oq$k0">
                        <ref role="3cqZAo" node="65vkPOiCZ9r" resolve="link" />
                      </node>
                      <node concept="2OwXpG" id="65vkPOiCZ9F" role="2OqNvi">
                        <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                      </node>
                    </node>
                    <node concept="liA8E" id="65vkPOiCZ9G" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="37vLTw" id="65vkPOiCZ9H" role="37wK5m">
                        <ref role="3cqZAo" node="65vkPOiCZ8n" resolve="module" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="65vkPOiCZ9I" role="3uHU7w">
                    <node concept="2OqwBi" id="65vkPOiCZ9J" role="3uHU7B">
                      <node concept="37vLTw" id="65vkPOiCZ9K" role="2Oq$k0">
                        <ref role="3cqZAo" node="65vkPOiCZ9r" resolve="link" />
                      </node>
                      <node concept="2OwXpG" id="65vkPOiCZ9L" role="2OqNvi">
                        <ref role="2Oxat5" node="65vkPOiCZ8q" resolve="linktype" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="65vkPOiCZ9M" role="3uHU7w">
                      <ref role="3cqZAo" node="65vkPOiCZ8q" resolve="linktype" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="65vkPOiCZ9N" role="3clFbw">
            <node concept="3uibUv" id="65vkPOiCZ9O" role="2ZW6by">
              <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
            </node>
            <node concept="37vLTw" id="65vkPOiCZ9P" role="2ZW6bz">
              <ref role="3cqZAo" node="65vkPOiCZ9l" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="65vkPOiCZ9Q" role="3cqZAp">
          <node concept="3clFbT" id="65vkPOiCZ9R" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65vkPOiCZ9S" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiL_a0" role="jymVt">
      <property role="TrG5h" value="getRoleModuleKey" />
      <node concept="2pR195" id="65vkPOiLAxQ" role="3clF45">
        <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
      </node>
      <node concept="3Tm1VV" id="65vkPOiL_a3" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiL_a4" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiLGXJ" role="3cqZAp">
          <node concept="2ry78W" id="65vkPOiLHTU" role="3cqZAk">
            <ref role="2ryb1Q" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
            <node concept="2r$n1x" id="65vkPOiLHTQ" role="2r_Bvh">
              <ref role="2r$qp6" node="3pZ6JG2c_9y" resolve="module" />
              <node concept="2OqwBi" id="65vkPOiLPzR" role="2r_lH1">
                <node concept="Xjq3P" id="65vkPOiLOBp" role="2Oq$k0" />
                <node concept="2OwXpG" id="65vkPOiLQXo" role="2OqNvi">
                  <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="65vkPOiLHTS" role="2r_Bvh">
              <ref role="2r$qp6" node="3pZ6JG2c_9v" resolve="role" />
              <node concept="2OqwBi" id="65vkPOiLLgy" role="2r_lH1">
                <node concept="Xjq3P" id="65vkPOiLKkk" role="2Oq$k0" />
                <node concept="2OwXpG" id="65vkPOiLMoW" role="2OqNvi">
                  <ref role="2Oxat5" node="65vkPOiCZ8k" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiCZ9T" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="65vkPOiCZ9U" role="1B3o_S" />
      <node concept="10Oyi0" id="65vkPOiCZ9V" role="3clF45" />
      <node concept="3clFbS" id="65vkPOiCZ9W" role="3clF47">
        <node concept="3clFbF" id="65vkPOiCZ9X" role="3cqZAp">
          <node concept="3cpWs3" id="65vkPOiCZ9Y" role="3clFbG">
            <node concept="2OqwBi" id="65vkPOiCZ9Z" role="3uHU7w">
              <node concept="37vLTw" id="65vkPOiCZa0" role="2Oq$k0">
                <ref role="3cqZAo" node="65vkPOiCZ8q" resolve="linktype" />
              </node>
              <node concept="liA8E" id="65vkPOiCZa1" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Enum.hashCode()" resolve="hashCode" />
              </node>
            </node>
            <node concept="2OqwBi" id="65vkPOiCZa2" role="3uHU7B">
              <node concept="37vLTw" id="65vkPOiCZa3" role="2Oq$k0">
                <ref role="3cqZAo" node="65vkPOiCZ8n" resolve="module" />
              </node>
              <node concept="liA8E" id="65vkPOiCZa4" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65vkPOiCZa5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiQDnP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="65vkPOiQDnQ" role="1B3o_S" />
      <node concept="3uibUv" id="65vkPOiQDnS" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="65vkPOiQDnT" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiQGaA" role="3cqZAp">
          <node concept="2YIFZM" id="65vkPOiQLLM" role="3cqZAk">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="Xl_RD" id="65vkPOiQMVX" role="37wK5m">
              <property role="Xl_RC" value="[%s %s %s]" />
            </node>
            <node concept="37vLTw" id="65vkPOiQWe6" role="37wK5m">
              <ref role="3cqZAo" node="65vkPOiCZ8k" resolve="role" />
            </node>
            <node concept="2OqwBi" id="65vkPOiQYCq" role="37wK5m">
              <node concept="37vLTw" id="65vkPOiQXAX" role="2Oq$k0">
                <ref role="3cqZAo" node="65vkPOiCZ8n" resolve="module" />
              </node>
              <node concept="liA8E" id="65vkPOiR0en" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
            <node concept="37vLTw" id="65vkPOiR2BS" role="37wK5m">
              <ref role="3cqZAo" node="65vkPOiCZ8q" resolve="linktype" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65vkPOiQDnU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3KdzVireOEs" role="jymVt">
      <property role="TrG5h" value="allDependencies" />
      <node concept="3Tm1VV" id="3KdzVireOEt" role="1B3o_S" />
      <node concept="3clFbS" id="3KdzVireOEu" role="3clF47">
        <node concept="3cpWs8" id="3KdzVireOEv" role="3cqZAp">
          <node concept="3cpWsn" id="3KdzVireOEw" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="_YKpA" id="3KdzVireOEx" role="1tU5fm">
              <node concept="3uibUv" id="3KdzVireOEy" role="_ZDj9">
                <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KdzVireOEz" role="33vP2m">
              <node concept="2Jqq0_" id="3KdzVireOE$" role="2ShVmc">
                <node concept="3uibUv" id="3KdzVireOE_" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KdzVireOEA" role="3cqZAp">
          <node concept="3cpWsn" id="3KdzVireOEB" role="3cpWs9">
            <property role="TrG5h" value="q" />
            <node concept="3O6Q9H" id="3KdzVireOEC" role="1tU5fm">
              <node concept="3uibUv" id="3KdzVireOED" role="3O5elw">
                <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KdzVireOEE" role="33vP2m">
              <node concept="2Jqq0_" id="3KdzVireOEF" role="2ShVmc">
                <node concept="3uibUv" id="3KdzVireOEG" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KdzVireOEH" role="3cqZAp">
          <node concept="2OqwBi" id="3KdzVireOEI" role="3clFbG">
            <node concept="37vLTw" id="3KdzVireOEJ" role="2Oq$k0">
              <ref role="3cqZAo" node="3KdzVireOEB" resolve="q" />
            </node>
            <node concept="2Ke9KJ" id="3KdzVireZ2f" role="2OqNvi">
              <node concept="Xjq3P" id="3KdzVireZ2h" role="25WWJ7" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="3KdzVireOEM" role="3cqZAp">
          <node concept="3clFbS" id="3KdzVireOEN" role="2LFqv$">
            <node concept="3cpWs8" id="3KdzVireOEO" role="3cqZAp">
              <node concept="3cpWsn" id="3KdzVireOEP" role="3cpWs9">
                <property role="TrG5h" value="l" />
                <node concept="3uibUv" id="3KdzVireOEQ" role="1tU5fm">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
                <node concept="2OqwBi" id="3KdzVireOER" role="33vP2m">
                  <node concept="37vLTw" id="3KdzVireOES" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KdzVireOEB" resolve="q" />
                  </node>
                  <node concept="2Kt2Hk" id="3KdzVireOET" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KdzVireOEU" role="3cqZAp">
              <node concept="2OqwBi" id="3KdzVireOEV" role="3clFbG">
                <node concept="37vLTw" id="3KdzVireOEW" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KdzVireOEB" resolve="q" />
                </node>
                <node concept="X8dFx" id="3KdzVireOEX" role="2OqNvi">
                  <node concept="2OqwBi" id="3KdzVireOEY" role="25WWJ7">
                    <node concept="37vLTw" id="3KdzVireOEZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KdzVireOEP" resolve="l" />
                    </node>
                    <node concept="liA8E" id="3KdzVireOF0" role="2OqNvi">
                      <ref role="37wK5l" node="65vkPOiCZ95" resolve="children" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KdzVireOF1" role="3cqZAp">
              <node concept="2OqwBi" id="3KdzVireOF2" role="3clFbG">
                <node concept="37vLTw" id="3KdzVireOF3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KdzVireOEw" resolve="rv" />
                </node>
                <node concept="X8dFx" id="3KdzVireOF4" role="2OqNvi">
                  <node concept="2OqwBi" id="3KdzVireOF5" role="25WWJ7">
                    <node concept="37vLTw" id="3KdzVireOF6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KdzVireOEP" resolve="l" />
                    </node>
                    <node concept="liA8E" id="3KdzVireOF7" role="2OqNvi">
                      <ref role="37wK5l" node="65vkPOiCZ95" resolve="children" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3KdzVireOF8" role="2$JKZa">
            <node concept="37vLTw" id="3KdzVireOF9" role="2Oq$k0">
              <ref role="3cqZAo" node="3KdzVireOEB" resolve="q" />
            </node>
            <node concept="3GX2aA" id="3KdzVireOFa" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="3KdzVireOFb" role="3cqZAp">
          <node concept="37vLTw" id="3KdzVireOFc" role="3cqZAk">
            <ref role="3cqZAo" node="3KdzVireOEw" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="3KdzVireOFd" role="3clF45">
        <node concept="3uibUv" id="3KdzVireOFe" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="P$JXv" id="3KdzVireU$B" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBSR" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBSS" role="1PaTwD">
            <property role="3oM_SC" value="Flatten" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBST" role="1PaTwD">
            <property role="3oM_SC" value="list" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSU" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSV" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSW" role="1PaTwD">
            <property role="3oM_SC" value="children," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBSX" role="1PaTwD">
            <property role="3oM_SC" value="recursively" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="65vkPOiLjXE">
    <property role="TrG5h" value="DepPath" />
    <property role="3GE5qa" value="view1" />
    <node concept="312cEg" id="65vkPOiLk7b" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="65vkPOiMVsE" role="1B3o_S" />
      <node concept="_YKpA" id="65vkPOiLk47" role="1tU5fm">
        <node concept="3uibUv" id="65vkPOiLkau" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="65vkPOiLkkd" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySeen" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="65vkPOiMWY6" role="1B3o_S" />
      <node concept="2hMVRd" id="65vkPOiLkh7" role="1tU5fm">
        <node concept="2pR195" id="65vkPOiLkkb" role="2hN53Y">
          <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="65vkPOiOk1l" role="jymVt">
      <node concept="3cqZAl" id="65vkPOiOk1p" role="3clF45" />
      <node concept="3Tm1VV" id="65vkPOiOk1q" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiOk1r" role="3clF47">
        <node concept="3clFbF" id="65vkPOiOlI5" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiOmXV" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiOlI4" role="37vLTJ">
              <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
            </node>
            <node concept="2ShNRf" id="65vkPOiOnhF" role="37vLTx">
              <node concept="Tc6Ow" id="65vkPOiOnhG" role="2ShVmc">
                <node concept="3uibUv" id="65vkPOiOnhH" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiOtqF" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiOu3j" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiOtqE" role="37vLTJ">
              <ref role="3cqZAo" node="65vkPOiLkkd" resolve="mySeen" />
            </node>
            <node concept="2ShNRf" id="65vkPOiMZDv" role="37vLTx">
              <node concept="2i4dXS" id="65vkPOiN1if" role="2ShVmc">
                <node concept="2pR195" id="65vkPOiN4ce" role="HW$YZ">
                  <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="65vkPOiO_fE" role="jymVt">
      <node concept="3cqZAl" id="65vkPOiO_fI" role="3clF45" />
      <node concept="3Tm1VV" id="65vkPOiO_fJ" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiO_fK" role="3clF47">
        <node concept="3clFbF" id="65vkPOiOBPM" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiOCen" role="3clFbG">
            <node concept="2ShNRf" id="65vkPOiOCjF" role="37vLTx">
              <node concept="Tc6Ow" id="65vkPOiODgR" role="2ShVmc">
                <node concept="3uibUv" id="65vkPOiOETS" role="HW$YZ">
                  <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
                </node>
                <node concept="2OqwBi" id="65vkPOiOGgL" role="I$8f6">
                  <node concept="37vLTw" id="65vkPOiOG44" role="2Oq$k0">
                    <ref role="3cqZAo" node="65vkPOiOBLV" resolve="toCopy" />
                  </node>
                  <node concept="2OwXpG" id="65vkPOiOHd8" role="2OqNvi">
                    <ref role="2Oxat5" node="65vkPOiLk7b" resolve="myPath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="65vkPOiOBPL" role="37vLTJ">
              <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiOIlw" role="3cqZAp">
          <node concept="37vLTI" id="65vkPOiOJmc" role="3clFbG">
            <node concept="2ShNRf" id="65vkPOiOJyl" role="37vLTx">
              <node concept="2i4dXS" id="65vkPOiOKsa" role="2ShVmc">
                <node concept="2pR195" id="65vkPOiOLc9" role="HW$YZ">
                  <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
                </node>
                <node concept="2OqwBi" id="65vkPOiOO6R" role="I$8f6">
                  <node concept="37vLTw" id="65vkPOiONWE" role="2Oq$k0">
                    <ref role="3cqZAo" node="65vkPOiOBLV" resolve="toCopy" />
                  </node>
                  <node concept="2OwXpG" id="65vkPOiOQb6" role="2OqNvi">
                    <ref role="2Oxat5" node="65vkPOiLkkd" resolve="mySeen" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="65vkPOiOIlv" role="37vLTJ">
              <ref role="3cqZAo" node="65vkPOiLkkd" resolve="mySeen" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="65vkPOiOBLV" role="3clF46">
        <property role="TrG5h" value="toCopy" />
        <node concept="3uibUv" id="65vkPOiOBLU" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiLknP" role="jymVt">
      <property role="TrG5h" value="push" />
      <node concept="3cqZAl" id="65vkPOiLknR" role="3clF45" />
      <node concept="3Tm1VV" id="65vkPOiLknS" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiLknT" role="3clF47">
        <node concept="3clFbF" id="65vkPOiLqqt" role="3cqZAp">
          <node concept="2OqwBi" id="65vkPOiLrco" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiLqqs" role="2Oq$k0">
              <ref role="3cqZAo" node="65vkPOiLkkd" resolve="mySeen" />
            </node>
            <node concept="TSZUe" id="65vkPOiLtQ6" role="2OqNvi">
              <node concept="2OqwBi" id="65vkPOiLU7b" role="25WWJ7">
                <node concept="37vLTw" id="65vkPOiLTNi" role="2Oq$k0">
                  <ref role="3cqZAo" node="65vkPOiLkri" resolve="depLink" />
                </node>
                <node concept="liA8E" id="65vkPOiLUBd" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiL_a0" resolve="getRoleModuleKey" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiLViF" role="3cqZAp">
          <node concept="2OqwBi" id="65vkPOiLW6Q" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiLViE" role="2Oq$k0">
              <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
            </node>
            <node concept="2Ke9KJ" id="65vkPOiLXW5" role="2OqNvi">
              <node concept="37vLTw" id="65vkPOiLY8k" role="25WWJ7">
                <ref role="3cqZAo" node="65vkPOiLkri" resolve="depLink" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="65vkPOiLkri" role="3clF46">
        <property role="TrG5h" value="depLink" />
        <node concept="3uibUv" id="65vkPOiLkrh" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiLky0" role="jymVt">
      <property role="TrG5h" value="pop" />
      <node concept="3cqZAl" id="65vkPOiLky2" role="3clF45" />
      <node concept="3Tm1VV" id="65vkPOiLky3" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiLky4" role="3clF47">
        <node concept="3cpWs8" id="65vkPOiLYoa" role="3cqZAp">
          <node concept="3cpWsn" id="65vkPOiLYob" role="3cpWs9">
            <property role="TrG5h" value="last" />
            <node concept="3uibUv" id="65vkPOiLYoc" role="1tU5fm">
              <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
            </node>
            <node concept="2OqwBi" id="65vkPOiLZdB" role="33vP2m">
              <node concept="37vLTw" id="65vkPOiLYoZ" role="2Oq$k0">
                <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
              </node>
              <node concept="2Kt5_m" id="65vkPOiM29P" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65vkPOiM2$p" role="3cqZAp">
          <node concept="2OqwBi" id="65vkPOiM34H" role="3clFbG">
            <node concept="37vLTw" id="65vkPOiM2$o" role="2Oq$k0">
              <ref role="3cqZAo" node="65vkPOiLkkd" resolve="mySeen" />
            </node>
            <node concept="3dhRuq" id="65vkPOiM5Iq" role="2OqNvi">
              <node concept="2OqwBi" id="65vkPOiM6_E" role="25WWJ7">
                <node concept="37vLTw" id="65vkPOiM6v5" role="2Oq$k0">
                  <ref role="3cqZAo" node="65vkPOiLYob" resolve="last" />
                </node>
                <node concept="liA8E" id="65vkPOiM7oU" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiL_a0" resolve="getRoleModuleKey" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiMfUL" role="jymVt">
      <property role="TrG5h" value="seen" />
      <node concept="10P_77" id="65vkPOiMhJq" role="3clF45" />
      <node concept="3Tm1VV" id="65vkPOiMfUO" role="1B3o_S" />
      <node concept="3clFbS" id="65vkPOiMfUP" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiMlZ1" role="3cqZAp">
          <node concept="2OqwBi" id="65vkPOiMooi" role="3cqZAk">
            <node concept="37vLTw" id="65vkPOiMmMz" role="2Oq$k0">
              <ref role="3cqZAo" node="65vkPOiLkkd" resolve="mySeen" />
            </node>
            <node concept="3JPx81" id="65vkPOiMs1_" role="2OqNvi">
              <node concept="2OqwBi" id="65vkPOiMuak" role="25WWJ7">
                <node concept="37vLTw" id="65vkPOiMti8" role="2Oq$k0">
                  <ref role="3cqZAo" node="65vkPOiMl8k" resolve="depLink" />
                </node>
                <node concept="liA8E" id="65vkPOiMvKJ" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiL_a0" resolve="getRoleModuleKey" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="65vkPOiMl8k" role="3clF46">
        <property role="TrG5h" value="depLink" />
        <node concept="3uibUv" id="65vkPOiMl8j" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiNhae" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="peek" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="65vkPOiNhah" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiNj5d" role="3cqZAp">
          <node concept="2OqwBi" id="65vkPOiNsKp" role="3cqZAk">
            <node concept="37vLTw" id="65vkPOiNkDa" role="2Oq$k0">
              <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
            </node>
            <node concept="1yVyf7" id="65vkPOiNwIG" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="65vkPOiNfIV" role="1B3o_S" />
      <node concept="3uibUv" id="65vkPOiNh9K" role="3clF45">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
    </node>
    <node concept="3clFb_" id="65vkPOiPKQB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="elements" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="65vkPOiPKQE" role="3clF47">
        <node concept="3cpWs6" id="65vkPOiPNfN" role="3cqZAp">
          <node concept="37vLTw" id="65vkPOiPOYQ" role="3cqZAk">
            <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="65vkPOiPI3E" role="1B3o_S" />
      <node concept="A3Dl8" id="65vkPOiPKKr" role="3clF45">
        <node concept="3uibUv" id="65vkPOiPSag" role="A3Ik2">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KdzVirjojC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3KdzVirjojD" role="1B3o_S" />
      <node concept="3uibUv" id="3KdzVirjojF" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3KdzVirjojG" role="3clF47">
        <node concept="3cpWs6" id="3KdzVirjvPF" role="3cqZAp">
          <node concept="2YIFZM" id="3KdzVirjOIq" role="3cqZAk">
            <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <node concept="37vLTw" id="3KdzVirjRnd" role="37wK5m">
              <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3KdzVirjojH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6IF0JYO1ik7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6IF0JYO1ik8" role="1B3o_S" />
      <node concept="10P_77" id="6IF0JYO1ika" role="3clF45" />
      <node concept="37vLTG" id="6IF0JYO1ikb" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="6IF0JYO1ikc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="6IF0JYO1ikd" role="3clF47">
        <node concept="3clFbJ" id="6IF0JYO2cHW" role="3cqZAp">
          <node concept="3clFbS" id="6IF0JYO2cHX" role="3clFbx">
            <node concept="3cpWs6" id="6IF0JYO2d6P" role="3cqZAp">
              <node concept="3clFbT" id="6IF0JYO2d7l" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6IF0JYO2d05" role="3clFbw">
            <node concept="2ZW3vV" id="6IF0JYO2d07" role="3fr31v">
              <node concept="3uibUv" id="6IF0JYO2d08" role="2ZW6by">
                <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
              </node>
              <node concept="37vLTw" id="6IF0JYO2d09" role="2ZW6bz">
                <ref role="3cqZAo" node="6IF0JYO1ikb" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6IF0JYO2kIC" role="3cqZAp">
          <node concept="3cpWsn" id="6IF0JYO2kID" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="6IF0JYO2kIE" role="1tU5fm">
              <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
            </node>
            <node concept="10QFUN" id="6IF0JYO2oZ7" role="33vP2m">
              <node concept="37vLTw" id="6IF0JYO2oVb" role="10QFUP">
                <ref role="3cqZAo" node="6IF0JYO1ikb" resolve="o" />
              </node>
              <node concept="3uibUv" id="6IF0JYO2oZ8" role="10QFUM">
                <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6IF0JYO3Hfq" role="3cqZAp">
          <node concept="3cpWsn" id="6IF0JYO3Hfr" role="3cpWs9">
            <property role="TrG5h" value="l1" />
            <node concept="3uibUv" id="6IF0JYO3Hfs" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
            </node>
            <node concept="37vLTw" id="6IF0JYO3KO8" role="33vP2m">
              <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6IF0JYO3RV0" role="3cqZAp">
          <node concept="3cpWsn" id="6IF0JYO3RV1" role="3cpWs9">
            <property role="TrG5h" value="l2" />
            <node concept="3uibUv" id="6IF0JYO3RV2" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
            </node>
            <node concept="2OqwBi" id="6IF0JYO3VgK" role="33vP2m">
              <node concept="37vLTw" id="6IF0JYO3VfM" role="2Oq$k0">
                <ref role="3cqZAo" node="6IF0JYO2kID" resolve="p" />
              </node>
              <node concept="2OwXpG" id="6IF0JYO3Vo6" role="2OqNvi">
                <ref role="2Oxat5" node="65vkPOiLk7b" resolve="myPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6IF0JYO3Z2p" role="3cqZAp">
          <node concept="2OqwBi" id="6IF0JYO42RA" role="3cqZAk">
            <node concept="37vLTw" id="6IF0JYO40ZX" role="2Oq$k0">
              <ref role="3cqZAo" node="6IF0JYO3Hfr" resolve="l1" />
            </node>
            <node concept="liA8E" id="6IF0JYO46fI" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="6IF0JYO49Cc" role="37wK5m">
                <ref role="3cqZAo" node="6IF0JYO3RV1" resolve="l2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6IF0JYO1lxb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6IF0JYO1lxf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6IF0JYO1lxg" role="1B3o_S" />
      <node concept="10Oyi0" id="6IF0JYO1lxi" role="3clF45" />
      <node concept="3clFbS" id="6IF0JYO1lxj" role="3clF47">
        <node concept="3cpWs8" id="6IF0JYO5f9W" role="3cqZAp">
          <node concept="3cpWsn" id="6IF0JYO5f9X" role="3cpWs9">
            <property role="TrG5h" value="l" />
            <node concept="3uibUv" id="6IF0JYO5f9Y" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
            </node>
            <node concept="37vLTw" id="6IF0JYO5hWD" role="33vP2m">
              <ref role="3cqZAo" node="65vkPOiLk7b" resolve="myPath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6IF0JYO1tfJ" role="3cqZAp">
          <node concept="2OqwBi" id="6IF0JYO26gK" role="3cqZAk">
            <node concept="37vLTw" id="6IF0JYO5lZJ" role="2Oq$k0">
              <ref role="3cqZAo" node="6IF0JYO5f9X" resolve="l" />
            </node>
            <node concept="liA8E" id="6IF0JYO28V4" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6IF0JYO1lxk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="65vkPOiLjXF" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3KdzVirfuIV">
    <property role="TrG5h" value="CycleBuilder" />
    <property role="3GE5qa" value="view1" />
    <node concept="312cEg" id="3KdzVirfwau" role="jymVt">
      <property role="TrG5h" value="elementMatch" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3KdzVirfwav" role="1B3o_S" />
      <node concept="3uibUv" id="3KdzVirfwax" role="1tU5fm">
        <ref role="3uigEE" to="y49u:~Condition" resolve="Condition" />
        <node concept="3uibUv" id="3KdzVirfway" role="11_B2D">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3KdzVirfCph" role="jymVt">
      <property role="TrG5h" value="myTarget" />
      <node concept="3Tm6S6" id="3KdzVirfCpi" role="1B3o_S" />
      <node concept="3uibUv" id="3KdzVirfD6n" role="1tU5fm">
        <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
      </node>
    </node>
    <node concept="312cEg" id="13IhfvDVD_2" role="jymVt">
      <property role="TrG5h" value="myTargetKey" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="13IhfvDVD_3" role="1B3o_S" />
      <node concept="2pR195" id="13IhfvDVyCs" role="1tU5fm">
        <ref role="3uigEE" node="3pZ6JG2c_9t" resolve="DependencyUtil.Dependency" />
      </node>
    </node>
    <node concept="312cEg" id="3KdzVirfHhE" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myCycles" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3KdzVirfGtq" role="1B3o_S" />
      <node concept="3uibUv" id="4rTwHtpVro4" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="4rTwHtpVsor" role="11_B2D">
          <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
        </node>
      </node>
      <node concept="2ShNRf" id="4rTwHtpVdBQ" role="33vP2m">
        <node concept="1pGfFk" id="4rTwHtpVui2" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="4rTwHtpVvlU" role="1pMfVU">
            <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3KdzVirg10A" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myCurrent" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3KdzVirfZY3" role="1B3o_S" />
      <node concept="3uibUv" id="3KdzVirg0ZW" role="1tU5fm">
        <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
      </node>
    </node>
    <node concept="312cEg" id="4rTwHtpVcVZ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myReusedChecked" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4rTwHtpVblJ" role="1B3o_S" />
      <node concept="3uibUv" id="4rTwHtpVcQJ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4rTwHtpVcVG" role="11_B2D">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="2ShNRf" id="4rTwHtpVe9t" role="33vP2m">
        <node concept="1pGfFk" id="4rTwHtpVpzd" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="4rTwHtpVpOu" role="1pMfVU">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4rTwHtpVCf7" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNestLevelDebug" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4rTwHtpVBPX" role="1B3o_S" />
      <node concept="10Oyi0" id="4rTwHtpVCf5" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4rTwHtpVBs_" role="jymVt" />
    <node concept="3clFbW" id="3KdzVirfw9C" role="jymVt">
      <node concept="37vLTG" id="3KdzVirfw9W" role="3clF46">
        <property role="TrG5h" value="elementMatch" />
        <node concept="3uibUv" id="3KdzVirfw9X" role="1tU5fm">
          <ref role="3uigEE" to="y49u:~Condition" resolve="Condition" />
          <node concept="3uibUv" id="3KdzVirfw9Y" role="11_B2D">
            <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3KdzVirfw9E" role="3clF45" />
      <node concept="3clFbS" id="3KdzVirfw9F" role="3clF47">
        <node concept="3clFbF" id="3KdzVirfwaz" role="3cqZAp">
          <node concept="37vLTI" id="3KdzVirfwa_" role="3clFbG">
            <node concept="2OqwBi" id="3KdzVirfwaD" role="37vLTJ">
              <node concept="Xjq3P" id="3KdzVirfwaG" role="2Oq$k0" />
              <node concept="2OwXpG" id="3KdzVirfwaC" role="2OqNvi">
                <ref role="2Oxat5" node="3KdzVirfwau" resolve="elementMatch" />
              </node>
            </node>
            <node concept="37vLTw" id="3KdzVirfwaH" role="37vLTx">
              <ref role="3cqZAo" node="3KdzVirfw9W" resolve="elementMatch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rTwHtpVANN" role="jymVt" />
    <node concept="3clFb_" id="3KdzVirfAma" role="jymVt">
      <property role="TrG5h" value="cyclePaths" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3KdzVirf_ku" role="3clF47">
        <node concept="RRSsy" id="3jYQuSB35qR" role="3cqZAp">
          <node concept="2YIFZM" id="4rTwHtpVIrZ" role="RRSoy">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="Xl_RD" id="4rTwHtpVIBl" role="37wK5m">
              <property role="Xl_RC" value="\nStart path cycle calculation from %s" />
            </node>
            <node concept="37vLTw" id="4rTwHtpVIWs" role="37wK5m">
              <ref role="3cqZAo" node="3KdzVirf_l2" resolve="depLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KdzVirfDM3" role="3cqZAp">
          <node concept="37vLTI" id="3KdzVirfERN" role="3clFbG">
            <node concept="37vLTw" id="3KdzVirfF2b" role="37vLTx">
              <ref role="3cqZAo" node="3KdzVirf_l2" resolve="depLink" />
            </node>
            <node concept="37vLTw" id="3KdzVirfDM2" role="37vLTJ">
              <ref role="3cqZAo" node="3KdzVirfCph" resolve="myTarget" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="13IhfvDV$4w" role="3cqZAp">
          <node concept="37vLTI" id="13IhfvDV$4y" role="3clFbG">
            <node concept="2OqwBi" id="13IhfvDVyCw" role="37vLTx">
              <node concept="37vLTw" id="13IhfvDVyCx" role="2Oq$k0">
                <ref role="3cqZAo" node="3KdzVirfCph" resolve="myTarget" />
              </node>
              <node concept="liA8E" id="13IhfvDVyCy" role="2OqNvi">
                <ref role="37wK5l" node="65vkPOiL_a0" resolve="getRoleModuleKey" />
              </node>
            </node>
            <node concept="37vLTw" id="13IhfvDVFrV" role="37vLTJ">
              <ref role="3cqZAo" node="13IhfvDVD_2" resolve="myTargetKey" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KdzVirfIDu" role="3cqZAp">
          <node concept="2OqwBi" id="4rTwHtpVq8b" role="3clFbG">
            <node concept="37vLTw" id="3KdzVirfIDt" role="2Oq$k0">
              <ref role="3cqZAo" node="3KdzVirfHhE" resolve="myCycles" />
            </node>
            <node concept="liA8E" id="4rTwHtpVw3R" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rTwHtpVwjC" role="3cqZAp">
          <node concept="2OqwBi" id="4rTwHtpVwKi" role="3clFbG">
            <node concept="37vLTw" id="4rTwHtpVwjA" role="2Oq$k0">
              <ref role="3cqZAo" node="4rTwHtpVcVZ" resolve="myReusedChecked" />
            </node>
            <node concept="liA8E" id="4rTwHtpVx3o" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.clear()" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KdzVirg23q" role="3cqZAp">
          <node concept="37vLTI" id="3KdzVirg2U7" role="3clFbG">
            <node concept="2ShNRf" id="3KdzVirg36n" role="37vLTx">
              <node concept="1pGfFk" id="3KdzVirg3Oc" role="2ShVmc">
                <ref role="37wK5l" node="65vkPOiOk1l" resolve="DepPath" />
              </node>
            </node>
            <node concept="37vLTw" id="3KdzVirg23p" role="37vLTJ">
              <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KdzVirg5RC" role="3cqZAp">
          <node concept="2OqwBi" id="3KdzVirg6BN" role="3clFbG">
            <node concept="37vLTw" id="3KdzVirg5RB" role="2Oq$k0">
              <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
            </node>
            <node concept="liA8E" id="3KdzVirg6M$" role="2OqNvi">
              <ref role="37wK5l" node="65vkPOiLknP" resolve="push" />
              <node concept="37vLTw" id="3KdzVirg72O" role="37wK5m">
                <ref role="3cqZAo" node="3KdzVirf_l2" resolve="depLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rTwHtpVD2o" role="3cqZAp">
          <node concept="37vLTI" id="4rTwHtpVDYg" role="3clFbG">
            <node concept="3cmrfG" id="4rTwHtpVEah" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="4rTwHtpVD2m" role="37vLTJ">
              <ref role="3cqZAo" node="4rTwHtpVCf7" resolve="myNestLevelDebug" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KdzVirf_kR" role="3cqZAp">
          <node concept="1rXfSq" id="3KdzVirf_kS" role="3clFbG">
            <ref role="37wK5l" node="3KdzVirgbZ$" resolve="nextPathLevel" />
            <node concept="37vLTw" id="55JMmLQNqm3" role="37wK5m">
              <ref role="3cqZAo" node="3KdzVirf_l2" resolve="depLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rTwHtpVx_5" role="3cqZAp">
          <node concept="37vLTI" id="4rTwHtpVxQF" role="3clFbG">
            <node concept="10Nm6u" id="4rTwHtpVy1L" role="37vLTx" />
            <node concept="37vLTw" id="4rTwHtpVx_3" role="37vLTJ">
              <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rTwHtpVyyT" role="3cqZAp">
          <node concept="37vLTI" id="4rTwHtpVz7X" role="3clFbG">
            <node concept="10Nm6u" id="4rTwHtpVzj5" role="37vLTx" />
            <node concept="37vLTw" id="4rTwHtpVyyR" role="37vLTJ">
              <ref role="3cqZAo" node="3KdzVirfCph" resolve="myTarget" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3KdzVirf_kX" role="3cqZAp">
          <node concept="37vLTw" id="3KdzVirgb18" role="3cqZAk">
            <ref role="3cqZAo" node="3KdzVirfHhE" resolve="myCycles" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KdzVirf_l2" role="3clF46">
        <property role="TrG5h" value="depLink" />
        <node concept="3uibUv" id="3KdzVirf_l3" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="_YKpA" id="3KdzVirf_l0" role="3clF45">
        <node concept="3uibUv" id="3KdzVirf_l1" role="_ZDj9">
          <ref role="3uigEE" node="65vkPOiLjXE" resolve="DepPath" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3KdzVirf_kZ" role="1B3o_S" />
      <node concept="P$JXv" id="3KdzVirjblo" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBSY" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBSZ" role="1PaTwD">
            <property role="3oM_SC" value="Each" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT0" role="1PaTwD">
            <property role="3oM_SC" value="cycle" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT1" role="1PaTwD">
            <property role="3oM_SC" value="found" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT2" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT3" role="1PaTwD">
            <property role="3oM_SC" value="traversing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT4" role="1PaTwD">
            <property role="3oM_SC" value="supplied" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT5" role="1PaTwD">
            <property role="3oM_SC" value="depLink." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBT6" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBT7" role="1PaTwD">
            <property role="3oM_SC" value="Cycle" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT8" role="1PaTwD">
            <property role="3oM_SC" value="starts" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT9" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTa" role="1PaTwD">
            <property role="3oM_SC" value="ends" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTb" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTc" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTd" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTe" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTf" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTg" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTh" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTi" role="1PaTwD">
            <property role="3oM_SC" value="role," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTj" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTk" role="1PaTwD">
            <property role="3oM_SC" value="these" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTl" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTm" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTn" role="1PaTwD">
            <property role="3oM_SC" value="supplied" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTo" role="1PaTwD">
            <property role="3oM_SC" value="depLink" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBTp" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBTq" role="1PaTwD">
            <property role="3oM_SC" value="elementMatch" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTr" role="1PaTwD">
            <property role="3oM_SC" value="condition" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTs" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTt" role="1PaTwD">
            <property role="3oM_SC" value="met" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTu" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTv" role="1PaTwD">
            <property role="3oM_SC" value="each" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTw" role="1PaTwD">
            <property role="3oM_SC" value="element" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTx" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTy" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTz" role="1PaTwD">
            <property role="3oM_SC" value="path" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT$" role="1PaTwD">
            <property role="3oM_SC" value="(including" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBT_" role="1PaTwD">
            <property role="3oM_SC" value="first" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTA" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTB" role="1PaTwD">
            <property role="3oM_SC" value="last)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KdzVirgbZ$" role="jymVt">
      <property role="TrG5h" value="nextPathLevel" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="3KdzVirf_mK" role="3clF45" />
      <node concept="3clFbS" id="3KdzVirf_l8" role="3clF47">
        <node concept="3clFbJ" id="3KdzVirf_lf" role="3cqZAp">
          <node concept="3clFbS" id="3KdzVirf_lg" role="3clFbx">
            <node concept="3clFbJ" id="4rTwHtpV_sS" role="3cqZAp">
              <node concept="3clFbS" id="4rTwHtpV_sU" role="3clFbx">
                <node concept="3clFbF" id="4rTwHtpW4nH" role="3cqZAp">
                  <node concept="1rXfSq" id="4rTwHtpW4nF" role="3clFbG">
                    <ref role="37wK5l" node="4rTwHtpVWBM" resolve="debug" />
                    <node concept="37vLTw" id="4rTwHtpW4wj" role="37wK5m">
                      <ref role="3cqZAo" node="55JMmLQNnyJ" resolve="l" />
                    </node>
                    <node concept="Xl_RD" id="4rTwHtpW4B2" role="37wK5m">
                      <property role="Xl_RC" value="(reused)" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3KdzVirf_lh" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXorZp" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXorZq" role="1PaTwD">
                      <property role="3oM_SC" value="reused" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZr" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZs" role="1PaTwD">
                      <property role="3oM_SC" value="identical" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZt" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZu" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZv" role="1PaTwD">
                      <property role="3oM_SC" value="referencing" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZw" role="1PaTwD">
                      <property role="3oM_SC" value="node," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZx" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZy" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZz" role="1PaTwD">
                      <property role="3oM_SC" value="key" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ$" role="1PaTwD">
                      <property role="3oM_SC" value="equality" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZ_" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZA" role="1PaTwD">
                      <property role="3oM_SC" value="avoid" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZB" role="1PaTwD">
                      <property role="3oM_SC" value="false" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorZC" role="1PaTwD">
                      <property role="3oM_SC" value="cycles" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3KdzVirggQk" role="3cqZAp">
                  <node concept="1rXfSq" id="3KdzVirggQj" role="3clFbG">
                    <ref role="37wK5l" node="3KdzVirgbZ$" resolve="nextPathLevel" />
                    <node concept="2OqwBi" id="55JMmLQNoTT" role="37wK5m">
                      <node concept="37vLTw" id="55JMmLQNorM" role="2Oq$k0">
                        <ref role="3cqZAo" node="55JMmLQNnyJ" resolve="l" />
                      </node>
                      <node concept="liA8E" id="55JMmLQNp1t" role="2OqNvi">
                        <ref role="37wK5l" node="65vkPOiJGGQ" resolve="getReused" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4rTwHtpV_SC" role="3clFbw">
                <node concept="37vLTw" id="4rTwHtpV_D7" role="2Oq$k0">
                  <ref role="3cqZAo" node="4rTwHtpVcVZ" resolve="myReusedChecked" />
                </node>
                <node concept="liA8E" id="4rTwHtpVAn7" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="4rTwHtpVAxM" role="37wK5m">
                    <node concept="37vLTw" id="4rTwHtpVAvo" role="2Oq$k0">
                      <ref role="3cqZAo" node="55JMmLQNnyJ" resolve="l" />
                    </node>
                    <node concept="liA8E" id="4rTwHtpVAAF" role="2OqNvi">
                      <ref role="37wK5l" node="65vkPOiJGGQ" resolve="getReused" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="4rTwHtpVAIS" role="9aQIa">
                <node concept="3clFbS" id="4rTwHtpVAIT" role="9aQI4">
                  <node concept="3clFbF" id="4rTwHtpW13p" role="3cqZAp">
                    <node concept="1rXfSq" id="4rTwHtpW13n" role="3clFbG">
                      <ref role="37wK5l" node="4rTwHtpVWBM" resolve="debug" />
                      <node concept="37vLTw" id="4rTwHtpW3VM" role="37wK5m">
                        <ref role="3cqZAo" node="55JMmLQNnyJ" resolve="l" />
                      </node>
                      <node concept="Xl_RD" id="4rTwHtpW3Hc" role="37wK5m">
                        <property role="Xl_RC" value="(reused, already checked, ignored)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3KdzVirf_l$" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="3KdzVirf_l_" role="3clFbw">
            <node concept="2OqwBi" id="3KdzVirf_lA" role="3uHU7B">
              <node concept="2OqwBi" id="3KdzVirf_lB" role="2Oq$k0">
                <node concept="37vLTw" id="3KdzVirf_lC" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JMmLQNnyJ" resolve="l" />
                </node>
                <node concept="liA8E" id="3KdzVirf_lD" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiCZ95" resolve="children" />
                </node>
              </node>
              <node concept="1v1jN8" id="3KdzVirf_lE" role="2OqNvi" />
            </node>
            <node concept="3y3z36" id="3KdzVirf_lF" role="3uHU7w">
              <node concept="10Nm6u" id="3KdzVirf_lG" role="3uHU7w" />
              <node concept="2OqwBi" id="3KdzVirf_lH" role="3uHU7B">
                <node concept="37vLTw" id="3KdzVirf_lI" role="2Oq$k0">
                  <ref role="3cqZAo" node="55JMmLQNnyJ" resolve="l" />
                </node>
                <node concept="liA8E" id="3KdzVirf_lJ" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiJGGQ" resolve="getReused" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rTwHtpVZJa" role="3cqZAp">
          <node concept="1rXfSq" id="4rTwHtpVZJ8" role="3clFbG">
            <ref role="37wK5l" node="4rTwHtpVWBM" resolve="debug" />
            <node concept="37vLTw" id="4rTwHtpW0iE" role="37wK5m">
              <ref role="3cqZAo" node="55JMmLQNnyJ" resolve="l" />
            </node>
            <node concept="Xl_RD" id="4rTwHtpW3AU" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rTwHtpVENB" role="3cqZAp">
          <node concept="3uNrnE" id="4rTwHtpVFiW" role="3clFbG">
            <node concept="37vLTw" id="4rTwHtpVFiY" role="2$L3a6">
              <ref role="3cqZAo" node="4rTwHtpVCf7" resolve="myNestLevelDebug" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3KdzVirf_lK" role="3cqZAp">
          <node concept="2GrKxI" id="3KdzVirf_lL" role="2Gsz3X">
            <property role="TrG5h" value="ch" />
          </node>
          <node concept="2OqwBi" id="3KdzVirgits" role="2GsD0m">
            <node concept="2OqwBi" id="3KdzVirf_lM" role="2Oq$k0">
              <node concept="37vLTw" id="3KdzVirf_lN" role="2Oq$k0">
                <ref role="3cqZAo" node="55JMmLQNnyJ" resolve="l" />
              </node>
              <node concept="liA8E" id="3KdzVirf_lO" role="2OqNvi">
                <ref role="37wK5l" node="65vkPOiCZ95" resolve="children" />
              </node>
            </node>
            <node concept="3zZkjj" id="3KdzVirgxgd" role="2OqNvi">
              <node concept="1bVj0M" id="3KdzVirgxgf" role="23t8la">
                <node concept="3clFbS" id="3KdzVirgxgg" role="1bW5cS">
                  <node concept="3clFbF" id="3KdzVirgxgh" role="3cqZAp">
                    <node concept="2OqwBi" id="3KdzVirgxgi" role="3clFbG">
                      <node concept="37vLTw" id="3KdzVirgxgj" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KdzVirfwau" resolve="elementMatch" />
                      </node>
                      <node concept="liA8E" id="3KdzVirgxgk" role="2OqNvi">
                        <ref role="37wK5l" to="y49u:~Condition.met(java.lang.Object)" resolve="met" />
                        <node concept="37vLTw" id="3KdzVirgxgl" role="37wK5m">
                          <ref role="3cqZAo" node="5W7E4fV0Xmg" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Xmg" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0Xmh" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3KdzVirf_lP" role="2LFqv$">
            <node concept="3clFbJ" id="3KdzVirf_lQ" role="3cqZAp">
              <node concept="3clFbS" id="3KdzVirf_lR" role="3clFbx">
                <node concept="3clFbJ" id="3KdzVirf_lS" role="3cqZAp">
                  <node concept="3clFbS" id="3KdzVirf_lT" role="3clFbx">
                    <node concept="3SKdUt" id="3KdzVirf_lU" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXorZD" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXorZE" role="1PaTwD">
                          <property role="3oM_SC" value="cycle" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXorZF" role="1PaTwD">
                          <property role="3oM_SC" value="found" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3KdzVirf_lW" role="3cqZAp">
                      <node concept="2OqwBi" id="3KdzVirf_lX" role="3clFbG">
                        <node concept="37vLTw" id="3KdzVirghj4" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
                        </node>
                        <node concept="liA8E" id="3KdzVirf_lZ" role="2OqNvi">
                          <ref role="37wK5l" node="65vkPOiLknP" resolve="push" />
                          <node concept="2GrUjf" id="3KdzVirf_m0" role="37wK5m">
                            <ref role="2Gs0qQ" node="3KdzVirf_lL" resolve="ch" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3KdzVirf_m1" role="3cqZAp">
                      <node concept="2OqwBi" id="4rTwHtpVzCF" role="3clFbG">
                        <node concept="37vLTw" id="3KdzVirghBf" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KdzVirfHhE" resolve="myCycles" />
                        </node>
                        <node concept="liA8E" id="4rTwHtpV$d6" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="2ShNRf" id="3KdzVirf_m5" role="37wK5m">
                            <node concept="1pGfFk" id="3KdzVirf_m6" role="2ShVmc">
                              <ref role="37wK5l" node="65vkPOiO_fE" resolve="DepPath" />
                              <node concept="37vLTw" id="3KdzVirghyg" role="37wK5m">
                                <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3KdzVirf_m8" role="3cqZAp">
                      <node concept="2OqwBi" id="3KdzVirf_m9" role="3clFbG">
                        <node concept="37vLTw" id="3KdzVirgh_P" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
                        </node>
                        <node concept="liA8E" id="3KdzVirf_mb" role="2OqNvi">
                          <ref role="37wK5l" node="65vkPOiLky0" resolve="pop" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="3KdzVirf_mc" role="3clFbw">
                    <node concept="37vLTw" id="4gccZmaJSD_" role="3uHU7w">
                      <ref role="3cqZAo" node="13IhfvDVD_2" resolve="myTargetKey" />
                    </node>
                    <node concept="2OqwBi" id="3KdzVirf_mg" role="3uHU7B">
                      <node concept="2GrUjf" id="3KdzVirf_mh" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3KdzVirf_lL" resolve="ch" />
                      </node>
                      <node concept="liA8E" id="3KdzVirf_mi" role="2OqNvi">
                        <ref role="37wK5l" node="65vkPOiL_a0" resolve="getRoleModuleKey" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="3KdzVirf_mj" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="3KdzVirf_mk" role="3clFbw">
                <node concept="37vLTw" id="3KdzVirgh66" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
                </node>
                <node concept="liA8E" id="3KdzVirf_mm" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiMfUL" resolve="seen" />
                  <node concept="2GrUjf" id="3KdzVirf_mn" role="37wK5m">
                    <ref role="2Gs0qQ" node="3KdzVirf_lL" resolve="ch" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KdzVirf_mo" role="3cqZAp">
              <node concept="2OqwBi" id="3KdzVirf_mp" role="3clFbG">
                <node concept="37vLTw" id="3KdzVirghO0" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
                </node>
                <node concept="liA8E" id="3KdzVirf_mr" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiLknP" resolve="push" />
                  <node concept="2GrUjf" id="3KdzVirf_ms" role="37wK5m">
                    <ref role="2Gs0qQ" node="3KdzVirf_lL" resolve="ch" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KdzVirf_mt" role="3cqZAp">
              <node concept="1rXfSq" id="3KdzVirgieo" role="3clFbG">
                <ref role="37wK5l" node="3KdzVirgbZ$" resolve="nextPathLevel" />
                <node concept="2GrUjf" id="55JMmLQNpcr" role="37wK5m">
                  <ref role="2Gs0qQ" node="3KdzVirf_lL" resolve="ch" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KdzVirf_my" role="3cqZAp">
              <node concept="2OqwBi" id="3KdzVirf_mz" role="3clFbG">
                <node concept="37vLTw" id="3KdzVirgicz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KdzVirg10A" resolve="myCurrent" />
                </node>
                <node concept="liA8E" id="3KdzVirf_m_" role="2OqNvi">
                  <ref role="37wK5l" node="65vkPOiLky0" resolve="pop" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rTwHtpVGaw" role="3cqZAp">
          <node concept="3uO5VW" id="4rTwHtpVGSq" role="3clFbG">
            <node concept="37vLTw" id="4rTwHtpVGSs" role="2$L3a6">
              <ref role="3cqZAo" node="4rTwHtpVCf7" resolve="myNestLevelDebug" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3KdzVirf_mL" role="1B3o_S" />
      <node concept="37vLTG" id="55JMmLQNnyJ" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="55JMmLQNnyI" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rTwHtpVIYD" role="jymVt" />
    <node concept="3clFb_" id="4rTwHtpVWBM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="debug" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4rTwHtpVWBP" role="3clF47">
        <node concept="RRSsy" id="3jYQuSB35r1" role="3cqZAp">
          <node concept="2YIFZM" id="4rTwHtpVYaI" role="RRSoy">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="Xl_RD" id="4rTwHtpVYaJ" role="37wK5m">
              <property role="Xl_RC" value="%s%s %s %s %s" />
            </node>
            <node concept="1rXfSq" id="4rTwHtpVYaK" role="37wK5m">
              <ref role="37wK5l" node="4rTwHtpVKfr" resolve="debugIndent" />
            </node>
            <node concept="2OqwBi" id="4rTwHtpVYaL" role="37wK5m">
              <node concept="37vLTw" id="4rTwHtpVYaM" role="2Oq$k0">
                <ref role="3cqZAo" node="4rTwHtpVXGh" resolve="l" />
              </node>
              <node concept="2OwXpG" id="4rTwHtpVYaN" role="2OqNvi">
                <ref role="2Oxat5" node="65vkPOiCZ8q" resolve="linktype" />
              </node>
            </node>
            <node concept="2OqwBi" id="4rTwHtpVYaO" role="37wK5m">
              <node concept="2OqwBi" id="4rTwHtpVYaP" role="2Oq$k0">
                <node concept="37vLTw" id="4rTwHtpVYaQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4rTwHtpVXGh" resolve="l" />
                </node>
                <node concept="2OwXpG" id="4rTwHtpVYaR" role="2OqNvi">
                  <ref role="2Oxat5" node="65vkPOiCZ8n" resolve="module" />
                </node>
              </node>
              <node concept="liA8E" id="4rTwHtpVYaS" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
            <node concept="2OqwBi" id="4rTwHtpVYaT" role="37wK5m">
              <node concept="37vLTw" id="4rTwHtpVYaU" role="2Oq$k0">
                <ref role="3cqZAo" node="4rTwHtpVXGh" resolve="l" />
              </node>
              <node concept="2OwXpG" id="4rTwHtpVYaV" role="2OqNvi">
                <ref role="2Oxat5" node="65vkPOiCZ8k" resolve="role" />
              </node>
            </node>
            <node concept="37vLTw" id="4rTwHtpVYKI" role="37wK5m">
              <ref role="3cqZAo" node="4rTwHtpVXfy" resolve="extra" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4rTwHtpVW2p" role="1B3o_S" />
      <node concept="3cqZAl" id="4rTwHtpVWBK" role="3clF45" />
      <node concept="37vLTG" id="4rTwHtpVXGh" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="4rTwHtpVYai" role="1tU5fm">
          <ref role="3uigEE" node="65vkPOiCZ8i" resolve="DepLink" />
        </node>
      </node>
      <node concept="37vLTG" id="4rTwHtpVXfy" role="3clF46">
        <property role="TrG5h" value="extra" />
        <node concept="17QB3L" id="4rTwHtpVXfx" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4rTwHtpVUS8" role="jymVt" />
    <node concept="3clFb_" id="4rTwHtpVKfr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="debugIndent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4rTwHtpVKfu" role="3clF47">
        <node concept="3cpWs8" id="4rTwHtpVKUu" role="3cqZAp">
          <node concept="3cpWsn" id="4rTwHtpVKUx" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="10Q1$e" id="4rTwHtpVKZu" role="1tU5fm">
              <node concept="10Pfzv" id="4rTwHtpVKUt" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="4rTwHtpVL60" role="33vP2m">
              <node concept="3$_iS1" id="4rTwHtpVLW9" role="2ShVmc">
                <node concept="3$GHV9" id="4rTwHtpVLWa" role="3$GQph">
                  <node concept="37vLTw" id="4rTwHtpVM8a" role="3$I4v7">
                    <ref role="3cqZAo" node="4rTwHtpVCf7" resolve="myNestLevelDebug" />
                  </node>
                </node>
                <node concept="10Pfzv" id="4rTwHtpVLVV" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rTwHtpVMnA" role="3cqZAp">
          <node concept="2YIFZM" id="4rTwHtpVQVm" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.fill(char[],int,int,char)" resolve="fill" />
            <node concept="37vLTw" id="4rTwHtpVQVn" role="37wK5m">
              <ref role="3cqZAo" node="4rTwHtpVKUx" resolve="rv" />
            </node>
            <node concept="3cmrfG" id="4rTwHtpVQVp" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="4rTwHtpVQVq" role="37wK5m">
              <ref role="3cqZAo" node="4rTwHtpVCf7" resolve="myNestLevelDebug" />
            </node>
            <node concept="1Xhbcc" id="4rTwHtpVRfM" role="37wK5m">
              <property role="1XhdNS" value=" " />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4rTwHtpVMVL" role="3cqZAp">
          <node concept="2ShNRf" id="4rTwHtpVN3I" role="3cqZAk">
            <node concept="1pGfFk" id="4rTwHtpVOdF" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(char[])" resolve="String" />
              <node concept="37vLTw" id="4rTwHtpVOHZ" role="37wK5m">
                <ref role="3cqZAo" node="4rTwHtpVKUx" resolve="rv" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4rTwHtpVJz5" role="1B3o_S" />
      <node concept="3uibUv" id="4rTwHtpVKf5" role="3clF45">
        <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ctIhG_bUoJ">
    <property role="TrG5h" value="DependenciesPanel" />
    <property role="3GE5qa" value="view2" />
    <node concept="3Tm1VV" id="7ctIhG_bUtL" role="1B3o_S" />
    <node concept="3uibUv" id="5kcYZ6_v5PL" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="312cEg" id="7ctIhG_bUtk" role="jymVt">
      <property role="TrG5h" value="myInitTree" />
      <node concept="3Tm6S6" id="7ctIhG_bUtl" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bUtm" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUtX" resolve="DependencyTree2" />
      </node>
    </node>
    <node concept="312cEg" id="7ctIhG_bUtn" role="jymVt">
      <property role="TrG5h" value="myTargetsView" />
      <node concept="3Tm6S6" id="7ctIhG_bUto" role="1B3o_S" />
      <node concept="3uibUv" id="1yGodf3w1O$" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bULz" resolve="TargetsView" />
      </node>
    </node>
    <node concept="312cEg" id="7ctIhG_bUtq" role="jymVt">
      <property role="TrG5h" value="myReferencesView" />
      <node concept="3Tm6S6" id="7ctIhG_bUtr" role="1B3o_S" />
      <node concept="3uibUv" id="1yGodf3w1O_" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUCU" resolve="ReferencesView" />
      </node>
    </node>
    <node concept="312cEg" id="7ctIhG_bUtt" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ctIhG_bUtu" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bUtv" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="y5fyHoEGTr" role="jymVt">
      <property role="TrG5h" value="myMPSProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="y5fyHoEGTs" role="1B3o_S" />
      <node concept="3uibUv" id="1O8DjCqxr6i" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="7ctIhG_bUtw" role="jymVt">
      <property role="TrG5h" value="myActiveScope" />
      <node concept="3Tm6S6" id="7ctIhG_bUtx" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bUty" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
    </node>
    <node concept="312cEg" id="y5fyHoEGTc" role="jymVt">
      <property role="TrG5h" value="myInitialScope" />
      <node concept="3Tm6S6" id="y5fyHoEGTd" role="1B3o_S" />
      <node concept="3uibUv" id="y5fyHoEGTe" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
    </node>
    <node concept="312cEg" id="7ctIhG_bUtE" role="jymVt">
      <property role="TrG5h" value="myTool" />
      <node concept="3uibUv" id="3P7s6VtYjGH" role="1tU5fm">
        <ref role="3uigEE" to="71xd:~BaseTool" resolve="BaseTool" />
      </node>
      <node concept="3Tm6S6" id="7ctIhG_bUtF" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7ctIhG_bUtH" role="jymVt">
      <property role="TrG5h" value="myReferencesFinder" />
      <node concept="3Tm6S6" id="7ctIhG_bUtI" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bUtJ" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUyf" resolve="ReferencesFinder" />
      </node>
      <node concept="10Nm6u" id="7ctIhG_bUtK" role="33vP2m" />
    </node>
    <node concept="312cEg" id="1byBclm9vEE" role="jymVt">
      <property role="TrG5h" value="myIsMeta" />
      <node concept="3Tm6S6" id="1byBclm9vEF" role="1B3o_S" />
      <node concept="10P_77" id="1byBclm9vEL" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="7ctIhG_bUtM" role="jymVt">
      <node concept="3cqZAl" id="7ctIhG_bUtN" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUtO" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUtP" role="3clF47">
        <node concept="XkiVB" id="5kAe3HWRZtD" role="3cqZAp">
          <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="5kAe3HWRZtE" role="37wK5m">
            <node concept="1pGfFk" id="5kAe3HWRZtG" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUtQ" role="3cqZAp">
          <node concept="37vLTI" id="7ctIhG_bUtR" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmb_c" role="37vLTx">
              <ref role="3cqZAo" node="7ctIhG_bUtU" resolve="tool" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuT$T" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtE" resolve="myTool" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1byBclm9vT9" role="3cqZAp">
          <node concept="37vLTI" id="1byBclm9vTx" role="3clFbG">
            <node concept="37vLTw" id="1byBclm9vTa" role="37vLTJ">
              <ref role="3cqZAo" node="1byBclm9vEE" resolve="myIsMeta" />
            </node>
            <node concept="3clFbT" id="1byBclm9vTL" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2vCf6P40eic" role="3cqZAp">
          <node concept="37vLTI" id="2vCf6P40eie" role="3clFbG">
            <node concept="2OqwBi" id="1zF9zjMpAhM" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxgll45" role="2Oq$k0">
                <ref role="3cqZAo" node="2vCf6P40bEY" resolve="project" />
              </node>
              <node concept="liA8E" id="1zF9zjMpBf3" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuMD2" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtt" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zF9zjMpDaf" role="3cqZAp">
          <node concept="37vLTI" id="1zF9zjMpEmS" role="3clFbG">
            <node concept="37vLTw" id="1zF9zjMpF8z" role="37vLTx">
              <ref role="3cqZAo" node="2vCf6P40bEY" resolve="project" />
            </node>
            <node concept="37vLTw" id="1zF9zjMpDad" role="37vLTJ">
              <ref role="3cqZAo" node="y5fyHoEGTr" resolve="myMPSProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUoO" role="3cqZAp">
          <node concept="37vLTI" id="7ctIhG_bUoP" role="3clFbG">
            <node concept="2ShNRf" id="7ctIhG_bUoQ" role="37vLTx">
              <node concept="1pGfFk" id="7ctIhG_bUoR" role="2ShVmc">
                <ref role="37wK5l" node="7ctIhG_bUwe" resolve="DependencyTree2" />
                <node concept="Xjq3P" id="7ctIhG_bUoS" role="37wK5m" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeun2X" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtk" resolve="myInitTree" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUoU" role="3cqZAp">
          <node concept="37vLTI" id="7ctIhG_bUoV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeusxL" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtn" resolve="myTargetsView" />
            </node>
            <node concept="2ShNRf" id="7ctIhG_bUoX" role="37vLTx">
              <node concept="1pGfFk" id="7ctIhG_bUoY" role="2ShVmc">
                <ref role="37wK5l" node="7ctIhG_bUP3" resolve="TargetsView" />
                <node concept="37vLTw" id="2BHiRxeuFIj" role="37wK5m">
                  <ref role="3cqZAo" node="7ctIhG_bUtt" resolve="myProject" />
                </node>
                <node concept="Xjq3P" id="7ctIhG_bUp0" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUp1" role="3cqZAp">
          <node concept="37vLTI" id="7ctIhG_bUp2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuDZC" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtq" resolve="myReferencesView" />
            </node>
            <node concept="2ShNRf" id="7ctIhG_bUp4" role="37vLTx">
              <node concept="1pGfFk" id="7ctIhG_bUp5" role="2ShVmc">
                <ref role="37wK5l" node="7ctIhG_bUEd" resolve="ReferencesView" />
                <node concept="37vLTw" id="2BHiRxeuFjW" role="37wK5m">
                  <ref role="3cqZAo" node="7ctIhG_bUtt" resolve="myProject" />
                </node>
                <node concept="Xjq3P" id="7ctIhG_bUp7" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ctIhG_bUpn" role="3cqZAp">
          <node concept="3cpWsn" id="7ctIhG_bUpo" role="3cpWs9">
            <property role="TrG5h" value="leftPane" />
            <node concept="3uibUv" id="7ctIhG_bUpp" role="1tU5fm">
              <ref role="3uigEE" to="qqrq:~JBScrollPane" resolve="JBScrollPane" />
            </node>
            <node concept="2ShNRf" id="7ctIhG_bUpq" role="33vP2m">
              <node concept="1pGfFk" id="7ctIhG_bUpr" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JBScrollPane" />
                <node concept="37vLTw" id="2BHiRxeusrK" role="37wK5m">
                  <ref role="3cqZAo" node="7ctIhG_bUtk" resolve="myInitTree" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6C_eVWCBkpP" role="3cqZAp">
          <node concept="3cpWsn" id="6C_eVWCBkpQ" role="3cpWs9">
            <property role="TrG5h" value="treeSplitter" />
            <node concept="3uibUv" id="6C_eVWCBkpR" role="1tU5fm">
              <ref role="3uigEE" to="jkm4:~Splitter" resolve="Splitter" />
            </node>
            <node concept="2ShNRf" id="6C_eVWCBkpT" role="33vP2m">
              <node concept="1pGfFk" id="6C_eVWCBkpV" role="2ShVmc">
                <ref role="37wK5l" to="jkm4:~Splitter.&lt;init&gt;(boolean)" resolve="Splitter" />
                <node concept="3clFbT" id="6C_eVWCBkTi" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6C_eVWCBkTo" role="3cqZAp">
          <node concept="2OqwBi" id="6C_eVWCBkTv" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTrpX" role="2Oq$k0">
              <ref role="3cqZAo" node="6C_eVWCBkpQ" resolve="treeSplitter" />
            </node>
            <node concept="liA8E" id="6C_eVWCBkTz" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setFirstComponent(javax.swing.JComponent)" resolve="setFirstComponent" />
              <node concept="37vLTw" id="3GM_nagTzX8" role="37wK5m">
                <ref role="3cqZAo" node="7ctIhG_bUpo" resolve="leftPane" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6C_eVWCBkTA" role="3cqZAp">
          <node concept="2OqwBi" id="6C_eVWCBkTB" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTwBn" role="2Oq$k0">
              <ref role="3cqZAo" node="6C_eVWCBkpQ" resolve="treeSplitter" />
            </node>
            <node concept="liA8E" id="6C_eVWCBkTD" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setSecondComponent(javax.swing.JComponent)" resolve="setSecondComponent" />
              <node concept="2OqwBi" id="6C_eVWCBkTG" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuFjm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUtn" resolve="myTargetsView" />
                </node>
                <node concept="liA8E" id="6C_eVWCBkTK" role="2OqNvi">
                  <ref role="37wK5l" to="ngmm:~UsagesView.getComponent()" resolve="getComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18NAPaI$chr" role="3cqZAp">
          <node concept="3cpWsn" id="18NAPaI$chs" role="3cpWs9">
            <property role="TrG5h" value="splitter" />
            <node concept="3uibUv" id="18NAPaI$cht" role="1tU5fm">
              <ref role="3uigEE" to="jkm4:~Splitter" resolve="Splitter" />
            </node>
            <node concept="2ShNRf" id="18NAPaI$chv" role="33vP2m">
              <node concept="1pGfFk" id="18NAPaI$vMv" role="2ShVmc">
                <ref role="37wK5l" to="jkm4:~Splitter.&lt;init&gt;(boolean)" resolve="Splitter" />
                <node concept="3clFbT" id="18NAPaI$vMy" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18NAPaI$vMB" role="3cqZAp">
          <node concept="2OqwBi" id="18NAPaI$vMD" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTwAM" role="2Oq$k0">
              <ref role="3cqZAo" node="18NAPaI$chs" resolve="splitter" />
            </node>
            <node concept="liA8E" id="18NAPaI$vMH" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setFirstComponent(javax.swing.JComponent)" resolve="setFirstComponent" />
              <node concept="37vLTw" id="3GM_nagTsvX" role="37wK5m">
                <ref role="3cqZAo" node="6C_eVWCBkpQ" resolve="treeSplitter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18NAPaI$vML" role="3cqZAp">
          <node concept="2OqwBi" id="18NAPaI$vMN" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTuN8" role="2Oq$k0">
              <ref role="3cqZAo" node="18NAPaI$chs" resolve="splitter" />
            </node>
            <node concept="liA8E" id="18NAPaI$vMR" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setSecondComponent(javax.swing.JComponent)" resolve="setSecondComponent" />
              <node concept="2OqwBi" id="18NAPaI$vMT" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuyUF" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUtq" resolve="myReferencesView" />
                </node>
                <node concept="liA8E" id="18NAPaI$vMX" role="2OqNvi">
                  <ref role="37wK5l" to="ngmm:~UsagesView.getComponent()" resolve="getComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18NAPaI$vMZ" role="3cqZAp">
          <node concept="2OqwBi" id="18NAPaI$vN1" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTA_W" role="2Oq$k0">
              <ref role="3cqZAo" node="18NAPaI$chs" resolve="splitter" />
            </node>
            <node concept="liA8E" id="18NAPaI$vN5" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setDividerWidth(int)" resolve="setDividerWidth" />
              <node concept="3cmrfG" id="5kcYZ6_v5PJ" role="37wK5m">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18NAPaI$vN8" role="3cqZAp">
          <node concept="2OqwBi" id="18NAPaI$vNa" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT_tJ" role="2Oq$k0">
              <ref role="3cqZAo" node="6C_eVWCBkpQ" resolve="treeSplitter" />
            </node>
            <node concept="liA8E" id="18NAPaI$vNe" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~Splitter.setDividerWidth(int)" resolve="setDividerWidth" />
              <node concept="3cmrfG" id="5kcYZ6_v5PK" role="37wK5m">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUql" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzbMZ" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="3GM_nagTyKb" role="37wK5m">
              <ref role="3cqZAo" node="18NAPaI$chs" resolve="splitter" />
            </node>
            <node concept="10M0yZ" id="7UvxeAfzruQ" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7UvxeAfzruR" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzg9H" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="1rXfSq" id="4hiugqyyZZ7" role="37wK5m">
              <ref role="37wK5l" node="2ycpCH3WHy9" resolve="createToolbar" />
            </node>
            <node concept="10M0yZ" id="7UvxeAfzs0x" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUtU" role="3clF46">
        <property role="TrG5h" value="tool" />
        <node concept="3uibUv" id="5Ez3fPlILnv" role="1tU5fm">
          <ref role="3uigEE" to="71xd:~BaseTool" resolve="BaseTool" />
        </node>
      </node>
      <node concept="37vLTG" id="2vCf6P40bEY" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1zF9zjMp__Z" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqx7HT" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUoK" role="jymVt">
      <property role="TrG5h" value="resetContent" />
      <node concept="3cqZAl" id="7ctIhG_bUoL" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUoM" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUoN" role="3clF47">
        <node concept="3SKdUt" id="1O8DjCqX6K$" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorwE" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorwF" role="1PaTwD">
              <property role="3oM_SC" value="preserve" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwG" role="1PaTwD">
              <property role="3oM_SC" value="TargetsView" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwH" role="1PaTwD">
              <property role="3oM_SC" value="limitation," />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwI" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwJ" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqWHcO" role="3cqZAp">
          <node concept="1rXfSq" id="1O8DjCqWHcN" role="3clFbG">
            <ref role="37wK5l" node="1O8DjCqWn5e" resolve="resetContent" />
            <node concept="37vLTw" id="1O8DjCqWK2Q" role="37wK5m">
              <ref role="3cqZAo" node="7ctIhG_bUqH" resolve="scope" />
            </node>
            <node concept="2OqwBi" id="1O8DjCqWRt7" role="37wK5m">
              <node concept="37vLTw" id="1O8DjCqWNeQ" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUtn" resolve="myTargetsView" />
              </node>
              <node concept="liA8E" id="1O8DjCqWWh$" role="2OqNvi">
                <ref role="37wK5l" node="1O8DjCqTjP4" resolve="limitedTo" />
              </node>
            </node>
            <node concept="37vLTw" id="1O8DjCqX24P" role="37wK5m">
              <ref role="3cqZAo" node="50XZ6iwxeMT" resolve="isMeta" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUqH" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="7ctIhG_bUqI" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
        <node concept="2AHcQZ" id="1O8DjCqW9Ix" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="50XZ6iwxeMT" role="3clF46">
        <property role="TrG5h" value="isMeta" />
        <node concept="10P_77" id="50XZ6iwxeNf" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqWqp5" role="jymVt" />
    <node concept="3clFb_" id="1O8DjCqWn5e" role="jymVt">
      <property role="TrG5h" value="resetContent" />
      <node concept="3cqZAl" id="1O8DjCqWn5f" role="3clF45" />
      <node concept="3Tm1VV" id="1O8DjCqWn5g" role="1B3o_S" />
      <node concept="3clFbS" id="1O8DjCqWn5h" role="3clF47">
        <node concept="3clFbF" id="1O8DjCqWn5i" role="3cqZAp">
          <node concept="37vLTI" id="1O8DjCqWn5j" role="3clFbG">
            <node concept="37vLTw" id="1O8DjCqWn5k" role="37vLTJ">
              <ref role="3cqZAo" node="1byBclm9vEE" resolve="myIsMeta" />
            </node>
            <node concept="37vLTw" id="1O8DjCqWn5l" role="37vLTx">
              <ref role="3cqZAo" node="1O8DjCqWn5J" resolve="isMeta" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqWn5m" role="3cqZAp">
          <node concept="37vLTI" id="1O8DjCqWn5n" role="3clFbG">
            <node concept="2ShNRf" id="1O8DjCqWn5o" role="37vLTx">
              <node concept="1pGfFk" id="1O8DjCqWn5p" role="2ShVmc">
                <ref role="37wK5l" node="5v6_5mQkoll" resolve="ReferencesFinder" />
                <node concept="37vLTw" id="5v6_5mQlViB" role="37wK5m">
                  <ref role="3cqZAo" node="1O8DjCqWn5G" resolve="scope" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1O8DjCqWn5q" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtH" resolve="myReferencesFinder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqWn5r" role="3cqZAp">
          <node concept="1rXfSq" id="1O8DjCqWn5s" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setVisible(boolean)" resolve="setVisible" />
            <node concept="3clFbT" id="1O8DjCqWn5t" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqWn5u" role="3cqZAp">
          <node concept="2OqwBi" id="1O8DjCqWn5v" role="3clFbG">
            <node concept="37vLTw" id="1O8DjCqWn5w" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUtk" resolve="myInitTree" />
            </node>
            <node concept="liA8E" id="1O8DjCqWn5x" role="2OqNvi">
              <ref role="37wK5l" node="7ctIhG_bUxX" resolve="setContent" />
              <node concept="37vLTw" id="1O8DjCqWn5y" role="37wK5m">
                <ref role="3cqZAo" node="1O8DjCqWn5G" resolve="scope" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqWn5z" role="3cqZAp">
          <node concept="37vLTI" id="1O8DjCqWn5$" role="3clFbG">
            <node concept="37vLTw" id="1O8DjCqWn5_" role="37vLTx">
              <ref role="3cqZAo" node="1O8DjCqWn5G" resolve="scope" />
            </node>
            <node concept="37vLTw" id="1O8DjCqWn5A" role="37vLTJ">
              <ref role="3cqZAo" node="y5fyHoEGTc" resolve="myInitialScope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KfaXMvVTJ2" role="3cqZAp">
          <node concept="2OqwBi" id="KfaXMvVYi7" role="3clFbG">
            <node concept="37vLTw" id="KfaXMvVTJ0" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUtn" resolve="myTargetsView" />
            </node>
            <node concept="liA8E" id="KfaXMvW188" role="2OqNvi">
              <ref role="37wK5l" node="1O8DjCqTI9b" resolve="limitTo" />
              <node concept="37vLTw" id="KfaXMvW4sR" role="37wK5m">
                <ref role="3cqZAo" node="1O8DjCqVUgH" resolve="limitTargets" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqWn5B" role="3cqZAp">
          <node concept="1rXfSq" id="1O8DjCqWn5C" role="3clFbG">
            <ref role="37wK5l" node="7ctIhG_bUr7" resolve="updateTargetsView" />
            <node concept="37vLTw" id="1O8DjCqWn5D" role="37wK5m">
              <ref role="3cqZAo" node="1O8DjCqWn5G" resolve="scope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqWn5E" role="3cqZAp">
          <node concept="1rXfSq" id="1O8DjCqWn5F" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.revalidate()" resolve="revalidate" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqWn5G" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="1O8DjCqWn5H" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
        <node concept="2AHcQZ" id="1O8DjCqWn5I" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqVUgH" role="3clF46">
        <property role="TrG5h" value="limitTargets" />
        <node concept="3uibUv" id="1O8DjCqVUgI" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
        <node concept="2AHcQZ" id="1O8DjCqWeUw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqWn5J" role="3clF46">
        <property role="TrG5h" value="isMeta" />
        <node concept="10P_77" id="1O8DjCqWn5K" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqxaEz" role="jymVt" />
    <node concept="3clFb_" id="1O8DjCqxdGf" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3uibUv" id="1O8DjCqxjmI" role="3clF45">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="3clFbS" id="1O8DjCqxdGj" role="3clF47">
        <node concept="3clFbF" id="1O8DjCqxp3D" role="3cqZAp">
          <node concept="37vLTw" id="1O8DjCqxp3C" role="3clFbG">
            <ref role="3cqZAo" node="y5fyHoEGTr" resolve="myMPSProject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqZPWN" role="jymVt" />
    <node concept="3clFb_" id="1O8DjCqZSQn" role="jymVt">
      <property role="TrG5h" value="getInitialScope" />
      <node concept="3uibUv" id="1O8DjCr07wV" role="3clF45">
        <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
      <node concept="3clFbS" id="1O8DjCqZSQr" role="3clF47">
        <node concept="3clFbF" id="1O8DjCr04_Y" role="3cqZAp">
          <node concept="37vLTw" id="1O8DjCr04_X" role="3clFbG">
            <ref role="3cqZAo" node="y5fyHoEGTc" resolve="myInitialScope" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqwFhM" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUr1" role="jymVt">
      <property role="TrG5h" value="getCurrentScope" />
      <node concept="3uibUv" id="7ctIhG_bUr2" role="3clF45">
        <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
      <node concept="3clFbS" id="7ctIhG_bUr4" role="3clF47">
        <node concept="3cpWs6" id="7ctIhG_bUr5" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuw$R" role="3cqZAk">
            <ref role="3cqZAo" node="7ctIhG_bUtw" resolve="myActiveScope" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1O8DjCqZhoM" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBTC" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBTD" role="1PaTwD">
            <property role="3oM_SC" value="corresponds" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTE" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTF" role="1PaTwD">
            <property role="3oM_SC" value="active" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTG" role="1PaTwD">
            <property role="3oM_SC" value="selection" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTH" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTI" role="1PaTwD">
            <property role="3oM_SC" value="DependencyTree," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTJ" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTK" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHsBTL" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHsBTM" role="1Vtduc">
              <node concept="VXe0Z" id="1O8DjCr0zee" role="1VuXuu">
                <ref role="VXe0S" node="1O8DjCqZSQn" resolve="getInitialScope" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHsBTP" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHsBTQ" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTR" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTS" role="1PaTwD">
            <property role="3oM_SC" value="none" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTT" role="1PaTwD">
            <property role="3oM_SC" value="selected" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqwCol" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUr7" role="jymVt">
      <property role="TrG5h" value="updateTargetsView" />
      <node concept="37vLTG" id="7ctIhG_bUr8" role="3clF46">
        <property role="TrG5h" value="sourceScope" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7ctIhG_bUr9" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ctIhG_bUra" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUrb" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUrc" role="3clF47">
        <node concept="3clFbF" id="7ctIhG_bUrd" role="3cqZAp">
          <node concept="37vLTI" id="7ctIhG_bUre" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmFmn" role="37vLTx">
              <ref role="3cqZAo" node="7ctIhG_bUr8" resolve="sourceScope" />
            </node>
            <node concept="37vLTw" id="2BHiRxeunna" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtw" resolve="myActiveScope" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8DjCqju0u" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqju0v" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <property role="3TUv4t" value="true" />
            <node concept="10Q1$e" id="1O8DjCqju0w" role="1tU5fm">
              <node concept="3uibUv" id="1O8DjCqju0x" role="10Q1$1">
                <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
              </node>
            </node>
            <node concept="2ShNRf" id="1O8DjCqju0y" role="33vP2m">
              <node concept="3$_iS1" id="1O8DjCqju0z" role="2ShVmc">
                <node concept="3$GHV9" id="1O8DjCqju0$" role="3$GQph">
                  <node concept="3cmrfG" id="1O8DjCqju0_" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3uibUv" id="1O8DjCqju0A" role="3$_nBY">
                  <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2574WfmX4io" role="3cqZAp">
          <node concept="3clFbS" id="2574WfmX4iq" role="3clFbx">
            <node concept="3clFbF" id="7ctIhG_bUrn" role="3cqZAp">
              <node concept="2OqwBi" id="7ctIhG_bUro" role="3clFbG">
                <node concept="2YIFZM" id="7ctIhG_bUrp" role="2Oq$k0">
                  <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                  <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUrq" role="2OqNvi">
                  <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
                  <node concept="2ShNRf" id="7ctIhG_bUrr" role="37wK5m">
                    <node concept="YeOm9" id="7ctIhG_bUrs" role="2ShVmc">
                      <node concept="1Y3b0j" id="7ctIhG_bUrt" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                        <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                        <node concept="37vLTw" id="2BHiRxeune_" role="37wK5m">
                          <ref role="3cqZAo" node="7ctIhG_bUtt" resolve="myProject" />
                        </node>
                        <node concept="Xl_RD" id="7ctIhG_bUrv" role="37wK5m">
                          <property role="Xl_RC" value="Analyzing dependencies" />
                        </node>
                        <node concept="3clFbT" id="7ctIhG_bUrw" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="3Tm1VV" id="7ctIhG_bUrx" role="1B3o_S" />
                        <node concept="3clFb_" id="7ctIhG_bUry" role="jymVt">
                          <property role="TrG5h" value="run" />
                          <node concept="3Tm1VV" id="7ctIhG_bUrz" role="1B3o_S" />
                          <node concept="3cqZAl" id="7ctIhG_bUr$" role="3clF45" />
                          <node concept="37vLTG" id="7ctIhG_bUr_" role="3clF46">
                            <property role="TrG5h" value="indicator" />
                            <node concept="3uibUv" id="7ctIhG_bUrA" role="1tU5fm">
                              <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                            </node>
                            <node concept="2AHcQZ" id="7ctIhG_bUrB" role="2AJF6D">
                              <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="7ctIhG_bUrC" role="3clF47">
                            <node concept="1QHqEK" id="7JYTKo1phOm" role="3cqZAp">
                              <node concept="1QHqEC" id="7JYTKo1phOo" role="1QHqEI">
                                <node concept="3clFbS" id="7JYTKo1phOq" role="1bW5cS">
                                  <node concept="3cpWs8" id="1KUoCipvD_G" role="3cqZAp">
                                    <node concept="3cpWsn" id="1KUoCipvD_I" role="3cpWs9">
                                      <property role="TrG5h" value="monitor" />
                                      <node concept="3uibUv" id="1KUoCipvD_J" role="1tU5fm">
                                        <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                                      </node>
                                      <node concept="2ShNRf" id="1KUoCipvD_L" role="33vP2m">
                                        <node concept="1pGfFk" id="1KUoCipvD_M" role="2ShVmc">
                                          <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                          <node concept="37vLTw" id="2BHiRxgmN28" role="37wK5m">
                                            <ref role="3cqZAo" node="7ctIhG_bUr_" resolve="indicator" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3J1_TO" id="7JYTKo1pQpl" role="3cqZAp">
                                    <node concept="3clFbS" id="7JYTKo1pQpn" role="1zxBo7">
                                      <node concept="3clFbJ" id="7JYTKo1pKtP" role="3cqZAp">
                                        <node concept="3clFbS" id="7JYTKo1pKtR" role="3clFbx">
                                          <node concept="3clFbF" id="7JYTKo1pOru" role="3cqZAp">
                                            <node concept="37vLTI" id="7JYTKo1pOK1" role="3clFbG">
                                              <node concept="AH0OO" id="1O8DjCqjB40" role="37vLTJ">
                                                <node concept="3cmrfG" id="1O8DjCqjE4r" role="AHEQo">
                                                  <property role="3cmrfH" value="0" />
                                                </node>
                                                <node concept="37vLTw" id="1O8DjCqjzup" role="AHHXb">
                                                  <ref role="3cqZAo" node="1O8DjCqju0v" resolve="results" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="1KUoCipvDAv" role="37vLTx">
                                                <node concept="37vLTw" id="2BHiRxeustf" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="7ctIhG_bUtH" resolve="myReferencesFinder" />
                                                </node>
                                                <node concept="liA8E" id="1KUoCipvDAx" role="2OqNvi">
                                                  <ref role="37wK5l" node="1byBclm99vu" resolve="getUsedConcepts" />
                                                  <node concept="2OqwBi" id="5v6_5mQqcN_" role="37wK5m">
                                                    <node concept="2OqwBi" id="5v6_5mQq9Ps" role="2Oq$k0">
                                                      <node concept="37vLTw" id="5v6_5mQq7$p" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="7ctIhG_bUtw" resolve="myActiveScope" />
                                                      </node>
                                                      <node concept="liA8E" id="5v6_5mQqcuK" role="2OqNvi">
                                                        <ref role="37wK5l" node="5dMA8jj$Zfo" resolve="getNodes" />
                                                      </node>
                                                    </node>
                                                    <node concept="ANE8D" id="5v6_5mQqeY3" role="2OqNvi" />
                                                  </node>
                                                  <node concept="37vLTw" id="7JYTKo1qfjw" role="37wK5m">
                                                    <ref role="3cqZAo" node="1KUoCipvD_I" resolve="monitor" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="7JYTKo1pKIQ" role="3clFbw">
                                          <ref role="3cqZAo" node="1byBclm9vEE" resolve="myIsMeta" />
                                        </node>
                                        <node concept="9aQIb" id="7JYTKo1pPi8" role="9aQIa">
                                          <node concept="3clFbS" id="7JYTKo1pPi9" role="9aQI4">
                                            <node concept="3clFbF" id="1KUoCipvDAg" role="3cqZAp">
                                              <node concept="37vLTI" id="1KUoCipvDAh" role="3clFbG">
                                                <node concept="2OqwBi" id="1KUoCipvDAl" role="37vLTx">
                                                  <node concept="37vLTw" id="2BHiRxeukq0" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7ctIhG_bUtH" resolve="myReferencesFinder" />
                                                  </node>
                                                  <node concept="liA8E" id="1KUoCipvDAn" role="2OqNvi">
                                                    <ref role="37wK5l" node="7ctIhG_bUyr" resolve="findRefsFromScopeToOuter" />
                                                    <node concept="37vLTw" id="1O8DjCr4iBt" role="37wK5m">
                                                      <ref role="3cqZAo" node="7ctIhG_bUtw" resolve="myActiveScope" />
                                                    </node>
                                                    <node concept="2OqwBi" id="1O8DjCr1$E8" role="37wK5m">
                                                      <node concept="37vLTw" id="1O8DjCr1x88" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="7ctIhG_bUtn" resolve="myTargetsView" />
                                                      </node>
                                                      <node concept="liA8E" id="1O8DjCr1BKa" role="2OqNvi">
                                                        <ref role="37wK5l" node="1O8DjCqTjP4" resolve="limitedTo" />
                                                      </node>
                                                    </node>
                                                    <node concept="37vLTw" id="7JYTKo1qfjx" role="37wK5m">
                                                      <ref role="3cqZAo" node="1KUoCipvD_I" resolve="monitor" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="AH0OO" id="1O8DjCqjGLx" role="37vLTJ">
                                                  <node concept="3cmrfG" id="1O8DjCqjGLy" role="AHEQo">
                                                    <property role="3cmrfH" value="0" />
                                                  </node>
                                                  <node concept="37vLTw" id="1O8DjCqjGLz" role="AHHXb">
                                                    <ref role="3cqZAo" node="1O8DjCqju0v" resolve="results" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1wplmZ" id="xvs04dI_t5" role="1zxBo6">
                                      <node concept="3clFbS" id="7JYTKo1pQpo" role="1wplMD">
                                        <node concept="3clFbF" id="7JYTKo1pRu5" role="3cqZAp">
                                          <node concept="2OqwBi" id="7JYTKo1pRIV" role="3clFbG">
                                            <node concept="37vLTw" id="7JYTKo1qfjv" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1KUoCipvD_I" resolve="monitor" />
                                            </node>
                                            <node concept="liA8E" id="7JYTKo1pS74" role="2OqNvi">
                                              <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5dMA8jj_ibT" role="ukAjM">
                                <node concept="37vLTw" id="5dMA8jj_hrQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="y5fyHoEGTr" resolve="myMPSProject" />
                                </node>
                                <node concept="liA8E" id="5dMA8jj_iGS" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="3tYsUK_U$RL" role="2AJF6D">
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
          <node concept="3y3z36" id="2574WfmX6fm" role="3clFbw">
            <node concept="10Nm6u" id="2574WfmX71V" role="3uHU7w" />
            <node concept="37vLTw" id="2574WfmX5ny" role="3uHU7B">
              <ref role="3cqZAo" node="7ctIhG_bUr8" resolve="sourceScope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUsq" role="3cqZAp">
          <node concept="2OqwBi" id="7ctIhG_bUsr" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeukoy" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUtn" resolve="myTargetsView" />
            </node>
            <node concept="liA8E" id="7ctIhG_bUst" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.setContents(jetbrains.mps.ide.findusages.model.SearchResults)" resolve="setContents" />
              <node concept="3K4zz7" id="1O8DjCqjQFo" role="37wK5m">
                <node concept="2YIFZM" id="1O8DjCqk4Wq" role="3K4E3e">
                  <ref role="37wK5l" to="9erk:~SearchResults.empty()" resolve="empty" />
                  <ref role="1Pybhc" to="9erk:~SearchResults" resolve="SearchResults" />
                </node>
                <node concept="AH0OO" id="1O8DjCqkaOt" role="3K4GZi">
                  <node concept="3cmrfG" id="1O8DjCqkcVv" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="1O8DjCqk7QJ" role="AHHXb">
                    <ref role="3cqZAo" node="1O8DjCqju0v" resolve="results" />
                  </node>
                </node>
                <node concept="3clFbC" id="1O8DjCqjNKg" role="3K4Cdx">
                  <node concept="10Nm6u" id="1O8DjCqjQi1" role="3uHU7w" />
                  <node concept="AH0OO" id="1O8DjCqjKIl" role="3uHU7B">
                    <node concept="3cmrfG" id="1O8DjCqjKIm" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="1O8DjCqjKIn" role="AHHXb">
                      <ref role="3cqZAo" node="1O8DjCqju0v" resolve="results" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUsv" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyZ0x" role="3clFbG">
            <ref role="37wK5l" node="7ctIhG_bUsz" resolve="updateReferencesView" />
            <node concept="10Nm6u" id="4ra9BKUkrLp" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqvYZ_" role="jymVt" />
    <node concept="3clFb_" id="2GH7fa3OzGH" role="jymVt">
      <property role="TrG5h" value="selectInTargetsView" />
      <node concept="3cqZAl" id="2GH7fa3OzGI" role="3clF45" />
      <node concept="3Tm1VV" id="2GH7fa3OzGJ" role="1B3o_S" />
      <node concept="3clFbS" id="2GH7fa3OzGK" role="3clF47">
        <node concept="3clFbF" id="1yGodf3w1Ou" role="3cqZAp">
          <node concept="2OqwBi" id="1yGodf3w1Ow" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuW11" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUtn" resolve="myTargetsView" />
            </node>
            <node concept="liA8E" id="1yGodf3w1OA" role="2OqNvi">
              <ref role="37wK5l" node="3vHcROfTF78" resolve="selectModule" />
              <node concept="37vLTw" id="2BHiRxgheV7" role="37wK5m">
                <ref role="3cqZAo" node="2GH7fa3OzGL" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2GH7fa3OzGL" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="27wBQ2HqA0F" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqw6Zf" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUsz" role="jymVt">
      <property role="TrG5h" value="updateReferencesView" />
      <node concept="37vLTG" id="7ctIhG_bUs$" role="3clF46">
        <property role="TrG5h" value="targetScope" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7ctIhG_bUs_" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
      </node>
      <node concept="3cqZAl" id="1O8DjCqSD7m" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUsB" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUsC" role="3clF47">
        <node concept="3clFbJ" id="4ra9BKUkrLr" role="3cqZAp">
          <node concept="3clFbS" id="4ra9BKUkrLs" role="3clFbx">
            <node concept="3clFbF" id="4ra9BKUkrL$" role="3cqZAp">
              <node concept="2OqwBi" id="4ra9BKUkrL_" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuTyN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUtq" resolve="myReferencesView" />
                </node>
                <node concept="liA8E" id="4ra9BKUkrLB" role="2OqNvi">
                  <ref role="37wK5l" to="ngmm:~UsagesView.setContents(jetbrains.mps.ide.findusages.model.SearchResults)" resolve="setContents" />
                  <node concept="2ShNRf" id="4ra9BKUkrLJ" role="37wK5m">
                    <node concept="1pGfFk" id="4ra9BKUkrSZ" role="2ShVmc">
                      <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;()" resolve="SearchResults" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3zfdV64Eb$m" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4ra9BKUkrLw" role="3clFbw">
            <node concept="10Nm6u" id="4ra9BKUkrLz" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxglVwD" role="3uHU7B">
              <ref role="3cqZAo" node="7ctIhG_bUs$" resolve="targetScope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUsD" role="3cqZAp">
          <node concept="2OqwBi" id="7ctIhG_bUsE" role="3clFbG">
            <node concept="2YIFZM" id="7ctIhG_bUsF" role="2Oq$k0">
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
            </node>
            <node concept="liA8E" id="7ctIhG_bUsG" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.run(com.intellij.openapi.progress.Task)" resolve="run" />
              <node concept="2ShNRf" id="7ctIhG_bUsH" role="37wK5m">
                <node concept="YeOm9" id="7ctIhG_bUsI" role="2ShVmc">
                  <node concept="1Y3b0j" id="7ctIhG_bUsJ" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                    <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                    <node concept="37vLTw" id="2BHiRxeuoNu" role="37wK5m">
                      <ref role="3cqZAo" node="7ctIhG_bUtt" resolve="myProject" />
                    </node>
                    <node concept="Xl_RD" id="7ctIhG_bUsL" role="37wK5m">
                      <property role="Xl_RC" value="Analyzing dependencies" />
                    </node>
                    <node concept="3clFbT" id="7ctIhG_bUsM" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="3Tm1VV" id="7ctIhG_bUsN" role="1B3o_S" />
                    <node concept="3clFb_" id="7ctIhG_bUsO" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="7ctIhG_bUsP" role="1B3o_S" />
                      <node concept="3cqZAl" id="7ctIhG_bUsQ" role="3clF45" />
                      <node concept="37vLTG" id="7ctIhG_bUsR" role="3clF46">
                        <property role="TrG5h" value="indicator" />
                        <node concept="3uibUv" id="7ctIhG_bUsS" role="1tU5fm">
                          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                        </node>
                        <node concept="2AHcQZ" id="7ctIhG_bUsT" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7ctIhG_bUsU" role="3clF47">
                        <node concept="3cpWs8" id="7ctIhG_bUsV" role="3cqZAp">
                          <node concept="3cpWsn" id="7ctIhG_bUsW" role="3cpWs9">
                            <property role="TrG5h" value="monitor" />
                            <node concept="3uibUv" id="7ctIhG_bUsX" role="1tU5fm">
                              <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                            </node>
                            <node concept="2ShNRf" id="7ctIhG_bUsY" role="33vP2m">
                              <node concept="1pGfFk" id="7ctIhG_bUsZ" role="2ShVmc">
                                <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                <node concept="37vLTw" id="2BHiRxgm_f8" role="37wK5m">
                                  <ref role="3cqZAo" node="7ctIhG_bUsR" resolve="indicator" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1OK1cKPCdrj" role="3cqZAp">
                          <node concept="3cpWsn" id="1OK1cKPCdrk" role="3cpWs9">
                            <property role="TrG5h" value="result" />
                            <node concept="3uibUv" id="1OK1cKPCdrl" role="1tU5fm">
                              <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
                            </node>
                          </node>
                        </node>
                        <node concept="1QHqEK" id="7JYTKo1p5mX" role="3cqZAp">
                          <node concept="1QHqEC" id="7JYTKo1p5mZ" role="1QHqEI">
                            <node concept="3clFbS" id="7JYTKo1p5n1" role="1bW5cS">
                              <node concept="3J1_TO" id="7JYTKo1pko4" role="3cqZAp">
                                <node concept="3clFbS" id="7JYTKo1pko5" role="1zxBo7">
                                  <node concept="3clFbJ" id="7JYTKo1ppKO" role="3cqZAp">
                                    <node concept="3clFbS" id="7JYTKo1ppKQ" role="3clFbx">
                                      <node concept="3clFbF" id="7JYTKo1pqGw" role="3cqZAp">
                                        <node concept="37vLTI" id="7JYTKo1pqSo" role="3clFbG">
                                          <node concept="37vLTw" id="7JYTKo1pqGu" role="37vLTJ">
                                            <ref role="3cqZAo" node="1OK1cKPCdrk" resolve="result" />
                                          </node>
                                          <node concept="2OqwBi" id="7JYTKo1pr2y" role="37vLTx">
                                            <node concept="37vLTw" id="7JYTKo1pr2z" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7ctIhG_bUtH" resolve="myReferencesFinder" />
                                            </node>
                                            <node concept="liA8E" id="7JYTKo1pr2$" role="2OqNvi">
                                              <ref role="37wK5l" node="1byBclm9ynJ" resolve="getLanguageUsagesSearchResults" />
                                              <node concept="2OqwBi" id="5v6_5mQqhAy" role="37wK5m">
                                                <node concept="2OqwBi" id="5v6_5mQqhAz" role="2Oq$k0">
                                                  <node concept="37vLTw" id="5v6_5mQqhA$" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7ctIhG_bUtw" resolve="myActiveScope" />
                                                  </node>
                                                  <node concept="liA8E" id="5v6_5mQqhA_" role="2OqNvi">
                                                    <ref role="37wK5l" node="5dMA8jj$Zfo" resolve="getNodes" />
                                                  </node>
                                                </node>
                                                <node concept="ANE8D" id="5v6_5mQqhAA" role="2OqNvi" />
                                              </node>
                                              <node concept="37vLTw" id="7JYTKo1pr2B" role="37wK5m">
                                                <ref role="3cqZAo" node="7ctIhG_bUs$" resolve="targetScope" />
                                              </node>
                                              <node concept="37vLTw" id="7JYTKo1pr2C" role="37wK5m">
                                                <ref role="3cqZAo" node="7ctIhG_bUsW" resolve="monitor" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="7JYTKo1ppVX" role="3clFbw">
                                      <ref role="3cqZAo" node="1byBclm9vEE" resolve="myIsMeta" />
                                    </node>
                                    <node concept="9aQIb" id="7JYTKo1prpt" role="9aQIa">
                                      <node concept="3clFbS" id="7JYTKo1prpu" role="9aQI4">
                                        <node concept="3clFbF" id="7JYTKo1p55j" role="3cqZAp">
                                          <node concept="37vLTI" id="7JYTKo1p55l" role="3clFbG">
                                            <node concept="37vLTw" id="7JYTKo1p55p" role="37vLTJ">
                                              <ref role="3cqZAo" node="1OK1cKPCdrk" resolve="result" />
                                            </node>
                                            <node concept="2OqwBi" id="1OK1cKPCdrm" role="37vLTx">
                                              <node concept="37vLTw" id="2BHiRxeuJeG" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7ctIhG_bUtH" resolve="myReferencesFinder" />
                                              </node>
                                              <node concept="liA8E" id="1OK1cKPCdro" role="2OqNvi">
                                                <ref role="37wK5l" node="7ctIhG_bUzn" resolve="getRefsBetweenScopes" />
                                                <node concept="37vLTw" id="5v6_5mQpHLW" role="37wK5m">
                                                  <ref role="3cqZAo" node="7ctIhG_bUtw" resolve="myActiveScope" />
                                                </node>
                                                <node concept="37vLTw" id="2BHiRxgm8Fu" role="37wK5m">
                                                  <ref role="3cqZAo" node="7ctIhG_bUs$" resolve="targetScope" />
                                                </node>
                                                <node concept="37vLTw" id="3GM_nagTttF" role="37wK5m">
                                                  <ref role="3cqZAo" node="7ctIhG_bUsW" resolve="monitor" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1wplmZ" id="xvs04dI_t7" role="1zxBo6">
                                  <node concept="3clFbS" id="7JYTKo1pkoN" role="1wplMD">
                                    <node concept="3clFbF" id="7JYTKo1pkoO" role="3cqZAp">
                                      <node concept="2OqwBi" id="7JYTKo1pkoP" role="3clFbG">
                                        <node concept="37vLTw" id="7JYTKo1pkoQ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7ctIhG_bUsW" resolve="monitor" />
                                        </node>
                                        <node concept="liA8E" id="7JYTKo1pkoR" role="2OqNvi">
                                          <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5dMA8jjBXSu" role="ukAjM">
                            <node concept="37vLTw" id="5dMA8jjBZJi" role="2Oq$k0">
                              <ref role="3cqZAo" node="y5fyHoEGTr" resolve="myMPSProject" />
                            </node>
                            <node concept="liA8E" id="5dMA8jjC03M" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7ctIhG_bUt1" role="3cqZAp">
                          <node concept="2OqwBi" id="7ctIhG_bUt2" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeujPn" role="2Oq$k0">
                              <ref role="3cqZAo" node="7ctIhG_bUtq" resolve="myReferencesView" />
                            </node>
                            <node concept="liA8E" id="7ctIhG_bUt4" role="2OqNvi">
                              <ref role="37wK5l" to="ngmm:~UsagesView.setContents(jetbrains.mps.ide.findusages.model.SearchResults)" resolve="setContents" />
                              <node concept="37vLTw" id="3GM_nagTwBe" role="37wK5m">
                                <ref role="3cqZAo" node="1OK1cKPCdrk" resolve="result" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_S7lA" role="2AJF6D">
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
    <node concept="2tJIrI" id="3JwmKU$OBAb" role="jymVt" />
    <node concept="3clFb_" id="3JwmKU$OECe" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="3JwmKU$OECg" role="3clF45" />
      <node concept="3Tm1VV" id="3JwmKU$OECh" role="1B3o_S" />
      <node concept="3clFbS" id="3JwmKU$OECi" role="3clF47">
        <node concept="3clFbF" id="3JwmKU$PwER" role="3cqZAp">
          <node concept="2OqwBi" id="3JwmKU$PzvJ" role="3clFbG">
            <node concept="37vLTw" id="3JwmKU$PwEP" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUtk" resolve="myInitTree" />
            </node>
            <node concept="liA8E" id="3JwmKU$PBrB" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTree.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JwmKU$OKjq" role="3cqZAp">
          <node concept="2OqwBi" id="3JwmKU$OOEW" role="3clFbG">
            <node concept="37vLTw" id="3JwmKU$OKjp" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUtn" resolve="myTargetsView" />
            </node>
            <node concept="liA8E" id="3JwmKU$ORIA" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JwmKU$OWx9" role="3cqZAp">
          <node concept="2OqwBi" id="3JwmKU$OYUD" role="3clFbG">
            <node concept="37vLTw" id="3JwmKU$OWx7" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUtq" resolve="myReferencesView" />
            </node>
            <node concept="liA8E" id="3JwmKU$P14I" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JwmKU$Pmsq" role="3cqZAp">
          <node concept="37vLTI" id="3JwmKU$Pq_K" role="3clFbG">
            <node concept="10Nm6u" id="3JwmKU$PqXw" role="37vLTx" />
            <node concept="37vLTw" id="3JwmKU$Pmso" role="37vLTJ">
              <ref role="3cqZAo" node="y5fyHoEGTc" resolve="myInitialScope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JwmKU$PcTW" role="3cqZAp">
          <node concept="37vLTI" id="3JwmKU$Pho9" role="3clFbG">
            <node concept="10Nm6u" id="3JwmKU$PhJT" role="37vLTx" />
            <node concept="37vLTw" id="3JwmKU$PcTU" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtw" resolve="myActiveScope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JwmKU$P6Il" role="3cqZAp">
          <node concept="37vLTI" id="3JwmKU$P7a5" role="3clFbG">
            <node concept="10Nm6u" id="3JwmKU$P7xP" role="37vLTx" />
            <node concept="37vLTw" id="3JwmKU$P6Ij" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUtH" resolve="myReferencesFinder" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqjozx" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUtc" role="jymVt">
      <property role="TrG5h" value="close" />
      <node concept="3cqZAl" id="7ctIhG_bUtd" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUte" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUtf" role="3clF47">
        <node concept="3SKdUt" id="3JwmKU$Oeeb" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorwK" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorwL" role="1PaTwD">
              <property role="3oM_SC" value="hides" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwM" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwN" role="1PaTwD">
              <property role="3oM_SC" value="tool" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwO" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwP" role="1PaTwD">
              <property role="3oM_SC" value="leaves" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwQ" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwR" role="1PaTwD">
              <property role="3oM_SC" value="button" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwS" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwT" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwU" role="1PaTwD">
              <property role="3oM_SC" value="buttons" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwV" role="1PaTwD">
              <property role="3oM_SC" value="strip" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUtg" role="3cqZAp">
          <node concept="2OqwBi" id="7ctIhG_bUth" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeung6" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUtE" resolve="myTool" />
            </node>
            <node concept="liA8E" id="7ctIhG_bUtj" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.close()" resolve="close" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqjrcY" role="jymVt" />
    <node concept="3clFb_" id="2ycpCH3WHy9" role="jymVt">
      <property role="TrG5h" value="createToolbar" />
      <node concept="3uibUv" id="2ycpCH3WIiF" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3Tm6S6" id="2ycpCH3WIiG" role="1B3o_S" />
      <node concept="3clFbS" id="2ycpCH3WHyc" role="3clF47">
        <node concept="3cpWs8" id="2ycpCH3WINS" role="3cqZAp">
          <node concept="3cpWsn" id="2ycpCH3WINT" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <node concept="3uibUv" id="2ycpCH3WINZ" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
            </node>
            <node concept="2ShNRf" id="2ycpCH3WINW" role="33vP2m">
              <node concept="1pGfFk" id="2ycpCH3WINY" role="2ShVmc">
                <ref role="37wK5l" to="qkt:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2ycpCH3WJ4V" role="3cqZAp">
          <node concept="2OqwBi" id="2ycpCH3WJ4X" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT_CC" role="2Oq$k0">
              <ref role="3cqZAo" node="2ycpCH3WINT" resolve="group" />
            </node>
            <node concept="liA8E" id="2ycpCH3WJ51" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="2ycpCH3WJ52" role="37wK5m">
                <node concept="1pGfFk" id="2ycpCH3WJ54" role="2ShVmc">
                  <ref role="37wK5l" node="2ycpCH3WIiL" resolve="DependenciesPanel.CloseAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5FQpjoIaKV$" role="3cqZAp">
          <node concept="2OqwBi" id="5FQpjoIaKV_" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTteh" role="2Oq$k0">
              <ref role="3cqZAo" node="2ycpCH3WINT" resolve="group" />
            </node>
            <node concept="liA8E" id="5FQpjoIaKVB" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="5FQpjoIaKVC" role="37wK5m">
                <node concept="1pGfFk" id="5FQpjoIaKVD" role="2ShVmc">
                  <ref role="37wK5l" node="y5fyHoEGSO" resolve="DependenciesPanel.RerunAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1byBclm9xIe" role="3cqZAp">
          <node concept="2OqwBi" id="1byBclm9xIw" role="3clFbG">
            <node concept="37vLTw" id="1byBclm9xIf" role="2Oq$k0">
              <ref role="3cqZAo" node="2ycpCH3WINT" resolve="group" />
            </node>
            <node concept="liA8E" id="1byBclm9xI_" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="1byBclm9xIA" role="37wK5m">
                <node concept="1pGfFk" id="1byBclm9xIE" role="2ShVmc">
                  <ref role="37wK5l" node="1byBclm9vU4" resolve="DependenciesPanel.ToggleUsedLanguages" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5DAN7nFi8Sa" role="3cqZAp">
          <node concept="2OqwBi" id="5DAN7nFi8Sb" role="3clFbG">
            <node concept="2OqwBi" id="5DAN7nFi8GJ" role="2Oq$k0">
              <node concept="2YIFZM" id="5DAN7nFi8GK" role="2Oq$k0">
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="5DAN7nFi8GL" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean)" resolve="createActionToolbar" />
                <node concept="10M0yZ" id="1V_XV5a8xSL" role="37wK5m">
                  <ref role="3cqZAo" to="qkt:~ActionPlaces.TOOLBAR" resolve="TOOLBAR" />
                  <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                </node>
                <node concept="37vLTw" id="3GM_nagTwoE" role="37wK5m">
                  <ref role="3cqZAo" node="2ycpCH3WINT" resolve="group" />
                </node>
                <node concept="3clFbT" id="5DAN7nFi8GO" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5DAN7nFi8Sf" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqJ0tE" role="jymVt" />
    <node concept="3clFb_" id="75BB0NbDJpI" role="jymVt">
      <property role="TrG5h" value="isMeta" />
      <node concept="10P_77" id="75BB0NbDJpJ" role="3clF45" />
      <node concept="3Tm1VV" id="75BB0NbDJpK" role="1B3o_S" />
      <node concept="3clFbS" id="75BB0NbDJpL" role="3clF47">
        <node concept="3clFbF" id="75BB0NbDJpM" role="3cqZAp">
          <node concept="37vLTw" id="75BB0NbDJpN" role="3clFbG">
            <ref role="3cqZAo" node="1byBclm9vEE" resolve="myIsMeta" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqIXBd" role="jymVt" />
    <node concept="312cEu" id="2ycpCH3WIiJ" role="jymVt">
      <property role="TrG5h" value="CloseAction" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="2ycpCH3WIiP" role="1B3o_S" />
      <node concept="3uibUv" id="2ycpCH3WIiQ" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
      </node>
      <node concept="3clFbW" id="2ycpCH3WIiL" role="jymVt">
        <node concept="3cqZAl" id="2ycpCH3WIiM" role="3clF45" />
        <node concept="3Tm1VV" id="2ycpCH3WIiN" role="1B3o_S" />
        <node concept="3clFbS" id="2ycpCH3WIiO" role="3clF47">
          <node concept="XkiVB" id="2ycpCH3WIiR" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="AnAction" />
            <node concept="Xl_RD" id="2ycpCH3WIiY" role="37wK5m">
              <property role="Xl_RC" value="Close" />
            </node>
            <node concept="Xl_RD" id="2ycpCH3WIiX" role="37wK5m">
              <property role="Xl_RC" value="Close dependencies viewer" />
            </node>
            <node concept="10M0yZ" id="6HCGxCXXC_S" role="37wK5m">
              <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
              <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Cancel" resolve="Cancel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2ycpCH3WIA9" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="actionPerformed" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="2ycpCH3WIAa" role="1B3o_S" />
        <node concept="3cqZAl" id="2ycpCH3WIAb" role="3clF45" />
        <node concept="37vLTG" id="2ycpCH3WIAc" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2ycpCH3WIAd" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="2ycpCH3WIAe" role="3clF47">
          <node concept="3clFbF" id="2ycpCH3WIAf" role="3cqZAp">
            <node concept="2OqwBi" id="2ycpCH3WIAh" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeug4m" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUtE" resolve="myTool" />
              </node>
              <node concept="liA8E" id="2ycpCH3WIAl" role="2OqNvi">
                <ref role="37wK5l" to="71xd:~BaseTool.setAvailable(boolean)" resolve="setAvailable" />
                <node concept="3clFbT" id="2ycpCH3WINP" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_SlzL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="68ETXARgjRb" role="jymVt" />
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
            <node concept="Rm8GO" id="68ETXARgs3h" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.EDT" resolve="EDT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6lFKwfyH6mo" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCr0Y4C" role="jymVt" />
    <node concept="312cEu" id="y5fyHoEGSM" role="jymVt">
      <property role="TrG5h" value="RerunAction" />
      <property role="2bfB8j" value="true" />
      <node concept="3uibUv" id="y5fyHoEGSW" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
      </node>
      <node concept="3clFbW" id="y5fyHoEGSO" role="jymVt">
        <node concept="3cqZAl" id="y5fyHoEGSP" role="3clF45" />
        <node concept="3Tm1VV" id="y5fyHoEGSQ" role="1B3o_S" />
        <node concept="3clFbS" id="y5fyHoEGSR" role="3clF47">
          <node concept="XkiVB" id="y5fyHoEGSS" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="AnAction" />
            <node concept="Xl_RD" id="y5fyHoEGST" role="37wK5m">
              <property role="Xl_RC" value="Rerun" />
            </node>
            <node concept="Xl_RD" id="y5fyHoEGSU" role="37wK5m">
              <property role="Xl_RC" value="Rerun dependencies viewer" />
            </node>
            <node concept="10M0yZ" id="4TMD6bSaxRO" role="37wK5m">
              <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
              <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Refresh" resolve="Refresh" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="y5fyHoEGSX" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="actionPerformed" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="y5fyHoEGSY" role="1B3o_S" />
        <node concept="3cqZAl" id="y5fyHoEGSZ" role="3clF45" />
        <node concept="37vLTG" id="y5fyHoEGT0" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="y5fyHoEGT1" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="y5fyHoEGT2" role="3clF47">
          <node concept="3clFbF" id="y5fyHoEGTm" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzhV4" role="3clFbG">
              <ref role="37wK5l" node="7ctIhG_bUoK" resolve="resetContent" />
              <node concept="1rXfSq" id="1O8DjCr0Pr2" role="37wK5m">
                <ref role="37wK5l" node="1O8DjCqZSQn" resolve="getInitialScope" />
              </node>
              <node concept="1rXfSq" id="1O8DjCr0VnC" role="37wK5m">
                <ref role="37wK5l" node="75BB0NbDJpI" resolve="isMeta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_Secz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1O8DjCr1j5c" role="1B3o_S" />
      <node concept="3clFb_" id="68ETXARguhG" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="68ETXARguhH" role="1B3o_S" />
        <node concept="2AHcQZ" id="68ETXARguhI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="68ETXARguhJ" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="68ETXARguhK" role="3clF47">
          <node concept="3clFbF" id="68ETXARguhL" role="3cqZAp">
            <node concept="Rm8GO" id="68ETXARgzTS" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.EDT" resolve="EDT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="68ETXARguhM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCr10OG" role="jymVt" />
    <node concept="312cEu" id="1byBclm9vU2" role="jymVt">
      <property role="TrG5h" value="ToggleUsedLanguages" />
      <property role="2bfB8j" value="true" />
      <node concept="3uibUv" id="1byBclm9vUm" role="1zkMxy">
        <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
      </node>
      <node concept="3clFbW" id="1byBclm9vU4" role="jymVt">
        <node concept="3cqZAl" id="1byBclm9vU5" role="3clF45" />
        <node concept="3Tm1VV" id="1byBclm9vU6" role="1B3o_S" />
        <node concept="3clFbS" id="1byBclm9vU7" role="3clF47">
          <node concept="XkiVB" id="1byBclm9vVp" role="3cqZAp">
            <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="ToggleAction" />
            <node concept="Xl_RD" id="1byBclm9vVq" role="37wK5m">
              <property role="Xl_RC" value="Show used languages" />
            </node>
            <node concept="Xl_RD" id="1byBclm9vV$" role="37wK5m">
              <property role="Xl_RC" value="Show used languages" />
            </node>
            <node concept="10M0yZ" id="7i5TpYajrBc" role="37wK5m">
              <ref role="1PxDUh" to="l7us:~MPSIcons$Nodes" resolve="MPSIcons.Nodes" />
              <ref role="3cqZAo" to="l7us:~MPSIcons$Nodes.Language" resolve="Language" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1byBclm9vUn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isSelected" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="1byBclm9vUo" role="1B3o_S" />
        <node concept="10P_77" id="1byBclm9vUp" role="3clF45" />
        <node concept="37vLTG" id="1byBclm9vUq" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="1byBclm9vUr" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="1byBclm9vUs" role="3clF47">
          <node concept="3clFbF" id="1byBclm9vUB" role="3cqZAp">
            <node concept="37vLTw" id="1byBclm9vUC" role="3clFbG">
              <ref role="3cqZAo" node="1byBclm9vEE" resolve="myIsMeta" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UAES" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1byBclm9vUv" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setSelected" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="1byBclm9vUw" role="1B3o_S" />
        <node concept="3cqZAl" id="1byBclm9vUx" role="3clF45" />
        <node concept="37vLTG" id="1byBclm9vUy" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="1byBclm9vUz" role="1tU5fm">
            <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
          </node>
        </node>
        <node concept="37vLTG" id="1byBclm9vU$" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="10P_77" id="1byBclm9vU_" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1byBclm9vUA" role="3clF47">
          <node concept="3clFbF" id="1byBclm9vVk" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzg_Q" role="3clFbG">
              <ref role="37wK5l" node="7ctIhG_bUoK" resolve="resetContent" />
              <node concept="1rXfSq" id="1O8DjCr0SY7" role="37wK5m">
                <ref role="37wK5l" node="1O8DjCqZSQn" resolve="getInitialScope" />
              </node>
              <node concept="37vLTw" id="50XZ6iwxnQL" role="37wK5m">
                <ref role="3cqZAo" node="1byBclm9vU$" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UAER" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1O8DjCr1lNG" role="1B3o_S" />
      <node concept="3clFb_" id="68ETXARgArz" role="jymVt">
        <property role="TrG5h" value="getActionUpdateThread" />
        <node concept="3Tm1VV" id="68ETXARgAr$" role="1B3o_S" />
        <node concept="2AHcQZ" id="68ETXARgAr_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="68ETXARgArA" role="3clF45">
          <ref role="3uigEE" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
        </node>
        <node concept="3clFbS" id="68ETXARgArB" role="3clF47">
          <node concept="3clFbF" id="68ETXARgArC" role="3cqZAp">
            <node concept="Rm8GO" id="68ETXARgEYK" role="3clFbG">
              <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.EDT" resolve="EDT" />
              <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="68ETXARgArD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ctIhG_bUtX">
    <property role="TrG5h" value="DependencyTree2" />
    <property role="3GE5qa" value="view2" />
    <node concept="3Tm1VV" id="7ctIhG_bUwd" role="1B3o_S" />
    <node concept="3uibUv" id="7ctIhG_bUws" role="1zkMxy">
      <ref role="3uigEE" to="7e8u:~MPSTree" resolve="MPSTree" />
    </node>
    <node concept="312cEg" id="7ctIhG_bUwa" role="jymVt">
      <property role="TrG5h" value="myParent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ctIhG_bUwb" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bUwc" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUoJ" resolve="DependenciesPanel" />
      </node>
    </node>
    <node concept="312cEg" id="7ctIhG_bUw4" role="jymVt">
      <property role="TrG5h" value="myScope" />
      <node concept="3Tm6S6" id="7ctIhG_bUw5" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bUw6" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqy0Hl" role="jymVt" />
    <node concept="3clFbW" id="7ctIhG_bUwe" role="jymVt">
      <node concept="3cqZAl" id="7ctIhG_bUwf" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUwg" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUwh" role="3clF47">
        <node concept="3clFbF" id="7ctIhG_bUwi" role="3cqZAp">
          <node concept="37vLTI" id="7ctIhG_bUwj" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm9Dh" role="37vLTx">
              <ref role="3cqZAo" node="7ctIhG_bUwq" resolve="parent" />
            </node>
            <node concept="37vLTw" id="2BHiRxeul9c" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUwa" resolve="myParent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUwm" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8Sm" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JTree.addTreeSelectionListener(javax.swing.event.TreeSelectionListener)" resolve="addTreeSelectionListener" />
            <node concept="2ShNRf" id="7ctIhG_bUwo" role="37wK5m">
              <node concept="1pGfFk" id="7ctIhG_bUwp" role="2ShVmc">
                <ref role="37wK5l" node="7ctIhG_bUu0" resolve="DependencyTree2.MyTreeSelectionListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUwq" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="7ctIhG_bUwr" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUoJ" resolve="DependenciesPanel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqy51C" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUwt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="rebuild" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="7ctIhG_bUwu" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bUwv" role="3clF45">
        <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
      </node>
      <node concept="3clFbS" id="7ctIhG_bUww" role="3clF47">
        <node concept="3cpWs8" id="7ctIhG_bUwx" role="3cqZAp">
          <node concept="3cpWsn" id="7ctIhG_bUwy" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="1spbKcFVj3C" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~TextTreeNode" resolve="TextTreeNode" />
            </node>
            <node concept="2ShNRf" id="7ctIhG_bUw$" role="33vP2m">
              <node concept="1pGfFk" id="7ctIhG_bUw_" role="2ShVmc">
                <ref role="37wK5l" to="7e8u:~TextTreeNode.&lt;init&gt;(java.lang.String)" resolve="TextTreeNode" />
                <node concept="Xl_RD" id="7ctIhG_bUwA" role="37wK5m">
                  <property role="Xl_RC" value="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2574WfmZkGr" role="3cqZAp">
          <node concept="3clFbS" id="2574WfmZkGt" role="3clFbx">
            <node concept="1DcWWT" id="7ctIhG_bUwC" role="3cqZAp">
              <node concept="3clFbS" id="7ctIhG_bUwD" role="2LFqv$">
                <node concept="3clFbF" id="7ctIhG_bUwE" role="3cqZAp">
                  <node concept="2OqwBi" id="7ctIhG_bUwF" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTzVd" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUwy" resolve="root" />
                    </node>
                    <node concept="liA8E" id="7ctIhG_bUwH" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="2YIFZM" id="3PdnAUCuuPj" role="37wK5m">
                        <ref role="37wK5l" to="kxvg:~ProjectModuleTreeNode.createFor(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.module.SModule)" resolve="createFor" />
                        <ref role="1Pybhc" to="kxvg:~ProjectModuleTreeNode" resolve="ProjectModuleTreeNode" />
                        <node concept="2OqwBi" id="1O8DjCqyiw6" role="37wK5m">
                          <node concept="37vLTw" id="1O8DjCqyaSb" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ctIhG_bUwa" resolve="myParent" />
                          </node>
                          <node concept="liA8E" id="1O8DjCqyocr" role="2OqNvi">
                            <ref role="37wK5l" node="1O8DjCqxdGf" resolve="getProject" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3GM_nagTstd" role="37wK5m">
                          <ref role="3cqZAo" node="7ctIhG_bUwL" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7ctIhG_bUwL" role="1Duv9x">
                <property role="TrG5h" value="module" />
                <node concept="3uibUv" id="2eVlusX5OmA" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ctIhG_bUwN" role="1DdaDG">
                <node concept="37vLTw" id="2BHiRxeujSZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUw4" resolve="myScope" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUwP" role="2OqNvi">
                  <ref role="37wK5l" node="7ctIhG_bUHv" resolve="getModules" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7_zYD8_pYeg" role="3cqZAp">
              <node concept="3cpWsn" id="7_zYD8_pYeh" role="3cpWs9">
                <property role="TrG5h" value="modelText" />
                <node concept="3uibUv" id="7_zYD8_pYei" role="1tU5fm">
                  <ref role="3uigEE" to="xr52:~SModelTreeNode$LongModelNameText" resolve="SModelTreeNode.LongModelNameText" />
                </node>
                <node concept="2ShNRf" id="7_zYD8_pZiH" role="33vP2m">
                  <node concept="1pGfFk" id="7_zYD8_qbiA" role="2ShVmc">
                    <ref role="37wK5l" to="xr52:~SModelTreeNode$LongModelNameText.&lt;init&gt;()" resolve="SModelTreeNode.LongModelNameText" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="7ctIhG_bUwQ" role="3cqZAp">
              <node concept="3clFbS" id="7ctIhG_bUwR" role="2LFqv$">
                <node concept="3clFbF" id="7ctIhG_bUx5" role="3cqZAp">
                  <node concept="2OqwBi" id="7ctIhG_bUx6" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTyQe" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUwy" resolve="root" />
                    </node>
                    <node concept="liA8E" id="7ctIhG_bUx8" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="2ShNRf" id="7_zYD8_qcCH" role="37wK5m">
                        <node concept="1pGfFk" id="7_zYD8_qcCI" role="2ShVmc">
                          <ref role="37wK5l" to="xr52:~SModelTreeNode.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,jetbrains.mps.ide.ui.tree.TreeNodeTextSource)" resolve="SModelTreeNode" />
                          <node concept="37vLTw" id="7_zYD8_qcCJ" role="37wK5m">
                            <ref role="3cqZAo" node="7ctIhG_bUxa" resolve="model" />
                          </node>
                          <node concept="37vLTw" id="7_zYD8_qcCK" role="37wK5m">
                            <ref role="3cqZAo" node="7_zYD8_pYeh" resolve="modelText" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7ctIhG_bUxa" role="1Duv9x">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="2eVlusX5OmB" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ctIhG_bUxc" role="1DdaDG">
                <node concept="37vLTw" id="2BHiRxeu_BA" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUw4" resolve="myScope" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUxe" role="2OqNvi">
                  <ref role="37wK5l" node="7ctIhG_bUHo" resolve="getModels" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="7ctIhG_bUxf" role="3cqZAp">
              <node concept="3clFbS" id="7ctIhG_bUxg" role="2LFqv$">
                <node concept="3clFbF" id="7ctIhG_bUxy" role="3cqZAp">
                  <node concept="2OqwBi" id="7ctIhG_bUxz" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTtqI" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUwy" resolve="root" />
                    </node>
                    <node concept="liA8E" id="7ctIhG_bUx_" role="2OqNvi">
                      <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode)" resolve="add" />
                      <node concept="2ShNRf" id="7_zYD8_qcFf" role="37wK5m">
                        <node concept="1pGfFk" id="7_zYD8_qcFg" role="2ShVmc">
                          <ref role="37wK5l" to="xr52:~SNodeTreeNode.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="SNodeTreeNode" />
                          <node concept="37vLTw" id="7_zYD8_qcFh" role="37wK5m">
                            <ref role="3cqZAo" node="7ctIhG_bUxB" resolve="node" />
                          </node>
                          <node concept="10Nm6u" id="7_zYD8_qcFi" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7ctIhG_bUxB" role="1Duv9x">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="2eVlusX5OmC" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ctIhG_bUxD" role="1DdaDG">
                <node concept="37vLTw" id="2BHiRxeujU4" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUw4" resolve="myScope" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUxF" role="2OqNvi">
                  <ref role="37wK5l" node="7ctIhG_bUHA" resolve="getRoots" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2574WfmZpEG" role="3clFbw">
            <node concept="10Nm6u" id="2574WfmZscT" role="3uHU7w" />
            <node concept="37vLTw" id="2574WfmZn2M" role="3uHU7B">
              <ref role="3cqZAo" node="7ctIhG_bUw4" resolve="myScope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUxG" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz5_g" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JTree.setRootVisible(boolean)" resolve="setRootVisible" />
            <node concept="3clFbT" id="7ctIhG_bUxI" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUxJ" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz96A" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JTree.setShowsRootHandles(boolean)" resolve="setShowsRootHandles" />
            <node concept="3clFbT" id="7ctIhG_bUxL" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUxM" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTu7j" role="3clFbG">
            <ref role="3cqZAo" node="7ctIhG_bUwy" resolve="root" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UnMN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqyuMX" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUxO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createPopupActionGroup" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="7ctIhG_bUxP" role="1B3o_S" />
      <node concept="3uibUv" id="1F70I3uKqNm" role="3clF45">
        <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
      </node>
      <node concept="37vLTG" id="7ctIhG_bUxR" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7ctIhG_bUxS" role="1tU5fm">
          <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
        </node>
      </node>
      <node concept="3clFbS" id="7ctIhG_bUxT" role="3clF47">
        <node concept="3cpWs6" id="7ctIhG_bUxU" role="3cqZAp">
          <node concept="10Nm6u" id="7ctIhG_bUxV" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7ctIhG_bUxW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqyzca" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUxX" role="jymVt">
      <property role="TrG5h" value="setContent" />
      <node concept="37vLTG" id="7ctIhG_bUxY" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="7ctIhG_bUxZ" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ctIhG_bUy2" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUy3" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUy4" role="3clF47">
        <node concept="3clFbF" id="7ctIhG_bUy5" role="3cqZAp">
          <node concept="37vLTI" id="7ctIhG_bUy6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm9Kh" role="37vLTx">
              <ref role="3cqZAo" node="7ctIhG_bUxY" resolve="scope" />
            </node>
            <node concept="37vLTw" id="2BHiRxeun4y" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUw4" resolve="myScope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUyd" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzbYA" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTree.rebuildLater()" resolve="rebuildLater" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqyBAw" role="jymVt" />
    <node concept="312cEu" id="7ctIhG_bUtY" role="jymVt">
      <property role="TrG5h" value="MyTreeSelectionListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="1spbKcFVlXE" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bUu4" role="EKbjA">
        <ref role="3uigEE" to="gsia:~TreeSelectionListener" resolve="TreeSelectionListener" />
      </node>
      <node concept="3clFbW" id="7ctIhG_bUu0" role="jymVt">
        <node concept="3cqZAl" id="7ctIhG_bUu1" role="3clF45" />
        <node concept="3Tm1VV" id="7ctIhG_bUu2" role="1B3o_S" />
        <node concept="3clFbS" id="7ctIhG_bUu3" role="3clF47" />
      </node>
      <node concept="3clFb_" id="7ctIhG_bUu5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="valueChanged" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7ctIhG_bUu6" role="1B3o_S" />
        <node concept="3cqZAl" id="7ctIhG_bUu7" role="3clF45" />
        <node concept="37vLTG" id="7ctIhG_bUu8" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="7ctIhG_bUu9" role="1tU5fm">
            <ref role="3uigEE" to="gsia:~TreeSelectionEvent" resolve="TreeSelectionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="7ctIhG_bUua" role="3clF47">
          <node concept="3cpWs8" id="7ctIhG_bUub" role="3cqZAp">
            <node concept="3cpWsn" id="7ctIhG_bUuc" role="3cpWs9">
              <property role="TrG5h" value="paths" />
              <node concept="10Q1$e" id="7ctIhG_bUud" role="1tU5fm">
                <node concept="3uibUv" id="7ctIhG_bUue" role="10Q1$1">
                  <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyyYd2" role="33vP2m">
                <ref role="37wK5l" to="dxuu:~JTree.getSelectionPaths()" resolve="getSelectionPaths" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7ctIhG_bUug" role="3cqZAp">
            <node concept="3clFbS" id="7ctIhG_bUuh" role="3clFbx">
              <node concept="3cpWs6" id="7ctIhG_bUui" role="3cqZAp" />
            </node>
            <node concept="22lmx$" id="7ctIhG_bUuj" role="3clFbw">
              <node concept="3clFbC" id="7ctIhG_bUuk" role="3uHU7w">
                <node concept="3cmrfG" id="7ctIhG_bUul" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="7ctIhG_bUum" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagT_hJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUuc" resolve="paths" />
                  </node>
                  <node concept="1Rwk04" id="7ctIhG_bUuo" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbC" id="7ctIhG_bUup" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTvpl" role="3uHU7B">
                  <ref role="3cqZAo" node="7ctIhG_bUuc" resolve="paths" />
                </node>
                <node concept="10Nm6u" id="7ctIhG_bUur" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1O8DjCqzmqN" role="3cqZAp">
            <node concept="3cpWsn" id="1O8DjCqzmqO" role="3cpWs9">
              <property role="TrG5h" value="projectRepo" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="1O8DjCqzmqk" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
              <node concept="2OqwBi" id="1O8DjCqzmqP" role="33vP2m">
                <node concept="2OqwBi" id="1O8DjCqzmqQ" role="2Oq$k0">
                  <node concept="37vLTw" id="1O8DjCqzmqR" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUwa" resolve="myParent" />
                  </node>
                  <node concept="liA8E" id="1O8DjCqzmqS" role="2OqNvi">
                    <ref role="37wK5l" node="1O8DjCqxdGf" resolve="getProject" />
                  </node>
                </node>
                <node concept="liA8E" id="1O8DjCqzmqT" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7ctIhG_bUus" role="3cqZAp">
            <node concept="3cpWsn" id="7ctIhG_bUut" role="3cpWs9">
              <property role="TrG5h" value="scope" />
              <node concept="3uibUv" id="7ctIhG_bUuu" role="1tU5fm">
                <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
              </node>
              <node concept="2ShNRf" id="7ctIhG_bUuv" role="33vP2m">
                <node concept="1pGfFk" id="7ctIhG_bUuw" role="2ShVmc">
                  <ref role="37wK5l" node="1GSGqPi_5T0" resolve="DependencyViewerScope" />
                  <node concept="37vLTw" id="1O8DjCqzmqU" role="37wK5m">
                    <ref role="3cqZAo" node="1O8DjCqzmqO" resolve="projectRepo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1KUoCipvyjs" role="3cqZAp">
            <node concept="2OqwBi" id="1KUoCipvyjt" role="3clFbG">
              <node concept="2OqwBi" id="5dMA8jj_$s4" role="2Oq$k0">
                <node concept="37vLTw" id="1O8DjCqzRIu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1O8DjCqzmqO" resolve="projectRepo" />
                </node>
                <node concept="liA8E" id="5dMA8jj__pX" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="1KUoCipvyjv" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="1KUoCipvyjw" role="37wK5m">
                  <node concept="3clFbS" id="1KUoCipvyjx" role="1bW5cS">
                    <node concept="1DcWWT" id="1KUoCipvyjy" role="3cqZAp">
                      <node concept="3clFbS" id="1KUoCipvyjz" role="2LFqv$">
                        <node concept="3cpWs8" id="1KUoCipvyj$" role="3cqZAp">
                          <node concept="3cpWsn" id="1KUoCipvyj_" role="3cpWs9">
                            <property role="TrG5h" value="node" />
                            <node concept="3uibUv" id="1KUoCipvyjA" role="1tU5fm">
                              <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                            </node>
                            <node concept="10QFUN" id="1KUoCipvyjB" role="33vP2m">
                              <node concept="3uibUv" id="1KUoCipvyjC" role="10QFUM">
                                <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
                              </node>
                              <node concept="2OqwBi" id="1KUoCipvyjD" role="10QFUP">
                                <node concept="37vLTw" id="3GM_nagTBvg" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KUoCipvylh" resolve="path" />
                                </node>
                                <node concept="liA8E" id="1KUoCipvyjF" role="2OqNvi">
                                  <ref role="37wK5l" to="rgfa:~TreePath.getLastPathComponent()" resolve="getLastPathComponent" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KUoCipvyjG" role="3cqZAp">
                          <node concept="3clFbS" id="1KUoCipvyjH" role="3clFbx">
                            <node concept="3clFbF" id="1KUoCipvyjI" role="3cqZAp">
                              <node concept="2OqwBi" id="1KUoCipvyjJ" role="3clFbG">
                                <node concept="37vLTw" id="3GM_nagTzro" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7ctIhG_bUut" resolve="scope" />
                                </node>
                                <node concept="liA8E" id="1KUoCipvyjL" role="2OqNvi">
                                  <ref role="37wK5l" node="7ctIhG_bUGM" resolve="add" />
                                  <node concept="2OqwBi" id="1KUoCipvyjM" role="37wK5m">
                                    <node concept="1eOMI4" id="1KUoCipvyjN" role="2Oq$k0">
                                      <node concept="10QFUN" id="1KUoCipvyjO" role="1eOMHV">
                                        <node concept="3uibUv" id="1KUoCipvyjP" role="10QFUM">
                                          <ref role="3uigEE" to="xr52:~SModelTreeNode" resolve="SModelTreeNode" />
                                        </node>
                                        <node concept="37vLTw" id="3GM_nagTsI7" role="10QFUP">
                                          <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1KUoCipvyjR" role="2OqNvi">
                                      <ref role="37wK5l" to="xr52:~SModelTreeNode.getModel()" resolve="getModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="1KUoCipvyjS" role="3clFbw">
                            <node concept="3uibUv" id="1KUoCipvyjT" role="2ZW6by">
                              <ref role="3uigEE" to="xr52:~SModelTreeNode" resolve="SModelTreeNode" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTBoq" role="2ZW6bz">
                              <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KUoCipvyjV" role="3cqZAp">
                          <node concept="3clFbS" id="1KUoCipvyjW" role="3clFbx">
                            <node concept="3clFbF" id="1KUoCipvyjX" role="3cqZAp">
                              <node concept="2OqwBi" id="1KUoCipvyjY" role="3clFbG">
                                <node concept="37vLTw" id="3GM_nagT_lt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7ctIhG_bUut" resolve="scope" />
                                </node>
                                <node concept="liA8E" id="1KUoCipvyk0" role="2OqNvi">
                                  <ref role="37wK5l" node="7ctIhG_bUGB" resolve="add" />
                                  <node concept="2OqwBi" id="1KUoCipvyk1" role="37wK5m">
                                    <node concept="1eOMI4" id="1KUoCipvyk2" role="2Oq$k0">
                                      <node concept="10QFUN" id="1KUoCipvyk3" role="1eOMHV">
                                        <node concept="3uibUv" id="1KUoCipvyk4" role="10QFUM">
                                          <ref role="3uigEE" to="kxvg:~ProjectModuleTreeNode" resolve="ProjectModuleTreeNode" />
                                        </node>
                                        <node concept="37vLTw" id="3GM_nagTto1" role="10QFUP">
                                          <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1KUoCipvyk6" role="2OqNvi">
                                      <ref role="37wK5l" to="kxvg:~ProjectModuleTreeNode.getModule()" resolve="getModule" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="1KUoCipvyk7" role="3clFbw">
                            <node concept="3uibUv" id="1KUoCipvyk8" role="2ZW6by">
                              <ref role="3uigEE" to="kxvg:~ProjectModuleTreeNode" resolve="ProjectModuleTreeNode" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTst1" role="2ZW6bz">
                              <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KUoCipvyka" role="3cqZAp">
                          <node concept="3clFbS" id="1KUoCipvykb" role="3clFbx">
                            <node concept="3clFbF" id="1KUoCipvykc" role="3cqZAp">
                              <node concept="2OqwBi" id="1KUoCipvykd" role="3clFbG">
                                <node concept="37vLTw" id="3GM_nagTzXy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7ctIhG_bUut" resolve="scope" />
                                </node>
                                <node concept="liA8E" id="1KUoCipvykf" role="2OqNvi">
                                  <ref role="37wK5l" node="7ctIhG_bUH5" resolve="add" />
                                  <node concept="2OqwBi" id="1KUoCipvykg" role="37wK5m">
                                    <node concept="1eOMI4" id="1KUoCipvykh" role="2Oq$k0">
                                      <node concept="10QFUN" id="1KUoCipvyki" role="1eOMHV">
                                        <node concept="3uibUv" id="1KUoCipvykj" role="10QFUM">
                                          <ref role="3uigEE" to="xr52:~SNodeTreeNode" resolve="SNodeTreeNode" />
                                        </node>
                                        <node concept="37vLTw" id="3GM_nagTzzq" role="10QFUP">
                                          <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1KUoCipvykl" role="2OqNvi">
                                      <ref role="37wK5l" to="xr52:~SNodeTreeNode.getSNode()" resolve="getSNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="1KUoCipvykm" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTAJt" role="2ZW6bz">
                              <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                            </node>
                            <node concept="3uibUv" id="1KUoCipvyko" role="2ZW6by">
                              <ref role="3uigEE" to="xr52:~SNodeTreeNode" resolve="SNodeTreeNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KUoCipvykp" role="3cqZAp">
                          <node concept="3clFbS" id="1KUoCipvykq" role="3clFbx">
                            <node concept="1DcWWT" id="1KUoCipvykr" role="3cqZAp">
                              <node concept="3clFbS" id="1KUoCipvyks" role="2LFqv$">
                                <node concept="3clFbF" id="1KUoCipvykt" role="3cqZAp">
                                  <node concept="2OqwBi" id="1KUoCipvyku" role="3clFbG">
                                    <node concept="37vLTw" id="3GM_nagTB92" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7ctIhG_bUut" resolve="scope" />
                                    </node>
                                    <node concept="liA8E" id="1KUoCipvykw" role="2OqNvi">
                                      <ref role="37wK5l" node="7ctIhG_bUGB" resolve="add" />
                                      <node concept="37vLTw" id="3GM_nagTvoX" role="37wK5m">
                                        <ref role="3cqZAo" node="1KUoCipvyky" resolve="module" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="1KUoCipvyky" role="1Duv9x">
                                <property role="TrG5h" value="module" />
                                <node concept="3uibUv" id="1KUoCipvykz" role="1tU5fm">
                                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1KUoCipvyk$" role="1DdaDG">
                                <node concept="1eOMI4" id="1KUoCipvyk_" role="2Oq$k0">
                                  <node concept="10QFUN" id="1KUoCipvykA" role="1eOMHV">
                                    <node concept="3uibUv" id="1KUoCipvykB" role="10QFUM">
                                      <ref role="3uigEE" to="kxvg:~NamespaceTextNode" resolve="NamespaceTextNode" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTtA8" role="10QFUP">
                                      <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1KUoCipvykD" role="2OqNvi">
                                  <ref role="37wK5l" to="kxvg:~NamespaceTextNode.getModulesUnder()" resolve="getModulesUnder" />
                                </node>
                              </node>
                            </node>
                            <node concept="1DcWWT" id="1KUoCipvykE" role="3cqZAp">
                              <node concept="3clFbS" id="1KUoCipvykF" role="2LFqv$">
                                <node concept="3clFbF" id="1KUoCipvykG" role="3cqZAp">
                                  <node concept="2OqwBi" id="1KUoCipvykH" role="3clFbG">
                                    <node concept="37vLTw" id="3GM_nagT$sp" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7ctIhG_bUut" resolve="scope" />
                                    </node>
                                    <node concept="liA8E" id="1KUoCipvykJ" role="2OqNvi">
                                      <ref role="37wK5l" node="7ctIhG_bUGM" resolve="add" />
                                      <node concept="37vLTw" id="3GM_nagTy1_" role="37wK5m">
                                        <ref role="3cqZAo" node="1KUoCipvykL" resolve="model" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="1KUoCipvykL" role="1Duv9x">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="1KUoCipvykM" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1KUoCipvykN" role="1DdaDG">
                                <node concept="1eOMI4" id="1KUoCipvykO" role="2Oq$k0">
                                  <node concept="10QFUN" id="1KUoCipvykP" role="1eOMHV">
                                    <node concept="3uibUv" id="1KUoCipvykQ" role="10QFUM">
                                      <ref role="3uigEE" to="kxvg:~NamespaceTextNode" resolve="NamespaceTextNode" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTxUr" role="10QFUP">
                                      <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1KUoCipvykS" role="2OqNvi">
                                  <ref role="37wK5l" to="kxvg:~NamespaceTextNode.getModelsUnder()" resolve="getModelsUnder" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="1KUoCipvykT" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTvM3" role="2ZW6bz">
                              <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                            </node>
                            <node concept="3uibUv" id="1KUoCipvykV" role="2ZW6by">
                              <ref role="3uigEE" to="kxvg:~NamespaceTextNode" resolve="NamespaceTextNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KUoCipvykW" role="3cqZAp">
                          <node concept="3clFbS" id="1KUoCipvykX" role="3clFbx">
                            <node concept="1DcWWT" id="1KUoCipvykY" role="3cqZAp">
                              <node concept="3clFbS" id="1KUoCipvykZ" role="2LFqv$">
                                <node concept="3clFbF" id="1KUoCipvyl0" role="3cqZAp">
                                  <node concept="2OqwBi" id="1KUoCipvyl1" role="3clFbG">
                                    <node concept="37vLTw" id="3GM_nagT$Fc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7ctIhG_bUut" resolve="scope" />
                                    </node>
                                    <node concept="liA8E" id="1KUoCipvyl3" role="2OqNvi">
                                      <ref role="37wK5l" node="7ctIhG_bUH5" resolve="add" />
                                      <node concept="37vLTw" id="3GM_nagTAjF" role="37wK5m">
                                        <ref role="3cqZAo" node="1KUoCipvyl5" resolve="nodeUnder" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWsn" id="1KUoCipvyl5" role="1Duv9x">
                                <property role="TrG5h" value="nodeUnder" />
                                <node concept="3uibUv" id="1KUoCipvyl6" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1KUoCipvyl7" role="1DdaDG">
                                <node concept="1eOMI4" id="1KUoCipvyl8" role="2Oq$k0">
                                  <node concept="10QFUN" id="1KUoCipvyl9" role="1eOMHV">
                                    <node concept="3uibUv" id="1KUoCipvyla" role="10QFUM">
                                      <ref role="3uigEE" to="xr52:~PackageNode" resolve="PackageNode" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagT$Qj" role="10QFUP">
                                      <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="1KUoCipvylc" role="2OqNvi">
                                  <ref role="37wK5l" to="xr52:~PackageNode.getNodesUnderPackage()" resolve="getNodesUnderPackage" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="1KUoCipvyld" role="3clFbw">
                            <node concept="3uibUv" id="1KUoCipvyle" role="2ZW6by">
                              <ref role="3uigEE" to="xr52:~PackageNode" resolve="PackageNode" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTrLE" role="2ZW6bz">
                              <ref role="3cqZAo" node="1KUoCipvyj_" resolve="node" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="1KUoCipvylg" role="3cqZAp" />
                      </node>
                      <node concept="3cpWsn" id="1KUoCipvylh" role="1Duv9x">
                        <property role="TrG5h" value="path" />
                        <node concept="3uibUv" id="1KUoCipvyli" role="1tU5fm">
                          <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTBPy" role="1DdaDG">
                        <ref role="3cqZAo" node="7ctIhG_bUuc" resolve="paths" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ctIhG_bUvZ" role="3cqZAp">
            <node concept="2OqwBi" id="7ctIhG_bUw0" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeusxt" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUwa" resolve="myParent" />
              </node>
              <node concept="liA8E" id="7ctIhG_bUw2" role="2OqNvi">
                <ref role="37wK5l" node="7ctIhG_bUr7" resolve="updateTargetsView" />
                <node concept="37vLTw" id="3GM_nagTBQt" role="37wK5m">
                  <ref role="3cqZAo" node="7ctIhG_bUut" resolve="scope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_Uq26" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7BRTBHCfCfK" role="jymVt" />
    <node concept="3clFb_" id="7TKpiq3Xk7_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doInit" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tmbuc" id="7TKpiq3Xk7A" role="1B3o_S" />
      <node concept="3cqZAl" id="7TKpiq3Xk7B" role="3clF45" />
      <node concept="37vLTG" id="7TKpiq3Xk7C" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7TKpiq3Xk7D" role="1tU5fm">
          <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7TKpiq3Xk7E" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="3uibUv" id="7TKpiq3Xk7F" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="7TKpiq3Xk7G" role="3clF47">
        <node concept="3clFbF" id="7TKpiq3Xk7H" role="3cqZAp">
          <node concept="3nyPlj" id="7TKpiq3Xk7I" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTree.doInit(jetbrains.mps.ide.ui.tree.MPSTreeNode,java.lang.Runnable)" resolve="doInit" />
            <node concept="37vLTw" id="7TKpiq3Xk7J" role="37wK5m">
              <ref role="3cqZAo" node="7TKpiq3Xk7C" resolve="node" />
            </node>
            <node concept="2ShNRf" id="7TKpiq3Xk7K" role="37wK5m">
              <node concept="1pGfFk" id="7TKpiq3Xk7L" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess,java.lang.Runnable)" resolve="ModelReadRunnable" />
                <node concept="2OqwBi" id="1TDFu3GjyA1" role="37wK5m">
                  <node concept="2OqwBi" id="1O8DjCq$9ox" role="2Oq$k0">
                    <node concept="37vLTw" id="1O8DjCq$3uh" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUwa" resolve="myParent" />
                    </node>
                    <node concept="liA8E" id="1O8DjCq$fbe" role="2OqNvi">
                      <ref role="37wK5l" node="1O8DjCqxdGf" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1TDFu3GjyEW" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="37vLTw" id="7TKpiq3Xk7M" role="37wK5m">
                  <ref role="3cqZAo" node="7TKpiq3Xk7E" resolve="runnable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7TKpiq3Xk7N" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1TDFu3GjtcG" role="jymVt" />
    <node concept="3clFb_" id="7BRTBHCffZG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runRebuildAction" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tmbuc" id="7BRTBHCffZH" role="1B3o_S" />
      <node concept="3cqZAl" id="7BRTBHCffZJ" role="3clF45" />
      <node concept="37vLTG" id="7BRTBHCffZK" role="3clF46">
        <property role="TrG5h" value="rebuildAction" />
        <node concept="3uibUv" id="7BRTBHCffZL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="37vLTG" id="7BRTBHCffZM" role="3clF46">
        <property role="TrG5h" value="saveExpansion" />
        <node concept="10P_77" id="7BRTBHCffZN" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7BRTBHCffZO" role="3clF47">
        <node concept="3clFbF" id="7BRTBHCffZT" role="3cqZAp">
          <node concept="3nyPlj" id="7BRTBHCffZS" role="3clFbG">
            <ref role="37wK5l" to="7e8u:~MPSTree.runRebuildAction(java.lang.Runnable,boolean)" resolve="runRebuildAction" />
            <node concept="2ShNRf" id="7BRTBHCfpba" role="37wK5m">
              <node concept="1pGfFk" id="7BRTBHCfweg" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelReadRunnable.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess,java.lang.Runnable)" resolve="ModelReadRunnable" />
                <node concept="2OqwBi" id="7BRTBHCfzS0" role="37wK5m">
                  <node concept="liA8E" id="7BRTBHCf$im" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                  <node concept="2OqwBi" id="1O8DjCq$ktM" role="2Oq$k0">
                    <node concept="37vLTw" id="1O8DjCq$ktN" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUwa" resolve="myParent" />
                    </node>
                    <node concept="liA8E" id="1O8DjCq$ktO" role="2OqNvi">
                      <ref role="37wK5l" node="1O8DjCqxdGf" resolve="getProject" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7BRTBHCfC5k" role="37wK5m">
                  <ref role="3cqZAo" node="7BRTBHCffZK" resolve="rebuildAction" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7BRTBHCffZR" role="37wK5m">
              <ref role="3cqZAo" node="7BRTBHCffZM" resolve="saveExpansion" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7BRTBHCffZP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ctIhG_bUEK">
    <property role="TrG5h" value="DependencyViewerScope" />
    <property role="3GE5qa" value="view2" />
    <node concept="3Tm1VV" id="7ctIhG_bULc" role="1B3o_S" />
    <node concept="312cEg" id="7ctIhG_bUF2" role="jymVt">
      <property role="TrG5h" value="myModules" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ctIhG_bUF3" role="1B3o_S" />
      <node concept="3vKaQO" id="1GSGqPi_5Ut" role="1tU5fm">
        <node concept="3uibUv" id="5dMA8jj_Ccj" role="3O5elw">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7ctIhG_bUF6" role="jymVt">
      <property role="TrG5h" value="myModels" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ctIhG_bUF7" role="1B3o_S" />
      <node concept="3vKaQO" id="1GSGqPi_5Ux" role="1tU5fm">
        <node concept="3uibUv" id="5dMA8jj_DMT" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7ctIhG_bUFa" role="jymVt">
      <property role="TrG5h" value="myRoots" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ctIhG_bUFb" role="1B3o_S" />
      <node concept="3vKaQO" id="1GSGqPi_5UC" role="1tU5fm">
        <node concept="3uibUv" id="5dMA8jj_FiR" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1nctWZURM7c" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myRepo" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1nctWZURK2N" role="1B3o_S" />
      <node concept="3uibUv" id="1nctWZURM6T" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="1nctWZURBxQ" role="jymVt" />
    <node concept="3clFbW" id="1GSGqPi_5T0" role="jymVt">
      <node concept="3cqZAl" id="1GSGqPi_5T1" role="3clF45" />
      <node concept="3Tm1VV" id="1GSGqPi_5T2" role="1B3o_S" />
      <node concept="3clFbS" id="1GSGqPi_5T3" role="3clF47">
        <node concept="3SKdUt" id="5dMA8jjBHCP" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorxv" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorxw" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxx" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxy" role="1PaTwD">
              <property role="3oM_SC" value="assumes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxz" role="1PaTwD">
              <property role="3oM_SC" value="clients" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx$" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx_" role="1PaTwD">
              <property role="3oM_SC" value="responsible" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxA" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxB" role="1PaTwD">
              <property role="3oM_SC" value="obtain" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxC" role="1PaTwD">
              <property role="3oM_SC" value="proper" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxD" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxE" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxF" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5dMA8jjBIf2" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorxG" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorxH" role="1PaTwD">
              <property role="3oM_SC" value="(they" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxI" role="1PaTwD">
              <property role="3oM_SC" value="pass/obtain" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxJ" role="1PaTwD">
              <property role="3oM_SC" value="model/node/module," />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxK" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxL" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxM" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxN" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxO" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxP" role="1PaTwD">
              <property role="3oM_SC" value="anyway)." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5dMA8jjBIPj" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorxQ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorxR" role="1PaTwD">
              <property role="3oM_SC" value="Scope" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxS" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxT" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxU" role="1PaTwD">
              <property role="3oM_SC" value="model/node" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxV" role="1PaTwD">
              <property role="3oM_SC" value="instances" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxW" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxX" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxY" role="1PaTwD">
              <property role="3oM_SC" value="hog/retain" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorxZ" role="1PaTwD">
              <property role="3oM_SC" value="too" />
            </node>
            <node concept="3oM_SD" id="ATZLwXory0" role="1PaTwD">
              <property role="3oM_SC" value="much," />
            </node>
            <node concept="3oM_SD" id="ATZLwXory1" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXory2" role="1PaTwD">
              <property role="3oM_SC" value="resolve" />
            </node>
            <node concept="3oM_SD" id="ATZLwXory3" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="ATZLwXory4" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXory5" role="1PaTwD">
              <property role="3oM_SC" value="needed" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5dMA8jjBJrC" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXory6" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXory7" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXory8" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXory9" role="1PaTwD">
              <property role="3oM_SC" value="repository" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorya" role="1PaTwD">
              <property role="3oM_SC" value="supplied" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1GSGqPi_5U3" role="3cqZAp">
          <node concept="37vLTI" id="1GSGqPi_5U4" role="3clFbG">
            <node concept="2ShNRf" id="1GSGqPi_5U5" role="37vLTx">
              <node concept="32HrFt" id="1GSGqPi_5Xd" role="2ShVmc">
                <node concept="3uibUv" id="5dMA8jj_Bsu" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuq96" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUF2" resolve="myModules" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1GSGqPi_5U9" role="3cqZAp">
          <node concept="37vLTI" id="1GSGqPi_5X_" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeude3" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
            </node>
            <node concept="2ShNRf" id="1GSGqPi_5XC" role="37vLTx">
              <node concept="32HrFt" id="1GSGqPi_5XD" role="2ShVmc">
                <node concept="3uibUv" id="5dMA8jj_BGr" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1GSGqPi_5Uf" role="3cqZAp">
          <node concept="37vLTI" id="1GSGqPi_5XW" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuPiP" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
            </node>
            <node concept="2ShNRf" id="1GSGqPi_5XZ" role="37vLTx">
              <node concept="32HrFt" id="1GSGqPi_5Y0" role="2ShVmc">
                <node concept="3uibUv" id="5dMA8jj_BWm" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1nctWZUR_xL" role="3cqZAp">
          <node concept="37vLTI" id="1nctWZUR_xN" role="3clFbG">
            <node concept="37vLTw" id="1nctWZUROam" role="37vLTJ">
              <ref role="3cqZAo" node="1nctWZURM7c" resolve="myRepo" />
            </node>
            <node concept="37vLTw" id="1nctWZUR_xV" role="37vLTx">
              <ref role="3cqZAo" node="1nctWZUQnr5" resolve="contextRepo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1nctWZUQnr5" role="3clF46">
        <property role="TrG5h" value="contextRepo" />
        <node concept="3uibUv" id="1nctWZUQnr4" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7ctIhG_bUFe" role="jymVt">
      <property role="TrG5h" value="contains" />
      <node concept="10P_77" id="7ctIhG_bUFf" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUFg" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUFh" role="3clF47">
        <node concept="3clFbJ" id="7ctIhG_bUFi" role="3cqZAp">
          <node concept="3clFbS" id="7ctIhG_bUFj" role="3clFbx">
            <node concept="3cpWs6" id="7ctIhG_bUFk" role="3cqZAp">
              <node concept="3clFbT" id="7ctIhG_bUFl" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7ctIhG_bUFm" role="3clFbw">
            <node concept="10Nm6u" id="7ctIhG_bUFn" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgkXAt" role="3uHU7B">
              <ref role="3cqZAo" node="7ctIhG_bUGb" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ctIhG_bUFp" role="3cqZAp">
          <node concept="3cpWsn" id="7ctIhG_bUFq" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="2eVlusX5OnF" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="7ctIhG_bUFs" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmx27" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUGb" resolve="node" />
              </node>
              <node concept="liA8E" id="7ctIhG_bUFu" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7ctIhG_bUFv" role="3cqZAp">
          <node concept="3clFbS" id="7ctIhG_bUFw" role="3clFbx">
            <node concept="3cpWs6" id="7ctIhG_bUFx" role="3cqZAp">
              <node concept="3clFbT" id="7ctIhG_bUFy" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1GSGqPi_5Z1" role="3clFbw">
            <node concept="2OqwBi" id="7ctIhG_bUFz" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeuqS3" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
              </node>
              <node concept="3JPx81" id="7ctIhG_bUF_" role="2OqNvi">
                <node concept="2OqwBi" id="5dMA8jj_FNU" role="25WWJ7">
                  <node concept="37vLTw" id="3GM_nagTtVD" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUFq" resolve="root" />
                  </node>
                  <node concept="liA8E" id="5dMA8jj_G5d" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7ctIhG_bUFF" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeuIxJ" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
              </node>
              <node concept="3JPx81" id="7ctIhG_bUFH" role="2OqNvi">
                <node concept="2OqwBi" id="5dMA8jj_GkR" role="25WWJ7">
                  <node concept="37vLTw" id="2BHiRxgmwWb" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUGb" resolve="node" />
                  </node>
                  <node concept="liA8E" id="5dMA8jj_GAw" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5dMA8jjA5U0" role="3cqZAp">
          <node concept="1rXfSq" id="5dMA8jjA8Jj" role="3cqZAk">
            <ref role="37wK5l" node="7ctIhG_bUGd" resolve="contains" />
            <node concept="2OqwBi" id="7ctIhG_bUFN" role="37wK5m">
              <node concept="37vLTw" id="3GM_nagTBEC" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUFq" resolve="root" />
              </node>
              <node concept="liA8E" id="7ctIhG_bUFP" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUGb" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2eVlusX5OnG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7ctIhG_bUGd" role="jymVt">
      <property role="TrG5h" value="contains" />
      <node concept="10P_77" id="7ctIhG_bUGe" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUGf" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUGg" role="3clF47">
        <node concept="3clFbJ" id="5vj0crWfqTh" role="3cqZAp">
          <node concept="3clFbS" id="5vj0crWfqTi" role="3clFbx">
            <node concept="3cpWs6" id="5vj0crWfqTG" role="3cqZAp">
              <node concept="3clFbT" id="5vj0crWfqTI" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5vj0crWfqTC" role="3clFbw">
            <node concept="10Nm6u" id="5vj0crWfqTF" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgkWzg" role="3uHU7B">
              <ref role="3cqZAo" node="7ctIhG_bUG_" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7ctIhG_bUGh" role="3cqZAp">
          <node concept="3clFbS" id="7ctIhG_bUGi" role="3clFbx">
            <node concept="3cpWs6" id="7ctIhG_bUGj" role="3cqZAp">
              <node concept="3clFbT" id="7ctIhG_bUGk" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7ctIhG_bUGl" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuNoa" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
            </node>
            <node concept="3JPx81" id="7ctIhG_bUGn" role="2OqNvi">
              <node concept="2OqwBi" id="5dMA8jj_PGK" role="25WWJ7">
                <node concept="37vLTw" id="2BHiRxgm939" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUG_" resolve="model" />
                </node>
                <node concept="liA8E" id="5dMA8jj_PWb" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7ctIhG_bUGz" role="3cqZAp">
          <node concept="1Wc70l" id="5dMA8jj_VQv" role="3cqZAk">
            <node concept="3y3z36" id="5dMA8jjA1CL" role="3uHU7B">
              <node concept="10Nm6u" id="5dMA8jjA34k" role="3uHU7w" />
              <node concept="2OqwBi" id="5dMA8jj_YQq" role="3uHU7B">
                <node concept="37vLTw" id="5dMA8jj_XnC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUG_" resolve="model" />
                </node>
                <node concept="liA8E" id="5dMA8jjA0dV" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7ctIhG_bUGt" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeul88" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUF2" resolve="myModules" />
              </node>
              <node concept="3JPx81" id="7ctIhG_bUGv" role="2OqNvi">
                <node concept="2OqwBi" id="5dMA8jj_Q4n" role="25WWJ7">
                  <node concept="2OqwBi" id="7ctIhG_bUGw" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxglr$u" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUG_" resolve="model" />
                    </node>
                    <node concept="liA8E" id="7ctIhG_bUGy" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5dMA8jj_Ur4" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUG_" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2eVlusX5NK4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1nctWZUSq4A" role="jymVt" />
    <node concept="3clFb_" id="1nctWZUSy4M" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="add" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1nctWZUSy4P" role="3clF47">
        <node concept="3clFbJ" id="1nctWZUSAaO" role="3cqZAp">
          <node concept="3clFbS" id="1nctWZUSAaQ" role="3clFbx">
            <node concept="3cpWs6" id="1nctWZUSAR2" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1nctWZUSADA" role="3clFbw">
            <node concept="10Nm6u" id="1nctWZUSAIx" role="3uHU7w" />
            <node concept="37vLTw" id="1nctWZUSAx1" role="3uHU7B">
              <ref role="3cqZAo" node="1nctWZUS$7V" resolve="moduleRef" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUGF" role="3cqZAp">
          <node concept="2OqwBi" id="7ctIhG_bUGG" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuFSE" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUF2" resolve="myModules" />
            </node>
            <node concept="TSZUe" id="7ctIhG_bUGI" role="2OqNvi">
              <node concept="37vLTw" id="5dMA8jjAhxs" role="25WWJ7">
                <ref role="3cqZAo" node="1nctWZUS$7V" resolve="moduleRef" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1nctWZUSw3x" role="1B3o_S" />
      <node concept="3cqZAl" id="1nctWZUSxZW" role="3clF45" />
      <node concept="37vLTG" id="1nctWZUS$7V" role="3clF46">
        <property role="TrG5h" value="moduleRef" />
        <node concept="3uibUv" id="1nctWZUS$7U" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1nctWZUSrXQ" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUGB" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="3cqZAl" id="7ctIhG_bUGC" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUGD" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUGE" role="3clF47">
        <node concept="3clFbJ" id="5vj0crWg0Pm" role="3cqZAp">
          <node concept="3clFbS" id="5vj0crWg0Pn" role="3clFbx">
            <node concept="3cpWs6" id="5vj0crWg0PL" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5vj0crWg0PH" role="3clFbw">
            <node concept="10Nm6u" id="5vj0crWg0PK" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgm72V" role="3uHU7B">
              <ref role="3cqZAo" node="7ctIhG_bUGK" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dMA8jjAhOb" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jjAid9" role="3clFbG">
            <node concept="37vLTw" id="5dMA8jjAhO9" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUF2" resolve="myModules" />
            </node>
            <node concept="TSZUe" id="5dMA8jjAiVP" role="2OqNvi">
              <node concept="2OqwBi" id="5dMA8jjAjnE" role="25WWJ7">
                <node concept="37vLTw" id="5dMA8jjAjaF" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUGK" resolve="module" />
                </node>
                <node concept="liA8E" id="5dMA8jjAjAV" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUGK" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="2eVlusX5NII" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="5vj0crWg0PM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1nctWZURn3W" role="jymVt" />
    <node concept="3clFb_" id="1nctWZURqYp" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="3cqZAl" id="1nctWZURqYr" role="3clF45" />
      <node concept="3Tm1VV" id="1nctWZURqYs" role="1B3o_S" />
      <node concept="3clFbS" id="1nctWZURqYt" role="3clF47">
        <node concept="3clFbJ" id="1nctWZUR$tW" role="3cqZAp">
          <node concept="3clFbC" id="1nctWZUR$FE" role="3clFbw">
            <node concept="10Nm6u" id="1nctWZUR$Kq" role="3uHU7w" />
            <node concept="37vLTw" id="1nctWZUR$zB" role="3uHU7B">
              <ref role="3cqZAo" node="1nctWZURyv8" resolve="modelRef" />
            </node>
          </node>
          <node concept="3clFbS" id="1nctWZUR$tY" role="3clFbx">
            <node concept="3cpWs6" id="1nctWZUR$SV" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="5dMA8jjAjOx" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jjAkdv" role="3clFbG">
            <node concept="37vLTw" id="5dMA8jjAjOv" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
            </node>
            <node concept="TSZUe" id="5dMA8jjAkBC" role="2OqNvi">
              <node concept="37vLTw" id="5dMA8jjAl18" role="25WWJ7">
                <ref role="3cqZAo" node="1nctWZURyv8" resolve="modelRef" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1nctWZURyv8" role="3clF46">
        <property role="TrG5h" value="modelRef" />
        <node concept="3uibUv" id="1nctWZURyv7" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1nctWZUQnH4" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUGM" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="3cqZAl" id="7ctIhG_bUGN" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUGO" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUGP" role="3clF47">
        <node concept="3clFbJ" id="5vj0crWg0Or" role="3cqZAp">
          <node concept="3clFbS" id="5vj0crWg0Os" role="3clFbx">
            <node concept="3cpWs6" id="5vj0crWg0OQ" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5vj0crWg0OM" role="3clFbw">
            <node concept="10Nm6u" id="5vj0crWg0OP" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgmtwN" role="3uHU7B">
              <ref role="3cqZAo" node="7ctIhG_bUH3" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dMA8jjAlj5" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jjAlHy" role="3clFbG">
            <node concept="37vLTw" id="5dMA8jjAlj3" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
            </node>
            <node concept="TSZUe" id="5dMA8jjAm8e" role="2OqNvi">
              <node concept="2OqwBi" id="5dMA8jjAmRU" role="25WWJ7">
                <node concept="37vLTw" id="5dMA8jjAmFr" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUH3" resolve="model" />
                </node>
                <node concept="liA8E" id="5dMA8jjAn7R" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUH3" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2eVlusX5NKa" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="2AHcQZ" id="5vj0crWfqTM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1nctWZURTef" role="jymVt" />
    <node concept="3clFb_" id="1nctWZURXeo" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="3cqZAl" id="1nctWZURXeq" role="3clF45" />
      <node concept="3Tm1VV" id="1nctWZURXer" role="1B3o_S" />
      <node concept="3clFbS" id="1nctWZURXes" role="3clF47">
        <node concept="3clFbJ" id="1nctWZUSjL8" role="3cqZAp">
          <node concept="3clFbS" id="1nctWZUSjLa" role="3clFbx">
            <node concept="3cpWs6" id="1nctWZUSkz0" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1nctWZUSkl$" role="3clFbw">
            <node concept="10Nm6u" id="1nctWZUSkqv" role="3uHU7w" />
            <node concept="37vLTw" id="1nctWZUSkcZ" role="3uHU7B">
              <ref role="3cqZAo" node="1nctWZUShHO" resolve="nodeRef" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5dMA8jjAvTb" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoryb" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoryc" role="1PaTwD">
              <property role="3oM_SC" value="indeed," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryd" role="1PaTwD">
              <property role="3oM_SC" value="nodeRef" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorye" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryf" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryg" role="1PaTwD">
              <property role="3oM_SC" value="necessarily" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryh" role="1PaTwD">
              <property role="3oM_SC" value="points" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryi" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryj" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryk" role="1PaTwD">
              <property role="3oM_SC" value="node," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5dMA8jjAw5M" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoryl" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorym" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryn" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryo" role="1PaTwD">
              <property role="3oM_SC" value="account" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryp" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryq" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryr" role="1PaTwD">
              <property role="3oM_SC" value="once" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorys" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryt" role="1PaTwD">
              <property role="3oM_SC" value="resolve" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryu" role="1PaTwD">
              <property role="3oM_SC" value="back" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryv" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoryw" role="1PaTwD">
              <property role="3oM_SC" value="nodes." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dMA8jjAuc8" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jjAu_6" role="3clFbG">
            <node concept="37vLTw" id="5dMA8jjAuc6" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
            </node>
            <node concept="TSZUe" id="5dMA8jjAuZn" role="2OqNvi">
              <node concept="37vLTw" id="5dMA8jjAvBk" role="25WWJ7">
                <ref role="3cqZAo" node="1nctWZUShHO" resolve="nodeRef" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1nctWZUShHO" role="3clF46">
        <property role="TrG5h" value="nodeRef" />
        <node concept="3uibUv" id="1nctWZUShHN" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1nctWZUSlne" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUH5" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="3cqZAl" id="7ctIhG_bUH6" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUH7" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUH8" role="3clF47">
        <node concept="3clFbJ" id="5vj0crWg0OT" role="3cqZAp">
          <node concept="3clFbS" id="5vj0crWg0OU" role="3clFbx">
            <node concept="3cpWs6" id="5vj0crWg0Pk" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5vj0crWg0Pg" role="3clFbw">
            <node concept="10Nm6u" id="5vj0crWg0Pj" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgm_ev" role="3uHU7B">
              <ref role="3cqZAo" node="7ctIhG_bUHm" resolve="root" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5dMA8jjAnyo" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jjAnWP" role="3clFbG">
            <node concept="37vLTw" id="5dMA8jjAnym" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
            </node>
            <node concept="TSZUe" id="5dMA8jjAoFW" role="2OqNvi">
              <node concept="2OqwBi" id="5dMA8jjApuY" role="25WWJ7">
                <node concept="2OqwBi" id="5dMA8jjAp47" role="2Oq$k0">
                  <node concept="37vLTw" id="5dMA8jjAoQa" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUHm" resolve="root" />
                  </node>
                  <node concept="liA8E" id="5dMA8jjAplc" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                  </node>
                </node>
                <node concept="liA8E" id="5dMA8jjApLx" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUHm" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="2eVlusX5O8x" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5vj0crWfqTO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7ctIhG_bUHo" role="jymVt">
      <property role="TrG5h" value="getModels" />
      <node concept="3vKaQO" id="1GSGqPi_5Vc" role="3clF45">
        <node concept="3uibUv" id="1GSGqPi_5Vd" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ctIhG_bUHr" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUHs" role="3clF47">
        <node concept="3cpWs6" id="7ctIhG_bUHt" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jjB82N" role="3cqZAk">
            <node concept="2OqwBi" id="5dMA8jjAWOT" role="2Oq$k0">
              <node concept="2OqwBi" id="5dMA8jjAMoo" role="2Oq$k0">
                <node concept="37vLTw" id="5dMA8jjAYIp" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
                </node>
                <node concept="3$u5V9" id="5dMA8jjAP1R" role="2OqNvi">
                  <node concept="1bVj0M" id="5dMA8jjAP1T" role="23t8la">
                    <node concept="3clFbS" id="5dMA8jjAP1U" role="1bW5cS">
                      <node concept="3clFbF" id="5dMA8jjAQzR" role="3cqZAp">
                        <node concept="2OqwBi" id="5dMA8jjARXx" role="3clFbG">
                          <node concept="37vLTw" id="5dMA8jjAQzQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Xmi" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5dMA8jjATrP" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                            <node concept="37vLTw" id="5dMA8jjAV9G" role="37wK5m">
                              <ref role="3cqZAo" node="1nctWZURM7c" resolve="myRepo" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xmi" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xmj" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1KnU$U" id="1O8DjCquKp2" role="2OqNvi" />
            </node>
            <node concept="ANE8D" id="5dMA8jjB9TY" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7ctIhG_bUHv" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <node concept="3vKaQO" id="1GSGqPi_5VU" role="3clF45">
        <node concept="3uibUv" id="1GSGqPi_5VV" role="3O5elw">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ctIhG_bUHy" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUHz" role="3clF47">
        <node concept="3cpWs6" id="7ctIhG_bUH$" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jjBxEQ" role="3cqZAk">
            <node concept="2OqwBi" id="5dMA8jjBlRo" role="2Oq$k0">
              <node concept="2OqwBi" id="5dMA8jjBbF$" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxeuOQw" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUF2" resolve="myModules" />
                </node>
                <node concept="3$u5V9" id="5dMA8jjBdLo" role="2OqNvi">
                  <node concept="1bVj0M" id="5dMA8jjBdLq" role="23t8la">
                    <node concept="3clFbS" id="5dMA8jjBdLr" role="1bW5cS">
                      <node concept="3clFbF" id="5dMA8jjBfoN" role="3cqZAp">
                        <node concept="2OqwBi" id="5dMA8jjBgRx" role="3clFbG">
                          <node concept="37vLTw" id="5dMA8jjBfoM" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Xmk" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5dMA8jjBir8" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                            <node concept="37vLTw" id="5dMA8jjBk6K" role="37wK5m">
                              <ref role="3cqZAo" node="1nctWZURM7c" resolve="myRepo" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xmk" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xml" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1KnU$U" id="1O8DjCquXNV" role="2OqNvi" />
            </node>
            <node concept="ANE8D" id="5dMA8jjBzJZ" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7ctIhG_bUHA" role="jymVt">
      <property role="TrG5h" value="getRoots" />
      <node concept="3vKaQO" id="1GSGqPi_5Wz" role="3clF45">
        <node concept="3uibUv" id="1GSGqPi_5W$" role="3O5elw">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ctIhG_bUHD" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUHE" role="3clF47">
        <node concept="3clFbF" id="7ctIhG_bUHF" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jjBFIC" role="3clFbG">
            <node concept="2OqwBi" id="5dMA8jjBD$x" role="2Oq$k0">
              <node concept="2OqwBi" id="5dMA8jjBBQo" role="2Oq$k0">
                <node concept="2OqwBi" id="5dMA8jjB_H8" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeuoRQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
                  </node>
                  <node concept="3$u5V9" id="5dMA8jjBArG" role="2OqNvi">
                    <node concept="1bVj0M" id="5dMA8jjBArI" role="23t8la">
                      <node concept="3clFbS" id="5dMA8jjBArJ" role="1bW5cS">
                        <node concept="3clFbF" id="5dMA8jjBAF4" role="3cqZAp">
                          <node concept="2OqwBi" id="5dMA8jjBAQ6" role="3clFbG">
                            <node concept="37vLTw" id="5dMA8jjBAF3" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0Xmm" resolve="it" />
                            </node>
                            <node concept="liA8E" id="5dMA8jjBB6p" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="37vLTw" id="5dMA8jjBBsF" role="37wK5m">
                                <ref role="3cqZAo" node="1nctWZURM7c" resolve="myRepo" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xmm" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Xmn" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1KnU$U" id="1O8DjCqv2Oc" role="2OqNvi" />
              </node>
              <node concept="3$u5V9" id="5dMA8jjBEjm" role="2OqNvi">
                <node concept="1bVj0M" id="5dMA8jjBEjo" role="23t8la">
                  <node concept="3clFbS" id="5dMA8jjBEjp" role="1bW5cS">
                    <node concept="3clFbF" id="5dMA8jjBEBd" role="3cqZAp">
                      <node concept="2OqwBi" id="5dMA8jjBES8" role="3clFbG">
                        <node concept="37vLTw" id="5dMA8jjBEBc" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0Xmo" resolve="it" />
                        </node>
                        <node concept="liA8E" id="5dMA8jjBF8N" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xmo" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xmp" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="5dMA8jjBH3y" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7ctIhG_bUIh" role="jymVt">
      <property role="TrG5h" value="isEmpty" />
      <node concept="10P_77" id="7ctIhG_bUIi" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUIj" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUIk" role="3clF47">
        <node concept="3clFbF" id="7ctIhG_bUIl" role="3cqZAp">
          <node concept="1Wc70l" id="7ctIhG_bUIm" role="3clFbG">
            <node concept="2OqwBi" id="7ctIhG_bUIn" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeuXzi" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
              </node>
              <node concept="1v1jN8" id="7ctIhG_bUIp" role="2OqNvi" />
            </node>
            <node concept="1Wc70l" id="7ctIhG_bUIq" role="3uHU7B">
              <node concept="2OqwBi" id="7ctIhG_bUIr" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxeuIFg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
                </node>
                <node concept="1v1jN8" id="7ctIhG_bUIt" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="7ctIhG_bUIu" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxeuFKW" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUF2" resolve="myModules" />
                </node>
                <node concept="1v1jN8" id="7ctIhG_bUIw" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7ctIhG_bUIT" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="17QB3L" id="7ctIhG_bUIU" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUIV" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUIW" role="3clF47">
        <node concept="3cpWs8" id="7ctIhG_bUIX" role="3cqZAp">
          <node concept="3cpWsn" id="7ctIhG_bUIY" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="7ctIhG_bUIZ" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="7ctIhG_bUJ0" role="33vP2m">
              <node concept="1pGfFk" id="7ctIhG_bUJ1" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7ctIhG_bUJ2" role="3cqZAp">
          <node concept="2OqwBi" id="5eo3iW5fefo" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeufsj" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUF2" resolve="myModules" />
            </node>
            <node concept="3GX2aA" id="5eo3iW5fefp" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="7ctIhG_bUJ8" role="3clFbx">
            <node concept="3clFbF" id="7ctIhG_bUJ9" role="3cqZAp">
              <node concept="2OqwBi" id="7ctIhG_bUJa" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTyww" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUJc" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="1rXfSq" id="4hiugqyz811" role="37wK5m">
                    <ref role="37wK5l" node="7ctIhG_bUKv" resolve="getPresentation" />
                    <node concept="37vLTw" id="2BHiRxeunmI" role="37wK5m">
                      <ref role="3cqZAo" node="7ctIhG_bUF2" resolve="myModules" />
                    </node>
                    <node concept="Xl_RD" id="7ctIhG_bUJf" role="37wK5m">
                      <property role="Xl_RC" value="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7ctIhG_bUJg" role="3cqZAp">
          <node concept="3clFbS" id="7ctIhG_bUJh" role="3clFbx">
            <node concept="3clFbJ" id="7ctIhG_bUJi" role="3cqZAp">
              <node concept="3clFbS" id="7ctIhG_bUJj" role="3clFbx">
                <node concept="3clFbF" id="7ctIhG_bUJk" role="3cqZAp">
                  <node concept="2OqwBi" id="7ctIhG_bUJl" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTxhV" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="7ctIhG_bUJn" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="7ctIhG_bUJo" role="37wK5m">
                        <property role="Xl_RC" value=" and " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="7ctIhG_bUJp" role="3clFbw">
                <node concept="3cmrfG" id="7ctIhG_bUJq" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="7ctIhG_bUJr" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTsis" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="7ctIhG_bUJt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~AbstractStringBuilder.length()" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7ctIhG_bUJu" role="3cqZAp">
              <node concept="3clFbS" id="7ctIhG_bUJv" role="3clFbx">
                <node concept="3clFbF" id="7ctIhG_bUJw" role="3cqZAp">
                  <node concept="2OqwBi" id="7ctIhG_bUJx" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTAlQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="7ctIhG_bUJz" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="3cpWs3" id="7ctIhG_bUJ$" role="37wK5m">
                        <node concept="Xl_RD" id="7ctIhG_bUJ_" role="3uHU7B">
                          <property role="Xl_RC" value="model " />
                        </node>
                        <node concept="2OqwBi" id="5dMA8jjAqvY" role="3uHU7w">
                          <node concept="2OqwBi" id="7ctIhG_bUJA" role="2Oq$k0">
                            <node concept="2OqwBi" id="7ctIhG_bUJB" role="2Oq$k0">
                              <node concept="37vLTw" id="2BHiRxeudIF" role="2Oq$k0">
                                <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
                              </node>
                              <node concept="1uHKPH" id="1GSGqPi_688" role="2OqNvi" />
                            </node>
                            <node concept="liA8E" id="7ctIhG_bUJF" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModelReference.getName()" resolve="getName" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5dMA8jjArrG" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7ctIhG_bUJG" role="3clFbw">
                <node concept="3cmrfG" id="7ctIhG_bUJH" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7ctIhG_bUJI" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxeuu11" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
                  </node>
                  <node concept="34oBXx" id="7ctIhG_bUJK" role="2OqNvi" />
                </node>
              </node>
              <node concept="9aQIb" id="7ctIhG_bUJL" role="9aQIa">
                <node concept="3clFbS" id="7ctIhG_bUJM" role="9aQI4">
                  <node concept="3clFbF" id="7ctIhG_bUJN" role="3cqZAp">
                    <node concept="2OqwBi" id="7ctIhG_bUJO" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTsGX" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
                      </node>
                      <node concept="liA8E" id="7ctIhG_bUJQ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="3cpWs3" id="7ctIhG_bUJR" role="37wK5m">
                          <node concept="Xl_RD" id="7ctIhG_bUJS" role="3uHU7w">
                            <property role="Xl_RC" value=" models" />
                          </node>
                          <node concept="2OqwBi" id="7ctIhG_bUJT" role="3uHU7B">
                            <node concept="37vLTw" id="2BHiRxeufCE" role="2Oq$k0">
                              <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
                            </node>
                            <node concept="34oBXx" id="7ctIhG_bUJV" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5eo3iW5fefq" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuVuw" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUF6" resolve="myModels" />
            </node>
            <node concept="3GX2aA" id="5eo3iW5fefr" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="7ctIhG_bUK1" role="3cqZAp">
          <node concept="3clFbS" id="7ctIhG_bUK2" role="3clFbx">
            <node concept="3clFbJ" id="7ctIhG_bUK3" role="3cqZAp">
              <node concept="3clFbS" id="7ctIhG_bUK4" role="3clFbx">
                <node concept="3clFbF" id="7ctIhG_bUK5" role="3cqZAp">
                  <node concept="2OqwBi" id="7ctIhG_bUK6" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTxfi" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="7ctIhG_bUK8" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="7ctIhG_bUK9" role="37wK5m">
                        <property role="Xl_RC" value=" and " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="7ctIhG_bUKa" role="3clFbw">
                <node concept="3cmrfG" id="7ctIhG_bUKb" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="7ctIhG_bUKc" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTuml" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="7ctIhG_bUKe" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~AbstractStringBuilder.length()" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7ctIhG_bUKf" role="3cqZAp">
              <node concept="2OqwBi" id="7ctIhG_bUKg" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT$uU" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUKi" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="1rXfSq" id="4hiugqyzf3d" role="37wK5m">
                    <ref role="37wK5l" node="7ctIhG_bUKv" resolve="getPresentation" />
                    <node concept="37vLTw" id="2BHiRxeuTR_" role="37wK5m">
                      <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
                    </node>
                    <node concept="Xl_RD" id="7ctIhG_bUKl" role="37wK5m">
                      <property role="Xl_RC" value="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5eo3iW5fefm" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuPEl" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUFa" resolve="myRoots" />
            </node>
            <node concept="3GX2aA" id="5eo3iW5fefn" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUKr" role="3cqZAp">
          <node concept="2OqwBi" id="7ctIhG_bUKs" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTvqe" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUIY" resolve="sb" />
            </node>
            <node concept="liA8E" id="7ctIhG_bUKu" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7ctIhG_bUKv" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="17QB3L" id="7ctIhG_bUKw" role="3clF45" />
      <node concept="3Tm6S6" id="7ctIhG_bUKx" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUKy" role="3clF47">
        <node concept="3clFbJ" id="7ctIhG_bUKz" role="3cqZAp">
          <node concept="2OqwBi" id="5eo3iW6uLi7" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmi7w" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUL6" resolve="list" />
            </node>
            <node concept="1v1jN8" id="5eo3iW6uLi8" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="7ctIhG_bUKD" role="3clFbx">
            <node concept="3cpWs6" id="7ctIhG_bUKE" role="3cqZAp">
              <node concept="Xl_RD" id="7ctIhG_bUKF" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7ctIhG_bUKG" role="3cqZAp">
          <node concept="3clFbS" id="7ctIhG_bUKH" role="3clFbx">
            <node concept="3cpWs6" id="7ctIhG_bUKI" role="3cqZAp">
              <node concept="3cpWs3" id="7ctIhG_bUKJ" role="3cqZAk">
                <node concept="2OqwBi" id="7ctIhG_bUKK" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxghfW7" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUL6" resolve="list" />
                  </node>
                  <node concept="1uHKPH" id="1GSGqPi_67G" role="2OqNvi" />
                </node>
                <node concept="3cpWs3" id="7ctIhG_bUKO" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxglO7c" role="3uHU7B">
                    <ref role="3cqZAo" node="7ctIhG_bUL9" resolve="elementType" />
                  </node>
                  <node concept="Xl_RD" id="7ctIhG_bUKQ" role="3uHU7w">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7ctIhG_bUKR" role="3clFbw">
            <node concept="3cmrfG" id="7ctIhG_bUKS" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="7ctIhG_bUKT" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmaJU" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bUL6" resolve="list" />
              </node>
              <node concept="34oBXx" id="7ctIhG_bUKV" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7ctIhG_bUKW" role="3cqZAp">
          <node concept="3cpWs3" id="7ctIhG_bUKX" role="3cqZAk">
            <node concept="Xl_RD" id="7ctIhG_bUKY" role="3uHU7w">
              <property role="Xl_RC" value="s" />
            </node>
            <node concept="3cpWs3" id="7ctIhG_bUKZ" role="3uHU7B">
              <node concept="3cpWs3" id="7ctIhG_bUL0" role="3uHU7B">
                <node concept="2OqwBi" id="7ctIhG_bUL1" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgmFjY" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUL6" resolve="list" />
                  </node>
                  <node concept="34oBXx" id="7ctIhG_bUL3" role="2OqNvi" />
                </node>
                <node concept="Xl_RD" id="7ctIhG_bUL4" role="3uHU7w">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgmqgD" role="3uHU7w">
                <ref role="3cqZAo" node="7ctIhG_bUL9" resolve="elementType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUL6" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3vKaQO" id="1GSGqPi_67b" role="1tU5fm">
          <node concept="16syzq" id="1GSGqPi_67c" role="3O5elw">
            <ref role="16sUi3" node="7ctIhG_bULb" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUL9" role="3clF46">
        <property role="TrG5h" value="elementType" />
        <node concept="17QB3L" id="7ctIhG_bULa" role="1tU5fm" />
      </node>
      <node concept="16euLQ" id="7ctIhG_bULb" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="5dMA8jj$Y3A" role="jymVt" />
    <node concept="3clFb_" id="5dMA8jj$Zfo" role="jymVt">
      <property role="TrG5h" value="getNodes" />
      <node concept="3clFbS" id="5dMA8jj$Zfp" role="3clF47">
        <node concept="3cpWs8" id="5dMA8jj$Zfq" role="3cqZAp">
          <node concept="3cpWsn" id="5dMA8jj$Zfr" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="A3Dl8" id="5dMA8jj$Zfs" role="1tU5fm">
              <node concept="3uibUv" id="5dMA8jj$Zft" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="5dMA8jj$Zfu" role="33vP2m">
              <node concept="2OqwBi" id="5dMA8jj$Zfv" role="2Oq$k0">
                <node concept="1rXfSq" id="5dMA8jj_2qQ" role="2Oq$k0">
                  <ref role="37wK5l" node="7ctIhG_bUHv" resolve="getModules" />
                </node>
                <node concept="3goQfb" id="5dMA8jj$Zfz" role="2OqNvi">
                  <node concept="1bVj0M" id="5dMA8jj$Zf$" role="23t8la">
                    <node concept="3clFbS" id="5dMA8jj$Zf_" role="1bW5cS">
                      <node concept="3clFbF" id="5dMA8jj$ZfA" role="3cqZAp">
                        <node concept="2OqwBi" id="5dMA8jj$ZfB" role="3clFbG">
                          <node concept="37vLTw" id="5dMA8jj$ZfC" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Xmq" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5dMA8jj$ZfD" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xmq" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xmr" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3QWeyG" id="5dMA8jj$ZfG" role="2OqNvi">
                <node concept="1rXfSq" id="5dMA8jj_5ig" role="576Qk">
                  <ref role="37wK5l" node="7ctIhG_bUHo" resolve="getModels" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5dMA8jj$ZfK" role="3cqZAp">
          <node concept="3cpWsn" id="5dMA8jj$ZfL" role="3cpWs9">
            <property role="TrG5h" value="roots" />
            <node concept="A3Dl8" id="5dMA8jj$ZfM" role="1tU5fm">
              <node concept="3uibUv" id="5dMA8jj$ZfN" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="5dMA8jj$ZfO" role="33vP2m">
              <node concept="2OqwBi" id="5dMA8jj$ZfP" role="2Oq$k0">
                <node concept="37vLTw" id="5dMA8jj$ZfQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5dMA8jj$Zfr" resolve="models" />
                </node>
                <node concept="3goQfb" id="5dMA8jj$ZfR" role="2OqNvi">
                  <node concept="1bVj0M" id="5dMA8jj$ZfS" role="23t8la">
                    <node concept="3clFbS" id="5dMA8jj$ZfT" role="1bW5cS">
                      <node concept="3clFbF" id="5dMA8jj$ZfU" role="3cqZAp">
                        <node concept="2OqwBi" id="5dMA8jj$ZfV" role="3clFbG">
                          <node concept="37vLTw" id="5dMA8jj$ZfW" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Xms" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5dMA8jj$ZfX" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xms" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xmt" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3QWeyG" id="5dMA8jj$Zg0" role="2OqNvi">
                <node concept="1rXfSq" id="5dMA8jj_85I" role="576Qk">
                  <ref role="37wK5l" node="7ctIhG_bUHA" resolve="getRoots" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5dMA8jj$Zg4" role="3cqZAp">
          <node concept="2OqwBi" id="5dMA8jj$Zg5" role="3cqZAk">
            <node concept="37vLTw" id="5dMA8jj$Zg6" role="2Oq$k0">
              <ref role="3cqZAo" node="5dMA8jj$ZfL" resolve="roots" />
            </node>
            <node concept="3goQfb" id="5dMA8jj$Zg7" role="2OqNvi">
              <node concept="1bVj0M" id="5dMA8jj$Zg8" role="23t8la">
                <node concept="3clFbS" id="5dMA8jj$Zg9" role="1bW5cS">
                  <node concept="3clFbF" id="5dMA8jj$Zga" role="3cqZAp">
                    <node concept="2OqwBi" id="5dMA8jj$Zgb" role="3clFbG">
                      <node concept="1eOMI4" id="5dMA8jj$Zgc" role="2Oq$k0">
                        <node concept="10QFUN" id="5dMA8jj$Zgd" role="1eOMHV">
                          <node concept="3Tqbb2" id="5dMA8jj$Zge" role="10QFUM" />
                          <node concept="37vLTw" id="5dMA8jj$Zgf" role="10QFUP">
                            <ref role="3cqZAo" node="5W7E4fV0Xmu" resolve="it" />
                          </node>
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="5dMA8jj$Zgg" role="2OqNvi">
                        <node concept="1xIGOp" id="5dMA8jj$Zgh" role="1xVPHs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Xmu" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0Xmv" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5dMA8jj$Zgm" role="3clF45">
        <node concept="3uibUv" id="5dMA8jj$Zgn" role="A3Ik2">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5dMA8jj$Zgo" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="7ctIhG_bUyf">
    <property role="TrG5h" value="ReferencesFinder" />
    <property role="1EXbeo" value="true" />
    <property role="3GE5qa" value="view2" />
    <node concept="312cEg" id="5v6_5mQkAX3" role="jymVt">
      <property role="TrG5h" value="myInitialScope" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5v6_5mQkAX4" role="1B3o_S" />
      <node concept="3uibUv" id="5v6_5mQkAX6" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
    </node>
    <node concept="2tJIrI" id="5v6_5mQkIVH" role="jymVt" />
    <node concept="3clFbW" id="5v6_5mQkoll" role="jymVt">
      <node concept="3cqZAl" id="5v6_5mQkolm" role="3clF45" />
      <node concept="3clFbS" id="5v6_5mQkoln" role="3clF47">
        <node concept="3SKdUt" id="5v6_5mQq_JM" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorwW" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorwX" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwY" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorwZ" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx0" role="1PaTwD">
              <property role="3oM_SC" value="tolerated" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx1" role="1PaTwD">
              <property role="3oM_SC" value="unless" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx2" role="1PaTwD">
              <property role="3oM_SC" value="#findRefsFromScopeToOuter" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx3" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx4" role="1PaTwD">
              <property role="3oM_SC" value="#getRefsBetweenScopes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx5" role="1PaTwD">
              <property role="3oM_SC" value="(i.e." />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx6" role="1PaTwD">
              <property role="3oM_SC" value="non-meta" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx7" role="1PaTwD">
              <property role="3oM_SC" value="methods)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx8" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorx9" role="1PaTwD">
              <property role="3oM_SC" value="invoked" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5v6_5mQkAX7" role="3cqZAp">
          <node concept="37vLTI" id="5v6_5mQkAX9" role="3clFbG">
            <node concept="37vLTw" id="5v6_5mQkAXc" role="37vLTJ">
              <ref role="3cqZAo" node="5v6_5mQkAX3" resolve="myInitialScope" />
            </node>
            <node concept="37vLTw" id="5v6_5mQkAXd" role="37vLTx">
              <ref role="3cqZAo" node="5v6_5mQktC_" resolve="initialScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5v6_5mQkolo" role="1B3o_S" />
      <node concept="37vLTG" id="5v6_5mQktC_" role="3clF46">
        <property role="TrG5h" value="initialScope" />
        <node concept="3uibUv" id="5v6_5mQktC$" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
        <node concept="2AHcQZ" id="5v6_5mQqtQH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7JYTKo1pcl7" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUyr" role="jymVt">
      <property role="TrG5h" value="findRefsFromScopeToOuter" />
      <node concept="3uibUv" id="7ctIhG_bUys" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
        <node concept="3uibUv" id="1O8DjCqh61l" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="7ctIhG_bUyu" role="3clF47">
        <node concept="3clFbJ" id="5v6_5mQot$g" role="3cqZAp">
          <node concept="3clFbS" id="5v6_5mQot$i" role="3clFbx">
            <node concept="YS8fn" id="5v6_5mQoChr" role="3cqZAp">
              <node concept="2ShNRf" id="5v6_5mQoCmh" role="YScLw">
                <node concept="1pGfFk" id="5v6_5mQoG69" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5v6_5mQoznq" role="3clFbw">
            <node concept="10Nm6u" id="5v6_5mQo_Ec" role="3uHU7w" />
            <node concept="37vLTw" id="5v6_5mQowhP" role="3uHU7B">
              <ref role="3cqZAo" node="5v6_5mQkAX3" resolve="myInitialScope" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8DjCr2MDY" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCr2ME1" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="2I9FWS" id="1O8DjCr2MDW" role="1tU5fm" />
            <node concept="2OqwBi" id="1O8DjCr39w0" role="33vP2m">
              <node concept="2OqwBi" id="1O8DjCr2VxF" role="2Oq$k0">
                <node concept="37vLTw" id="1O8DjCr2TAh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUzi" resolve="selection" />
                </node>
                <node concept="liA8E" id="1O8DjCr2Y8P" role="2OqNvi">
                  <ref role="37wK5l" node="5dMA8jj$Zfo" resolve="getNodes" />
                </node>
              </node>
              <node concept="ANE8D" id="1O8DjCr3cc2" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUyA" role="3cqZAp">
          <node concept="2OqwBi" id="7ctIhG_bUyB" role="3clFbG">
            <node concept="37vLTw" id="7JYTKo1qfjy" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUzl" resolve="monitor" />
            </node>
            <node concept="liA8E" id="7ctIhG_bUyD" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="Xl_RD" id="7ctIhG_bUyE" role="37wK5m">
                <property role="Xl_RC" value="computing references' targets" />
              </node>
              <node concept="2OqwBi" id="7ctIhG_bUyF" role="37wK5m">
                <node concept="37vLTw" id="1O8DjCr3f0k" role="2Oq$k0">
                  <ref role="3cqZAo" node="1O8DjCr2ME1" resolve="nodes" />
                </node>
                <node concept="34oBXx" id="7ctIhG_bUyH" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="79HnH1CRhPQ" role="3cqZAp">
          <node concept="3cpWsn" id="79HnH1CRhPR" role="3cpWs9">
            <property role="TrG5h" value="targets" />
            <node concept="3uibUv" id="79HnH1CRhRp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="79HnH1CRhRr" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="79HnH1CRhQ1" role="33vP2m">
              <node concept="1pGfFk" id="79HnH1CRhS3" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="79HnH1CRhS5" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ctIhG_bUyv" role="3cqZAp">
          <node concept="3cpWsn" id="7ctIhG_bUyw" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="3uibUv" id="1O8DjCqdWFY" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="1O8DjCqep4u" role="11_B2D">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                <node concept="3uibUv" id="1O8DjCqet2X" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1O8DjCqe4$K" role="33vP2m">
              <node concept="1pGfFk" id="1O8DjCqe7vw" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="1O8DjCqev0x" role="1pMfVU">
                  <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                  <node concept="3uibUv" id="1O8DjCqev0y" role="11_B2D">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1O8DjCqlvlG" role="3cqZAp">
          <node concept="3clFbS" id="7ctIhG_bUyJ" role="2LFqv$">
            <node concept="2Gpval" id="1O8DjCqlzUH" role="3cqZAp">
              <node concept="3clFbS" id="1GSGqPi_COU" role="2LFqv$">
                <node concept="3cpWs8" id="1GSGqPi_CQe" role="3cqZAp">
                  <node concept="3cpWsn" id="1GSGqPi_CQf" role="3cpWs9">
                    <property role="TrG5h" value="target" />
                    <node concept="2YIFZM" id="4xPcS81BzbH" role="33vP2m">
                      <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                      <ref role="37wK5l" to="unno:7Yvyxcb_4ZV" resolve="getTargetNodeSilently" />
                      <node concept="2GrUjf" id="1O8DjCqlzXn" role="37wK5m">
                        <ref role="2Gs0qQ" node="1O8DjCqlzXl" resolve="ref" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="79HnH1CRhR4" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1GSGqPi_CQy" role="3cqZAp">
                  <node concept="3clFbS" id="1GSGqPi_CQz" role="3clFbx">
                    <node concept="3N13vt" id="1GSGqPi_CRs" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="1GSGqPi_CQE" role="3clFbw">
                    <node concept="37vLTw" id="1GSGqPi_CQD" role="3uHU7B">
                      <ref role="3cqZAo" node="1GSGqPi_CQf" resolve="target" />
                    </node>
                    <node concept="10Nm6u" id="1GSGqPi_CQH" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3clFbJ" id="6$K_kdCCzvl" role="3cqZAp">
                  <node concept="3clFbS" id="6$K_kdCCzvn" role="3clFbx">
                    <node concept="3N13vt" id="6$K_kdCCPvJ" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="6$K_kdCCExl" role="3clFbw">
                    <node concept="37vLTw" id="5v6_5mQkSBW" role="2Oq$k0">
                      <ref role="3cqZAo" node="5v6_5mQkAX3" resolve="myInitialScope" />
                    </node>
                    <node concept="liA8E" id="6$K_kdCCGsI" role="2OqNvi">
                      <ref role="37wK5l" node="7ctIhG_bUFe" resolve="contains" />
                      <node concept="37vLTw" id="6$K_kdCCJ9D" role="37wK5m">
                        <ref role="3cqZAo" node="1GSGqPi_CQf" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7JYTKo1p8SX" role="3cqZAp">
                  <node concept="3clFbS" id="7JYTKo1p8SZ" role="3clFbx">
                    <node concept="3N13vt" id="7JYTKo1p96g" role="3cqZAp" />
                  </node>
                  <node concept="1Wc70l" id="1O8DjCr3Bn0" role="3clFbw">
                    <node concept="3y3z36" id="1O8DjCr3yEH" role="3uHU7B">
                      <node concept="37vLTw" id="1O8DjCr3vIo" role="3uHU7B">
                        <ref role="3cqZAo" node="1GSGqPi_CLZ" resolve="external" />
                      </node>
                      <node concept="10Nm6u" id="1O8DjCr3_eB" role="3uHU7w" />
                    </node>
                    <node concept="3fqX7Q" id="1O8DjCr3Jl2" role="3uHU7w">
                      <node concept="2OqwBi" id="1O8DjCr3Jl4" role="3fr31v">
                        <node concept="37vLTw" id="1O8DjCr3Jl5" role="2Oq$k0">
                          <ref role="3cqZAo" node="1GSGqPi_CLZ" resolve="external" />
                        </node>
                        <node concept="liA8E" id="1O8DjCr3Jl6" role="2OqNvi">
                          <ref role="37wK5l" node="7ctIhG_bUFe" resolve="contains" />
                          <node concept="37vLTw" id="1O8DjCr3Jl7" role="37wK5m">
                            <ref role="3cqZAo" node="1GSGqPi_CQf" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7JYTKo1p8Bo" role="3cqZAp" />
                <node concept="3clFbJ" id="1O8DjCqgfXF" role="3cqZAp">
                  <node concept="3clFbS" id="1O8DjCqgfXH" role="3clFbx">
                    <node concept="3clFbF" id="7ctIhG_bUyK" role="3cqZAp">
                      <node concept="2OqwBi" id="7ctIhG_bUyL" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTvXp" role="2Oq$k0">
                          <ref role="3cqZAo" node="7ctIhG_bUyw" resolve="results" />
                        </node>
                        <node concept="liA8E" id="7ctIhG_bUyP" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                          <node concept="2ShNRf" id="7ctIhG_bUyQ" role="37wK5m">
                            <node concept="1pGfFk" id="7ctIhG_bUyR" role="2ShVmc">
                              <ref role="37wK5l" to="9erk:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                              <node concept="37vLTw" id="1O8DjCqgyiw" role="37wK5m">
                                <ref role="3cqZAo" node="1GSGqPi_CQf" resolve="target" />
                              </node>
                              <node concept="Xl_RD" id="7ctIhG_bUyV" role="37wK5m">
                                <property role="Xl_RC" value="target" />
                              </node>
                              <node concept="3uibUv" id="1O8DjCqezNA" role="1pMfVU">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="79HnH1CRhQy" role="3clFbw">
                    <node concept="37vLTw" id="79HnH1CRhRG" role="2Oq$k0">
                      <ref role="3cqZAo" node="79HnH1CRhPR" resolve="targets" />
                    </node>
                    <node concept="liA8E" id="79HnH1CRhRK" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="79HnH1CRhRL" role="37wK5m">
                        <ref role="3cqZAo" node="1GSGqPi_CQf" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1GSGqPi_CPq" role="2GsD0m">
                <node concept="2GrUjf" id="1O8DjCqlvpm" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1O8DjCqlvpk" resolve="node" />
                </node>
                <node concept="2z74zc" id="1GSGqPi_CPw" role="2OqNvi" />
              </node>
              <node concept="2GrKxI" id="1O8DjCqlzXl" role="2Gsz3X">
                <property role="TrG5h" value="ref" />
              </node>
            </node>
            <node concept="3clFbJ" id="7ctIhG_bUz1" role="3cqZAp">
              <node concept="3clFbS" id="7ctIhG_bUz2" role="3clFbx">
                <node concept="3zACq4" id="1O8DjCqdar9" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="7ctIhG_bUz5" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxgmhjx" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUzl" resolve="monitor" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUz7" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7ctIhG_bUyW" role="3cqZAp">
              <node concept="2OqwBi" id="7ctIhG_bUyX" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglmYN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUzl" resolve="monitor" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUyZ" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                  <node concept="3cmrfG" id="7ctIhG_bUz0" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1O8DjCr3hJO" role="2GsD0m">
            <ref role="3cqZAo" node="1O8DjCr2ME1" resolve="nodes" />
          </node>
          <node concept="2GrKxI" id="1O8DjCqlvpk" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
        </node>
        <node concept="3cpWs6" id="7JYTKo1pcUk" role="3cqZAp">
          <node concept="2ShNRf" id="7ctIhG_bUyy" role="3cqZAk">
            <node concept="1pGfFk" id="7ctIhG_bUyz" role="2ShVmc">
              <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;(java.util.Collection,java.util.List)" resolve="SearchResults" />
              <node concept="3uibUv" id="1O8DjCqeDni" role="1pMfVU">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2YIFZM" id="1O8DjCqeHul" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
              <node concept="37vLTw" id="1O8DjCqeLJk" role="37wK5m">
                <ref role="3cqZAo" node="7ctIhG_bUyw" resolve="results" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUzi" role="3clF46">
        <property role="TrG5h" value="selection" />
        <node concept="3uibUv" id="1O8DjCr2va7" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
      </node>
      <node concept="37vLTG" id="1GSGqPi_CLZ" role="3clF46">
        <property role="TrG5h" value="external" />
        <node concept="3uibUv" id="1GSGqPi_COo" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
        <node concept="2AHcQZ" id="1O8DjCr1M_a" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUzl" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="5Fy_CzvZxLy" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7JYTKo1o1c_" role="1B3o_S" />
      <node concept="P$JXv" id="1O8DjCqsw0A" role="lGtFl">
        <node concept="TUZQ0" id="5v6_5mQnnGv" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="5v6_5mQnqeI" role="zr_5Q">
            <ref role="zr_51" node="7ctIhG_bUzi" resolve="selection" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsBUi" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBUj" role="1PaTwD">
              <property role="3oM_SC" value="subscope" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBUk" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBUl" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBUm" role="1PaTwD">
              <property role="3oM_SC" value="initial" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBUn" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBTU" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBTV" role="1PaTwD">
            <property role="3oM_SC" value="reports" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTW" role="1PaTwD">
            <property role="3oM_SC" value="reference" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTX" role="1PaTwD">
            <property role="3oM_SC" value="targets" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTY" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBTZ" role="1PaTwD">
            <property role="3oM_SC" value="input" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU0" role="1PaTwD">
            <property role="3oM_SC" value="nodes;" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU1" role="1PaTwD">
            <property role="3oM_SC" value="targets" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU2" role="1PaTwD">
            <property role="3oM_SC" value="reported" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU3" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU4" role="1PaTwD">
            <property role="3oM_SC" value="external" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU5" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU6" role="1PaTwD">
            <property role="3oM_SC" value="supplied" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU7" role="1PaTwD">
            <property role="3oM_SC" value="scope" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU8" role="1PaTwD">
            <property role="3oM_SC" value="(all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU9" role="1PaTwD">
            <property role="3oM_SC" value="external" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUa" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUb" role="1PaTwD">
            <property role="3oM_SC" value="scope" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUc" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUd" role="1PaTwD">
            <property role="3oM_SC" value="null);" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUe" role="1PaTwD">
            <property role="3oM_SC" value="unique" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUf" role="1PaTwD">
            <property role="3oM_SC" value="values" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBUg" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBUh" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7JYTKo1pcB1" role="jymVt" />
    <node concept="3clFb_" id="1byBclm99vu" role="jymVt">
      <property role="TrG5h" value="getUsedConcepts" />
      <node concept="3uibUv" id="1byBclm99vv" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
        <node concept="3uibUv" id="1O8DjCqCxpu" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="1byBclm99vw" role="3clF47">
        <node concept="3clFbF" id="1byBclm99vC" role="3cqZAp">
          <node concept="2OqwBi" id="1byBclm99vD" role="3clFbG">
            <node concept="37vLTw" id="7JYTKo1qfjz" role="2Oq$k0">
              <ref role="3cqZAo" node="1byBclm99x6" resolve="monitor" />
            </node>
            <node concept="liA8E" id="1byBclm99vF" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="Xl_RD" id="1byBclm99vG" role="37wK5m">
                <property role="Xl_RC" value="computing used languages" />
              </node>
              <node concept="2OqwBi" id="1byBclm99vH" role="37wK5m">
                <node concept="37vLTw" id="1O8DjCqfRtQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1byBclm99x1" resolve="nodes" />
                </node>
                <node concept="34oBXx" id="1byBclm99vJ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1byBclm99vx" role="3cqZAp">
          <node concept="3cpWsn" id="1byBclm99vy" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="3uibUv" id="1O8DjCqfvtm" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="1O8DjCqf$Pb" role="11_B2D">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                <node concept="3uibUv" id="1O8DjCqCbvg" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1O8DjCqfI1V" role="33vP2m">
              <node concept="1pGfFk" id="1O8DjCqfKXr" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="1O8DjCqfUgu" role="1pMfVU">
                  <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                  <node concept="3uibUv" id="1O8DjCqCntH" role="11_B2D">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="79HnH1CRhSn" role="3cqZAp">
          <node concept="3cpWsn" id="79HnH1CRhSo" role="3cpWs9">
            <property role="TrG5h" value="concepts" />
            <node concept="3uibUv" id="79HnH1CRhSp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="7JYTKo1otne" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
              </node>
            </node>
            <node concept="2ShNRf" id="79HnH1CRhSr" role="33vP2m">
              <node concept="1pGfFk" id="79HnH1CRhSs" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="7JYTKo1otrt" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1byBclm99vK" role="3cqZAp">
          <node concept="3clFbS" id="1byBclm99vL" role="2LFqv$">
            <node concept="3cpWs8" id="1byBclm99wn" role="3cqZAp">
              <node concept="3cpWsn" id="1byBclm99wo" role="3cpWs9">
                <property role="TrG5h" value="concept" />
                <node concept="3uibUv" id="7JYTKo1otTQ" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                </node>
                <node concept="2OqwBi" id="7JYTKo1otDE" role="33vP2m">
                  <node concept="37vLTw" id="7JYTKo1ot_S" role="2Oq$k0">
                    <ref role="3cqZAo" node="1byBclm99wR" resolve="node" />
                  </node>
                  <node concept="liA8E" id="7JYTKo1otPy" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="79HnH1CRhSE" role="3cqZAp">
              <node concept="3clFbS" id="79HnH1CRhSF" role="3clFbx">
                <node concept="3clFbF" id="1byBclm99wx" role="3cqZAp">
                  <node concept="2OqwBi" id="1byBclm99wy" role="3clFbG">
                    <node concept="37vLTw" id="1byBclm99w$" role="2Oq$k0">
                      <ref role="3cqZAo" node="1byBclm99vy" resolve="results" />
                    </node>
                    <node concept="liA8E" id="1byBclm99wA" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="1byBclm99wB" role="37wK5m">
                        <node concept="1pGfFk" id="1byBclm99wC" role="2ShVmc">
                          <ref role="37wK5l" to="9erk:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                          <node concept="2OqwBi" id="1O8DjCqChNT" role="37wK5m">
                            <node concept="37vLTw" id="1byBclm99wD" role="2Oq$k0">
                              <ref role="3cqZAo" node="1byBclm99wo" resolve="concept" />
                            </node>
                            <node concept="liA8E" id="1O8DjCqCkMy" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="1byBclm99wE" role="37wK5m">
                            <property role="Xl_RC" value="concept" />
                          </node>
                          <node concept="3uibUv" id="1O8DjCqCuSQ" role="1pMfVU">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="79HnH1CRhSL" role="3clFbw">
                <node concept="37vLTw" id="79HnH1CRhSM" role="2Oq$k0">
                  <ref role="3cqZAo" node="79HnH1CRhSo" resolve="concepts" />
                </node>
                <node concept="liA8E" id="79HnH1CRhSN" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="79HnH1CRhSU" role="37wK5m">
                    <ref role="3cqZAo" node="1byBclm99wo" resolve="concept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1byBclm99wK" role="3cqZAp">
              <node concept="3clFbS" id="1byBclm99wL" role="3clFbx">
                <node concept="3zACq4" id="1O8DjCqgDHa" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="1byBclm99wO" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxghgdi" role="2Oq$k0">
                  <ref role="3cqZAo" node="1byBclm99x6" resolve="monitor" />
                </node>
                <node concept="liA8E" id="1byBclm99wQ" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1byBclm99wF" role="3cqZAp">
              <node concept="2OqwBi" id="1byBclm99wG" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgmKIS" role="2Oq$k0">
                  <ref role="3cqZAo" node="1byBclm99x6" resolve="monitor" />
                </node>
                <node concept="liA8E" id="1byBclm99wI" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                  <node concept="3cmrfG" id="1byBclm99wJ" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1byBclm99wR" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="1byBclm99wS" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxglI6a" role="1DdaDG">
            <ref role="3cqZAo" node="1byBclm99x1" resolve="nodes" />
          </node>
        </node>
        <node concept="3cpWs6" id="7JYTKo1pjt6" role="3cqZAp">
          <node concept="2ShNRf" id="1byBclm99v$" role="3cqZAk">
            <node concept="1pGfFk" id="1byBclm99v_" role="2ShVmc">
              <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;(java.util.Collection,java.util.List)" resolve="SearchResults" />
              <node concept="2YIFZM" id="1O8DjCqfokJ" role="37wK5m">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              </node>
              <node concept="37vLTw" id="1O8DjCqft4M" role="37wK5m">
                <ref role="3cqZAo" node="1byBclm99vy" resolve="results" />
              </node>
              <node concept="3uibUv" id="1O8DjCqCqcq" role="1pMfVU">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1byBclm99x1" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="2I9FWS" id="1O8DjCqkrku" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1byBclm99x6" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="5Fy_CzvZJ$N" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7JYTKo1o1lz" role="1B3o_S" />
      <node concept="P$JXv" id="1O8DjCqtFH_" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBUo" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBUp" role="1PaTwD">
            <property role="3oM_SC" value="Tells" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUq" role="1PaTwD">
            <property role="3oM_SC" value="'meta'" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUr" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUs" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUt" role="1PaTwD">
            <property role="3oM_SC" value="input" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUu" role="1PaTwD">
            <property role="3oM_SC" value="nodes," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUv" role="1PaTwD">
            <property role="3oM_SC" value="i.e." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUw" role="1PaTwD">
            <property role="3oM_SC" value="their" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUx" role="1PaTwD">
            <property role="3oM_SC" value="concepts," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUy" role="1PaTwD">
            <property role="3oM_SC" value="unique." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBUz" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBU$" role="1PaTwD">
            <property role="3oM_SC" value="FIXME" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBU_" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUA" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUB" role="1PaTwD">
            <property role="3oM_SC" value="moment," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUC" role="1PaTwD">
            <property role="3oM_SC" value="UsagesView" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUD" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUE" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUF" role="1PaTwD">
            <property role="3oM_SC" value="capable" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUG" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUH" role="1PaTwD">
            <property role="3oM_SC" value="show" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUI" role="1PaTwD">
            <property role="3oM_SC" value="anything" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUJ" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUK" role="1PaTwD">
            <property role="3oM_SC" value="SNode," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUL" role="1PaTwD">
            <property role="3oM_SC" value="hence" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUM" role="1PaTwD">
            <property role="3oM_SC" value="SNode," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUN" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUO" role="1PaTwD">
            <property role="3oM_SC" value="SConcept" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUP" role="1PaTwD">
            <property role="3oM_SC" value="result" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBUQ" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBUR" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUS" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUT" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUU" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUV" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUW" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUX" role="1PaTwD">
            <property role="3oM_SC" value="Need" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUY" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBUZ" role="1PaTwD">
            <property role="3oM_SC" value="fix" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV0" role="1PaTwD">
            <property role="3oM_SC" value="DataTree.createPath" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV1" role="1PaTwD">
            <property role="3oM_SC" value="along" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV2" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV3" role="1PaTwD">
            <property role="3oM_SC" value="PathProvider" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV4" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV5" role="1PaTwD">
            <property role="3oM_SC" value="handle" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV6" role="1PaTwD">
            <property role="3oM_SC" value="SConcept," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV7" role="1PaTwD">
            <property role="3oM_SC" value="just" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV8" role="1PaTwD">
            <property role="3oM_SC" value="too" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV9" role="1PaTwD">
            <property role="3oM_SC" value="much" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVa" role="1PaTwD">
            <property role="3oM_SC" value="work" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVb" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVc" role="1PaTwD">
            <property role="3oM_SC" value="now" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7JYTKo1pjBU" role="jymVt" />
    <node concept="3clFb_" id="7ctIhG_bUzn" role="jymVt">
      <property role="TrG5h" value="getRefsBetweenScopes" />
      <node concept="37vLTG" id="5v6_5mQp2ot" role="3clF46">
        <property role="TrG5h" value="selection" />
        <node concept="3uibUv" id="5v6_5mQp2ou" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUzr" role="3clF46">
        <property role="TrG5h" value="to" />
        <node concept="3uibUv" id="7ctIhG_bUzs" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUzt" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="7ctIhG_bUzu" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3uibUv" id="7ctIhG_bUzv" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
        <node concept="3uibUv" id="1O8DjCqn2JI" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="7ctIhG_bUzx" role="3clF47">
        <node concept="3clFbJ" id="5v6_5mQoQVc" role="3cqZAp">
          <node concept="3clFbS" id="5v6_5mQoQVd" role="3clFbx">
            <node concept="YS8fn" id="5v6_5mQoQVe" role="3cqZAp">
              <node concept="2ShNRf" id="5v6_5mQoQVf" role="YScLw">
                <node concept="1pGfFk" id="5v6_5mQoQVg" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5v6_5mQoQVh" role="3clFbw">
            <node concept="10Nm6u" id="5v6_5mQoQVi" role="3uHU7w" />
            <node concept="37vLTw" id="5v6_5mQoQVj" role="3uHU7B">
              <ref role="3cqZAo" node="5v6_5mQkAX3" resolve="myInitialScope" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5v6_5mQp55a" role="3cqZAp">
          <node concept="3cpWsn" id="5v6_5mQp55b" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="2I9FWS" id="5v6_5mQp55c" role="1tU5fm" />
            <node concept="2OqwBi" id="5v6_5mQp55d" role="33vP2m">
              <node concept="2OqwBi" id="5v6_5mQp55e" role="2Oq$k0">
                <node concept="37vLTw" id="5v6_5mQp55f" role="2Oq$k0">
                  <ref role="3cqZAo" node="5v6_5mQp2ot" resolve="selection" />
                </node>
                <node concept="liA8E" id="5v6_5mQp55g" role="2OqNvi">
                  <ref role="37wK5l" node="5dMA8jj$Zfo" resolve="getNodes" />
                </node>
              </node>
              <node concept="ANE8D" id="5v6_5mQp55h" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUzD" role="3cqZAp">
          <node concept="2OqwBi" id="7ctIhG_bUzE" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm9lw" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUzt" resolve="monitor" />
            </node>
            <node concept="liA8E" id="7ctIhG_bUzG" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="Xl_RD" id="7ctIhG_bUzH" role="37wK5m">
                <property role="Xl_RC" value="filtering references" />
              </node>
              <node concept="2OqwBi" id="7ctIhG_bUzI" role="37wK5m">
                <node concept="37vLTw" id="1O8DjCqht0W" role="2Oq$k0">
                  <ref role="3cqZAo" node="5v6_5mQp55b" resolve="nodes" />
                </node>
                <node concept="34oBXx" id="7ctIhG_bUzK" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8DjCqhIaB" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqhIaC" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="3uibUv" id="1O8DjCqhIaD" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="1O8DjCqhIaE" role="11_B2D">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                <node concept="3uibUv" id="1O8DjCqhIaF" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1O8DjCqhIaG" role="33vP2m">
              <node concept="1pGfFk" id="1O8DjCqhIaH" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="1O8DjCqhIaI" role="1pMfVU">
                  <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                  <node concept="3uibUv" id="1O8DjCqhIaJ" role="11_B2D">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1GSGqPi_CYG" role="3cqZAp">
          <node concept="2GrKxI" id="1GSGqPi_CYH" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="37vLTw" id="1GSGqPi_CYM" role="2GsD0m">
            <ref role="3cqZAo" node="5v6_5mQp55b" resolve="nodes" />
          </node>
          <node concept="3clFbS" id="1GSGqPi_CYJ" role="2LFqv$">
            <node concept="2Gpval" id="1O8DjCqlBZ6" role="3cqZAp">
              <node concept="3clFbS" id="1KUoCipvxkj" role="2LFqv$">
                <node concept="3cpWs8" id="1KUoCipvxkk" role="3cqZAp">
                  <node concept="3cpWsn" id="1KUoCipvxkl" role="3cpWs9">
                    <property role="TrG5h" value="targetNode" />
                    <node concept="2YIFZM" id="1KUoCipvxkm" role="33vP2m">
                      <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                      <ref role="37wK5l" to="unno:7Yvyxcb_4ZV" resolve="getTargetNodeSilently" />
                      <node concept="2GrUjf" id="1O8DjCqlC1W" role="37wK5m">
                        <ref role="2Gs0qQ" node="1O8DjCqlC1U" resolve="ref" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="1KUoCipvxko" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7JYTKo1p9cz" role="3cqZAp">
                  <node concept="3clFbS" id="7JYTKo1p9c$" role="3clFbx">
                    <node concept="3N13vt" id="7JYTKo1p9c_" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="7JYTKo1p9cA" role="3clFbw">
                    <node concept="37vLTw" id="7JYTKo1p9nr" role="3uHU7B">
                      <ref role="3cqZAo" node="1KUoCipvxkl" resolve="targetNode" />
                    </node>
                    <node concept="10Nm6u" id="7JYTKo1p9cC" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3clFbJ" id="1KUoCipvxkp" role="3cqZAp">
                  <node concept="3clFbS" id="1KUoCipvxkq" role="3clFbx">
                    <node concept="3N13vt" id="1KUoCipvxkr" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="1KUoCipvxkt" role="3clFbw">
                    <node concept="37vLTw" id="5v6_5mQkWzf" role="2Oq$k0">
                      <ref role="3cqZAo" node="5v6_5mQkAX3" resolve="myInitialScope" />
                    </node>
                    <node concept="liA8E" id="1KUoCipvxkv" role="2OqNvi">
                      <ref role="37wK5l" node="7ctIhG_bUFe" resolve="contains" />
                      <node concept="37vLTw" id="1KUoCipvxkw" role="37wK5m">
                        <ref role="3cqZAo" node="1KUoCipvxkl" resolve="targetNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7JYTKo1p9Tz" role="3cqZAp">
                  <node concept="3clFbS" id="7JYTKo1p9T_" role="3clFbx">
                    <node concept="3N13vt" id="7JYTKo1pa6$" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="1KUoCipvxk_" role="3clFbw">
                    <node concept="2OqwBi" id="1KUoCipvxkA" role="3fr31v">
                      <node concept="37vLTw" id="2BHiRxglnTr" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ctIhG_bUzr" resolve="to" />
                      </node>
                      <node concept="liA8E" id="1KUoCipvxkC" role="2OqNvi">
                        <ref role="37wK5l" node="7ctIhG_bUFe" resolve="contains" />
                        <node concept="37vLTw" id="1KUoCipvxkD" role="37wK5m">
                          <ref role="3cqZAo" node="1KUoCipvxkl" resolve="targetNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="1O8DjCqryFx" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXorxa" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXorxb" role="1PaTwD">
                      <property role="3oM_SC" value="XXX" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxc" role="1PaTwD">
                      <property role="3oM_SC" value="same" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxd" role="1PaTwD">
                      <property role="3oM_SC" value="node" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxe" role="1PaTwD">
                      <property role="3oM_SC" value="might" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxf" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxg" role="1PaTwD">
                      <property role="3oM_SC" value="reported" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxh" role="1PaTwD">
                      <property role="3oM_SC" value="several" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxi" role="1PaTwD">
                      <property role="3oM_SC" value="times," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxj" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxk" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxl" role="1PaTwD">
                      <property role="3oM_SC" value="what" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxm" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXorxn" role="1PaTwD">
                      <property role="3oM_SC" value="need?" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1KUoCipvxkE" role="3cqZAp">
                  <node concept="2OqwBi" id="1KUoCipvxkF" role="3clFbG">
                    <node concept="37vLTw" id="1O8DjCqhMx9" role="2Oq$k0">
                      <ref role="3cqZAo" node="1O8DjCqhIaC" resolve="results" />
                    </node>
                    <node concept="liA8E" id="1KUoCipvxkJ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="1KUoCipvxkK" role="37wK5m">
                        <node concept="1pGfFk" id="1KUoCipvxkL" role="2ShVmc">
                          <ref role="37wK5l" to="9erk:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                          <node concept="2GrUjf" id="1KUoCipvxkM" role="37wK5m">
                            <ref role="2Gs0qQ" node="1GSGqPi_CYH" resolve="node" />
                          </node>
                          <node concept="Xl_RD" id="1KUoCipvxkN" role="37wK5m">
                            <property role="Xl_RC" value="references" />
                          </node>
                          <node concept="3uibUv" id="1O8DjCqhSpD" role="1pMfVU">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="1KUoCipvxkO" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="1KUoCipvxkR" role="2GsD0m">
                <node concept="2GrUjf" id="1KUoCipvxkV" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1GSGqPi_CYH" resolve="node" />
                </node>
                <node concept="2z74zc" id="1KUoCipvxkW" role="2OqNvi" />
              </node>
              <node concept="2GrKxI" id="1O8DjCqlC1U" role="2Gsz3X">
                <property role="TrG5h" value="ref" />
              </node>
            </node>
            <node concept="3clFbJ" id="7ctIhG_bU$a" role="3cqZAp">
              <node concept="3clFbS" id="7ctIhG_bU$b" role="3clFbx">
                <node concept="3zACq4" id="1O8DjCqi3jh" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="7ctIhG_bU$e" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxgmwSG" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUzt" resolve="monitor" />
                </node>
                <node concept="liA8E" id="7ctIhG_bU$g" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7ctIhG_bU$h" role="3cqZAp">
              <node concept="2OqwBi" id="7ctIhG_bU$i" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm8d1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bUzt" resolve="monitor" />
                </node>
                <node concept="liA8E" id="7ctIhG_bU$k" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                  <node concept="3cmrfG" id="7ctIhG_bU$l" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1O8DjCqhW94" role="3cqZAp">
          <node concept="2ShNRf" id="1O8DjCqhW95" role="3cqZAk">
            <node concept="1pGfFk" id="1O8DjCqhW96" role="2ShVmc">
              <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;(java.util.Collection,java.util.List)" resolve="SearchResults" />
              <node concept="3uibUv" id="1O8DjCqhW97" role="1pMfVU">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2YIFZM" id="1O8DjCqhW98" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
              <node concept="37vLTw" id="1O8DjCqhW99" role="37wK5m">
                <ref role="3cqZAo" node="1O8DjCqhIaC" resolve="results" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7JYTKo1o1vV" role="1B3o_S" />
      <node concept="P$JXv" id="1O8DjCqnWTU" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBVd" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBVe" role="1PaTwD">
            <property role="3oM_SC" value="Subset" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVf" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVg" role="1PaTwD">
            <property role="3oM_SC" value="input" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVh" role="1PaTwD">
            <property role="3oM_SC" value="nodes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVi" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVj" role="1PaTwD">
            <property role="3oM_SC" value="have" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVk" role="1PaTwD">
            <property role="3oM_SC" value="their" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVl" role="1PaTwD">
            <property role="3oM_SC" value="reference" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVm" role="1PaTwD">
            <property role="3oM_SC" value="targets" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVn" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVo" role="1PaTwD">
            <property role="3oM_SC" value="supplied" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVp" role="1PaTwD">
            <property role="3oM_SC" value="target" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVq" role="1PaTwD">
            <property role="3oM_SC" value="scope" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBVr" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBVs" role="1PaTwD">
            <property role="3oM_SC" value="XXX" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVt" role="1PaTwD">
            <property role="3oM_SC" value="similar" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVu" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVv" role="1PaTwD">
            <property role="3oM_SC" value="findRefsFromScopeToOuter," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVw" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVx" role="1PaTwD">
            <property role="3oM_SC" value="reports" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVy" role="1PaTwD">
            <property role="3oM_SC" value="reference" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVz" role="1PaTwD">
            <property role="3oM_SC" value="targets," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV$" role="1PaTwD">
            <property role="3oM_SC" value="while" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBV_" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVA" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVB" role="1PaTwD">
            <property role="3oM_SC" value="reports" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVC" role="1PaTwD">
            <property role="3oM_SC" value="sources" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7JYTKo1pvd$" role="jymVt" />
    <node concept="3clFb_" id="1byBclm9ynJ" role="jymVt">
      <property role="TrG5h" value="getLanguageUsagesSearchResults" />
      <node concept="37vLTG" id="1byBclm9ynK" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="2I9FWS" id="1O8DjCqofps" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1byBclm9ynP" role="3clF46">
        <property role="TrG5h" value="targetScope" />
        <node concept="3uibUv" id="1byBclm9ynQ" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
      </node>
      <node concept="37vLTG" id="1byBclm9ynR" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="5Fy_CzvZW0i" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3uibUv" id="1byBclm9ynT" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
        <node concept="3uibUv" id="1O8DjCqn823" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="1byBclm9ynU" role="3clF47">
        <node concept="3clFbF" id="1byBclm9yo4" role="3cqZAp">
          <node concept="2OqwBi" id="1byBclm9yo5" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglax8" role="2Oq$k0">
              <ref role="3cqZAo" node="1byBclm9ynR" resolve="monitor" />
            </node>
            <node concept="liA8E" id="1byBclm9yo7" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="Xl_RD" id="1byBclm9yo8" role="37wK5m">
                <property role="Xl_RC" value="filtering nodes" />
              </node>
              <node concept="2OqwBi" id="1byBclm9yo9" role="37wK5m">
                <node concept="37vLTw" id="1O8DjCqhFod" role="2Oq$k0">
                  <ref role="3cqZAo" node="1byBclm9ynK" resolve="nodes" />
                </node>
                <node concept="34oBXx" id="1byBclm9yob" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8DjCqneBQ" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqneBR" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="3uibUv" id="1O8DjCqneBS" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="1O8DjCqneBT" role="11_B2D">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                <node concept="3uibUv" id="1O8DjCqneBU" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1O8DjCqneBV" role="33vP2m">
              <node concept="1pGfFk" id="1O8DjCqneBW" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="1O8DjCqneBX" role="1pMfVU">
                  <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                  <node concept="3uibUv" id="1O8DjCqneBY" role="11_B2D">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1byBclm9yoc" role="3cqZAp">
          <node concept="2GrKxI" id="1byBclm9yod" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="37vLTw" id="1byBclm9yoe" role="2GsD0m">
            <ref role="3cqZAo" node="1byBclm9ynK" resolve="nodes" />
          </node>
          <node concept="3clFbS" id="1byBclm9yof" role="2LFqv$">
            <node concept="3cpWs8" id="1KUoCipvzbB" role="3cqZAp">
              <node concept="3cpWsn" id="1KUoCipvzbC" role="3cpWs9">
                <property role="TrG5h" value="concept" />
                <node concept="3uibUv" id="7JYTKo1pBtf" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                </node>
                <node concept="2OqwBi" id="7JYTKo1pAYk" role="33vP2m">
                  <node concept="2JrnkZ" id="1O8DjCqoLuN" role="2Oq$k0">
                    <node concept="2GrUjf" id="1O8DjCqoCdn" role="2JrQYb">
                      <ref role="2Gs0qQ" node="1byBclm9yod" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1O8DjCqoRV$" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7JYTKo1pCvF" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXorxo" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXorxp" role="1PaTwD">
                  <property role="3oM_SC" value="todo" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorxq" role="1PaTwD">
                  <property role="3oM_SC" value="replace" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorxr" role="1PaTwD">
                  <property role="3oM_SC" value="targetScope.contains" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorxs" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorxt" role="1PaTwD">
                  <property role="3oM_SC" value="SConcept" />
                </node>
                <node concept="3oM_SD" id="ATZLwXorxu" role="1PaTwD">
                  <property role="3oM_SC" value="check" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1KUoCipvzbL" role="3cqZAp">
              <node concept="1Wc70l" id="1KUoCipvzbM" role="3clFbw">
                <node concept="2OqwBi" id="7JYTKo1pC8q" role="3uHU7B">
                  <node concept="37vLTw" id="7JYTKo1pC4b" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KUoCipvzbC" resolve="concept" />
                  </node>
                  <node concept="liA8E" id="7JYTKo1pCie" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.isValid()" resolve="isValid" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1KUoCipvzbQ" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxglaYG" role="2Oq$k0">
                    <ref role="3cqZAo" node="1byBclm9ynP" resolve="targetScope" />
                  </node>
                  <node concept="liA8E" id="1KUoCipvzbS" role="2OqNvi">
                    <ref role="37wK5l" node="7ctIhG_bUFe" resolve="contains" />
                    <node concept="2OqwBi" id="7JYTKo1pCFm" role="37wK5m">
                      <node concept="37vLTw" id="1KUoCipvzbT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KUoCipvzbC" resolve="concept" />
                      </node>
                      <node concept="liA8E" id="7JYTKo1pCQl" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getDeclarationNode()" resolve="getDeclarationNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1KUoCipvzbU" role="3clFbx">
                <node concept="3clFbF" id="1KUoCipvzbV" role="3cqZAp">
                  <node concept="2OqwBi" id="1KUoCipvzbW" role="3clFbG">
                    <node concept="37vLTw" id="1O8DjCqo7Nm" role="2Oq$k0">
                      <ref role="3cqZAo" node="1O8DjCqneBR" resolve="results" />
                    </node>
                    <node concept="liA8E" id="1KUoCipvzc0" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="1KUoCipvzc1" role="37wK5m">
                        <node concept="1pGfFk" id="1KUoCipvzc2" role="2ShVmc">
                          <ref role="37wK5l" to="9erk:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                          <node concept="2GrUjf" id="1KUoCipvzc3" role="37wK5m">
                            <ref role="2Gs0qQ" node="1byBclm9yod" resolve="node" />
                          </node>
                          <node concept="Xl_RD" id="1KUoCipvzc4" role="37wK5m">
                            <property role="Xl_RC" value="language" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1byBclm9yoZ" role="3cqZAp">
              <node concept="3clFbS" id="1byBclm9yp0" role="3clFbx">
                <node concept="3zACq4" id="1O8DjCqlEWO" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="1byBclm9yp3" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxgm9Xc" role="2Oq$k0">
                  <ref role="3cqZAo" node="1byBclm9ynR" resolve="monitor" />
                </node>
                <node concept="liA8E" id="1byBclm9yp5" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1byBclm9yp6" role="3cqZAp">
              <node concept="2OqwBi" id="1byBclm9yp7" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglBwy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1byBclm9ynR" resolve="monitor" />
                </node>
                <node concept="liA8E" id="1byBclm9yp9" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                  <node concept="3cmrfG" id="1byBclm9ypa" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1O8DjCqnb_9" role="3cqZAp">
          <node concept="2ShNRf" id="1O8DjCqnb_a" role="3cqZAk">
            <node concept="1pGfFk" id="1O8DjCqnb_b" role="2ShVmc">
              <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;(java.util.Collection,java.util.List)" resolve="SearchResults" />
              <node concept="3uibUv" id="1O8DjCqnb_c" role="1pMfVU">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2YIFZM" id="1O8DjCqnb_d" role="37wK5m">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              </node>
              <node concept="37vLTw" id="1O8DjCqoV2G" role="37wK5m">
                <ref role="3cqZAo" node="1O8DjCqneBR" resolve="results" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7JYTKo1o1_s" role="1B3o_S" />
      <node concept="P$JXv" id="1O8DjCqnjFx" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBVD" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBVE" role="1PaTwD">
            <property role="3oM_SC" value="Gives" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVF" role="1PaTwD">
            <property role="3oM_SC" value="subset" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVG" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVH" role="1PaTwD">
            <property role="3oM_SC" value="input" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVI" role="1PaTwD">
            <property role="3oM_SC" value="nodes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVJ" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVK" role="1PaTwD">
            <property role="3oM_SC" value="match" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVL" role="1PaTwD">
            <property role="3oM_SC" value="concepts" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVM" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVN" role="1PaTwD">
            <property role="3oM_SC" value="target" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVO" role="1PaTwD">
            <property role="3oM_SC" value="scope" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7JYTKo1nPsk" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7ctIhG_bUCU">
    <property role="TrG5h" value="ReferencesView" />
    <property role="3GE5qa" value="view2" />
    <node concept="3Tm1VV" id="7ctIhG_bUEc" role="1B3o_S" />
    <node concept="3uibUv" id="7ctIhG_bUEB" role="1zkMxy">
      <ref role="3uigEE" to="ngmm:~UsagesView" resolve="UsagesView" />
    </node>
    <node concept="3clFbW" id="7ctIhG_bUEd" role="jymVt">
      <node concept="37vLTG" id="7ctIhG_bUEe" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7ctIhG_bUEf" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUEg" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="7ctIhG_bUEh" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUoJ" resolve="DependenciesPanel" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ctIhG_bUEi" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUEj" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUEk" role="3clF47">
        <node concept="XkiVB" id="7ctIhG_bUEl" role="3cqZAp">
          <ref role="37wK5l" to="ngmm:~UsagesView.&lt;init&gt;(com.intellij.openapi.project.Project,jetbrains.mps.ide.findusages.view.treeholder.treeview.ViewOptions)" resolve="UsagesView" />
          <node concept="37vLTw" id="2BHiRxglf7J" role="37wK5m">
            <ref role="3cqZAo" node="7ctIhG_bUEe" resolve="project" />
          </node>
          <node concept="2ShNRf" id="7ctIhG_bUEn" role="37wK5m">
            <node concept="1pGfFk" id="7ctIhG_bUEo" role="2ShVmc">
              <ref role="37wK5l" to="dsdj:~ViewOptions.&lt;init&gt;(boolean,boolean,boolean,boolean,boolean,boolean)" resolve="ViewOptions" />
              <node concept="3clFbT" id="7ctIhG_bUEp" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="7ctIhG_bUEq" role="37wK5m" />
              <node concept="3clFbT" id="7ctIhG_bUEr" role="37wK5m" />
              <node concept="3clFbT" id="7ctIhG_bUEs" role="37wK5m" />
              <node concept="3clFbT" id="7ctIhG_bUEt" role="37wK5m" />
              <node concept="3clFbT" id="7ctIhG_bUEu" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUEv" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzkc5" role="3clFbG">
            <ref role="37wK5l" to="ngmm:~UsagesView.setCustomNodeRepresentator(jetbrains.mps.ide.findusages.view.treeholder.treeview.INodeRepresentator)" resolve="setCustomNodeRepresentator" />
            <node concept="2ShNRf" id="7ctIhG_bUEx" role="37wK5m">
              <node concept="1pGfFk" id="7ctIhG_bUEy" role="2ShVmc">
                <ref role="37wK5l" node="7ctIhG_bUD0" resolve="ReferencesView.MyNodeRepresentator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="OeheHVYt2P" role="3cqZAp">
          <node concept="3cpWsn" id="OeheHVYt2Q" role="3cpWs9">
            <property role="TrG5h" value="usagesTree" />
            <node concept="3uibUv" id="KfaXMvVjjU" role="1tU5fm">
              <ref role="3uigEE" to="ngmm:~UsagesTree" resolve="UsagesTree" />
            </node>
            <node concept="2OqwBi" id="OeheHVYt2S" role="33vP2m">
              <node concept="1rXfSq" id="4hiugqyzeKM" role="2Oq$k0">
                <ref role="37wK5l" to="ngmm:~UsagesView.getTreeComponent()" resolve="getTreeComponent" />
              </node>
              <node concept="liA8E" id="OeheHVYt2U" role="2OqNvi">
                <ref role="37wK5l" to="ngmm:~UsagesTreeComponent.getTree()" resolve="getTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5kAe3HWRYTT" role="3cqZAp">
          <node concept="2OqwBi" id="5kAe3HWRZtq" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTyOx" role="2Oq$k0">
              <ref role="3cqZAo" node="OeheHVYt2Q" resolve="usagesTree" />
            </node>
            <node concept="liA8E" id="5kAe3HWRZtu" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTree.setSelectionRow(int)" resolve="setSelectionRow" />
              <node concept="3cmrfG" id="5kAe3HWRZtv" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="OeheHVYt2X" role="3cqZAp">
          <node concept="2OqwBi" id="OeheHVYt2Z" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTzU$" role="2Oq$k0">
              <ref role="3cqZAo" node="OeheHVYt2Q" resolve="usagesTree" />
            </node>
            <node concept="liA8E" id="OeheHVYt33" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesTree.setShowPopupMenu(boolean)" resolve="setShowPopupMenu" />
              <node concept="3clFbT" id="OeheHVYt34" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4aJJTCuaron" role="3cqZAp">
          <node concept="1rXfSq" id="4aJJTCuaroo" role="3clFbG">
            <ref role="37wK5l" to="ngmm:~UsagesView.setActions(com.intellij.openapi.actionSystem.AnAction...)" resolve="setActions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCq_rCe" role="jymVt" />
    <node concept="312cEu" id="7ctIhG_bUCY" role="jymVt">
      <property role="TrG5h" value="MyNodeRepresentator" />
      <node concept="3clFbW" id="7ctIhG_bUD0" role="jymVt">
        <node concept="3cqZAl" id="7ctIhG_bUD1" role="3clF45" />
        <node concept="3Tm1VV" id="7ctIhG_bUD2" role="1B3o_S" />
        <node concept="3clFbS" id="7ctIhG_bUD3" role="3clF47" />
      </node>
      <node concept="3clFb_" id="7ctIhG_bUD6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getCategoryKinds" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7ctIhG_bUD7" role="1B3o_S" />
        <node concept="3uibUv" id="7ctIhG_bUD8" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7ctIhG_bUD9" role="11_B2D">
            <ref role="3uigEE" to="9erk:~CategoryKind" resolve="CategoryKind" />
          </node>
        </node>
        <node concept="3clFbS" id="7ctIhG_bUDa" role="3clF47">
          <node concept="3cpWs6" id="7ctIhG_bUDb" role="3cqZAp">
            <node concept="2YIFZM" id="7ctIhG_bUDc" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_RZ8r" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7ctIhG_bUDx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getResultsIcon" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7ctIhG_bUDy" role="1B3o_S" />
        <node concept="3uibUv" id="7ctIhG_bUDz" role="3clF45">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="3clFbS" id="7ctIhG_bUD$" role="3clF47">
          <node concept="3cpWs6" id="7ctIhG_bUD_" role="3cqZAp">
            <node concept="10M0yZ" id="7ctIhG_bUDA" role="3cqZAk">
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
              <ref role="3cqZAo" to="xnls:~IdeIcons.DEFAULT_ICON" resolve="DEFAULT_ICON" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_RZ8u" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7ctIhG_bUDB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getResultsText" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7ctIhG_bUDC" role="1B3o_S" />
        <node concept="17QB3L" id="75BB0NbE1$z" role="3clF45" />
        <node concept="37vLTG" id="7ctIhG_bUDE" role="3clF46">
          <property role="TrG5h" value="options" />
          <node concept="3uibUv" id="7ctIhG_bUDF" role="1tU5fm">
            <ref role="3uigEE" to="gkle:~TextOptions" resolve="TextOptions" />
          </node>
        </node>
        <node concept="3clFbS" id="7ctIhG_bUDG" role="3clF47">
          <node concept="3clFbF" id="7ctIhG_bUDH" role="3cqZAp">
            <node concept="Xl_RD" id="7ctIhG_bUDI" role="3clFbG">
              <property role="Xl_RC" value="Usages of the right tree scope selection in the left tree scope selection" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_RZ8o" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="30S9H56jS2D" role="1zkMxy">
        <ref role="3uigEE" to="dsdj:~NodeRepresentatorBase" resolve="NodeRepresentatorBase" />
        <node concept="3uibUv" id="30S9H56jT22" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ctIhG_bULz">
    <property role="TrG5h" value="TargetsView" />
    <property role="3GE5qa" value="view2" />
    <node concept="3Tm1VV" id="7ctIhG_bUP2" role="1B3o_S" />
    <node concept="3uibUv" id="7ctIhG_bUPF" role="1zkMxy">
      <ref role="3uigEE" to="ngmm:~UsagesView" resolve="UsagesView" />
    </node>
    <node concept="312cEg" id="7ctIhG_bUL$" role="jymVt">
      <property role="TrG5h" value="myParent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ctIhG_bUL_" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bULA" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUoJ" resolve="DependenciesPanel" />
      </node>
    </node>
    <node concept="312cEg" id="1O8DjCqTzJ0" role="jymVt">
      <property role="TrG5h" value="myLimitedTo" />
      <node concept="3Tm6S6" id="1O8DjCqTxnq" role="1B3o_S" />
      <node concept="3uibUv" id="1O8DjCqTyGJ" role="1tU5fm">
        <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCq$O3O" role="jymVt" />
    <node concept="3clFbW" id="7ctIhG_bUP3" role="jymVt">
      <node concept="37vLTG" id="7ctIhG_bUP4" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7ctIhG_bUP5" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7ctIhG_bUP6" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="7ctIhG_bUP7" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUoJ" resolve="DependenciesPanel" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ctIhG_bUP8" role="3clF45" />
      <node concept="3Tm1VV" id="7ctIhG_bUP9" role="1B3o_S" />
      <node concept="3clFbS" id="7ctIhG_bUPa" role="3clF47">
        <node concept="XkiVB" id="7ctIhG_bUPb" role="3cqZAp">
          <ref role="37wK5l" to="ngmm:~UsagesView.&lt;init&gt;(com.intellij.openapi.project.Project,jetbrains.mps.ide.findusages.view.treeholder.treeview.ViewOptions)" resolve="UsagesView" />
          <node concept="37vLTw" id="2BHiRxghfxy" role="37wK5m">
            <ref role="3cqZAo" node="7ctIhG_bUP4" resolve="project" />
          </node>
          <node concept="2ShNRf" id="7ctIhG_bUPd" role="37wK5m">
            <node concept="1pGfFk" id="7ctIhG_bUPe" role="2ShVmc">
              <ref role="37wK5l" to="dsdj:~ViewOptions.&lt;init&gt;(boolean,boolean,boolean,boolean,boolean,boolean)" resolve="ViewOptions" />
              <node concept="3clFbT" id="7ctIhG_bUPf" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="7ctIhG_bUPg" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="7ctIhG_bUPh" role="37wK5m" />
              <node concept="3clFbT" id="7ctIhG_bUPi" role="37wK5m" />
              <node concept="3clFbT" id="7ctIhG_bUPj" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="3clFbT" id="7ctIhG_bUPk" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUPz" role="3cqZAp">
          <node concept="37vLTI" id="7ctIhG_bUP$" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm5Q4" role="37vLTx">
              <ref role="3cqZAo" node="7ctIhG_bUP6" resolve="parent" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuFi8" role="37vLTJ">
              <ref role="3cqZAo" node="7ctIhG_bUL$" resolve="myParent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ctIhG_bUPl" role="3cqZAp">
          <node concept="3cpWsn" id="7ctIhG_bUPm" role="3cpWs9">
            <property role="TrG5h" value="usagesTree" />
            <node concept="3uibUv" id="KfaXMvVuu$" role="1tU5fm">
              <ref role="3uigEE" to="ngmm:~UsagesTree" resolve="UsagesTree" />
            </node>
            <node concept="2OqwBi" id="7ctIhG_bUPo" role="33vP2m">
              <node concept="1rXfSq" id="4hiugqyzfeM" role="2Oq$k0">
                <ref role="37wK5l" to="ngmm:~UsagesView.getTreeComponent()" resolve="getTreeComponent" />
              </node>
              <node concept="liA8E" id="7ctIhG_bUPq" role="2OqNvi">
                <ref role="37wK5l" to="ngmm:~UsagesTreeComponent.getTree()" resolve="getTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUPr" role="3cqZAp">
          <node concept="2OqwBi" id="7ctIhG_bUPs" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT$LM" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUPm" resolve="usagesTree" />
            </node>
            <node concept="liA8E" id="7ctIhG_bUPu" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTree.addTreeSelectionListener(javax.swing.event.TreeSelectionListener)" resolve="addTreeSelectionListener" />
              <node concept="2ShNRf" id="7ctIhG_bUPv" role="37wK5m">
                <node concept="1pGfFk" id="7ctIhG_bUPw" role="2ShVmc">
                  <ref role="37wK5l" node="7ctIhG_bULJ" resolve="TargetsView.MyTreeSelectionListener" />
                  <node concept="37vLTw" id="3GM_nagTumG" role="37wK5m">
                    <ref role="3cqZAo" node="7ctIhG_bUPm" resolve="usagesTree" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm9Rx" role="37wK5m">
                    <ref role="3cqZAo" node="7ctIhG_bUP6" resolve="parent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ctIhG_bUPB" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzhuV" role="3clFbG">
            <ref role="37wK5l" to="ngmm:~UsagesView.setCustomNodeRepresentator(jetbrains.mps.ide.findusages.view.treeholder.treeview.INodeRepresentator)" resolve="setCustomNodeRepresentator" />
            <node concept="2ShNRf" id="7ctIhG_bUPD" role="37wK5m">
              <node concept="1pGfFk" id="7ctIhG_bUPE" role="2ShVmc">
                <ref role="37wK5l" node="7ctIhG_bUNK" resolve="TargetsView.MyNodeRepresentator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5kAe3HWRZtx" role="3cqZAp">
          <node concept="2OqwBi" id="5kAe3HWRZty" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT$Gr" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUPm" resolve="usagesTree" />
            </node>
            <node concept="liA8E" id="5kAe3HWRZtA" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JTree.setSelectionRow(int)" resolve="setSelectionRow" />
              <node concept="3cmrfG" id="5kAe3HWRZtB" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="OeheHVYt2H" role="3cqZAp">
          <node concept="2OqwBi" id="OeheHVYt2J" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTyCT" role="2Oq$k0">
              <ref role="3cqZAo" node="7ctIhG_bUPm" resolve="usagesTree" />
            </node>
            <node concept="liA8E" id="OeheHVYt2N" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesTree.setShowPopupMenu(boolean)" resolve="setShowPopupMenu" />
              <node concept="3clFbT" id="OeheHVYt2O" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4aJJTCuaUFb" role="3cqZAp">
          <node concept="1rXfSq" id="4aJJTCuaUFc" role="3clFbG">
            <ref role="37wK5l" to="ngmm:~UsagesView.setActions(com.intellij.openapi.actionSystem.AnAction...)" resolve="setActions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqTCja" role="jymVt" />
    <node concept="3clFb_" id="1O8DjCqTI9b" role="jymVt">
      <property role="TrG5h" value="limitTo" />
      <node concept="3cqZAl" id="1O8DjCqTI9d" role="3clF45" />
      <node concept="3clFbS" id="1O8DjCqTI9f" role="3clF47">
        <node concept="3clFbF" id="1O8DjCqTVGU" role="3cqZAp">
          <node concept="37vLTI" id="1O8DjCqTXIK" role="3clFbG">
            <node concept="37vLTw" id="1O8DjCqTZ3_" role="37vLTx">
              <ref role="3cqZAo" node="1O8DjCqTNRl" resolve="scope" />
            </node>
            <node concept="37vLTw" id="1O8DjCqTVGT" role="37vLTJ">
              <ref role="3cqZAo" node="1O8DjCqTzJ0" resolve="myLimitedTo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqTNRl" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="1O8DjCqTNRk" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
        <node concept="2AHcQZ" id="1O8DjCqTRIL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="P$JXv" id="1O8DjCqU15B" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBVP" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBVQ" role="1PaTwD">
            <property role="3oM_SC" value="Usually," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVR" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVS" role="1PaTwD">
            <property role="3oM_SC" value="reference" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVT" role="1PaTwD">
            <property role="3oM_SC" value="targets" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVU" role="1PaTwD">
            <property role="3oM_SC" value="external" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVV" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVW" role="1PaTwD">
            <property role="3oM_SC" value="initial" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVX" role="1PaTwD">
            <property role="3oM_SC" value="nodes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVY" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBVZ" role="1PaTwD">
            <property role="3oM_SC" value="represented" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW0" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW1" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW2" role="1PaTwD">
            <property role="3oM_SC" value="view." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW3" role="1PaTwD">
            <property role="3oM_SC" value="However," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW4" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW5" role="1PaTwD">
            <property role="3oM_SC" value="certain" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW6" role="1PaTwD">
            <property role="3oM_SC" value="scenarios" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBW7" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBW8" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW9" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWa" role="1PaTwD">
            <property role="3oM_SC" value="interested" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWb" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWc" role="1PaTwD">
            <property role="3oM_SC" value="specific" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWd" role="1PaTwD">
            <property role="3oM_SC" value="targets" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWe" role="1PaTwD">
            <property role="3oM_SC" value="only," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWf" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWg" role="1PaTwD">
            <property role="3oM_SC" value="therefore" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWh" role="1PaTwD">
            <property role="3oM_SC" value="here's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWi" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWj" role="1PaTwD">
            <property role="3oM_SC" value="scope" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWk" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWl" role="1PaTwD">
            <property role="3oM_SC" value="limit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWm" role="1PaTwD">
            <property role="3oM_SC" value="nodes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWn" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWo" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWp" role="1PaTwD">
            <property role="3oM_SC" value="view." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBWq" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBWr" role="1PaTwD">
            <property role="3oM_SC" value="\Generally" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWs" role="1PaTwD">
            <property role="3oM_SC" value="null," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWt" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWu" role="1PaTwD">
            <property role="3oM_SC" value="means" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWv" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWw" role="1PaTwD">
            <property role="3oM_SC" value="external" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWx" role="1PaTwD">
            <property role="3oM_SC" value="reference" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWy" role="1PaTwD">
            <property role="3oM_SC" value="targets." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqThGf" role="jymVt" />
    <node concept="3clFb_" id="1O8DjCqTjP4" role="jymVt">
      <property role="TrG5h" value="limitedTo" />
      <node concept="3uibUv" id="1O8DjCqTnOQ" role="3clF45">
        <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
      <node concept="3clFbS" id="1O8DjCqTjP8" role="3clF47">
        <node concept="3clFbF" id="1O8DjCqTA6C" role="3cqZAp">
          <node concept="37vLTw" id="1O8DjCqTA6B" role="3clFbG">
            <ref role="3cqZAo" node="1O8DjCqTzJ0" resolve="myLimitedTo" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1O8DjCqTEte" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCq$Sfu" role="jymVt" />
    <node concept="3clFb_" id="3vHcROfTF78" role="jymVt">
      <property role="TrG5h" value="selectModule" />
      <node concept="37vLTG" id="3vHcROfTF7c" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="27wBQ2HqA0$" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="3vHcROfTF79" role="3clF45" />
      <node concept="3Tm1VV" id="3vHcROfTF7a" role="1B3o_S" />
      <node concept="3clFbS" id="3vHcROfTF7b" role="3clF47">
        <node concept="3cpWs8" id="3vHcROfTF9T" role="3cqZAp">
          <node concept="3cpWsn" id="3vHcROfTF9U" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="3vHcROfTF9V" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
            </node>
            <node concept="1rXfSq" id="4hiugqyzku2" role="33vP2m">
              <ref role="37wK5l" node="3vHcROfTF8M" resolve="findModule" />
              <node concept="2OqwBi" id="5dMA8jjBQxB" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgmay_" role="2Oq$k0">
                  <ref role="3cqZAo" node="3vHcROfTF7c" resolve="module" />
                </node>
                <node concept="liA8E" id="5dMA8jjBRad" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3vHcROfTFa0" role="3cqZAp">
          <node concept="3clFbS" id="3vHcROfTFa1" role="3clFbx">
            <node concept="3clFbF" id="3vHcROfTFa9" role="3cqZAp">
              <node concept="2OqwBi" id="3vHcROfTF9c" role="3clFbG">
                <node concept="2OqwBi" id="3vHcROfTF9q" role="2Oq$k0">
                  <node concept="1rXfSq" id="4hiugqyzesY" role="2Oq$k0">
                    <ref role="37wK5l" to="ngmm:~UsagesView.getTreeComponent()" resolve="getTreeComponent" />
                  </node>
                  <node concept="liA8E" id="3vHcROfTF9s" role="2OqNvi">
                    <ref role="37wK5l" to="ngmm:~UsagesTreeComponent.getTree()" resolve="getTree" />
                  </node>
                </node>
                <node concept="liA8E" id="3vHcROfTF9g" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTree.selectNode(javax.swing.tree.TreeNode)" resolve="selectNode" />
                  <node concept="37vLTw" id="3GM_nagT_2s" role="37wK5m">
                    <ref role="3cqZAo" node="3vHcROfTF9U" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3vHcROfTFa5" role="3clFbw">
            <node concept="10Nm6u" id="3vHcROfTFa8" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTrlz" role="3uHU7B">
              <ref role="3cqZAo" node="3vHcROfTF9U" resolve="node" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqAbMC" role="jymVt" />
    <node concept="3clFb_" id="3vHcROfTF8M" role="jymVt">
      <property role="TrG5h" value="findModule" />
      <node concept="37vLTG" id="3vHcROfTF8S" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5dMA8jjBQiu" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
        <node concept="2AHcQZ" id="1fQI4Zg5eyc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="3vHcROfTF8R" role="3clF45">
        <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
      </node>
      <node concept="3Tm6S6" id="3vHcROfTF8Q" role="1B3o_S" />
      <node concept="3clFbS" id="3vHcROfTF8P" role="3clF47">
        <node concept="3cpWs8" id="3vHcROfToWK" role="3cqZAp">
          <node concept="3cpWsn" id="3vHcROfToWL" role="3cpWs9">
            <property role="TrG5h" value="usagesTree" />
            <node concept="3uibUv" id="KfaXMvWMeI" role="1tU5fm">
              <ref role="3uigEE" to="ngmm:~UsagesTree" resolve="UsagesTree" />
            </node>
            <node concept="2OqwBi" id="3vHcROfTF7h" role="33vP2m">
              <node concept="1rXfSq" id="4hiugqyz9wZ" role="2Oq$k0">
                <ref role="37wK5l" to="ngmm:~UsagesView.getTreeComponent()" resolve="getTreeComponent" />
              </node>
              <node concept="liA8E" id="3vHcROfTF7l" role="2OqNvi">
                <ref role="37wK5l" to="ngmm:~UsagesTreeComponent.getTree()" resolve="getTree" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3vHcROfTqhK" role="3cqZAp">
          <node concept="3cpWsn" id="3vHcROfTqhL" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="3uibUv" id="3vHcROfTqhM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Enumeration" resolve="Enumeration" />
            </node>
            <node concept="2OqwBi" id="3vHcROfTqhN" role="33vP2m">
              <node concept="2OqwBi" id="3vHcROfTqhO" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagT_ge" role="2Oq$k0">
                  <ref role="3cqZAo" node="3vHcROfToWL" resolve="usagesTree" />
                </node>
                <node concept="liA8E" id="3vHcROfTqhQ" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTree.getRootNode()" resolve="getRootNode" />
                </node>
              </node>
              <node concept="liA8E" id="3vHcROfTrwM" role="2OqNvi">
                <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.breadthFirstEnumeration()" resolve="breadthFirstEnumeration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="3vHcROfTF6D" role="3cqZAp">
          <node concept="2OqwBi" id="3vHcROfTF6H" role="2$JKZa">
            <node concept="37vLTw" id="3GM_nagTtR6" role="2Oq$k0">
              <ref role="3cqZAo" node="3vHcROfTqhL" resolve="nodes" />
            </node>
            <node concept="liA8E" id="3vHcROfTF6L" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Enumeration.hasMoreElements()" resolve="hasMoreElements" />
            </node>
          </node>
          <node concept="3clFbS" id="3vHcROfTF6F" role="2LFqv$">
            <node concept="3cpWs8" id="3vHcROfTF6Y" role="3cqZAp">
              <node concept="3cpWsn" id="3vHcROfTF6Z" role="3cpWs9">
                <property role="TrG5h" value="treeNode" />
                <node concept="3uibUv" id="1fQI4Zg4RcM" role="1tU5fm">
                  <ref role="3uigEE" to="ngmm:~UsagesTree$UsagesTreeNode" resolve="UsagesTree.UsagesTreeNode" />
                </node>
                <node concept="0kSF2" id="3vHcROfTF75" role="33vP2m">
                  <node concept="3uibUv" id="1fQI4Zg4VFD" role="0kSFW">
                    <ref role="3uigEE" to="ngmm:~UsagesTree$UsagesTreeNode" resolve="UsagesTree.UsagesTreeNode" />
                  </node>
                  <node concept="2OqwBi" id="3vHcROfTF71" role="0kSFX">
                    <node concept="37vLTw" id="3GM_nagTrKG" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vHcROfTqhL" resolve="nodes" />
                    </node>
                    <node concept="liA8E" id="3vHcROfTF73" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Enumeration.nextElement()" resolve="nextElement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3vHcROfTF7p" role="3cqZAp">
              <node concept="3clFbS" id="3vHcROfTF7q" role="3clFbx">
                <node concept="3N13vt" id="3vHcROfTF7y" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="3vHcROfTF7u" role="3clFbw">
                <node concept="10Nm6u" id="3vHcROfTF7x" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagT_yV" role="3uHU7B">
                  <ref role="3cqZAo" node="3vHcROfTF6Z" resolve="treeNode" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3vHcROfTF7O" role="3cqZAp">
              <node concept="3cpWsn" id="3vHcROfTF7P" role="3cpWs9">
                <property role="TrG5h" value="data" />
                <node concept="3uibUv" id="3vHcROfTF7Q" role="1tU5fm">
                  <ref role="3uigEE" to="qoip:~BaseNodeData" resolve="BaseNodeData" />
                </node>
                <node concept="2OqwBi" id="3vHcROfTF8H" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTxJk" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vHcROfTF6Z" resolve="treeNode" />
                  </node>
                  <node concept="liA8E" id="1fQI4Zg50vM" role="2OqNvi">
                    <ref role="37wK5l" to="ngmm:~UsagesTree$UsagesTreeNode.getUsageData()" resolve="getUsageData" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3vHcROfTF8b" role="3cqZAp">
              <node concept="3clFbS" id="3vHcROfTF8c" role="3clFbx">
                <node concept="3clFbJ" id="3vHcROfTF9I" role="3cqZAp">
                  <node concept="3clFbS" id="3vHcROfTF9J" role="3clFbx">
                    <node concept="3cpWs6" id="3vHcROfTF9M" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTwmo" role="3cqZAk">
                        <ref role="3cqZAo" node="3vHcROfTF6Z" resolve="treeNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5dMA8jjBSx6" role="3clFbw">
                    <node concept="37vLTw" id="2BHiRxgm9Rb" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vHcROfTF8S" resolve="module" />
                    </node>
                    <node concept="liA8E" id="5dMA8jjBSG5" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                      <node concept="2OqwBi" id="3vHcROfTF9$" role="37wK5m">
                        <node concept="1eOMI4" id="3vHcROfTF9z" role="2Oq$k0">
                          <node concept="10QFUN" id="3vHcROfTF9v" role="1eOMHV">
                            <node concept="3uibUv" id="3vHcROfTF9y" role="10QFUM">
                              <ref role="3uigEE" to="qoip:~ModuleNodeData" resolve="ModuleNodeData" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTrZ9" role="10QFUP">
                              <ref role="3cqZAo" node="3vHcROfTF7P" resolve="data" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3vHcROfTF9C" role="2OqNvi">
                          <ref role="37wK5l" to="qoip:~ModuleNodeData.getModuleReference()" resolve="getModuleReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="3vHcROfTF8m" role="3clFbw">
                <node concept="3uibUv" id="3vHcROfTF8n" role="2ZW6by">
                  <ref role="3uigEE" to="qoip:~ModuleNodeData" resolve="ModuleNodeData" />
                </node>
                <node concept="37vLTw" id="3GM_nagT_ji" role="2ZW6bz">
                  <ref role="3cqZAo" node="3vHcROfTF7P" resolve="data" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3vHcROfTF9Q" role="3cqZAp">
          <node concept="10Nm6u" id="3vHcROfTF9S" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqA9mE" role="jymVt" />
    <node concept="312cEu" id="7ctIhG_bULB" role="jymVt">
      <property role="TrG5h" value="MyTreeSelectionListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="7ctIhG_bULI" role="1B3o_S" />
      <node concept="3uibUv" id="7ctIhG_bULZ" role="EKbjA">
        <ref role="3uigEE" to="gsia:~TreeSelectionListener" resolve="TreeSelectionListener" />
      </node>
      <node concept="312cEg" id="7ctIhG_bULC" role="jymVt">
        <property role="TrG5h" value="myTree" />
        <node concept="3Tm6S6" id="7ctIhG_bULD" role="1B3o_S" />
        <node concept="3uibUv" id="KfaXMvVwV6" role="1tU5fm">
          <ref role="3uigEE" to="ngmm:~UsagesTree" resolve="UsagesTree" />
        </node>
      </node>
      <node concept="312cEg" id="7ctIhG_bULF" role="jymVt">
        <property role="TrG5h" value="myDependenciesComponent" />
        <node concept="3Tm6S6" id="7ctIhG_bULG" role="1B3o_S" />
        <node concept="3uibUv" id="7ctIhG_bULH" role="1tU5fm">
          <ref role="3uigEE" node="7ctIhG_bUoJ" resolve="DependenciesPanel" />
        </node>
      </node>
      <node concept="3clFbW" id="7ctIhG_bULJ" role="jymVt">
        <node concept="37vLTG" id="7ctIhG_bULK" role="3clF46">
          <property role="TrG5h" value="tree" />
          <node concept="3uibUv" id="KfaXMvVzjT" role="1tU5fm">
            <ref role="3uigEE" to="ngmm:~UsagesTree" resolve="UsagesTree" />
          </node>
        </node>
        <node concept="37vLTG" id="7ctIhG_bULM" role="3clF46">
          <property role="TrG5h" value="parent" />
          <node concept="3uibUv" id="7ctIhG_bULN" role="1tU5fm">
            <ref role="3uigEE" node="7ctIhG_bUoJ" resolve="DependenciesPanel" />
          </node>
        </node>
        <node concept="3cqZAl" id="7ctIhG_bULO" role="3clF45" />
        <node concept="3Tm1VV" id="7ctIhG_bULP" role="1B3o_S" />
        <node concept="3clFbS" id="7ctIhG_bULQ" role="3clF47">
          <node concept="3clFbF" id="7ctIhG_bULR" role="3cqZAp">
            <node concept="37vLTI" id="7ctIhG_bULS" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgmpM_" role="37vLTx">
                <ref role="3cqZAo" node="7ctIhG_bULK" resolve="tree" />
              </node>
              <node concept="37vLTw" id="2BHiRxeun6Y" role="37vLTJ">
                <ref role="3cqZAo" node="7ctIhG_bULC" resolve="myTree" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ctIhG_bULV" role="3cqZAp">
            <node concept="37vLTI" id="7ctIhG_bULW" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgm2tS" role="37vLTx">
                <ref role="3cqZAo" node="7ctIhG_bULM" resolve="parent" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuyVL" role="37vLTJ">
                <ref role="3cqZAo" node="7ctIhG_bULF" resolve="myDependenciesComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7ctIhG_bUM0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="valueChanged" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7ctIhG_bUM1" role="1B3o_S" />
        <node concept="3cqZAl" id="7ctIhG_bUM2" role="3clF45" />
        <node concept="37vLTG" id="7ctIhG_bUM3" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="7ctIhG_bUM4" role="1tU5fm">
            <ref role="3uigEE" to="gsia:~TreeSelectionEvent" resolve="TreeSelectionEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="7ctIhG_bUM5" role="3clF47">
          <node concept="3cpWs8" id="7ctIhG_bUM6" role="3cqZAp">
            <node concept="3cpWsn" id="7ctIhG_bUM7" role="3cpWs9">
              <property role="TrG5h" value="paths" />
              <node concept="10Q1$e" id="7ctIhG_bUM8" role="1tU5fm">
                <node concept="3uibUv" id="7ctIhG_bUM9" role="10Q1$1">
                  <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ctIhG_bUMa" role="33vP2m">
                <node concept="37vLTw" id="2BHiRxeuPq4" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ctIhG_bULC" resolve="myTree" />
                </node>
                <node concept="liA8E" id="7ctIhG_bUMc" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JTree.getSelectionPaths()" resolve="getSelectionPaths" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7ctIhG_bUMd" role="3cqZAp">
            <node concept="3clFbS" id="7ctIhG_bUMe" role="3clFbx">
              <node concept="3cpWs6" id="7ctIhG_bUMf" role="3cqZAp" />
            </node>
            <node concept="22lmx$" id="7ctIhG_bUMg" role="3clFbw">
              <node concept="3clFbC" id="7ctIhG_bUMh" role="3uHU7w">
                <node concept="3cmrfG" id="7ctIhG_bUMi" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="7ctIhG_bUMj" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTBIB" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUM7" resolve="paths" />
                  </node>
                  <node concept="1Rwk04" id="7ctIhG_bUMl" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbC" id="7ctIhG_bUMm" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagT_RJ" role="3uHU7B">
                  <ref role="3cqZAo" node="7ctIhG_bUM7" resolve="paths" />
                </node>
                <node concept="10Nm6u" id="7ctIhG_bUMo" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7ctIhG_bUMp" role="3cqZAp">
            <node concept="3cpWsn" id="7ctIhG_bUMq" role="3cpWs9">
              <property role="TrG5h" value="scope" />
              <node concept="3uibUv" id="7ctIhG_bUMr" role="1tU5fm">
                <ref role="3uigEE" node="7ctIhG_bUEK" resolve="DependencyViewerScope" />
              </node>
              <node concept="2ShNRf" id="7ctIhG_bUMs" role="33vP2m">
                <node concept="1pGfFk" id="7ctIhG_bUMt" role="2ShVmc">
                  <ref role="37wK5l" node="1GSGqPi_5T0" resolve="DependencyViewerScope" />
                  <node concept="2OqwBi" id="1nctWZUQSbV" role="37wK5m">
                    <node concept="1rXfSq" id="1nctWZUQRWj" role="2Oq$k0">
                      <ref role="37wK5l" to="ngmm:~UsagesView.getProject()" resolve="getProject" />
                    </node>
                    <node concept="liA8E" id="1nctWZUQSKh" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="1KUoCipvGck" role="3cqZAp">
            <node concept="3clFbS" id="1KUoCipvGcl" role="2LFqv$">
              <node concept="3clFbJ" id="2Q$8bWexho0" role="3cqZAp">
                <node concept="3clFbS" id="2Q$8bWexho2" role="3clFbx">
                  <node concept="3N13vt" id="2Q$8bWexvqu" role="3cqZAp" />
                </node>
                <node concept="3fqX7Q" id="2Q$8bWexti3" role="3clFbw">
                  <node concept="2ZW3vV" id="2Q$8bWexti5" role="3fr31v">
                    <node concept="3uibUv" id="2Q$8bWexti6" role="2ZW6by">
                      <ref role="3uigEE" to="ngmm:~UsagesTree$UsagesTreeNode" resolve="UsagesTree.UsagesTreeNode" />
                    </node>
                    <node concept="2OqwBi" id="2Q$8bWexti7" role="2ZW6bz">
                      <node concept="37vLTw" id="2Q$8bWexti8" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KUoCipvGds" resolve="path" />
                      </node>
                      <node concept="liA8E" id="2Q$8bWexti9" role="2OqNvi">
                        <ref role="37wK5l" to="rgfa:~TreePath.getLastPathComponent()" resolve="getLastPathComponent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1KUoCipvGcA" role="3cqZAp">
                <node concept="3cpWsn" id="1KUoCipvGcB" role="3cpWs9">
                  <property role="TrG5h" value="data" />
                  <node concept="3uibUv" id="1KUoCipvGcC" role="1tU5fm">
                    <ref role="3uigEE" to="qoip:~BaseNodeData" resolve="BaseNodeData" />
                  </node>
                  <node concept="2OqwBi" id="2Q$8bWexCmW" role="33vP2m">
                    <node concept="1eOMI4" id="2Q$8bWexAhe" role="2Oq$k0">
                      <node concept="10QFUN" id="1KUoCipvGcp" role="1eOMHV">
                        <node concept="3uibUv" id="2Q$8bWexxz8" role="10QFUM">
                          <ref role="3uigEE" to="ngmm:~UsagesTree$UsagesTreeNode" resolve="UsagesTree.UsagesTreeNode" />
                        </node>
                        <node concept="2OqwBi" id="1KUoCipvGcr" role="10QFUP">
                          <node concept="37vLTw" id="3GM_nagT_Og" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KUoCipvGds" resolve="path" />
                          </node>
                          <node concept="liA8E" id="1KUoCipvGct" role="2OqNvi">
                            <ref role="37wK5l" to="rgfa:~TreePath.getLastPathComponent()" resolve="getLastPathComponent" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2Q$8bWexFFr" role="2OqNvi">
                      <ref role="37wK5l" to="ngmm:~UsagesTree$UsagesTreeNode.getUsageData()" resolve="getUsageData" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1KUoCipvGcJ" role="3cqZAp">
                <node concept="3clFbS" id="1KUoCipvGcK" role="3clFbx">
                  <node concept="3clFbF" id="1KUoCipvGcL" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCipvGcM" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTABp" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ctIhG_bUMq" resolve="scope" />
                      </node>
                      <node concept="liA8E" id="1KUoCipvGcO" role="2OqNvi">
                        <ref role="37wK5l" node="1nctWZURqYp" resolve="add" />
                        <node concept="2OqwBi" id="1KUoCipvGcP" role="37wK5m">
                          <node concept="1eOMI4" id="5dMA8jjBMQu" role="2Oq$k0">
                            <node concept="10QFUN" id="5dMA8jjBMQr" role="1eOMHV">
                              <node concept="3uibUv" id="5dMA8jjBN4T" role="10QFUM">
                                <ref role="3uigEE" to="qoip:~ModelNodeData" resolve="ModelNodeData" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTxRj" role="10QFUP">
                                <ref role="3cqZAo" node="1KUoCipvGcB" resolve="data" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="1KUoCipvGcT" role="2OqNvi">
                            <ref role="37wK5l" to="qoip:~ModelNodeData.getModelReference()" resolve="getModelReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="1KUoCipvGcU" role="3clFbw">
                  <node concept="3uibUv" id="1KUoCipvGcV" role="2ZW6by">
                    <ref role="3uigEE" to="qoip:~ModelNodeData" resolve="ModelNodeData" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTzcu" role="2ZW6bz">
                    <ref role="3cqZAo" node="1KUoCipvGcB" resolve="data" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1KUoCipvGcX" role="3cqZAp">
                <node concept="3clFbS" id="1KUoCipvGcY" role="3clFbx">
                  <node concept="3clFbF" id="1KUoCipvGcZ" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCipvGd0" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTzCt" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ctIhG_bUMq" resolve="scope" />
                      </node>
                      <node concept="liA8E" id="1KUoCipvGd2" role="2OqNvi">
                        <ref role="37wK5l" node="1nctWZUSy4M" resolve="add" />
                        <node concept="2OqwBi" id="1KUoCipvGd3" role="37wK5m">
                          <node concept="1eOMI4" id="5dMA8jjBM9k" role="2Oq$k0">
                            <node concept="10QFUN" id="5dMA8jjBM9h" role="1eOMHV">
                              <node concept="3uibUv" id="5dMA8jjBMCq" role="10QFUM">
                                <ref role="3uigEE" to="qoip:~ModuleNodeData" resolve="ModuleNodeData" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTuLW" role="10QFUP">
                                <ref role="3cqZAo" node="1KUoCipvGcB" resolve="data" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="1KUoCipvGd7" role="2OqNvi">
                            <ref role="37wK5l" to="qoip:~ModuleNodeData.getModuleReference()" resolve="getModuleReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="1KUoCipvGd8" role="3clFbw">
                  <node concept="3uibUv" id="1KUoCipvGd9" role="2ZW6by">
                    <ref role="3uigEE" to="qoip:~ModuleNodeData" resolve="ModuleNodeData" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTxqS" role="2ZW6bz">
                    <ref role="3cqZAo" node="1KUoCipvGcB" resolve="data" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1KUoCipvGdb" role="3cqZAp">
                <node concept="3clFbS" id="1KUoCipvGdc" role="3clFbx">
                  <node concept="3clFbF" id="1KUoCipvGdd" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCipvGde" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTrWc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ctIhG_bUMq" resolve="scope" />
                      </node>
                      <node concept="liA8E" id="1KUoCipvGdg" role="2OqNvi">
                        <ref role="37wK5l" node="1nctWZURXeo" resolve="add" />
                        <node concept="2OqwBi" id="1KUoCipvGdh" role="37wK5m">
                          <node concept="1eOMI4" id="5dMA8jjBL6r" role="2Oq$k0">
                            <node concept="10QFUN" id="5dMA8jjBL6o" role="1eOMHV">
                              <node concept="3uibUv" id="5dMA8jjBLkQ" role="10QFUM">
                                <ref role="3uigEE" to="qoip:~NodeNodeData" resolve="NodeNodeData" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTzS2" role="10QFUP">
                                <ref role="3cqZAo" node="1KUoCipvGcB" resolve="data" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="1KUoCipvGdl" role="2OqNvi">
                            <ref role="37wK5l" to="qoip:~NodeNodeData.getNodePointer()" resolve="getNodePointer" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="1KUoCipvGdm" role="3clFbw">
                  <node concept="3uibUv" id="1KUoCipvGdn" role="2ZW6by">
                    <ref role="3uigEE" to="qoip:~NodeNodeData" resolve="NodeNodeData" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagT_kr" role="2ZW6bz">
                    <ref role="3cqZAo" node="1KUoCipvGcB" resolve="data" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="1KUoCipvGds" role="1Duv9x">
              <property role="TrG5h" value="path" />
              <node concept="3uibUv" id="1KUoCipvGdt" role="1tU5fm">
                <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTzWA" role="1DdaDG">
              <ref role="3cqZAo" node="7ctIhG_bUM7" resolve="paths" />
            </node>
          </node>
          <node concept="3clFbF" id="7ctIhG_bUND" role="3cqZAp">
            <node concept="2OqwBi" id="7ctIhG_bUNE" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuvI1" role="2Oq$k0">
                <ref role="3cqZAo" node="7ctIhG_bULF" resolve="myDependenciesComponent" />
              </node>
              <node concept="liA8E" id="7ctIhG_bUNG" role="2OqNvi">
                <ref role="37wK5l" node="7ctIhG_bUsz" resolve="updateReferencesView" />
                <node concept="37vLTw" id="3GM_nagT$M5" role="37wK5m">
                  <ref role="3cqZAo" node="7ctIhG_bUMq" resolve="scope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_S9k4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="7ctIhG_bUNI" role="jymVt">
      <property role="TrG5h" value="MyNodeRepresentator" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="7ctIhG_bUNJ" role="1B3o_S" />
      <node concept="3clFbW" id="7ctIhG_bUNK" role="jymVt">
        <node concept="3cqZAl" id="7ctIhG_bUNL" role="3clF45" />
        <node concept="3Tm1VV" id="7ctIhG_bUNM" role="1B3o_S" />
        <node concept="3clFbS" id="7ctIhG_bUNN" role="3clF47" />
      </node>
      <node concept="3clFb_" id="7ctIhG_bUNQ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getCategoryKinds" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7ctIhG_bUNR" role="1B3o_S" />
        <node concept="3uibUv" id="7ctIhG_bUNS" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7ctIhG_bUNT" role="11_B2D">
            <ref role="3uigEE" to="9erk:~CategoryKind" resolve="CategoryKind" />
          </node>
        </node>
        <node concept="3clFbS" id="7ctIhG_bUNU" role="3clF47">
          <node concept="3cpWs6" id="7ctIhG_bUNV" role="3cqZAp">
            <node concept="2YIFZM" id="7ctIhG_bUNW" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_RUk8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7ctIhG_bUOh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getResultsIcon" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7ctIhG_bUOi" role="1B3o_S" />
        <node concept="3uibUv" id="7ctIhG_bUOj" role="3clF45">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="3clFbS" id="7ctIhG_bUOk" role="3clF47">
          <node concept="3cpWs6" id="7ctIhG_bUOl" role="3cqZAp">
            <node concept="10M0yZ" id="7ctIhG_bUOm" role="3cqZAk">
              <ref role="3cqZAo" to="xnls:~IdeIcons.REFERENCE_ICON" resolve="REFERENCE_ICON" />
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_RUkd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7ctIhG_bUOn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getResultsText" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="7ctIhG_bUOo" role="1B3o_S" />
        <node concept="17QB3L" id="75BB0NbE1$E" role="3clF45" />
        <node concept="37vLTG" id="7ctIhG_bUOq" role="3clF46">
          <property role="TrG5h" value="options" />
          <node concept="3uibUv" id="7ctIhG_bUOr" role="1tU5fm">
            <ref role="3uigEE" to="gkle:~TextOptions" resolve="TextOptions" />
          </node>
        </node>
        <node concept="3clFbS" id="7ctIhG_bUOs" role="3clF47">
          <node concept="3cpWs8" id="5FQpjoIaQiL" role="3cqZAp">
            <node concept="3cpWsn" id="5FQpjoIaQiM" role="3cpWs9">
              <property role="TrG5h" value="presentation" />
              <node concept="17QB3L" id="5FQpjoIaQiN" role="1tU5fm" />
              <node concept="2EnYce" id="2574WfmYmsN" role="33vP2m">
                <node concept="2OqwBi" id="5FQpjoIaQiP" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeunfl" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ctIhG_bUL$" resolve="myParent" />
                  </node>
                  <node concept="liA8E" id="5FQpjoIaQiR" role="2OqNvi">
                    <ref role="37wK5l" node="7ctIhG_bUr1" resolve="getCurrentScope" />
                  </node>
                </node>
                <node concept="liA8E" id="5FQpjoIaQiS" role="2OqNvi">
                  <ref role="37wK5l" node="7ctIhG_bUIT" resolve="getPresentation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5FQpjoIaQiV" role="3cqZAp">
            <node concept="3clFbS" id="5FQpjoIaQiW" role="3clFbx">
              <node concept="3clFbF" id="5FQpjoIaQj5" role="3cqZAp">
                <node concept="37vLTI" id="5FQpjoIaQj7" role="3clFbG">
                  <node concept="Xl_RD" id="5FQpjoIaQja" role="37vLTx">
                    <property role="Xl_RC" value="the left tree scope selection" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTxWX" role="37vLTJ">
                    <ref role="3cqZAo" node="5FQpjoIaQiM" resolve="presentation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5FQpjoIaQj0" role="3clFbw">
              <node concept="37vLTw" id="3GM_nagTvAO" role="2Oq$k0">
                <ref role="3cqZAo" node="5FQpjoIaQiM" resolve="presentation" />
              </node>
              <node concept="17RlXB" id="5FQpjoIaQj4" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="75BB0NbDHfD" role="3cqZAp" />
          <node concept="3clFbF" id="7ctIhG_bUOt" role="3cqZAp">
            <node concept="3cpWs3" id="7ctIhG_bUOu" role="3clFbG">
              <node concept="1eOMI4" id="75BB0NbDHfF" role="3uHU7B">
                <node concept="3K4zz7" id="75BB0NbDJqu" role="1eOMHV">
                  <node concept="2OqwBi" id="75BB0NbDHg4" role="3K4Cdx">
                    <node concept="37vLTw" id="75BB0NbDHfN" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ctIhG_bUL$" resolve="myParent" />
                    </node>
                    <node concept="liA8E" id="75BB0NbDJqd" role="2OqNvi">
                      <ref role="37wK5l" node="75BB0NbDJpI" resolve="isMeta" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="75BB0NbDHfG" role="3K4GZi">
                    <property role="Xl_RC" value="Dependencies of " />
                  </node>
                  <node concept="Xl_RD" id="75BB0NbDJqF" role="3K4E3e">
                    <property role="Xl_RC" value="Used languages in " />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTtjW" role="3uHU7w">
                <ref role="3cqZAo" node="5FQpjoIaQiM" resolve="presentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_RUke" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="30S9H56jHYm" role="1zkMxy">
        <ref role="3uigEE" to="dsdj:~NodeRepresentatorBase" resolve="NodeRepresentatorBase" />
        <node concept="3uibUv" id="30S9H56jMQy" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
  </node>
</model>

