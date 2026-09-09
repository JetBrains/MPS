<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fc6b4266-fe93-4e02-bc36-aebff4c903c3(jetbrains.mps.baseLanguage.execution.api)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="fbc14279-5e2a-4c87-a5d1-5f7061e6c456" name="jetbrains.mps.debugger.api.lang" version="-1" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="-1" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mcvh" ref="r:4032b78d-911f-4395-b88c-ccb50cb24300(jetbrains.mps.debugger.java.api.settings)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="if8w" ref="r:95397225-9080-48bc-b1aa-0ce7c4f3d2ce(jetbrains.mps.lang.traceable.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="b0pz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.facets(MPS.Core/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="xk9i" ref="r:49e49752-a85e-4d81-811e-1dc850a8e4cd(jetbrains.mps.execution.lib.ui)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="embf" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.jar(JDK/)" />
    <import index="m5my" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jetbrains.jps.model.java(MPS.IDEA/)" />
    <import index="ixe9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.concurrency(MPS.IDEA/)" />
    <import index="fnpx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.notification(MPS.IDEA/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="eydd" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.zip(JDK/)" />
    <import index="f2k0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.lang(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239360506533" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleDeclaration" flags="ng" index="2fD8I5">
        <child id="1239529553065" name="component" index="2pHZQ9" />
        <child id="2423993921025641700" name="implements" index="3TOOP4" />
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
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands">
      <concept id="889694274152216058" name="jetbrains.mps.execution.commands.structure.ProcessBuilderCommandPartType" flags="in" index="2dOA70" />
      <concept id="889694274152177535" name="jetbrains.mps.execution.commands.structure.KeyValueCommandPart" flags="nn" index="2dOGH5">
        <property id="1616228152991918665" name="dash" index="Lv5iS" />
        <child id="889694274152177539" name="key" index="2dOGIT" />
        <child id="889694274152177540" name="value" index="2dOGIY" />
      </concept>
      <concept id="856705193941281756" name="jetbrains.mps.execution.commands.structure.CommandParameterReference" flags="nn" index="2LYoG9">
        <reference id="856705193941281758" name="parameter" index="2LYoGb" />
      </concept>
      <concept id="856705193941281753" name="jetbrains.mps.execution.commands.structure.CommandReferenceExpression" flags="nn" index="2LYoGc">
        <reference id="856705193941281755" name="command" index="2LYoGe" />
      </concept>
      <concept id="856705193941281780" name="jetbrains.mps.execution.commands.structure.CommandBuilderExpression" flags="nn" index="2LYoGx">
        <reference id="6129022259108621329" name="commandPart" index="3rFKlk" />
        <child id="856705193941281781" name="argument" index="2LYoGw" />
      </concept>
      <concept id="856705193941281790" name="jetbrains.mps.execution.commands.structure.ReportExecutionError" flags="nn" index="2LYoGF" />
      <concept id="856705193941281764" name="jetbrains.mps.execution.commands.structure.CommandParameterAssignment" flags="ng" index="2LYoGL">
        <reference id="856705193941281765" name="parameterDeclaration" index="2LYoGK" />
        <child id="856705193941281766" name="value" index="2LYoGN" />
      </concept>
      <concept id="856705193941281767" name="jetbrains.mps.execution.commands.structure.CommandMethod" flags="ng" index="2LYoGM" />
      <concept id="856705193941281762" name="jetbrains.mps.execution.commands.structure.ExplicitCommandParameterDeclaration" flags="ng" index="2LYoGR">
        <property id="856705193941281763" name="isRequired" index="2LYoGQ" />
      </concept>
      <concept id="856705193941281768" name="jetbrains.mps.execution.commands.structure.CommandDeclaration" flags="ng" index="2LYoGX">
        <child id="856705193941281774" name="method" index="2LYoGV" />
        <child id="8478830098674492346" name="debuggerParameter" index="VMfyR" />
        <child id="6586232406240908850" name="debuggerConfiguration" index="Xgi_8" />
        <child id="6129022259108579262" name="executePart" index="3rFUVV" />
      </concept>
      <concept id="856705193941281792" name="jetbrains.mps.execution.commands.structure.ReportErrorStatement" flags="nn" index="2LYoNl">
        <child id="856705193941281796" name="exception" index="2LYoNh" />
        <child id="856705193941281795" name="message" index="2LYoNm" />
      </concept>
      <concept id="8234001627573935224" name="jetbrains.mps.execution.commands.structure.CommandPartToListOperation" flags="nn" index="2TNl2y" />
      <concept id="8478830098674460022" name="jetbrains.mps.execution.commands.structure.DebuggerSettingsCommandParameterDeclaration" flags="ng" index="VMRTV" />
      <concept id="6129022259108579244" name="jetbrains.mps.execution.commands.structure.ExecuteCommandPart" flags="ng" index="3rFUVD">
        <child id="6129022259108579245" name="parameterDeclaration" index="3rFUVC" />
        <child id="6129022259108579246" name="execute" index="3rFUVF" />
      </concept>
      <concept id="6868250101935610313" name="jetbrains.mps.execution.commands.structure.ListCommandPart" flags="nn" index="1tenjt">
        <child id="2168104298250244983" name="items" index="1r8FgC" />
        <child id="6868250101935610316" name="separator" index="1tenjo" />
        <child id="6868250101935610315" name="list" index="1tenjv" />
      </concept>
      <concept id="2343546112398330898" name="jetbrains.mps.execution.commands.structure.NewProcessBuilderExpression" flags="nn" index="3CLvVn">
        <child id="2343546112398330901" name="commandPart" index="3CLvVg" />
        <child id="2343546112398330902" name="workingDirectory" index="3CLvVj" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA" />
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
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
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings">
      <concept id="946964771156067216" name="jetbrains.mps.execution.settings.structure.Configuration_Parameter" flags="nn" index="yHkzx" />
      <concept id="946964771156066611" name="jetbrains.mps.execution.settings.structure.EditorPropertyReference" flags="nn" index="yHkD2" />
      <concept id="946964771156066610" name="jetbrains.mps.execution.settings.structure.EditorPropertyDeclaration" flags="ng" index="yHkD3" />
      <concept id="946964771156066614" name="jetbrains.mps.execution.settings.structure.ResetFrom_Function" flags="ig" index="yHkD7" />
      <concept id="946964771156066621" name="jetbrains.mps.execution.settings.structure.SettingsEditor" flags="ng" index="yHkDc">
        <child id="946964771156066625" name="dispose" index="yHkCK" />
        <child id="946964771156066624" name="resetFrom" index="yHkCL" />
        <child id="946964771156066626" name="propertyDeclaration" index="yHkCN" />
        <child id="946964771156066623" name="applyTo" index="yHkDe" />
        <child id="946964771156066622" name="createEditor" index="yHkDf" />
      </concept>
      <concept id="946964771156066594" name="jetbrains.mps.execution.settings.structure.IPersistentPropertyHolder" flags="ngI" index="yHkDj">
        <child id="946964771156066595" name="persistentProperty" index="yHkDi" />
      </concept>
      <concept id="946964771156066601" name="jetbrains.mps.execution.settings.structure.ApplyTo_Function" flags="ig" index="yHkDo" />
      <concept id="946964771156066579" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationTemplate" flags="ng" index="yHkDy">
        <child id="946964771156066581" name="templateParameter" index="yHkD$" />
      </concept>
      <concept id="946964771156066585" name="jetbrains.mps.execution.settings.structure.PersistentPropertyDeclaration" flags="ng" index="yHkDC" />
      <concept id="946964771156066586" name="jetbrains.mps.execution.settings.structure.TemplateParameter" flags="ng" index="yHkDF" />
      <concept id="946964771156066566" name="jetbrains.mps.execution.settings.structure.CreateEditor_Function" flags="ig" index="yHkDR" />
      <concept id="946964771156066571" name="jetbrains.mps.execution.settings.structure.Dispose_Function" flags="ig" index="yHkDU" />
      <concept id="946964771156066574" name="jetbrains.mps.execution.settings.structure.PersistentPropertyReferenceOperation" flags="nn" index="yHkDZ">
        <reference id="946964771156066575" name="variableDeclaration" index="yHkDY" />
      </concept>
      <concept id="946964771156066336" name="jetbrains.mps.execution.settings.structure.PersistentConfiguration" flags="ng" index="yHkHh">
        <child id="946964771156066337" name="editor" index="yHkHg" />
        <child id="946964771156066339" name="methods" index="yHkHi" />
      </concept>
      <concept id="946964771156066331" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationMethod" flags="ng" index="yHkHE" />
      <concept id="2722628536111969416" name="jetbrains.mps.execution.settings.structure.GridBagConstraints" flags="nn" index="1rwKMM">
        <property id="2722628536111969418" name="constraintsKind" index="1rwKMK" />
        <child id="2722628536112144966" name="order" index="1rxHDW" />
      </concept>
    </language>
    <language id="fbc14279-5e2a-4c87-a5d1-5f7061e6c456" name="jetbrains.mps.debugger.api.lang">
      <concept id="1104094430779068753" name="jetbrains.mps.debugger.api.lang.structure.DebuggerReference" flags="nn" index="3Qg5_p">
        <property id="1104094430779068757" name="debuggerName" index="3Qg5_t" />
      </concept>
      <concept id="6720907903633266421" name="jetbrains.mps.debugger.api.lang.structure.DebuggerConfiguration" flags="ng" index="1Tq63k">
        <child id="6720907903633266913" name="getSettings" index="1Tq6V0" />
        <child id="6720907903633266912" name="debugger" index="1Tq6V1" />
      </concept>
      <concept id="6720907903633266914" name="jetbrains.mps.debugger.api.lang.structure.GetDebuggerSettings_Function" flags="in" index="1Tq6V3" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5472444609684539882" name="jetbrains.mps.lang.smodel.structure.SConceptTypeLiteral" flags="ig" index="2uNoUa">
        <reference id="5472444609684539883" name="conceptDeclaraton" index="2uNoUb" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="8329979535468945057" name="jetbrains.mps.lang.smodel.structure.Node_PresentationOperation" flags="ng" index="2Iv5rx" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="6995935425733782641" name="jetbrains.mps.lang.smodel.structure.Model_GetModule" flags="nn" index="13u695" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
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
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1184963466173" name="jetbrains.mps.baseLanguage.collections.structure.ToArrayOperation" flags="nn" index="3_kTaI" />
    </language>
  </registry>
  <node concept="2LYoGX" id="14R2qyOBxa1">
    <property role="TrG5h" value="java" />
    <node concept="3rFUVD" id="14R2qyOBxa2" role="3rFUVV">
      <node concept="2LYoGR" id="14R2qyOBxa3" role="3rFUVC">
        <property role="TrG5h" value="workingDirectory" />
        <node concept="3uibUv" id="14R2qyOBxa4" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2ShNRf" id="14R2qyOBxa5" role="33vP2m">
          <node concept="1pGfFk" id="14R2qyOBxa6" role="2ShVmc">
            <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
            <node concept="Xl_RD" id="4uBXTiZ7bnZ" role="37wK5m">
              <property role="Xl_RC" value="." />
            </node>
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxa8" role="3rFUVC">
        <property role="TrG5h" value="jrePath" />
        <node concept="17QB3L" id="14R2qyOBxa9" role="1tU5fm" />
        <node concept="2OqwBi" id="14R2qyOBxaa" role="33vP2m">
          <node concept="2WthIp" id="14R2qyOBxab" role="2Oq$k0" />
          <node concept="2XshWL" id="14R2qyOBxac" role="2OqNvi">
            <ref role="2WH_rO" node="14R2qyOBxl$" resolve="getJdkHome" />
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxad" role="3rFUVC">
        <property role="TrG5h" value="programParameter" />
        <node concept="17QB3L" id="14R2qyOBxae" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxaf" role="3rFUVC">
        <property role="TrG5h" value="virtualMachineParameter" />
        <node concept="17QB3L" id="14R2qyOBxag" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxah" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="14R2qyOBxai" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxaj" role="3rFUVC">
        <property role="TrG5h" value="classPath" />
        <node concept="_YKpA" id="14R2qyOBxak" role="1tU5fm">
          <node concept="17QB3L" id="14R2qyOBxal" role="_ZDj9" />
        </node>
        <node concept="2ShNRf" id="14R2qyOBxam" role="33vP2m">
          <node concept="Tc6Ow" id="14R2qyOBxan" role="2ShVmc">
            <node concept="17QB3L" id="14R2qyOBxao" role="HW$YZ" />
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="3KU19GSx2Da" role="3rFUVC">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3KU19GSx2Db" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="9aQIb" id="14R2qyOBxap" role="3rFUVF">
        <node concept="3clFbS" id="14R2qyOBxaq" role="9aQI4">
          <node concept="3clFbF" id="14R2qyOBxar" role="3cqZAp">
            <node concept="2LYoGx" id="14R2qyOBxas" role="3clFbG">
              <ref role="3rFKlk" node="14R2qyOBxbc" resolve="java" />
              <node concept="2LYoGL" id="14R2qyOBxat" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxbd" resolve="workingDirectory" />
                <node concept="2LYoG9" id="14R2qyOBxau" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxa3" resolve="workingDirectory" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxav" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxbi" resolve="jrePath" />
                <node concept="2LYoG9" id="14R2qyOBxaw" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxa8" resolve="jrePath" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxax" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxbn" resolve="programParameter" />
                <node concept="2LYoG9" id="14R2qyOBxay" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxad" resolve="programParameter" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxaz" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxbp" resolve="virtualMachineParameter" />
                <node concept="2LYoG9" id="14R2qyOBxa$" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxaf" resolve="virtualMachineParameter" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxa_" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxbr" resolve="className" />
                <node concept="2LYoG9" id="14R2qyOBxaA" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxah" resolve="className" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxaB" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxbt" resolve="classPath" />
                <node concept="2OqwBi" id="14R2qyOBxaC" role="2LYoGN">
                  <node concept="2OqwBi" id="14R2qyOBxaD" role="2Oq$k0">
                    <node concept="2LYoG9" id="14R2qyOBxaE" role="2Oq$k0">
                      <ref role="2LYoGb" node="14R2qyOBxaj" resolve="classPath" />
                    </node>
                    <node concept="3$u5V9" id="14R2qyOBxaF" role="2OqNvi">
                      <node concept="1bVj0M" id="14R2qyOBxaG" role="23t8la">
                        <node concept="3clFbS" id="14R2qyOBxaH" role="1bW5cS">
                          <node concept="3clFbJ" id="14R2qyOBxaI" role="3cqZAp">
                            <node concept="3clFbS" id="14R2qyOBxaJ" role="3clFbx">
                              <node concept="3cpWs6" id="14R2qyOBxaK" role="3cqZAp">
                                <node concept="2ShNRf" id="14R2qyOBxaL" role="3cqZAk">
                                  <node concept="1pGfFk" id="14R2qyOBxaM" role="2ShVmc">
                                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                    <node concept="2OqwBi" id="14R2qyOBxaN" role="37wK5m">
                                      <node concept="37vLTw" id="2BHiRxgmA0_" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Xig" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="14R2qyOBxaP" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                                        <node concept="3cmrfG" id="14R2qyOBxaQ" role="37wK5m">
                                          <property role="3cmrfH" value="1" />
                                        </node>
                                        <node concept="3cpWsd" id="14R2qyOBxaR" role="37wK5m">
                                          <node concept="3cmrfG" id="14R2qyOBxaS" role="3uHU7w">
                                            <property role="3cmrfH" value="2" />
                                          </node>
                                          <node concept="2OqwBi" id="14R2qyOBxaT" role="3uHU7B">
                                            <node concept="37vLTw" id="2BHiRxglRNM" role="2Oq$k0">
                                              <ref role="3cqZAo" node="5W7E4fV0Xig" resolve="it" />
                                            </node>
                                            <node concept="liA8E" id="14R2qyOBxaV" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="14R2qyOBxaW" role="3clFbw">
                              <node concept="2OqwBi" id="14R2qyOBxaX" role="3uHU7w">
                                <node concept="37vLTw" id="2BHiRxglMJZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Xig" resolve="it" />
                                </node>
                                <node concept="liA8E" id="14R2qyOBxaZ" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                                  <node concept="Xl_RD" id="14R2qyOBxb0" role="37wK5m">
                                    <property role="Xl_RC" value="\&quot;" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="14R2qyOBxb1" role="3uHU7B">
                                <node concept="37vLTw" id="2BHiRxgm9fX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Xig" resolve="it" />
                                </node>
                                <node concept="liA8E" id="14R2qyOBxb3" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                                  <node concept="Xl_RD" id="14R2qyOBxb4" role="37wK5m">
                                    <property role="Xl_RC" value="\&quot;" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="14R2qyOBxb5" role="3cqZAp">
                            <node concept="2ShNRf" id="14R2qyOBxb6" role="3clFbG">
                              <node concept="1pGfFk" id="14R2qyOBxb7" role="2ShVmc">
                                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                                <node concept="37vLTw" id="2BHiRxgm7op" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0Xig" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Xig" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Xih" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="14R2qyOBxbb" role="2OqNvi" />
                </node>
              </node>
              <node concept="2LYoGL" id="3KU19GSx2ID" role="2LYoGw">
                <ref role="2LYoGK" node="3KU19GSwEj3" resolve="project" />
                <node concept="2LYoG9" id="3KU19GSx2SZ" role="2LYoGN">
                  <ref role="2LYoGb" node="3KU19GSx2Da" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3rFUVD" id="14R2qyOBxbc" role="3rFUVV">
      <node concept="2LYoGR" id="14R2qyOBxbd" role="3rFUVC">
        <property role="TrG5h" value="workingDirectory" />
        <node concept="3uibUv" id="14R2qyOBxbe" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2ShNRf" id="14R2qyOBxbf" role="33vP2m">
          <node concept="1pGfFk" id="14R2qyOBxbg" role="2ShVmc">
            <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
            <node concept="Xl_RD" id="4uBXTiZ7bME" role="37wK5m">
              <property role="Xl_RC" value="." />
            </node>
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxbi" role="3rFUVC">
        <property role="TrG5h" value="jrePath" />
        <node concept="17QB3L" id="14R2qyOBxbj" role="1tU5fm" />
        <node concept="2OqwBi" id="14R2qyOBxbk" role="33vP2m">
          <node concept="2WthIp" id="14R2qyOBxbl" role="2Oq$k0" />
          <node concept="2XshWL" id="14R2qyOBxbm" role="2OqNvi">
            <ref role="2WH_rO" node="14R2qyOBxl$" resolve="getJdkHome" />
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxbn" role="3rFUVC">
        <property role="TrG5h" value="programParameter" />
        <node concept="17QB3L" id="14R2qyOBxbo" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxbp" role="3rFUVC">
        <property role="TrG5h" value="virtualMachineParameter" />
        <node concept="17QB3L" id="14R2qyOBxbq" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxbr" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="14R2qyOBxbs" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxbt" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="classPath" />
        <node concept="_YKpA" id="14R2qyOBxbu" role="1tU5fm">
          <node concept="3uibUv" id="14R2qyOBxbv" role="_ZDj9">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
        <node concept="2ShNRf" id="14R2qyOBxbw" role="33vP2m">
          <node concept="Tc6Ow" id="14R2qyOBxbx" role="2ShVmc">
            <node concept="3uibUv" id="14R2qyOBxby" role="HW$YZ">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="3KU19GSwEj3" role="3rFUVC">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3KU19GSwE_v" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="9aQIb" id="14R2qyOBxbz" role="3rFUVF">
        <node concept="3clFbS" id="14R2qyOBxb$" role="9aQI4">
          <node concept="3clFbF" id="14R2qyOBxb_" role="3cqZAp">
            <node concept="2LYoGx" id="14R2qyOBxbA" role="3clFbG">
              <ref role="3rFKlk" node="14R2qyOBxbP" resolve="java" />
              <node concept="2LYoGL" id="14R2qyOBxbB" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxbQ" resolve="workingDirectory" />
                <node concept="2LYoG9" id="14R2qyOBxbC" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxbd" resolve="workingDirectory" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxbD" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxbV" resolve="jrePath" />
                <node concept="2LYoG9" id="14R2qyOBxbE" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxbi" resolve="jrePath" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxbF" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxc0" resolve="programParameter" />
                <node concept="1tenjt" id="14R2qyOBxbG" role="2LYoGN">
                  <node concept="2LYoG9" id="14R2qyOBxbH" role="1r8FgC">
                    <ref role="2LYoGb" node="14R2qyOBxbn" resolve="programParameter" />
                  </node>
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxbI" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxc2" resolve="virtualMachineParameter" />
                <node concept="1tenjt" id="14R2qyOBxbJ" role="2LYoGN">
                  <node concept="2LYoG9" id="14R2qyOBxbK" role="1r8FgC">
                    <ref role="2LYoGb" node="14R2qyOBxbp" resolve="virtualMachineParameter" />
                  </node>
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxbL" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxc4" resolve="className" />
                <node concept="2LYoG9" id="14R2qyOBxbM" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxbr" resolve="className" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxbN" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxc6" resolve="classPath" />
                <node concept="2LYoG9" id="14R2qyOBxbO" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxbt" resolve="classPath" />
                </node>
              </node>
              <node concept="2LYoGL" id="3KU19GSwJjT" role="2LYoGw">
                <ref role="2LYoGK" node="3KU19GSwh4P" resolve="project" />
                <node concept="2LYoG9" id="3KU19GSwJt6" role="2LYoGN">
                  <ref role="2LYoGb" node="3KU19GSwEj3" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3rFUVD" id="14R2qyOBxbP" role="3rFUVV">
      <node concept="2LYoGR" id="14R2qyOBxbQ" role="3rFUVC">
        <property role="TrG5h" value="workingDirectory" />
        <node concept="3uibUv" id="14R2qyOBxbR" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2ShNRf" id="14R2qyOBxbS" role="33vP2m">
          <node concept="1pGfFk" id="14R2qyOBxbT" role="2ShVmc">
            <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
            <node concept="Xl_RD" id="4uBXTiZ7cbC" role="37wK5m">
              <property role="Xl_RC" value="." />
            </node>
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxbV" role="3rFUVC">
        <property role="TrG5h" value="jrePath" />
        <node concept="17QB3L" id="14R2qyOBxbW" role="1tU5fm" />
        <node concept="2OqwBi" id="14R2qyOBxbX" role="33vP2m">
          <node concept="2WthIp" id="14R2qyOBxbY" role="2Oq$k0" />
          <node concept="2XshWL" id="14R2qyOBxbZ" role="2OqNvi">
            <ref role="2WH_rO" node="14R2qyOBxl$" resolve="getJdkHome" />
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxc0" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="programParameter" />
        <node concept="2dOA70" id="14R2qyOBxc1" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxc2" role="3rFUVC">
        <property role="TrG5h" value="virtualMachineParameter" />
        <node concept="2dOA70" id="14R2qyOBxc3" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxc4" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="14R2qyOBxc5" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxc6" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="classPath" />
        <node concept="_YKpA" id="14R2qyOBxc7" role="1tU5fm">
          <node concept="3uibUv" id="14R2qyOBxc8" role="_ZDj9">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
        <node concept="2ShNRf" id="14R2qyOBxc9" role="33vP2m">
          <node concept="Tc6Ow" id="14R2qyOBxca" role="2ShVmc">
            <node concept="3uibUv" id="14R2qyOBxcb" role="HW$YZ">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="3KU19GSwh4P" role="3rFUVC">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3KU19GSwiaD" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2LYoGR" id="7x8e1U8kyRO" role="3rFUVC">
        <property role="TrG5h" value="jarManifestLimit" />
        <node concept="10Oyi0" id="7x8e1U8k$PB" role="1tU5fm" />
        <node concept="3cmrfG" id="7x8e1U8kAhJ" role="33vP2m">
          <property role="3cmrfH" value="-1" />
        </node>
      </node>
      <node concept="9aQIb" id="14R2qyOBxcc" role="3rFUVF">
        <node concept="3clFbS" id="14R2qyOBxcd" role="9aQI4">
          <node concept="3clFbJ" id="14R2qyOBxcl" role="3cqZAp">
            <node concept="3clFbS" id="14R2qyOBxcm" role="3clFbx">
              <node concept="2LYoGF" id="14R2qyOBxcn" role="3cqZAp">
                <node concept="Xl_RD" id="14R2qyOBxco" role="2LYoNm">
                  <property role="Xl_RC" value="Classname is empty" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="14R2qyOBxcp" role="3clFbw">
              <node concept="2LYoG9" id="14R2qyOBxcq" role="2Oq$k0">
                <ref role="2LYoGb" node="14R2qyOBxc4" resolve="className" />
              </node>
              <node concept="17RlXB" id="14R2qyOBxcr" role="2OqNvi" />
            </node>
          </node>
          <node concept="3cpWs8" id="14R2qyOBxce" role="3cqZAp">
            <node concept="3cpWsn" id="14R2qyOBxcf" role="3cpWs9">
              <property role="TrG5h" value="java" />
              <node concept="3uibUv" id="14R2qyOBxcg" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
              <node concept="2OqwBi" id="14R2qyOBxch" role="33vP2m">
                <node concept="2WthIp" id="14R2qyOBxci" role="2Oq$k0" />
                <node concept="2XshWL" id="14R2qyOBxcj" role="2OqNvi">
                  <ref role="2WH_rO" node="14R2qyOBxja" resolve="getJavaCommand" />
                  <node concept="2LYoG9" id="14R2qyOBxck" role="2XxRq1">
                    <ref role="2LYoGb" node="14R2qyOBxbV" resolve="jrePath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3KU19GSuObJ" role="3cqZAp">
            <node concept="2OqwBi" id="3KU19GSuZDv" role="3clFbG">
              <node concept="2ShNRf" id="3KU19GSuObF" role="2Oq$k0">
                <node concept="1pGfFk" id="3KU19GSuXj5" role="2ShVmc">
                  <ref role="37wK5l" node="3KU19GSuBTw" resolve="JDKVersionChecker" />
                  <node concept="2LYoG9" id="3KU19GSwibb" role="37wK5m">
                    <ref role="2LYoGb" node="3KU19GSwh4P" resolve="project" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3KU19GSuZQf" role="2OqNvi">
                <ref role="37wK5l" node="3KU19GSuC0y" resolve="checkAndNotifyOldJDK" />
                <node concept="2LYoG9" id="3KU19GSvF6I" role="37wK5m">
                  <ref role="2LYoGb" node="14R2qyOBxbV" resolve="jrePath" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6QjbmLJoMmQ" role="3cqZAp">
            <node concept="3cpWsn" id="6QjbmLJoMmT" role="3cpWs9">
              <property role="TrG5h" value="argumentFile" />
              <property role="2Lvdk3" value="argumentFile" />
              <node concept="3uibUv" id="6QjbmLJoMmV" role="1tU5fm">
                <ref role="3uigEE" node="6QjbmLJojfu" resolve="ArgumentFileBuilder" />
              </node>
              <node concept="2OqwBi" id="6QjbmLJoMmW" role="33vP2m">
                <node concept="2ShNRf" id="6QjbmLJoMmZ" role="2Oq$k0">
                  <node concept="HV5vD" id="6QjbmLJoMn1" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="HV5vE" node="6QjbmLJojfu" resolve="ArgumentFileBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="6QjbmLJoMn2" role="2OqNvi">
                  <ref role="37wK5l" node="6QjbmLJojfA" resolve="withClassPath" />
                  <node concept="2LYoG9" id="6QjbmLJoMn3" role="37wK5m">
                    <ref role="2LYoGb" node="14R2qyOBxc6" resolve="classPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="7x8e1U8kB50" role="3cqZAp">
            <node concept="1PaTwC" id="7x8e1U8kB51" role="1aUNEU">
              <node concept="3oM_SD" id="7x8e1U8kEHW" role="1PaTwD">
                <property role="3oM_SC" value="In" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEHY" role="1PaTwD">
                <property role="3oM_SC" value="fact," />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEI1" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEI5" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEIa" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEIg" role="1PaTwD">
                <property role="3oM_SC" value="workaround" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEIn" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEIv" role="1PaTwD">
                <property role="3oM_SC" value="MPS-35210." />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEKk" role="1PaTwD">
                <property role="3oM_SC" value="In" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEKu" role="1PaTwD">
                <property role="3oM_SC" value="2022.3," />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEKD" role="1PaTwD">
                <property role="3oM_SC" value="IDEA" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEKP" role="1PaTwD">
                <property role="3oM_SC" value="demands" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEL2" role="1PaTwD">
                <property role="3oM_SC" value="use" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEM6" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEM_" role="1PaTwD">
                <property role="3oM_SC" value="PathClassLoader" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEMP" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kEN6" role="1PaTwD">
                <property role="3oM_SC" value="system" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kENo" role="1PaTwD">
                <property role="3oM_SC" value="CL" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="7x8e1U8kF7k" role="3cqZAp">
            <node concept="1PaTwC" id="7x8e1U8kF7l" role="1aUNEU">
              <node concept="3oM_SD" id="7x8e1U8kFo6" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFoo" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFor" role="1PaTwD">
                <property role="3oM_SC" value="doesn't" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFov" role="1PaTwD">
                <property role="3oM_SC" value="work" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFp4" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFpq" role="1PaTwD">
                <property role="3oM_SC" value="CP" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFq1" role="1PaTwD">
                <property role="3oM_SC" value="specified" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFq9" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFqy" role="1PaTwD">
                <property role="3oM_SC" value="MANIFEST.MF." />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFtM" role="1PaTwD">
                <property role="3oM_SC" value="I" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFud" role="1PaTwD">
                <property role="3oM_SC" value="want" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFuD" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFuQ" role="1PaTwD">
                <property role="3oM_SC" value="keep" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFvO" role="1PaTwD">
                <property role="3oM_SC" value="this" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFwj" role="1PaTwD">
                <property role="3oM_SC" value="code" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFwN" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFx4" role="1PaTwD">
                <property role="3oM_SC" value="it's" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFxA" role="1PaTwD">
                <property role="3oM_SC" value="handy" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFyD" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFyX" role="1PaTwD">
                <property role="3oM_SC" value="have" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFzy" role="1PaTwD">
                <property role="3oM_SC" value="long" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kFzS" role="1PaTwD">
                <property role="3oM_SC" value="CP" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="7x8e1U8kFSK" role="3cqZAp">
            <node concept="1PaTwC" id="7x8e1U8kFSL" role="1aUNEU">
              <node concept="3oM_SD" id="7x8e1U8kFV6" role="1PaTwD">
                <property role="3oM_SC" value="serialized," />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kG9i" role="1PaTwD">
                <property role="3oM_SC" value="just" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kG9_" role="1PaTwD">
                <property role="3oM_SC" value="make" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kG9T" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kG9Y" role="1PaTwD">
                <property role="3oM_SC" value="inactive" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGa4" role="1PaTwD">
                <property role="3oM_SC" value="now" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGaV" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGbG" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGcl" role="1PaTwD">
                <property role="3oM_SC" value="code" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGcv" role="1PaTwD">
                <property role="3oM_SC" value="calls" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGcE" role="1PaTwD">
                <property role="3oM_SC" value="jarManifestLimit" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGd6" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGdN" role="1PaTwD">
                <property role="3oM_SC" value="&gt;0" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGeh" role="1PaTwD">
                <property role="3oM_SC" value="value" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGf0" role="1PaTwD">
                <property role="3oM_SC" value="at" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGfg" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="7x8e1U8kGfx" role="1PaTwD">
                <property role="3oM_SC" value="moment." />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="14R2qyOBxcs" role="3cqZAp">
            <node concept="3clFbS" id="14R2qyOBxct" role="3clFbx">
              <node concept="3SKdUt" id="1CVOLqOQILe" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXodUy" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXodUz" role="1PaTwD">
                    <property role="3oM_SC" value="next" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodU$" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodU_" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodUA" role="1PaTwD">
                    <property role="3oM_SC" value="deal" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodUB" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodUC" role="1PaTwD">
                    <property role="3oM_SC" value="very" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodUD" role="1PaTwD">
                    <property role="3oM_SC" value="long" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodUE" role="1PaTwD">
                    <property role="3oM_SC" value="CP" />
                  </node>
                </node>
              </node>
              <node concept="3J1_TO" id="14R2qyOBxcu" role="3cqZAp">
                <node concept="3clFbS" id="14R2qyOBxcv" role="1zxBo7">
                  <node concept="3cpWs8" id="iIJcS6lAZ3" role="3cqZAp">
                    <node concept="3cpWsn" id="iIJcS6lAZ4" role="3cpWs9">
                      <property role="TrG5h" value="jmb" />
                      <node concept="3uibUv" id="iIJcS6lAZ5" role="1tU5fm">
                        <ref role="3uigEE" node="iIJcS6j69w" resolve="JarManifestBuilder" />
                      </node>
                      <node concept="2ShNRf" id="iIJcS6lB_3" role="33vP2m">
                        <node concept="HV5vD" id="iIJcS6lCn1" role="2ShVmc">
                          <ref role="HV5vE" node="iIJcS6j69w" resolve="JarManifestBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="iIJcS6lEYS" role="3cqZAp">
                    <node concept="3cpWsn" id="iIJcS6lEYT" role="3cpWs9">
                      <property role="TrG5h" value="jar" />
                      <node concept="3uibUv" id="iIJcS6lEYI" role="1tU5fm">
                        <ref role="3uigEE" to="guwi:~File" resolve="File" />
                      </node>
                      <node concept="2OqwBi" id="iIJcS6lEYU" role="33vP2m">
                        <node concept="2OqwBi" id="iIJcS6lEYV" role="2Oq$k0">
                          <node concept="2OqwBi" id="iIJcS6lEYW" role="2Oq$k0">
                            <node concept="37vLTw" id="iIJcS6lEYX" role="2Oq$k0">
                              <ref role="3cqZAo" node="iIJcS6lAZ4" resolve="jmb" />
                            </node>
                            <node concept="liA8E" id="iIJcS6lEYY" role="2OqNvi">
                              <ref role="37wK5l" node="iIJcS6j6d4" resolve="withMainClass" />
                              <node concept="2LYoG9" id="iIJcS6lEYZ" role="37wK5m">
                                <ref role="2LYoGb" node="14R2qyOBxc4" resolve="className" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="iIJcS6lEZ0" role="2OqNvi">
                            <ref role="37wK5l" node="iIJcS6jbvz" resolve="withFilesClassPath" />
                            <node concept="2LYoG9" id="iIJcS6lEZ1" role="37wK5m">
                              <ref role="2LYoGb" node="14R2qyOBxc6" resolve="classPath" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="iIJcS6lEZ2" role="2OqNvi">
                          <ref role="37wK5l" node="iIJcS6jc0G" resolve="toTempFile" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="14R2qyOBxdd" role="3cqZAp">
                    <node concept="3CLvVn" id="14R2qyOBxde" role="3cqZAk">
                      <node concept="37vLTw" id="3GM_nagTt5c" role="3CLvVg">
                        <ref role="3cqZAo" node="14R2qyOBxcf" resolve="java" />
                      </node>
                      <node concept="2LYoG9" id="14R2qyOBxdg" role="3CLvVg">
                        <ref role="2LYoGb" node="14R2qyOBxc2" resolve="virtualMachineParameter" />
                      </node>
                      <node concept="2LYoG9" id="14R2qyOBxdh" role="3CLvVg">
                        <ref role="2LYoGb" node="14R2qyOBxgu" resolve="debuggerSettings" />
                      </node>
                      <node concept="2dOGH5" id="14R2qyOBxdi" role="3CLvVg">
                        <property role="Lv5iS" value="true" />
                        <node concept="Xl_RD" id="14R2qyOBxdj" role="2dOGIT">
                          <property role="Xl_RC" value="jar" />
                        </node>
                        <node concept="2OqwBi" id="iIJcS6ovOC" role="2dOGIY">
                          <node concept="37vLTw" id="iIJcS6otcL" role="2Oq$k0">
                            <ref role="3cqZAo" node="iIJcS6lEYT" resolve="jar" />
                          </node>
                          <node concept="liA8E" id="iIJcS6ox5F" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                          </node>
                        </node>
                      </node>
                      <node concept="2LYoG9" id="iIJcS6ozfI" role="3CLvVg">
                        <ref role="2LYoGb" node="14R2qyOBxc0" resolve="programParameter" />
                      </node>
                      <node concept="2LYoG9" id="14R2qyOBxdx" role="3CLvVj">
                        <ref role="2LYoGb" node="14R2qyOBxbQ" resolve="workingDirectory" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="14R2qyOBxdy" role="1zxBo5">
                  <node concept="XOnhg" id="14R2qyOBxdz" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="e" />
                    <node concept="nSUau" id="xvs04dHd5C" role="1tU5fm">
                      <node concept="3uibUv" id="iIJcS6opZO" role="nSUat">
                        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="14R2qyOBxd_" role="1zc67A">
                    <node concept="2LYoGF" id="14R2qyOBxdA" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTwAB" role="2LYoNh">
                        <ref role="3cqZAo" node="14R2qyOBxdz" resolve="e" />
                      </node>
                      <node concept="Xl_RD" id="14R2qyOBxdC" role="2LYoNm">
                        <property role="Xl_RC" value="Could not create temporary file for program parameters and class path." />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7x8e1U8kBWA" role="3clFbw">
              <node concept="3eOSWO" id="7x8e1U8kEfN" role="3uHU7B">
                <node concept="3cmrfG" id="7x8e1U8kEfQ" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2LYoG9" id="7x8e1U8kCcK" role="3uHU7B">
                  <ref role="2LYoGb" node="7x8e1U8kyRO" resolve="jarManifestLimit" />
                </node>
              </node>
              <node concept="3eOSWO" id="iIJcS6oeTq" role="3uHU7w">
                <node concept="2LYoG9" id="7x8e1U8kEuV" role="3uHU7w">
                  <ref role="2LYoGb" node="7x8e1U8kyRO" resolve="jarManifestLimit" />
                </node>
                <node concept="2OqwBi" id="iIJcS6o9A_" role="3uHU7B">
                  <node concept="2LYoG9" id="iIJcS6o8oq" role="2Oq$k0">
                    <ref role="2LYoGb" node="14R2qyOBxc6" resolve="classPath" />
                  </node>
                  <node concept="34oBXx" id="iIJcS6ob71" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="14R2qyOBxdL" role="9aQIa">
              <node concept="3clFbS" id="14R2qyOBxdM" role="9aQI4">
                <node concept="3cpWs8" id="7t_vtr6qJ8z" role="3cqZAp">
                  <node concept="3cpWsn" id="7t_vtr6qGvl" role="3cpWs9">
                    <property role="TrG5h" value="classPathPart" />
                    <node concept="2dOA70" id="7t_vtr6qGvc" role="1tU5fm" />
                    <node concept="2dOGH5" id="7t_vtr6qGvm" role="33vP2m">
                      <property role="Lv5iS" value="true" />
                      <node concept="Xl_RD" id="7t_vtr6qGvn" role="2dOGIT">
                        <property role="Xl_RC" value="classpath" />
                      </node>
                      <node concept="1tenjt" id="7t_vtr6qRyy" role="2dOGIY">
                        <node concept="10M0yZ" id="7t_vtr6qRyz" role="1tenjo">
                          <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                          <ref role="3cqZAo" to="guwi:~File.pathSeparator" resolve="pathSeparator" />
                        </node>
                        <node concept="2LYoG9" id="7t_vtr6qRy$" role="1tenjv">
                          <ref role="2LYoGb" node="14R2qyOBxc6" resolve="classPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="14R2qyOBxdN" role="3cqZAp">
                  <node concept="3CLvVn" id="14R2qyOBxdO" role="3cqZAk">
                    <node concept="37vLTw" id="3GM_nagTBDz" role="3CLvVg">
                      <ref role="3cqZAo" node="14R2qyOBxcf" resolve="java" />
                    </node>
                    <node concept="2LYoG9" id="14R2qyOBxdQ" role="3CLvVg">
                      <ref role="2LYoGb" node="14R2qyOBxc2" resolve="virtualMachineParameter" />
                    </node>
                    <node concept="2LYoG9" id="14R2qyOBxdR" role="3CLvVg">
                      <ref role="2LYoGb" node="14R2qyOBxgu" resolve="debuggerSettings" />
                    </node>
                    <node concept="37vLTw" id="7t_vtr6qGvr" role="3CLvVg">
                      <ref role="3cqZAo" node="7t_vtr6qGvl" resolve="classPathPart" />
                    </node>
                    <node concept="2LYoG9" id="14R2qyOBxdX" role="3CLvVg">
                      <ref role="2LYoGb" node="14R2qyOBxc4" resolve="className" />
                    </node>
                    <node concept="2LYoG9" id="14R2qyOBxdY" role="3CLvVg">
                      <ref role="2LYoGb" node="14R2qyOBxc0" resolve="programParameter" />
                    </node>
                    <node concept="2LYoG9" id="14R2qyOBxdZ" role="3CLvVj">
                      <ref role="2LYoGb" node="14R2qyOBxbQ" resolve="workingDirectory" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="6QjbmLJoQH5" role="3eNLev">
              <node concept="3eOSWO" id="6QjbmLJoQH8" role="3eO9$A">
                <node concept="2OqwBi" id="6QjbmLJoQHb" role="3uHU7B">
                  <node concept="37vLTw" id="6QjbmLJoQHe" role="2Oq$k0">
                    <ref role="3cqZAo" node="6QjbmLJoMmT" resolve="argumentFile" />
                  </node>
                  <node concept="liA8E" id="6QjbmLJoQHf" role="2OqNvi">
                    <ref role="37wK5l" node="6QjbmLJojgf" resolve="getLength" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6QjbmLJoQHg" role="3uHU7w">
                  <node concept="2WthIp" id="6QjbmLJoQHj" role="2Oq$k0" />
                  <node concept="2XshWL" id="6QjbmLJoQHk" role="2OqNvi">
                    <ref role="2WH_rO" node="14R2qyOBxhl" resolve="getMaxCommandLine" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6QjbmLJoQHl" role="3eOfB_">
                <node concept="3SKdUt" id="6QjbmLJpd84" role="3cqZAp">
                  <node concept="1PaTwC" id="6QjbmLJpd88" role="1aUNEU">
                    <node concept="3oM_SD" id="6QjbmLJpd8a" role="1PaTwD">
                      <property role="3oM_SC" value="MPS-40058:" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8b" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8c" role="1PaTwD">
                      <property role="3oM_SC" value="class" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8d" role="1PaTwD">
                      <property role="3oM_SC" value="path" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8e" role="1PaTwD">
                      <property role="3oM_SC" value="alone" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8f" role="1PaTwD">
                      <property role="3oM_SC" value="may" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8g" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8h" role="1PaTwD">
                      <property role="3oM_SC" value="longer" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8i" role="1PaTwD">
                      <property role="3oM_SC" value="than" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8j" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8k" role="1PaTwD">
                      <property role="3oM_SC" value="command" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8l" role="1PaTwD">
                      <property role="3oM_SC" value="line" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8m" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8n" role="1PaTwD">
                      <property role="3oM_SC" value="OS" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpd8o" role="1PaTwD">
                      <property role="3oM_SC" value="accepts" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6QjbmLJpfjD" role="3cqZAp">
                  <node concept="1PaTwC" id="6QjbmLJpfjH" role="1aUNEU">
                    <node concept="3oM_SD" id="6QjbmLJpfjJ" role="1PaTwD">
                      <property role="3oM_SC" value="(32767" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjK" role="1PaTwD">
                      <property role="3oM_SC" value="characters" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjL" role="1PaTwD">
                      <property role="3oM_SC" value="on" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjM" role="1PaTwD">
                      <property role="3oM_SC" value="Windows)." />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjN" role="1PaTwD">
                      <property role="3oM_SC" value="We" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjO" role="1PaTwD">
                      <property role="3oM_SC" value="pass" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjP" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjQ" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjR" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjS" role="1PaTwD">
                      <property role="3oM_SC" value="JVM" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjT" role="1PaTwD">
                      <property role="3oM_SC" value="argument" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjU" role="1PaTwD">
                      <property role="3oM_SC" value="file" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjV" role="1PaTwD">
                      <property role="3oM_SC" value="then:" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjW" role="1PaTwD">
                      <property role="3oM_SC" value="java" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpfjX" role="1PaTwD">
                      <property role="3oM_SC" value="expands" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6QjbmLJphqQ" role="3cqZAp">
                  <node concept="1PaTwC" id="6QjbmLJphqU" role="1aUNEU">
                    <node concept="3oM_SD" id="6QjbmLJphqW" role="1PaTwD">
                      <property role="3oM_SC" value="@file" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphqX" role="1PaTwD">
                      <property role="3oM_SC" value="arguments" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphqY" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphqZ" role="1PaTwD">
                      <property role="3oM_SC" value="its" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr0" role="1PaTwD">
                      <property role="3oM_SC" value="launcher," />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr1" role="1PaTwD">
                      <property role="3oM_SC" value="before" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr2" role="1PaTwD">
                      <property role="3oM_SC" value="any" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr3" role="1PaTwD">
                      <property role="3oM_SC" value="class" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr4" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr5" role="1PaTwD">
                      <property role="3oM_SC" value="loaded," />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr6" role="1PaTwD">
                      <property role="3oM_SC" value="therefore" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr7" role="1PaTwD">
                      <property role="3oM_SC" value="-classpath" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJphr8" role="1PaTwD">
                      <property role="3oM_SC" value="stays" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6QjbmLJpjBm" role="3cqZAp">
                  <node concept="1PaTwC" id="6QjbmLJpjBq" role="1aUNEU">
                    <node concept="3oM_SD" id="6QjbmLJpjBs" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBt" role="1PaTwD">
                      <property role="3oM_SC" value="genuine" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBu" role="1PaTwD">
                      <property role="3oM_SC" value="JVM" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBv" role="1PaTwD">
                      <property role="3oM_SC" value="option" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBw" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBx" role="1PaTwD">
                      <property role="3oM_SC" value="keeps" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBy" role="1PaTwD">
                      <property role="3oM_SC" value="working" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBz" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjB$" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjB_" role="1PaTwD">
                      <property role="3oM_SC" value="PathClassLoader" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBA" role="1PaTwD">
                      <property role="3oM_SC" value="mentioned" />
                    </node>
                    <node concept="3oM_SD" id="6QjbmLJpjBB" role="1PaTwD">
                      <property role="3oM_SC" value="above." />
                    </node>
                  </node>
                </node>
                <node concept="3J1_TO" id="6QjbmLJoQHm" role="3cqZAp">
                  <node concept="3clFbS" id="6QjbmLJoQHo" role="1zxBo7">
                    <node concept="3cpWs8" id="6QjbmLJoQHp" role="3cqZAp">
                      <node concept="3cpWsn" id="6QjbmLJoQHs" role="3cpWs9">
                        <property role="TrG5h" value="argFile" />
                        <property role="2Lvdk3" value="argFile" />
                        <node concept="3uibUv" id="6QjbmLJoQHu" role="1tU5fm">
                          <ref role="3uigEE" to="guwi:~File" resolve="File" />
                        </node>
                        <node concept="2OqwBi" id="6QjbmLJoQHv" role="33vP2m">
                          <node concept="37vLTw" id="6QjbmLJoQHy" role="2Oq$k0">
                            <ref role="3cqZAo" node="6QjbmLJoMmT" resolve="argumentFile" />
                          </node>
                          <node concept="liA8E" id="6QjbmLJoQHz" role="2OqNvi">
                            <ref role="37wK5l" node="6QjbmLJojgD" resolve="toTempFile" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6QjbmLJoOu9" role="3cqZAp">
                      <node concept="3CLvVn" id="6QjbmLJoOua" role="3cqZAk">
                        <node concept="37vLTw" id="6QjbmLJoOub" role="3CLvVg">
                          <ref role="3cqZAo" node="14R2qyOBxcf" resolve="java" />
                        </node>
                        <node concept="2LYoG9" id="6QjbmLJoOuc" role="3CLvVg">
                          <ref role="2LYoGb" node="14R2qyOBxc2" resolve="virtualMachineParameter" />
                        </node>
                        <node concept="2LYoG9" id="6QjbmLJoOud" role="3CLvVg">
                          <ref role="2LYoGb" node="14R2qyOBxgu" resolve="debuggerSettings" />
                        </node>
                        <node concept="2OqwBi" id="6QjbmLJoXGY" role="3CLvVg">
                          <node concept="2WthIp" id="6QjbmLJoXH1" role="2Oq$k0" />
                          <node concept="2XshWL" id="6QjbmLJoXH2" role="2OqNvi">
                            <ref role="2WH_rO" node="14R2qyOBxm1" resolve="protect" />
                            <node concept="3cpWs3" id="6QjbmLJoXH3" role="2XxRq1">
                              <node concept="Xl_RD" id="6QjbmLJoXH6" role="3uHU7B">
                                <property role="Xl_RC" value="@" />
                              </node>
                              <node concept="2OqwBi" id="6QjbmLJoXH7" role="3uHU7w">
                                <node concept="37vLTw" id="6QjbmLJoXHa" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6QjbmLJoQHs" resolve="argFile" />
                                </node>
                                <node concept="liA8E" id="6QjbmLJoXHb" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2LYoG9" id="6QjbmLJoOuf" role="3CLvVg">
                          <ref role="2LYoGb" node="14R2qyOBxc4" resolve="className" />
                        </node>
                        <node concept="2LYoG9" id="6QjbmLJoOug" role="3CLvVg">
                          <ref role="2LYoGb" node="14R2qyOBxc0" resolve="programParameter" />
                        </node>
                        <node concept="2LYoG9" id="6QjbmLJoOuh" role="3CLvVj">
                          <ref role="2LYoGb" node="14R2qyOBxbQ" resolve="workingDirectory" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uVAMA" id="6QjbmLJoQH$" role="1zxBo5">
                    <node concept="XOnhg" id="6QjbmLJoQHC" role="1zc67B">
                      <property role="TrG5h" value="e" />
                      <property role="2Lvdk3" value="e" />
                      <node concept="nSUau" id="6QjbmLJoQHE" role="1tU5fm">
                        <node concept="3uibUv" id="6QjbmLJoQHG" role="nSUat">
                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6QjbmLJoQHH" role="1zc67A">
                      <node concept="2LYoGF" id="6QjbmLJoQHI" role="3cqZAp">
                        <node concept="Xl_RD" id="6QjbmLJoQHJ" role="2LYoNm">
                          <property role="Xl_RC" value="Could not create temporary argument file for the class path." />
                        </node>
                        <node concept="37vLTw" id="6QjbmLJoQHK" role="2LYoNh">
                          <ref role="3cqZAo" node="6QjbmLJoQHC" resolve="e" />
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
    <node concept="3rFUVD" id="14R2qyOBxeG" role="3rFUVV">
      <node concept="2LYoGR" id="14R2qyOBxeH" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="nodePointer" />
        <node concept="3uibUv" id="14R2qyOBxeI" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="2LYoGR" id="1CVOLqONYr_" role="3rFUVC">
        <property role="TrG5h" value="repository" />
        <property role="2LYoGQ" value="true" />
        <node concept="3uibUv" id="1CVOLqONYCN" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxeJ" role="3rFUVC">
        <property role="TrG5h" value="workingDirectory" />
        <node concept="3uibUv" id="14R2qyOBxeK" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2ShNRf" id="6woObKLACvE" role="33vP2m">
          <node concept="1pGfFk" id="6woObKLACvF" role="2ShVmc">
            <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
            <node concept="Xl_RD" id="6woObKLACvG" role="37wK5m">
              <property role="Xl_RC" value="." />
            </node>
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxeO" role="3rFUVC">
        <property role="TrG5h" value="jrePath" />
        <node concept="17QB3L" id="14R2qyOBxeP" role="1tU5fm" />
        <node concept="2OqwBi" id="14R2qyOBxeQ" role="33vP2m">
          <node concept="2LYoGc" id="14R2qyOBxeR" role="2Oq$k0">
            <ref role="2LYoGe" node="14R2qyOBxa1" resolve="java" />
          </node>
          <node concept="2XshWL" id="14R2qyOBxeS" role="2OqNvi">
            <ref role="2WH_rO" node="14R2qyOBxl$" resolve="getJdkHome" />
          </node>
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxeT" role="3rFUVC">
        <property role="TrG5h" value="programParameter" />
        <node concept="17QB3L" id="14R2qyOBxeU" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="14R2qyOBxeV" role="3rFUVC">
        <property role="TrG5h" value="virtualMachineParameter" />
        <node concept="17QB3L" id="14R2qyOBxeW" role="1tU5fm" />
      </node>
      <node concept="2LYoGR" id="3KU19GSx31$" role="3rFUVC">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3KU19GSx31_" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="9aQIb" id="14R2qyOBxeX" role="3rFUVF">
        <node concept="3clFbS" id="14R2qyOBxeY" role="9aQI4">
          <node concept="3cpWs8" id="7FbzWp2v19Y" role="3cqZAp">
            <node concept="3cpWsn" id="7FbzWp2v19Z" role="3cpWs9">
              <property role="TrG5h" value="module" />
              <node concept="10Nm6u" id="jcjet_nIuN" role="33vP2m" />
              <node concept="3uibUv" id="7FbzWp2v1a0" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7FbzWp2v49F" role="3cqZAp">
            <node concept="3cpWsn" id="7FbzWp2v49G" role="3cpWs9">
              <property role="TrG5h" value="errorText" />
              <node concept="17QB3L" id="7FbzWp2v49H" role="1tU5fm" />
              <node concept="10Nm6u" id="1CVOLqOPucv" role="33vP2m" />
            </node>
          </node>
          <node concept="3cpWs8" id="1CVOLqOPs$r" role="3cqZAp">
            <node concept="3cpWsn" id="1CVOLqOPs$x" role="3cpWs9">
              <property role="TrG5h" value="cp" />
              <node concept="_YKpA" id="1CVOLqOPs$z" role="1tU5fm">
                <node concept="17QB3L" id="1CVOLqOPsFd" role="_ZDj9" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1CVOLqOPsL_" role="3cqZAp">
            <node concept="3cpWsn" id="1CVOLqOPsLC" role="3cpWs9">
              <property role="TrG5h" value="cn" />
              <node concept="17QB3L" id="1CVOLqOPsLz" role="1tU5fm" />
            </node>
          </node>
          <node concept="1QHqEK" id="jcjet_m6wY" role="3cqZAp">
            <node concept="1QHqEC" id="jcjet_m6x0" role="1QHqEI">
              <node concept="3clFbS" id="jcjet_m6x2" role="1bW5cS">
                <node concept="3cpWs8" id="1CVOLqOPvqt" role="3cqZAp">
                  <node concept="3cpWsn" id="1CVOLqOPvqu" role="3cpWs9">
                    <property role="TrG5h" value="resolved" />
                    <node concept="3uibUv" id="1CVOLqOPvqq" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2EnYce" id="1CVOLqOPvqv" role="33vP2m">
                      <node concept="2LYoG9" id="1CVOLqOPvqw" role="2Oq$k0">
                        <ref role="2LYoGb" node="14R2qyOBxeH" resolve="nodePointer" />
                      </node>
                      <node concept="liA8E" id="1CVOLqOPvqx" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                        <node concept="2LYoG9" id="1CVOLqOQjRH" role="37wK5m">
                          <ref role="2LYoGb" node="1CVOLqONYr_" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="jcjet_m6LY" role="3cqZAp">
                  <node concept="37vLTI" id="jcjet_m6M0" role="3clFbG">
                    <node concept="2EnYce" id="7FbzWp2v1iS" role="37vLTx">
                      <node concept="2EnYce" id="3rp51zJ5rAg" role="2Oq$k0">
                        <node concept="37vLTw" id="1CVOLqOPvqz" role="2Oq$k0">
                          <ref role="3cqZAo" node="1CVOLqOPvqu" resolve="resolved" />
                        </node>
                        <node concept="liA8E" id="3rp51zJ5rxh" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7FbzWp2v1a5" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="jcjet_msZ8" role="37vLTJ">
                      <ref role="3cqZAo" node="7FbzWp2v19Z" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7FbzWp2v1iW" role="3cqZAp">
                  <node concept="3clFbS" id="7FbzWp2v1iX" role="3clFbx">
                    <node concept="3clFbF" id="1KUoCipv$Vu" role="3cqZAp">
                      <node concept="37vLTI" id="1KUoCipv$Vv" role="3clFbG">
                        <node concept="3cpWs3" id="1KUoCipv$Vw" role="37vLTx">
                          <node concept="2LYoG9" id="1KUoCipv$Vx" role="3uHU7w">
                            <ref role="2LYoGb" node="14R2qyOBxeH" resolve="nodePointer" />
                          </node>
                          <node concept="Xl_RD" id="1KUoCipv$Vy" role="3uHU7B">
                            <property role="Xl_RC" value="Can't find module for node " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="jcjet_mt1w" role="37vLTJ">
                          <ref role="3cqZAo" node="7FbzWp2v49G" resolve="errorText" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="7FbzWp2v1jp" role="3clFbw">
                    <node concept="10Nm6u" id="7FbzWp2v1js" role="3uHU7w" />
                    <node concept="37vLTw" id="jcjet_mt1t" role="3uHU7B">
                      <ref role="3cqZAo" node="7FbzWp2v19Z" resolve="module" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="1CVOLqOPsW7" role="9aQIa">
                    <node concept="3clFbS" id="1CVOLqOPsW8" role="9aQI4">
                      <node concept="3clFbF" id="1CVOLqOPt3A" role="3cqZAp">
                        <node concept="37vLTI" id="1CVOLqOPtP2" role="3clFbG">
                          <node concept="2OqwBi" id="1CVOLqOPtS8" role="37vLTx">
                            <node concept="2WthIp" id="1CVOLqOPtSb" role="2Oq$k0" />
                            <node concept="2XshWL" id="1CVOLqOPtSd" role="2OqNvi">
                              <ref role="2WH_rO" node="2reLP4orRPN" resolve="getClasspath" />
                              <node concept="2ShNRf" id="I2XxkKGoCR" role="2XxRq1">
                                <node concept="2HTt$P" id="I2XxkKGprz" role="2ShVmc">
                                  <node concept="3uibUv" id="I2XxkKGp_y" role="2HTBi0">
                                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                  </node>
                                  <node concept="37vLTw" id="I2XxkKGpEN" role="2HTEbv">
                                    <ref role="3cqZAo" node="7FbzWp2v19Z" resolve="module" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1CVOLqOPt3_" role="37vLTJ">
                            <ref role="3cqZAo" node="1CVOLqOPs$x" resolve="cp" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1CVOLqOPunI" role="3cqZAp">
                        <node concept="37vLTI" id="1CVOLqOPuMA" role="3clFbG">
                          <node concept="2OqwBi" id="1CVOLqOPuSG" role="37vLTx">
                            <node concept="2WthIp" id="1CVOLqOPuSJ" role="2Oq$k0" />
                            <node concept="2XshWL" id="1CVOLqOPuSL" role="2OqNvi">
                              <ref role="2WH_rO" node="14R2qyOBxgH" resolve="getClassName" />
                              <node concept="37vLTw" id="1CVOLqOPv$2" role="2XxRq1">
                                <ref role="3cqZAo" node="1CVOLqOPvqu" resolve="resolved" />
                              </node>
                              <node concept="10QFUN" id="6XGccOtJrSO" role="2XxRq1">
                                <node concept="1bVj0M" id="6XGccOtJrSK" role="10QFUP">
                                  <node concept="37vLTG" id="6XGccOtJrSL" role="1bW2Oz">
                                    <property role="TrG5h" value="s" />
                                    <node concept="17QB3L" id="6XGccOtJrSM" role="1tU5fm" />
                                  </node>
                                  <node concept="3clFbS" id="6XGccOtJrSN" role="1bW5cS" />
                                </node>
                                <node concept="3uibUv" id="6XGccOtJrXj" role="10QFUM">
                                  <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
                                  <node concept="17QB3L" id="6XGccOtJsmv" role="11_B2D" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1CVOLqOPunG" role="37vLTJ">
                            <ref role="3cqZAo" node="1CVOLqOPsLC" resolve="cn" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2LYoG9" id="1CVOLqOQk6s" role="ukAjM">
              <ref role="2LYoGb" node="1CVOLqONYr_" resolve="repository" />
            </node>
          </node>
          <node concept="3clFbH" id="jcjet_mtlB" role="3cqZAp" />
          <node concept="3clFbJ" id="jcjet_mtgY" role="3cqZAp">
            <node concept="3clFbS" id="jcjet_mth1" role="3clFbx">
              <node concept="2LYoGF" id="7FbzWp2v1jt" role="3cqZAp">
                <node concept="37vLTw" id="3GM_nagTuOp" role="2LYoNm">
                  <ref role="3cqZAo" node="7FbzWp2v49G" resolve="errorText" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1CVOLqOPv1W" role="3clFbw">
              <node concept="37vLTw" id="1CVOLqOPuZ9" role="3uHU7B">
                <ref role="3cqZAo" node="7FbzWp2v49G" resolve="errorText" />
              </node>
              <node concept="10Nm6u" id="jcjet_mtls" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbH" id="jcjet_mta9" role="3cqZAp" />
          <node concept="3clFbF" id="14R2qyOBxeZ" role="3cqZAp">
            <node concept="2LYoGx" id="14R2qyOBxf0" role="3clFbG">
              <ref role="3rFKlk" node="14R2qyOBxa2" resolve="java" />
              <node concept="2LYoGL" id="14R2qyOBxf1" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxa8" resolve="jrePath" />
                <node concept="2LYoG9" id="14R2qyOBxf2" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxeO" resolve="jrePath" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxf3" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxa3" resolve="workingDirectory" />
                <node concept="2LYoG9" id="14R2qyOBxf4" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxeJ" resolve="workingDirectory" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxf5" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxad" resolve="programParameter" />
                <node concept="2LYoG9" id="14R2qyOBxf6" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxeT" resolve="programParameter" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxf7" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxaf" resolve="virtualMachineParameter" />
                <node concept="2LYoG9" id="14R2qyOBxf8" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxeV" resolve="virtualMachineParameter" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxf9" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxaj" resolve="classPath" />
                <node concept="37vLTw" id="1CVOLqOPv8W" role="2LYoGN">
                  <ref role="3cqZAo" node="1CVOLqOPs$x" resolve="cp" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxfj" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxah" resolve="className" />
                <node concept="37vLTw" id="1CVOLqOPvdx" role="2LYoGN">
                  <ref role="3cqZAo" node="1CVOLqOPsLC" resolve="cn" />
                </node>
              </node>
              <node concept="2LYoGL" id="3KU19GSx35t" role="2LYoGw">
                <ref role="2LYoGK" node="3KU19GSx2Da" resolve="project" />
                <node concept="2LYoG9" id="3KU19GSx3eC" role="2LYoGN">
                  <ref role="2LYoGb" node="3KU19GSx31$" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3rFUVD" id="14R2qyOBxfM" role="3rFUVV">
      <node concept="2LYoGR" id="14R2qyOBxfN" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="runParameters" />
        <node concept="2pR195" id="14R2qyOBxfO" role="1tU5fm">
          <ref role="3uigEE" node="14R2qyOCsUf" resolve="JavaRunParameters" />
        </node>
      </node>
      <node concept="2LYoGR" id="14R2qyOBxfP" role="3rFUVC">
        <property role="2LYoGQ" value="true" />
        <property role="TrG5h" value="nodePointer" />
        <node concept="3uibUv" id="14R2qyOBxfQ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="2LYoGR" id="1CVOLqONX6R" role="3rFUVC">
        <property role="TrG5h" value="repository" />
        <property role="2LYoGQ" value="true" />
        <node concept="3uibUv" id="1CVOLqONXdw" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="2LYoGR" id="3KU19GSx75n" role="3rFUVC">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3KU19GSx75o" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="9aQIb" id="14R2qyOBxfR" role="3rFUVF">
        <node concept="3clFbS" id="14R2qyOBxfS" role="9aQI4">
          <node concept="3clFbF" id="14R2qyOBxfT" role="3cqZAp">
            <node concept="2LYoGx" id="14R2qyOBxfU" role="3clFbG">
              <ref role="3rFKlk" node="14R2qyOBxeG" resolve="java" />
              <node concept="2LYoGL" id="14R2qyOBxfV" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxeO" resolve="jrePath" />
                <node concept="2EnYce" id="14R2qyOBxfW" role="2LYoGN">
                  <node concept="2LYoG9" id="14R2qyOBxfX" role="2Oq$k0">
                    <ref role="2LYoGb" node="14R2qyOBxfN" resolve="runParameters" />
                  </node>
                  <node concept="liA8E" id="14R2qyOBxfY" role="2OqNvi">
                    <ref role="37wK5l" node="14R2qyOCsUE" resolve="getAlternativeJre" />
                  </node>
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxfZ" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxeH" resolve="nodePointer" />
                <node concept="2LYoG9" id="14R2qyOBxg0" role="2LYoGN">
                  <ref role="2LYoGb" node="14R2qyOBxfP" resolve="nodePointer" />
                </node>
              </node>
              <node concept="2LYoGL" id="1CVOLqONY5K" role="2LYoGw">
                <ref role="2LYoGK" node="1CVOLqONYr_" resolve="repository" />
                <node concept="2LYoG9" id="1CVOLqOOeza" role="2LYoGN">
                  <ref role="2LYoGb" node="1CVOLqONX6R" resolve="repository" />
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxg1" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxeT" resolve="programParameter" />
                <node concept="2EnYce" id="14R2qyOBxg2" role="2LYoGN">
                  <node concept="2LYoG9" id="14R2qyOBxg3" role="2Oq$k0">
                    <ref role="2LYoGb" node="14R2qyOBxfN" resolve="runParameters" />
                  </node>
                  <node concept="2sxana" id="14R2qyOBxg4" role="2OqNvi">
                    <ref role="2sxfKC" node="14R2qyOCsWC" resolve="programParameters" />
                  </node>
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxg5" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxeV" resolve="virtualMachineParameter" />
                <node concept="2EnYce" id="14R2qyOBxg6" role="2LYoGN">
                  <node concept="2LYoG9" id="14R2qyOBxg7" role="2Oq$k0">
                    <ref role="2LYoGb" node="14R2qyOBxfN" resolve="runParameters" />
                  </node>
                  <node concept="2sxana" id="14R2qyOBxg8" role="2OqNvi">
                    <ref role="2sxfKC" node="14R2qyOCsWE" resolve="vmOptions" />
                  </node>
                </node>
              </node>
              <node concept="2LYoGL" id="14R2qyOBxg9" role="2LYoGw">
                <ref role="2LYoGK" node="14R2qyOBxeJ" resolve="workingDirectory" />
                <node concept="3K4zz7" id="14R2qyOBxga" role="2LYoGN">
                  <node concept="10Nm6u" id="14R2qyOBxgb" role="3K4E3e" />
                  <node concept="2ShNRf" id="14R2qyOBxgc" role="3K4GZi">
                    <node concept="1pGfFk" id="14R2qyOBxgd" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="2EnYce" id="14R2qyOBxge" role="37wK5m">
                        <node concept="2LYoG9" id="14R2qyOBxgf" role="2Oq$k0">
                          <ref role="2LYoGb" node="14R2qyOBxfN" resolve="runParameters" />
                        </node>
                        <node concept="2sxana" id="14R2qyOBxgg" role="2OqNvi">
                          <ref role="2sxfKC" node="14R2qyOCsWI" resolve="workingDirectory" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3HvR9IHLK4P" role="3K4Cdx">
                    <node concept="2EnYce" id="14R2qyOBxgj" role="2Oq$k0">
                      <node concept="2LYoG9" id="14R2qyOBxgk" role="2Oq$k0">
                        <ref role="2LYoGb" node="14R2qyOBxfN" resolve="runParameters" />
                      </node>
                      <node concept="2sxana" id="14R2qyOBxgl" role="2OqNvi">
                        <ref role="2sxfKC" node="14R2qyOCsWI" resolve="workingDirectory" />
                      </node>
                    </node>
                    <node concept="17RlXB" id="3HvR9IHLOto" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2LYoGL" id="3KU19GSx767" role="2LYoGw">
                <ref role="2LYoGK" node="3KU19GSx31$" resolve="project" />
                <node concept="2LYoG9" id="3KU19GSx7l3" role="2LYoGN">
                  <ref role="2LYoGb" node="3KU19GSx75n" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Tq63k" id="14R2qyOBxgm" role="Xgi_8">
      <node concept="3Qg5_p" id="14R2qyOBxgn" role="1Tq6V1">
        <property role="3Qg5_t" value="Java" />
      </node>
      <node concept="1Tq6V3" id="14R2qyOBxgo" role="1Tq6V0">
        <node concept="3clFbS" id="14R2qyOBxgp" role="2VODD2">
          <node concept="3clFbF" id="14R2qyOBxgq" role="3cqZAp">
            <node concept="2ShNRf" id="14R2qyOBxgr" role="3clFbG">
              <node concept="1pGfFk" id="14R2qyOBxgs" role="2ShVmc">
                <ref role="37wK5l" to="mcvh:2Y$mRnICm$u" resolve="LocalConnectionSettings" />
                <node concept="3clFbT" id="14R2qyOBxgt" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="VMRTV" id="14R2qyOBxgu" role="VMfyR">
      <node concept="17QB3L" id="14R2qyOBxgv" role="1tU5fm" />
    </node>
    <node concept="2LYoGM" id="14R2qyOBxgw" role="2LYoGV">
      <property role="TrG5h" value="isUnitNode" />
      <node concept="3Tm1VV" id="14R2qyOBxgx" role="1B3o_S" />
      <node concept="10P_77" id="14R2qyOBxgy" role="3clF45" />
      <node concept="3clFbS" id="14R2qyOBxgz" role="3clF47">
        <node concept="3clFbF" id="14R2qyOBxg$" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOBxg_" role="3clFbG">
            <node concept="2OqwBi" id="14R2qyOBxgA" role="2Oq$k0">
              <node concept="2WthIp" id="14R2qyOBxgB" role="2Oq$k0" />
              <node concept="2XshWL" id="14R2qyOBxgC" role="2OqNvi">
                <ref role="2WH_rO" node="14R2qyOBxgH" resolve="getClassName" />
                <node concept="37vLTw" id="2BHiRxgmakk" role="2XxRq1">
                  <ref role="3cqZAo" node="14R2qyOBxgF" resolve="node" />
                </node>
                <node concept="37vLTw" id="6XGccOtHTBy" role="2XxRq1">
                  <ref role="3cqZAo" node="6XGccOtHSid" resolve="errorsSink" />
                </node>
              </node>
            </node>
            <node concept="17RvpY" id="14R2qyOBxgE" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOBxgF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="14R2qyOBxgG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6XGccOtHSid" role="3clF46">
        <property role="TrG5h" value="errorsSink" />
        <node concept="3uibUv" id="6XGccOtHSie" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="17QB3L" id="6XGccOtHSif" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2LYoGM" id="14R2qyOBxgH" role="2LYoGV">
      <property role="TrG5h" value="getClassName" />
      <node concept="2AHcQZ" id="6z1INj2t9dm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nls" resolve="Nls" />
      </node>
      <node concept="3Tm6S6" id="14R2qyOBxgI" role="1B3o_S" />
      <node concept="17QB3L" id="14R2qyOBxgJ" role="3clF45" />
      <node concept="3clFbS" id="14R2qyOBxgK" role="3clF47">
        <node concept="3cpWs8" id="7mvYbwTB6gc" role="3cqZAp">
          <node concept="3cpWsn" id="7mvYbwTB6gd" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="5FVujgsr$4h" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="7mvYbwTB6Zy" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm93O" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOBxgY" resolve="node" />
              </node>
              <node concept="I4A8Y" id="7mvYbwTB6ZB" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4YEli8eIE$o" role="3cqZAp">
          <node concept="3cpWsn" id="4YEli8eIE$p" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3Tqbb2" id="4YEli8eIE$j" role="1tU5fm">
              <ref role="ehGHo" to="hypd:5xDtKQA7vSu" resolve="Module" />
            </node>
            <node concept="2OqwBi" id="4YEli8eIE$q" role="33vP2m">
              <node concept="2OqwBi" id="4YEli8eIE$r" role="2Oq$k0">
                <node concept="37vLTw" id="4YEli8eIE$s" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOBxgY" resolve="node" />
                </node>
                <node concept="I4A8Y" id="4YEli8eIE$t" role="2OqNvi" />
              </node>
              <node concept="13u695" id="4YEli8eIE$u" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Edtzj5bB2a" role="3cqZAp">
          <node concept="3clFbC" id="2Edtzj5bBzr" role="3clFbw">
            <node concept="10Nm6u" id="2Edtzj5bBIf" role="3uHU7w" />
            <node concept="37vLTw" id="2Edtzj5bBh_" role="3uHU7B">
              <ref role="3cqZAo" node="7mvYbwTB6gd" resolve="model" />
            </node>
          </node>
          <node concept="3clFbS" id="2Edtzj5bB2c" role="3clFbx">
            <node concept="3cpWs6" id="2Edtzj5bBT1" role="3cqZAp">
              <node concept="10Nm6u" id="2Edtzj5bCe2" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4YEli8eI_Gp" role="3cqZAp">
          <node concept="3clFbS" id="4YEli8eI_Gr" role="3clFbx">
            <node concept="3clFbF" id="6XGccOtHW2E" role="3cqZAp">
              <node concept="2OqwBi" id="6XGccOtHXHt" role="3clFbG">
                <node concept="37vLTw" id="6XGccOtHW2C" role="2Oq$k0">
                  <ref role="3cqZAo" node="6XGccOtHKuO" resolve="errorsSink" />
                </node>
                <node concept="liA8E" id="6XGccOtI0p_" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                  <node concept="3cpWs3" id="6XGccOtI0pB" role="37wK5m">
                    <node concept="Xl_RD" id="6XGccOtI0pC" role="3uHU7w">
                      <property role="Xl_RC" value=" classes are not managed by MPS" />
                    </node>
                    <node concept="3cpWs3" id="6XGccOtI0pD" role="3uHU7B">
                      <node concept="Xl_RD" id="6XGccOtI0pE" role="3uHU7B">
                        <property role="Xl_RC" value="The hosting module's " />
                      </node>
                      <node concept="2OqwBi" id="6XGccOtI0pF" role="3uHU7w">
                        <node concept="37vLTw" id="6XGccOtI0pG" role="2Oq$k0">
                          <ref role="3cqZAo" node="4YEli8eIE$p" resolve="module" />
                        </node>
                        <node concept="2Iv5rx" id="6XGccOtI0pH" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4YEli8eIDsA" role="3clFbw">
            <node concept="2OqwBi" id="4YEli8eIDsC" role="3fr31v">
              <node concept="37vLTw" id="4YEli8eIE$v" role="2Oq$k0">
                <ref role="3cqZAo" node="4YEli8eIE$p" resolve="module" />
              </node>
              <node concept="3TrcHB" id="4YEli8eIDsI" role="2OqNvi">
                <ref role="3TsBF5" to="hypd:5xDtKQA7vS$" resolve="compileInMPS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7udac0TjB$r" role="3cqZAp">
          <node concept="3cpWsn" id="7udac0TjB$s" role="3cpWs9">
            <property role="TrG5h" value="debugInfo" />
            <node concept="3uibUv" id="7udac0TjB$p" role="1tU5fm">
              <ref role="3uigEE" to="fwk:~DebugInfo" resolve="DebugInfo" />
            </node>
            <node concept="2OqwBi" id="7udac0TjB$t" role="33vP2m">
              <node concept="2ShNRf" id="7udac0TjB$u" role="2Oq$k0">
                <node concept="1pGfFk" id="7udac0TnLMO" role="2ShVmc">
                  <ref role="37wK5l" to="fwk:~TraceInfo.&lt;init&gt;()" resolve="TraceInfo" />
                </node>
              </node>
              <node concept="liA8E" id="7udac0TjB$z" role="2OqNvi">
                <ref role="37wK5l" to="fwk:~TraceInfo.getDebugInfo(org.jetbrains.mps.openapi.model.SModel)" resolve="getDebugInfo" />
                <node concept="37vLTw" id="7udac0TjB$$" role="37wK5m">
                  <ref role="3cqZAo" node="7mvYbwTB6gd" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7mvYbwTB7be" role="3cqZAp">
          <node concept="3clFbS" id="7mvYbwTB7bf" role="3clFbx">
            <node concept="3clFbF" id="6XGccOtI3bP" role="3cqZAp">
              <node concept="2OqwBi" id="6XGccOtI6cB" role="3clFbG">
                <node concept="37vLTw" id="6XGccOtI3bN" role="2Oq$k0">
                  <ref role="3cqZAo" node="6XGccOtHKuO" resolve="errorsSink" />
                </node>
                <node concept="liA8E" id="6XGccOtI8cM" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                  <node concept="3cpWs3" id="6XGccOtI9uN" role="37wK5m">
                    <node concept="3cpWs3" id="6XGccOtI9uO" role="3uHU7B">
                      <node concept="Xl_RD" id="6XGccOtI9uP" role="3uHU7B">
                        <property role="Xl_RC" value="No trace.info found for model " />
                      </node>
                      <node concept="37vLTw" id="6XGccOtI9uQ" role="3uHU7w">
                        <ref role="3cqZAo" node="7mvYbwTB6gd" resolve="model" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6XGccOtI9uR" role="3uHU7w">
                      <property role="Xl_RC" value=". Check that model is generated." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6z1INj2t2s8" role="3cqZAp">
              <node concept="10Nm6u" id="6z1INj2t2KV" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7udac0TjDZ9" role="3clFbw">
            <node concept="10Nm6u" id="7udac0TjEG8" role="3uHU7w" />
            <node concept="37vLTw" id="7udac0TjD7L" role="3uHU7B">
              <ref role="3cqZAo" node="7udac0TjB$s" resolve="debugInfo" />
            </node>
          </node>
          <node concept="9aQIb" id="7mvYbwTB7bt" role="9aQIa">
            <node concept="3clFbS" id="7mvYbwTB7bu" role="9aQI4">
              <node concept="3cpWs8" id="7udac0TjGJJ" role="3cqZAp">
                <node concept="3cpWsn" id="7udac0TjGJK" role="3cpWs9">
                  <property role="TrG5h" value="unitsForNode" />
                  <node concept="3uibUv" id="7udac0TjGJy" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="7udac0TjGJ_" role="11_B2D">
                      <ref role="3uigEE" to="fwk:~UnitPositionInfo" resolve="UnitPositionInfo" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7udac0TjGJL" role="33vP2m">
                    <node concept="37vLTw" id="7udac0TjGJM" role="2Oq$k0">
                      <ref role="3cqZAo" node="7udac0TjB$s" resolve="debugInfo" />
                    </node>
                    <node concept="liA8E" id="7udac0TjGJN" role="2OqNvi">
                      <ref role="37wK5l" to="fwk:~DebugInfo.getUnitsForNode(org.jetbrains.mps.openapi.model.SNode)" resolve="getUnitsForNode" />
                      <node concept="37vLTw" id="7udac0TjGJO" role="37wK5m">
                        <ref role="3cqZAo" node="14R2qyOBxgY" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7mvYbwTB7c6" role="3cqZAp">
                <node concept="3clFbS" id="7mvYbwTB7c7" role="3clFbx">
                  <node concept="3clFbF" id="6XGccOtIc6M" role="3cqZAp">
                    <node concept="2OqwBi" id="6XGccOtIf4M" role="3clFbG">
                      <node concept="37vLTw" id="6XGccOtIc6K" role="2Oq$k0">
                        <ref role="3cqZAo" node="6XGccOtHKuO" resolve="errorsSink" />
                      </node>
                      <node concept="liA8E" id="6XGccOtIh5K" role="2OqNvi">
                        <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                        <node concept="3cpWs3" id="6XGccOtIioH" role="37wK5m">
                          <node concept="3cpWs3" id="6XGccOtIioI" role="3uHU7B">
                            <node concept="Xl_RD" id="6XGccOtIioJ" role="3uHU7B">
                              <property role="Xl_RC" value="No unitName found for " />
                            </node>
                            <node concept="2OqwBi" id="6XGccOtIioK" role="3uHU7w">
                              <node concept="37vLTw" id="6XGccOtIioL" role="2Oq$k0">
                                <ref role="3cqZAo" node="14R2qyOBxgY" resolve="node" />
                              </node>
                              <node concept="2Iv5rx" id="6XGccOtIioM" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6XGccOtIioN" role="3uHU7w">
                            <property role="Xl_RC" value=" in trace.info. Check that model is generated." />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6z1INj2t4fT" role="3cqZAp">
                    <node concept="10Nm6u" id="6z1INj2t4zW" role="3cqZAk" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7mvYbwTB7cd" role="3clFbw">
                  <node concept="37vLTw" id="7udac0TjIdn" role="2Oq$k0">
                    <ref role="3cqZAo" node="7udac0TjGJK" resolve="unitsForNode" />
                  </node>
                  <node concept="liA8E" id="7udac0TjJqQ" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
                <node concept="3eNFk2" id="7mvYbwTB7ct" role="3eNLev">
                  <node concept="3clFbC" id="7mvYbwTB7cH" role="3eO9$A">
                    <node concept="3cmrfG" id="7mvYbwTB7cK" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="7mvYbwTB7c$" role="3uHU7B">
                      <node concept="37vLTw" id="7udac0TjKgi" role="2Oq$k0">
                        <ref role="3cqZAo" node="7udac0TjGJK" resolve="unitsForNode" />
                      </node>
                      <node concept="liA8E" id="7udac0TjLUa" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7mvYbwTB7cv" role="3eOfB_">
                    <node concept="3cpWs6" id="6z1INj2tbfL" role="3cqZAp">
                      <node concept="2OqwBi" id="7udac0TjRmM" role="3cqZAk">
                        <node concept="2OqwBi" id="7mvYbwTB7cT" role="2Oq$k0">
                          <node concept="37vLTw" id="7udac0TjMua" role="2Oq$k0">
                            <ref role="3cqZAo" node="7udac0TjGJK" resolve="unitsForNode" />
                          </node>
                          <node concept="liA8E" id="7udac0TjPvn" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="3cmrfG" id="7udac0TjQiO" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7udac0TjSN5" role="2OqNvi">
                          <ref role="37wK5l" to="fwk:~UnitPositionInfo.getUnitName()" resolve="getUnitName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="7mvYbwTB7d9" role="9aQIa">
                  <node concept="3clFbS" id="7mvYbwTB7da" role="9aQI4">
                    <node concept="3SKdUt" id="7udac0TjUWk" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXodUF" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXodUG" role="1PaTwD">
                          <property role="3oM_SC" value="if" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUH" role="1PaTwD">
                          <property role="3oM_SC" value="there's" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUI" role="1PaTwD">
                          <property role="3oM_SC" value="more" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUJ" role="1PaTwD">
                          <property role="3oM_SC" value="than" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUK" role="1PaTwD">
                          <property role="3oM_SC" value="1" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUL" role="1PaTwD">
                          <property role="3oM_SC" value="unit," />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUM" role="1PaTwD">
                          <property role="3oM_SC" value="find" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUN" role="1PaTwD">
                          <property role="3oM_SC" value="one" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUO" role="1PaTwD">
                          <property role="3oM_SC" value="holding" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUP" role="1PaTwD">
                          <property role="3oM_SC" value="position" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUQ" role="1PaTwD">
                          <property role="3oM_SC" value="that" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUR" role="1PaTwD">
                          <property role="3oM_SC" value="matches" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUS" role="1PaTwD">
                          <property role="3oM_SC" value="main" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXodUT" role="1PaTwD">
                          <property role="3oM_SC" value="method" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7udac0Tk14d" role="3cqZAp">
                      <node concept="3cpWsn" id="7udac0Tk14e" role="3cpWs9">
                        <property role="TrG5h" value="staticMethodConcept" />
                        <property role="3TUv4t" value="true" />
                        <node concept="2uNoUa" id="7udac0Tk14c" role="1tU5fm">
                          <ref role="2uNoUb" to="tpee:fIYIFWa" resolve="StaticMethodDeclaration" />
                        </node>
                        <node concept="35c_gC" id="7udac0Tk14f" role="33vP2m">
                          <ref role="35c_gD" to="tpee:fIYIFWa" resolve="StaticMethodDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7udac0TjWdw" role="3cqZAp">
                      <node concept="3cpWsn" id="7udac0TjWdx" role="3cpWs9">
                        <property role="TrG5h" value="mainMethodTraceableProperty" />
                        <property role="3TUv4t" value="true" />
                        <node concept="17QB3L" id="7udac0TjWdp" role="1tU5fm" />
                        <node concept="2OqwBi" id="7udac0TjWdy" role="33vP2m">
                          <node concept="2c44tf" id="7udac0TjWdz" role="2Oq$k0">
                            <node concept="2YIFZL" id="7udac0TjWd$" role="2c44tc">
                              <property role="TrG5h" value="main" />
                              <node concept="3cqZAl" id="7udac0TjWd_" role="3clF45" />
                              <node concept="3Tm1VV" id="7udac0TjWdA" role="1B3o_S" />
                              <node concept="3clFbS" id="7udac0TjWdB" role="3clF47" />
                              <node concept="37vLTG" id="7udac0TjWdC" role="3clF46">
                                <property role="TrG5h" value="args" />
                                <node concept="10Q1$e" id="7udac0TjWdD" role="1tU5fm">
                                  <node concept="3uibUv" id="7udac0TjWdE" role="10Q1$1">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORdn8" role="2OqNvi">
                            <ref role="37wK5l" to="if8w:4pl5GY7LKmH" resolve="getTraceableProperty" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="7udac0TkcwV" role="3cqZAp">
                      <node concept="3clFbS" id="7udac0TkcwY" role="2LFqv$">
                        <node concept="3clFbJ" id="7udac0TkgEY" role="3cqZAp">
                          <node concept="3clFbS" id="7udac0TkgF0" role="3clFbx">
                            <node concept="1DcWWT" id="7udac0TkhW5" role="3cqZAp">
                              <node concept="3cpWsn" id="7udac0TkhW6" role="1Duv9x">
                                <property role="TrG5h" value="upi" />
                                <node concept="3uibUv" id="7udac0Tki8P" role="1tU5fm">
                                  <ref role="3uigEE" to="fwk:~UnitPositionInfo" resolve="UnitPositionInfo" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="7udac0TkiGT" role="1DdaDG">
                                <ref role="3cqZAo" node="7udac0TjGJK" resolve="unitsForNode" />
                              </node>
                              <node concept="3clFbS" id="7udac0TkhW8" role="2LFqv$">
                                <node concept="3clFbJ" id="7udac0Tkjai" role="3cqZAp">
                                  <node concept="2OqwBi" id="7udac0TkjBD" role="3clFbw">
                                    <node concept="37vLTw" id="7udac0TkjeJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7udac0TkhW6" resolve="upi" />
                                    </node>
                                    <node concept="liA8E" id="7udac0TkkFR" role="2OqNvi">
                                      <ref role="37wK5l" to="fwk:~PositionInfo.contains(java.lang.String,int)" resolve="contains" />
                                      <node concept="2OqwBi" id="7udac0Tkl7N" role="37wK5m">
                                        <node concept="37vLTw" id="7udac0TkkKD" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7udac0TkcwZ" resolve="position" />
                                        </node>
                                        <node concept="liA8E" id="7udac0TklFc" role="2OqNvi">
                                          <ref role="37wK5l" to="fwk:~PositionInfo.getFileName()" resolve="getFileName" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="7udac0TkmhZ" role="37wK5m">
                                        <node concept="37vLTw" id="7udac0TklRp" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7udac0TkcwZ" resolve="position" />
                                        </node>
                                        <node concept="liA8E" id="7udac0Tknk2" role="2OqNvi">
                                          <ref role="37wK5l" to="fwk:~PositionInfo.getStartLine()" resolve="getStartLine" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="7udac0Tkjak" role="3clFbx">
                                    <node concept="3cpWs6" id="7udac0Tknpr" role="3cqZAp">
                                      <node concept="2OqwBi" id="7udac0Tkr8C" role="3cqZAk">
                                        <node concept="37vLTw" id="7udac0Tkp8Q" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7udac0TkhW6" resolve="upi" />
                                        </node>
                                        <node concept="liA8E" id="7udac0TktKx" role="2OqNvi">
                                          <ref role="37wK5l" to="fwk:~UnitPositionInfo.getUnitName()" resolve="getUnitName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="7udac0TkgJr" role="3clFbw">
                            <node concept="17R0WA" id="7udac0TkgJt" role="3uHU7B">
                              <node concept="2OqwBi" id="7udac0TkgJu" role="3uHU7B">
                                <node concept="37vLTw" id="7udac0TkgJv" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7udac0TkcwZ" resolve="position" />
                                </node>
                                <node concept="liA8E" id="7udac0TkgJw" role="2OqNvi">
                                  <ref role="37wK5l" to="fwk:~TraceablePositionInfo.getConcept()" resolve="getConcept" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="7udac0TkgJx" role="3uHU7w">
                                <ref role="3cqZAo" node="7udac0Tk14e" resolve="staticMethodConcept" />
                              </node>
                            </node>
                            <node concept="1eOMI4" id="7udac0TkgJy" role="3uHU7w">
                              <node concept="17R0WA" id="7udac0TkgJz" role="1eOMHV">
                                <node concept="37vLTw" id="7udac0TkgJ$" role="3uHU7w">
                                  <ref role="3cqZAo" node="7udac0TjWdx" resolve="mainMethodTraceableProperty" />
                                </node>
                                <node concept="2OqwBi" id="7udac0TkgJ_" role="3uHU7B">
                                  <node concept="37vLTw" id="7udac0TkgJA" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7udac0TkcwZ" resolve="position" />
                                  </node>
                                  <node concept="liA8E" id="7udac0TkgJB" role="2OqNvi">
                                    <ref role="37wK5l" to="fwk:~TraceablePositionInfo.getPropertyString()" resolve="getPropertyString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="7udac0TkcwZ" role="1Duv9x">
                        <property role="TrG5h" value="position" />
                        <node concept="3uibUv" id="7udac0Tkcx3" role="1tU5fm">
                          <ref role="3uigEE" to="fwk:~TraceablePositionInfo" resolve="TraceablePositionInfo" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7udac0Tkcx4" role="1DdaDG">
                        <node concept="2OqwBi" id="7udac0Tkcx5" role="2Oq$k0">
                          <node concept="37vLTw" id="7udac0Tkcx6" role="2Oq$k0">
                            <ref role="3cqZAo" node="7udac0TjB$s" resolve="debugInfo" />
                          </node>
                          <node concept="liA8E" id="7udac0Tkcx7" role="2OqNvi">
                            <ref role="37wK5l" to="fwk:~DebugInfo.getRootInfo(org.jetbrains.mps.openapi.model.SNode)" resolve="getRootInfo" />
                            <node concept="2OqwBi" id="7udac0Tkcx8" role="37wK5m">
                              <node concept="37vLTw" id="7udac0Tkcx9" role="2Oq$k0">
                                <ref role="3cqZAo" node="14R2qyOBxgY" resolve="node" />
                              </node>
                              <node concept="2Rxl7S" id="7udac0Tkcxa" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7udac0Tkcxb" role="2OqNvi">
                          <ref role="37wK5l" to="fwk:~DebugInfoRoot.getPositions()" resolve="getPositions" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7udac0TkyE3" role="3cqZAp">
                      <node concept="10Nm6u" id="7udac0TkzCi" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOBxgY" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="14R2qyOBxgZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6XGccOtHKuO" role="3clF46">
        <property role="TrG5h" value="errorsSink" />
        <node concept="3uibUv" id="6XGccOtHN20" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="17QB3L" id="6XGccOtHNaM" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2LYoGM" id="14R2qyOBxhl" role="2LYoGV">
      <property role="TrG5h" value="getMaxCommandLine" />
      <node concept="3Tm6S6" id="14R2qyOBxhm" role="1B3o_S" />
      <node concept="10Oyi0" id="14R2qyOBxhn" role="3clF45" />
      <node concept="3clFbS" id="14R2qyOBxho" role="3clF47">
        <node concept="3SKdUt" id="6QjbmLJplJt" role="3cqZAp">
          <node concept="1PaTwC" id="6QjbmLJplJx" role="1aUNEU">
            <node concept="3oM_SD" id="6QjbmLJplJz" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJ$" role="1PaTwD">
              <property role="3oM_SC" value="longest" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJ_" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJA" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJB" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJC" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJD" role="1PaTwD">
              <property role="3oM_SC" value="willing" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJE" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJF" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJG" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJI" role="1PaTwD">
              <property role="3oM_SC" value="command" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJplJJ" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="14R2qyOBxhp" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXodV9" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXodVa" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVb" role="1PaTwD">
              <property role="3oM_SC" value="command" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVc" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVd" role="1PaTwD">
              <property role="3oM_SC" value="limit" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVe" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVf" role="1PaTwD">
              <property role="3oM_SC" value="win" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVg" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVh" role="1PaTwD">
              <property role="3oM_SC" value="32767" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVi" role="1PaTwD">
              <property role="3oM_SC" value="characters" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="14R2qyOBxhr" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXodVj" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXodVk" role="1PaTwD">
              <property role="3oM_SC" value="(see" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVl" role="1PaTwD">
              <property role="3oM_SC" value="http://blogs.msdn.com/b/oldnewthing/archive/2003/12/10/56028.aspx)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="14R2qyOBxht" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXodVm" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXodVn" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVo" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVp" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVq" role="1PaTwD">
              <property role="3oM_SC" value="limit" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVr" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVs" role="1PaTwD">
              <property role="3oM_SC" value="16384" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVt" role="1PaTwD">
              <property role="3oM_SC" value="(half" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVu" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVv" role="1PaTwD">
              <property role="3oM_SC" value="many)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVw" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVx" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodVy" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14R2qyOBxhv" role="3cqZAp">
          <node concept="3cmrfG" id="14R2qyOBxhw" role="3clFbG">
            <property role="3cmrfH" value="16384" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2LYoGM" id="2reLP4orRPN" role="2LYoGV">
      <property role="TrG5h" value="getClasspath" />
      <node concept="_YKpA" id="2reLP4orUtu" role="3clF45">
        <node concept="17QB3L" id="2reLP4orUvu" role="_ZDj9" />
      </node>
      <node concept="3Tm1VV" id="2reLP4orUpt" role="1B3o_S" />
      <node concept="3clFbS" id="2reLP4orRPQ" role="3clF47">
        <node concept="3cpWs8" id="2reLP4orXFQ" role="3cqZAp">
          <node concept="3cpWsn" id="2reLP4orXFR" role="3cpWs9">
            <property role="TrG5h" value="classpath" />
            <node concept="3uibUv" id="2reLP4orXFS" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="17QB3L" id="2reLP4orXFT" role="11_B2D" />
            </node>
            <node concept="2YIFZM" id="1KUoCipvxhf" role="33vP2m">
              <ref role="1Pybhc" to="b0pz:~JavaModuleOperations" resolve="JavaModuleOperations" />
              <ref role="37wK5l" to="b0pz:~JavaModuleOperations.collectExecuteClasspath(org.jetbrains.mps.openapi.module.SModule...)" resolve="collectExecuteClasspath" />
              <node concept="2OqwBi" id="I2XxkKGIIN" role="37wK5m">
                <node concept="2OqwBi" id="I2XxkKGFN5" role="2Oq$k0">
                  <node concept="37vLTw" id="1KUoCipvxhg" role="2Oq$k0">
                    <ref role="3cqZAo" node="2reLP4orUAr" resolve="modules" />
                  </node>
                  <node concept="ANE8D" id="I2XxkKGGW5" role="2OqNvi" />
                </node>
                <node concept="3_kTaI" id="I2XxkKGKtb" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="AuyzvqjSAa" role="3cqZAp" />
        <node concept="3cpWs6" id="2reLP4orXGi" role="3cqZAp">
          <node concept="2ShNRf" id="2reLP4orXGj" role="3cqZAk">
            <node concept="1pGfFk" id="2reLP4orXGk" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
              <node concept="17QB3L" id="2reLP4orXGl" role="1pMfVU" />
              <node concept="37vLTw" id="2reLP4osHRR" role="37wK5m">
                <ref role="3cqZAo" node="2reLP4orXFR" resolve="classpath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2reLP4orUAr" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="A3Dl8" id="I2XxkKGlHh" role="1tU5fm">
          <node concept="3uibUv" id="I2XxkKGlHi" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2LYoGM" id="14R2qyOBxja" role="2LYoGV">
      <property role="TrG5h" value="getJavaCommand" />
      <node concept="3uibUv" id="14R2qyOBxjb" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm1VV" id="14R2qyOBxjc" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOBxjd" role="3clF47">
        <node concept="3clFbJ" id="14R2qyOBxje" role="3cqZAp">
          <node concept="3clFbS" id="14R2qyOBxjf" role="3clFbx">
            <node concept="3clFbF" id="14R2qyOBxjg" role="3cqZAp">
              <node concept="37vLTI" id="14R2qyOBxjh" role="3clFbG">
                <node concept="2OqwBi" id="14R2qyOBxji" role="37vLTx">
                  <node concept="2WthIp" id="14R2qyOBxjj" role="2Oq$k0" />
                  <node concept="2XshWL" id="14R2qyOBxjk" role="2OqNvi">
                    <ref role="2WH_rO" node="14R2qyOBxl$" resolve="getJdkHome" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxgm9s5" role="37vLTJ">
                  <ref role="3cqZAo" node="14R2qyOBxjI" resolve="javaHome" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="14R2qyOBxjm" role="3clFbw">
            <node concept="2OqwBi" id="14R2qyOBxjn" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgl00q" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOBxjI" resolve="javaHome" />
              </node>
              <node concept="17RlXB" id="14R2qyOBxjp" role="2OqNvi" />
            </node>
            <node concept="3fqX7Q" id="14R2qyOBxjq" role="3uHU7w">
              <node concept="2OqwBi" id="14R2qyOBxjr" role="3fr31v">
                <node concept="2ShNRf" id="14R2qyOBxjs" role="2Oq$k0">
                  <node concept="1pGfFk" id="14R2qyOBxjt" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="2BHiRxgmC5A" role="37wK5m">
                      <ref role="3cqZAo" node="14R2qyOBxjI" resolve="javaHome" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="14R2qyOBxjv" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="14R2qyOBxjw" role="3cqZAp">
          <node concept="3clFbS" id="14R2qyOBxjx" role="3clFbx">
            <node concept="2LYoGF" id="14R2qyOBxjy" role="3cqZAp">
              <node concept="Xl_RD" id="14R2qyOBxjz" role="2LYoNm">
                <property role="Xl_RC" value="Could not find valid java home." />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="14R2qyOBxj$" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmJgg" role="2Oq$k0">
              <ref role="3cqZAo" node="14R2qyOBxjI" resolve="javaHome" />
            </node>
            <node concept="17RlXB" id="14R2qyOBxjA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="14R2qyOBxjB" role="3cqZAp">
          <node concept="2ShNRf" id="14R2qyOBxjC" role="3clFbG">
            <node concept="1pGfFk" id="14R2qyOBxjD" role="2ShVmc">
              <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
              <node concept="2OqwBi" id="14R2qyOBxjE" role="37wK5m">
                <node concept="2WthIp" id="14R2qyOBxjF" role="2Oq$k0" />
                <node concept="2XshWL" id="14R2qyOBxjG" role="2OqNvi">
                  <ref role="2WH_rO" node="14R2qyOBxjM" resolve="getJavaCommandPath" />
                  <node concept="37vLTw" id="2BHiRxgmaeF" role="2XxRq1">
                    <ref role="3cqZAo" node="14R2qyOBxjI" resolve="javaHome" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOBxjI" role="3clF46">
        <property role="TrG5h" value="javaHome" />
        <node concept="17QB3L" id="14R2qyOBxjJ" role="1tU5fm" />
        <node concept="2AHcQZ" id="14R2qyOBxjK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3uibUv" id="14R2qyOBxjL" role="Sfmx6">
        <ref role="3uigEE" to="3v5a:~ExecutionException" resolve="ExecutionException" />
      </node>
    </node>
    <node concept="2LYoGM" id="14R2qyOBxjM" role="2LYoGV">
      <property role="TrG5h" value="getJavaCommandPath" />
      <node concept="3Tm1VV" id="14R2qyOBxjN" role="1B3o_S" />
      <node concept="17QB3L" id="14R2qyOBxjO" role="3clF45" />
      <node concept="3clFbS" id="14R2qyOBxjP" role="3clF47">
        <node concept="3cpWs8" id="14R2qyOBxjQ" role="3cqZAp">
          <node concept="3cpWsn" id="14R2qyOBxjR" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3cpWs3" id="14R2qyOBxjS" role="33vP2m">
              <node concept="10M0yZ" id="14R2qyOBxjT" role="3uHU7w">
                <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
              </node>
              <node concept="3cpWs3" id="14R2qyOBxjU" role="3uHU7B">
                <node concept="3cpWs3" id="14R2qyOBxjV" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxglEtZ" role="3uHU7B">
                    <ref role="3cqZAo" node="14R2qyOBxks" resolve="javaHome" />
                  </node>
                  <node concept="10M0yZ" id="14R2qyOBxjX" role="3uHU7w">
                    <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                    <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                  </node>
                </node>
                <node concept="Xl_RD" id="14R2qyOBxjY" role="3uHU7w">
                  <property role="Xl_RC" value="bin" />
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="14R2qyOBxjZ" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="14R2qyOBxk0" role="3cqZAp">
          <node concept="3cpWsn" id="14R2qyOBxk1" role="3cpWs9">
            <property role="TrG5h" value="java" />
            <node concept="17QB3L" id="14R2qyOBxk2" role="1tU5fm" />
            <node concept="Xl_RD" id="14R2qyOBxk3" role="33vP2m">
              <property role="Xl_RC" value="java" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="14R2qyOBxk4" role="3cqZAp">
          <node concept="3clFbJ" id="14R2qyOBxk5" role="9aQIa">
            <node concept="3clFbS" id="14R2qyOBxk6" role="3clFbx">
              <node concept="3clFbF" id="14R2qyOBxk7" role="3cqZAp">
                <node concept="d57v9" id="14R2qyOBxk8" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTxAJ" role="37vLTJ">
                    <ref role="3cqZAo" node="14R2qyOBxjR" resolve="result" />
                  </node>
                  <node concept="3cpWs3" id="14R2qyOBxka" role="37vLTx">
                    <node concept="37vLTw" id="3GM_nagTxw8" role="3uHU7B">
                      <ref role="3cqZAo" node="14R2qyOBxk1" resolve="java" />
                    </node>
                    <node concept="Xl_RD" id="14R2qyOBxkc" role="3uHU7w">
                      <property role="Xl_RC" value=".exe" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="14R2qyOBxkd" role="9aQIa">
              <node concept="3clFbS" id="14R2qyOBxke" role="9aQI4">
                <node concept="3clFbF" id="14R2qyOBxkf" role="3cqZAp">
                  <node concept="d57v9" id="14R2qyOBxkg" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT_jJ" role="37vLTJ">
                      <ref role="3cqZAo" node="14R2qyOBxjR" resolve="result" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTsjK" role="37vLTx">
                      <ref role="3cqZAo" node="14R2qyOBxk1" resolve="java" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="14R2qyOBxkj" role="3clFbw">
              <ref role="1PxDUh" to="zn9m:~SystemInfo" resolve="SystemInfo" />
              <ref role="3cqZAo" to="zn9m:~SystemInfo.isWindows" resolve="isWindows" />
            </node>
          </node>
          <node concept="3clFbS" id="14R2qyOBxkk" role="3clFbx">
            <node concept="3clFbF" id="14R2qyOBxkl" role="3cqZAp">
              <node concept="d57v9" id="14R2qyOBxkm" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTA77" role="37vLTJ">
                  <ref role="3cqZAo" node="14R2qyOBxjR" resolve="result" />
                </node>
                <node concept="37vLTw" id="3GM_nagTAJb" role="37vLTx">
                  <ref role="3cqZAo" node="14R2qyOBxk1" resolve="java" />
                </node>
              </node>
            </node>
          </node>
          <node concept="10M0yZ" id="14R2qyOBxkp" role="3clFbw">
            <ref role="1PxDUh" to="zn9m:~SystemInfo" resolve="SystemInfo" />
            <ref role="3cqZAo" to="zn9m:~SystemInfo.isMac" resolve="isMac" />
          </node>
        </node>
        <node concept="3cpWs6" id="14R2qyOBxkq" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTvS$" role="3cqZAk">
            <ref role="3cqZAo" node="14R2qyOBxjR" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOBxks" role="3clF46">
        <property role="TrG5h" value="javaHome" />
        <node concept="17QB3L" id="14R2qyOBxkt" role="1tU5fm" />
      </node>
    </node>
    <node concept="2LYoGM" id="14R2qyOBxku" role="2LYoGV">
      <property role="TrG5h" value="getJavaHomes" />
      <node concept="3Tm1VV" id="14R2qyOBxkv" role="1B3o_S" />
      <node concept="_YKpA" id="14R2qyOBxkw" role="3clF45">
        <node concept="17QB3L" id="14R2qyOBxkx" role="_ZDj9" />
      </node>
      <node concept="3clFbS" id="14R2qyOBxky" role="3clF47">
        <node concept="3cpWs8" id="14R2qyOBxkz" role="3cqZAp">
          <node concept="3cpWsn" id="14R2qyOBxk$" role="3cpWs9">
            <property role="TrG5h" value="systemJavaHome" />
            <node concept="17QB3L" id="14R2qyOBxk_" role="1tU5fm" />
            <node concept="2YIFZM" id="14R2qyOBxkA" role="33vP2m">
              <ref role="1Pybhc" to="9w4s:~SystemProperties" resolve="SystemProperties" />
              <ref role="37wK5l" to="9w4s:~SystemProperties.getJavaHome()" resolve="getJavaHome" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="14R2qyOBxkB" role="3cqZAp">
          <node concept="3cpWsn" id="14R2qyOBxkC" role="3cpWs9">
            <property role="TrG5h" value="homes" />
            <node concept="_YKpA" id="14R2qyOBxkD" role="1tU5fm">
              <node concept="17QB3L" id="14R2qyOBxkE" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="14R2qyOBxkF" role="33vP2m">
              <node concept="2Jqq0_" id="14R2qyOBxkG" role="2ShVmc">
                <node concept="17QB3L" id="14R2qyOBxkH" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="14R2qyOBxkI" role="3cqZAp">
          <node concept="3cpWsn" id="14R2qyOBxkJ" role="3cpWs9">
            <property role="TrG5h" value="systemJdkHome" />
            <node concept="17QB3L" id="14R2qyOBxkK" role="1tU5fm" />
            <node concept="2OqwBi" id="14R2qyOBxkL" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTulH" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOBxk$" resolve="systemJavaHome" />
              </node>
              <node concept="liA8E" id="14R2qyOBxkN" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="14R2qyOBxkO" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cpWsd" id="14R2qyOBxkP" role="37wK5m">
                  <node concept="2OqwBi" id="14R2qyOBxkQ" role="3uHU7w">
                    <node concept="Xl_RD" id="14R2qyOBxkR" role="2Oq$k0">
                      <property role="Xl_RC" value="/jre" />
                    </node>
                    <node concept="liA8E" id="14R2qyOBxkS" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="14R2qyOBxkT" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTBEl" role="2Oq$k0">
                      <ref role="3cqZAo" node="14R2qyOBxk$" resolve="systemJavaHome" />
                    </node>
                    <node concept="liA8E" id="14R2qyOBxkV" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="14R2qyOBxkW" role="3cqZAp">
          <node concept="3clFbS" id="14R2qyOBxkX" role="3clFbx">
            <node concept="3clFbF" id="14R2qyOBxkY" role="3cqZAp">
              <node concept="2OqwBi" id="14R2qyOBxkZ" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTyth" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOBxkC" resolve="homes" />
                </node>
                <node concept="TSZUe" id="14R2qyOBxl1" role="2OqNvi">
                  <node concept="37vLTw" id="3GM_nagTrWK" role="25WWJ7">
                    <ref role="3cqZAo" node="14R2qyOBxkJ" resolve="systemJdkHome" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="14R2qyOBxl3" role="3clFbw">
            <node concept="2OqwBi" id="14R2qyOBxl4" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTBu_" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOBxk$" resolve="systemJavaHome" />
              </node>
              <node concept="liA8E" id="14R2qyOBxl6" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                <node concept="Xl_RD" id="14R2qyOBxl7" role="37wK5m">
                  <property role="Xl_RC" value="jre" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="14R2qyOBxl8" role="3uHU7w">
              <node concept="2ShNRf" id="14R2qyOBxl9" role="2Oq$k0">
                <node concept="1pGfFk" id="14R2qyOBxla" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="3cpWs3" id="14R2qyOBxlb" role="37wK5m">
                    <node concept="Xl_RD" id="14R2qyOBxlc" role="3uHU7w">
                      <property role="Xl_RC" value="bin" />
                    </node>
                    <node concept="3cpWs3" id="14R2qyOBxld" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagT_1F" role="3uHU7B">
                        <ref role="3cqZAo" node="14R2qyOBxkJ" resolve="systemJdkHome" />
                      </node>
                      <node concept="10M0yZ" id="14R2qyOBxlf" role="3uHU7w">
                        <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                        <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="14R2qyOBxlg" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="14R2qyOBxlh" role="3cqZAp">
          <node concept="3clFbS" id="14R2qyOBxli" role="3clFbx">
            <node concept="3clFbF" id="14R2qyOBxlj" role="3cqZAp">
              <node concept="2OqwBi" id="14R2qyOBxlk" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTsAp" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOBxkC" resolve="homes" />
                </node>
                <node concept="TSZUe" id="14R2qyOBxlm" role="2OqNvi">
                  <node concept="2YIFZM" id="14R2qyOBxln" role="25WWJ7">
                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                    <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
                    <node concept="Xl_RD" id="14R2qyOBxlo" role="37wK5m">
                      <property role="Xl_RC" value="JAVA_HOME" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="14R2qyOBxlp" role="3clFbw">
            <node concept="2YIFZM" id="14R2qyOBxlq" role="2Oq$k0">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
              <node concept="Xl_RD" id="14R2qyOBxlr" role="37wK5m">
                <property role="Xl_RC" value="JAVA_HOME" />
              </node>
            </node>
            <node concept="17RvpY" id="14R2qyOBxls" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="14R2qyOBxlt" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOBxlu" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTzqy" role="2Oq$k0">
              <ref role="3cqZAo" node="14R2qyOBxkC" resolve="homes" />
            </node>
            <node concept="TSZUe" id="14R2qyOBxlw" role="2OqNvi">
              <node concept="37vLTw" id="3GM_nagTAeA" role="25WWJ7">
                <ref role="3cqZAo" node="14R2qyOBxk$" resolve="systemJavaHome" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="14R2qyOBxly" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTz4n" role="3cqZAk">
            <ref role="3cqZAo" node="14R2qyOBxkC" resolve="homes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2LYoGM" id="14R2qyOBxl$" role="2LYoGV">
      <property role="TrG5h" value="getJdkHome" />
      <node concept="3Tm1VV" id="14R2qyOBxl_" role="1B3o_S" />
      <node concept="17QB3L" id="14R2qyOBxlA" role="3clF45" />
      <node concept="3clFbS" id="14R2qyOBxlB" role="3clF47">
        <node concept="3cpWs8" id="14R2qyOBxlC" role="3cqZAp">
          <node concept="3cpWsn" id="14R2qyOBxlD" role="3cpWs9">
            <property role="TrG5h" value="homePaths" />
            <node concept="_YKpA" id="14R2qyOBxlE" role="1tU5fm">
              <node concept="17QB3L" id="14R2qyOBxlF" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="14R2qyOBxlG" role="33vP2m">
              <node concept="2WthIp" id="14R2qyOBxlH" role="2Oq$k0" />
              <node concept="2XshWL" id="14R2qyOBxlI" role="2OqNvi">
                <ref role="2WH_rO" node="14R2qyOBxku" resolve="getJavaHomes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="14R2qyOBxlJ" role="3cqZAp">
          <node concept="2GrKxI" id="14R2qyOBxlK" role="2Gsz3X">
            <property role="TrG5h" value="homePath" />
          </node>
          <node concept="3clFbS" id="14R2qyOBxlL" role="2LFqv$">
            <node concept="3cpWs8" id="3KU19GSuXjr" role="3cqZAp">
              <node concept="3cpWsn" id="3KU19GSuXjs" role="3cpWs9">
                <property role="TrG5h" value="homeDir" />
                <node concept="3uibUv" id="3KU19GSuOmd" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="3KU19GSuXjt" role="33vP2m">
                  <node concept="1pGfFk" id="3KU19GSuXju" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="2OqwBi" id="3KU19GSuXjv" role="37wK5m">
                      <node concept="2WthIp" id="3KU19GSuXjw" role="2Oq$k0" />
                      <node concept="2XshWL" id="3KU19GSuXjx" role="2OqNvi">
                        <ref role="2WH_rO" node="14R2qyOBxjM" resolve="getJavaCommandPath" />
                        <node concept="2GrUjf" id="3KU19GSuXjy" role="2XxRq1">
                          <ref role="2Gs0qQ" node="14R2qyOBxlK" resolve="homePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="14R2qyOBxlM" role="3cqZAp">
              <node concept="2OqwBi" id="14R2qyOBxlN" role="3clFbw">
                <node concept="37vLTw" id="3KU19GSuXjz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KU19GSuXjs" resolve="homeDir" />
                </node>
                <node concept="liA8E" id="14R2qyOBxlU" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                </node>
              </node>
              <node concept="3clFbS" id="14R2qyOBxlV" role="3clFbx">
                <node concept="3cpWs6" id="14R2qyOBxlW" role="3cqZAp">
                  <node concept="2GrUjf" id="14R2qyOBxlX" role="3cqZAk">
                    <ref role="2Gs0qQ" node="14R2qyOBxlK" resolve="homePath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTx5v" role="2GsD0m">
            <ref role="3cqZAo" node="14R2qyOBxlD" resolve="homePaths" />
          </node>
        </node>
        <node concept="3cpWs6" id="14R2qyOBxlZ" role="3cqZAp">
          <node concept="10Nm6u" id="14R2qyOBxm0" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2LYoGM" id="14R2qyOBxm1" role="2LYoGV">
      <property role="TrG5h" value="protect" />
      <node concept="3Tm1VV" id="14R2qyOBxm2" role="1B3o_S" />
      <node concept="17QB3L" id="14R2qyOBxm3" role="3clF45" />
      <node concept="3clFbS" id="14R2qyOBxm4" role="3clF47">
        <node concept="3clFbJ" id="14R2qyOBxm5" role="3cqZAp">
          <node concept="3clFbS" id="14R2qyOBxm6" role="3clFbx">
            <node concept="3cpWs6" id="14R2qyOBxm7" role="3cqZAp">
              <node concept="3cpWs3" id="14R2qyOBxm8" role="3cqZAk">
                <node concept="Xl_RD" id="14R2qyOBxm9" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
                <node concept="3cpWs3" id="14R2qyOBxma" role="3uHU7B">
                  <node concept="Xl_RD" id="14R2qyOBxmb" role="3uHU7B">
                    <property role="Xl_RC" value="\&quot;" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxghiJP" role="3uHU7w">
                    <ref role="3cqZAo" node="14R2qyOBxmj" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="14R2qyOBxmd" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm$PV" role="2Oq$k0">
              <ref role="3cqZAo" node="14R2qyOBxmj" resolve="result" />
            </node>
            <node concept="liA8E" id="14R2qyOBxmf" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
              <node concept="Xl_RD" id="14R2qyOBxmg" role="37wK5m">
                <property role="Xl_RC" value=" " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="14R2qyOBxmh" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgheVr" role="3cqZAk">
            <ref role="3cqZAo" node="14R2qyOBxmj" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOBxmj" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="17QB3L" id="14R2qyOBxmk" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="2fD8I5" id="14R2qyOCsUf">
    <property role="TrG5h" value="JavaRunParameters" />
    <node concept="2lGYhJ" id="14R2qyOCsWC" role="2pHZQ9">
      <property role="3dDGau" value="false" />
      <property role="TrG5h" value="programParameters" />
      <node concept="17QB3L" id="14R2qyOCsWD" role="2lK19J" />
    </node>
    <node concept="2lGYhJ" id="14R2qyOCsWE" role="2pHZQ9">
      <property role="3dDGau" value="false" />
      <property role="TrG5h" value="vmOptions" />
      <node concept="17QB3L" id="14R2qyOCsWF" role="2lK19J" />
    </node>
    <node concept="2lGYhJ" id="14R2qyOCsWG" role="2pHZQ9">
      <property role="3dDGau" value="false" />
      <property role="TrG5h" value="jrePath" />
      <node concept="17QB3L" id="14R2qyOCsWH" role="2lK19J" />
    </node>
    <node concept="2lGYhJ" id="14R2qyOCsWI" role="2pHZQ9">
      <property role="3dDGau" value="false" />
      <property role="TrG5h" value="workingDirectory" />
      <node concept="17QB3L" id="14R2qyOCsWJ" role="2lK19J" />
    </node>
    <node concept="2lGYhJ" id="14R2qyOCsWK" role="2pHZQ9">
      <property role="3dDGau" value="false" />
      <property role="TrG5h" value="useAlternativeJre" />
      <node concept="10P_77" id="14R2qyOCsWL" role="2lK19J" />
    </node>
    <node concept="3Tm1VV" id="14R2qyOCsWM" role="1B3o_S" />
    <node concept="3uibUv" id="14R2qyOCsWN" role="3TOOP4">
      <ref role="3uigEE" to="w0gx:~Copyable" resolve="Copyable" />
      <node concept="3uibUv" id="1htmYMkoGx1" role="11_B2D">
        <ref role="3uigEE" node="14R2qyOCsUf" resolve="JavaRunParameters" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsUg" role="jymVt">
      <property role="TrG5h" value="clone" />
      <node concept="2pR195" id="14R2qyOCsUh" role="3clF45">
        <ref role="3uigEE" node="14R2qyOCsUf" resolve="JavaRunParameters" />
      </node>
      <node concept="3Tm1VV" id="14R2qyOCsUi" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsUj" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsUk" role="3cqZAp">
          <node concept="2ry78W" id="14R2qyOCsUl" role="3clFbG">
            <ref role="2ryb1Q" node="14R2qyOCsUf" resolve="JavaRunParameters" />
            <node concept="2r$n1x" id="14R2qyOCsUm" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWC" resolve="programParameters" />
              <node concept="2OqwBi" id="14R2qyOCsUn" role="2r_lH1">
                <node concept="Xjq3P" id="14R2qyOCsUo" role="2Oq$k0" />
                <node concept="2sxana" id="14R2qyOCsUp" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWC" resolve="programParameters" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="14R2qyOCsUq" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWE" resolve="vmOptions" />
              <node concept="2OqwBi" id="14R2qyOCsUr" role="2r_lH1">
                <node concept="Xjq3P" id="14R2qyOCsUs" role="2Oq$k0" />
                <node concept="2sxana" id="14R2qyOCsUt" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWE" resolve="vmOptions" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="14R2qyOCsUu" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWG" resolve="jrePath" />
              <node concept="2OqwBi" id="14R2qyOCsUv" role="2r_lH1">
                <node concept="Xjq3P" id="14R2qyOCsUw" role="2Oq$k0" />
                <node concept="2sxana" id="14R2qyOCsUx" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWG" resolve="jrePath" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="14R2qyOCsUy" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWI" resolve="workingDirectory" />
              <node concept="2OqwBi" id="14R2qyOCsUz" role="2r_lH1">
                <node concept="Xjq3P" id="14R2qyOCsU$" role="2Oq$k0" />
                <node concept="2sxana" id="14R2qyOCsU_" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWI" resolve="workingDirectory" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="14R2qyOCsUA" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWK" resolve="useAlternativeJre" />
              <node concept="2OqwBi" id="14R2qyOCsUB" role="2r_lH1">
                <node concept="Xjq3P" id="14R2qyOCsUC" role="2Oq$k0" />
                <node concept="2sxana" id="14R2qyOCsUD" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWK" resolve="useAlternativeJre" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1htmYMkqUri" role="jymVt">
      <property role="TrG5h" value="copy" />
      <node concept="3uibUv" id="1htmYMkqUQ8" role="3clF45">
        <ref role="3uigEE" node="14R2qyOCsUf" resolve="JavaRunParameters" />
      </node>
      <node concept="3Tm1VV" id="1htmYMkqUrk" role="1B3o_S" />
      <node concept="3clFbS" id="1htmYMkqUrl" role="3clF47">
        <node concept="3cpWs6" id="1htmYMkqV1w" role="3cqZAp">
          <node concept="2ry78W" id="1htmYMkqVkT" role="3cqZAk">
            <ref role="2ryb1Q" node="14R2qyOCsUf" resolve="JavaRunParameters" />
            <node concept="2r$n1x" id="1htmYMkqVkU" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWC" resolve="programParameters" />
              <node concept="2OqwBi" id="1htmYMkqVkV" role="2r_lH1">
                <node concept="Xjq3P" id="1htmYMkqVkW" role="2Oq$k0" />
                <node concept="2sxana" id="1htmYMkqVkX" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWC" resolve="programParameters" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="1htmYMkqVkY" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWE" resolve="vmOptions" />
              <node concept="2OqwBi" id="1htmYMkqVkZ" role="2r_lH1">
                <node concept="Xjq3P" id="1htmYMkqVl0" role="2Oq$k0" />
                <node concept="2sxana" id="1htmYMkqVl1" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWE" resolve="vmOptions" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="1htmYMkqVl2" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWG" resolve="jrePath" />
              <node concept="2OqwBi" id="1htmYMkqVl3" role="2r_lH1">
                <node concept="Xjq3P" id="1htmYMkqVl4" role="2Oq$k0" />
                <node concept="2sxana" id="1htmYMkqVl5" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWG" resolve="jrePath" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="1htmYMkqVl6" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWI" resolve="workingDirectory" />
              <node concept="2OqwBi" id="1htmYMkqVl7" role="2r_lH1">
                <node concept="Xjq3P" id="1htmYMkqVl8" role="2Oq$k0" />
                <node concept="2sxana" id="1htmYMkqVl9" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWI" resolve="workingDirectory" />
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="1htmYMkqVla" role="2r_Bvh">
              <ref role="2r$qp6" node="14R2qyOCsWK" resolve="useAlternativeJre" />
              <node concept="2OqwBi" id="1htmYMkqVlb" role="2r_lH1">
                <node concept="Xjq3P" id="1htmYMkqVlc" role="2Oq$k0" />
                <node concept="2sxana" id="1htmYMkqVld" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWK" resolve="useAlternativeJre" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1htmYMkqVXv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsUE" role="jymVt">
      <property role="TrG5h" value="getAlternativeJre" />
      <node concept="17QB3L" id="14R2qyOCsUF" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsUG" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsUH" role="3clF47">
        <node concept="3clFbJ" id="14R2qyOCsUI" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCsUJ" role="3clFbw">
            <node concept="Xjq3P" id="14R2qyOCsUK" role="2Oq$k0" />
            <node concept="2sxana" id="14R2qyOCsUL" role="2OqNvi">
              <ref role="2sxfKC" node="14R2qyOCsWK" resolve="useAlternativeJre" />
            </node>
          </node>
          <node concept="3clFbS" id="14R2qyOCsUM" role="3clFbx">
            <node concept="3cpWs6" id="14R2qyOCsUN" role="3cqZAp">
              <node concept="2OqwBi" id="14R2qyOCsUO" role="3cqZAk">
                <node concept="Xjq3P" id="14R2qyOCsUP" role="2Oq$k0" />
                <node concept="2sxana" id="14R2qyOCsUQ" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWG" resolve="jrePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="14R2qyOCsUR" role="3cqZAp">
          <node concept="10Nm6u" id="14R2qyOCsUS" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="14R2qyOCsUT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nls" resolve="Nls" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsUU" role="jymVt">
      <property role="TrG5h" value="setJrePath" />
      <node concept="3cqZAl" id="14R2qyOCsUV" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsUW" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsUX" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsUY" role="3cqZAp">
          <node concept="37vLTI" id="14R2qyOCsUZ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglw9C" role="37vLTx">
              <ref role="3cqZAo" node="14R2qyOCsV4" resolve="jrePathValue" />
            </node>
            <node concept="2OqwBi" id="14R2qyOCsV1" role="37vLTJ">
              <node concept="Xjq3P" id="14R2qyOCsV2" role="2Oq$k0" />
              <node concept="2sxana" id="14R2qyOCsV3" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWG" resolve="jrePath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCsV4" role="3clF46">
        <property role="TrG5h" value="jrePathValue" />
        <node concept="17QB3L" id="14R2qyOCsV5" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsV6" role="jymVt">
      <property role="TrG5h" value="getJrePath" />
      <node concept="17QB3L" id="14R2qyOCsV7" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsV8" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsV9" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsVa" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCsVb" role="3clFbG">
            <node concept="Xjq3P" id="14R2qyOCsVc" role="2Oq$k0" />
            <node concept="2sxana" id="14R2qyOCsVd" role="2OqNvi">
              <ref role="2sxfKC" node="14R2qyOCsWG" resolve="jrePath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsVe" role="jymVt">
      <property role="TrG5h" value="setProgramParameters" />
      <node concept="3cqZAl" id="14R2qyOCsVf" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsVg" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsVh" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsVi" role="3cqZAp">
          <node concept="37vLTI" id="14R2qyOCsVj" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmOA9" role="37vLTx">
              <ref role="3cqZAo" node="14R2qyOCsVo" resolve="programParameters" />
            </node>
            <node concept="2OqwBi" id="14R2qyOCsVl" role="37vLTJ">
              <node concept="Xjq3P" id="14R2qyOCsVm" role="2Oq$k0" />
              <node concept="2sxana" id="14R2qyOCsVn" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWC" resolve="programParameters" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCsVo" role="3clF46">
        <property role="TrG5h" value="programParameters" />
        <node concept="17QB3L" id="14R2qyOCsVp" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsVq" role="jymVt">
      <property role="TrG5h" value="getProgramParameters" />
      <node concept="17QB3L" id="14R2qyOCsVr" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsVs" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsVt" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsVu" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCsVv" role="3clFbG">
            <node concept="Xjq3P" id="14R2qyOCsVw" role="2Oq$k0" />
            <node concept="2sxana" id="14R2qyOCsVx" role="2OqNvi">
              <ref role="2sxfKC" node="14R2qyOCsWC" resolve="programParameters" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsVy" role="jymVt">
      <property role="TrG5h" value="setVmOptions" />
      <node concept="3cqZAl" id="14R2qyOCsVz" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsV$" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsV_" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsVA" role="3cqZAp">
          <node concept="37vLTI" id="14R2qyOCsVB" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmv0W" role="37vLTx">
              <ref role="3cqZAo" node="14R2qyOCsVG" resolve="vmOptions" />
            </node>
            <node concept="2OqwBi" id="14R2qyOCsVD" role="37vLTJ">
              <node concept="Xjq3P" id="14R2qyOCsVE" role="2Oq$k0" />
              <node concept="2sxana" id="14R2qyOCsVF" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWE" resolve="vmOptions" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCsVG" role="3clF46">
        <property role="TrG5h" value="vmOptions" />
        <node concept="17QB3L" id="14R2qyOCsVH" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsVI" role="jymVt">
      <property role="TrG5h" value="getVmOptions" />
      <node concept="17QB3L" id="14R2qyOCsVJ" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsVK" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsVL" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsVM" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCsVN" role="3clFbG">
            <node concept="Xjq3P" id="14R2qyOCsVO" role="2Oq$k0" />
            <node concept="2sxana" id="14R2qyOCsVP" role="2OqNvi">
              <ref role="2sxfKC" node="14R2qyOCsWE" resolve="vmOptions" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsVQ" role="jymVt">
      <property role="TrG5h" value="setWorkingDirectory" />
      <node concept="3cqZAl" id="14R2qyOCsVR" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsVS" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsVT" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsVU" role="3cqZAp">
          <node concept="37vLTI" id="14R2qyOCsVV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfCs" role="37vLTx">
              <ref role="3cqZAo" node="14R2qyOCsW0" resolve="workingDirectory" />
            </node>
            <node concept="2OqwBi" id="14R2qyOCsVX" role="37vLTJ">
              <node concept="Xjq3P" id="14R2qyOCsVY" role="2Oq$k0" />
              <node concept="2sxana" id="14R2qyOCsVZ" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWI" resolve="workingDirectory" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCsW0" role="3clF46">
        <property role="TrG5h" value="workingDirectory" />
        <node concept="17QB3L" id="14R2qyOCsW1" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsW2" role="jymVt">
      <property role="TrG5h" value="getWorkingDirectory" />
      <node concept="17QB3L" id="14R2qyOCsW3" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsW4" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsW5" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsW6" role="3cqZAp">
          <node concept="2OqwBi" id="14R2qyOCsW7" role="3clFbG">
            <node concept="Xjq3P" id="14R2qyOCsW8" role="2Oq$k0" />
            <node concept="2sxana" id="14R2qyOCsW9" role="2OqNvi">
              <ref role="2sxfKC" node="14R2qyOCsWI" resolve="workingDirectory" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsWa" role="jymVt">
      <property role="TrG5h" value="setUseAlternativeJre" />
      <node concept="3cqZAl" id="14R2qyOCsWb" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsWc" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsWd" role="3clF47">
        <node concept="3clFbF" id="14R2qyOCsWe" role="3cqZAp">
          <node concept="37vLTI" id="14R2qyOCsWf" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm_$I" role="37vLTx">
              <ref role="3cqZAo" node="14R2qyOCsWk" resolve="useAlternativeJre" />
            </node>
            <node concept="2OqwBi" id="14R2qyOCsWh" role="37vLTJ">
              <node concept="Xjq3P" id="14R2qyOCsWi" role="2Oq$k0" />
              <node concept="2sxana" id="14R2qyOCsWj" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWK" resolve="useAlternativeJre" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14R2qyOCsWk" role="3clF46">
        <property role="TrG5h" value="useAlternativeJre" />
        <node concept="10P_77" id="14R2qyOCsWl" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="14R2qyOCsWm" role="jymVt">
      <property role="TrG5h" value="getUseAlternativeJre" />
      <node concept="10P_77" id="14R2qyOCsWn" role="3clF45" />
      <node concept="3Tm1VV" id="14R2qyOCsWo" role="1B3o_S" />
      <node concept="3clFbS" id="14R2qyOCsWp" role="3clF47">
        <node concept="3J1_TO" id="14R2qyOCsWq" role="3cqZAp">
          <node concept="3clFbS" id="14R2qyOCsWr" role="1zxBo7">
            <node concept="3cpWs6" id="14R2qyOCsWs" role="3cqZAp">
              <node concept="2OqwBi" id="14R2qyOCsWt" role="3cqZAk">
                <node concept="Xjq3P" id="14R2qyOCsWu" role="2Oq$k0" />
                <node concept="2sxana" id="14R2qyOCsWv" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWK" resolve="useAlternativeJre" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="14R2qyOCsWw" role="1zxBo5">
            <node concept="XOnhg" id="14R2qyOCsWx" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dHd5G" role="1tU5fm">
                <node concept="3uibUv" id="14R2qyOCsWy" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NullPointerException" resolve="NullPointerException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="14R2qyOCsWz" role="1zc67A">
              <node concept="3SKdUt" id="14R2qyOCsW$" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXodWy" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXodWz" role="1PaTwD">
                    <property role="3oM_SC" value="useAlternativeJre" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodW$" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodW_" role="1PaTwD">
                    <property role="3oM_SC" value="basically" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWA" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWB" role="1PaTwD">
                    <property role="3oM_SC" value="Boolean," />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWC" role="1PaTwD">
                    <property role="3oM_SC" value="so" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWD" role="1PaTwD">
                    <property role="3oM_SC" value="can" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWE" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWF" role="1PaTwD">
                    <property role="3oM_SC" value="null" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWG" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWH" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWI" role="1PaTwD">
                    <property role="3oM_SC" value="cast" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWJ" role="1PaTwD">
                    <property role="3oM_SC" value="(and" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWK" role="1PaTwD">
                    <property role="3oM_SC" value="thus" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWL" role="1PaTwD">
                    <property role="3oM_SC" value="NPE)" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWM" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWN" role="1PaTwD">
                    <property role="3oM_SC" value="inevitable" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXodWO" role="1PaTwD">
                    <property role="3oM_SC" value="here" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="14R2qyOCsWA" role="3cqZAp">
                <node concept="3clFbT" id="14R2qyOCsWB" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="v01rbtVlXX">
    <property role="TrG5h" value="JavaConfigurationEditorComponent" />
    <node concept="312cEg" id="v01rbtXOH4" role="jymVt">
      <property role="TrG5h" value="myVmParameters" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="v01rbtXOH2" role="1B3o_S" />
      <node concept="3uibUv" id="v01rbtXOH3" role="1tU5fm">
        <ref role="3uigEE" to="xk9i:14R2qyOCoc1" resolve="RawLineEditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="v01rbtXOLN" role="jymVt">
      <property role="TrG5h" value="myProgramParameters" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="v01rbtXOLO" role="1B3o_S" />
      <node concept="3uibUv" id="v01rbtXOLP" role="1tU5fm">
        <ref role="3uigEE" to="xk9i:14R2qyOCoc1" resolve="RawLineEditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="v01rbtY19H" role="jymVt">
      <property role="TrG5h" value="myWorkingDirectory" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="v01rbtY19F" role="1B3o_S" />
      <node concept="3uibUv" id="v01rbtY19G" role="1tU5fm">
        <ref role="3uigEE" to="xk9i:14R2qyOCo9f" resolve="FieldWithPathChooseDialog" />
      </node>
    </node>
    <node concept="312cEg" id="v01rbtY1j2" role="jymVt">
      <property role="TrG5h" value="myUseAlternativeJre" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="v01rbtY1j0" role="1B3o_S" />
      <node concept="3uibUv" id="v01rbtY1j1" role="1tU5fm">
        <ref role="3uigEE" to="qqrq:~JBCheckBox" resolve="JBCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="v01rbtY1su" role="jymVt">
      <property role="TrG5h" value="myJreHome" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="v01rbtY1ss" role="1B3o_S" />
      <node concept="3uibUv" id="v01rbtY1st" role="1tU5fm">
        <ref role="3uigEE" to="xk9i:14R2qyOCo9f" resolve="FieldWithPathChooseDialog" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Ga5ALlrhoQ" role="jymVt" />
    <node concept="3clFbW" id="2Ga5ALlrfHF" role="jymVt">
      <node concept="3cqZAl" id="2Ga5ALlrfHG" role="3clF45" />
      <node concept="3Tm1VV" id="2Ga5ALlrfHH" role="1B3o_S" />
      <node concept="3clFbS" id="2Ga5ALlrfHI" role="3clF47">
        <node concept="XkiVB" id="2Ga5ALlrfHJ" role="3cqZAp">
          <ref role="37wK5l" to="qqrq:~JBPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JBPanel" />
          <node concept="2ShNRf" id="2Ga5ALlrfHK" role="37wK5m">
            <node concept="1pGfFk" id="2Ga5ALlrfHL" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Ga5ALlrg1N" role="3cqZAp" />
        <node concept="3clFbF" id="2Ga5ALlrg1O" role="3cqZAp">
          <node concept="37vLTI" id="2Ga5ALlrg1P" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg1Q" role="37vLTJ">
              <ref role="3cqZAo" node="v01rbtXOH4" resolve="myVmParameters" />
            </node>
            <node concept="2ShNRf" id="2Ga5ALlrg1R" role="37vLTx">
              <node concept="1pGfFk" id="2Ga5ALlrg1S" role="2ShVmc">
                <ref role="37wK5l" to="xk9i:14R2qyOCocY" resolve="RawLineEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg1T" role="3cqZAp">
          <node concept="2OqwBi" id="2Ga5ALlrg1U" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg1V" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtXOH4" resolve="myVmParameters" />
            </node>
            <node concept="liA8E" id="2Ga5ALlrg1W" role="2OqNvi">
              <ref role="37wK5l" to="xk9i:14R2qyOCocc" resolve="setDialogCaption" />
              <node concept="Xl_RD" id="2Ga5ALlrg1X" role="37wK5m">
                <property role="Xl_RC" value="VM parameters" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg1Y" role="3cqZAp">
          <node concept="37vLTI" id="2Ga5ALlrg1Z" role="3clFbG">
            <node concept="2ShNRf" id="2Ga5ALlrg20" role="37vLTx">
              <node concept="1pGfFk" id="2Ga5ALlrg21" role="2ShVmc">
                <ref role="37wK5l" to="xk9i:14R2qyOCocY" resolve="RawLineEditorComponent" />
              </node>
            </node>
            <node concept="37vLTw" id="2Ga5ALlrg22" role="37vLTJ">
              <ref role="3cqZAo" node="v01rbtXOLN" resolve="myProgramParameters" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg23" role="3cqZAp">
          <node concept="2OqwBi" id="2Ga5ALlrg24" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg25" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtXOLN" resolve="myProgramParameters" />
            </node>
            <node concept="liA8E" id="2Ga5ALlrg26" role="2OqNvi">
              <ref role="37wK5l" to="xk9i:14R2qyOCocc" resolve="setDialogCaption" />
              <node concept="Xl_RD" id="2Ga5ALlrg27" role="37wK5m">
                <property role="Xl_RC" value="Program parameters" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg28" role="3cqZAp">
          <node concept="37vLTI" id="2Ga5ALlrg29" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg2a" role="37vLTJ">
              <ref role="3cqZAo" node="v01rbtY19H" resolve="myWorkingDirectory" />
            </node>
            <node concept="2ShNRf" id="2Ga5ALlrg2b" role="37vLTx">
              <node concept="1pGfFk" id="2Ga5ALlrg2c" role="2ShVmc">
                <ref role="37wK5l" to="xk9i:14R2qyOCoar" resolve="FieldWithPathChooseDialog" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg2d" role="3cqZAp">
          <node concept="2OqwBi" id="2Ga5ALlrg2e" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg2f" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY19H" resolve="myWorkingDirectory" />
            </node>
            <node concept="liA8E" id="2Ga5ALlrg2g" role="2OqNvi">
              <ref role="37wK5l" to="xk9i:14R2qyOCo9K" resolve="setTitle" />
              <node concept="Xl_RD" id="2Ga5ALlrg2h" role="37wK5m">
                <property role="Xl_RC" value="Select working directory" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg2i" role="3cqZAp">
          <node concept="37vLTI" id="2Ga5ALlrg2j" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg2k" role="37vLTJ">
              <ref role="3cqZAo" node="v01rbtY1j2" resolve="myUseAlternativeJre" />
            </node>
            <node concept="2ShNRf" id="2Ga5ALlrg2l" role="37vLTx">
              <node concept="1pGfFk" id="2Ga5ALlrg2m" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="2Ga5ALlrg2n" role="37wK5m">
                  <property role="Xl_RC" value="Use alternative JRE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg2o" role="3cqZAp">
          <node concept="37vLTI" id="2Ga5ALlrg2p" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg2q" role="37vLTJ">
              <ref role="3cqZAo" node="v01rbtY1su" resolve="myJreHome" />
            </node>
            <node concept="2ShNRf" id="2Ga5ALlrg2r" role="37vLTx">
              <node concept="1pGfFk" id="2Ga5ALlrg2s" role="2ShVmc">
                <ref role="37wK5l" to="xk9i:14R2qyOCoar" resolve="FieldWithPathChooseDialog" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg2t" role="3cqZAp">
          <node concept="2OqwBi" id="2Ga5ALlrg2u" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg2v" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY1j2" resolve="myUseAlternativeJre" />
            </node>
            <node concept="liA8E" id="2Ga5ALlrg2w" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
              <node concept="1bVj0M" id="2Ga5ALlrg2x" role="37wK5m">
                <node concept="3clFbS" id="2Ga5ALlrg2y" role="1bW5cS">
                  <node concept="3clFbF" id="2Ga5ALlrg2z" role="3cqZAp">
                    <node concept="2OqwBi" id="2Ga5ALlrg2$" role="3clFbG">
                      <node concept="37vLTw" id="2Ga5ALlrg2_" role="2Oq$k0">
                        <ref role="3cqZAo" node="v01rbtY1su" resolve="myJreHome" />
                      </node>
                      <node concept="liA8E" id="2Ga5ALlrg2A" role="2OqNvi">
                        <ref role="37wK5l" to="xk9i:14R2qyOCo9g" resolve="setEditable" />
                        <node concept="2OqwBi" id="2Ga5ALlrg2B" role="37wK5m">
                          <node concept="37vLTw" id="2Ga5ALlrg2C" role="2Oq$k0">
                            <ref role="3cqZAo" node="v01rbtY1j2" resolve="myUseAlternativeJre" />
                          </node>
                          <node concept="liA8E" id="2Ga5ALlrg2D" role="2OqNvi">
                            <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="2Ga5ALlrg2E" role="1bW2Oz">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="2Ga5ALlrg2F" role="1tU5fm">
                    <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg2G" role="3cqZAp">
          <node concept="2OqwBi" id="2Ga5ALlrg2H" role="3clFbG">
            <node concept="37vLTw" id="2Ga5ALlrg2I" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY1su" resolve="myJreHome" />
            </node>
            <node concept="liA8E" id="2Ga5ALlrg2J" role="2OqNvi">
              <ref role="37wK5l" to="xk9i:14R2qyOCo9K" resolve="setTitle" />
              <node concept="Xl_RD" id="2Ga5ALlrg2K" role="37wK5m">
                <property role="Xl_RC" value="Select alternative JRE home" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Ga5ALlrg2L" role="3cqZAp" />
        <node concept="3clFbF" id="2Ga5ALlrg2M" role="3cqZAp">
          <node concept="1rXfSq" id="2Ga5ALlrg2N" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2ShNRf" id="2Ga5ALlrg2O" role="37wK5m">
              <node concept="1pGfFk" id="2Ga5ALlrg2P" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                <node concept="Xl_RD" id="2Ga5ALlrg2Q" role="37wK5m">
                  <property role="Xl_RC" value="VM parameters:" />
                </node>
              </node>
            </node>
            <node concept="1rwKMM" id="2Ga5ALlrg2R" role="37wK5m">
              <property role="1rwKMK" value="label" />
              <node concept="3cmrfG" id="2Ga5ALlrg2S" role="1rxHDW">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg2T" role="3cqZAp">
          <node concept="1rXfSq" id="2Ga5ALlrg2U" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="2Ga5ALlrg2V" role="37wK5m">
              <ref role="3cqZAo" node="v01rbtXOH4" resolve="myVmParameters" />
            </node>
            <node concept="1rwKMM" id="2Ga5ALlrg2W" role="37wK5m">
              <property role="1rwKMK" value="panel" />
              <node concept="3cmrfG" id="2Ga5ALlrg2X" role="1rxHDW">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg2Y" role="3cqZAp">
          <node concept="1rXfSq" id="2Ga5ALlrg2Z" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2ShNRf" id="2Ga5ALlrg30" role="37wK5m">
              <node concept="1pGfFk" id="2Ga5ALlrg31" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                <node concept="Xl_RD" id="2Ga5ALlrg32" role="37wK5m">
                  <property role="Xl_RC" value="Program parameters:" />
                </node>
              </node>
            </node>
            <node concept="1rwKMM" id="2Ga5ALlrg33" role="37wK5m">
              <property role="1rwKMK" value="label" />
              <node concept="3cmrfG" id="2Ga5ALlrg34" role="1rxHDW">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg35" role="3cqZAp">
          <node concept="1rXfSq" id="2Ga5ALlrg36" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="2Ga5ALlrg37" role="37wK5m">
              <ref role="3cqZAo" node="v01rbtXOLN" resolve="myProgramParameters" />
            </node>
            <node concept="1rwKMM" id="2Ga5ALlrg38" role="37wK5m">
              <property role="1rwKMK" value="panel" />
              <node concept="3cmrfG" id="2Ga5ALlrg39" role="1rxHDW">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg3a" role="3cqZAp">
          <node concept="1rXfSq" id="2Ga5ALlrg3b" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2ShNRf" id="2Ga5ALlrg3c" role="37wK5m">
              <node concept="1pGfFk" id="2Ga5ALlrg3d" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                <node concept="Xl_RD" id="2Ga5ALlrg3e" role="37wK5m">
                  <property role="Xl_RC" value="Working directory:" />
                </node>
              </node>
            </node>
            <node concept="1rwKMM" id="2Ga5ALlrg3f" role="37wK5m">
              <property role="1rwKMK" value="label" />
              <node concept="3cmrfG" id="2Ga5ALlrg3g" role="1rxHDW">
                <property role="3cmrfH" value="4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg3h" role="3cqZAp">
          <node concept="1rXfSq" id="2Ga5ALlrg3i" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="2Ga5ALlrg3j" role="37wK5m">
              <ref role="3cqZAo" node="v01rbtY19H" resolve="myWorkingDirectory" />
            </node>
            <node concept="1rwKMM" id="2Ga5ALlrg3k" role="37wK5m">
              <property role="1rwKMK" value="panel" />
              <node concept="3cmrfG" id="2Ga5ALlrg3l" role="1rxHDW">
                <property role="3cmrfH" value="5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg3m" role="3cqZAp">
          <node concept="1rXfSq" id="2Ga5ALlrg3n" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="2Ga5ALlrg3o" role="37wK5m">
              <ref role="3cqZAo" node="v01rbtY1j2" resolve="myUseAlternativeJre" />
            </node>
            <node concept="1rwKMM" id="2Ga5ALlrg3p" role="37wK5m">
              <property role="1rwKMK" value="label" />
              <node concept="3cmrfG" id="2Ga5ALlrg3q" role="1rxHDW">
                <property role="3cmrfH" value="9" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Ga5ALlrg3r" role="3cqZAp">
          <node concept="1rXfSq" id="2Ga5ALlrg3s" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="2Ga5ALlrg3t" role="37wK5m">
              <ref role="3cqZAo" node="v01rbtY1su" resolve="myJreHome" />
            </node>
            <node concept="1rwKMM" id="2Ga5ALlrg3u" role="37wK5m">
              <property role="1rwKMK" value="panel" />
              <node concept="3cmrfG" id="2Ga5ALlrg3v" role="1rxHDW">
                <property role="3cmrfH" value="10" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Ga5ALlrg1I" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="v01rbtX9ck" role="jymVt" />
    <node concept="3clFb_" id="v01rbtX9nK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reset" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="14R2qyOCuuF" role="3clF46">
        <property role="TrG5h" value="javaOptions" />
        <node concept="2pR195" id="14R2qyOCuuG" role="1tU5fm">
          <ref role="3uigEE" node="14R2qyOCsUf" resolve="JavaRunParameters" />
        </node>
        <node concept="2AHcQZ" id="14R2qyOCuuH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="v01rbtX9nN" role="3clF47">
        <node concept="3clFbJ" id="v01rbtXMf4" role="3cqZAp">
          <node concept="3clFbS" id="v01rbtXMf5" role="3clFbx">
            <node concept="3cpWs6" id="v01rbtXNtK" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="v01rbtXNq2" role="3clFbw">
            <node concept="10Nm6u" id="v01rbtXNqj" role="3uHU7w" />
            <node concept="37vLTw" id="v01rbtXMfu" role="3uHU7B">
              <ref role="3cqZAo" node="14R2qyOCuuF" resolve="javaOptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtY5l3" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbtY6vf" role="3clFbG">
            <node concept="37vLTw" id="v01rbtY5l2" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtXOLN" resolve="myProgramParameters" />
            </node>
            <node concept="liA8E" id="v01rbtYhDL" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="v01rbtYitz" role="37wK5m">
                <node concept="37vLTw" id="v01rbtYhE7" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOCuuF" resolve="javaOptions" />
                </node>
                <node concept="2sxana" id="v01rbtYlr6" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWC" resolve="programParameters" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtYlBA" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbtYmWm" role="3clFbG">
            <node concept="37vLTw" id="v01rbtYlB_" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtXOH4" resolve="myVmParameters" />
            </node>
            <node concept="liA8E" id="v01rbtYy8H" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="v01rbtYyWv" role="37wK5m">
                <node concept="37vLTw" id="v01rbtYy93" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOCuuF" resolve="javaOptions" />
                </node>
                <node concept="2sxana" id="v01rbtY_U2" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWE" resolve="vmOptions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtYAjR" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbtYBE_" role="3clFbG">
            <node concept="37vLTw" id="v01rbtYAjQ" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY1su" resolve="myJreHome" />
            </node>
            <node concept="liA8E" id="v01rbtYMSN" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="v01rbtYNGr" role="37wK5m">
                <node concept="37vLTw" id="v01rbtYMSZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOCuuF" resolve="javaOptions" />
                </node>
                <node concept="2sxana" id="v01rbtYT_B" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWG" resolve="jrePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtYTGV" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbtYURs" role="3clFbG">
            <node concept="37vLTw" id="v01rbtYTGU" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY19H" resolve="myWorkingDirectory" />
            </node>
            <node concept="liA8E" id="v01rbtZ67z" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="v01rbtZ6Vl" role="37wK5m">
                <node concept="37vLTw" id="v01rbtZ67J" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOCuuF" resolve="javaOptions" />
                </node>
                <node concept="2sxana" id="v01rbtZ9T2" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWI" resolve="workingDirectory" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtZa0t" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbtZbdD" role="3clFbG">
            <node concept="37vLTw" id="v01rbtZa0s" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY1j2" resolve="myUseAlternativeJre" />
            </node>
            <node concept="liA8E" id="v01rbtZtsy" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="2OqwBi" id="v01rbtZuhk" role="37wK5m">
                <node concept="37vLTw" id="v01rbtZtsI" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOCuuF" resolve="javaOptions" />
                </node>
                <node concept="2sxana" id="v01rbtZxfC" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWK" resolve="useAlternativeJre" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="20UxoqpJUj$" role="3cqZAp">
          <node concept="2OqwBi" id="20UxoqpJVss" role="3clFbG">
            <node concept="37vLTw" id="20UxoqpJUjz" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY1su" resolve="myJreHome" />
            </node>
            <node concept="liA8E" id="20UxoqpK75F" role="2OqNvi">
              <ref role="37wK5l" to="xk9i:14R2qyOCo9g" resolve="setEditable" />
              <node concept="2OqwBi" id="20UxoqpK7Ra" role="37wK5m">
                <node concept="37vLTw" id="20UxoqpK75R" role="2Oq$k0">
                  <ref role="3cqZAo" node="14R2qyOCuuF" resolve="javaOptions" />
                </node>
                <node concept="2sxana" id="20UxoqpKdKd" role="2OqNvi">
                  <ref role="2sxfKC" node="14R2qyOCsWK" resolve="useAlternativeJre" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="v01rbtX9iN" role="1B3o_S" />
      <node concept="3cqZAl" id="v01rbtX9nI" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2Ga5ALlrqrD" role="jymVt" />
    <node concept="3clFb_" id="v01rbtX9zH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="14R2qyOCuvw" role="3clF46">
        <property role="TrG5h" value="javaOptions" />
        <node concept="2pR195" id="14R2qyOCuvx" role="1tU5fm">
          <ref role="3uigEE" node="14R2qyOCsUf" resolve="JavaRunParameters" />
        </node>
        <node concept="2AHcQZ" id="14R2qyOCuvy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="v01rbtX9zK" role="3clF47">
        <node concept="3clFbJ" id="v01rbtXNO3" role="3cqZAp">
          <node concept="3clFbS" id="v01rbtXNO4" role="3clFbx">
            <node concept="3cpWs6" id="v01rbtXODD" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="v01rbtXO_V" role="3clFbw">
            <node concept="10Nm6u" id="v01rbtXOAc" role="3uHU7w" />
            <node concept="37vLTw" id="v01rbtXNOj" role="3uHU7B">
              <ref role="3cqZAo" node="14R2qyOCuvw" resolve="javaOptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtZxjd" role="3cqZAp">
          <node concept="37vLTI" id="v01rbtZFia" role="3clFbG">
            <node concept="2OqwBi" id="v01rbtZGJp" role="37vLTx">
              <node concept="37vLTw" id="v01rbtZFsy" role="2Oq$k0">
                <ref role="3cqZAo" node="v01rbtXOLN" resolve="myProgramParameters" />
              </node>
              <node concept="liA8E" id="v01rbtZRWV" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getText()" resolve="getText" />
              </node>
            </node>
            <node concept="2OqwBi" id="v01rbtZy4X" role="37vLTJ">
              <node concept="37vLTw" id="v01rbtZxjc" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOCuvw" resolve="javaOptions" />
              </node>
              <node concept="2sxana" id="v01rbtZBYX" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWC" resolve="programParameters" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtZS23" role="3cqZAp">
          <node concept="37vLTI" id="v01rbtZS24" role="3clFbG">
            <node concept="2OqwBi" id="v01rbtZS25" role="37vLTx">
              <node concept="37vLTw" id="v01rbtZVid" role="2Oq$k0">
                <ref role="3cqZAo" node="v01rbtXOH4" resolve="myVmParameters" />
              </node>
              <node concept="liA8E" id="v01rbtZS27" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getText()" resolve="getText" />
              </node>
            </node>
            <node concept="2OqwBi" id="v01rbtZS28" role="37vLTJ">
              <node concept="37vLTw" id="v01rbtZS29" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOCuvw" resolve="javaOptions" />
              </node>
              <node concept="2sxana" id="v01rbtZVcV" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWE" resolve="vmOptions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtZS2x" role="3cqZAp">
          <node concept="37vLTI" id="v01rbtZS2y" role="3clFbG">
            <node concept="2OqwBi" id="v01rbtZS2z" role="37vLTx">
              <node concept="37vLTw" id="v01rbtZYkY" role="2Oq$k0">
                <ref role="3cqZAo" node="v01rbtY1su" resolve="myJreHome" />
              </node>
              <node concept="liA8E" id="v01rbtZS2_" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getText()" resolve="getText" />
              </node>
            </node>
            <node concept="2OqwBi" id="v01rbtZS2A" role="37vLTJ">
              <node concept="37vLTw" id="v01rbtZS2B" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOCuvw" resolve="javaOptions" />
              </node>
              <node concept="2sxana" id="v01rbtZYfG" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWG" resolve="jrePath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtZS37" role="3cqZAp">
          <node concept="37vLTI" id="v01rbtZS38" role="3clFbG">
            <node concept="2OqwBi" id="v01rbtZS39" role="37vLTx">
              <node concept="37vLTw" id="v01rbu01iD" role="2Oq$k0">
                <ref role="3cqZAo" node="v01rbtY19H" resolve="myWorkingDirectory" />
              </node>
              <node concept="liA8E" id="v01rbtZS3b" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getText()" resolve="getText" />
              </node>
            </node>
            <node concept="2OqwBi" id="v01rbtZS3c" role="37vLTJ">
              <node concept="37vLTw" id="v01rbtZS3d" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOCuvw" resolve="javaOptions" />
              </node>
              <node concept="2sxana" id="v01rbu01it" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWI" resolve="workingDirectory" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbtZS3P" role="3cqZAp">
          <node concept="37vLTI" id="v01rbtZS3Q" role="3clFbG">
            <node concept="2OqwBi" id="v01rbtZS3R" role="37vLTx">
              <node concept="37vLTw" id="v01rbu04rK" role="2Oq$k0">
                <ref role="3cqZAo" node="v01rbtY1j2" resolve="myUseAlternativeJre" />
              </node>
              <node concept="liA8E" id="v01rbtZS3T" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
              </node>
            </node>
            <node concept="2OqwBi" id="v01rbtZS3U" role="37vLTJ">
              <node concept="37vLTw" id="v01rbtZS3V" role="2Oq$k0">
                <ref role="3cqZAo" node="14R2qyOCuvw" resolve="javaOptions" />
              </node>
              <node concept="2sxana" id="v01rbu04jl" role="2OqNvi">
                <ref role="2sxfKC" node="14R2qyOCsWK" resolve="useAlternativeJre" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="v01rbtX9uD" role="1B3o_S" />
      <node concept="3cqZAl" id="v01rbtX9zF" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2Ga5ALlrqrE" role="jymVt" />
    <node concept="3clFb_" id="v01rbu1VKB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="v01rbu1VKE" role="3clF47">
        <node concept="3clFbF" id="v01rbu1VVd" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbu1X5j" role="3clFbG">
            <node concept="37vLTw" id="v01rbu1VVc" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY1su" resolve="myJreHome" />
            </node>
            <node concept="liA8E" id="v01rbu29s3" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbu29z0" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbu2aHa" role="3clFbG">
            <node concept="37vLTw" id="v01rbu29yZ" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtXOLN" resolve="myProgramParameters" />
            </node>
            <node concept="liA8E" id="v01rbu2lTl" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbu2m0m" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbu2nd8" role="3clFbG">
            <node concept="37vLTw" id="v01rbu2FeT" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtXOH4" resolve="myVmParameters" />
            </node>
            <node concept="liA8E" id="v01rbu2QoR" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="v01rbu2QvW" role="3cqZAp">
          <node concept="2OqwBi" id="v01rbu2REe" role="3clFbG">
            <node concept="37vLTw" id="v01rbu2QvV" role="2Oq$k0">
              <ref role="3cqZAo" node="v01rbtY19H" resolve="myWorkingDirectory" />
            </node>
            <node concept="liA8E" id="v01rbu32TM" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~ComponentWithBrowseButton.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="v01rbu1VDB" role="1B3o_S" />
      <node concept="3cqZAl" id="v01rbu1VK_" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="v01rbtVlXY" role="1B3o_S" />
    <node concept="3uibUv" id="v01rbtVAVU" role="1zkMxy">
      <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
    </node>
  </node>
  <node concept="yHkDy" id="6woObKLBCjU">
    <property role="TrG5h" value="JavaRunParameters" />
    <property role="3GE5qa" value="" />
    <node concept="yHkHE" id="50Zp5FhQ11O" role="yHkHi">
      <property role="TrG5h" value="getDefaultWorkingDir" />
      <node concept="17QB3L" id="50Zp5FhQp0$" role="3clF45" />
      <node concept="3clFbS" id="50Zp5FhQ11Q" role="3clF47">
        <node concept="3cpWs8" id="A_N7ZlwTeG" role="3cqZAp">
          <node concept="3cpWsn" id="A_N7ZlwTeH" role="3cpWs9">
            <property role="TrG5h" value="userDir" />
            <node concept="17QB3L" id="A_N7ZlwTnm" role="1tU5fm" />
            <node concept="2YIFZM" id="A_N7ZlwTeI" role="33vP2m">
              <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
              <ref role="37wK5l" to="18ew:~PathManager.getUserDir()" resolve="getUserDir" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="A_N7ZlwTCm" role="3cqZAp">
          <node concept="3clFbS" id="A_N7ZlwTCo" role="3clFbx">
            <node concept="3J1_TO" id="A_N7Zlx1LO" role="3cqZAp">
              <node concept="3clFbS" id="A_N7Zlx1LP" role="1zxBo7">
                <node concept="3clFbF" id="A_N7ZlwUj6" role="3cqZAp">
                  <node concept="37vLTI" id="A_N7ZlwUCc" role="3clFbG">
                    <node concept="2OqwBi" id="A_N7ZlwZcB" role="37vLTx">
                      <node concept="2ShNRf" id="A_N7ZlwUCu" role="2Oq$k0">
                        <node concept="1pGfFk" id="A_N7ZlwYRp" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="Xl_RD" id="A_N7Zlx1C7" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="A_N7Zlx0fA" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getCanonicalPath()" resolve="getCanonicalPath" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="A_N7ZlwUj4" role="37vLTJ">
                      <ref role="3cqZAo" node="A_N7ZlwTeH" resolve="userDir" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="A_N7Zlx1LK" role="1zxBo5">
                <node concept="XOnhg" id="A_N7Zlx1LM" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dHd5E" role="1tU5fm">
                    <node concept="3uibUv" id="A_N7Zlx1LN" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="A_N7Zlx1LL" role="1zc67A">
                  <node concept="YS8fn" id="A_N7Zlx1V0" role="3cqZAp">
                    <node concept="2ShNRf" id="A_N7Zlx1Vu" role="YScLw">
                      <node concept="1pGfFk" id="A_N7Zlx2DA" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="37vLTw" id="A_N7Zlx3bO" role="37wK5m">
                          <ref role="3cqZAo" node="A_N7Zlx1LM" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="A_N7ZlwUab" role="3clFbw">
            <node concept="10Nm6u" id="A_N7ZlwUiC" role="3uHU7w" />
            <node concept="37vLTw" id="A_N7ZlwTL3" role="3uHU7B">
              <ref role="3cqZAo" node="A_N7ZlwTeH" resolve="userDir" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="50Zp5FhQ1fz" role="3cqZAp">
          <node concept="37vLTw" id="A_N7ZlwTeJ" role="3cqZAk">
            <ref role="3cqZAo" node="A_N7ZlwTeH" resolve="userDir" />
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDc" id="6woObKLBCjV" role="yHkHg">
      <node concept="yHkD3" id="6woObKLBCjW" role="yHkCN">
        <property role="TrG5h" value="myJavaOptionsEditor" />
        <node concept="3uibUv" id="6woObKLBCjZ" role="1tU5fm">
          <ref role="3uigEE" node="v01rbtVlXX" resolve="JavaConfigurationEditorComponent" />
        </node>
      </node>
      <node concept="yHkDR" id="6woObKLBCk0" role="yHkDf">
        <node concept="3clFbS" id="6woObKLBCk1" role="2VODD2">
          <node concept="3clFbF" id="6woObKLBCk2" role="3cqZAp">
            <node concept="37vLTI" id="2Ga5ALlrcVM" role="3clFbG">
              <node concept="yHkD2" id="6woObKLBCk3" role="37vLTJ">
                <ref role="3cqZAo" node="6woObKLBCjW" resolve="myJavaOptionsEditor" />
              </node>
              <node concept="2ShNRf" id="6lWD_ZKCBdV" role="37vLTx">
                <node concept="1pGfFk" id="6lWD_ZKCH5x" role="2ShVmc">
                  <ref role="37wK5l" node="2Ga5ALlrfHF" resolve="JavaConfigurationEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkD7" id="6woObKLBCk4" role="yHkCL">
        <node concept="3clFbS" id="6woObKLBCk5" role="2VODD2">
          <node concept="3clFbF" id="6woObKLBCk6" role="3cqZAp">
            <node concept="2OqwBi" id="6woObKLBCk7" role="3clFbG">
              <node concept="yHkD2" id="6woObKLBCk8" role="2Oq$k0">
                <ref role="3cqZAo" node="6woObKLBCjW" resolve="myJavaOptionsEditor" />
              </node>
              <node concept="liA8E" id="6woObKLBCk9" role="2OqNvi">
                <ref role="37wK5l" node="v01rbtX9nK" resolve="reset" />
                <node concept="2OqwBi" id="6woObKLBCka" role="37wK5m">
                  <node concept="yHkzx" id="6woObKLBCkb" role="2Oq$k0" />
                  <node concept="yHkDZ" id="6woObKLBCkc" role="2OqNvi">
                    <ref role="yHkDY" node="6woObKLBCks" resolve="myJavaParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkDo" id="6woObKLBCkd" role="yHkDe">
        <node concept="3clFbS" id="6woObKLBCke" role="2VODD2">
          <node concept="3clFbF" id="6woObKLBCkf" role="3cqZAp">
            <node concept="2OqwBi" id="6woObKLBCkg" role="3clFbG">
              <node concept="yHkD2" id="6woObKLBCkh" role="2Oq$k0">
                <ref role="3cqZAo" node="6woObKLBCjW" resolve="myJavaOptionsEditor" />
              </node>
              <node concept="liA8E" id="6woObKLBCki" role="2OqNvi">
                <ref role="37wK5l" node="v01rbtX9zH" resolve="apply" />
                <node concept="2OqwBi" id="6woObKLBCkj" role="37wK5m">
                  <node concept="yHkzx" id="6woObKLBCkk" role="2Oq$k0" />
                  <node concept="yHkDZ" id="6woObKLBCkl" role="2OqNvi">
                    <ref role="yHkDY" node="6woObKLBCks" resolve="myJavaParameters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkDU" id="6woObKLBCkm" role="yHkCK">
        <node concept="3clFbS" id="6woObKLBCkn" role="2VODD2">
          <node concept="3clFbF" id="6woObKLBCko" role="3cqZAp">
            <node concept="2OqwBi" id="6woObKLBCkp" role="3clFbG">
              <node concept="yHkD2" id="6woObKLBCkq" role="2Oq$k0">
                <ref role="3cqZAo" node="6woObKLBCjW" resolve="myJavaOptionsEditor" />
              </node>
              <node concept="liA8E" id="6woObKLBCkr" role="2OqNvi">
                <ref role="37wK5l" node="v01rbu1VKB" resolve="dispose" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDC" id="6woObKLBCks" role="yHkDi">
      <property role="TrG5h" value="myJavaParameters" />
      <node concept="3uibUv" id="4rbJdZOH3Xd" role="1tU5fm">
        <ref role="3uigEE" node="14R2qyOCsUf" resolve="JavaRunParameters" />
      </node>
      <node concept="2ry78W" id="6woObKLBCku" role="33vP2m">
        <ref role="2ryb1Q" node="14R2qyOCsUf" resolve="JavaRunParameters" />
        <node concept="2r$n1x" id="6woObKLBCkv" role="2r_Bvh">
          <ref role="2r$qp6" node="14R2qyOCsWC" resolve="programParameters" />
          <node concept="10Nm6u" id="6woObKLBCkw" role="2r_lH1" />
        </node>
        <node concept="2r$n1x" id="6woObKLBCkx" role="2r_Bvh">
          <ref role="2r$qp6" node="14R2qyOCsWE" resolve="vmOptions" />
          <node concept="10Nm6u" id="6woObKLBCky" role="2r_lH1" />
        </node>
        <node concept="2r$n1x" id="6woObKLBCkz" role="2r_Bvh">
          <ref role="2r$qp6" node="14R2qyOCsWG" resolve="jrePath" />
          <node concept="10Nm6u" id="6woObKLBCk$" role="2r_lH1" />
        </node>
        <node concept="2r$n1x" id="6woObKLBCk_" role="2r_Bvh">
          <ref role="2r$qp6" node="14R2qyOCsWI" resolve="workingDirectory" />
          <node concept="2OqwBi" id="50Zp5FhQp57" role="2r_lH1">
            <node concept="2WthIp" id="50Zp5FhQp5a" role="2Oq$k0" />
            <node concept="2XshWL" id="50Zp5FhQp5c" role="2OqNvi">
              <ref role="2WH_rO" node="50Zp5FhQ11O" resolve="getDefaultWorkingDir" />
            </node>
          </node>
        </node>
        <node concept="2r$n1x" id="6woObKLBCkB" role="2r_Bvh">
          <ref role="2r$qp6" node="14R2qyOCsWK" resolve="useAlternativeJre" />
          <node concept="3clFbT" id="6woObKLBCkC" role="2r_lH1">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDF" id="6woObKLBCkD" role="yHkD$">
      <property role="TrG5h" value="project" />
      <node concept="3uibUv" id="6oDdG_XzBdV" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7jEXsfiNGiU">
    <property role="TrG5h" value="JvmArgs" />
    <property role="1EXbeo" value="true" />
    <node concept="2YIFZL" id="46IpDBbYZ8G" role="jymVt">
      <property role="TrG5h" value="getDefaultJvmArgs" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7jEXsfiNKao" role="3clF47">
        <node concept="3clFbF" id="7jEXsfiNRpG" role="3cqZAp">
          <node concept="2OqwBi" id="7jEXsfiO_95" role="3clFbG">
            <node concept="1tenjt" id="7jEXsfiNRpJ" role="2Oq$k0">
              <node concept="Xl_RD" id="7jEXsfiNRpK" role="1r8FgC">
                <property role="Xl_RC" value="-client" />
              </node>
              <node concept="Xl_RD" id="7jEXsfiNRpL" role="1r8FgC">
                <property role="Xl_RC" value="-Xss1024k" />
              </node>
              <node concept="Xl_RD" id="7jEXsfiNRpM" role="1r8FgC">
                <property role="Xl_RC" value="-ea" />
              </node>
              <node concept="Xl_RD" id="7jEXsfiNRpN" role="1r8FgC">
                <property role="Xl_RC" value="-Xmx1500m" />
              </node>
              <node concept="Xl_RD" id="7jEXsfiNRpP" role="1r8FgC">
                <property role="Xl_RC" value="-XX:+HeapDumpOnOutOfMemoryError" />
              </node>
              <node concept="Xl_RD" id="7jEXsfiNRpQ" role="1r8FgC">
                <property role="Xl_RC" value="-Dfile.encoding=UTF-8" />
              </node>
              <node concept="1eOMI4" id="7jEXsfiNRpR" role="1r8FgC">
                <node concept="3K4zz7" id="7jEXsfiNRpS" role="1eOMHV">
                  <node concept="Xl_RD" id="7jEXsfiNRpT" role="3K4E3e">
                    <property role="Xl_RC" value=" -Dmps.internal=true" />
                  </node>
                  <node concept="Xl_RD" id="7jEXsfiNRpU" role="3K4GZi">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="2YIFZM" id="7jEXsfiNRpV" role="3K4Cdx">
                    <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
                    <ref role="37wK5l" to="fyhk:~RuntimeFlags.isInternalMode()" resolve="isInternalMode" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="4z969tcICUs" role="1r8FgC">
                <property role="Xl_RC" value="-Didea.invalidate.caches.invalidates.vfs=true" />
              </node>
              <node concept="Xl_RD" id="17JeiLQCcia" role="1r8FgC">
                <property role="Xl_RC" value="-Didea.trust.disabled=false" />
              </node>
            </node>
            <node concept="2TNl2y" id="7jEXsfiO_ji" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7jEXsfiO$Lh" role="3clF45">
        <node concept="17QB3L" id="7jEXsfiO$Wa" role="_ZDj9" />
      </node>
      <node concept="3Tm1VV" id="7jEXsfiNIOO" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7jEXsfiNGiV" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="iIJcS6j69w">
    <property role="TrG5h" value="JarManifestBuilder" />
    <node concept="312cEg" id="iIJcS6j6io" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMainClass" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="iIJcS6j6ho" role="1B3o_S" />
      <node concept="17QB3L" id="iIJcS6j6ih" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="iIJcS6ka$w" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myClassPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="iIJcS6k9GU" role="1B3o_S" />
      <node concept="_YKpA" id="iIJcS6kjPk" role="1tU5fm">
        <node concept="3uibUv" id="iIJcS6kjPm" role="_ZDj9">
          <ref role="3uigEE" to="zf81:~URI" resolve="URI" />
        </node>
      </node>
      <node concept="2ShNRf" id="iIJcS6kaX4" role="33vP2m">
        <node concept="Tc6Ow" id="iIJcS6klD6" role="2ShVmc">
          <node concept="3uibUv" id="iIJcS6kmBH" role="HW$YZ">
            <ref role="3uigEE" to="zf81:~URI" resolve="URI" />
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="6i8uuP8OU1_" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBb2" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBb3" role="1PaTwD">
            <property role="3oM_SC" value="We" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBb4" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBb5" role="1PaTwD">
            <property role="3oM_SC" value="URI" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBb6" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBb7" role="1PaTwD">
            <property role="3oM_SC" value="deal" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBb8" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBb9" role="1PaTwD">
            <property role="3oM_SC" value="file" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBba" role="1PaTwD">
            <property role="3oM_SC" value="names" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbb" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbc" role="1PaTwD">
            <property role="3oM_SC" value="contain" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbd" role="1PaTwD">
            <property role="3oM_SC" value="spaces" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbe" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbf" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbg" role="1PaTwD">
            <property role="3oM_SC" value="non-friendly" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbh" role="1PaTwD">
            <property role="3oM_SC" value="manifest" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbi" role="1PaTwD">
            <property role="3oM_SC" value="characters" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBbj" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBbk" role="1PaTwD">
            <property role="3oM_SC" value="Class-Path" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbl" role="1PaTwD">
            <property role="3oM_SC" value="entry" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbm" role="1PaTwD">
            <property role="3oM_SC" value="value" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbn" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbo" role="1PaTwD">
            <property role="3oM_SC" value="treated" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbp" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbq" role="1PaTwD">
            <property role="3oM_SC" value="URI," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbr" role="1PaTwD">
            <property role="3oM_SC" value="therefore" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbs" role="1PaTwD">
            <property role="3oM_SC" value="characters" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbt" role="1PaTwD">
            <property role="3oM_SC" value="need" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbu" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbv" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbw" role="1PaTwD">
            <property role="3oM_SC" value="escaped." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBbx" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBby" role="1PaTwD">
            <property role="3oM_SC" value="At" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbz" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBb$" role="1PaTwD">
            <property role="3oM_SC" value="moment," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBb_" role="1PaTwD">
            <property role="3oM_SC" value="I" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbA" role="1PaTwD">
            <property role="3oM_SC" value="don't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbB" role="1PaTwD">
            <property role="3oM_SC" value="care" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbC" role="1PaTwD">
            <property role="3oM_SC" value="about" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbD" role="1PaTwD">
            <property role="3oM_SC" value="duplicates," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbE" role="1PaTwD">
            <property role="3oM_SC" value="though" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbF" role="1PaTwD">
            <property role="3oM_SC" value="might" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbG" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbH" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbI" role="1PaTwD">
            <property role="3oM_SC" value="right" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbJ" role="1PaTwD">
            <property role="3oM_SC" value="thing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbK" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBbL" role="1PaTwD">
            <property role="3oM_SC" value="do." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="iIJcS6j6iF" role="jymVt" />
    <node concept="3clFb_" id="iIJcS6j6d4" role="jymVt">
      <property role="TrG5h" value="withMainClass" />
      <node concept="3uibUv" id="iIJcS6j6f5" role="3clF45">
        <ref role="3uigEE" node="iIJcS6j69w" resolve="JarManifestBuilder" />
      </node>
      <node concept="3clFbS" id="iIJcS6j6d7" role="3clF47">
        <node concept="3clFbF" id="iIJcS6j6o5" role="3cqZAp">
          <node concept="37vLTI" id="iIJcS6j79S" role="3clFbG">
            <node concept="37vLTw" id="iIJcS6j7ua" role="37vLTx">
              <ref role="3cqZAo" node="iIJcS6j7fV" resolve="mainClass" />
            </node>
            <node concept="37vLTw" id="iIJcS6j6o4" role="37vLTJ">
              <ref role="3cqZAo" node="iIJcS6j6io" resolve="myMainClass" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="iIJcS6jbsm" role="3cqZAp">
          <node concept="Xjq3P" id="iIJcS6jbsn" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="iIJcS6j6d_" role="1B3o_S" />
      <node concept="37vLTG" id="iIJcS6j7fV" role="3clF46">
        <property role="TrG5h" value="mainClass" />
        <node concept="17QB3L" id="iIJcS6j7fU" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="iIJcS6ka8R" role="lGtFl">
        <node concept="TUZQ0" id="iIJcS6ka8U" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="iIJcS6ka8W" role="zr_5Q">
            <ref role="zr_51" node="iIJcS6j7fV" resolve="mainClass" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsBbM" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBbN" role="1PaTwD">
              <property role="3oM_SC" value="overrides" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBbO" role="1PaTwD">
              <property role="3oM_SC" value="executable" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBbP" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBbQ" role="1PaTwD">
              <property role="3oM_SC" value="setting" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="iIJcS6j6dq" role="jymVt" />
    <node concept="3clFb_" id="iIJcS6j7DH" role="jymVt">
      <property role="TrG5h" value="withFilenameClassPath" />
      <node concept="3uibUv" id="iIJcS6jbhh" role="3clF45">
        <ref role="3uigEE" node="iIJcS6j69w" resolve="JarManifestBuilder" />
      </node>
      <node concept="3clFbS" id="iIJcS6j7DK" role="3clF47">
        <node concept="3clFbF" id="iIJcS6kuS3" role="3cqZAp">
          <node concept="1rXfSq" id="iIJcS6kuS1" role="3clFbG">
            <ref role="37wK5l" node="iIJcS6jbvz" resolve="withFilesClassPath" />
            <node concept="2OqwBi" id="iIJcS6kvJ9" role="37wK5m">
              <node concept="37vLTw" id="iIJcS6kvuS" role="2Oq$k0">
                <ref role="3cqZAo" node="iIJcS6j8gS" resolve="paths" />
              </node>
              <node concept="3$u5V9" id="iIJcS6kw7F" role="2OqNvi">
                <node concept="1bVj0M" id="iIJcS6kw7H" role="23t8la">
                  <node concept="3clFbS" id="iIJcS6kw7I" role="1bW5cS">
                    <node concept="3clFbF" id="iIJcS6kwgc" role="3cqZAp">
                      <node concept="2ShNRf" id="iIJcS6kwga" role="3clFbG">
                        <node concept="1pGfFk" id="iIJcS6kxdm" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="37vLTw" id="iIJcS6kxlP" role="37wK5m">
                            <ref role="3cqZAo" node="5W7E4fV0Xii" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xii" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xij" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="iIJcS6j9Hq" role="3cqZAp">
          <node concept="Xjq3P" id="iIJcS6j9Pt" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="iIJcS6j7Jz" role="1B3o_S" />
      <node concept="37vLTG" id="iIJcS6j8gS" role="3clF46">
        <property role="TrG5h" value="paths" />
        <node concept="A3Dl8" id="iIJcS6j8gQ" role="1tU5fm">
          <node concept="17QB3L" id="iIJcS6j8nr" role="A3Ik2" />
        </node>
      </node>
      <node concept="P$JXv" id="6i8uuP8OSQC" role="lGtFl">
        <node concept="TUZQ0" id="6i8uuP8OSQF" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="6i8uuP8OSQH" role="zr_5Q">
            <ref role="zr_51" node="iIJcS6j8gS" resolve="paths" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsBbR" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBbS" role="1PaTwD">
              <property role="3oM_SC" value="augments" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBbT" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBbU" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="iIJcS6jbyT" role="jymVt" />
    <node concept="3clFb_" id="iIJcS6jbvz" role="jymVt">
      <property role="TrG5h" value="withFilesClassPath" />
      <node concept="3uibUv" id="iIJcS6jbv$" role="3clF45">
        <ref role="3uigEE" node="iIJcS6j69w" resolve="JarManifestBuilder" />
      </node>
      <node concept="3clFbS" id="iIJcS6jbv_" role="3clF47">
        <node concept="3clFbF" id="iIJcS6krxz" role="3cqZAp">
          <node concept="1rXfSq" id="iIJcS6krxx" role="3clFbG">
            <ref role="37wK5l" node="iIJcS6jbE1" resolve="withClassPath" />
            <node concept="2OqwBi" id="iIJcS6ksfG" role="37wK5m">
              <node concept="37vLTw" id="iIJcS6krVT" role="2Oq$k0">
                <ref role="3cqZAo" node="iIJcS6jbvD" resolve="paths" />
              </node>
              <node concept="3$u5V9" id="iIJcS6ksCe" role="2OqNvi">
                <node concept="1bVj0M" id="iIJcS6ksCg" role="23t8la">
                  <node concept="3clFbS" id="iIJcS6ksCh" role="1bW5cS">
                    <node concept="3clFbF" id="iIJcS6ksKI" role="3cqZAp">
                      <node concept="2OqwBi" id="iIJcS6kt83" role="3clFbG">
                        <node concept="37vLTw" id="iIJcS6ksKH" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0Xik" resolve="it" />
                        </node>
                        <node concept="liA8E" id="iIJcS6kugc" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.toURI()" resolve="toURI" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xik" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xil" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="iIJcS6jbvA" role="3cqZAp">
          <node concept="Xjq3P" id="iIJcS6jbvB" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="iIJcS6jbvC" role="1B3o_S" />
      <node concept="37vLTG" id="iIJcS6jbvD" role="3clF46">
        <property role="TrG5h" value="paths" />
        <node concept="A3Dl8" id="iIJcS6jbvE" role="1tU5fm">
          <node concept="3uibUv" id="iIJcS6jbBj" role="A3Ik2">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="6i8uuP8OTsz" role="lGtFl">
        <node concept="TUZQ0" id="6i8uuP8OTsA" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="6i8uuP8OTsC" role="zr_5Q">
            <ref role="zr_51" node="iIJcS6jbvD" resolve="paths" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsBbX" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBbY" role="1PaTwD">
              <property role="3oM_SC" value="augments" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBbZ" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBc0" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBbV" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBbW" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="iIJcS6jbI7" role="jymVt" />
    <node concept="3clFb_" id="iIJcS6jbE1" role="jymVt">
      <property role="TrG5h" value="withClassPath" />
      <node concept="3uibUv" id="iIJcS6jbE2" role="3clF45">
        <ref role="3uigEE" node="iIJcS6j69w" resolve="JarManifestBuilder" />
      </node>
      <node concept="3clFbS" id="iIJcS6jbE3" role="3clF47">
        <node concept="3clFbF" id="iIJcS6kcgd" role="3cqZAp">
          <node concept="2OqwBi" id="iIJcS6kopu" role="3clFbG">
            <node concept="37vLTw" id="iIJcS6kcgb" role="2Oq$k0">
              <ref role="3cqZAo" node="iIJcS6ka$w" resolve="myClassPath" />
            </node>
            <node concept="X8dFx" id="iIJcS6kpEz" role="2OqNvi">
              <node concept="37vLTw" id="iIJcS6kqbW" role="25WWJ7">
                <ref role="3cqZAo" node="iIJcS6jbE7" resolve="paths" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="iIJcS6jbE4" role="3cqZAp">
          <node concept="Xjq3P" id="iIJcS6jbE5" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="iIJcS6jbE6" role="1B3o_S" />
      <node concept="37vLTG" id="iIJcS6jbE7" role="3clF46">
        <property role="TrG5h" value="paths" />
        <node concept="A3Dl8" id="iIJcS6jbE8" role="1tU5fm">
          <node concept="3uibUv" id="iIJcS6jbNT" role="A3Ik2">
            <ref role="3uigEE" to="zf81:~URI" resolve="URI" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="iIJcS6kajk" role="lGtFl">
        <node concept="TUZQ0" id="iIJcS6kajn" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="iIJcS6kajp" role="zr_5Q">
            <ref role="zr_51" node="iIJcS6jbE7" resolve="paths" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsBc1" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBc2" role="1PaTwD">
              <property role="3oM_SC" value="augments" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBc3" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBc4" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="iIJcS6jW1F" role="jymVt" />
    <node concept="3clFb_" id="iIJcS6jWbO" role="jymVt">
      <property role="TrG5h" value="createManifest" />
      <node concept="3uibUv" id="iIJcS6jWky" role="3clF45">
        <ref role="3uigEE" to="embf:~Manifest" resolve="Manifest" />
      </node>
      <node concept="3clFbS" id="iIJcS6jWbR" role="3clF47">
        <node concept="3cpWs8" id="iIJcS6k0Sb" role="3cqZAp">
          <node concept="3cpWsn" id="iIJcS6k0Sc" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="iIJcS6k0Sd" role="1tU5fm">
              <ref role="3uigEE" to="embf:~Manifest" resolve="Manifest" />
            </node>
            <node concept="2ShNRf" id="iIJcS6k0VQ" role="33vP2m">
              <node concept="1pGfFk" id="iIJcS6k1MA" role="2ShVmc">
                <ref role="37wK5l" to="embf:~Manifest.&lt;init&gt;()" resolve="Manifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="iIJcS6nuFF" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXodWP" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXodWQ" role="1PaTwD">
              <property role="3oM_SC" value="Manfest-Version" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWR" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWS" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWT" role="1PaTwD">
              <property role="3oM_SC" value="mandatory" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWU" role="1PaTwD">
              <property role="3oM_SC" value="attribute," />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWV" role="1PaTwD">
              <property role="3oM_SC" value="though" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWW" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWX" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWY" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodWZ" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodX0" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodX1" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodX2" role="1PaTwD">
              <property role="3oM_SC" value="jar/manifest" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodX3" role="1PaTwD">
              <property role="3oM_SC" value="documentation" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="iIJcS6nwaW" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXodX4" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXodX5" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodX6" role="1PaTwD">
              <property role="3oM_SC" value="believe" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodX7" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodX8" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodX9" role="1PaTwD">
              <property role="3oM_SC" value="defect" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXa" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXb" role="1PaTwD">
              <property role="3oM_SC" value="Attributes.writeMain," />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXc" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXd" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXe" role="1PaTwD">
              <property role="3oM_SC" value="save" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXf" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXg" role="1PaTwD">
              <property role="3oM_SC" value="unless" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXh" role="1PaTwD">
              <property role="3oM_SC" value="version" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXi" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXj" role="1PaTwD">
              <property role="3oM_SC" value="been" />
            </node>
            <node concept="3oM_SD" id="ATZLwXodXk" role="1PaTwD">
              <property role="3oM_SC" value="specified." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iIJcS6noH8" role="3cqZAp">
          <node concept="2OqwBi" id="iIJcS6nqMw" role="3clFbG">
            <node concept="2OqwBi" id="iIJcS6npw6" role="2Oq$k0">
              <node concept="37vLTw" id="iIJcS6noH6" role="2Oq$k0">
                <ref role="3cqZAo" node="iIJcS6k0Sc" resolve="m" />
              </node>
              <node concept="liA8E" id="iIJcS6nqmw" role="2OqNvi">
                <ref role="37wK5l" to="embf:~Manifest.getMainAttributes()" resolve="getMainAttributes" />
              </node>
            </node>
            <node concept="liA8E" id="iIJcS6nrR$" role="2OqNvi">
              <ref role="37wK5l" to="embf:~Attributes.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="10M0yZ" id="iIJcS6nsJp" role="37wK5m">
                <ref role="3cqZAo" to="embf:~Attributes$Name.MANIFEST_VERSION" resolve="MANIFEST_VERSION" />
                <ref role="1PxDUh" to="embf:~Attributes$Name" resolve="Attributes.Name" />
              </node>
              <node concept="Xl_RD" id="iIJcS6nsTR" role="37wK5m">
                <property role="Xl_RC" value="1.0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iIJcS6k2AU" role="3cqZAp">
          <node concept="2OqwBi" id="iIJcS6k3Aw" role="3clFbG">
            <node concept="2OqwBi" id="iIJcS6k2Pz" role="2Oq$k0">
              <node concept="37vLTw" id="iIJcS6k2AS" role="2Oq$k0">
                <ref role="3cqZAo" node="iIJcS6k0Sc" resolve="m" />
              </node>
              <node concept="liA8E" id="iIJcS6k3aw" role="2OqNvi">
                <ref role="37wK5l" to="embf:~Manifest.getMainAttributes()" resolve="getMainAttributes" />
              </node>
            </node>
            <node concept="liA8E" id="iIJcS6k62W" role="2OqNvi">
              <ref role="37wK5l" to="embf:~Attributes.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="10M0yZ" id="iIJcS6k6sf" role="37wK5m">
                <ref role="3cqZAo" to="embf:~Attributes$Name.MAIN_CLASS" resolve="MAIN_CLASS" />
                <ref role="1PxDUh" to="embf:~Attributes$Name" resolve="Attributes.Name" />
              </node>
              <node concept="37vLTw" id="iIJcS6k6DZ" role="37wK5m">
                <ref role="3cqZAo" node="iIJcS6j6io" resolve="myMainClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iIJcS6k6X2" role="3cqZAp">
          <node concept="2OqwBi" id="iIJcS6k8hK" role="3clFbG">
            <node concept="2OqwBi" id="iIJcS6k7cW" role="2Oq$k0">
              <node concept="37vLTw" id="iIJcS6k6X0" role="2Oq$k0">
                <ref role="3cqZAo" node="iIJcS6k0Sc" resolve="m" />
              </node>
              <node concept="liA8E" id="iIJcS6k7PK" role="2OqNvi">
                <ref role="37wK5l" to="embf:~Manifest.getMainAttributes()" resolve="getMainAttributes" />
              </node>
            </node>
            <node concept="liA8E" id="iIJcS6k99y" role="2OqNvi">
              <ref role="37wK5l" to="embf:~Attributes.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="10M0yZ" id="iIJcS6k9pS" role="37wK5m">
                <ref role="3cqZAo" to="embf:~Attributes$Name.CLASS_PATH" resolve="CLASS_PATH" />
                <ref role="1PxDUh" to="embf:~Attributes$Name" resolve="Attributes.Name" />
              </node>
              <node concept="2OqwBi" id="iIJcS6kUDC" role="37wK5m">
                <node concept="2OqwBi" id="iIJcS6kOgL" role="2Oq$k0">
                  <node concept="37vLTw" id="iIJcS6kBS8" role="2Oq$k0">
                    <ref role="3cqZAo" node="iIJcS6ka$w" resolve="myClassPath" />
                  </node>
                  <node concept="3$u5V9" id="iIJcS6kQIu" role="2OqNvi">
                    <node concept="1bVj0M" id="iIJcS6kQIw" role="23t8la">
                      <node concept="3clFbS" id="iIJcS6kQIx" role="1bW5cS">
                        <node concept="3clFbF" id="iIJcS6kQYq" role="3cqZAp">
                          <node concept="2OqwBi" id="iIJcS6kRt8" role="3clFbG">
                            <node concept="37vLTw" id="iIJcS6kQYp" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0Xim" resolve="it" />
                            </node>
                            <node concept="liA8E" id="iIJcS6kScC" role="2OqNvi">
                              <ref role="37wK5l" to="zf81:~URI.toString()" resolve="toString" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xim" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Xin" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uJxvA" id="iIJcS6kVzD" role="2OqNvi">
                  <node concept="Xl_RD" id="iIJcS6l3vp" role="3uJOhx">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="iIJcS6k28e" role="3cqZAp">
          <node concept="37vLTw" id="iIJcS6k2l7" role="3cqZAk">
            <ref role="3cqZAo" node="iIJcS6k0Sc" resolve="m" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="iIJcS6jWgv" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="iIJcS6jbP$" role="jymVt" />
    <node concept="3clFb_" id="iIJcS6jc0G" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toTempFile" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="iIJcS6jc0J" role="3clF47">
        <node concept="3cpWs8" id="iIJcS6jcoA" role="3cqZAp">
          <node concept="3cpWsn" id="iIJcS6jcoB" role="3cpWs9">
            <property role="TrG5h" value="tempJar" />
            <node concept="3uibUv" id="iIJcS6jco_" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2YIFZM" id="iIJcS6jcoC" role="33vP2m">
              <ref role="1Pybhc" to="guwi:~File" resolve="File" />
              <ref role="37wK5l" to="guwi:~File.createTempFile(java.lang.String,java.lang.String)" resolve="createTempFile" />
              <node concept="Xl_RD" id="iIJcS6jcoD" role="37wK5m">
                <property role="Xl_RC" value="jmb" />
              </node>
              <node concept="Xl_RD" id="iIJcS6jcGC" role="37wK5m">
                <property role="Xl_RC" value=".jar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iIJcS6jONp" role="3cqZAp">
          <node concept="2OqwBi" id="iIJcS6jPa5" role="3clFbG">
            <node concept="37vLTw" id="iIJcS6jONn" role="2Oq$k0">
              <ref role="3cqZAo" node="iIJcS6jcoB" resolve="tempJar" />
            </node>
            <node concept="liA8E" id="iIJcS6jQcz" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.deleteOnExit()" resolve="deleteOnExit" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="iIJcS6jVSF" role="3cqZAp">
          <node concept="3cpWsn" id="iIJcS6jVSG" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="iIJcS6jVSH" role="1tU5fm">
              <ref role="3uigEE" to="embf:~Manifest" resolve="Manifest" />
            </node>
            <node concept="1rXfSq" id="iIJcS6jWWY" role="33vP2m">
              <ref role="37wK5l" node="iIJcS6jWbO" resolve="createManifest" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="iIJcS6jYwN" role="3cqZAp">
          <node concept="3cpWsn" id="iIJcS6jYwO" role="3cpWs9">
            <property role="TrG5h" value="jarStream" />
            <node concept="3uibUv" id="iIJcS6jYwM" role="1tU5fm">
              <ref role="3uigEE" to="embf:~JarOutputStream" resolve="JarOutputStream" />
            </node>
            <node concept="2ShNRf" id="iIJcS6jYwP" role="33vP2m">
              <node concept="1pGfFk" id="iIJcS6jYwQ" role="2ShVmc">
                <ref role="37wK5l" to="embf:~JarOutputStream.&lt;init&gt;(java.io.OutputStream,java.util.jar.Manifest)" resolve="JarOutputStream" />
                <node concept="2ShNRf" id="iIJcS6jYwR" role="37wK5m">
                  <node concept="1pGfFk" id="iIJcS6jYwS" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~FileOutputStream.&lt;init&gt;(java.io.File)" resolve="FileOutputStream" />
                    <node concept="37vLTw" id="iIJcS6jYwT" role="37wK5m">
                      <ref role="3cqZAo" node="iIJcS6jcoB" resolve="tempJar" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="iIJcS6jYwU" role="37wK5m">
                  <ref role="3cqZAo" node="iIJcS6jVSG" resolve="m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iIJcS6jQl5" role="3cqZAp">
          <node concept="2OqwBi" id="iIJcS6jZky" role="3clFbG">
            <node concept="37vLTw" id="iIJcS6jYwV" role="2Oq$k0">
              <ref role="3cqZAo" node="iIJcS6jYwO" resolve="jarStream" />
            </node>
            <node concept="liA8E" id="iIJcS6k0jD" role="2OqNvi">
              <ref role="37wK5l" to="eydd:~ZipOutputStream.close()" resolve="close" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="iIJcS6k0yG" role="3cqZAp">
          <node concept="37vLTw" id="iIJcS6k0GZ" role="3cqZAk">
            <ref role="3cqZAo" node="iIJcS6jcoB" resolve="tempJar" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="iIJcS6jbUT" role="1B3o_S" />
      <node concept="3uibUv" id="iIJcS6jbZC" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3uibUv" id="iIJcS6jO_l" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="iIJcS6j8nG" role="jymVt" />
    <node concept="3UR2Jj" id="iIJcS6j6aP" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsB9x" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsB9y" role="1PaTwD">
          <property role="3oM_SC" value="Utility" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9z" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9$" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9_" role="1PaTwD">
          <property role="3oM_SC" value="deal" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9A" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9B" role="1PaTwD">
          <property role="3oM_SC" value="classpath" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9C" role="1PaTwD">
          <property role="3oM_SC" value="length" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9D" role="1PaTwD">
          <property role="3oM_SC" value="limitation." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsB9E" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsB9F" role="1PaTwD">
          <property role="3oM_SC" value="Creates" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9G" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9H" role="1PaTwD">
          <property role="3oM_SC" value="temporary" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9I" role="1PaTwD">
          <property role="3oM_SC" value="jar" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9J" role="1PaTwD">
          <property role="3oM_SC" value="file" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9K" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9L" role="1PaTwD">
          <property role="3oM_SC" value="META-INF/MANIFEST.MF" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9M" role="1PaTwD">
          <property role="3oM_SC" value="holding" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9N" role="1PaTwD">
          <property role="3oM_SC" value="Main-Class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9O" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9P" role="1PaTwD">
          <property role="3oM_SC" value="Class-Path" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9Q" role="1PaTwD">
          <property role="3oM_SC" value="entries" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9R" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9S" role="1PaTwD">
          <property role="3oM_SC" value="could" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9T" role="1PaTwD">
          <property role="3oM_SC" value="pass" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9U" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9V" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9W" role="1PaTwD">
          <property role="3oM_SC" value="executable" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsB9X" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsB9Y" role="1PaTwD">
          <property role="3oM_SC" value="(e.g." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsB9Z" role="1PaTwD">
          <property role="3oM_SC" value="'java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa0" role="1PaTwD">
          <property role="3oM_SC" value="-jar" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa1" role="1PaTwD">
          <property role="3oM_SC" value="filename" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa2" role="1PaTwD">
          <property role="3oM_SC" value="args')." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBa3" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBa4" role="1PaTwD">
          <property role="3oM_SC" value="Kept" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa5" role="1PaTwD">
          <property role="3oM_SC" value="local" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa6" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa7" role="1PaTwD">
          <property role="3oM_SC" value="Java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa8" role="1PaTwD">
          <property role="3oM_SC" value="command" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa9" role="1PaTwD">
          <property role="3oM_SC" value="though" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaa" role="1PaTwD">
          <property role="3oM_SC" value="likely" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBab" role="1PaTwD">
          <property role="3oM_SC" value="shall" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBac" role="1PaTwD">
          <property role="3oM_SC" value="find" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBad" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBae" role="1PaTwD">
          <property role="3oM_SC" value="place" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaf" role="1PaTwD">
          <property role="3oM_SC" value="somewhere" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBag" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBah" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBai" role="1PaTwD">
          <property role="3oM_SC" value="shared" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaj" role="1PaTwD">
          <property role="3oM_SC" value="location" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBak" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBal" role="1PaTwD">
          <property role="3oM_SC" value="it's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBam" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBan" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBao" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBap" role="1PaTwD">
          <property role="3oM_SC" value="only" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaq" role="1PaTwD">
          <property role="3oM_SC" value="place" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBar" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBas" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBat" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBau" role="1PaTwD">
          <property role="3oM_SC" value="deal" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBav" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaw" role="1PaTwD">
          <property role="3oM_SC" value="long" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBax" role="1PaTwD">
          <property role="3oM_SC" value="classpath" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBay" role="1PaTwD">
          <property role="3oM_SC" value="issue." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBaz" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBa$" role="1PaTwD">
          <property role="3oM_SC" value="Package-private" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBa_" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaA" role="1PaTwD">
          <property role="3oM_SC" value="'api'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaB" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaC" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaD" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaE" role="1PaTwD">
          <property role="3oM_SC" value="best" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaF" role="1PaTwD">
          <property role="3oM_SC" value="package" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaG" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaH" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaI" role="1PaTwD">
          <property role="3oM_SC" value="utility" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaJ" role="1PaTwD">
          <property role="3oM_SC" value="class." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaK" role="1PaTwD">
          <property role="3oM_SC" value="Besides," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaL" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaM" role="1PaTwD">
          <property role="3oM_SC" value="whole" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaN" role="1PaTwD">
          <property role="3oM_SC" value="'api'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaO" role="1PaTwD">
          <property role="3oM_SC" value="model" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaP" role="1PaTwD">
          <property role="3oM_SC" value="has" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBaQ" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBaR" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaS" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaT" role="1PaTwD">
          <property role="3oM_SC" value="restructured" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaU" role="1PaTwD">
          <property role="3oM_SC" value="so" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaV" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaW" role="1PaTwD">
          <property role="3oM_SC" value="Java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaX" role="1PaTwD">
          <property role="3oM_SC" value="command" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaY" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBaZ" role="1PaTwD">
          <property role="3oM_SC" value="separate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBb0" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBb1" role="1PaTwD">
          <property role="3oM_SC" value="JavaConfigurationEditorComponent" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3KU19GSuBO_">
    <property role="TrG5h" value="JDKVersionChecker" />
    <node concept="Wx3nA" id="3KU19GSvZmn" role="jymVt">
      <property role="TrG5h" value="MIN_VERSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3KU19GSvZdy" role="1B3o_S" />
      <node concept="10Oyi0" id="3KU19GSvZm6" role="1tU5fm" />
      <node concept="3cmrfG" id="3KU19GSvZI9" role="33vP2m">
        <property role="3cmrfH" value="11" />
      </node>
    </node>
    <node concept="312cEg" id="3KU19GSvQPl" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3Tm6S6" id="3KU19GSvQPm" role="1B3o_S" />
      <node concept="3uibUv" id="3KU19GSwi$e" role="1tU5fm">
        <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="3KU19GSuBTc" role="jymVt" />
    <node concept="3clFbW" id="3KU19GSuBTw" role="jymVt">
      <node concept="3cqZAl" id="3KU19GSuBTx" role="3clF45" />
      <node concept="3clFbS" id="3KU19GSuBTz" role="3clF47">
        <node concept="3clFbF" id="3KU19GSvQPp" role="3cqZAp">
          <node concept="37vLTI" id="3KU19GSvQPr" role="3clFbG">
            <node concept="37vLTw" id="3KU19GSvQPu" role="37vLTJ">
              <ref role="3cqZAo" node="3KU19GSvQPl" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="3KU19GSvQPv" role="37vLTx">
              <ref role="3cqZAo" node="3KU19GSvzK5" resolve="p" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KU19GSvzK5" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="3KU19GSwivK" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KU19GSuBVQ" role="jymVt" />
    <node concept="3clFb_" id="3KU19GSuC0y" role="jymVt">
      <property role="TrG5h" value="checkAndNotifyOldJDK" />
      <node concept="37vLTG" id="3KU19GSuBTA" role="3clF46">
        <property role="TrG5h" value="javaHome" />
        <node concept="3uibUv" id="3KU19GSvFSb" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="3KU19GSuC0_" role="3clF47">
        <node concept="3cpWs8" id="3KU19GSv1YV" role="3cqZAp">
          <node concept="3cpWsn" id="3KU19GSv1YW" role="3cpWs9">
            <property role="TrG5h" value="versionInfo" />
            <node concept="3uibUv" id="3KU19GSv1Y2" role="1tU5fm">
              <ref role="3uigEE" to="m5my:~JdkVersionDetector$JdkVersionInfo" resolve="JdkVersionDetector.JdkVersionInfo" />
            </node>
            <node concept="2OqwBi" id="3KU19GSv1YX" role="33vP2m">
              <node concept="2YIFZM" id="3KU19GSv1YY" role="2Oq$k0">
                <ref role="1Pybhc" to="m5my:~JdkVersionDetector" resolve="JdkVersionDetector" />
                <ref role="37wK5l" to="m5my:~JdkVersionDetector.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="3KU19GSv1YZ" role="2OqNvi">
                <ref role="37wK5l" to="m5my:~JdkVersionDetector.detectJdkVersionInfo(java.lang.String,java.util.concurrent.ExecutorService)" resolve="detectJdkVersionInfo" />
                <node concept="37vLTw" id="3KU19GSvzOY" role="37wK5m">
                  <ref role="3cqZAo" node="3KU19GSuBTA" resolve="javaHome" />
                </node>
                <node concept="2YIFZM" id="3KU19GSv1Z3" role="37wK5m">
                  <ref role="1Pybhc" to="ixe9:~AppExecutorUtil" resolve="AppExecutorUtil" />
                  <ref role="37wK5l" to="ixe9:~AppExecutorUtil.getAppExecutorService()" resolve="getAppExecutorService" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KU19GSv5Yz" role="3cqZAp">
          <node concept="3clFbS" id="3KU19GSv5Y_" role="3clFbx">
            <node concept="3cpWs8" id="3KU19GSvVPv" role="3cqZAp">
              <node concept="3cpWsn" id="3KU19GSvVPw" role="3cpWs9">
                <property role="TrG5h" value="sb" />
                <node concept="3uibUv" id="3KU19GSvVUd" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                </node>
                <node concept="2ShNRf" id="3KU19GSvWi3" role="33vP2m">
                  <node concept="1pGfFk" id="3KU19GSvWg2" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KU19GSvWqh" role="3cqZAp">
              <node concept="2OqwBi" id="3KU19GSvWZH" role="3clFbG">
                <node concept="37vLTw" id="3KU19GSvWqf" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KU19GSvVPw" resolve="sb" />
                </node>
                <node concept="liA8E" id="3KU19GSvXOw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="3KU19GSw2th" role="37wK5m">
                    <node concept="Xl_RD" id="3KU19GSw2vk" role="3uHU7w">
                      <property role="Xl_RC" value=". Otherwise, some configurations will fail to run.&lt;br&gt;" />
                    </node>
                    <node concept="3cpWs3" id="3KU19GSw0Yu" role="3uHU7B">
                      <node concept="Xl_RD" id="3KU19GSvVPx" role="3uHU7B">
                        <property role="Xl_RC" value="JDK to run on should be at least of version " />
                      </node>
                      <node concept="37vLTw" id="3KU19GSw1a7" role="3uHU7w">
                        <ref role="3cqZAo" node="3KU19GSvZmn" resolve="MIN_VERSION" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KU19GSw2JE" role="3cqZAp">
              <node concept="2OqwBi" id="3KU19GSw3jf" role="3clFbG">
                <node concept="37vLTw" id="3KU19GSw2JC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KU19GSvVPw" resolve="sb" />
                </node>
                <node concept="liA8E" id="3KU19GSw41S" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="3KU19GSw7bE" role="37wK5m">
                    <node concept="3cpWs3" id="3KU19GSw5l4" role="3uHU7B">
                      <node concept="3cpWs3" id="3KU19GSw8G3" role="3uHU7B">
                        <node concept="Xl_RD" id="3KU19GSw8I6" role="3uHU7w">
                          <property role="Xl_RC" value=" has version " />
                        </node>
                        <node concept="3cpWs3" id="3KU19GSw83g" role="3uHU7B">
                          <node concept="Xl_RD" id="3KU19GSw45t" role="3uHU7B">
                            <property role="Xl_RC" value="Current JDK for executing run configurations " />
                          </node>
                          <node concept="37vLTw" id="3KU19GSw8f3" role="3uHU7w">
                            <ref role="3cqZAo" node="3KU19GSuBTA" resolve="javaHome" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3KU19GSw5Fn" role="3uHU7w">
                        <node concept="37vLTw" id="3KU19GSw5wH" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KU19GSv1YW" resolve="versionInfo" />
                        </node>
                        <node concept="2OwXpG" id="3KU19GSw6os" role="2OqNvi">
                          <ref role="2Oxat5" to="m5my:~JdkVersionDetector$JdkVersionInfo.version" resolve="version" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3KU19GSw9gE" role="3uHU7w">
                      <property role="Xl_RC" value="&lt;br&gt;" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KU19GSw9Jk" role="3cqZAp">
              <node concept="2OqwBi" id="3KU19GSw9Jl" role="3clFbG">
                <node concept="37vLTw" id="3KU19GSw9Jm" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KU19GSvVPw" resolve="sb" />
                </node>
                <node concept="liA8E" id="3KU19GSw9Jn" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="3KU19GSw9VT" role="37wK5m">
                    <property role="Xl_RC" value="Please set java.home system property or JAVA_HOME environment variable to point to newer JDK" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3KU19GSw9$J" role="3cqZAp" />
            <node concept="3cpWs8" id="3KU19GSvxsx" role="3cqZAp">
              <node concept="3cpWsn" id="3KU19GSvxsy" role="3cpWs9">
                <property role="TrG5h" value="notification" />
                <node concept="3uibUv" id="3KU19GSvsA7" role="1tU5fm">
                  <ref role="3uigEE" to="fnpx:~Notification" resolve="Notification" />
                </node>
                <node concept="2ShNRf" id="3KU19GSvxsz" role="33vP2m">
                  <node concept="1pGfFk" id="3KU19GSvxs$" role="2ShVmc">
                    <ref role="37wK5l" to="fnpx:~Notification.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,com.intellij.notification.NotificationType)" resolve="Notification" />
                    <node concept="Xl_RD" id="3KU19GSvxs_" role="37wK5m">
                      <property role="Xl_RC" value="Run" />
                    </node>
                    <node concept="Xl_RD" id="3KU19GSvxsA" role="37wK5m">
                      <property role="Xl_RC" value="Incorrect JDK version" />
                    </node>
                    <node concept="2OqwBi" id="3KU19GSwdCj" role="37wK5m">
                      <node concept="37vLTw" id="3KU19GSvVPy" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KU19GSvVPw" resolve="sb" />
                      </node>
                      <node concept="liA8E" id="3KU19GSweur" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="1bAaHM4iEwe" role="37wK5m">
                      <ref role="Rm8GQ" to="fnpx:~NotificationType.WARNING" resolve="WARNING" />
                      <ref role="1Px2BO" to="fnpx:~NotificationType" resolve="NotificationType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6Va2kqwreh4" role="3cqZAp">
              <node concept="2YIFZM" id="6Va2kqwreh5" role="3clFbG">
                <ref role="37wK5l" to="fnpx:~Notifications$Bus.notify(com.intellij.notification.Notification,com.intellij.openapi.project.Project)" resolve="notify" />
                <ref role="1Pybhc" to="fnpx:~Notifications$Bus" resolve="Notifications.Bus" />
                <node concept="37vLTw" id="3KU19GSvyVn" role="37wK5m">
                  <ref role="3cqZAo" node="3KU19GSvxsy" resolve="notification" />
                </node>
                <node concept="3K4zz7" id="3KU19GSwjXO" role="37wK5m">
                  <node concept="2OqwBi" id="3KU19GSwkMV" role="3K4E3e">
                    <node concept="1eOMI4" id="3KU19GSwk6g" role="2Oq$k0">
                      <node concept="10QFUN" id="3KU19GSwk6f" role="1eOMHV">
                        <node concept="37vLTw" id="3KU19GSwk6e" role="10QFUP">
                          <ref role="3cqZAo" node="3KU19GSvQPl" resolve="myProject" />
                        </node>
                        <node concept="3uibUv" id="3KU19GSwk8L" role="10QFUM">
                          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3KU19GSwlZe" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="3KU19GSwm2k" role="3K4GZi" />
                  <node concept="2ZW3vV" id="3KU19GSwjuw" role="3K4Cdx">
                    <node concept="3uibUv" id="3KU19GSwjAq" role="2ZW6by">
                      <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                    </node>
                    <node concept="37vLTw" id="3KU19GSwjjZ" role="2ZW6bz">
                      <ref role="3cqZAo" node="3KU19GSvQPl" resolve="myProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3KU19GSwfO8" role="3clFbw">
            <node concept="3y3z36" id="3KU19GSwfCp" role="3uHU7B">
              <node concept="37vLTw" id="3KU19GSwfn6" role="3uHU7B">
                <ref role="3cqZAo" node="3KU19GSv1YW" resolve="versionInfo" />
              </node>
              <node concept="10Nm6u" id="3KU19GSwfLC" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="3KU19GSv64U" role="3uHU7w">
              <node concept="2OqwBi" id="3KU19GSv4EO" role="3fr31v">
                <node concept="2OqwBi" id="3KU19GSv2Qg" role="2Oq$k0">
                  <node concept="37vLTw" id="3KU19GSv2EW" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KU19GSv1YW" resolve="versionInfo" />
                  </node>
                  <node concept="2OwXpG" id="3KU19GSv35l" role="2OqNvi">
                    <ref role="2Oxat5" to="m5my:~JdkVersionDetector$JdkVersionInfo.version" resolve="version" />
                  </node>
                </node>
                <node concept="liA8E" id="3KU19GSv5C9" role="2OqNvi">
                  <ref role="37wK5l" to="f2k0:~JavaVersion.isAtLeast(int)" resolve="isAtLeast" />
                  <node concept="37vLTw" id="3KU19GSwgc_" role="37wK5m">
                    <ref role="3cqZAo" node="3KU19GSvZmn" resolve="MIN_VERSION" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3KU19GSuBY9" role="1B3o_S" />
      <node concept="3cqZAl" id="3KU19GSuC0p" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="6QjbmLJojfu">
    <property role="TrG5h" value="ArgumentFileBuilder" />
    <node concept="3UR2Jj" id="6QjbmLJojgM" role="lGtFl">
      <node concept="1PaTwC" id="6QjbmLJojgN" role="1Vez_I">
        <node concept="3oM_SD" id="6QjbmLJojgO" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="6QjbmLJojgP" role="1Vez_I">
        <node concept="3oM_SD" id="6QjbmLJojgQ" role="1PaTwD">
          <property role="3oM_SC" value="Utility" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgR" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgS" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgT" role="1PaTwD">
          <property role="3oM_SC" value="deal" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgU" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgV" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgW" role="1PaTwD">
          <property role="3oM_SC" value="command" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgX" role="1PaTwD">
          <property role="3oM_SC" value="line" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgY" role="1PaTwD">
          <property role="3oM_SC" value="length" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojgZ" role="1PaTwD">
          <property role="3oM_SC" value="limitation," />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh0" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh1" role="1PaTwD">
          <property role="3oM_SC" value="alternative" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh2" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh3" role="1PaTwD">
          <property role="3oM_SC" value="JarManifestBuilder." />
        </node>
      </node>
      <node concept="1PaTwC" id="6QjbmLJojh4" role="1Vez_I">
        <node concept="3oM_SD" id="6QjbmLJojh5" role="1PaTwD">
          <property role="3oM_SC" value="Collects" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh6" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh7" role="1PaTwD">
          <property role="3oM_SC" value="arguments" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh8" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh9" role="1PaTwD">
          <property role="3oM_SC" value="serializes" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojha" role="1PaTwD">
          <property role="3oM_SC" value="them" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhb" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhc" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhd" role="1PaTwD">
          <property role="3oM_SC" value="temporary" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhe" role="1PaTwD">
          <property role="3oM_SC" value="JVM" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhf" role="1PaTwD">
          <property role="3oM_SC" value="argument" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhg" role="1PaTwD">
          <property role="3oM_SC" value="file" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhh" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhi" role="1PaTwD">
          <property role="3oM_SC" value="could" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhj" role="1PaTwD">
          <property role="3oM_SC" value="pass" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhk" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhl" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
      </node>
      <node concept="1PaTwC" id="6QjbmLJojhm" role="1Vez_I">
        <node concept="3oM_SD" id="6QjbmLJojhn" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojho" role="1PaTwD">
          <property role="3oM_SC" value="executable" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhp" role="1PaTwD">
          <property role="3oM_SC" value="(e.g." />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhq" role="1PaTwD">
          <property role="3oM_SC" value="'java" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhr" role="1PaTwD">
          <property role="3oM_SC" value="@filename" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhs" role="1PaTwD">
          <property role="3oM_SC" value="args')." />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojht" role="1PaTwD">
          <property role="3oM_SC" value="Such" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhu" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhv" role="1PaTwD">
          <property role="3oM_SC" value="argument" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhw" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhx" role="1PaTwD">
          <property role="3oM_SC" value="expanded" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhy" role="1PaTwD">
          <property role="3oM_SC" value="by" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhz" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh$" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojh_" role="1PaTwD">
          <property role="3oM_SC" value="launcher," />
        </node>
      </node>
      <node concept="1PaTwC" id="6QjbmLJojhA" role="1Vez_I">
        <node concept="3oM_SD" id="6QjbmLJojhB" role="1PaTwD">
          <property role="3oM_SC" value="before" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhC" role="1PaTwD">
          <property role="3oM_SC" value="any" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhD" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhE" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhF" role="1PaTwD">
          <property role="3oM_SC" value="loaded," />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhG" role="1PaTwD">
          <property role="3oM_SC" value="therefore," />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhH" role="1PaTwD">
          <property role="3oM_SC" value="unlike" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhI" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhJ" role="1PaTwD">
          <property role="3oM_SC" value="Class-Path" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhK" role="1PaTwD">
          <property role="3oM_SC" value="entry" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhL" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhM" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhN" role="1PaTwD">
          <property role="3oM_SC" value="manifest," />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhO" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhP" role="1PaTwD">
          <property role="3oM_SC" value="keeps" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhQ" role="1PaTwD">
          <property role="3oM_SC" value="'-classpath'" />
        </node>
      </node>
      <node concept="1PaTwC" id="6QjbmLJojhR" role="1Vez_I">
        <node concept="3oM_SD" id="6QjbmLJojhS" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhT" role="1PaTwD">
          <property role="3oM_SC" value="genuine" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhU" role="1PaTwD">
          <property role="3oM_SC" value="JVM" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhV" role="1PaTwD">
          <property role="3oM_SC" value="option" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhW" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhX" role="1PaTwD">
          <property role="3oM_SC" value="works" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhY" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojhZ" role="1PaTwD">
          <property role="3oM_SC" value="IDEA's" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJoji0" role="1PaTwD">
          <property role="3oM_SC" value="PathClassLoader" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJoji1" role="1PaTwD">
          <property role="3oM_SC" value="(see" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJoji2" role="1PaTwD">
          <property role="3oM_SC" value="MPS-35210)." />
        </node>
      </node>
      <node concept="1PaTwC" id="6QjbmLJoji3" role="1Vez_I">
        <node concept="3oM_SD" id="6QjbmLJoji4" role="1PaTwD">
          <property role="3oM_SC" value="Package-private" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJoji5" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJoji6" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJoji7" role="1PaTwD">
          <property role="3oM_SC" value="same" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJoji8" role="1PaTwD">
          <property role="3oM_SC" value="reason" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJoji9" role="1PaTwD">
          <property role="3oM_SC" value="JarManifestBuilder" />
        </node>
        <node concept="3oM_SD" id="6QjbmLJojia" role="1PaTwD">
          <property role="3oM_SC" value="is." />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6QjbmLJojfv" role="jymVt">
      <property role="TrG5h" value="myArguments" />
      <property role="3TUv4t" value="true" />
      <node concept="_YKpA" id="6QjbmLJoqCS" role="1tU5fm">
        <node concept="17QB3L" id="6QjbmLJoqCU" role="_ZDj9" />
      </node>
      <node concept="2ShNRf" id="6QjbmLJoji_" role="33vP2m">
        <node concept="1pGfFk" id="6QjbmLJojiE" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="17QB3L" id="6QjbmLJoELi" role="1pMfVU" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6QjbmLJojf_" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="6QjbmLJojfA" role="jymVt">
      <property role="TrG5h" value="withClassPath" />
      <node concept="37vLTG" id="6QjbmLJojfB" role="3clF46">
        <property role="TrG5h" value="classPath" />
        <node concept="3uibUv" id="6QjbmLJojfC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="6QjbmLJojfD" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6QjbmLJojfE" role="3clF47">
        <node concept="3cpWs8" id="6QjbmLJojfG" role="3cqZAp">
          <node concept="3cpWsn" id="6QjbmLJojfF" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="6QjbmLJojfH" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="6QjbmLJojiG" role="33vP2m">
              <node concept="1pGfFk" id="6QjbmLJojiL" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6QjbmLJojfJ" role="3cqZAp">
          <node concept="37vLTw" id="6QjbmLJojg1" role="1DdaDG">
            <ref role="3cqZAo" node="6QjbmLJojfB" resolve="classPath" />
          </node>
          <node concept="3cpWsn" id="6QjbmLJojfY" role="1Duv9x">
            <property role="TrG5h" value="entry" />
            <node concept="3uibUv" id="6QjbmLJojg0" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="3clFbS" id="6QjbmLJojfL" role="2LFqv$">
            <node concept="3clFbJ" id="6QjbmLJojfM" role="3cqZAp">
              <node concept="3eOSWO" id="6QjbmLJojfN" role="3clFbw">
                <node concept="2OqwBi" id="6QjbmLJojju" role="3uHU7B">
                  <node concept="37vLTw" id="6QjbmLJojiO" role="2Oq$k0">
                    <ref role="3cqZAo" node="6QjbmLJojfF" resolve="value" />
                  </node>
                  <node concept="liA8E" id="6QjbmLJojjv" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~AbstractStringBuilder.length()" resolve="length" />
                  </node>
                </node>
                <node concept="3cmrfG" id="6QjbmLJojfP" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3clFbS" id="6QjbmLJojfR" role="3clFbx">
                <node concept="3clFbF" id="6QjbmLJojfS" role="3cqZAp">
                  <node concept="2OqwBi" id="6QjbmLJojjD" role="3clFbG">
                    <node concept="37vLTw" id="6QjbmLJojiS" role="2Oq$k0">
                      <ref role="3cqZAo" node="6QjbmLJojfF" resolve="value" />
                    </node>
                    <node concept="liA8E" id="6QjbmLJojjE" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="10M0yZ" id="6QjbmLJojlg" role="37wK5m">
                        <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                        <ref role="3cqZAo" to="guwi:~File.pathSeparator" resolve="pathSeparator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6QjbmLJojfV" role="3cqZAp">
              <node concept="2OqwBi" id="6QjbmLJojjP" role="3clFbG">
                <node concept="37vLTw" id="6QjbmLJojiX" role="2Oq$k0">
                  <ref role="3cqZAo" node="6QjbmLJojfF" resolve="value" />
                </node>
                <node concept="liA8E" id="6QjbmLJojjQ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="2OqwBi" id="6QjbmLJojmC" role="37wK5m">
                    <node concept="37vLTw" id="6QjbmLJojlj" role="2Oq$k0">
                      <ref role="3cqZAo" node="6QjbmLJojfY" resolve="entry" />
                    </node>
                    <node concept="liA8E" id="6QjbmLJojmD" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6QjbmLJow6X" role="3cqZAp">
          <node concept="2OqwBi" id="6QjbmLJozk0" role="3clFbG">
            <node concept="37vLTw" id="6QjbmLJozk3" role="2Oq$k0">
              <ref role="3cqZAo" node="6QjbmLJojfv" resolve="myArguments" />
            </node>
            <node concept="TSZUe" id="6QjbmLJozk4" role="2OqNvi">
              <node concept="Xl_RD" id="6QjbmLJozk6" role="25WWJ7">
                <property role="Xl_RC" value="-classpath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6QjbmLJojg5" role="3cqZAp">
          <node concept="2OqwBi" id="6QjbmLJo_t6" role="3clFbG">
            <node concept="37vLTw" id="6QjbmLJo_t9" role="2Oq$k0">
              <ref role="3cqZAo" node="6QjbmLJojfv" resolve="myArguments" />
            </node>
            <node concept="TSZUe" id="6QjbmLJo_ta" role="2OqNvi">
              <node concept="2OqwBi" id="6QjbmLJo_tc" role="25WWJ7">
                <node concept="37vLTw" id="6QjbmLJo_tf" role="2Oq$k0">
                  <ref role="3cqZAo" node="6QjbmLJojfF" resolve="value" />
                </node>
                <node concept="liA8E" id="6QjbmLJo_tg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6QjbmLJojg8" role="3cqZAp">
          <node concept="Xjq3P" id="6QjbmLJojg9" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6QjbmLJojga" role="1B3o_S" />
      <node concept="3uibUv" id="6QjbmLJojgb" role="3clF45">
        <ref role="3uigEE" node="6QjbmLJojfu" resolve="ArgumentFileBuilder" />
      </node>
      <node concept="P$JXv" id="6QjbmLJojgc" role="lGtFl">
        <node concept="1PaTwC" id="6QjbmLJojgd" role="1Vez_I">
          <node concept="3oM_SD" id="6QjbmLJojge" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="TUZQ0" id="6QjbmLJojib" role="3nqlJM">
          <node concept="1PaTwC" id="6QjbmLJojic" role="1Vez_I">
            <node concept="3oM_SD" id="6QjbmLJojif" role="1PaTwD">
              <property role="3oM_SC" value="entries" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojig" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojih" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojii" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojij" role="1PaTwD">
              <property role="3oM_SC" value="java" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojik" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojil" role="1PaTwD">
              <property role="3oM_SC" value="'-classpath'" />
            </node>
          </node>
          <node concept="zr_55" id="6QjbmLJojie" role="zr_5Q">
            <ref role="zr_51" node="6QjbmLJojfB" resolve="classPath" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6QjbmLJojgf" role="jymVt">
      <property role="TrG5h" value="getLength" />
      <node concept="3clFbS" id="6QjbmLJojgg" role="3clF47">
        <node concept="3cpWs8" id="6QjbmLJojgi" role="3cqZAp">
          <node concept="3cpWsn" id="6QjbmLJojgh" role="3cpWs9">
            <property role="TrG5h" value="length" />
            <node concept="10Oyi0" id="6QjbmLJojgj" role="1tU5fm" />
            <node concept="3cmrfG" id="6QjbmLJojgk" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6QjbmLJojgl" role="3cqZAp">
          <node concept="37vLTw" id="6QjbmLJojgx" role="1DdaDG">
            <ref role="3cqZAo" node="6QjbmLJojfv" resolve="myArguments" />
          </node>
          <node concept="3cpWsn" id="6QjbmLJojgu" role="1Duv9x">
            <property role="TrG5h" value="argument" />
            <node concept="17QB3L" id="6QjbmLJoGSb" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="6QjbmLJojgn" role="2LFqv$">
            <node concept="3clFbF" id="6QjbmLJojgo" role="3cqZAp">
              <node concept="d57v9" id="6QjbmLJojgp" role="3clFbG">
                <node concept="37vLTw" id="6QjbmLJojgq" role="37vLTJ">
                  <ref role="3cqZAo" node="6QjbmLJojgh" resolve="length" />
                </node>
                <node concept="3cpWs3" id="6QjbmLJojgr" role="37vLTx">
                  <node concept="2OqwBi" id="6QjbmLJojl9" role="3uHU7B">
                    <node concept="37vLTw" id="6QjbmLJojjc" role="2Oq$k0">
                      <ref role="3cqZAo" node="6QjbmLJojgu" resolve="argument" />
                    </node>
                    <node concept="liA8E" id="6QjbmLJojla" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="6QjbmLJojgt" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6QjbmLJojgy" role="3cqZAp">
          <node concept="37vLTw" id="6QjbmLJojgz" role="3cqZAk">
            <ref role="3cqZAo" node="6QjbmLJojgh" resolve="length" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6QjbmLJojg$" role="1B3o_S" />
      <node concept="10Oyi0" id="6QjbmLJojg_" role="3clF45" />
      <node concept="P$JXv" id="6QjbmLJojgA" role="lGtFl">
        <node concept="1PaTwC" id="6QjbmLJojgB" role="1Vez_I">
          <node concept="3oM_SD" id="6QjbmLJojgC" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="x79VA" id="6QjbmLJojim" role="3nqlJM">
          <node concept="1PaTwC" id="6QjbmLJojin" role="1Vez_I">
            <node concept="3oM_SD" id="6QjbmLJojip" role="1PaTwD">
              <property role="3oM_SC" value="number" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojiq" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojir" role="1PaTwD">
              <property role="3oM_SC" value="characters" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojis" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojit" role="1PaTwD">
              <property role="3oM_SC" value="collected" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojiu" role="1PaTwD">
              <property role="3oM_SC" value="arguments" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojiv" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojiw" role="1PaTwD">
              <property role="3oM_SC" value="take" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojix" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojiy" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJojiz" role="1PaTwD">
              <property role="3oM_SC" value="command" />
            </node>
            <node concept="3oM_SD" id="6QjbmLJoji$" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6QjbmLJojgD" role="jymVt">
      <property role="TrG5h" value="toTempFile" />
      <node concept="3uibUv" id="6QjbmLJojgE" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="6QjbmLJojgF" role="3clF47">
        <node concept="3cpWs6" id="6QjbmLJojgG" role="3cqZAp">
          <node concept="2YIFZM" id="6QjbmLJojjg" role="3cqZAk">
            <ref role="1Pybhc" to="3v5a:~CommandLineWrapperUtil" resolve="CommandLineWrapperUtil" />
            <ref role="37wK5l" to="3v5a:~CommandLineWrapperUtil.createArgumentFile(java.util.List,java.nio.charset.Charset)" resolve="createArgumentFile" />
            <node concept="37vLTw" id="6QjbmLJojjh" role="37wK5m">
              <ref role="3cqZAo" node="6QjbmLJojfv" resolve="myArguments" />
            </node>
            <node concept="2YIFZM" id="6QjbmLJojld" role="37wK5m">
              <ref role="1Pybhc" to="jlff:~CharsetToolkit" resolve="CharsetToolkit" />
              <ref role="37wK5l" to="jlff:~CharsetToolkit.getPlatformCharset()" resolve="getPlatformCharset" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6QjbmLJojgK" role="1B3o_S" />
      <node concept="3uibUv" id="6QjbmLJojgL" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
  </node>
</model>

